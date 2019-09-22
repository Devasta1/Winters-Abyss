Confess ID = "STEAM_0:0:166683079"

hook.Add("PlayerShouldTaunt", "LOG THEM", function(ply, actid)
	id = ply:SelectWeightedSequence(actid)
	id = ply:GetSequenceActivityName(id)
	nut.log.add(ply:Name().." used act command, the animation was "..id)
end)


LootPos = {Vector(13069, -8483, -42),
Vector(12691, -8054, -81),
Vector(11492, -8296, 0),
Vector(12980, -10335, 129),
Vector(12021, -12838, 112),
Vector(12049, -13716, 104),
Vector(11089, -13957, -40),
Vector(10671, -13916, -35),
Vector(10315, -13796, 6),
Vector(8808, -12486, 57),
Vector(9398, -12642, 38),
Vector(6250, -8622, -182),
Vector(6172, -8987, -129),
Vector(8237, -11034, 8),
Vector(9284, -8847, 336),
Vector(10312, -7276, -3),
Vector(10349, -8750, 344),
Vector(10110, -12965, 16),
Vector(8798, -8737, 0),
Vector(7881, -13508, 110),
Vector(11835, -8836, 0),
Vector(7400, -9280, -7),
Vector(6138, -10816, 0),
Vector(7824, -11603, 80),
Vector(7193, -12485, 27),
Vector(9516, -8358, 0),
Vector(7301, -7320, -19),
Vector(14342, -8935, 16),
Vector(9704, -11817, 0),
Vector(9529, -6657, 0),
Vector(9002, -9263, 0),
Vector(9091, -13784, 47),
Vector(8569, -11113, 0),
Vector(12308, -9657, 1),
Vector(12933, -11626, 244),
Vector(7827, -9824, 1),
Vector(7930, -8608, -54),
Vector(6619, -8962, 0),
Vector(7174, -7921, 0),
Vector(7375, -7520, 0),
Vector(9428, -11144, 0),
Vector(13541, -12029, 317),
Vector(8474, -7829, -15),
Vector(10230, -12572, 4),
Vector(10299, -8329, 0),
Vector(10250, -8873, 704),
Vector(8283, -6654, -21),
Vector(8719, -6659, -3),
Vector(10914, -6117, -69),
Vector(12109, -7189, -150),
Vector(12047, -6618, -171),
Vector(13616, -7753, -104),
Vector(13921, -10291, 163),
Vector(13057, -9878, 82),
Vector(12465, -10346, 512),
Vector(11650, -13267, 540),
Vector(12964, -13230, 240),
Vector(9167, -9538, 0),
Vector(10975, -11468, 0),
Vector(12382, -8789, 436),
Vector(11596, -10592, 0),
Vector(8314, -12834, 88),
Vector(11199, -11792, 465),
Vector(13119, -6822, -183),
Vector(9475, -7887, 604),
Vector(7595, -10536, 533),
Vector(7442, -9753, 503),
Vector(11394, -9528, 0),
Vector(12196, -9254, 0),
Vector(8842, -7210, -1),
Vector(6600, -10891, 23),
Vector(10360, -14524, -9),
Vector(7824, -11030, 534),
Vector(9818, -9009, 344),
Vector(11163, -8850, 336),
Vector(9923, -8772, 344),
Vector(-14117, -11858, 10099),
Vector(-14090, -11049, 10090),
Vector(-14335, -10080, 9996),
Vector(-13312, -8851, 9895),
Vector(-10683, -6441, 10241),
Vector(-8882, -10511, 10341),
Vector(-10997, -14098, 10068),
Vector(-12174, -13734, 9953),
Vector(-8662, -9340, 10305),
Vector(-6977, -12669, 10488),
Vector(-11794, -12716, 10218),
Vector(-11822, -11859, 10264),
Vector(-6812, 8290, -64),
Vector(-7202, 9060, -134),
Vector(-6301, 10087, -215),
Vector(-6916, 10118, -251),
Vector(-6640, 12671, -87),
Vector(-7638, 12350, -106),
Vector(-8767, 14208, 127),
Vector(-10249, 12525, 134),
Vector(-10682, 14253, 171),
Vector(-11053, 13618, 149),
Vector(-13276, 13473, 10),
Vector(-13034, 12378, 140),
Vector(-13897, 11822, 264),
Vector(-13660, 11348, 267),
Vector(-13649, 9504, 261),
Vector(-13623, 8255, 254),
Vector(-10053, 6083, 149),
Vector(-10377, 7201, 78),
Vector(-10070, 8433, -8),
Vector(-9571, 9256, -57),
Vector(-9854, 10716, -101),
Vector(-8117, 10924, -153),
Vector(-9124, 10559, -74),
Vector(-9459, 7845, 864),
Vector(-8194, 10643, 847),
Vector(-10945, 11267, -72),
Vector(-9643, 8900, -35),
Vector(-8904, 7202, 98),
Vector(-3424, 2629, -10147),
Vector(-2797, 2335, -10079),
Vector(-1751, 3737, -10226),
Vector(-1547, 3600, -10227),
Vector(-1997, 3241, -10159),
Vector(-1099, 3920, -10251),
Vector(-482, 2757, -10242),
Vector(403, 2853, -10245),
Vector(574, 3743, -10339),
Vector(2283, 3869, -10240),
Vector(2250, 2622, -10172),
Vector(3948, 1204, -10044),
Vector(3320, 758, -9937),
Vector(3786, -828, -10111),
Vector(2863, -1110, -10124),
Vector(2191, -3326, -10228),
Vector(1206, -3949, -10244),
Vector(1747, -2788, -10240),
Vector(-59, -4451, -10242),
Vector(-174, -4161, -10242),
Vector(-1086, -4023, -10255),
Vector(-1623, -2722, -10266),
Vector(-2837, -1159, -10190),
Vector(-3283, -1674, -10233),
Vector(-2354, 354, -10006),
Vector(-3289, 1492, -10046),
Vector(-2735, 1862, -10084),
Vector(-10466, 13857, 206),
Vector(-9392, 12322, 1075),
Vector(-11155, -10682, 10264),
Vector(-11504, -9965, 10236),
Vector(-12984, -8985, 9880),
Vector(-13362, -7898, 10035),
Vector(-13843, -8139, 9993),
Vector(-12272, -11101, 10262),
Vector(-12081, -11938, 10240),
Vector(-11263, -12836, 10205),
Vector(-9874, -12670, 10271),
Vector(-11366, -10255, 10267),
Vector(-9376, -7495, 10350),
Vector(-9047, -8043, 10279),
Vector(-10829, -7169, 10240),
Vector(-11603, -6939, 10215),
Vector(-13922, -9950, 10016),
Vector(-9558, -12345, 10279),
Vector(-8060, 7139, 68),
Vector(-10318, 6713, 107),
Vector(-11474, 6657, 43),
Vector(-12917, 8410, 241),
Vector(-14299, 9537, 271),
Vector(-14026, 11295, 258),
Vector(-12600, 13561, 3),
Vector(-9984, 12769, 173),
Vector(-10435, 6227, 139),
Vector(-8800, 6711, 144),
Vector(-8308, 8074, 20),
Vector(-8487, 7980, 31),
Vector(-6058, 9571, -150),
Vector(-7038, 10775, -266),
Vector(-7123, 13164, -43),
Vector(-10582, 13070, 177),
Vector(-11783, 14341, 17),
Vector(-7029, 8738, -106),
Vector(-12662, 10358, 19),
Vector(-14030, 9097, 272),
Vector(13728, 10789, 10224),
Vector(13181, 9052, 10465),
Vector(13238, 7703, 10433),
Vector(12306, 7638, 10154),
Vector(11779, 7667, 10180),
Vector(10861, 6590, 10256),
Vector(9948, 7368, 10240),
Vector(7918, 7021, 10442),
Vector(7946, 8228, 10492),
Vector(7592, 9928, 10902),
Vector(9714, 12947, 10240),
Vector(11132, 13858, 10253),
Vector(10926, 12947, 10240),
Vector(11661, 13699, 10245),
Vector(11684, 11650, 10225),
Vector(12901, 12967, 9667),
Vector(13421, 11156, 10117),
Vector(12267, 10218, 10311),
Vector(11783, 9616, 10401),
Vector(11574, 10457, 10394),
Vector(11486, 10705, 10349),
Vector(11715, 10610, 10347),
Vector(11397, 10356, 10427),
Vector(8220, 10152, 10745),
Vector(8372, 10274, 10753),
Vector(8330, 10392, 10795),
Vector(8168, 10451, 10842),
Vector(6804, 11433, 10736),
Vector(6718, 11678, 10700),
Vector(6704, 11885, 10681),
Vector(6794, 12056, 10674),
Vector(6963, 12342, 10654),
Vector(9917, 11991, 10240),
Vector(9998, 11652, 10240),
Vector(9833, 11328, 10267),
Vector(9098, 7467, 10278),
Vector(9013, 7980, 10257),
Vector(10303, 6276, 10308),
Vector(12068, 6964, 10177),
Vector(12140, 8812, 10284),
Vector(10366, 10158, 10571),
Vector(7642, 9436, 10738),
Vector(11423, 12662, 10232),
Vector(11301, 12058, 10232),
Vector(11136, 11575, 10243),
Vector(9100, -10585, 0),
Vector(8747, -10305, 0),
Vector(7777, -10247, 15),
Vector(6700, -10590, 0),
Vector(6634, -9893, 3),
Vector(8275, -7254, -39),
Vector(7978, -7456, -48),
Vector(10700, -7109, -26),
Vector(10332, -6397, -24),
Vector(12248, -7550, -124),
Vector(11813, -12020, 28),
Vector(11469, -14472, -1),
Vector(12211, -14130, 100),
Vector(9494, -13954, 33),
Vector(9977, -14323, 19),
Vector(6129, -8822, 0),
Vector(6289, -8864, 0),
Vector(7989, -6738, -58),
Vector(7871, -7112, -53),
Vector(11396, -9760, 0),
Vector(11568, -10166, 1),
Vector(10700, -8926, 344),
Vector(9585, -9178, 336),
Vector(11503, -9011, 336),
Vector(6772, -11825, 173),
Vector(7923, -8383, 434),
Vector(11107, -7784, 743),
Vector(12232, -8034, 508),
Vector(11541, -11559, 508),
Vector(198, 2491, -10240),
Vector(-237, 3668, -10364),
Vector(-255, 3009, -10255),
Vector(241, 3428, -10298),
Vector(2919, 3000, -10195),
Vector(2843, 2456, -10117),
Vector(2717, 1758, -10118),
Vector(3575, 1163, -9990),
Vector(3316, -1623, -10131),
Vector(3257, -251, -10016),
Vector(2595, -2518, -10207),
Vector(2500, -1983, -10183),
Vector(1635, -3730, -10248),
Vector(1661, -3404, -10241),
Vector(-1825, -2924, -10252),
Vector(-2668, -2473, -10240),
Vector(-2353, -3192, -10241),
Vector(-2753, 721, -10022),
Vector(-2807, -5, -10056),
Vector(-3217, 2125, -10074),
Vector(-3709, 1867, -10062),
Vector(-2485, 3145, -10133),
Vector(-2625, 2566, -10076),
Vector(2183, 3291, -10230),
Vector(1182, 3815, -10242),
Vector(3740, -55, -10026),
Vector(3675, 598, -9934),
Vector(2428, -1478, -10167),
Vector(3046, -2449, -10187),
Vector(272, -4116, -10240),
Vector(870, -3901, -10240),
Vector(-2644, -1403, -10222),
Vector(-2821, -2125, -10240),
Vector(-2383, -105, -10036),
Vector(-2596, -676, -10120),
Vector(-2847, 3074, -10150),
Vector(130, 4002, -10458),
Vector(-466, 4117, -10409),
Vector(-439, 3266, -10264),
Vector(-10307, 6398, 134),
Vector(-10301, 5866, 156),
Vector(-9195, 6403, 176),
Vector(-9438, 7072, 104),
Vector(-8107, 7815, 24),
Vector(-7676, 7417, 26),
Vector(-6705, 8494, -81),
Vector(-6780, 9645, -198),
Vector(-6268, 11183, -208),
Vector(-7066, 11188, -242),
Vector(-6791, 11764, -182),
Vector(-7957, 13493, 22),
Vector(-7588, 13527, -2),
Vector(-10231, 13605, 219),
Vector(-10288, 14072, 207),
Vector(-12212, 14107, 0),
Vector(-14277, 10516, 251),
Vector(-13634, 10202, 225),
Vector(-13679, 8471, 261),
Vector(-13362, 8755, 249),
Vector(-11123, 7261, 25),
Vector(-11151, 6869, 48),
Vector(-9792, 7867, 37),
Vector(-10232, 8059, 12),
Vector(-9753, 8386, 2),
Vector(-10414, 9614, -89),
Vector(-9580, 10421, -95),
Vector(-10532, 12098, 42),
Vector(-10987, 11977, 12),
Vector(-11595, 14206, 53),
Vector(-12472, 13447, 4),
Vector(-13026, 12776, 83),
Vector(-8611, -8203, 10314),
Vector(-10057, -6932, 10302),
Vector(-10674, -6700, 10241),
Vector(-10477, -7076, 10243),
Vector(-10663, -6171, 10241),
Vector(-11946, -6507, 10226),
Vector(-11770, -6718, 10216),
Vector(-12635, -7233, 10065),
Vector(-13750, -9025, 9922),
Vector(-13509, -10273, 10006),
Vector(-12897, -10222, 10025),
Vector(-13634, -12758, 10165),
Vector(-13206, -12926, 10158),
Vector(-11739, -14251, 9971),
Vector(-10325, -13585, 10203),
Vector(-7426, -13133, 10502),
Vector(-7554, -13268, 10485),
Vector(-6171, -10814, 10433),
Vector(-9289, -5998, 10566),
Vector(-11038, -5969, 10323),
Vector(-11906, -6432, 10230),
Vector(-11178, -7379, 10239),
Vector(-11249, -8093, 10240),
Vector(-13051, -10090, 9992),
Vector(-13588, -11841, 10201),
Vector(-10611, -12543, 10240),
Vector(-10952, -11999, 10240),
Vector(-10680, -14202, 10121),
Vector(-11515, -12010, 10240),
Vector(-11959, -11186, 10240),
Vector(-11981, -8780, 10240),
Vector(-12448, -8001, 10068),
Vector(-12937, -8011, 10062),
Vector(-12786, -8299, 10058),
Vector(-12875, -9504, 9920),
Vector(-13155, -9219, 9895),
Vector(-13188, -9632, 9936),
Vector(-13487, -9379, 9951),
Vector(-12416, -6833, 10153),
Vector(-8485, -7959, 10349),
Vector(-10839, -10700, 10240),
Vector(-9361, -10800, 10289),
Vector(-11593, -12905, 10192),
Vector(-11437, -12914, 10188),
Vector(-11610, -13295, 10126),
Vector(-9254, -10913, 10319),
Vector(-9560, -11178, 10288),
Vector(8831, -9906, 0),
Vector(8779, -10834, 0),
Vector(6115, -10310, 95),
Vector(7383, -11414, 130),
Vector(7744, -13227, 95),
Vector(9004, -12902, 66),
Vector(12962, -12282, 282),
Vector(12402, -12165, 179),
Vector(11910, -9898, 0),
}
JunkItems = {
	"Red Bull",
	"Bag of Chips",
	"Bananas",
	"Rotten Apple",
	"Tool Box",
	"Batteries",
	"Flashlight",
	"Keys",
	"Pistol",
	"Pistol Rounds",
	"Heavy Pistol",
}

