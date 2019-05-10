package Cache;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import java.io.*;

public class HTMLUtils
{
    private HTMLUtils() {}

    public static String extractText(String fileDir) throws IOException {
        //METODO 1
        //StringBuilder sb = new StringBuilder();
        //BufferedReader br = new BufferedReader(
        //                        new InputStreamReader(
        //                            new FileInputStream(fileDir), "UTF8"));
        //String line;
        //while ( (line=br.readLine()) != null) {
        //    sb.append(line);
        //}
        //String textOnly = Jsoup.parse(sb.toString()).text();

        //METODO 2
        File input = new File(fileDir);
        Document doc = Jsoup.parse(input, "UTF-8", "");
        String text = doc.text();
        //Ambos devuelven textOnly
        return text;
    }
}
