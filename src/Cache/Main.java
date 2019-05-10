package Cache;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;

public class Main {

    public static void main(String[] args) throws Exception
    {
        //FileReader reader = new FileReader(".\\Coleccion\\3_PI.html");
        //InputStreamReader reader = new InputStreamReader(new FileInputStream(".\\Coleccion\\3_PI.html"), StandardCharsets.UTF_8);
        String text = HTMLUtils.extractText(".\\Coleccion\\3_PI.html");
        System.out.println(text);
        Reader stringReader = new StringReader(text.toLowerCase());
        Lexer lexer = new Lexer(stringReader);
        lexer.readString();


        //Imprime cada termino de este archivo y su numero de apariciones
        Map<String, Integer> CuentaPalabras = lexer.ContadorPalabras;
        for(Map.Entry<String, Integer> entry : CuentaPalabras.entrySet())
        {
            System.out.println(entry.getKey() + ":" + entry.getValue());
        }
    }
}
