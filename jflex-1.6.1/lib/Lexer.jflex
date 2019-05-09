package Cache;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

%%
%standalone
%class Lexer
%public
%unicode

%line
%column

%init{
yybegin(YYINITIAL);
%init}

%{
	public Map<String, Integer> ContadorPalabras = new HashMap<String, Integer>();
	public void readString(String text) throws IOException {
        while (!zzAtEOF)
          yylex();
    }
%}

DIGITO 			= 		\-?\d+(\.\d+)?
FECHA 			= 		\d{1,2}\/\d{1,2}\/(\d{4}|\d{2})
SIGNO 			= 		\!|\"|\# |\$|\%|\&|\/|\(|\)|\=|\?|\¡|\||\°|\'|\¿|\´|\+|\¨|\*|\{|\}|\[|\]|\,|\.|\-|\;|\:|\_|\<|\>|\¬|\\|\~|\^|\`
EMAIL			= 		([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})
ARTICULO 		= 		el|la|los|las|un|una|unos|unas
PREPOSICION 	= 		a|al|ante|bajo|con|contra|de|del|desde|en|entre|hacia|hasta|mediante|para|por|según|sin|sobre|tras|versus
CONJUNCION 		= 		y|e|ni|no solo|sino también|pero|mas|empero|sino|mientras que|o|u|o bien|porque|como|ya que|dado que|visto que|puesto que|pues|que|quien|quienes|cuanta|cuantos|cuantas|si|aunque|aun cuando|así|por más que|por mucho que|si no|a menos que|siempre que|cada vez|siempre y cuando|con tal de que|salvo que|así es que|así que|de modo que|de manera que|de forma que|para que|a fin de que|luego|conque|ergo
PERSONAL 		= 		yo|tú|vos|él|ella|usted|nosotros|nosotras|vosotros|vosotras|ellos|ellas|ustedes|me|te|lo|nos|os|le|les|se|mí|ti|ello
POSESIVO 		= 		mi|mis|tu|tus|su|sus|nuestro|nuestra|nuestros|nuestras|vuestro|vuestra|vuestros|vuestras|mío|mía|míos|mías|tuyo|tuya|tuyos|tuyas|suyo|suya|suyos|suyas|cuyo|cuya|cuyos|cuyas
DEMOSTRATIVO 	= 		este|esta|estos|estas|ese|esa|esos|esas|aquel|aquella|aquellos|aquellas|eso|esto|aquello
INTERROGATIVO 	= 		cuándo|dónde|adónde|a dónde|cómo|qué|por qué|quién|quiénes|para qué|cuánto|cuánta|cuántos|cuántas|cuál|cuáles
RELATIVO 		= 		a donde|adonde|donde|cuando|cuanto|como
AFIRMATIVO 		= 		ciertamente|cierto|claro|efectivamente|exacto|obviamente|exactamente|seguramente|sí|también|verdaderamente|realmente|afirmativo|positivo
NEGATIVO 		= 		no|nunca|tampoco|negativo|negativamente|jamás|en absoluto|en lo absoluto|para nada
DUBITATIVO 		= 		posiblemente|probablemente|tal vez|quizá|quizás|puede|puede ser|a lo mejor|seguramente|quién sabe
LUGAR 			= 		aquí|abajo|allá|allí|arriba|cerca|debajo|delante|dentro|derecho|detrás|encima|fuera|lejos|al lado|cerca|a la par|a la izquierda|a la derecha|directo
TIEMPO 			= 		ahora|actualmente|antes|ayer|después|antier|hoy|luego|mañana|pasado mañana|anteayer|nunca|pronto|tarde|siempre|ya|a menudo|frecuentemente|casi nunca|a veces|de nuevo|de vez en cuando
CANTIDAD 		= 		algo|bastante|demasiado|poco|poquito|más|menos|suficiente|mucho|sobremanera|regular|bien|extremadamente|notablemente|solamente|al máximo|a más no poder|a mares|a todo pulmón|exageradamente|insuficiente|montón
MANERA 			= 		así|bien|deprisa|alto|bajo|rápido|despacio|lento|veloz|difícilmente|al pie de la letra|estupendamente|fácilmente|especialmente|mal|mejor|peor|más o menos
INDEFINIDO 		= 		algún|alguna|algunos|algunas|cierto|cierta|ciertos|ciertas|todo|toda|todos|todas|poco|poca|pocos|pocas|cada|cualquier|todo|toda|todos|todas|alguno|mucho|mucha|muchos|muchas|nada|nadie|cualquiera|algo|otro|otra|otros|otras
INTERJECCION 	= 		híjole|ah|oh|eh|uh|hey|wow|guau|bah|ay|zas|arre|ea|sh|epa|huy|uf|ojalá|puaj
TERMINO			=		[a-zá-úñÑ]+

%%

{DIGITO}
		{
			//return symbol(sym.DIGITO);
		}
		
{FECHA}
		{
			//return symbol(sym.FECHA);
		}
		
{SIGNO}
		{
			//return symbol(sym.SIGNO);
		}
		
{EMAIL}
		{
			//return symbol(sym.EMAIL);
		}
		
{ARTICULO}
		{
			//return symbol(sym.ARTICULO);
		}
		
{PREPOSICION}
		{
			//return symbol(sym.PREPOSICION);
		}
		
{CONJUNCION}
		{
			//return symbol(sym.CONJUNCION);
		}
		
{PERSONAL}
		{
			//return symbol(sym.PERSONAL);
		}
		
{POSESIVO}
		{
			//return symbol(sym.POSESIVO);
		}
		
{DEMOSTRATIVO}
		{
			//return symbol(sym.DEMOSTRATIVO);
		}
		
{INTERROGATIVO}
		{
			//return symbol(sym.INTERROGATIVO);
		}
		
{RELATIVO}
		{
			//return symbol(sym.RELATIVO);
		}
		
{AFIRMATIVO}
		{
			//return symbol(sym.AFIRMATIVO);
		}
		
{NEGATIVO}
		{
			//return symbol(sym.NEGATIVO);
		}
		
{DUBITATIVO}
		{
			//return symbol(sym.DUBITATIVO);
		}
		
{LUGAR}
		{
			//return symbol(sym.LUGAR);
		}
		
{TIEMPO}
		{
			//return symbol(sym.TIEMPO);
		}
		
{CANTIDAD}
		{
			//return symbol(sym.CANTIDAD);
		}
		
{MANERA}
		{
			//return symbol(sym.MANERA);
		}
		
{INDEFINIDO}
		{
			//return symbol(sym.INDEFINIDO);
		}

{INTERJECCION}
		{
			//return symbol(sym.INTERJECCION);
		}
		
{TERMINO}
		{
			Integer count = ContadorPalabras.get(yytext());
			if(count != null)
			{
				ContadorPalabras.put(yytext(), count+1);
			}
			else
			{
				ContadorPalabras.put(yytext(), 1);
			}
		}



