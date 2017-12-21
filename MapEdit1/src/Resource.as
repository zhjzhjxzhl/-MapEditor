package
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	/**
	 * Project : MapEdit1
	 * Resource
	 * @author 赵俊 <zhaojun@crop.the9.com>  
	 * $Id:$
	 * @version 1.0
	 */
	public class Resource
	{
		/**
		 * 资源的名字,采用文件的名字
		 */		
		public var resourceName:String;
		
		/**
		 * 此资源的引用 
		 */		
		public var bitmapData:BitmapData;
		
		/**
		 * 此资源的x。 
		 */		
		public var x:Number;
		
		/**
		 * 此资源的y 
		 */		
		public var y:Number;
		
		/**
		 * 此资源的编号。 
		 */		
		public var id:int;
		
		/**
		 * 此资源的位置。保存的时候，将资源移动到保存文件夹。每次打开的时候，都讲位置更改为打开文件夹。 
		 */		
		public var url:String;
		
		private var _bitmapdata:BitmapData;
		
		public function Resource()
		{
		}
		
		public function getBitmap():Bitmap
		{
			if(_bitmapdata == null)
			{
				_bitmapdata = new BitmapData(MapData.instance.gridWidth,MapData.instance.gridHeight);
				_bitmapdata.copyPixels(bitmapData,(new Rectangle(x*MapData.instance.gridWidth,y*MapData.instance.gridHeight,MapData.instance.gridWidth,MapData.instance.gridHeight)),new Point(0,0));
			}
			var bitmap:Bitmap = new Bitmap(_bitmapdata);
			return bitmap;
		}
		
		public function getBitdata():BitmapData
		{
			if(_bitmapdata == null)
			{
				_bitmapdata = new BitmapData(MapData.instance.gridWidth,MapData.instance.gridHeight);
				_bitmapdata.copyPixels(bitmapData,(new Rectangle(x*MapData.instance.gridWidth,y*MapData.instance.gridHeight,MapData.instance.gridWidth,MapData.instance.gridHeight)),new Point(0,0));
			}
			return _bitmapdata;
		}
	}
} 
