package
{
	import flash.utils.Dictionary;
	
	/**
	 * Project : MapEdit1
	 * MapData
	 * @author 赵俊 <zhaojun@crop.the9.com>  
	 * $Id:$
	 * @version 1.0
	 */
	[Bindable]
	public class MapData
	{
		private static var _instance:MapData;
		public static function get instance():MapData
		{
			if(_instance == null)
			{
				_instance = new MapData();
			}
			return _instance;
		}
		
		public var gridWidth:Number;
		
		public var gridHeight:Number;
		
		public var mapWidth:Number;
		
		public var mapHeight:Number;
		
		private static var _number:int = 1;
		
		/**
		 * 资源的字典 
		 */		
		public var resourceDictionary:Dictionary = new Dictionary();
		
		/**
		 * 地图分为几层。 
		 */		
		public var mapLayer:int;
		
		/**
		 * 是否有阻挡层 
		 */		
		public var havePassableLayer:Boolean = false;
		
		public function MapData()
		{
		}
		
		public function getOneNumber():int
		{
			return _number++;
		}
		
		public function setNumber(i:int):void
		{
			_number = i;
		}
	}
} 