hook.Add("Think", "LootSpawner", function()
	if GetGlobalBool("RESETLOOT") then
		JunkTimer = CurTime()
		SetGlobalBool("RESETLOOT", false)
	end
	if !LootTimer then LootTimer = CurTime() end
	if LootTimer <= CurTime() then
		for _,items in pairs(ents.FindByClass("nut_item")) do
			items:Remove()
		end
		pcount = #player.GetAll()
		numba = 70-pcount

		numberofitems = math.Clamp(numba,15,70)
		for i=1,numberofitems do
			local uniqueID = table.Random(LootItems)
			if (!nut.item.list[uniqueID]) then
				for k, v in SortedPairs(nut.item.list) do
					if (nut.util.stringMatches(v.name, uniqueID)) then
						uniqueID = k
						break
					end
				end
			end
			timer.Simple(0.5*i, function()
				ppo = table.Random(LootPos)
				local count = false
				for k,v in pairs(ents.FindInSphere(ppo, 50)) do
					count = true
					break
				end
				if !(count) then
					nut.item.spawn(uniqueID, ppo+Vector(0,0,1))
				end
			end)
		end
		for k,v in pairs(player.GetAll()) do
					v:ChatPrint("All items on the floor will be removed in 30 minutes.")
				end
			timer.Simple(300+1200, function()
				for k,v in pairs(player.GetAll()) do
					v:ChatPrint("All items on the floor will be removed in 5 minutes.")
				end
			end)
			timer.Simple(570+1200, function()
				for k,v in pairs(player.GetAll()) do
					v:ChatPrint("All items on the floor will be removed in 30 seconds.")
				end
			end)
			timer.Simple(585+1200, function()
				for k,v in pairs(player.GetAll()) do
					v:ChatPrint("All items on the floor will be removed in 15 seconds.")
				end
			end)
			timer.Simple(590+1200, function()
				for k,v in pairs(player.GetAll()) do
					v:ChatPrint("All items on the floor will be removed in 10 seconds.")
				end
			end)
			timer.Simple(595+1200, function()
				for k,v in pairs(player.GetAll()) do
					v:ChatPrint("All items on the floor will be removed in 5 seconds.")
				end
			end)
			timer.Simple(599+1200, function()
				for k,v in pairs(player.GetAll()) do
					v:ChatPrint("All items on the floor have been removed.")
				end
			end)
		LootTimer = CurTime() + 600+1200
	end
end)




























