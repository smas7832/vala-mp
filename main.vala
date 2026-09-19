#!/usr/bin/env -S vala --pkg gtk4

/*
    -IO
    -PLayback
    -Media Bar
    -MediaInfo
*/


public class MPlayer: Gtk.Application{
    private Gst.Element? player;

    public MPlayer(){
        Object(application_id: "com.smas7832.mplayer");
    }
    public override void activate(){
        var aud_file = File.new_for_path("/home/smas7832/Downloads/code/Music Tools/Music/audio [music].mp3");
        player = Gst.ElementFactory.make("playbin", "player");
        player.set_property("uri", aud_file.get_uri());
		player.set_state(Gst.State.PLAYING);

        var win = new Gtk.ApplicationWindow(this){
            title = "MPlayer"
        };
        win.present();
    }


    static int main(string[] args){
        Gst.init(ref args);
        var app = new MPlayer();
        return app.run();
    }
}
