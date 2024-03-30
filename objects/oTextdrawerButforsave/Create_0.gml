// Create Event of oTextopener
middle_of_view = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2;
middle_of_viewX= camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2;

text[0] = "";
text[1] = "";
text[2] = "";

voice=TalkNormal;
font=fText


isProtrait=false;
portrait = asrielSheet
col = make_colour_rgb(255, 184, 184)
frame=0

index = 0;
delay = 1; // Adjust this to make pauses
constantDelay = 0; // Adjust this to control speed
counter = 0;
currentText = 0;
global.finishedDrawing=false;

textbox_x = camera_get_view_x(view_camera[0])+15
textbox_y = camera_get_view_y(view_camera[0])+155;

if (oPlayer.y>middle_of_view)
	textbox_y=camera_get_view_y(view_camera[0])+15;


paddingX=10;
paddingY=10;

border = 15; // Border width
linesep = 15; // Line separation

sprite = sLightDialogue; // Replace with your sprite
spriteWidth = sprite_get_width(sLightDialogue)
spriteHeight = sprite_get_height(sLightDialogue)


frame1 = 0;
frame2 = 0;
firstFrame = 0;