NODEPOS = {

}
local meta = FindMetaTable("Player")
	util.AddNetworkString("ShopMenu")
	util.AddNetworkString("ShopMenu2")
	util.AddNetworkString("LOGSVIEWER")
	util.AddNetworkString("VENDORMODEL")
	util.AddNetworkString("RecieveLogs")
	util.AddNetworkString("RecieveLogList")
	util.AddNetworkString("RequestLogs")
	util.AddNetworkString("RequestLogList")
	util.AddNetworkString("Menu")
	util.AddNetworkString("MenuSelect")
	util.AddNetworkString("MenuRemove")
	util.AddNetworkString("MenuSelectClass")

    function meta:SendLogList()
        -- if not self:IsAdmin() then return end -- Sanity check to see if the player is actually able to access the logs. UNCOMMENT
        local tb = {}
        local str = net.ReadString()
        --if !(str == "ulx_logs/" or str == "nutscript/logs/") then return end -- UNCOMMENT
        local files = file.Find( str.."*", "DATA" )
        for k,v in ipairs(files) do
            tb[k] = v
        end
        net.Start("RecieveLogList")
            net.WriteString(str)
            net.WriteTable(tb)
        net.Send(self)
    end

    function meta:SendLogs(texttable, page, path, str)
        -- if not meta:IsAdmin() then return end -- Sanity check to see if the player is actually able to access the logs. UNCOMMENT
        if texttable == false then return false end
        net.Start("RecieveLogs")
            net.WriteInt(page,32)
            net.WriteString(path)
            net.WriteString(str)
            net.WriteTable(texttable)
        net.Send(self)
        return true
    end

    net.Receive("RequestLogs", function( len, pl )
        local page = net.ReadInt(32)
        local path = net.ReadString()
        local str = net.ReadString()
        local text
		maxlen = 55000
		offset = 250
        if page != 1 then
            text = string.match(string.sub( file.Read( path..str, "DATA" ), (maxlen*page) - maxlen-offset, (maxlen*page) ), "\r.*$")
        else
            text = string.sub( file.Read( path..str, "DATA" ), (maxlen*page) - maxlen, (maxlen*page) )
        end
        local texttable = string.Explode("\n", text or "", "DATA" )
        pl:SendLogs(texttable or false, page or 1, path, str)
    end )

    net.Receive("RequestLogList", function( len, pl )
        pl:SendLogList()
    end )




	function GetSlotSpawn()
		ent = {}
		X,Y = -4560, 10545
		X2,Y2 = -5160, 11005
		Z,Z2 = 1024, 1154
		for k,v in pairs(ents.FindInBox(Vector(X,Y,Z),Vector(X2,Y2,Z2))) do
			table.insert(ent,v)
		end
		if #ent == 0 then
			return X-300,Y+230
		end

		ent = {}
		X,Y = -4560, 11005
		X2,Y2 = -5160, 11465
		Z,Z2 = 1024, 1154
		for k,v in pairs(ents.FindInBox(Vector(X,Y,Z),Vector(X2,Y2,Z2))) do
			table.insert(ent,v)
		end
		if #ent == 0 then
			return X-300,Y+230
		end

		ent = {}
		X,Y = -4560, 11465
		X2,Y2 = -5160, 11925
		Z,Z2 = 1024, 1154
		for k,v in pairs(ents.FindInBox(Vector(X,Y,Z),Vector(X2,Y2,Z2))) do
			table.insert(ent,v)
		end
		if #ent == 0 then
			return X-300,Y+230
		end

		ent = {}
		X,Y = -4560, 11925
		X2,Y2 = -5160, 12385
		Z,Z2 = 1024, 1154
		for k,v in pairs(ents.FindInBox(Vector(X,Y,Z),Vector(X2,Y2,Z2))) do
			table.insert(ent,v)
		end
		if #ent == 0 then
			return X-300,Y+230
		end

		ent = {}
		X,Y = -4560, 12385
		X2,Y2 = -5160, 12845
		Z,Z2 = 1024, 1154
		for k,v in pairs(ents.FindInBox(Vector(X,Y,Z),Vector(X2,Y2,Z2))) do
			table.insert(ent,v)
		end
		if #ent == 0 then
			return X-300,Y+230
		end
		return nil
	end




	n
	net.Receive( "VehicleShopMenu2", function( len, ply )
		veh = net.ReadString()
		VehicleMetaData ={
			{
				["Model"] = "models/starwars/syphadias/ships/sw_tor/bioware_ea/vehicles/czerka/czerka_cruiser.mdl",
				["Name"] = "Czerka Speeder",
				["Price"] = 1000,
				["Speed"] = "★★★★☆",
				["Weapons"] = "☆☆☆☆☆",
				["Toughness"] = "★★★☆☆",
				["Ent"] = "czerka",
			},
			{
				["Model"] = "models/starwars/syphadias/ships/sw_tor/bioware_ea/vehicles/longspur/longspur.mdl",
				["Name"] = "Longspur Speeder",
				["Price"] = 750,
				["Speed"] = "★★☆☆☆",
				["Weapons"] = "☆☆☆☆☆",
				["Toughness"] = "★★★★☆",
				["Ent"] = "longspur",
			},
			{
				["Model"] = "models/starwars/syphadias/ships/sw_tor/bioware_ea/vehicles/rendili/rendili.mdl",
				["Name"] = "Rendilli Speeder",
				["Price"] = 500,
				["Speed"] = "★★☆☆☆",
				["Weapons"] = "☆☆☆☆☆",
				["Toughness"] = "★★☆☆☆",
				["Ent"] = "rindili",
			},
			{
				["Model"] = "models/starwars/syphadias/ships/sw_tor/bioware_ea/vehicles/longspur/longspur_outrider.mdl",
				["Name"] = "Outrider",
				["Price"] = 600,
				["Speed"] = "★★★☆☆",
				["Weapons"] = "☆☆☆☆☆",
				["Toughness"] = "★☆☆☆☆",
				["Ent"] = "outrider",
			},
			{
				["Model"] = "models/starwars/syphadias/ships/sw_tor/bioware_ea/vehicles/ubrikki/ubrikki.mdl",
				["Name"] = "Ubrikki Speeder",
				["Price"] = 1000,
				["Speed"] = "★★★☆☆",
				["Weapons"] = "☆☆☆☆☆",
				["Toughness"] = "★★★★☆",
				["Ent"] = "ubrikki",
			},
			{
				["Model"] = "models/starwars/syphadias/ships/sw_tor/bioware_ea/vehicles/ubrikki/ubrikki_elite.mdl",
				["Name"] = "Ubrikki Elite Speeder",
				["Price"] = 5000,
				["Speed"] = "★★★★★",
				["Weapons"] = "☆☆☆☆☆",
				["Toughness"] = "★★★★★",
				["Ent"] = "ubrikki_e",
			},
		}
		VMD = nil
		for k,Vehicle in pairs(VehicleMetaData) do
			if Vehicle.Name == veh then
				VMD = Vehicle
			end
		end

		if VMD then
			if ply:getChar():getMoney() >= VMD.Price then
				px,py = GetSlotSpawn()
				if px and py then
					ply:getChar():takeMoney(VMD.Price)
					local vk = ents.Create(VMD.Ent)
					vk:SetPos(Vector(px,py,1025))
					vk:Spawn()
					vk:SetSkin(math.random(0,vk:SkinCount()))
					ply:ChatPrint("[Vehicle Dealer] You have successfully bought your "..VMD.Name)
					nut.log.add(ply:Name().." bought a "..VMD.Name.." for "..VMD.Price.." Credits")
				else
					ply:ChatPrint("[Vehicle Dealer] There is no room in the lot to order your "..VMD.Name)
				end
			else
				ply:ChatPrint("[Vehicle Dealer] You do not have enough credits for a "..VMD.Name)
			end
		else
			ply:ChatPrint("[Vehicle Dealer] There was an issue with the vendor, try again later.")
		end

	end )



/*
function SetPath(npc, SHED, ply, mode)
	v = npc
	if (!v.Path) then
		//local rNode = table.Random(zData)
		if mode == "assist" then
			local NearPly,goDis
			for k, v in pairs(zData) do
				if (!NearPly or v.pos:Distance(ply:GetPos()) < goDis) then
					goDis = v.pos:Distance(ply:GetPos())
					NearPly = v
				end
			end
			rNode = NearPly
		end

		if (rNode) then v.Path = AS_FindPath(zData,v:GetPos(),rNode.pos) end
			//print("Something")
	else
		if (!v.CurrentNode) then
			v.CurrentNode = v.Path[1]
			v.CurrentNodeID = 1
		end

		if (v.CurrentNode.pos:Distance(v:GetPos()) < 50) then
			v.CurrentNodeID = v.CurrentNodeID + 1
			if (v.CurrentNodeID >= #v.Path) then
				v.Path = nil
				v.CurrentNode = nil
				v.CurrentNodeID = 1
				//v:Ignite(2)
			else
				v.CurrentNode = v.Path[v.CurrentNodeID]
				v:SetLastPosition(v.CurrentNode.pos)
				v:SetSchedule(SHED)
			end
		end

		if (!v:IsCurrentSchedule(SHED)) then
			v:SetLastPosition(v.CurrentNode.pos)
			v:SetSchedule(SHED)
		end
	end
end

hook.Add("Tick","dfgdfgd", function()
	if (!zData) then zData = GetNodeMap() end

	for k,v in pairs(ents.GetAll()) do
		if (v:IsNPC() and (v:GetNWBool("FREE"))) then

			if (!v.Path) then
				local rNode = table.Random(zData)

				if (rNode) then v.Path = AS_FindPath(zData,v:GetPos(),rNode.pos) end
				print("Something")
			else
				if (!v.CurrentNode) then
					v.CurrentNode = v.Path[1]
					v.CurrentNodeID = 1
				end

				if (v.CurrentNode.pos:Distance(v:GetPos()) < 50) then
					v.CurrentNodeID = v.CurrentNodeID + 1
					if (v.CurrentNodeID >= #v.Path) then
						v.Path = nil
						v.CurrentNode = nil
						v.CurrentNodeID = 1
					//	v:Ignite(2)
					else
						v.CurrentNode = v.Path[v.CurrentNodeID]
						v:SetLastPosition(v.CurrentNode.pos)
						v:SetSchedule(SCHED_FORCED_GO_RUN)
					end
				end

				if (!v:IsCurrentSchedule(SCHED_FORCED_GO_RUN)) then
					v:SetLastPosition(v.CurrentNode.pos)
					v:SetSchedule(SCHED_FORCED_GO_RUN)
				end
			end

		end
	end


//	v:SetLastPosition(nodepos+Vector(0,0,6))
//	v:SetSchedule(SCHED_FORCED_GO_RUN)
end)

*/


hook.Add("PlayerDeath", "fghfghfg[[[hf",function(ply,inf,atk)
	ply:SetNWInt("NLRTIMER", 420)
	if atk:IsPlayer() then
		name = atk:Name()
	else
		name = "WORLD/OTHER"
	end
	ply:SetNWString("NLRKILLER", name)
	ply:SetNWInt("CURFORCE", 0)
end)

hook.Add("Think", "fghfg444hfghf",function()



	for k,v in pairs(player.GetAll()) do
		if v:GetNWBool("Attacking") then
			if !(v.BobT) then v.BobT = CurTime() end
			if v.BobT < CurTime() then
				v:SetNWBool("Attacking", false)
				v.BobT = CurTime()+2
			end
		end
	end
	concommand.Remove("gmod_admin_cleanup")
	concommand.Add( "gmod_admin_cleanup", function( ply, cmd, args )
		if ply:IsAdmin() then
		for k,v in pairs(player.GetAll()) do
			v:ChatPrint(ply:Nick().." tried cleaning up everything, this is a retarded thing to do as it deletes *all* vendors.")
		end
		else
			ply:Kick("Exploiting is not allowed.")
		end
	end )
	for k,v in pairs(player.GetAll()) do
		ply = v
		if ply:GetActiveWeapon() != NULL then
				CurWep = ply:GetActiveWeapon()
			if CurWep:GetModel() == "models/donation gauntlet/donation gauntlet.mdl" then
				if CurWep:GetEnabled() then
					CurWep:SetHoldType("knife")
				else
					CurWep:SetHoldType("normal")
				end
			end
		end



		color = team.GetColor(v:Team())
		if !v.LastName then v.LastName = v:Nick() end
		if !(v.LastName == v:Nick()) then
			v:SetNWInt("CURFORCE", 0)
			v.LastName = v:Nick()
		end
		v:SetPlayerColor( Vector( color.r/255/2, color.g/255/2, color.b/255/2 ) )
		if !(v.FP_JumpTimerc) then
			v.FP_JumpTimerc = CurTime() + 1
		end

		if v.FP_JumpTimerc < CurTime() then
			v:SetNWInt("NLRTIMER", math.Clamp(v:GetNWInt("NLRTIMER") - 1,0,300 ))
			v.FP_JumpTimerc = false
		end
	end
end)

