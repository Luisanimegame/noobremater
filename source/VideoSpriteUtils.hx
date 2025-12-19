package;

import flixel.FlxG;
#if VIDEOS_ALLOWED
import hxvlc.flixel.FlxVideoSprite;
#end

class VideoSpriteUtils #if VIDEOS_ALLOWED extends FlxVideoSprite #end {
    public static var mute:String = ':no-audio';
    public static var loop:String = ':input-repeat=65545';

    public function new() {
        #if VIDEOS_ALLOWED
        super();

        bitmap.onFormatSetup.add(() -> {
            setGraphicSize(Std.int(FlxG.width));
            updateHitbox();
            scrollFactor.set();
            screenCenter();
        });
        bitmap.onEndReached.add(() -> destroy());
        #end
    }

    #if VIDEOS_ALLOWED override #end public function destroy() {
        #if VIDEOS_ALLOWED
        super.destroy();
        #end
    }
}