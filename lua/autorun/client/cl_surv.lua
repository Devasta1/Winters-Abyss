function rgb(r,g,b)
	return Color(r,g,b)
end

ObjCols = {
	[1] = rgb(155, 89, 182),
	[2] = rgb(231, 76, 60),
	[3] = rgb(39, 174, 96),
	[4] = rgb(241, 196, 15),
	[5] = rgb(44, 62, 80),
	[6] = rgb(52, 152, 219),
	[7] = rgb(211, 84, 0),
	[8] = rgb(192, 57, 43),
	[9] = rgb(26, 188, 156),
	[10] = rgb(127, 140, 141),
}
OBJFONT = "Trebuchet24"
OBJFONT2 = "BudgetLabel"
OBJFONT3 = "Arial Black"
surface.CreateFont( "ab", {
	font = OBJFONT3, -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 36,
	weight = 50,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )
surface.CreateFont( "ab", {
	font = OBJFONT3, -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 36,
	weight = 50,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )

surface.CreateFont( "ShopMenuFont", {
	font	= "Roboto Cn",
	size	= ScreenScale( 9 ),
	weight	= 600
} )
surface.CreateFont( "ShopMenuFont2", {
	font	= "Roboto Cn",
	size	= ScreenScale( 7 ),
	weight	= 200
} )
surface.CreateFont( "ShopMenuFont3", {
	font	= "Roboto Cn",
	size	= ScreenScale( 20 ),
	weight	= 800
} )
surface.CreateFont( "ShopMenuFont5", {
	font	= "Roboto Cn",
	size	= ScreenScale( 5 ),
	weight	= 800
} )



function OpenMenu()
	local Frame = vgui.Create( "DFrame" )
	Frame:SetPos( ScrW()/2-300, ScrH()/2-400 )
	Frame:SetSize( 600, 800 )
	Frame:SetTitle( "Vehicle Rental Dealer" )
	Frame:SetDraggable( true )
	Frame:MakePopup()
	
	local DScrollPanel = vgui.Create( "DScrollPanel", Frame )
	DScrollPanel:Dock(FILL)

	VehicleMetaData ={
		{
			["Model"] = "models/starwars/syphadias/ships/sw_tor/bioware_ea/vehicles/czerka/czerka_cruiser.mdl",
			["Name"] = "Czerka Speeder",
			["Price"] = 1000,
			["Speed"] = "★★★★☆",
			["Weapons"] = "☆☆☆☆☆",
			["Toughness"] = "★★★☆☆",
		},
		{
			["Model"] = "models/starwars/syphadias/ships/sw_tor/bioware_ea/vehicles/longspur/longspur.mdl",
			["Name"] = "Longspur Speeder",
			["Price"] = 750,
			["Speed"] = "★★☆☆☆",
			["Weapons"] = "☆☆☆☆☆",
			["Toughness"] = "★★★★☆",
		},
		{
			["Model"] = "models/starwars/syphadias/ships/sw_tor/bioware_ea/vehicles/rendili/rendili.mdl",
			["Name"] = "Rendilli Speeder",
			["Price"] = 500,
			["Speed"] = "★★☆☆☆",
			["Weapons"] = "☆☆☆☆☆",
			["Toughness"] = "★★☆☆☆",
		},
		{
			["Model"] = "models/starwars/syphadias/ships/sw_tor/bioware_ea/vehicles/longspur/longspur_outrider.mdl",
			["Name"] = "Outrider",
			["Price"] = 600,
			["Speed"] = "★★★☆☆",
			["Weapons"] = "☆☆☆☆☆",
			["Toughness"] = "★☆☆☆☆",
		},
		{
			["Model"] = "models/starwars/syphadias/ships/sw_tor/bioware_ea/vehicles/ubrikki/ubrikki.mdl",
			["Name"] = "Ubrikki Speeder",
			["Price"] = 1000,
			["Speed"] = "★★★☆☆",
			["Weapons"] = "☆☆☆☆☆",
			["Toughness"] = "★★★★☆",
		},
		{
			["Model"] = "models/starwars/syphadias/ships/sw_tor/bioware_ea/vehicles/ubrikki/ubrikki_elite.mdl",
			["Name"] = "Ubrikki Elite Speeder",
			["Price"] = 5000,
			["Speed"] = "★★★★★",
			["Weapons"] = "☆☆☆☆☆",
			["Toughness"] = "★★★★★",
		},
	}
	// MONEY BALANCE
	local DPanel = vgui.Create( "DPanel", DScrollPanel)
	DPanel:Dock(TOP)
	DPanel:SizeToContents()
	mon = LocalPlayer():getChar():getMoney()
	local title = vgui.Create( "DLabel", DPanel )
	title:SetText(mon.." Credits available.")
	title:SetFont("ShopMenuFont")
	title:Center()
	title:SizeToContents()
	title:Dock(TOP)
	
	for i=1,#VehicleMetaData do
		if mon >= VehicleMetaData[i].Price then
			moncol = Color(155,255,155)
		else
			moncol = Color(255,155,155)
		end
		local DPanel = vgui.Create( "DPanel", DScrollPanel)
		DPanel:Dock(TOP)
		DPanel:SetSize(128,128)
		local icon = vgui.Create( "DModelPanel", DPanel )
		icon:SetSize(128,128)
		icon:Dock(LEFT)
		icon:SetModel(VehicleMetaData[i].Model)
		local Button = vgui.Create( "DButton", DPanel )
		Button:SetFont("ShopMenuFont3")
		Button:SetText( " Buy " )
		Button:SetTextColor(moncol)
		Button:SizeToContents()
		Button:Dock(LEFT)
		Button.DoClick = function()
			net.Start( "VehicleShopMenu2" )
				net.WriteString( VehicleMetaData[i].Name )
			net.SendToServer()
			Frame:Remove()
		end
		
		local title = vgui.Create( "DLabel", DPanel )
		title:SetText(" "..VehicleMetaData[i].Name)
		title:SetFont("ShopMenuFont")
		title:SizeToContents()
		title:Dock(TOP)
		
		local title = vgui.Create( "DLabel", DPanel )
		title:SetText("      Price: "..VehicleMetaData[i].Price.." Credits")
		title:SetFont("ShopMenuFont2")
		title:SizeToContents()
		title:Dock(TOP)
		local title = vgui.Create( "DLabel", DPanel )
		title:SetText("      Speed: "..VehicleMetaData[i].Speed)
		title:SetFont("ShopMenuFont2")
		title:SizeToContents()
		title:Dock(TOP)
		local title = vgui.Create( "DLabel", DPanel )
		title:SetText("      Weapons: "..VehicleMetaData[i].Weapons)
		title:SetFont("ShopMenuFont2")
		title:SizeToContents()
		title:Dock(TOP)
		local title = vgui.Create( "DLabel", DPanel )
		title:SetText("      Toughness: "..VehicleMetaData[i].Toughness)
		title:SetFont("ShopMenuFont2")
		title:SizeToContents()
		title:Dock(TOP)
	end
end
net.Receive( "VehicleShopMenu", function( len, pl )
	OpenMenu()
end )

local icon_lightning = "hfgjvs/sith/2135032387_850460727.png"
local icon_speed = "hfgjvs/jedi/3747161145_2453909426.png"
local icon_noicon = "hfgjvs/jedi/lockedutility.png"
local icon_levitate = "hfgjvs/jedi/3687018237_3445187610.png"
local icon_jump = "hfgjvs/jedi/4075403952_1062608372.png"
local icon_dash = "hfgjvs/jedi/4125344648_687080867.png"
local icon_leap = "hfgjvs/sith/1086344506_1288068416.png"


local icon_pul = "hfgjvs/jedi/4255827943_2917216897.png"
local icon_rep = "hfgjvs/jedi/4054601193_1566000489.png"
local icon_rg = "hfgjvs/jedi/4116359658_1169662233.png"
local icon_ex = "hfgjvs/jedi/382039274_1509686861.png"
local icon_sl = "hfgjvs/jedi/3492754213_4193412383.png"
local icon_pa = "hfgjvs/sith/3763752854_1400203657.png"
local icon_dh = "hfgjvs/sith/2283959809_1879981577.png"
local icon_di = "hfgjvs/sith/4073301104_258931927.png"
local icon_fp = "hfgjvs/sith/4136344725_1037225992.png"
local icon_rv = "hfgjvs/sith/927516775_743626602.png"
local icon_sl = "hfgjvs/sith/1836110798_3560046461.png"
local icon_tr = "hfgjvs/jedi/37240998_3553952699.png"
local icon_cf = "hfgjvs/jedi/410823117_3818538397.png"
local icon_dr = "hfgjvs/jedi/915256278_3961334268.png"
local icon_le = "hfgjvs/jedi/498146284_215861979.png"
local icon_sh = "hfgjvs/sith/1408580799_1768601841.png"
local icon_lb = "hfgjvs/sith/2860373072_2681422092.png"
local icon_fm = "hfgjvs/jedi/909775362_2172479202.png"
local icon_be = "hfgjvs/jedi/1239304284_3811295587.png"
local icon_de = "hfgjvs/jedi/1255435766_4048262026.png"
local icon_rj = "hfgjvs/jedi/1309433078_4232099517.png"
local icon_ab = "hfgjvs/jedi/301863494_3861063944.png"
local icon_arm = "hfgjvs/jedi/1815093025_736753664.png"
local icon_farm = "hfgjvs/sith/1133022361_3479947273.png"
local icon_eb = "hfgjvs/sith/132345910_2388452702.png"
local icon_em = "hfgjvs/jedi/4245375824_3138414225.png"
local icon_selected = "hfgjvs/jedi/availableutility.png"
local icon_m = "hfgjvs/jedi/899498588_112923587.png"
local icon_target = "hfgjvs/dpsicon3.png"
local icon_target2 = "hfgjvs/dpsicon2.png"
local icon_target3 = "hfgjvs/dpsicon4.png"
local icon_help = "hfgjvs/torcom/torcommunity.jpg"

function geticon(power)
	SithJobs = {
		FACTION_FORCESENSE,
		FACTION_SITHLORD,
		FACTION_DARTH,
		FACTION_SITHINITIATE,
		FACTION_DARKLORD,
		FACTION_EDGE,
		FACTION_SITHAPPRENTICE
	}	
	
	JediJobs = {
		FACTION_JFORCESENSE,
		FACTION_JEDIKNIGHT,
		FACTION_JEDIMASTER,
		FACTION_JEDIINITIATE,
		FACTION_JEDIPADAWAN,
		FACTION_GRANDMASTER,
		FACTION_REXISGAY,
		FACTION_GRAY
	}
	BothJobs = {
		FACTION_JFORCESENSE,
		FACTION_JEDIKNIGHT,
		FACTION_JEDIMASTER,
		FACTION_JEDIINITIATE,
		FACTION_JEDIPADAWAN,
		FACTION_GRANDMASTER,
		FACTION_REXISGAY,
		FACTION_GRAY,
		FACTION_FORCESENSE,
		FACTION_SITHLORD,
		FACTION_DARTH,
		FACTION_SITHINITIATE,
		FACTION_DARKLORD,
		FACTION_EDGE,
		FACTION_SITHAPPRENTICE
	}
	if table.HasValue(BothJobs, LocalPlayer():Team()) then
		jediicons = {
			["speed"] = "hfgjvs/jedi/3747161145_2453909426.png",
			["levitate"] = "hfgjvs/jedi/3687018237_3445187610.png",
			["jump"] = "hfgjvs/jedi/4075403952_1062608372.png",
			["dash"] = "hfgjvs/jedi/4125344648_687080867.png",
			["leap"] = "hfgjvs/sith/1086344506_1288068416.png",
			["mend"] = "hfgjvs/jedi/909775362_2172479202.png",
			["benevolence"] = "hfgjvs/jedi/1239304284_3811295587.png",
			["deliverance"] = "hfgjvs/jedi/1255435766_4048262026.png",
			["rejuvinate"] = "hfgjvs/jedi/1309433078_4232099517.png",
			["slow"] = "hfgjvs/sith/1836110798_3560046461.png",
			["trap"] = "hfgjvs/jedi/37240998_3553952699.png",
			["confuse"] = "hfgjvs/jedi/410823117_3818538397.png",
			["drain"] = "hfgjvs/jedi/915256278_3961334268.png",
			["leech"] = "hfgjvs/jedi/498146284_215861979.png",
			["absorb"] = "hfgjvs/jedi/301863494_3861063944.png",
			["emeraldbolt"] = "hfgjvs/sith/132345910_2388452702.png",
			["emeraldlightning"] = "hfgjvs/jedi/4245375824_3138414225.png",
			["farm"] = "hfgjvs/sith/1133022361_3479947273.png",
			["repulse"] = "hfgjvs/jedi/4054601193_1566000489.png",
			["pull"] = "hfgjvs/jedi/4255827943_2917216897.png",
			["removepower"] = "hfgjvs/torcom/torcommunity.jpg",
		}
		sithicons = {
			["speed"] = "hfgjvs/jedi/3747161145_2453909426.png",
			["levitate"] = "hfgjvs/jedi/3687018237_3445187610.png",
			["jump"] = "hfgjvs/jedi/4075403952_1062608372.png",
			["dash"] = "hfgjvs/jedi/4125344648_687080867.png",
			["leap"] = "hfgjvs/sith/1086344506_1288068416.png",
			["heal"] = "hfgjvs/sith/2283959809_1879981577.png",
			["infusion"] = "hfgjvs/sith/4073301104_258931927.png",
			["purge"] = "hfgjvs/sith/4136344725_1037225992.png",
			["revivification"] = "hfgjvs/sith/927516775_743626602.png",
			["slow"] = "hfgjvs/sith/1836110798_3560046461.png",
			["trap"] = "hfgjvs/jedi/37240998_3553952699.png",
			["confuse"] = "hfgjvs/jedi/410823117_3818538397.png",
			["drain"] = "hfgjvs/jedi/915256278_3961334268.png",
			["leech"] = "hfgjvs/jedi/498146284_215861979.png",
			["shield"] = "hfgjvs/sith/1408580799_1768601841.png",
			["bolt"] = "hfgjvs/sith/2860373072_2681422092.png",
			["lightning"] = "hfgjvs/sith/2135032387_850460727.png",
			["farm"] = "hfgjvs/sith/1133022361_3479947273.png",
			["repulse"] = "hfgjvs/jedi/4054601193_1566000489.png",
			["pull"] = "hfgjvs/jedi/4255827943_2917216897.png",
			["removepower"] = "hfgjvs/torcom/torcommunity.jpg",
		}
		
		if table.HasValue(SithJobs, LocalPlayer():Team()) then jobstable = sithicons end
		if table.HasValue(JediJobs, LocalPlayer():Team()) then jobstable = jediicons end
		
		return jobstable[power]
	end
	return "hfgjvs/jedi/lockedutility.png"
end

function OpenForceMenu()
	LocalPlayer().SelectedSlot = 1
	local Frame = vgui.Create( "DFrame" )
	Frame:SetPos( ScrW()/2-250, ScrH()/2-400 )
	Frame:SetSize( 500, 800 )
	Frame:SetTitle( "Force Power Modification Menu" )
	Frame:SetDraggable( false )
	Frame:MakePopup()
	local offset = 0
	local powerFrame1 = vgui.Create( "DFrame" )
	powerFrame1:SetPos( ScrW()/2+250, ScrH()/2-400+offset )
	powerFrame1:SetSize( 200, 800/10 )
	powerFrame1:SetTitle( "Force Power Slot #1" )
	powerFrame1:SetDraggable( false )
	powerFrame1:MakePopup()
	powerFrame1:ShowCloseButton( false )
	local offset = offset + 800/10
	local powerFrame2 = vgui.Create( "DFrame" )
	powerFrame2:SetPos( ScrW()/2+250, ScrH()/2-400+offset )
	powerFrame2:SetSize( 200, 800/10 )
	powerFrame2:SetTitle( "Force Power Slot #2" )
	powerFrame2:SetDraggable( false )
	powerFrame2:MakePopup()
	powerFrame2:ShowCloseButton( false )
	local offset = offset + 800/10
	local powerFrame3 = vgui.Create( "DFrame" )
	powerFrame3:SetPos( ScrW()/2+250, ScrH()/2-400+offset )
	powerFrame3:SetSize( 200, 800/10 )
	powerFrame3:SetTitle( "Force Power Slot #3" )
	powerFrame3:SetDraggable( false )
	powerFrame3:MakePopup()
	powerFrame3:ShowCloseButton( false )
	local offset = offset + 800/10
	local powerFrame4 = vgui.Create( "DFrame" )
	powerFrame4:SetPos( ScrW()/2+250, ScrH()/2-400+offset )
	powerFrame4:SetSize( 200, 800/10 )
	powerFrame4:SetTitle( "Force Power Slot #4" )
	powerFrame4:SetDraggable( false )
	powerFrame4:MakePopup()
	powerFrame4:ShowCloseButton( false )
	local offset = offset + 800/10
	local powerFrame5 = vgui.Create( "DFrame" )
	powerFrame5:SetPos( ScrW()/2+250, ScrH()/2-400+offset )
	powerFrame5:SetSize( 200, 800/10 )
	powerFrame5:SetTitle( "Force Power Slot #5" )
	powerFrame5:SetDraggable( false )
	powerFrame5:MakePopup()
	powerFrame5:ShowCloseButton( false )
	local offset = offset + 800/10
	local powerFrame6 = vgui.Create( "DFrame" )
	powerFrame6:SetPos( ScrW()/2+250, ScrH()/2-400+offset )
	powerFrame6:SetSize( 200, 800/10 )
	powerFrame6:SetTitle( "Force Power Slot #6" )
	powerFrame6:SetDraggable( false )
	powerFrame6:MakePopup()
	powerFrame6:ShowCloseButton( false )
	local offset = offset + 800/10
	local powerFrame7 = vgui.Create( "DFrame" )
	powerFrame7:SetPos( ScrW()/2+250, ScrH()/2-400+offset )
	powerFrame7:SetSize( 200, 800/10 )
	powerFrame7:SetTitle( "Force Power Slot #7" )
	powerFrame7:SetDraggable( false )
	powerFrame7:MakePopup()
	powerFrame7:ShowCloseButton( false )
	local offset = offset + 800/10
	local powerFrame8 = vgui.Create( "DFrame" )
	powerFrame8:SetPos( ScrW()/2+250, ScrH()/2-400+offset )
	powerFrame8:SetSize( 200, 800/10 )
	powerFrame8:SetTitle( "Force Power Slot #8" )
	powerFrame8:SetDraggable( false )
	powerFrame8:MakePopup()
	powerFrame8:ShowCloseButton( false )
	local offset = offset + 800/10
	local powerFrame9 = vgui.Create( "DFrame" )
	powerFrame9:SetPos( ScrW()/2+250, ScrH()/2-400+offset )
	powerFrame9:SetSize( 200, 800/10 )
	powerFrame9:SetTitle( "Force Power Slot #9" )
	powerFrame9:SetDraggable( false )
	powerFrame9:MakePopup()
	powerFrame9:ShowCloseButton( false )
	local offset = offset + 800/10
	local powerFrame10 = vgui.Create( "DFrame" )
	powerFrame10:SetPos( ScrW()/2+250, ScrH()/2-400+offset )
	powerFrame10:SetSize( 200, 800/10 )
	powerFrame10:SetTitle( "Force Power Slot #10" )
	powerFrame10:SetDraggable( false )
	powerFrame10:MakePopup()
	powerFrame10:ShowCloseButton( false )
	local offset = offset + 800/10
	
	
	
	//357,115
	local scale = 2
	local yy,xx = 115/scale,375/scale
	local Defense = vgui.Create( "DFrame" )
	offset = 0
	Defense:SetPos( ScrW()/2-250-(xx), ScrH()/2-400+(yy)+offset )
	Defense:SetSize( xx, yy )
	Defense:SetTitle( "Defense" )
	Defense:SetDraggable( false )
	Defense:MakePopup()
	Defense:ShowCloseButton( false )
	local offset = offset + 10 + yy
	
	local Offense = vgui.Create( "DFrame" )
	Offense:SetPos( ScrW()/2-250-(xx), ScrH()/2-400+(yy)+offset )
	Offense:SetSize( xx, yy )
	Offense:SetTitle( "Defense" )
	Offense:SetDraggable( false )
	Offense:MakePopup()
	Offense:ShowCloseButton( false )
	local offset = offset + 10 + yy
	
	local Force = vgui.Create( "DFrame" )
	Force:SetPos( ScrW()/2-250-(xx), ScrH()/2-400+(yy)+offset )
	Force:SetSize( xx, yy )
	Force:SetTitle( "Defense" )
	Force:SetDraggable( false )
	Force:MakePopup()
	Force:ShowCloseButton( false )
	local offset = offset + 10 + yy
	if (LocalPlayer():getChar():getData("CLASS", nil) == nil) then
		SELECT = vgui.Create( "DFrame" )
		SELECT:SetPos( ScrW()/2-250-(xx), ScrH()/2-400+(yy)+offset )
		SELECT:SetSize( xx, yy+50 )
		SELECT:SetTitle( "Choose Class" )
		SELECT:SetDraggable( false )
		SELECT:MakePopup()
		SELECT:ShowCloseButton( false )
		local offset = offset + 10 + yy
		
		local title = vgui.Create( "DLabel", SELECT )
		title:SetText("THIS IS PERMANENT!")
		title:SetFont("ShopMenuFont5")
		title:Center()
		title:SizeToContents()
		title:Dock(TOP)
		
		local Button = vgui.Create( "DButton", SELECT )
		Button:SetFont("ShopMenuFont5")
		Button:SetText( " Defense +25% Resistance " )
		Button:SetTextColor(Color(10,200,10))
		Button:SizeToContents()
		Button:Dock(TOP)
		Button.DoClick = function()
			net.Start( "ForcePowerMenuSelectClass" )
				net.WriteString("defense")
			net.SendToServer()
			SELECT:Remove()
		end
		
		local Button = vgui.Create( "DButton", SELECT )
		Button:SetFont("ShopMenuFont5")
		Button:SetText( " Offense +25% Damage " )
		Button:SetTextColor(Color(10,200,10))
		Button:SizeToContents()
		Button:Dock(TOP)
		Button.DoClick = function()
			net.Start( "ForcePowerMenuSelectClass" )
				net.WriteString("offense")
			net.SendToServer()
			SELECT:Remove()
		end
		
		local Button = vgui.Create( "DButton", SELECT )
		Button:SetFont("ShopMenuFont5")
		Button:SetText( " Force Master +25% Force Pool " )
		Button:SetTextColor(Color(10,200,10))
		Button:SizeToContents()
		Button:Dock(TOP)
		Button.DoClick = function()
			net.Start( "ForcePowerMenuSelectClass" )
				net.WriteString("force")
			net.SendToServer()
			SELECT:Remove()
		end
		SELECT:SizeToContents()
	end
	local icon = vgui.Create( "DImage", Defense )
	local xx,yy = Defense:GetSize()
	icon:SetSize(xx,yy)
	icon:SetImage( "hfgjvs/torcom/description-tank-new.jpg" )
	
	local icon = vgui.Create( "DImage", Defense )
	local xx,yy = Defense:GetSize()
	icon:SetSize(xx,yy)
	icon:SetImage( "hfgjvs/torcom/item_grade_2.png" )
	icon:SetAlpha( 0 )
	function icon:Think()
		if LocalPlayer():getChar():getData("CLASS") == "defense" then
			icon:SetAlpha( 255 )
		else
			icon:SetAlpha( 0 )
		end
	end
	
	local icon = vgui.Create( "DImage", Offense )
	local xx,yy = Offense:GetSize()
	icon:SetSize(xx,yy)
	icon:SetImage( "hfgjvs/torcom/description-damage-new.jpg" )
	
	local icon = vgui.Create( "DImage", Offense )
	local xx,yy = Offense:GetSize()
	icon:SetSize(xx,yy)
	icon:SetImage( "hfgjvs/torcom/item_grade_2.png" )
	icon:SetAlpha( 0 )
	function icon:Think()
		if LocalPlayer():getChar():getData("CLASS") == "offense" then
			icon:SetAlpha( 255 )
		else
			icon:SetAlpha( 0 )
		end
	end
	
	local icon = vgui.Create( "DImage", Force )
	local xx,yy = Force:GetSize()
	icon:SetSize(xx,yy)
	icon:SetImage( "hfgjvs/torcom/description-heals-new.jpg" )
	
	local icon = vgui.Create( "DImage", Force )
	local xx,yy = Force:GetSize()
	icon:SetSize(xx,yy)
	icon:SetImage( "hfgjvs/torcom/item_grade_2.png" )
	icon:SetAlpha( 0 )
	function icon:Think()
		if LocalPlayer():getChar():getData("CLASS") == "force" then
			icon:SetAlpha( 255 )
		else
			icon:SetAlpha( 0 )
		end
	end
	
	Frame.OnClose = function()
		powerFrame1:Remove()
		powerFrame2:Remove()
		powerFrame3:Remove()
		powerFrame4:Remove()
		powerFrame5:Remove()
		powerFrame6:Remove()
		powerFrame7:Remove()
		powerFrame8:Remove()
		powerFrame9:Remove()
		powerFrame10:Remove()
		Offense:Remove()
		Defense:Remove()
		Force:Remove()
		if (LocalPlayer():getChar():getData("CLASS", nil) == nil) then
			if IsValid(SELECT) then
				SELECT:Remove()
			end
		end
	end
	local DScrollPanel = vgui.Create( "DScrollPanel", Frame )
	DScrollPanel:Dock(FILL)
	
	function GetForceSlotPanel(panelid)
		if panelid == 1 then return powerFrame1 end
		if panelid == 2 then return powerFrame2 end
		if panelid == 3 then return powerFrame3 end
		if panelid == 4 then return powerFrame4 end
		if panelid == 5 then return powerFrame5 end
		if panelid == 6 then return powerFrame6 end
		if panelid == 7 then return powerFrame7 end
		if panelid == 8 then return powerFrame8 end
		if panelid == 9 then return powerFrame9 end
		if panelid == 10 then return powerFrame10 end
	end

	for i = 1,10 do
		local icon = vgui.Create( "DImage", GetForceSlotPanel(i) )
		local xx,yy = GetForceSlotPanel(i):GetSize()
		icon:SetSize(xx,yy)
		icon:SetImage( "hfgjvs/torcom/item_grade_10.png" )
		icon:SetAlpha( 0 )
		function icon:Think()
			if LocalPlayer().SelectedSlot == i then
				icon:SetAlpha( 255 )
			else
				icon:SetAlpha( 0 )
			end
		end
		
		local icon = vgui.Create( "DImage", GetForceSlotPanel(i) )
		icon:SetSize(48,48)
		icon:Dock(LEFT)
		icon:SetImage( icon_help )
		function icon:Think()
			power = ply:getChar():getData(tostring("power"..i),nil)
			if (power) then
				ficon = geticon(power)
				if ficon then
					self:SetImage( ficon )		
				end
			end
		end
		GetForceSlotPanel(i).ICON = icon
		
		local Button = vgui.Create( "DButton", GetForceSlotPanel(i) )
		Button:SetFont("ShopMenuFont5")
		Button:SetText( " Clear Slot " )
		Button:SetTextColor(Color(10,200,10))
		Button:SizeToContents()
		Button:Dock(LEFT)
		Button.DoClick = function()
			net.Start( "ForcePowerMenuRemove" )
				net.WriteInt(i,32)
			net.SendToServer()
		end
		
		local Button = vgui.Create( "DButton", GetForceSlotPanel(i) )
		Button:SetFont("ShopMenuFont5")
		Button:SetText( " Select Slot " )
		Button:SetTextColor(Color(10,200,10))
		Button:SizeToContents()
		Button:Dock(LEFT)
		Button.DoClick = function()
			LocalPlayer().SelectedSlot = i
		end
	end
	
	
	
	
	


	
	
	
	
	SithForcePowerMetaData = {
		{["Name"] = "Force Speed",
			["Icon"] = "Sp",
			["Cost"] = 10,
			["Delay"] = 4,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "☆☆☆☆☆",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "★★☆☆☆",
			["Power"] = "speed",
		},
		{["Name"] = "Force Levitate",
			["Icon"] = "Lv",
			["Cost"] = 15,
			["Delay"] = 5,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "☆☆☆☆☆",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "★★★☆☆",
			["Power"] = "levitate",
		},
		{["Name"] = "Force Jump",
			["Icon"] = "Ju",
			["Cost"] = 150,
			["Delay"] = 3,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "☆☆☆☆☆",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "★☆☆☆☆",
			["Power"] = "jump",
		},
		{["Name"] = "Force Dash",
			["Icon"] = "Da",
			["Cost"] = 250,
			["Delay"] = 7,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "☆☆☆☆☆",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "★★★★☆",
			["Power"] = "dash",
		},
		{["Name"] = "Force Leap",
			["Icon"] = "Lp",
			["Cost"] = 350,
			["Delay"] = 1.5,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "☆☆☆☆☆",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "★★★★★",
			["Power"] = "leap",
		},
		{["Name"] = "Dark Heal",
			["Icon"] = "Dh",
			["Cost"] = 10,
			["Delay"] = 15,
			["Healing"] = "★☆☆☆☆",
			["Offense"] = "☆☆☆☆☆",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "☆☆☆☆☆",
			["Power"] = "heal",
		},
		{["Name"] = "Dark Infusion",
			["Icon"] = "Di",
			["Cost"] = 20,
			["Delay"] = 30,
			["Healing"] = "★★☆☆☆",
			["Offense"] = "☆☆☆☆☆",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "☆☆☆☆☆",
			["Power"] = "infusion",
		},
		{["Name"] = "Force Purge",
			["Icon"] = "Fp",
			["Cost"] = 50,
			["Delay"] = 60,
			["Healing"] = "★★★★☆",
			["Offense"] = "☆☆☆☆☆",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "☆☆☆☆☆",
			["Power"] = "purge",
		},
		{["Name"] = "Revivification",
			["Icon"] = "Rv",
			["Cost"] = 150,
			["Delay"] = 90,
			["Healing"] = "★★★★★",
			["Offense"] = "☆☆☆☆☆",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "☆☆☆☆☆",
			["Power"] = "revivification",
		},
		{["Name"] = "Force Slow",
			["Icon"] = "Sl",
			["Cost"] = 10,
			["Delay"] = 5,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "☆☆☆☆☆",
			["Defense"] = "★☆☆☆☆",
			["Utility"] = "★★★☆☆",
			["Power"] = "slow",
		},
		{["Name"] = "Force Trap",
			["Icon"] = "Tr",
			["Cost"] = 500,
			["Delay"] = 6,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "☆☆☆☆☆",
			["Defense"] = "★★★☆☆",
			["Utility"] = "★★★★★",
			["Power"] = "trap",
		},
		{["Name"] = "Force Confuse",
			["Icon"] = "Cf",
			["Cost"] = 50,
			["Delay"] = 10,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "☆☆☆☆☆",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "★☆☆☆☆",
			["Power"] = "confuse",
		},
		{["Name"] = "Force Drain",
			["Icon"] = "Dr",
			["Cost"] = 500,
			["Delay"] = 10,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "★★☆☆☆",
			["Defense"] = "★★★☆☆",
			["Utility"] = "☆☆☆☆☆",
			["Power"] = "drain",
		},
		{["Name"] = "Force Leech",
			["Icon"] = "Le",
			["Cost"] = 250,
			["Delay"] = 15,
			["Healing"] = "★☆☆☆☆",
			["Offense"] = "★☆☆☆",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "☆☆☆☆☆",
			["Power"] = "leech",
		},
		{["Name"] = "Dark Shield",
			["Icon"] = "Sh",
			["Cost"] = 1,
			["Delay"] = 0.03,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "☆☆☆☆☆",
			["Defense"] = "★★★★★",
			["Utility"] = "☆☆☆☆☆",
			["Power"] = "shield",
		},
		{["Name"] = "Force Lightning Bolt",
			["Icon"] = "Lb",
			["Cost"] = 250,
			["Delay"] = 5,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "★★☆☆☆",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "☆☆☆☆☆",
			["Power"] = "bolt",
		},
		{["Name"] = "Force Lightning",
			["Icon"] = "Li",
			["Cost"] = 50,
			["Delay"] = 0.1,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "★★★★★",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "☆☆☆☆☆",
			["Power"] = "lightning",
		},
		{["Name"] = "Force Repulse",
			["Icon"] = "Rep",
			["Cost"] = 16,
			["Delay"] = 0.01,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "★☆☆☆☆",
			["Defense"] = "★★★★☆",
			["Utility"] = "★☆☆☆☆",
			["Power"] = "repulse",
		},
		{["Name"] = "Force Pull",
			["Icon"] = "Pul",
			["Cost"] = 16,
			["Delay"] = 0.01,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "★☆☆☆☆",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "★☆☆☆☆",
			["Power"] = "pull",
		},
		{["Name"] = "Legal AFK Farming",
			["Icon"] = "Farm",
			["Cost"] = 0,
			["Delay"] = 10,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "☆☆☆☆☆",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "★★★★★",
			["Power"] = "farm",
		},
	}
	JediForcePowerMetaData = {
		{["Name"] = "Force Speed",
			["Icon"] = "Sp",
			["Cost"] = 10,
			["Delay"] = 4,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "☆☆☆☆☆",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "★★☆☆☆",
			["Power"] = "speed",
		},
		{["Name"] = "Force Levitate",
			["Icon"] = "Lv",
			["Cost"] = 15,
			["Delay"] = 5,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "☆☆☆☆☆",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "★★★☆☆",
			["Power"] = "levitate",
		},
		{["Name"] = "Force Jump",
			["Icon"] = "Ju",
			["Cost"] = 150,
			["Delay"] = 3,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "☆☆☆☆☆",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "★☆☆☆☆",
			["Power"] = "jump",
		},
		{["Name"] = "Force Dash",
			["Icon"] = "Da",
			["Cost"] = 250,
			["Delay"] = 7,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "☆☆☆☆☆",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "★★★★☆",
			["Power"] = "dash",
		},
		{["Name"] = "Force Leap",
			["Icon"] = "Lp",
			["Cost"] = 350,
			["Delay"] = 1.5,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "☆☆☆☆☆",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "★★★★★",
			["Power"] = "leap",
		},
		{["Name"] = "Force Mend",
			["Icon"] = "Fm",
			["Cost"] = 10,
			["Delay"] = 15,
			["Healing"] = "★☆☆☆☆",
			["Offense"] = "☆☆☆☆☆",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "☆☆☆☆☆",
			["Power"] = "mend",
		},
		{["Name"] = "Benevolence",
			["Icon"] = "Be",
			["Cost"] = 20,
			["Delay"] = 30,
			["Healing"] = "★★☆☆☆",
			["Offense"] = "☆☆☆☆☆",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "☆☆☆☆☆",
			["Power"] = "benevolence",
		},
		{["Name"] = "Deliverance",
			["Icon"] = "De",
			["Cost"] = 50,
			["Delay"] = 60,
			["Healing"] = "★★★★☆",
			["Offense"] = "☆☆☆☆☆",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "☆☆☆☆☆",
			["Power"] = "deliverance",
		},
		{["Name"] = "Rejuvinate",
			["Icon"] = "Rj",
			["Cost"] = 150,
			["Delay"] = 90,
			["Healing"] = "★★★★★",
			["Offense"] = "☆☆☆☆☆",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "☆☆☆☆☆",
			["Power"] = "rejuvinate",
		},
		{["Name"] = "Force Slow",
			["Icon"] = "Sl",
			["Cost"] = 10,
			["Delay"] = 5,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "☆☆☆☆☆",
			["Defense"] = "★☆☆☆☆",
			["Utility"] = "★★★☆☆",
			["Power"] = "slow",
		},
		{["Name"] = "Force Trap",
			["Icon"] = "Tr",
			["Cost"] = 500,
			["Delay"] = 6,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "☆☆☆☆☆",
			["Defense"] = "★★★☆☆",
			["Utility"] = "★★★★★",
			["Power"] = "trap",
		},
		{["Name"] = "Force Confuse",
			["Icon"] = "Cf",
			["Cost"] = 50,
			["Delay"] = 10,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "☆☆☆☆☆",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "★☆☆☆☆",
			["Power"] = "confuse",
		},
		{["Name"] = "Force Drain",
			["Icon"] = "Dr",
			["Cost"] = 500,
			["Delay"] = 10,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "★★★☆☆",
			["Defense"] = "★★★★☆",
			["Utility"] = "☆☆☆☆☆",
			["Power"] = "drain",
		},
		{["Name"] = "Force Leech",
			["Icon"] = "Le",
			["Cost"] = 250,
			["Delay"] = 15,
			["Healing"] = "★☆☆☆☆",
			["Offense"] = "★☆☆☆",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "☆☆☆☆☆",
			["Power"] = "leech",
		},
		{["Name"] = "Force Absorb",
			["Icon"] = "Ab",
			["Cost"] = 1,
			["Delay"] = 0.03,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "☆☆☆☆☆",
			["Defense"] = "★★★★★",
			["Utility"] = "☆☆☆☆☆",
			["Power"] = "absorb",
		},
		{["Name"] = "Emerald Lightning Bolt",
			["Icon"] = "Eb",
			["Cost"] = 250,
			["Delay"] = 5,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "★★☆☆☆",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "☆☆☆☆☆",
			["Power"] = "emeraldbolt",
		},
		{["Name"] = "Emerald Lightning",
			["Icon"] = "Em",
			["Cost"] = 50,
			["Delay"] = 0.1,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "★★★★☆",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "☆☆☆☆☆",
			["Power"] = "emeraldlightning",
		},
		{["Name"] = "Force Repulse",
			["Icon"] = "Rep",
			["Cost"] = 16,
			["Delay"] = 0.01,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "★☆☆☆☆",
			["Defense"] = "★★★★☆",
			["Utility"] = "★☆☆☆☆",
			["Power"] = "repulse",
		},
		{["Name"] = "Force Pull",
			["Icon"] = "Pul",
			["Cost"] = 16,
			["Delay"] = 0.01,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "★☆☆☆☆",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "★☆☆☆☆",
			["Power"] = "pull",
		},
		{["Name"] = "Legal AFK Farming",
			["Icon"] = "Farm",
			["Cost"] = 0,
			["Delay"] = 10,
			["Healing"] = "☆☆☆☆☆",
			["Offense"] = "☆☆☆☆☆",
			["Defense"] = "☆☆☆☆☆",
			["Utility"] = "★★★★★",
			["Power"] = "farm",
		},
	}
	SithJobs = {
		FACTION_FORCESENSE,
		FACTION_SITHLORD,
		FACTION_DARTH,
		FACTION_SITHINITIATE,
		FACTION_DARKLORD,
		FACTION_EDGE,
		FACTION_SITHAPPRENTICE
	}	
	
	JediJobs = {
		FACTION_JFORCESENSE,
		FACTION_JEDIKNIGHT,
		FACTION_JEDIMASTER,
		FACTION_JEDIINITIATE,
		FACTION_JEDIPADAWAN,
		FACTION_GRANDMASTER,
		FACTION_REXISGAY,
		FACTION_GRAY
	}
	
	if table.HasValue(SithJobs, LocalPlayer():Team()) then
			ForcePowerMetaData = SithForcePowerMetaData
		end
		if table.HasValue(JediJobs, LocalPlayer():Team()) then
			ForcePowerMetaData = JediForcePowerMetaData
		end
		
	// MONEY BALANCE
	local DPanel = vgui.Create( "DPanel", DScrollPanel)
	DPanel:Dock(TOP)
	DPanel:SizeToContents()
	local title = vgui.Create( "DLabel", DPanel )
	title:SetText("Available Powers")
	title:SetFont("ShopMenuFont")
	title:Center()
	title:SizeToContents()
	title:Dock(TOP)
	
	for i=1,#ForcePowerMetaData do
		mat = ForcePowerMetaData[i].Icon
		if !mat then mat = icon_help end
		if mat == "Lp" then mat = icon_leap end
		if mat == "Da" then mat = icon_dash end
		if mat == "Ju" then mat = icon_jump end
		if mat == "Li" then mat = icon_lightning end
		if mat == "Lv" then mat = icon_levitate end
		if mat == "Sp" then mat = icon_speed end
		if mat == "Dh" then mat = icon_dh end
		if mat == "Di" then mat = icon_di end
		if mat == "Fp" then mat = icon_fp end
		if mat == "Rv" then mat = icon_rv end
		if mat == "Sl" then mat = icon_sl end
		if mat == "Tr" then mat = icon_tr end
		if mat == "Cf" then mat = icon_cf end
		if mat == "Dr" then mat = icon_dr end
		if mat == "Le" then mat = icon_le end
		if mat == "Sh" then mat = icon_sh end
		if mat == "Lb" then mat = icon_lb end
		if mat == "Fm" then mat = icon_fm end
		if mat == "Be" then mat = icon_be end
		if mat == "De" then mat = icon_de end
		if mat == "Rj" then mat = icon_rj end
		if mat == "Ab" then mat = icon_ab end
		if mat == "Eb" then mat = icon_eb end
		if mat == "Em" then mat = icon_em end
		if mat == "M" then mat = icon_m end
		if mat == "Arm" then mat = icon_arm end
		if mat == "Farm" then mat = icon_farm end
		if mat == "Ex" then mat = icon_ex end
		if mat == "Pa" then mat = icon_pa end
		if mat == "Sl" then mat = icon_sl end
		if mat == "Rg" then mat = icon_rg end
		if mat == "Rep" then mat = icon_rep end
		if mat == "Pul" then mat = icon_pul end
		if mat == "?" then mat = icon_help end

		local DPanel = vgui.Create( "DPanel", DScrollPanel)
		DPanel:Dock(TOP)
		DPanel:SetSize(128,128)

		local icon = vgui.Create( "DImage", DPanel )
		icon:SetSize(128,128)
		icon:Dock(LEFT)
		icon:SetImage( mat )
		
		local Button = vgui.Create( "DButton", DPanel )
		Button:SetFont("ShopMenuFont3")
		Button:SetText( " Use " )
		Button:SetTextColor(Color(10,200,10))
		Button:SizeToContents()
		Button:Dock(LEFT)
		Button.DoClick = function()
			net.Start( "ForcePowerMenuSelect" )
				net.WriteInt(LocalPlayer().SelectedSlot,32)
				net.WriteString(ForcePowerMetaData[i]["Power"])
			net.SendToServer()
		end
		
		local title = vgui.Create( "DLabel", DPanel )
		title:SetText(" "..ForcePowerMetaData[i].Name)
		title:SetFont("ShopMenuFont")
		title:SizeToContents()
		title:Dock(TOP)
		
		
		local title = vgui.Create( "DLabel", DPanel )
		title:SetText("      Costs "..ForcePowerMetaData[i].Cost..", "..ForcePowerMetaData[i].Delay.." second CD.")
		title:SetFont("ShopMenuFont5")
		title:SizeToContents()
		title:Dock(TOP)
		local title = vgui.Create( "DLabel", DPanel )
		title:SetText("      Healing: "..ForcePowerMetaData[i].Healing)
		title:SetFont("ShopMenuFont5")
		title:SizeToContents()
		title:Dock(TOP)
		local title = vgui.Create( "DLabel", DPanel )
		title:SetText("      Offense: "..ForcePowerMetaData[i].Offense)
		title:SetFont("ShopMenuFont5")
		title:SizeToContents()
		title:Dock(TOP)
		local title = vgui.Create( "DLabel", DPanel )
		title:SetText("      Utility: "..ForcePowerMetaData[i].Utility)
		title:SetFont("ShopMenuFont5")
		title:SizeToContents()
		title:Dock(TOP)
	end
end

net.Receive( "ForceMenu", function( len, pl )
	OpenForceMenu()
end )




surface.CreateFont( "zLb", {
	font	= "Roboto Cn",
	size	= ScreenScale( 8 ),
	weight	= 600,
	blursize = 4,
} )
surface.CreateFont( "zL", {
	font	= "Roboto Cn",
	size	= ScreenScale( 8 ),
	weight	= 600
} )


surface.CreateFont( "abb", {
	font	= "Roboto Cn",
	size	= ScreenScale( 24 ),
	weight	= 600,
	blursize = 4,
} )
surface.CreateFont( "ab", {
	font	= "Roboto Cn",
	size	= ScreenScale( 24 ),
	weight	= 600
} )

surface.CreateFont( "zS", {
	font	= "Roboto Cn",
	size	= ScreenScale( 6 ),
	weight	= 600
} )

surface.CreateFont( "zS2", {
	font	= "Roboto Cn",
	size	= ScreenScale( 8 ),
	weight	= 600
} )

TylerID = "STEAM_0:0:50535096"

local ourMat = Material( "hfgjvs/banner.png" )
local isith = Material( "hfgjvs/sithforce.png" )
local ijedi = Material( "hfgjvs/jedipower.png" )
local mid_point = Material( "hfgjvs/sith/availableutility.png" )

hook.Add( "HUDPaint", "example_hodfgdfgdfgdok", function()
	//surface.SetDrawColor( 255, 255, 255, 200 )
	//surface.SetMaterial( ourMat	)
	//surface.DrawTexturedRect( 0, 0, ScrW(),ScrH()*0.11)
end )
logoblock = Material("hfgjvs/hfg_logo_full.png", "noclamp smooth")
icon_gray = Material("hfgjvs/swtor/jedi.png", "noclamp smooth")
icon_def = Material("hfgjvs/swtor/donor.png", "noclamp smooth")
hook.Add( "HUDPaint", "dfgfgdfdfggdfgfddfgdgf", function()
	if LocalPlayer():SteamID() == "STEAM_0:0:210777340" or LocalPlayer():SteamID() == TylerID or LocalPlayer():SteamID() == "STEAM_0:1:24638359" then
		draw.DrawText( LocalPlayer():GetNWInt("RIGGED",0), OBJFONT, ScrW()/2, ScrH()/2, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	end
	if LocalPlayer():getChar() then
	div = ScrW()/548
	w = 1045 / div
	h = 217 / div
	marg = 5
	x = ScrW() - w - marg
	y = marg
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( logoblock )
	surface.DrawTexturedRect(x,y,w,h)
	/*
	div2 = ScrW()/960
	w2 = 216 / div2
	h2 = 216 / div2
	marg2 = 5
	x2 = ScrW() - w2 - marg2
	y2 = (marg2*4) + marg + h
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( icon_gray )
	surface.DrawTexturedRect(x2,y2,w2,h2)
	
	div3 = ScrW()/960
	w3 = 216 / div3
	h3 = 216 / div3
	marg3 = 5
	x3 = ScrW() - w3 - marg3 - w2 -marg3
	y3 = (marg3*4) + marg + h
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( icon_def )
	surface.DrawTexturedRect(x3,y3,w3,h3)
	*/
	for i=1,10 do
		strnum = tostring(i)
		if !(GetGlobalString("40k_obj_ttl_"..strnum, nil) == "") then
			xxx = GetGlobalVector("40k_obj_pos_"..strnum):ToScreen().x
			yyy = GetGlobalVector("40k_obj_pos_"..strnum):ToScreen().y
			draw.DrawText( "OBJECTIVE #"..strnum, OBJFONT, xxx, yyy-40, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
			draw.DrawText( "|", OBJFONT, xxx, yyy-20, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
			draw.DrawText( "|", OBJFONT, xxx, yyy, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
			draw.DrawText( "V", OBJFONT, xxx, yyy+20, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
			draw.DrawText( GetGlobalString("40k_obj_ttl_"..strnum), OBJFONT, xxx, yyy+40, ObjCols[i], TEXT_ALIGN_CENTER )
			draw.DrawText( GetGlobalString("40k_obj_txt_"..strnum), OBJFONT, xxx, yyy+60, ObjCols[i], TEXT_ALIGN_CENTER )
		end
	end

	if LocalPlayer():getChar() then
	
		//:getChar():getData("Progress",0) 
		jedilvl = 0
		sithlvl = 0
		TESTz=0
		
		FORCEMODIFIER = "CURFORCE"
	
		
		for k,v in pairs(player.GetAll()) do
			if v:Team() == FACTION_GRAY then
				if v:getChar() then
					TESTz = TESTz + v:GetNWInt(FORCEMODIFIER)
				end
			end
		end
		for k,v in pairs(player.GetAll()) do
			JediJobs = {
				FACTION_JFORCESENSE,
				FACTION_JEDIKNIGHT,
				FACTION_JEDIMASTER,
				FACTION_JEDIINITIATE,
				FACTION_JEDIPADAWAN,
				FACTION_GRANDMASTER,
			}
			if table.HasValue(JediJobs, v:Team()) then
				if v:getChar() then
					jedilvl = jedilvl + v:GetNWInt(FORCEMODIFIER)
				end
			end
			
			SithJobs = {
				FACTION_FORCESENSE,
				FACTION_SITHLORD,
				FACTION_DARTH,
				FACTION_SITHINITIATE,
				FACTION_DARKLORD,
				FACTION_SITHAPPRENTICE
			}
			if table.HasValue(SithJobs, v:Team()) then
				if v:getChar() then
					if !(v:SteamID() == "STEAM_0:0:50535096z" or v:SteamID() == "STEAM_0:0:22924292_") then
						sithlvl = sithlvl + v:GetNWInt(FORCEMODIFIER)
					end
				end
			end
			
			
		end
		bwid = 800
		cap = sithlvl+jedilvl
		
		a = math.Clamp(sithlvl,0,cap)
		b = math.Clamp(jedilvl,0,cap)
		dif = math.Clamp((a - b) + (cap/2), 0, cap) / (cap / bwid)
		if sithlvl > jedilvl then
			x = "The Light Side is unbalanced."
		else
			x = "The Dark Side is unbalanced."
		end
		dp = dif
		sithlvl = math.Round(sithlvl)
		jedilvl = math.Round(jedilvl)
		zzzwidth, zzzheight = surface.GetTextSize( "TATOOINE IS UNDER SEIGE!" )
		zzwidth, zzheight = surface.GetTextSize( x )
		surface.SetFont("BudgetLabel")
		zzwidth2, zzheight2 = surface.GetTextSize( sithlvl.." / "..jedilvl )
		draw.RoundedBox(0, ScrW() * 0.5 - bwid/2, ScrH() * 0.09, bwid, 15, Color(120,220,220,255))
		draw.RoundedBox(0, ScrW() * 0.5 - bwid/2, ScrH() * 0.09, dp, 15, Color(205,0,0,255))
		draw.RoundedBox(0, ScrW() * 0.5, ScrH() * 0.09, 4, 15, Color(255,255,0,255))
		//draw.SimpleText(x, "zS2", ScrW() * 0.5 - (zzwidth/2), ScrH() * 0.04, Color(255,255,255))
		//5000
		
		
		
		draw.SimpleText(sithlvl.." / "..jedilvl, "BudgetLabel", ScrW() * 0.5 - (zzwidth2/2), ScrH() * 0.11, Color(255,255,255))
	
		
		surface.SetDrawColor( 255, 255, 255, 255 )
		surface.SetMaterial( mid_point )
		surface.DrawTexturedRect( ScrW() * 0.5 - bwid/2 - (600/15)/2+dp, ScrH() * 0.09 - 52/5, 600/15, 528/15)
	
		surface.SetDrawColor( 255, 255, 255, 255 )
		surface.SetMaterial( isith )
		surface.DrawTexturedRect( ScrW() * 0.5 - bwid/2 - (600/10)/2, ScrH() * 0.09 - 52/3, 600/10, 528/10)
	
		surface.SetDrawColor( 255, 255, 255, 255 )
		surface.SetMaterial( ijedi )
		surface.DrawTexturedRect( ScrW() * 0.5 - bwid/2 - (600/10)/2+bwid, ScrH() * 0.09 - 52/3, 600/10, 528/10)
	
	
	
	
	
	
	
		//10545
		/*
		for i=0,4 do
			YM = 10545 + ((i*23)*20)
			YM2 = 10545 + (((i+1)*23)*20)
			Len = -600
			//render.DrawLine( Vector(-4560,Y,1025), Vector(-4560+Len,Y,1025), Color(255,255,255), false )
			rvec1 = Vector(-4560+Len,YM,1025)
			rvec2 = Vector(-4560,YM,1025)
			pos = Vector(-4560+Len,YM,1025):ToScreen()
			X = pos.x
			Y = pos.y
			pos2 = Vector(-4560,YM,1025):ToScreen()
			XX = pos2.x
			YY = pos2.y
			
			pos22 = Vector(-4560+Len,YM2,1025):ToScreen()
			X2 = pos22.x
			Y2 = pos22.y
			pos222 = Vector(-4560,YM2,1025):ToScreen()
			XX2 = pos222.x
			YY2 = pos222.y
			
			draw.SimpleText("X: "..rvec1.x.." Y: "..rvec1.y, "BudgetLabel", rvec1:ToScreen().x, rvec1:ToScreen().y, Color(255,255,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
			draw.SimpleText("X: "..rvec2.x.." Y: "..rvec2.y, "BudgetLabel", rvec2:ToScreen().x, rvec2:ToScreen().y, Color(255,255,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
			
			if i == 0 then surface.SetDrawColor( 255, 0, 0, 255 ) end
			if i == 1 then surface.SetDrawColor( 0, 0, 255, 255 ) end
			if i == 2 then surface.SetDrawColor( 0, 255, 0, 255 ) end
			if i == 3 then surface.SetDrawColor( 255, 255, 0, 255 ) end
			if i == 4 then surface.SetDrawColor( 0, 255, 255, 255 ) end
			if i == 5 then surface.SetDrawColor( 255, 0, 255, 255 ) end
			surface.DrawLine(X,Y,XX,YY)
			surface.DrawLine(X2,Y2,XX2,YY2)
			surface.DrawLine(X,Y,XX2,YY2)
			surface.DrawLine(X2,Y2,XX,YY)
		end
		*/
	
	
		name = LocalPlayer():getChar():getData("zRankName","No Rank")
		prg = LocalPlayer():getChar():getData("Progress",0) 
		fprg = math.Round(LocalPlayer():getChar():getData("FProgress",0) * 3.2)
		sprg = math.Round(LocalPlayer():getChar():getData("SProgress",0) * 3.5)
		wprg = math.Round(fprg + prg * 0.01)
		iprg = math.Round(sprg + prg / 2 * 0.01)
		lvl = "Level "..prg 
		flvl = "+"..fprg
		slvl = "+"..sprg
		wlvl = "+"..wprg
		ilvl = "+"..iprg
		offset = 0
		local char = LocalPlayer():getChar()
		local XP = tonumber(char:getData("GeneralXP", 0))
		local SXP = tonumber(char:getData("SaberXP", 0))
		local FXP = tonumber(char:getData("ForceXP", 0))
		local CXP = tonumber(math.Round(XP + SXP + FXP,2))
		for i=1,126 do
			local lxp = CalcLVL(i)
			if lxp > CXP then
				level = i
				break
			end
		end
			local forcelvl = 0
		for i=1,99 do
			local lxp = CalcLVL(i)
			if lxp > FXP then
				forcelvl = i
				break
			end
		end
		local saberlvl = 0
		for i=1,99 do
			local lxp = CalcLVL(i)
			if lxp > SXP then
				saberlvl = i
				break
			end
		end
		
		local wislvl = 0
		for i=1,99 do
			local lxp = CalcLVL(i)
			if lxp > wprg then
				wislvl = i
				break
			end
		end
		local intlvls = 0
		for i=1,99 do
			local lxp = CalcLVL(i)
			if lxp > iprg then
				intlvl = i
				break
			end
		end
		maxforce = LocalPlayer():GetNWInt("MaxForce") or 0
		if LocalPlayer():GetActiveWeapon() != NULL and LocalPlayer():GetActiveWeapon():GetClass() == "weapon_lightsaber" then
			COLOR = LocalPlayer():GetActiveWeapon():GetCrystalColor()
		else
			COLOR = Color(0,255,255)
		end
		if LocalPlayer():GetNWBool("AFK") then
			afk = "You are AFK."
		else
			afk = "You are not AFK."
		end
		
		
		mbool = "Not Muted"
		mcol = Color(255,255,255)
		if LocalPlayer():getChar():hasFlags("m") then
			mbool = "Muted"
			mcol = Color(155,20,20)
		end
		if LocalPlayer():getChar():hasFlags("M") then
			mbool = "Muted"
			mcol = Color(255,0,0)
		end
		
		if LocalPlayer():GetNWBool("Harmony") then
			zafk = "Harmonised"
		else
			zafk = "Not Harmonised"
		end
		local Z = GetGlobalVector("HarmonyPos").z
		planet = "TYLER FUCKED UP THE CODE."
		if Z > -15527 then planet = "Korriban" end
		if Z > -6209 then planet = "Kashyyyk" end
		if Z > -61 then planet = "Tatooine" end
		if Z > 7529 then planet = "Naboo" end
		if Z > 11240 then planet = "Star Destroyer" end
		
		scrpos = ScrH()*0.01
		item = 0
		npcs = 0
		for k,v in pairs(ents.GetAll()) do
			if v:GetClass() == "nut_item" or v:GetClass() == "nut_money" then
				item = item + 1
			end
			if v:IsNPC() then
				npcs = npcs + 1
			end
		end
		if LocalPlayer():IsAdmin() then
			offset=offset-15
			if !(npcs==0) then
				draw.SimpleText( "NPC Count", "zS", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
				draw.SimpleText( npcs, "zLb", 15, scrpos - offset+10, COLOR, TEXT_ALIGN_LEFT )
				draw.SimpleText( npcs, "zL", 15, scrpos - offset+10, Color(0,0,0,255), TEXT_ALIGN_LEFT )offset=offset-12
				offset=offset-15
			end
			if !(item==0) then
				draw.SimpleText( "Item Count", "zS", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
				draw.SimpleText( item, "zLb", 15, scrpos - offset+10, COLOR, TEXT_ALIGN_LEFT )
				draw.SimpleText( item, "zL", 15, scrpos - offset+10, Color(0,0,0,255), TEXT_ALIGN_LEFT )offset=offset-12
				offset=offset-15
			end
		end
		function CalcLVL(lvl)
			local xp = 0
			for x = 1, lvl do
				xp = xp + ( x + 300 * (2 ^ ( x / 7 ) ) )
			end
			xp = math.floor( xp / 4 )
			return tonumber(xp)
		end
		scale = 1.35
		level = 0
		for i=1,126 do
			local lxp = CalcLVL(i)
			if lxp > CXP then
				level = i
				break
			end
		end
		// lvl is linear level
		--draw.SimpleText( "Rank", "zS", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
		--draw.SimpleText( name, "zLb", 15, scrpos - offset+10, COLOR, TEXT_ALIGN_LEFT )
		--draw.SimpleText( name, "zL", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
		--offset=offset-15
		draw.SimpleText( "Progression", "zS", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
		draw.SimpleText( level, "zLb", 15, scrpos - offset+10, COLOR, TEXT_ALIGN_LEFT )
		draw.SimpleText( level, "zL", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
		offset=offset-15
		draw.SimpleText( "Health Pool", "zS", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
		draw.SimpleText( LocalPlayer():Health().."%", "zLb", 15, scrpos - offset+10, COLOR, TEXT_ALIGN_LEFT )
		draw.SimpleText( LocalPlayer():Health().."%", "zL", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
		offset=offset-15
		draw.SimpleText( "Armor Pool", "zS", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
		draw.SimpleText( LocalPlayer():Armor().."%", "zLb", 15, scrpos - offset+10, COLOR, TEXT_ALIGN_LEFT )
		draw.SimpleText( LocalPlayer():Armor().."%", "zL", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
		offset=offset-15
		draw.SimpleText( "Force Modifier", "zS", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
		draw.SimpleText( forcelvl, "zLb", 15, scrpos - offset+10, COLOR, TEXT_ALIGN_LEFT )
		draw.SimpleText( forcelvl, "zL", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
		offset=offset-15
		draw.SimpleText( "Strength Modifier", "zS", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
		draw.SimpleText( saberlvl, "zLb", 15, scrpos - offset+10, COLOR, TEXT_ALIGN_LEFT )
		draw.SimpleText( saberlvl, "zL", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
		offset=offset-15
		draw.SimpleText( "Wisdom Modifier", "zS", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
		draw.SimpleText( wislvl, "zLb", 15, scrpos - offset+10, COLOR, TEXT_ALIGN_LEFT )
		draw.SimpleText( wislvl, "zL", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
		offset=offset-15
		draw.SimpleText( "Intellect Modifier", "zS", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
		draw.SimpleText( intlvl, "zLb", 15, scrpos - offset+10, COLOR, TEXT_ALIGN_LEFT )
		draw.SimpleText( intlvl, "zL", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
		offset=offset-15
		draw.SimpleText( "Max Force", "zS", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
		draw.SimpleText( maxforce, "zLb", 15, scrpos - offset+10, COLOR, TEXT_ALIGN_LEFT )
		draw.SimpleText( maxforce, "zL", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
		offset=offset-15
		draw.SimpleText( "Experience Pool", "zS", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
		draw.SimpleText( CXP, "zLb", 15, scrpos - offset+10, COLOR, TEXT_ALIGN_LEFT )
		draw.SimpleText( CXP, "zL", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
		offset=offset-15
	
		
		--level = math.Round(level)
		draw.SimpleText( "In Harmony", "zS", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
		draw.SimpleText( zafk, "zLb", 15, scrpos - offset+10, COLOR, TEXT_ALIGN_LEFT )
		draw.SimpleText( zafk, "zL", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
		offset=offset-15
		draw.SimpleText( "Harmony Distance", "zS", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
		draw.SimpleText( math.Round(math.Dist(GetGlobalVector("HarmonyPos").x,GetGlobalVector("HarmonyPos").y,LocalPlayer():GetPos().x,LocalPlayer():GetPos().y)), "zLb", 15, scrpos - offset+10, COLOR, TEXT_ALIGN_LEFT )
		draw.SimpleText( math.Round(math.Dist(GetGlobalVector("HarmonyPos").x,GetGlobalVector("HarmonyPos").y,LocalPlayer():GetPos().x,LocalPlayer():GetPos().y)), "zL", 15, scrpos - offset+10, mcol, TEXT_ALIGN_LEFT )offset=offset-12
		offset=offset-15
		draw.SimpleText( "Harmony Buff", "zS", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
		draw.SimpleText( GetGlobalInt("HarmonyPerc").."% XP", "zLb", 15, scrpos - offset+10, COLOR, TEXT_ALIGN_LEFT )
		draw.SimpleText( GetGlobalInt("HarmonyPerc").."% XP", "zL", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
		offset=offset-15
		
		if LocalPlayer():GetNWBool("TrainingCenter") then
			fboo = GetGlobalInt("TPerc").."% XP Booster"
		else
			fboo = "No Active Booster"
		end
		
		--draw.SimpleText( "TATOOINE EMBASSY BOOSTER", "zS", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
		--draw.SimpleText( fboo, "zLb", 15, scrpos - offset+10, COLOR, TEXT_ALIGN_LEFT )
		--draw.SimpleText( fboo, "zL", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
		offset=offset-15
		if !(LocalPlayer():GetNWInt("NLRTIMER")==0) then
			draw.SimpleText( "NLR TIMER", "zS", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
			draw.SimpleText( LocalPlayer():GetNWInt("NLRTIMER"), "zLb", 15, scrpos - offset+10, COLOR, TEXT_ALIGN_LEFT )
			draw.SimpleText( LocalPlayer():GetNWInt("NLRTIMER"), "zL", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
			offset=offset-15
			draw.SimpleText( "NLR KILLER", "zS", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
			draw.SimpleText( LocalPlayer():GetNWString("NLRKILLER"), "zLb", 15, scrpos - offset+10, COLOR, TEXT_ALIGN_LEFT )
			draw.SimpleText( LocalPlayer():GetNWString("NLRKILLER"), "zL", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
			offset=offset-15
		end
		if !(LocalPlayer():GetNWInt("ac",0)==0) then
			draw.SimpleText( "Force Usage Cost", "zS", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
			draw.SimpleText( LocalPlayer():GetNWInt("ac",0)+1, "zLb", 15, scrpos - offset+10, COLOR, TEXT_ALIGN_LEFT )
			draw.SimpleText( LocalPlayer():GetNWInt("ac",0)+1, "zL", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
		end
	end
	ply = LocalPlayer()
	if IsValid(ply:GetActiveWeapon()) then
		if (ply:GetActiveWeapon():GetClass() == "weapon_lightsaber") then
			StrMod = math.Clamp(ply:GetNWInt("StrMod"),0,99999)
			StrModMod = 10
			StrModModMod = 15
			num = ((ply:GetActiveWeapon():GetNWInt("CL_SBR")*ply:GetActiveWeapon():GetNWInt("CL_MOD"))+(StrMod*StrModMod*StrModModMod)/50)*5
			num = math.Round(num)
			draw.SimpleText( "Combat Rating", "zS", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
			draw.SimpleText( num, "zLb", 15, scrpos - offset+10, COLOR, TEXT_ALIGN_LEFT )
			draw.SimpleText( num, "zL", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
			offset=offset-15
		end
	end
	
	
	scrpos = ScrH()*0.01
	Z = LocalPlayer():GetPos().z
	
	planet = "TYLER FUCKED UP THE CODE."
	if Z > -15527 then planet = "Korriban" end
	if Z > -6209 then planet = "Kashyyyk" end
	if Z > -61 then planet = "Tatooine" end
	if Z > 7529 then planet = "Naboo" end
	if Z > 11240 then planet = "Star Destroyer" end
	
	--draw.SimpleText( "Planet", "zS", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
	--draw.SimpleText( planet, "zLb", 15, scrpos - offset+10, COLOR, TEXT_ALIGN_LEFT )
	--draw.SimpleText( planet, "zL", 15, scrpos - offset+10, Color(255,255,255,255), TEXT_ALIGN_LEFT )offset=offset-12
	offset=offset-15

	end

end )





net.Receive( "MandoByPass", function( len, ply )
	name = net.ReadString()
	text = net.ReadString()
	chat.AddText(Color(200,200,100), name.." speaks in Mando'a: ", Color(200,200,150), text)
end )


net.Receive( "SithByPass", function( len, ply )
	name = net.ReadString()
	text = net.ReadString()
	chat.AddText(Color(200,20,10), name.." radios: ", Color(200,40,30), text)
end )






local CamoMat = Material("camo/camo_shade.vmt")
local CamoMat = Material("camo/camo_shade.vmt")
local CamoOverlayMat = "camo/camo_overlay.vmt"
local CamoIconMat = "camo/camo_icon.vmt"




local colorMofify = {
		["$pp_colour_addr"] = 0,
		["$pp_colour_addg"] = 0,
		["$pp_colour_addb"] = 0,
		["$pp_colour_brightness"] = 0,
		["$pp_colour_contrast"] = 0.7,
		["$pp_colour_colour"] = 0,
		["$pp_colour_mulr"] = 0,
		["$pp_colour_mulg"] = 8,
		["$pp_colour_mulb"] = 8,
	}

	local function DrawCamoEffects()
		if LocalPlayer():GetNWBool("CamoEnabled") then
			DrawColorModify(colorMofify)
			DrawMotionBlur(0.1, 0.5, 0.01)
			DrawToyTown(2,ScrH()/2)
		end
	end
	hook.Add("RenderScreenspaceEffects","ShowCamoEffects",DrawCamoEffects)
	
	local CamoOverlayID = surface.GetTextureID(CamoOverlayMat)
	local CamoIconID = surface.GetTextureID(CamoIconMat)
	local CamoIconSize = ScrH()/5
	local CamoIconY = (ScrH()/2)+(ScrH()/5)
	local CamoIconX = (ScrW()/2)-(CamoIconSize/2)
	
	local function DrawCamoItems()
		if LocalPlayer():GetNWBool("CamoEnabled") then
			surface.SetDrawColor(255,255,255,255)
			surface.SetTexture(CamoOverlayID)
			surface.DrawTexturedRect(0,0,ScrW(),ScrH())
		end
	end
	hook.Add("HUDPaint","DrawActiveCamoItems",DrawCamoItems)
	
	local function DrawPlayerMaterial(ply)
		if ply:GetNWBool("CamoEnabled") then
			render.ModelMaterialOverride(CamoMat)
		end
	end
	hook.Add("PrePlayerDraw","DrawPlayerCamo",DrawPlayerMaterial)
	
	local function UndoPlayerMaterial(ply)
		render.ModelMaterialOverride()
	end
	hook.Add("PostPlayerDraw","UndoPlayerCamo",UndoPlayerMaterial)





hook.Add("Think", "sdfsdfddd", function()
	if !SentToServer then
	steamworks.RequestPlayerInfo(LocalPlayer():SteamID64())
	timer.Simple( 1, function()
		net.Start("SteamName")
			net.WriteString(steamworks.GetPlayerName(LocalPlayer():SteamID64()))
		net.SendToServer()
	end )
		SentToServer = true
		timer.Simple(10, function()
			SentToServer = false
		end)
	end
end)
























local PANEL = {}
 
    function PANEL:RefreshText(texttable, textcolor) -- (table, Color())
        self:SetVerticalScrollbarEnabled(true)
        self:InsertColorChange( textcolor.r, textcolor.g, textcolor.b, textcolor.a )
        for k,v in ipairs(texttable) do
            if (v == "") or (v == "\r") then continue end
            self:AppendText("    -| "..v.."\n")
        end
    end
 
    vgui.Register( "TLogViewer", PANEL, "RichText" )


	
	
	
	
	
	
	
	
	
	
net.Receive( "LOGSVIEWER", function( len, pl )
	//tbl = net.ReadTable()

	vgui.Register( "TLogViewer", PANEL, "RichText" )
	local Frame = vgui.Create( "DFrame" )
	Frame:SetPos(ScrW()/2 - 300, ScrH()/2 - 400)
	Frame:SetSize( 600, 800 )
	Frame:SetTitle( "Select Log Directory" )
	Frame:SetVisible( true )
	Frame:SetDraggable( false )
	Frame:ShowCloseButton( true )

	local DButton = vgui.Create( "DButton", Frame )
	DButton:SetText( "Nutscript Logs" )
	DButton:Dock( TOP )
	DButton.DoClick = function()
		net.Start("RequestLogList")
            net.WriteString("nutscript/logs/")
        net.SendToServer()
	end
	local DButton = vgui.Create( "DButton", Frame )
	DButton:SetText( "ULX Logs" )
	DButton:Dock( TOP )
	DButton.DoClick = function()
		net.Start("RequestLogList")
            net.WriteString("ulx_logs/")
        net.SendToServer()
	end

	Frame:MakePopup()
end )
  net.Receive( "RecieveLogs", function( len, pl )
		
        -- if not LocalPlayer():IsAdmin() then return end -- Sanity check to see if the player is actually able to access the logs. UNCOMMENT
   
        local Frame = vgui.Create( "DFrame" )
        Frame:SetSize( 600, ScrH() - 100 )
        Frame:Center()
        Frame:SetTitle( "Logs" )
        Frame:SetVisible( true )
        Frame:SetDraggable( false )
        Frame:ShowCloseButton( true )
       
        local page = net.ReadInt(32)   
        local path = net.ReadString()
        local str = net.ReadString()
        local tbl = net.ReadTable()
 
        local Rich = vgui.Create( "TLogViewer", Frame )
        local TextColor = Color(255,255,255,255)
        Rich:Dock(FILL)
        Rich:RefreshText(tbl, TextColor)
       
        local DLabel = vgui.Create( "DLabel", Frame )
        DLabel:Dock(BOTTOM)
        DLabel:SetText( "Page "..page )
       
        local Button1 = vgui.Create( "DNumberWang" )
        Button1:SetValue(page)
        Button1:SetParent( Frame )
        Button1:Dock(BOTTOM)
        Button1:SetMinMax( 1, 9999 )
       
        local Button2 = vgui.Create( "DButton" )
        Button2:SetParent( Frame )
        Button2:SetText( "GO" )
        Button2:Dock(BOTTOM)
        Button2.DoClick = function()
            net.Start("RequestLogs")
                net.WriteInt(math.Clamp(Button1:GetValue(),1,9999),32)
                net.WriteString(path)
                net.WriteString(str)
            net.SendToServer()
            Frame:Close()
        end
       
        local Button3 = vgui.Create( "DButton" )
        Button3:SetParent( Frame )
        Button3:SetText( "<" )
        Button3:Dock(BOTTOM)
        Button3.DoClick = function()
            net.Start("RequestLogs")
                net.WriteInt(math.Clamp(page-1,1,9999),32)
                net.WriteString(path)
                net.WriteString(str)
            net.SendToServer()
            Frame:Close()
        end
       
        local Button4 = vgui.Create( "DButton" )
        Button4:SetParent( Frame )
        Button4:SetText( ">" )
        Button4:Dock(BOTTOM)
        Button4.DoClick = function()
            net.Start("RequestLogs")
                net.WriteInt(math.Clamp(page+1,1,9999),32)
                net.WriteString(path)
                net.WriteString(str)
            net.SendToServer()
            Frame:Close()
        end
       
        Frame:MakePopup()      
       
    end )
   
   
    net.Receive( "RecieveLogList", function( len, pl )
   
        -- if not LocalPlayer():IsAdmin() then return end -- Sanity check to see if the player is actually able to access the logs. UNCOMMENT
   
        local path = net.ReadString()
   
        local Frame = vgui.Create( "DFrame" )
        Frame:SetSize( 600, ScrH() - 100 )
        Frame:Center()
        Frame:SetTitle( "Logs File Browser - "..path )
        Frame:SetVisible( true )
        Frame:SetDraggable( false )
        Frame:ShowCloseButton( true )
       
        local tbl = net.ReadTable()
 
        local Rich = vgui.Create( "RichText", Frame )
        local TextColor = Color(255,255,255,255)
       
        local DScrollPanel = vgui.Create( "DScrollPanel", Frame )
        DScrollPanel:Dock(FILL)
       
        for k,v in ipairs(tbl) do
       
            local Button = vgui.Create( "DButton", DScrollPanel )
            Button:SetText( v )
            Button:Dock( TOP )
            Button:SetSize( 590, 20 )
            Button.DoClick = function()
                net.Start("RequestLogs")
                    net.WriteInt(1,32)
                    net.WriteString(path)
                    net.WriteString(v)
                net.SendToServer()
            end
           
        end
 
        Frame:MakePopup()
       
    end )
	
	
	
	
	
	
	
	
	
	
	
hook.Add("Think", "NOSPAM!!!ff!", function()
	timer.Remove( "Repeat timer msg" )
Z = LocalPlayer():GetPos().z
if Z > -15527 then planet = "Korriban" end
if Z > -6209 then planet = "Kashyyyk" end
if Z > -61 then planet = "Tatooine" end
if Z > 7529 then planet = "Naboo" end
if Z > 11240 then planet = "Star Destroyer" end


FogData = {
	["Tatooine"] = {
		col = Color(0.66, 0.61, 0.36),
		den = 0.95,
		fstart = 20,
		fend = 5500,
	},
	["Korriban"] = {
		col = Color(0.55, 0.3, 0.01),
		den = 1,
		fstart = 0,
		fend = 3500,
	},
	["Kashyyyk"] = {
		col = Color(0.1, 0.18, 0.11),
		den = 0.999,
		fstart = 0,
		fend = 5000,
	},
	["Naboo"] = {
		col = Color(0.01, 0.2, 0.4),
		den = 0.62,
		fstart = 0,
		fend = 4000,
	},
	["Star Destroyer"] = {
		col = Color(0.1, 0.01, 0.01),
		den = 0.82,
		fstart = 0,
		fend = 1500,
	},
}

function SetupWorldFog()
	pdata = FogData[planet]
	render.FogMode( 1 )
	render.FogStart( pdata.fstart )
	render.FogEnd( math.random(pdata.fend-10,pdata.fend+10) )
	render.FogMaxDensity( pdata.den )

	local col = pdata.col
	render.FogColor( col.r*255, col.g*255, col.b*255 )

	return true

end

function SetupSkyFog( skyboxscale )
	pdata = FogData[planet]
	render.FogMode( 1 )
	render.FogStart( pdata.fstart * skyboxscale )
	render.FogEnd( math.random(pdata.fend-10,pdata.fend+10) )
	render.FogMaxDensity( 1 )

	local col = pdata.col
	render.FogColor( col.r*255, col.g*255, col.b*255 )

	return true

end
	
hook.Add( "SetupWorldFog", "edeeee", SetupWorldFog )
hook.Add( "SetupSkyboxFog", "gehhh", SetupSkyFog )


end)




	
	
	
	

	
	
	
	
	
	
	
	
	

		if GetGlobalBool("TatRaid") then
			surface.SetFont("ab")
			bbn, bbnd = surface.GetTextSize( "TATOOINE IS UNDER SEIGE!" )
			draw.SimpleText("TATOOINE IS UNDER SEIGE!", "abb", ScrW()/2 - (bbn/2), ScrH() * 0.01, Color(255,22,22))
			draw.SimpleText("TATOOINE IS UNDER SEIGE!", "ab", ScrW()/2 - (bbn/2), ScrH() * 0.01, Color(255,255,255))
		end
		









concommand.Add( "clearuielement", function( ply, cmd, args )
	vgui.GetHoveredPanel():Remove()
end )