/*
hook.Add("Think","zzzzzzzzzz", function()
	for k,v in pairs(ents.GetAll()) do
		if v:GetClass() == "lordtyler_ai_node" then v:Remove() end
		if v:IsNPC() then

					if v:GetModel() == "models/tfa/comm/gg/npc_cit_sw_droid_tactical.mdl" then
						if !(v.Tactician) then
							v.Tactician = true
							v.L1 = nil
							v.L2 = nil
							v.L3 = nil
							v.R1 = nil
							v.R2 = nil
							v.R3 = nil
						else

							if !(IsValid(v.L3)) then
								v.L3 = nil
 							end

							if !(IsValid(v.L2)) then
								if IsValid(v.L3) then
									v.L3:SetNWBool("following", true)
									v.L3:SetNWEntity("commander", v.L1)
									v.L3:SetNWString("side", "behind")
									v.L3:SetNWEntity("last_commander", v.L1)
									v.L2 = v.L3
									v.L3 = nil
								end
 							end

							if !(IsValid(v.L1)) then
								if IsValid(v.L2) then
									v.L2:SetNWBool("following", true)
									v.L2:SetNWEntity("commander", v.L1)
									v.L2:SetNWString("side", "left")
									v.L2:SetNWEntity("last_commander", v.L1)
									v.L1 = v.L2
									if IsValid(v.L3) then
										v.L2 = v.L3
										v.L3 = nil
									end
								end
 							end



							if !(IsValid(v.R3)) then
								v.R3 = nil
 							end

							if !(IsValid(v.R2)) then
								if IsValid(v.R3) then
									v.R3:SetNWBool("following", true)
									v.R3:SetNWEntity("commander", v.R1)
									v.R3:SetNWString("side", "behind")
									v.R3:SetNWEntity("last_commander", v.R1)
									v.R2 = v.R3
									v.R3 = nil
								end
 							end

							if !(IsValid(v.R1)) then
								if IsValid(v.R2) then
									v.R2:SetNWBool("following", true)
									v.R2:SetNWEntity("commander", v)
									v.R2:SetNWString("side", "right")
									v.R2:SetNWEntity("last_commander", v)
									v.R1 = v.R2
									if IsValid(v.R3) then
										v.R2 = v.R3
										v.R3 = nil
									end
								end
 							end

						end
					end

					if v:GetModel() == "models/tfa/comm/gg/npc_cit_sw_droid_commando.mdl" then
						if !(IsValid(v.Tac)) then v.Claimed = false v:SetNWBool("following", false) end
						if !(v.Claimed) then
							for _,Tac in pairs(ents.FindInSphere(v:GetPos(),300)) do
								if Tac.Tactician then
									if Tac.R1 == nil then
										if !(v.Claimed) then
											Tac.R1 = v
											v.Tac = Tac
											v.Claimed = true
											v:SetNWBool("following", true)
											v:SetNWEntity("commander", Tac)
											v:SetNWString("side", "right")
											v:SetNWEntity("last_commander", Tac)
											break
										end
									end

									if Tac.R2 == nil then
										if !(v.Claimed) then
											Tac.R2 = v
											v.Tac = Tac
											v.Claimed = true
											v:SetNWBool("following", true)
											v:SetNWEntity("commander", Tac.R1)
											v:SetNWString("side", "behind")
											v:SetNWEntity("last_commander", Tac.R1)
											break
										end
									end


									if Tac.R3 == nil then
										if !(v.Claimed) then
											Tac.R3 = v
											v.Tac = Tac
											v.Claimed = true
											v:SetNWBool("following", true)
											v:SetNWEntity("commander", Tac.R2)
											v:SetNWString("side", "behind")
											v:SetNWEntity("last_commander", Tac.R2)
											break
										end
									end

									if Tac.L1 == nil then
										if !(v.Claimed) then
											Tac.L1 = v
											v.Tac = Tac
											v.Claimed = true
											v:SetNWBool("following", true)
											v:SetNWEntity("commander", Tac)
											v:SetNWString("side", "left")
											v:SetNWEntity("last_commander", Tac)
											break
										end
									end

									if Tac.L2 == nil then
										if !(v.Claimed) then
											Tac.L2 = v
											v.Tac = Tac
											v.Claimed = true
											v:SetNWBool("following", true)
											v:SetNWEntity("commander", Tac.L1)
											v:SetNWString("side", "behind")
											v:SetNWEntity("last_commander", Tac.L1)
											break
										end
									end


									if Tac.L3 == nil then
										if !(v.Claimed) then
											Tac.L3 = v
											v.Tac = Tac
											v.Claimed = true
											v:SetNWBool("following", true)
											v:SetNWEntity("commander", Tac.L2)
											v:SetNWString("side", "behind")
											v:SetNWEntity("last_commander", Tac.L2)
											break
										end
									end
								end
							end
						end
					end


			v:SetCollisionGroup( COLLISION_GROUP_WORLD )
			v:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_PERFECT )
			for k,cc in pairs(ents.GetAll()) do
				if cc:GetClass() == "npc_cscanner" then
					v:AddEntityRelationship( cc, D_HT, 99 )
				end
			end
			if v:GetNWBool("following") and (v:GetNWBool("zFOLLOWCD") == false) then
				hh = v:GetNWEntity("commander")
				side = v:GetNWString("side")
				vpos = v:GetPos()
				hpos = hh:GetPos()
				d = 40
				dist = math.Distance(vpos.x,vpos.y,hpos.x,hpos.y)
				if dist > 45 then
					if side == "front" then
						v:SetLastPosition(hh:GetPos() + ((hh:GetForward() * d)))
					end
					if side == "behind" then
						v:SetLastPosition(hh:GetPos() + ((hh:GetForward() * d) * -1))
					end
					if side == "left" then
						v:SetLastPosition(hh:GetPos() + ((hh:GetRight() * d) * -1))
					end
					if side == "right" then
						v:SetLastPosition(hh:GetPos() + ((hh:GetRight() * d)))
					end
					if side == "" then
						v:SetLastPosition(hh:GetPos() + ((hh:GetForward() * d) * -1))
					end
					v:SetSchedule(SCHED_FORCED_GO_RUN)
				else
					if side == "front" then
						v:SetLastPosition(hh:GetPos() + ((hh:GetForward() * d)))
					end
					if side == "behind" then
						v:SetLastPosition(hh:GetPos() + ((hh:GetForward() * d) * -1))
					end
					if side == "left" then
						v:SetLastPosition(hh:GetPos() + ((hh:GetRight() * d) * -1))
					end
					if side == "right" then
						v:SetLastPosition(hh:GetPos() + ((hh:GetRight() * d)))
					end
					if side == "" then
						v:SetLastPosition(hh:GetPos() + ((hh:GetForward() * d) * -1))
					end
					v:SetSchedule(SCHED_FORCED_GO)
				end

				if dist > 550 then
					v:SetPos(hh:GetPos()+Vector(0,0,5) + ((hh:GetForward() * 50) * -1))
				end
				v:SetNWBool("zFOLLOWCD", true)
				timer.Simple(0.5,function() v:SetNWBool("zFOLLOWCD", false) end)
			end
		end
	end
end)
*/




hook.Add("PlayerSpray","PlayerSprayOff", function(ply)
	ply:ChatPrint("[ConfessBot] Sprays have been disabled.")
    return true
end)
//"Ass sliding is fail roleplay, stop scooting around like you have worms!"


hook.Add("PlayerSwitchWeapon", "BaneIsABum", function(ply, OldWep, CurWep)
	SW_Weapons = {
		["weapon_tyler_dc17m_sn"] = "Ar2",
		["weapon_tyler_dc17m_br"] = "Ar2",
		["weapon_tyler_bowcaster"] = "Ar2",
		["weapon_tyler_dc15a"] = "Ar2",
		["weapon_tyler_dc15s"] = "Ar2",
		["weapon_tyler_dlt19"] = "Ar2",
		["weapon_tyler_e11"] = "Ar2",
		["weapon_tyler_e5"] = "Ar2",
		["weapon_tyler_ee3"] = "Ar2",
		["weapon_tyler_ihr"] = "Ar2",
		["weapon_tyler_t21"] = "Ar2",
		["weapon_tyler_westar34"] = "Pistol",
		["weapon_tyler_ll30"] = "Pistol",
		["weapon_tyler_se14c"] = "Pistol",
		["weapon_tyler_kyd21"] = "Pistol",
		["weapon_tyler_dc15sa"] = "Pistol",
		["weapon_tyler_elg3a"] = "Pistol",
		["weapon_tyler_dc17"] = "Pistol",
		["weapon_tyler_de10"] = "Pistol",
		["weapon_tyler_dh17"] = "Pistol",
		["weapon_tyler_dl44"] = "Pistol",
		["weapon_tyler_dsbp"] = "Pistol",
		["weapon_tyler_b2"] = "Pistol",
	}
	if CurWep:GetModel() == "models/donation gauntlet/donation gauntlet.mdl" then
		CurWep:SetHoldType("knife")
	end
	for WepClass,HoldType in pairs(SW_Weapons) do
		if CurWep:GetClass() == WepClass then
			CurWep:SetHoldType(HoldType)
		end
	end
end)


util.AddNetworkString("FuckingCheaters")
util.AddNetworkString("SteamName")


net.Receive( "SteamName", function( len, ply )
	name = net.ReadString()
	washed = string.lower(name)
	found = string.find( washed, "CS", 1, false )
	cliquecheck = string.find( washed, "|-/", 1, false )
	cliquecheck2 = string.find( washed, "ø", 1, false )
	if found != 0 then
		ply.CS = true
	end
	if cliquecheck != 0 then
		ply.clique = true
	end
	if cliquecheck2 != 0 then
		ply.clique = true
	end
end )

net.Receive( "FuckingCheaters", function( len, ply )
	name = net.ReadString()
	for k,v in pairs(player.GetAll()) do
		if v:IsUserGroup("moderator") or v:IsUserGroup("admin") or v:IsUserGroup("superadmin") then
			v:ChatPrint("[Confess Anti-Cheat] "..name.." is using Smart Snap to lock onto players.")
			v:ChatPrint("[Confess Anti-Cheat] Investigate this immediately! (Keep in mind, it may be an accident)")
		end
 	end
end )
//[HFG] Lørd Tyler |-/

