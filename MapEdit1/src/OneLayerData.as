package
{
	
	/**
	 * Project : MapEdit1
	 * OneLayerData
	 * @author 赵俊 <zhaojun@crop.the9.com>  
	 * $Id:$
	 * @version 1.0
	 */
	public class OneLayerData
	{
		
		public var data:Vector.<int>;
		
		private var width:int;
		
		private var height:int;
		
		public function OneLayerData(width:int,height:int)
		{
			data = new Vector.<int>(width*height);
			this.width = width;
			this.height = height;
		}
		
		public function setxy(x:int,y:int,id:int):void
		{
			data[y*width+x] = id;
		}
		
		public function setData(data:Vector.<int>):void
		{
			this.data = data;
		}
		
		public function getId(x:int,y:int):int
		{
			return data[y*width+x];
		}
	}
} 
