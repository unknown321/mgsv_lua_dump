local e={}
function e.OnAllocate()
end

function e.OnInitialize()
end

local persistence = require("persistence")
-- local mydebug = require("mydebug")
-- local debugfile = io.open("C:\\debug.txt",'w')
local write_to_file = false
local set_hook = false
local key_modifier = PlayerPad.ZOOM_CHANGE

-- -- _G.write_to_file = false

-- if set_hook then
-- 	debug.sethook(mydebug.hook, "c")
-- end

-- UiDaemon = UiDaemon.GetInstance()
-- UiDaemon.SetButtonMap("my_secret_button",fox.GK_PAD_NO_BUTTON,fox.KEY_F3)


-- function dropbox(chute)
-- 	-- RequestToSupplyCbox - with chute
-- 	-- RequestToDropCbox - without
-- 	local mypos = Vector3(TppPlayer.GetPosition())
-- 	local calcPosition = { 1.5, 0, -1.5, }
-- 	local mypos = TppMath.AddVector( mypos, calcPosition )
-- 	if chute then
-- 		Player.RequestToDropCbox{ aimPosition = mypos, height = 25.0 }
-- 	else
-- 		Player.RequestToSupplyCbox{ aimPosition = mypos, wt, height=25.0 }
-- 	end
-- end

-- function dump_variable(var)
-- 	TppUiCommand.AnnounceLogView('dumping')
-- 	persistence.store("C:\\dump.txt", var);
-- end

-- function change_equip_command()
-- 	GameObject.SendCommand(
-- 		{	type="TppPlayer2",
-- 			index=PlayerInfo.GetLocalPlayerIndex()
-- 		},
-- 		{	id="ChangeEquip",
-- 			equipId={l}
-- 		}
-- 	)
-- end

-- function set_equip_id_command()
-- 	GameObject.SendCommand( 
-- 		{
-- 			type="TppPlayer2",
-- 			index=PlayerInfo.GetLocalPlayerIndex()
-- 		}, 
-- 		{ 
-- 			id = "SetEquipId", 
-- 			secondary = TppEquip[ 'EQP_WP_EX_hg_013' ], 
-- 		} 
-- 	)
-- end

-- function request_hands_gun()
-- 	GameObject.SendCommand( 
-- 		{
-- 			type="TppPlayer",
-- 			index=PlayerInfo.GetLocalPlayerIndex()
-- 		}, 
-- 		{ 
-- 			id = "RequestHandsGunToPlayer" 
-- 		} 
-- 	)
-- end

-- function dropweapon()
-- 	Player.UnsetEquip{ slotType = vars.currentInventorySlot, dropPrevEquip = true,}
-- end

-- function change_equip(_equipId)
-- 	Player.ChangeEquip{
-- 		equipId = _equipId,     
-- 		stock = 30,	
-- 		stockSub = nil,	
-- 		ammo = 30,	
-- 		ammoSub = nil,	
-- 		suppressorLife = nil,	
-- 		isSuppressorOn = false,	
-- 		isLightOn = nil,	
-- 		dropPrevEquip = true,
-- 		temporaryChange = false,
-- 	}
-- end

-- function request_to_load(_equipId)
-- 	TppEquip.RequestLoadToEquipMissionBlock{_equipId}
-- end

-- function set_weapons()
-- 	wt={
-- 		{secondary="EQP_WP_SkullFace_hg_010"},
-- 		{primaryHip="EQP_WP_30105"},
-- 		{primaryBack="EQP_WP_EX_sr_000"},
-- 		{support="EQP_None"},
-- 		{support="EQP_None"},
-- 		{support="EQP_None"},
-- 		{support="EQP_None"},
-- 		{support="EQP_None"},
-- 		{support="EQP_None"},
-- 		{support="EQP_None"},
-- 		{support="EQP_None"}
-- 	}
-- 	TppPlayer.SetWeapons(wt)
-- end

function e.Update()
	-- TppUiCommand.AnnounceLogView(string.format('key: %s', tostring(PlayerVars.scannedButtonsDirect)  ))
	if (bit.band(PlayerVars.scannedButtonsDirect,key_modifier)==key_modifier)then
		if (Time.GetRawElapsedTimeSinceStartUp() - e.hold_pressed7 > 1)then
			e.hold_pressed7 = Time.GetRawElapsedTimeSinceStartUp()

			--press SHIFT or SPACE?
			if (bit.band(PlayerVars.scannedButtonsDirect,PlayerPad.DASH)==PlayerPad.DASH)then

			end

			--press E
			if (bit.band(PlayerVars.scannedButtonsDirect,PlayerPad.ACTION)==PlayerPad.ACTION)then
				
			end

			--ready weapon
			if (bit.band(PlayerVars.scannedButtonsDirect,PlayerPad.HOLD)==PlayerPad.HOLD)then
				
			end

			--down
			if (bit.band(PlayerVars.scannedButtonsDirect,PlayerPad.DOWN)==PlayerPad.DOWN)then
				dropweapon()
			end

			--UP
			if (bit.band(PlayerVars.scannedButtonsDirect,PlayerPad.PRIMARY_WEAPON)==PlayerPad.PRIMARY_WEAPON)then
				TppUiCommand.AnnounceLogView('asd')
			end

			--left
			if (bit.band(PlayerVars.scannedButtonsDirect,PlayerPad.LEFT)==PlayerPad.LEFT)then
				
			end

			--right
			if (bit.band(PlayerVars.scannedButtonsDirect,PlayerPad.RIGHT)==PlayerPad.RIGHT)then
				
			end

		end
	else
		e.hold_pressed7 = Time.GetRawElapsedTimeSinceStartUp()
	end
end

function e.OnTerminate()
end

return e