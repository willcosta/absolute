package absolute.utils {	/**	 * @author Will Costa	 * @author http://www.willcosta.net	 */	public class StringUtil {		public static function replace(input : String,search : String,replace : String) : String {			var str : String = input.split(search).join(replace);			return str;		}		/**		 * Adds a thousand separator to a numeric string		 * @param string The numeric string		 * @param separator The separator to be used		 * 		 * @example		 * 		 * var string:String = "1000000"		 * trace(StringUtil.addThousandsSeparator(string)) // output: 1.000.000		 */					public static function addThousandsSeparator(string : String, separator:String = ".") : String {			var newStr:String = "";			var isNegative:Boolean = false;			if(string.indexOf("-")>-1){				string = string.substr(1);				isNegative = true;			}			for (var i : int = 0; i < string.length	; i++) {				newStr = string.charAt(string.length-1-i) + newStr;				if(i%3== 2 && i < string.length-1) newStr = separator + newStr;			}			if(isNegative) newStr = "-" + newStr;			return newStr;		}				/**		 * Removes the accents of the string		 * @param searchString The string to have his accents removed		 */		public static function removeAccents(searchString : String) : String {			var accents : String = 'áéíóúàèìòùãõâêîôôäëïöüçÁÉÍÓÚÀÈÌÒÙÃÕÂÊÎÔÛÄËÏÖÜÇ';			var replaces : String = 'aeiouaeiouaoaeiooaeioucAEIOUAEIOUAOAEIOOAEIOUC';						var n : int = accents.length;			var char : String;			var newChar : String;			for (var i : int = 0;i < n; i++) {				char = accents.charAt(i);				newChar = replaces.charAt(i);				searchString = searchString.replace(char, newChar);			}			return searchString;		}				/**		 * Converts a string case to title case (first letter of each word uppercase)		 * @param string The string to be converted		 */
		public static function toTitleCase(string : String) : String {
				var words:Array = string.split(" ");				for (var i : int = 0; i < words.length; i++) {					words[i] = words[i].charAt(0).toUpperCase() + words[i].substr(1).toLowerCase();				}			    return words.join(" ");
		}
	}}