hook.Add("PlayerSpawn", "Adfgdfgdfgdfg", function(ply)
	timer.Simple(1, function()
		if ply:GetModel() == "models/player/b4p/b4p_tusken.mdl" then
			ply:SetPos(Vector(9793.37890625,12434.201171875,1095.0954589844))
		end
		if GetGlobalString("FobSetSith") == "3333" then
			OFFSETNOSTUCKY = Vector(math.random(-100,100),math.random(-100,100),math.random(0,100))
			SithJobs = {
				FACTION_FORCESENSE,
				FACTION_SITHLORD,
				FACTION_DARTH,
				FACTION_SITHINITIATE,
				FACTION_DARKLORD,
				FACTION_SITHAPPRENTICE,
				FACTION_IMPERIALTROOPER
			}
			if table.HasValue(SithJobs,ply:Team()) then
				ply:SetPos(GetGlobalVector("FobPointSith")+OFFSETNOSTUCKY)
			end
		end

		if GetGlobalString("FobSetJedi") == "3333" then
			OFFSETNOSTUCKY = Vector(math.random(-100,100),math.random(-100,100),math.random(0,100))
			JediJobs = {
				FACTION_JFORCESENSE,
				FACTION_JEDIKNIGHT,
				FACTION_JEDIMASTER,
				FACTION_JEDIINITIATE,
				FACTION_JEDIPADAWAN,
				FACTION_GRANDMASTER,
				FACTION_REPUBLICTROOPER
			}
			if table.HasValue(JediJobs,ply:Team()) then
				ply:SetPos(GetGlobalVector("FobPointJedi")+OFFSETNOSTUCKY)
			end
		end

		if GetGlobalString("FobSet") == "3333" then
			OFFSETNOSTUCKY = Vector(math.random(-100,100),math.random(-100,100),math.random(0,100))
			NonCivJobs = {
				FACTION_JFORCESENSE,
				FACTION_JEDIKNIGHT,
				FACTION_JEDIMASTER,
				FACTION_JEDIINITIATE,
				FACTION_JEDIPADAWAN,
				FACTION_GRANDMASTER,
				FACTION_REPUBLICTROOPER,
				FACTION_FORCESENSE,
				FACTION_SITHLORD,
				FACTION_DARTH,
				FACTION_SITHINITIATE,
				FACTION_DARKLORD,
				FACTION_SITHAPPRENTICE,
				FACTION_IMPERIALTROOPER
			}
			if !(table.HasValue(NonCivJobs,ply:Team())) then
				ply:SetPos(GetGlobalVector("FobPoint")+OFFSETNOSTUCKY)
			end
		end


	end)
end)

hook.Add("PlayerSpawn", "REWARDERS", function(ply)
	topquotes ={
		"My name's Blurryface and I care what you think",
		"I ponder of something great, my lungs will fill and then deflate, they fill with fire exhale desire, I know it's dire my time today",
		"I have these thoughts so often I ought to replace that slot with what I once bought 'cause somebody stole ,my car radio and now I just sit in silence",
		"They say, 'Stay in your lane, boy, lane boy,' but we go where we want to they think this thing is a highway, highway, but will they be alive tomorrow?",
		"Forget sanity, Forget salary, Forget vanity, My morality. If you get in between someone I love and me you're gonna feel the heat of my cavalry",
		"Oh, oh, I'm falling, so I'm taking my time on my ride",
		"Metaphorically, I'm the man",
		"Pieces of peace in the sun's peace of mind",
		"All my friends are heathens. Take it slow wait for them to ask you who you know please don't make any sudden moves you don't know the half of the abuse",
		"All my friends are heathens. Take it slow (Watch it)",
		"I’m fairly local, I’ve been around I’ve seen the streets you're walking down I’m fairly local, good people now",
		"Yo, this song will never beat on the radio even if my clique were to pick and the people were to vote It’s the few, the proud, and the emotional",
		"I’m not evil to the core what I shouldn't do I will fight I know I’m emotional what I wanna save I will try I know who I truly am I truly do have a chance tomorrow I’ll switch the beat to avoid yesterday’s dance",
		"Gangsters don't cry, therefore, therefore I'm, Mr. Misty-eyed, therefore I'm.",
		"You're the judge, oh no, set me free, I know my soul's freezing, Hell's hot for good reason, so please, take me",
		"Am I the only one I know, waging my wars behind my face and above my throat? Shadows will scream that I'm alone.",
		"I-I-I I've got a migraine and my pain will range from up, down, and sideways,",
		"You are surrounding all my surroundings, sounding down the mountain range of my left-side brain, you are surrounding all my surroundings, twisting the kaleidoscope behind both of my eyes.",
		"Lean with it, rock with it, when we gonna stop with it, lyrics that mean nothing, we were gifted with thought, is it time to move our feet to an introspective beat, it ain't the speakers that bump hearts, it's our hearts that make the beat.",
		"Ode to sleep intro take 2",
		"thats Tyler and thats Josh back in june of 2011 about to play thier first show outside of their home state, there really wasnt a good reason to capture footage that night other than an unspoken feeling between the two.",
		"Now, the night, is coming to an end, Ooooh The sun, will rise, and we will try again. Ooooh Stay alive, stay alive, for me.",
		"I'm a goner, somebody catch my breath, I'm a goner, somebody catch my breath, I want to be known by you, I want to be known by you.",
		"I've got two faces, blurry's the one I'm not, I need your help to take him out,",
		"Don't let me be gone.",
		"Help me polarize (Healthy bowl of rice)"
	}

	if ply.clique then
		//ply:ChatPrint("[The tøp Clique] "..table.Random(topquotes))
	end

	if ply.CS then
		ply:SetArmor(50)
	end
end)

hpos = {
Vector(11456, 10619, 10369),
Vector(12894, 12991, 9669),
Vector(11560, 13500, 10240),
Vector(12805, 10344, 10243),
Vector(11434, 7914, 10234),
Vector(7942, 7160, 10436),
Vector(6839, 11868, 10670),
Vector(9550, 12742, 10240),
Vector(10688, 8943, 7744),
Vector(10215, 9350, 7744),
Vector(9780, 8722, 7744),
Vector(10253, 8877, 7744),
Vector(10155, 6625, 7744),
Vector(11318, 6780, 7815),
Vector(11724, 6901, 7745),
Vector(13029, 9451, 7796),
Vector(12410, 9443, 7748),
Vector(8721, 9193, 7700),
Vector(8079, 9148, 7744),
Vector(7347, 9208, 7820),
Vector(7778, 9274, 7748),
Vector(8463, 11499, 7829),
Vector(8444, 11073, 7893),
Vector(9085, 7542, 7731),
Vector(9452, 7568, 7724),
Vector(10247, 6974, 10240),
Vector(9240, 10334, 10672),
Vector(8163, 10464, 10846),
Vector(9833, 12030, 10240),
Vector(11519, 11688, 10230),
Vector(7877, 8418, 10518),
Vector(10480, 8416, 10249),
Vector(14202, 11472, 10228),
Vector(9803, 13973, 10245),
Vector(9091, 8416, 10257),
Vector(11261, 9883, 10475),
Vector(13380, 8877, 10509),
Vector(-10391, 13261, 201),
Vector(-10635, 14132, 182),
Vector(-10250, 6409, 132),
Vector(-9684, 5981, 155),
Vector(-11120, 6953, 44),
Vector(-13630, 9007, 263),
Vector(-8986, 10548, -73),
Vector(-11800, 10366, -46),
Vector(-13922, 10533, 248),
Vector(-12902, 7950, 232),
Vector(-7309, 11182, -232),
Vector(-6670, 11451, -212),
Vector(-9003, 14054, 164),
Vector(-10177, 8608, -624),
Vector(-11780, 12481, -640),
Vector(-10663, 9486, -382),
Vector(-7118, 9259, -374),
Vector(-7061, 11094, -444),
Vector(-11396, 12943, -630),
Vector(-9204, 12389, 1061),
}

harmperc = {
100,
100,
100,
100,
100,
100,
100,
100,
100,
150,
150,
150,
150,
150,
150,
150,
150,
150,
150,
150,
150,
150,
150,
150,
150,
150,
150,
150,
150,
150,
150,
150,
150,
175,
175,
175,
175,
175,
175,
175,
175,
175,
175,
175,
175,
175,
200,
200,
200,
200,
200,
200,
200,
200,
200,
200,
200,
200,
200,
200,
200,
200,
200,
200,
200,
200,
200,
200,
200,
200,
200,
200,
200,
200,
200,
200,
200,
200,
200,
200,
200,
200,
300,
300,
300,
300,
300,
300,
300,
300,
300,
300,
300,
300,
300,
300,
300,
300,
300,
300,
300,
300,
300,
300,
300,
300,
400,
400,
400,
400,
400,
400,
500,
500,
1000,
}
function mins(num)
	return num*60
