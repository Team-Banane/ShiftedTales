x = 128;
y = 128;
can_move=true;

	

global.textboxopen = false; // Add this line to initialize the variable
global.textboxclosed=true;

global.playerHP=20;
global.playerMaxHP=20;
global.playerLV=1;
global.playerEXP=0;
global.playerATK=0;
global.playerDEF=0;
global.Inventory1=0;
global.Inventory2=0;
global.Inventory3=0;
global.Inventory4=0
global.Inventory5=0;
global.Inventory6=0;
global.Inventory7=0;
global.Inventory8=0;
global.playerGold=0;
global.playername="FRISK";
global.InventoryFull=false;
global.saveactive=false;

instance_create_layer(x,y,"Top",oCMenu);

if (global.playerLV=19){
	draw_text(30,30,"level19")
}



// Signal the timer controller to start the timer
instance_create_depth(0, 0,-9999, objTimerController); // Create objTimerController if it doesn't exist

