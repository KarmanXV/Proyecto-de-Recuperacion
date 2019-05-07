package Cache;

import java.io.FileReader;

public class Main {

    public static void main(String[] args) throws Exception
    {
        FileReader reader = new FileReader(".\\Coleccion\\3_PI.html");
        String text = HTMLUtils.extractText(reader);
        System.out.println(text);
    }
}