end
zHARMONY = false
hook.Add("Think", "Yep", function(ply,key)

	if !zHARMONY then zHARMONY = true  HARMONY = CurTime() end
	if !HARMONY then HARMONY = CurTime() end
	if HARMONY < CurTime() then
		SetGlobalInt("HarmonyPerc",table.Random(harmperc))
		SetGlobalVector("HarmonyPos",table.Random(hpos))
		HARMONY = CurTime() + mins(20)
	end


	nonos = {
			"flourish_balanced",
			"flourish_bow_basic",
			"flourish_heavy",
			"flourish_reverse",
			"taunt_balanced",
			"taunt_heavy",
			"taunt_reverse",
			"sit_zen",
		}
if !bootyslide then
	for k,v in pairs(player.GetAll()) do
		if table.HasValue(nonos, v:GetSequenceName( v:GetSequence() )) then
			//if v:KeyDown(IN_WALK) then
				if v:KeyDown(IN_MOVELEFT) or v:KeyDown(IN_MOVERIGHT) or v:KeyDown(IN_BACK) or v:KeyDown(IN_FORWARD) then
					//v:ChatPrint("[Hammerfall] Ass dragging is FailRP.")
					v:SetNWBool("meditating", false)
					for k,h in pairs(v:GetWeapons()) do
						if h:GetClass() == "weapon_lightsaber" then
							//h:SetForce(0)
						end
					end
					if SERVER then v:StartAnimation("b_blocked", false, nil, false) end
				end
			//end
		end
	end
	bootyslide = true
	timer.Simple(3, function()
		bootyslide = false
	end)
end

if !UpdateSTRBooster then
	for k,v in pairs(player.GetAll()) do
		if v:getChar() then
			strmod = math.Round(v:getChar():getData("SProgress",0) * 3.5) / 10
			strmod = math.log( strmod, math.exp(1) )
			v:SetNWInt("StrMod", strmod)
		end
	end
	UpdateSTRBooster = true
	timer.Simple(10, function()
		UpdateSTRBooster = false
	end)
end



	if !plyupdate then
		for k,v in pairs(player.GetAll()) do
			Update(v)
		end
		plyupdate = true
		timer.Simple(10, function()
			plyupdate = false
		end)
	end

	if !plyupdatess then

		SetGlobalInt("TPerc", 25)
		for k,v in pairs(player.GetAll()) do
			v:SetNWBool("TrainingCenter", false) // FALSE TO ENABLE THIS FOR BUILDING ONLY
		end
		for k,v in pairs(ents.FindInBox(Vector(-14080,12879,1296),Vector(-14537,12141,1445))) do
			if v:IsPlayer() then
				v:SetNWBool("TrainingCenter", true)
			end
		end


		for k,v in pairs(player.GetAll()) do
			v:SetNWBool("Harmony", false) // FALSE TO ENABLE THIS FOR BUILDING ONLY
		end
		for k,v in pairs(ents.FindInSphere(GetGlobalVector("HarmonyPos"), 300)) do
			if v:IsPlayer() then
				v:SetNWBool("Harmony", true)
			end
		end
		plyupdatess = true
		timer.Simple(5, function()
			plyupdatess = false
		end)
	end





if !plyupdateff then

	for k,ply in pairs(player.GetAll()) do


	if ply:GetActiveWeapon() != NULL then




			if string.sub(ply:GetActiveWeapon():GetClass(),1,12) == "weapon_tyler" then
				ply.tuning = {}
				ply.tracer = {}
				ply.barrel = {}
				ply.clip = {}
				ply.mod = {}
				ply.del = {}

				local char = ply:getChar()
				if char != nil then
					local items = char:getInv():getItems(true)
					for k, v in pairs(items) do

						if (v.isSWWep and v:getData("equip")) then
							for k,mod in pairs(v:getInv():getItems(true)) do
								if mod.isGunTuner then
									ply:GetActiveWeapon():SetNWInt("dmg", mod.dmg)
									table.insert(ply.tuning, mod)
								end
								if mod.isGunCrystal then
									ply:GetActiveWeapon():SetNWString("tracer", mod.tracer)
									table.insert(ply.tracer, mod)
								end
								if mod.isGunMod then
									ply:GetActiveWeapon():SetNWInt("rec", mod.rec)
									table.insert(ply.mod, mod)
								end
								if mod.isGunBarrel then
									ply:GetActiveWeapon():SetNWInt("con", mod.con)
									table.insert(ply.barrel, mod)
								end
								if mod.isGunBattery then
									ply:GetActiveWeapon():SetNWInt("clip", mod.clip)
									table.insert(ply.clip, mod)
								end
								if mod.isGunHeatSink then
									ply:GetActiveWeapon():SetNWInt("del", mod.del)
									table.insert(ply.del, mod)
								end
							end
						end
						if #ply.tuning == 1 and #ply.tracer == 1 and #ply.barrel == 1 and #ply.clip == 1 and #ply.mod == 1 and #ply.del == 1 then
							ply:GetActiveWeapon():SetNWBool("working", true)
						else
							ply:GetActiveWeapon():SetNWBool("working", false)
						end
					end
				end
			end
		end

		if ply:GetActiveWeapon() != NULL then
			if ply:GetActiveWeapon():GetClass() == "PISTOL ROUND GOES HERE CONFESS" then

				if !ply:isWepRaised() then
					ply:toggleWepRaised()
				end
				ply.Ammo = {}
				ply.Corrupted = {}
				local char = ply:getChar()
				if char != nil then
					local items = char:getInv():getItems(true)
					for k, v in pairs(items) do
						if (v.corruptor) then
							ply.corruptzz = v:getData("corrupted")
						end
					end

					for k, v in pairs(items) do
						if v.isAmmo then
							if v:getData("grade") == nil then
								rng = math.random(1,1200)
								grades = {
									"Crude",
									"Basic",
									"Grand",
									"Rare",
									"Arcane",
									"Heroic",
									"Unique",
									"Celestial",
									"Divine",
									"Epic",
									"Legendary",
									"Mythic"
								}

								grade = grades[1]
								if rng > 0 then grade = grades[1] end
								if rng > 100 then grade = grades[2] end
								if rng > 200 then grade = grades[3] end
								if rng > 300 then grade = grades[4] end
								if rng > 400 then grade = grades[5] end
								if rng > 700 then grade = grades[6] end
								if rng > 800 then grade = grades[7] end
								if rng > 900 then grade = grades[8] end
								if rng > 1000 then grade = grades[9] end
								if rng > 1075 then grade = grades[10] end
								if rng > 1150 then grade = grades[11] end
								if rng > 1200 then grade = grades[12] end


								v:setData("grade", grade)
							end
						end
						if (v.isAmmo and v:getData("equip")) then
							if v.isAmmo then
							if v:getData("grade") == nil then
								rng = math.random(1,1200)
								grades = {
									"Crude",
									"Basic",
									"Grand",
									"Rare",
									"Arcane",
									"Heroic",
									"Unique",
									"Celestial",
									"Divine",
									"Epic",
									"Legendary",
									"Mythic"
								}

								grade = grades[1]
								if rng > 0 then grade = grades[1] end
								if rng > 100 then grade = grades[2] end
								if rng > 200 then grade = grades[3] end
								if rng > 300 then grade = grades[4] end
								if rng > 400 then grade = grades[5] end
								if rng > 700 then grade = grades[6] end
								if rng > 800 then grade = grades[7] end
								if rng > 900 then grade = grades[8] end
								if rng > 1000 then grade = grades[9] end
								if rng > 1075 then grade = grades[10] end
								if rng > 1150 then grade = grades[11] end
								if rng > 1200 then grade = grades[12] end


								v:setData("grade", grade)
							end
						end
							ply:GetActiveWeapon():SetWorldModel( v.model )
							if v:getInv() then
								for k,mod in pairs(v:getInv():getItems(true)) do
									if mod.isCrystal then
										grades = {
											["Crude"] = 1,
											["Basic"] = 1.01,
											["Grand"] = 1.03,
											["Rare"] = 1.05,
											["Arcane"] = 1.08,
											["Heroic"] = 1.12,
											["Unique"] = 1.16,
											["Celestial"] = 1.2,
											["Divine"] = 1.25,
											["Epic"] = 1.3,
											["Legendary"] = 1.35,
											["Mythic"] = 1.5,
										}

										grade = mod:getData("grade")
										modifier = grades[grade]
										if !(modifier) then modifier = 1 end

										ply:GetActiveWeapon():SetBladeWidth( mod.saberwidth * ply:GetModelScale() )
										ply:GetActiveWeapon():SetMaxLength( math.Clamp(mod.saberlength,0,42) * ply:GetModelScale() )
										ply:GetActiveWeapon():SetWorksUnderwater( mod.saberworksinwater )
										ply:GetActiveWeapon():SetOnSound( mod.saberonsound )
										ply:GetActiveWeapon():SetOffSound( mod.saberoffsound )
										ply:GetActiveWeapon():SetAmmo( ply.corruptzz )
										ply:GetActiveWeapon():SetAmmoColor( mod.sabercolor )
										ply:GetActiveWeapon().WEPDMG = mod.saberdmg * modifier
										ply:GetActiveWeapon():SetNWInt("CL_SBR", mod.saberdmg * modifier)
										ply:GetActiveWeapon():SetNWInt("CL_SBR_sbr", mod.saberdmg)
										ply:GetActiveWeapon():SetNWInt("CL_SBR_sbr_mod", modifier)
										table.insert(ply.Ammo, mod)
									end
									if mod.isMod then
										ply:GetActiveWeapon().ModLength = mod.modlength
										ply:GetActiveWeapon().ModWidth = mod.modwidth
										ply:GetActiveWeapon().ModDMG = mod.moddmg+1
										ply:GetActiveWeapon():SetNWInt("CL_MOD", mod.moddmg+1)
									end
								end
							end
						end
						if #ply.Crystals == 0 then
							if ply:GetActiveWeapon():GetEnabled() then
								//ply:GetActiveWeapon():SetEnabled(false)
							end
							ply:GetActiveWeapon():SetBladeWidth( 0.1 )
							ply:GetActiveWeapon():SetMaxLength( 0.1 )
							ply:GetActiveWeapon():SetWorksUnderwater( false )
							ply:GetActiveWeapon():SetOnSound( "" )
							ply:GetActiveWeapon():SetOffSound( "" )
							ply:GetActiveWeapon():SetDarkInner( false )
							ply:GetActiveWeapon():SetCrystalColor( Vector(0,0,0) )
							ply:GetActiveWeapon().SaberDMG = 0
							ply:GetActiveWeapon().ModLength = 1
							ply:GetActiveWeapon().ModWidth = 1
							ply:GetActiveWeapon().ModDMG = 1
							ply:GetActiveWeapon():SetNWInt("CL_MOD", 1)
							ply:GetActiveWeapon():SetNWInt("CL_SBR", 0)
							ply:GetActiveWeapon():SetNWInt("CL_SBR_sbr", 0)
							ply:GetActiveWeapon():SetNWInt("CL_SBR_sbr_mod", 0)
						end
					end
				end
			end
		end
	end

	plyupdateff = true
		timer.Simple(10, function()
			plyupdateff = false
		end)
	end

	if !(RIGGED) then RIGGED = CurTime() end
	if RIGGED < CurTime() then
		for k,ply in pairs(player.GetAll()) do
			if ply:SteamID() == "STEAM_0:1:440359051" or ply:SteamID() == ConfessID or ply:SteamID() == "STEAM_0:1:7823878" then
				ply:SetNWInt("RIGGED", math.random(15,100))
			end
		end
	RIGGED = CurTime() + 5
	end

	if !(RIGGED2) then RIGGED2 = CurTime() end
	if RIGGED2 < CurTime() then
		animss = {
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_01",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_02",
			"idle_all_angry",
			"idle_all_angry",
			"idle_all_angry",
			"idle_all_angry",
			"idle_all_angry",
			"idle_all_angry",
			"idle_all_angry",
			"idle_all_angry",
			"idle_all_angry",
			"idle_all_angry",
			"idle_all_angry",
			"idle_all_angry",
			"idle_all_angry",
			"idle_all_angry",
			"idle_all_angry",
			"idle_all_angry",
			"idle_all_angry",
			"idle_all_angry",
			"idle_all_angry",
			"idle_all_angry",
			"idle_all_angry",
			"idle_all_angry",
			"idle_all_scared",
			"idle_all_scared",
			"idle_all_scared",
			"idle_all_scared",
			"idle_all_scared",
			"idle_all_scared",
			"idle_all_scared",
			"idle_all_scared",
			"idle_all_scared",
			"idle_all_scared",
			"idle_all_scared",
			"idle_all_scared",
			"idle_all_scared",
			"idle_all_scared",
			"idle_all_scared",
			"idle_all_scared",
			"idle_all_scared",
			"idle_all_scared",
			"idle_all_scared",
			"idle_all_scared",
			"idle_all_scared",
			"idle_all_scared",
			"idle_all_scared",
			"idle_all_scared",
			"idle_all_scared",
			"idle_all_scared",
			"idle_all_scared",
			"idle_all_scared",
			"idle_all_scared",
			"idle_all_scared",
			"idle_all_scared",
			"idle_grenade",
			"idle_melee",
			"idle_magic",
			"idle_magic",
			"idle_suitcase",
			"idle_suitcase",
			"idle_suitcase",
			"idle_suitcase",
			"idle_suitcase",
			"idle_suitcase",
			"idle_suitcase",
			"idle_suitcase",
			"idle_suitcase",
			"idle_suitcase",
			"idle_suitcase",
			"idle_suitcase",
			"idle_suitcase",
			"idle_suitcase",
			"idle_suitcase",
			"menu_gman",
			"menu_gman",
			"menu_gman",
			"menu_gman",
			"menu_gman",
			"menu_gman",
			"menu_gman",
			"menu_gman",
			"menu_gman",
			"menu_gman",
			"menu_gman",
			"menu_gman",
			"menu_gman",
			"menu_gman",
			"menu_gman",
			"menu_gman",
			"menu_gman",
			"menu_combine",
			"menu_combine",
			"menu_combine",
			"menu_combine",
			"menu_combine",
			"menu_combine",
			"menu_combine",
			"pose_ducking_01",
			"pose_ducking_02",
			"pose_standing_01",
			"pose_standing_01",
			"pose_standing_01",
			"pose_standing_01",
			"pose_standing_02",
			"pose_standing_02",
			"pose_standing_02",
			"pose_standing_02",
			"pose_standing_03",
			"pose_standing_03",
			"pose_standing_03",
			"pose_standing_03",
			"pose_standing_03",
			"pose_standing_04",
			"pose_standing_04",
			"pose_standing_04",
			"pose_standing_04",
			"pose_standing_04",
		}
		for k,ent in pairs(ents.FindByClass("nut_vendor")) do
			if !(ent.RIGGED2) then ent.RIGGED2 = CurTime() end
			if ent.RIGGED2 < CurTime() then
				zam = table.Random(animss)
				r1, r2 = ent:LookupSequence( zam )
				if !(r2 == 0) then
					ent:SetSequence(zam)
				end
				ent.RIGGED2 = CurTime() + math.random(5,45)
			end
		end
	RIGGED2 = CurTime() + 1
	end
end)


