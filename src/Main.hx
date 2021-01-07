class Main {
	static function main():Void {
		trace('Simple test');
		var test:Array<Int> = [1, 2, 3, 4];
		trace(test);
		#if (target.threaded)
		sys.thread.Thread.create(() -> {
			while (true) {
				trace("other thread");
				Sys.sleep(1);
			}
		});
		Sys.sleep(3);
		#end
	}
}
