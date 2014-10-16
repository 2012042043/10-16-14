public class Main : SEScene
{
    SESprite bg;
    int w;
    int h;
    int pX;
    int py;
    int wt;
    int ht;
    SESprite myimg1;
    SESprite myimg2;
    SESprite myimg3;
    SESprite myimg4;
    SESprite aimg1;
    SESprite aimg2;
    SESprite aimg3;
    SESprite aimg4;
    SESprite text;
    
    public void initialize(SEResourceCache rsc){
        base.initialize(rsc);
         
        w = get_scene_width();
        h = get_scene_height();
        add_entity(SESpriteEntity.for_color(Color.instance("#C9A0DC9"),w,h)); //1st layer
        
        rsc.prepare_image("myimg1", "img1", 0.5*w, 0.5*h);
        rsc.prepare_image("myimg2", "img2", 0.5*w, 0.5*h);
        rsc.prepare_image("myimg3", "img3", 0.5*w, 0.5*h);
        rsc.prepare_image("myimg4", "img4", 0.5*w, 0.5*h);
        rsc.prepare_image("aimg1", "img1", w, h);
        rsc.prepare_image("aimg2", "img2", w, h);
        rsc.prepare_image("aimg3", "img3", w, h);
        rsc.prepare_image("aimg4", "img4", w, h);
        
        rsc.prepare_font("font","courier new bold color=white",50);
         
        myimg1 = add_sprite_for_image(SEImage.for_resource("myimg1"));
        myimg2 = add_sprite_for_image(SEImage.for_resource("myimg2"));
        myimg3 = add_sprite_for_image(SEImage.for_resource("myimg3"));
        myimg4 = add_sprite_for_image(SEImage.for_resource("myimg4"));
        myimg1.move(0,0);
        myimg2.move(w*0.5, 0);
        myimg3.move(0,h*0.5);
        myimg4.move(w*0.5, h*0.5);
        text = add_sprite_for_text(" ", "ont");
        wt = text.get_width();
        ht = text.get_height();
        
    }
    public void on_pointer_press(SEPointerInfo pi) {
        base.on_pointer_press(pi);
        pX = pi.get_x();
        py = pi.get_y();
        
        if(pX > 0 && pX<w*0.5 && py > 0 && py<h*0.5) {
            text.set_text("Texture I");
            text.move(w*0.15-0.5*wt, h*0.25-0.5*ht);
            myimg1.set_alpha(0.75);
            myimg2.set_alpha(1);
            myimg3.set_alpha(1);
            myimg4.set_alpha(1);
            
        }
        else if(pX > 0.5 && pX<w && py > 0 && py<h*0.5) {
            text.set_text("Texture II");
            text.move(w*0.70-0.5*wt, h*0.25-0.5*ht);
            myimg1.set_alpha(1);
            myimg2.set_alpha(0.75);
            myimg3.set_alpha(1);
            myimg4.set_alpha(1);
        }
        else if(pX > 0 && pX < w*0.5 && py > 0.5 && py < h) {
            text.set_text("Texture III");
            text.move(w*0.15-0.5*wt, h*0.75-0.5*ht);
            myimg1.set_alpha(1);
            myimg2.set_alpha(1);
            myimg3.set_alpha(0.75);
            myimg4.set_alpha(1);
        }
        else if(pX > 0.5 && pX < w && py > 0.5 && py < h) {
            text.set_text("Texture IV");
            text.move(w*0.65-0.5*wt, h*0.75-0.5*ht);
            myimg1.set_alpha(1);
            myimg2.set_alpha(1);
            myimg3.set_alpha(1);
            myimg4.set_alpha(0.75);
        }

        if( pX > 0.35 && pX < w*0.5 && py > 0 && py < h*0.15 ) {
           aimg1 = add_sprite_for_image(SEImage.for_resource("aimg1"));
        }
        
        else if( pX >0.75  && pX < w && py > 0 && py < h*0.15 ) {
            aimg2 = add_sprite_for_image(SEImage.for_resource("aimg2"));
        }
        else if( pX >0.35  && pX < w*0.5 && py > 0.5*h && py < h*0.65 ) {
            aimg3 = add_sprite_for_image(SEImage.for_resource("aimg3"));
        }
        else if( pX >0.75  && pX < w && py > 0.5*h && py < h*0.65 ) {
            aimg4 = add_sprite_for_image(SEImage.for_resource("aimg4"));
        }
    }
    
}
