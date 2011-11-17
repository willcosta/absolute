package absolute.utils {
			var red : Number = 0;
			var green : Number = 0;
			var blue : Number = 0;
			var count : Number = 0;
			var pixel : Number;
			for (var x : int = 0; x < source.width; x++) {
				for (var y : int = 0; y < source.height; y++) {
					pixel = source.getPixel(x, y);
					red += pixel >> 16 & 0xFF;
					green += pixel >> 8 & 0xFF;
					blue += pixel & 0xFF;
					count++;
				}
			}
			red /= count;
			green /= count;
			blue /= count;
			return red << 16 | green << 8 | blue;
		}