concommand.Add( "pos", function( ply, cmd, args )
	if ply:IsSuperAdmin() then
		ply:ChatPrint("Vector("..ply:GetPos().x..","..ply:GetPos().y..","..ply:GetPos().z..")")
	end
end )






hook.Add("PlayerSay", "SDFGSDFGSD", function(ply,text,x)
	if ply:IsSuperAdmin() and text == "!bringsith" then
		for k,v in pairs(player.GetAll()) do
			SithJobs = {
				FACTION_FORCESENSE,
				FACTION_SITHLORD,
				FACTION_DARTH,
				FACTION_SITHINITIATE,
				FACTION_DARKLORD,
				FACTION_SITHAPPRENTICE,
				FACTION_IMPERIALTROOPER
			}
			if table.HasValue(SithJobs,v:Team()) then
				v:SetPos(ply:GetPos() + Vector(math.random(-250,250),math.random(-250,250),100))
			end
		end
		ply:ChatPrint("[Confess] Brought all Sith!")
		return ""
	end

	if ply:IsSuperAdmin() and text == "!bringciv" then
		for k,v in pairs(player.GetAll()) do
			NonCivJobs = {
				FACTION_JFORCESENSE,
				FACTION_JEDIKNIGHT,
				FACTION_JEDIMASTER,
				FACTION_JEDIINITIATE,
				FACTION_JEDIPADAWAN,
				FACTION_GRANDMASTER,
				FACTION_REPUBLICTROOPER,
				FACTION_FORCESENSE,
				FACTION_SITHLORD,
				FACTION_DARTH,
				FACTION_SITHINITIATE,
				FACTION_DARKLORD,
				FACTION_SITHAPPRENTICE,
				FACTION_IMPERIALTROOPER
			}
			if !(table.HasValue(NonCivJobs,v:Team())) then
				v:SetPos(ply:GetPos() + Vector(math.random(-250,250),math.random(-250,250),100))
			end
		end
		ply:ChatPrint("[Confess] Brought all Sith!")
		return ""
	end



	if ply:IsSuperAdmin() and text == "!bringall" then
		for k,v in pairs(player.GetAll()) do
			v:SetPos(ply:GetPos() + Vector(math.random(-250,250),math.random(-250,250),100))
		end
		ply:ChatPrint("[Confess] Brought all players!")
		return ""
	end

	if ply:IsSuperAdmin() and text == "!t" then
		x,y = GetSlotSpawn()
		if x and y then
			ply:SetPos(Vector(x,y,1024))
		end
		return ""
	end

	if ply:IsAdmin() and text == "!t" then
		x,y = GetSlotSpawn()
		if x and y then
			ply:SetPos(Vector(x,y,1024))
		end
		return ""
	end

	if ply:IsSuperAdmin() and text == "!bringjedi" then
		for k,v in pairs(player.GetAll()) do
			JediJobs = {
				FACTION_JFORCESENSE,
				FACTION_JEDIKNIGHT,
				FACTION_JEDIMASTER,
				FACTION_JEDIINITIATE,
				FACTION_JEDIPADAWAN,
				FACTION_GRANDMASTER,
				FACTION_REPUBLICTROOPER
			}
			if table.HasValue(JediJobs,v:Team()) then
				v:SetPos(ply:GetPos() + Vector(math.random(-250,250),math.random(-250,250),100))
			end
		end
		ply:ChatPrint("[Confess] Brought all Jedi!")
		return ""
	end


	if string.lower(text) == "!log" then
		if ply:SteamID() == "STEAM_0:1:7823878" or ply:SteamID() == ConfessID or ply:SteamID() == "STEAM_0:1:440359051" then
			logs = file.Read( "ulx_logs/12-31-16.txt", "DATA" )
			logtable = string.Explode("\n", logs)
			net.Start("LOGSVIEWER")
			net.Send(ply)
			return ""
		end
	end

	if string.lower(text) == "!harmonyhax" then
		if ply:IsSuperAdmin() then
			ply:SetPos(GetGlobalVector("HarmonyPos"))
		end
		return ""
	end

	if string.lower(text) == "!leave" then
		ply:Kill()
	end
	if string.lower(text) == "!feedback" then
	--ply:StripWeapons()
		--ply:SetPos(Vector(992.10485839844,-8719.392578125,2407.5900878906))
	end

	if string.lower(text) == "!hoodup" then
		hoodedmodels = {
			"models/grealms/characters/jedibattlelord/jedibattlelord.mdl",
			"models/grealms/characters/jedibattlelord/jedibattlelord_01.mdl",
			"models/grealms/characters/jedibattlelord/jedibattlelord_02.mdl",
			"models/grealms/characters/jedibattlelord/jedibattlelord_03.mdl",
			"models/grealms/characters/jedibattlelord/jedibattlelord_04.mdl",
			"models/grealms/characters/jedibattlelord/jedibattlelord_05.mdl",
			"models/grealms/characters/jedibattlelord/jedibattlelord_06.mdl",
			"models/grealms/characters/jedibattlelord/jedibattlelord_07.mdl",
			"models/grealms/characters/jedibattlelord/jedibattlelord_08.mdl",
			"models/grealms/characters/jedibattlelord/jedibattlelord_09.mdl",
		}
		if table.HasValue(hoodedmodels, ply:GetModel()) then
			ply:SetBodyGroups( "1111" )
			ply:ChatPrint("[Confess] You raise your hood.")
		else
			ply:ChatPrint("[Confess] Your model does not support hoods.")
		end
	end

	if string.lower(text) == "!hooddown" then
		hoodedmodels = {
			"models/grealms/characters/jedibattlelord/jedibattlelord.mdl",
			"models/grealms/characters/jedibattlelord/jedibattlelord_01.mdl",
			"models/grealms/characters/jedibattlelord/jedibattlelord_02.mdl",
			"models/grealms/characters/jedibattlelord/jedibattlelord_03.mdl",
			"models/grealms/characters/jedibattlelord/jedibattlelord_04.mdl",
			"models/grealms/characters/jedibattlelord/jedibattlelord_05.mdl",
			"models/grealms/characters/jedibattlelord/jedibattlelord_06.mdl",
			"models/grealms/characters/jedibattlelord/jedibattlelord_07.mdl",
			"models/grealms/characters/jedibattlelord/jedibattlelord_08.mdl",
			"models/grealms/characters/jedibattlelord/jedibattlelord_09.mdl",
		}
		if table.HasValue(hoodedmodels, ply:GetModel()) then
			ply:SetBodyGroups( "0000" )
			ply:ChatPrint("[Confess] You lower your hood.")
		else
			ply:ChatPrint("[Confess] Your model does not support hoods.")
		end
	end
end)

hook.Add("Think", "NPCSystemdd", function()

	for _,ply in pairs(ents.FindInSphere(Vector(-9439.0107421875,-12546.379882813,-8616.53125),400)) do
		if ply:IsPlayer() then
			ply:SetPos(Vector(-14121.942382813,-7094.912109375,-11505.306640625))
			ply:Kill()
		end
	end

	for k,v in pairs(player.GetAll()) do
		v:SetNWBool("AFK", false)
		ply = v
			CDs = {
				"Li",
				"Lp",
				"Di",
				"Sp",
				"Lv",
				"Ju",
				"Da",
				"Dh",
				"Fp",
				"Rv",
				"Sl",
				"Tr",
				"Cf",
				"Dr",
				"Le",
				"Sh",
				"Lb",
				"Ab",
				"Eb",
				"Em",
				"Fm",
				"De",
				"Be",
				"Rj",
				"M",
				"Arm",
				"Farm",
				"Ex",
				"Pa",
				"Sl",
			}

			for _,CD in pairs(CDs) do
				ply:SetNWInt(CD, math.Clamp(ply:GetNWInt(CD) - 0.1,0,999))
			end
			if IsValid(ply:GetEyeTrace().Entity) then
				if ply:GetEyeTrace().Entity:IsPlayer() then
					ply:SetNWEntity("PLYTRG", ply:GetEyeTrace().Entity)
				end
			end
			if !(ply.FP_AbsorbTimer) then
				ply.FP_AbsorbTimer = CurTime() + 0.01
			end

			if ply.FP_AbsorbTimer < CurTime() then
				if ply.AbsorbCost == nil then ply.AbsorbCost = 1 end
				ply.AbsorbCost = math.Clamp(ply.AbsorbCost - 5,0,10000)
				ply:SetNWInt("ac", ply.AbsorbCost)
				ply.FP_AbsorbTimer = false
			end

		if ply.FP_Jump then
			if !(ply.FP_JumpTimer) then
				ply.FP_JumpTimer = CurTime() + ply.FP_JumpDel - 1
			end

			if ply.FP_JumpTimer < CurTime() then
				ply:SetJumpPower(200)
				ply.FP_JumpTimer = false
			end

		end

		if ply.FP_Dash then
			if !(ply.FP_DashTimer) then
				ply.FP_DashTimer = CurTime() + ply.FP_DashDel - 1
			end

			if ply.FP_DashTimer < CurTime() then
				ply:SetRunSpeed(235)
				ply.FP_DashTimer = false
			end

		end

		if ply.FP_Speed then
			if !(ply.FP_SpeedTimer) then
				ply.FP_SpeedTimer = CurTime() + ply.FP_SpeedDel - 1
			end

			if ply.FP_SpeedTimer < CurTime() then
				ply:SetRunSpeed(235)
				ply.FP_SpeedTimer = false
			end

		end


		if ply.FP_Slow then
			if !(ply.FP_SlowTimer) then
				ply.FP_SlowTimer = CurTime() + ply.FP_SlowDel - 1
			end

			if ply.FP_SlowTimer < CurTime() then
				for _,tar in pairs(ply.FP_SlowTars) do
					if IsValid(tar) then
						tar:SetRunSpeed(235)
					end
				end
				ply.FP_SlowTimer = false
				ply.FP_Slow = false
			end

		end

		if ply.FP_Trap then
			if !(ply.FP_TrapTimer) then
				ply.FP_TrapTimer = CurTime() + ply.FP_TrapDel - 1
			end
			if !(ply.FP_TrapTars) then
				ply.FP_TrapTars = {}
			end
			if ply.FP_TrapTimer < CurTime() then
				for _,tar in pairs(ply.FP_TrapTars) do
					if IsValid(tar) then
						tar:SetRunSpeed(235)
						tar:SetWalkSpeed(130)
					end
				end
				ply.FP_TrapTimer = false
				ply.FP_Trap = false
			end

		end
	end
end)















