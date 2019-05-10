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
	public void readString() throws IOException {
        while (!zzAtEOF)
          yylex();
    }
%}

DIGITO 			= 		\-?\d+(\.\d+)?
FECHA 			= 		\d{1,2}\/\d{1,2}\/(\d{4}|\d{2})
SIGNO 			= 		\xB7|\.|\!|\"|\# |\$|\%|\/|\(|\)|\=|\?|\xA1|\||\°|\'|\xBF|\´|\+|\¨|\*|\{|\}|\[|\]|\,|\.|\-|\;|\:|\_|\<|\>|\¬|\\|\~|\^|\`
EMAIL			= 		([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})
ARTICULO 		= 		el|la|los|las|un|una|unos|unas
PREPOSICION 	= 		a|al|ante|bajo|con|contra|de|del|desde|en|entre|hacia|hasta|mediante|para|por|seg\xFAn|sin|sobre|tras|versus
CONJUNCION 		= 		y|e|ni|no solo|sino tambi\xE9n|pero|mas|empero|sino|mientras que|o|u|o bien|porque|como|ya que|dado que|visto que|puesto que|pues|que|quien|quienes|cuanta|cuantos|cuantas|si|aunque|aun cuando|as\xED|por m\xE1s que|por mucho que|si no|a menos que|siempre que|cada vez|siempre y cuando|con tal de que|salvo que|as\xED es que|as\xED que|de modo que|de manera que|de forma que|para que|a fin de que|luego|conque|ergo
PERSONAL 		= 		yo|t\xFA|vos|\xE9l|ella|usted|nosotros|nosotras|vosotros|vosotras|ellos|ellas|ustedes|me|te|lo|nos|os|le|les|se|m\xED|ti|ello
POSESIVO 		= 		mi|mis|tu|tus|su|sus|nuestro|nuestra|nuestros|nuestras|vuestro|vuestra|vuestros|vuestras|m\xEDo|m\xEDa|m\xEDos|\xED|tuyo|tuya|tuyos|tuyas|suyo|suya|suyos|suyas|cuyo|cuya|cuyos|cuyas
DEMOSTRATIVO 	= 		este|esta|estos|estas|ese|esa|esos|esas|aquel|aquella|aquellos|aquellas|eso|esto|aquello
INTERROGATIVO 	= 		cu\xE1ndo|d\xF3nde|ad\xF3nde|a d\xF3nde|c\xF3mo|qu\xE9|por qu\xE9|qui\xE9n|qui\xE9nes|para qu\xE9|cu\xE1nto|cu\xE1nta|cu\xE1ntos|cu\xE1ntas|cu\xE1l|cu\xE1les
RELATIVO 		= 		a donde|adonde|donde|cuando|cuanto|como
AFIRMATIVO 		= 		ciertamente|cierto|claro|efectivamente|exacto|obviamente|exactamente|seguramente|s\xED|tambi\xE9n|verdaderamente|realmente|afirmativo|positivo
NEGATIVO 		= 		no|nunca|tampoco|negativo|negativamente|jam\xE1s|en absoluto|en lo absoluto|para nada
DUBITATIVO 		= 		posiblemente|probablemente|tal vez|quiz\xE1|quiz\xE1s|puede|puede ser|a lo mejor|seguramente|qui\xE9n sabe
LUGAR 			= 		aqu\xED|abajo|all\xE1|all\xED|arriba|cerca|debajo|delante|dentro|derecho|detr\xE1s|encima|fuera|lejos|al lado|cerca|a la par|a la izquierda|a la derecha|directo
TIEMPO 			= 		ahora|actualmente|antes|ayer|despu\xE9s|antier|hoy|luego|mañana|pasado mañana|anteayer|nunca|pronto|tarde|siempre|ya|a menudo|frecuentemente|casi nunca|a veces|de nuevo|de vez en cuando
CANTIDAD 		= 		algo|bastante|demasiado|poco|poquito|m\xE1s|menos|suficiente|mucho|sobremanera|regular|bien|extremadamente|notablemente|solamente|al m\xE1ximo|a m\xE1s no poder|a mares|a todo pulm\xF3n|exageradamente|insuficiente|mont\xF3n
MANERA 			= 		as\xED|bien|deprisa|alto|bajo|r\xE1pido|despacio|lento|veloz|dif\xEDcilmente|al pie de la letra|estupendamente|f\xE1cilmente|especialmente|mal|mejor|peor|m\xE1s o menos
INDEFINIDO 		= 		alg\xFAn|alguna|algunos|algunas|cierto|cierta|ciertos|ciertas|todo|toda|todos|todas|poco|poca|pocos|pocas|cada|cualquier|todo|toda|todos|todas|alguno|mucho|mucha|muchos|muchas|nada|nadie|cualquiera|algo|otro|otra|otros|otras
INTERJECCION 	= 		h\xEDjole|ah|oh|eh|uh|hey|wow|guau|bah|ay|zas|arre|ea|sh|epa|huy|uf|ojal\xE1|puaj
TERMINO			=		\p{Latin}+
ESPACIO         =       \s


%%
{ESPACIO}
		{
			//return symbol(sym.ESPACIO);
		}


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



