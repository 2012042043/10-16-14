
/*
 * Main.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class Main : SEScene
{
	SESprite bg;
	int w;
	int h;
	int p_x;
	int p_y;
	int wt;
	int ht;

	SESprite img1;
	SESprite img2;
	SESprite img3;
	SESprite img4;
	SESprite text;


	public void initialize(SEResourceCache rsc)
	{
		base.initialize(rsc);
		int w = get_scene_width();
		int h = get_scene_height();

		add_entity(SESpriteEntity.for_color(Color.instance("#C9A0DC"), w, h));
		rsc.prepare_image("aimg1", "img1", 0.5*w, 0.5*h);
		rsc.prepare_image("aimg2", "img2", 0.5*w, 0.5*h);
		rsc.prepare_image("aimg3", "img3", 0.5*w, 0.5*h);
		rsc.prepare_image("aimg4", "img4", 0.5*w, 0.5*h);
		rsc.prepare_font("font", "arial bold color = black", 40);

		bg = add_sprite_for_color(Color.instance("#C9A0DC"), get_scene_width(), get_scene_height());
		
		img1 = add_sprite_for_image(SEImage.for_resource("aimg1"));
		img2 = add_sprite_for_image(SEImage.for_resource("aimg2"));
		img3 = add_sprite_for_image(SEImage.for_resource("aimg3"));
		img4 = add_sprite_for_image(SEImage.for_resource("aimg4"));
		
		img1.move(0,0);
		img2.move(w*0.5,0);
		img3.move(0,h*0.5);
		img4.move(0.5*w,0.5*h);
		text = add_sprite_for_text(" ", "font");
		wt = text.get_width();
		ht = text.get_height();
	}


	public void on_pointer_press(SEPointerInfo pi)
	{
		base.on_pointer_press(pi);
		p_x = pi.get_x();
		p_y = pi.get_y();
		if (p_x > 0 && p_x < w*0.5 && p_y > 0 && p_y < 0.5*h)
		{
			text.set_text("Texture I");
			text.move(w*0.25 - 0.5*wt, h*0.25 - 0.5*ht);
			img1.set_alpha(1);
		}

		if (p_x > 0 && p_x < w*0.5 && p_y > 0 && p_y < 0.5*h)
		{
			text.set_text("Texture I");
			text.move(w*0.25 - 0.5*wt, h*0.25 - 0.5*ht);
			
		}

		if (p_x > 0 && p_x < 0.5*w && p_y > 0.5*h && p_y < h)
		{
			text.set_text("Texture III");
			text.move(w*0.25 - 0.5*wt, h*0.25 - 0.5*ht);
			
		}
		
	}
}