package application;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.ScrollPane;
import javafx.stage.Stage;

public class MainCrud extends Application {
	
	private static Scene mainScene;
	
	public void start(Stage primaryStage) { 
		try { 
			//carrega a view principal
			 FXMLLoader loader = new FXMLLoader(getClass().getResource("/gui/MainView.fxml")); 
			 ScrollPane scrollPane = loader.load(); 
			 
			 //faz com q o menu bar preenche as laterais
			 scrollPane.setFitToHeight(true);
			 scrollPane.setFitToWidth(true);
			 
			 mainScene = new Scene(scrollPane); 
			 primaryStage.setScene(mainScene); 
			 primaryStage.setTitle("Exemplo de aplicativo JavaFX"); 
			 primaryStage.show(); 
		 } catch (Exception e) { 
			 e.printStackTrace(); 
		 } 
	}
	
	
	public static Scene getMainScene() {
		return mainScene;
	}
	
	public static void main(String[] args) {
		launch(args);
	}

}
