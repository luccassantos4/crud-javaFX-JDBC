package gui;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import java.util.function.Consumer;

import application.MainCrud;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Scene;
import javafx.scene.control.MenuItem;
import javafx.scene.control.ScrollPane;
import javafx.scene.layout.VBox;
import model.services.DepartmentService;
import model.services.SellerService;

public class MainViewController implements Initializable {

	@FXML
	private MenuItem menuItemSeller;
	@FXML
	private MenuItem menuItemDepartament;
	@FXML
	private MenuItem menuItemAbout;

	public void onMenuItemSellerAction() throws IOException {
		loadView("/gui/SellerList.fxml", (SellerListController controller) -> {
			controller.setSeller(new SellerService());
			controller.updateTableView();
		}); 
	}

	public void onMenuItemDepartamentAction() throws IOException {
		loadView("/gui/DepartmentList.fxml", (DepartmentListController controller) -> {
			controller.setDepartment(new DepartmentService());
			controller.updateTableView();
		});
	}

	public void onMenuItemAboutAction() throws IOException {
		loadView("/gui/About.fxml", x -> {
		});
	}

	// método para realizar o carregamento das novas view
	private synchronized <T> void loadView(String absoluteName, Consumer<T> initializingAction) throws IOException { // Função genérica
																														
		// Carrega o diretorio da view passada pelo parametro da função
		FXMLLoader loader = new FXMLLoader(getClass().getResource(absoluteName));
		VBox newBox = loader.load();

		// retorna o diretorio da view principal
		Scene mainScene = MainCrud.getMainScene();
		VBox mainVBox = (VBox) ((ScrollPane) mainScene.getRoot()).getContent();
		// oq o getRoot faz , ele pega o primeiro elemento da View, no caso o ScrollPane

		Node mainMenu = mainVBox.getChildren().get(0); // pega a barra de menu
		mainVBox.getChildren().clear(); // limpar os elementos filhos

		mainVBox.getChildren().add(mainMenu); // Coloca a barra de menu novamente
		mainVBox.getChildren().addAll(newBox.getChildren()); // coloca a nova view +  barra de menu

		T controller = loader.getController();
		initializingAction.accept(controller);
	}

	@Override
	public void initialize(URL uri, ResourceBundle rb) {
		// TODO Auto-generated method stub
	}

}
