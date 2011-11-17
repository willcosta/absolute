package absolute.utils {	import flash.display.BitmapData;	import flash.display.DisplayObject;	import flash.geom.ColorTransform;	import flash.geom.Point;	/**
	 * @author Will Costa
	 * @author http://www.willcosta.net
	 */	public class ColorUtil {		//----------------------------------		//  Public Functions		//----------------------------------
		
		/**
		 * Creates a gradient between the two given colors
		 * @param fromColor The first color
		 * @param toColor The second color
		 * @param progress A Number between 0-1
		 */		static public function interpolateColor(fromColor : uint, toColor : uint, progress : Number) : uint {			var q : Number = 1 - progress;			var fromA : uint = (fromColor >> 24) & 0xFF;			var fromR : uint = (fromColor >> 16) & 0xFF;			var fromG : uint = (fromColor >> 8) & 0xFF;			var fromB : uint = fromColor & 0xFF;			var toA : uint = (toColor >> 24) & 0xFF;			var toR : uint = (toColor >> 16) & 0xFF;			var toG : uint = (toColor >> 8) & 0xFF;			var toB : uint = toColor & 0xFF;        			var resultA : uint = fromA * q + toA * progress;			var resultR : uint = fromR * q + toR * progress;			var resultG : uint = fromG * q + toG * progress;			var resultB : uint = fromB * q + toB * progress;			var resultColor : uint = resultA << 24 | resultR << 16 | resultG << 8 | resultB;			return resultColor;  		}		
		
		/**
		 * Converts a color from uint to RGB
		 * @param color The color 
		 * @return Object An object containg three properties, one for each primary color		 */		static public function intToRgb( color : int ) : Object {			var r : int = ( color & 0xFF0000 ) >> 16;			var g : int = ( color & 0x00FF00 ) >> 8;			var b : int = color & 0x0000FF;			return {r:r, g:g, b:b};		}					/**
		 * Changes the color depth of the given BitmapData
		 */		static public function changeColorDepth(source : BitmapData, depth : int = 16) : void {			var Ra : Array = new Array(256);			var Ga : Array = new Array(256);			var Ba : Array = new Array(256);			var n : Number = 256 / ( depth / 3 );			for (var i : int = 0;i < 256;i++) {				Ba[i] = Math.floor(i / n) * n;				Ga[i] = Ba[i] << 8;				Ra[i] = Ga[i] << 8;			}			source.paletteMap(source, source.rect, new Point(), Ra, Ga, Ba);
		}
		
		/**
		 * Changes the color of a DisplayObject
		 */
		public static function tint(target : DisplayObject, color : uint) : void {
			var ct : ColorTransform = new ColorTransform();
			ct.color = color;
			target.transform.colorTransform = ct;
		}
		
		/**
		 * Changes the color of a DisplayObject
		 */
		public static function removeTint(target : DisplayObject) : void {
			var ct : ColorTransform = new ColorTransform();
			target.transform.colorTransform = ct;
		}
  		//----------------------------------   		//  Private Functions  		//----------------------------------  			  		//----------------------------------   		//  Event Handlers  		//----------------------------------  			  		//----------------------------------   		//  Getters & Setters  		//----------------------------------	}}