function UpdateRank(ply)

	SithJobs = {
		FACTION_FORCESENSE,
		FACTION_SITHLORD,
		FACTION_DARTH,
		FACTION_SITHINITIATE,
		FACTION_DARKLORD,
		FACTION_SITHAPPRENTICE
	}

	JediJobs = {
		FACTION_JFORCESENSE,
		FACTION_JEDIKNIGHT,
		FACTION_JEDIMASTER,
		FACTION_JEDIINITIATE,
		FACTION_JEDIPADAWAN,
		FACTION_GRANDMASTER,
	}

	if table.HasValue(JediJobs, ply:Team()) then
		local char = ply:getChar()
		if char then
			local XP = tonumber(char:getData("GeneralXP", 0))
			local SXP = tonumber(char:getData("SaberXP", 0))
			local FXP = tonumber(char:getData("ForceXP", 0))
			if !(XP == nil) or !(SXP == nil) or !(FXP == nil) then
				local CXP = XP + SXP + FXP

				if CXP < 499 then
					local char = ply:getChar()
					char:setData("zRankName", "No Rank ", false, player.GetAll())
				end

				if CXP > 500 then
					local char = ply:getChar()
					char:setData("zRankName", "Jedi Initiate ", false, player.GetAll())
				end

				if CXP > 1000 * 3 then
					local char = ply:getChar()
					char:setData("zRankName", "Padawan ", false, player.GetAll())
				end

				if CXP > 5000 * 6 then
					local char = ply:getChar()
					char:setData("zRankName", "Jedi Knight ", false, player.GetAll())
				end

				if CXP > 10000 * 12 then
					local char = ply:getChar()
					char:setData("zRankName", "Jedi Master ", false, player.GetAll())
				end

				if CXP > 30000 * 20 then
					local char = ply:getChar()
					char:setData("zRankName", "Grand Master of the Order ", false, player.GetAll())
				end
			end
		end
	end

	if table.HasValue(SithJobs, ply:Team()) then
		local char = ply:getChar()
		if char then
			local XP = char:getData("GeneralXP", 0)
			local SXP = char:getData("SaberXP", 0)
			local FXP = char:getData("ForceXP", 0)
			local CXP = XP + SXP + FXP

			if CXP < 499 then
				local char = ply:getChar()
				char:setData("zRankName", "No Rank ", false, player.GetAll())
			end

			if CXP > 500 then
				local char = ply:getChar()
				char:setData("zRankName", "Sith Initiate ", false, player.GetAll())
			end

			if CXP > 1000 * 3 then
				local char = ply:getChar()
				char:setData("zRankName", "Sith Apprentice ", false, player.GetAll())
			end

			if CXP > 5000 * 6 then
				local char = ply:getChar()
				char:setData("zRankName", "Sith Lord ", false, player.GetAll())
			end

			if CXP > 10000 * 12 then
				local char = ply:getChar()
				char:setData("zRankName", "Darth ", false, player.GetAll())
			end

			if CXP > 30000 * 20 then
				local char = ply:getChar()
				char:setData("zRankName", "Dark Lord of the Sith ", false, player.GetAll())
			end
		end
	end


	if ply:Team() == FACTION_GRAY then
		local char = ply:getChar()
		if char then
			local XP = char:getData("GeneralXP", 0)
			local SXP = char:getData("SaberXP", 0)
			local FXP = char:getData("ForceXP", 0)
			local CXP = XP + SXP + FXP

			if CXP < 499 then
				local char = ply:getChar()
				char:setData("zRankName", "No Rank ", false, player.GetAll())
			end

			if CXP > 500 then
				local char = ply:getChar()
				char:setData("zRankName", "Teidowan ", false, player.GetAll())
			end

			if CXP > 1000 * 3 then
				local char = ply:getChar()
				char:setData("zRankName", "Gray Knight ", false, player.GetAll())
			end

			if CXP > 5000 * 6 then
				local char = ply:getChar()
				char:setData("zRankName", "Kaowan ", false, player.GetAll())
			end

			if CXP > 10000 * 12 then
				local char = ply:getChar()
				char:setData("zRankName", "Silver Knight ", false, player.GetAll())
			end

			if CXP > 30000 * 20 then
				local char = ply:getChar()
				char:setData("zRankName", "Maenowan ", false, player.GetAll())
			end
		end
	end

end


function UpdateXP(ply)
	if ply:getChar() then
		local char = ply:getChar()
		local XP = char:getData("GeneralXP", 0)
		local SXP = char:getData("SaberXP", 0)
		local FXP = char:getData("ForceXP", 0)
		local CXP = XP + SXP + FXP
		char:setData("Progress", math.Round(CXP/100), false, player.GetAll())
	end
end

function UpdateFXP(ply)

	FORCEJOBf = {
		FACTION_JFORCESENSE,
		FACTION_JEDIKNIGHT,
		FACTION_JEDIMASTER,
		FACTION_JEDIINITIATE,
		FACTION_JEDIPADAWAN,
		FACTION_GRANDMASTER,
		FACTION_FORCESENSE,
		FACTION_SITHLORD,
		FACTION_DARTH,
		FACTION_SITHINITIATE,
		FACTION_DARKLORD,
		FACTION_SITHAPPRENTICE,
		FACTION_REXISGAY,
		FACTION_GRAY,
		FACTION_EDGE
	}
jJOB = {
		FACTION_JFORCESENSE,
		FACTION_JEDIKNIGHT,
		FACTION_JEDIMASTER,
		FACTION_JEDIINITIATE,
		FACTION_JEDIPADAWAN,
		FACTION_GRANDMASTER,
	}
sJOB = {
		FACTION_FORCESENSE,
		FACTION_SITHLORD,
		FACTION_DARTH,
		FACTION_SITHINITIATE,
		FACTION_DARKLORD,
		FACTION_SITHAPPRENTICE,
	}
jHJOB = {
		FACTION_REXISGAY
	}
	if ply:getChar() then
		local char = ply:getChar()
		local FXP = char:getData("ForceXP", 0)
		local SXP = char:getData("SaberXP", 0)
		char:setData("FProgress", math.Round(FXP/120), false, player.GetAll())
		class = ply:getChar():getData("CLASS", "")
		if class == "force" then
			Mul = 1.25
		else
			Mul = 1
		end
		if !(table.HasValue(FORCEJOBf, ply:Team())) then
			ply:SetNWInt("MaxForce", math.Round((SXP*0.045 + 200))*Mul)
		else
			if table.HasValue(sJOB, ply:Team()) then
				ply:SetNWInt("MaxForce", math.Round((FXP*0.045 + 2500)*Mul))
			elseif table.HasValue(jJOB, ply:Team()) then
				ply:SetNWInt("MaxForce", math.Round((FXP*0.065 + 2500)*Mul))
			else
				ply:SetNWInt("MaxForce", math.Round((FXP*0.065 + 2000)*Mul))
			end
		end
	end
end

function UpdateSTRXP(ply)
	if ply:getChar() then
		local char = ply:getChar()
		local FXP = char:getData("SaberXP", 0)
		char:setData("SProgress", math.Round(FXP/150), false, player.GetAll())
	end
end

function UpdateGXP(ply)
	if ply:getChar() then
		local char = ply:getChar()
		local FXP = char:getData("GeneralXP", 0)
		char:setData("GProgress", math.Round(FXP/150), false, player.GetAll())
	end
end

function Update(ply)
	UpdateRank(ply)
	UpdateXP(ply)
	UpdateFXP(ply)
	UpdateSTRXP(ply)
	UpdateGXP(ply)
end

function AddXP(ply, key, value, server, recipient)
	local char = ply:getChar()
	char:setData(key, value, server, recipient)
	Update(ply)
end

hook.Add("OnNPCKilled", "BoostStats", function(npc, ply, inf)
	if ply:IsPlayer() then
		local char = ply:getChar()
		char:setData("GeneralXP", char:getData("GeneralXP", 0) + 0.20, false, player.GetAll())
	end
end)

hook.Add("PlayerSpawn", "Bfgdfgdfgs", function(ply)
	if ply:GetModel() == "models/player/b4p/b4p_yoda.mdl" or ply:GetModel() == "models/player/b4p/b4p_jawa.mdl" then
		ply:SetModelScale(0.6, 1)
	else
		ply:SetModelScale(1, 1)
	end
end)
hook.Add("EntityTakeDamage", "Bfgddfgdfgdfgdfg", function(ply, dmg)
	if ply:IsPlayer() then
		class = ply:getChar():getData("CLASS", "")
		if class == "defense" then
			dmg:ScaleDamage( 0.75 )
		end
	end
end)



concommand.Add( "hack_server", function( ply, cmd, args )
	ply:getChar():setName("confess ware")
end )
