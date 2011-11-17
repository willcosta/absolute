package absolute.utils {
	 * @author Will Costa
	 * @author http://www.willcosta.net
	 */
		
		/**
		 * Creates a gradient between the two given colors
		 * @param fromColor The first color
		 * @param toColor The second color
		 * @param progress A Number between 0-1
		 */
		
		/**
		 * Converts a color from uint to RGB
		 * @param color The color 
		 * @return Object An object containg three properties, one for each primary color
		 * Changes the color depth of the given BitmapData
		 */
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
  		//----------------------------------