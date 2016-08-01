do
return{}end
local o={}function o.SetPlayLogEnabled(e)if TppPlayLog then
TppPlayLog.SetPlayLogEnabled(e)end
end
function o.RequestResetPlayLog()if TppPlayLog then
TppPlayLog.RequestResetPlayLog()end
end
function o.RequestUploadPlayLog()if TppPlayLog then
TppPlayLog.RequestUploadPlayLog()end
end
function o.ExportSavedPlayLog()if TppPlayLog and TppPlayLog.ExportSavedPlayLog then
TppPlayLog.ExportSavedPlayLog()end
end
o.PERF_CHECK_TYPE=Tpp.Enum{"OnUpdate","OnMessage","OnEnter"}local i={}local g={}local p={}local m=2
local l=0
local s=0
local u=Tpp.ApendArray
local n=Tpp.IsTypeTable
local v=GkEventTimerManager.IsTimerActive
local d=Tpp.DEBUG_StrCode32ToString
o.Colors={black=Color(0,0,0,1),white=Color(1,1,1,1),red=Color(1,0,0,1),green=Color(0,1,0,1),blue=Color(0,0,1,1),yellow=Color(1,1,0,1),magenta=Color(1,0,1,1),cyan=Color(0,1,1,1),darkRed=Color(.5,0,0,1),darkGreen=Color(0,.5,0,1),darkBlue=Color(0,0,.5,1),darkYellow=Color(.5,.5,0,1),purple=Color(.5,0,.5,1),darkCyan=Color(0,.5,.5,1)}function o.DEBUG_SetSVars(e)if not n(e)then
return
end
for e,a in pairs(e)do
Tpp._DEBUG_svars[e]=a
end
end
function o.DEBUG_SetGVars(e)if not n(e)then
return
end
for e,a in pairs(e)do
Tpp._DEBUG_gvars[e]=a
end
end
function o.DEBUG_RestoreSVars()if next(Tpp._DEBUG_svars)then
for a,e in pairs(Tpp._DEBUG_svars)do
svars[a]=e
end
TppSave.VarSave()end
end
function o.DEBUG_SetOrderBoxPlayerPosition()if next(Tpp._DEBUG_gvars)then
if Tpp._DEBUG_gvars.mis_orderBoxName then
TppMission.SetMissionOrderBoxPosition(Tpp._DEBUG_gvars.mis_orderBoxName)TppSave.VarSave()end
end
end
function o.DEBUG_SVarsClear()if next(Tpp._DEBUG_svars)then
for e,a in pairs(Tpp._DEBUG_svars)do
if e=="dbg_seq_sequenceName"then
TppSave.ReserveVarRestoreForContinue()end
end
Tpp._DEBUG_svars={}TppSave.VarSave()end
end
function o.DEBUG_GetSysVarsLog()local a=svars or{}local e=mvars or{}local e={"missionName = "..(tostring(e.mis_missionName)..(", vars.missionCode = "..(tostring(vars.missionCode)..(", vars.locationCode = "..tostring(vars.locationCode))))),"mvars.mis_missionStateIsNotInGame = "..tostring(e.mis_missionStateIsNotInGame),"missionClearState = "..tostring(TppDefine.MISSION_CLEAR_STATE_LIST[gvars.mis_missionClearState+1]),"gvars.pck_missionPackLabelName = "..tostring(gvars.pck_missionPackLabelName),"gvars.mis_orderBoxName = "..tostring(gvars.mis_orderBoxName),"gvars.heli_missionStartRoute = "..tostring(gvars.heli_missionStartRoute),"gvars.mis_nextMissionCodeForMissionClear = "..tostring(gvars.mis_nextMissionCodeForMissionClear),"gvars.mis_nextMissionCodeForEmergency = "..tostring(gvars.mis_nextMissionCodeForEmergency),"vars.mbLayoutCode = "..(tostring(vars.mbLayoutCode)..(", mvars.mis_nextLayoutCode = "..tostring(e.mis_nextLayoutCode))),"vars.mbClusterId = "..(tostring(vars.mbClusterId)..(", mvars.mis_nextClusterId = "..tostring(e.mis_nextClusterId))),"mvars.mis_isOutsideOfMissionArea = "..tostring(e.mis_isOutsideOfMissionArea),"svars.mis_isDefiniteGameOver = "..(tostring(a.mis_isDefiniteGameOver)..(", svars.mis_isDefiniteMissionClear = "..tostring(a.mis_isDefiniteMissionClear))),"gvars.needWaitMissionInitialize = "..tostring(gvars.needWaitMissionInitialize),"gvars.canExceptionHandling = "..tostring(gvars.canExceptionHandling),"vars.playerVehicleGameObjectId = "..tostring(vars.playerVehicleGameObjectId),"TppServerManager.FobIsSneak() = "..tostring(TppServerManager.FobIsSneak()),"svars.scoreTime = "..tostring(a.scoreTime)}return e
end
function o.DEBUG_WarpHelicopter(i,r,s,a,t)if not n(soldierNameTable)then
soldierNameTable={soldierNameTable}end
local n=GameObject.GetGameObjectId
local e=GameObject.SendCommand
if not a then
a=0
end
for s,o in pairs(soldierNameTable)do
local o=n(o)e(o,{id="SetEnabled",enabled=false})e(o,{id="SetSneakRoute",route=r,point=a})e(o,{id="SetCautionRoute",route=r,point=a})if t then
e(o,{id="SetAlertRoute",enabled=true,route=r,point=a})else
e(o,{id="SetAlertRoute",enabled=false,route="",point=a})end
e(o,{id="SetEnabled",enabled=true})end
local a=n(i)e(a,{id="SetPosition",position=s,rotY=0})end
function o.DEBUG_WarpVehicleAndSoldier(r,i,t,s,a,l)if not n(r)then
r={r}end
local n=GameObject.GetGameObjectId
local e=GameObject.SendCommand
if not a then
a=0
end
for r,o in pairs(r)do
local o=n(o)e(o,{id="SetEnabled",enabled=false})e(o,{id="SetSneakRoute",route=t,point=a})e(o,{id="SetCautionRoute",route=t,point=a})if l then
e(o,{id="SetAlertRoute",enabled=true,route=t,point=a})else
e(o,{id="SetAlertRoute",enabled=false,route="",point=a})end
e(o,{id="SetEnabled",enabled=true})end
local a=n(i)e(a,{id="SetPosition",position=s,rotY=0})end
o.DEBUG_SkipOnChangeSVarsLog={timeLimitforSneaking=true,timeLimitforNonAbort=true}function o.DEBUG_AddSkipLogSVarsName(e)o.DEBUG_SkipOnChangeSVarsLog[e]=true
end
function o.DEBUG_FobGPU()local e=function(o)math.randomseed(os.time())TppMotherBaseManagement.SetGmp{gmp=1e6}local e=300
if TppMotherBaseManagement.DEBUG_DirectAddRandomStaffs then
TppMotherBaseManagement.DEBUG_DirectAddRandomStaffs{count=e}end
do
local e={CommonMetal=100,MinorMetal=100,PreciousMetal=100,FuelResource=100,BioticResource=100}for a,e in pairs(e)do
TppMotherBaseManagement.SetResourceSvars{resource=a,usableCount=e,processingCount=e,got=true,isNew=false}end
local e={Plant2000=100,Plant2001=100,Plant2002=100,Plant2003=100,Plant2004=100,Plant2005=100,Plant2006=100,Plant2007=100,Plant2008=100}for a,e in pairs(e)do
TppMotherBaseManagement.SetResourceSvars{resource=a,usableCount=e,processingCount=0,got=true,isNew=false}end
end
do
local e={"Orange","Blue","Black","Blick","Gray","Od","Pink","Sand"}local a=math.random(1,#e)TppMotherBaseManagement.SetFobSvars{fob="Fob1",got=true,oceanAreaId=70,topologyType=o,color=e[a]}local e={"Command","Combat","Develop","BaseDev","Support","Spy","Medical"}for a,e in ipairs(e)do
local a=math.random(4,4)TppMotherBaseManagement.SetClusterSvars{base="Fob1",category=e,grade=a,buildStatus="Completed",timeMinute=0,isNew=false}end
for a,e in ipairs(e)do
local a=math.random(1,1)TppMotherBaseManagement.SetClusterSvars{base="MotherBase",category=e,grade=a,buildStatus="Completed",timeMinute=0,isNew=false}end
end
TppSave.VarSave(40010,true)TppSave.VarSaveOnRetry()TppSave.SaveGameData()end
e(90)end
function o.DEBUG_SetFobPlayerSneak()vars.avatarFaceRaceIndex=0
vars.avatarAcceFlag=0
vars.avatarFaceTypeIndex=1
vars.avatarFaceVariationIndex=1
vars.avatarFaceColorIndex=0
vars.avatarHairStyleIndex=0
vars.avatarRightEyeColorIndex=0
vars.avatarRightEyeBrightnessIndex=0
vars.avatarLeftEyeColorIndex=1
vars.avatarLeftEyeBrightnessIndex=0
vars.avatarHairColor=1
vars.avatarBerdStyle=0
vars.avatarBerdLength=1
vars.avatarEbrwStyle=3
vars.avatarEbrwWide=1
vars.avatarGashOrTatoVariationIndex=0
vars.avatarTatoColorIndex=0
vars.avatarMotionFrame[0]=4
vars.avatarMotionFrame[1]=9
vars.avatarMotionFrame[2]=5
vars.avatarMotionFrame[3]=5
vars.avatarMotionFrame[4]=7
vars.avatarMotionFrame[5]=1
vars.avatarMotionFrame[6]=7
vars.avatarMotionFrame[7]=4
vars.avatarMotionFrame[8]=4
vars.avatarMotionFrame[9]=5
vars.avatarMotionFrame[10]=5
vars.avatarMotionFrame[11]=6
vars.avatarMotionFrame[12]=5
vars.avatarMotionFrame[13]=10
vars.avatarMotionFrame[14]=8
vars.avatarMotionFrame[15]=4
vars.avatarMotionFrame[16]=6
vars.avatarMotionFrame[17]=10
vars.avatarMotionFrame[18]=0
vars.avatarMotionFrame[19]=5
vars.avatarMotionFrame[20]=5
vars.avatarMotionFrame[21]=7
vars.avatarMotionFrame[22]=3
vars.avatarMotionFrame[23]=3
vars.avatarMotionFrame[24]=6
vars.avatarMotionFrame[25]=10
vars.avatarMotionFrame[26]=8
vars.avatarMotionFrame[27]=6
vars.avatarMotionFrame[28]=6
vars.avatarMotionFrame[29]=8
vars.avatarMotionFrame[30]=2
vars.avatarMotionFrame[31]=5
vars.avatarMotionFrame[32]=2
vars.avatarMotionFrame[33]=1
vars.avatarMotionFrame[34]=5
vars.avatarMotionFrame[35]=5
vars.avatarMotionFrame[36]=4
vars.avatarMotionFrame[37]=7
vars.avatarMotionFrame[38]=6
vars.avatarMotionFrame[39]=9
vars.avatarMotionFrame[40]=4
vars.avatarMotionFrame[41]=7
vars.avatarMotionFrame[42]=6
vars.avatarMotionFrame[43]=5
vars.avatarMotionFrame[44]=1
vars.avatarMotionFrame[45]=4
vars.avatarMotionFrame[46]=2
vars.avatarMotionFrame[47]=7
vars.avatarMotionFrame[48]=8
vars.avatarMotionFrame[49]=5
vars.avatarMotionFrame[50]=8
vars.avatarMotionFrame[51]=6
vars.avatarMotionFrame[52]=7
vars.avatarMotionFrame[53]=4
vars.avatarMotionFrame[54]=7
vars.avatarMotionFrame[55]=4
vars.avatarMotionFrame[56]=5
vars.avatarMotionFrame[57]=9
vars.avatarMotionFrame[58]=3
vars.avatarMotionFrame[59]=5
vars.avatarSaveIsValid=1
vars.playerType=PlayerType.AVATAR
vars.playerCamoType=PlayerCamoType.BATTLEDRESS
vars.handEquip=TppEquip.EQP_HAND_KILL_ROCKET
vars.playerFaceEquipId=1
vars.itemLevels[TppEquip.EQP_SUIT-TppEquip.EQP_IT_InstantStealth]=1
local e={{equipId=TppEquip.EQP_WP_30105,partsInfo={barrel=TppEquip.BA_30124,ammo=TppEquip.AM_30125,stock=TppEquip.SK_60304,muzzle=TppEquip.MZ_30105,muzzleOption=TppEquip.MO_30102,rearSight=TppEquip.ST_30305,frontSight=TppEquip.ST_30306,option1=TppEquip.LT_30105,option2=TppEquip.LS_40034,underBarrel=TppEquip.UB_50102,underBarrelAmmo=TppEquip.AM_40102}},{equipId=TppEquip.EQP_WP_60206,partsInfo={barrel=TppEquip.BA_60205,ammo=TppEquip.AM_30055,stock=TppEquip.SK_60203,muzzle=TppEquip.MZ_60203,muzzleOption=TppEquip.MO_60204,rearSight=TppEquip.ST_30204,frontSight=TppEquip.ST_20205,option1=TppEquip.LT_30025,option2=TppEquip.LS_30104,underBarrel=TppEquip.UB_40144,underBarrelAmmo=TppEquip.AM_40102}},{equipId=TppEquip.EQP_WP_20004,partsInfo={ammo=TppEquip.AM_20105,stock=TppEquip.SK_20002,muzzleOption=TppEquip.MO_10101,rearSight=TppEquip.ST_30114,option1=TppEquip.LT_10104}}}GameObject.SendCommand({type="TppPlayer2",index=PlayerInfo.GetLocalPlayerIndex()},{id="DEBUG_ChangeChimeraWeapon",chimeraInfo=e})GameObject.SendCommand({type="TppPlayer2",index=PlayerInfo.GetLocalPlayerIndex()},{id="DEBUG_ChangeEquip",equipId=TppEquip.EQP_HAND_KILL_ROCKET})end
function o.DEBUG_SetFobPlayerDefence()vars.avatarFaceRaceIndex=0
vars.avatarAcceFlag=0
vars.avatarFaceTypeIndex=1
vars.avatarFaceVariationIndex=1
vars.avatarFaceColorIndex=0
vars.avatarHairStyleIndex=0
vars.avatarRightEyeColorIndex=0
vars.avatarRightEyeBrightnessIndex=0
vars.avatarLeftEyeColorIndex=1
vars.avatarLeftEyeBrightnessIndex=0
vars.avatarHairColor=1
vars.avatarBerdStyle=0
vars.avatarBerdLength=1
vars.avatarEbrwStyle=3
vars.avatarEbrwWide=1
vars.avatarGashOrTatoVariationIndex=0
vars.avatarTatoColorIndex=0
vars.avatarMotionFrame[0]=4
vars.avatarMotionFrame[1]=9
vars.avatarMotionFrame[2]=5
vars.avatarMotionFrame[3]=5
vars.avatarMotionFrame[4]=7
vars.avatarMotionFrame[5]=1
vars.avatarMotionFrame[6]=7
vars.avatarMotionFrame[7]=4
vars.avatarMotionFrame[8]=4
vars.avatarMotionFrame[9]=5
vars.avatarMotionFrame[10]=5
vars.avatarMotionFrame[11]=6
vars.avatarMotionFrame[12]=5
vars.avatarMotionFrame[13]=10
vars.avatarMotionFrame[14]=8
vars.avatarMotionFrame[15]=4
vars.avatarMotionFrame[16]=6
vars.avatarMotionFrame[17]=10
vars.avatarMotionFrame[18]=0
vars.avatarMotionFrame[19]=5
vars.avatarMotionFrame[20]=5
vars.avatarMotionFrame[21]=7
vars.avatarMotionFrame[22]=3
vars.avatarMotionFrame[23]=3
vars.avatarMotionFrame[24]=6
vars.avatarMotionFrame[25]=10
vars.avatarMotionFrame[26]=8
vars.avatarMotionFrame[27]=6
vars.avatarMotionFrame[28]=6
vars.avatarMotionFrame[29]=8
vars.avatarMotionFrame[30]=2
vars.avatarMotionFrame[31]=5
vars.avatarMotionFrame[32]=2
vars.avatarMotionFrame[33]=1
vars.avatarMotionFrame[34]=5
vars.avatarMotionFrame[35]=5
vars.avatarMotionFrame[36]=4
vars.avatarMotionFrame[37]=7
vars.avatarMotionFrame[38]=6
vars.avatarMotionFrame[39]=9
vars.avatarMotionFrame[40]=4
vars.avatarMotionFrame[41]=7
vars.avatarMotionFrame[42]=6
vars.avatarMotionFrame[43]=5
vars.avatarMotionFrame[44]=1
vars.avatarMotionFrame[45]=4
vars.avatarMotionFrame[46]=2
vars.avatarMotionFrame[47]=7
vars.avatarMotionFrame[48]=8
vars.avatarMotionFrame[49]=5
vars.avatarMotionFrame[50]=8
vars.avatarMotionFrame[51]=6
vars.avatarMotionFrame[52]=7
vars.avatarMotionFrame[53]=4
vars.avatarMotionFrame[54]=7
vars.avatarMotionFrame[55]=4
vars.avatarMotionFrame[56]=5
vars.avatarMotionFrame[57]=9
vars.avatarMotionFrame[58]=3
vars.avatarMotionFrame[59]=5
vars.avatarSaveIsValid=1
vars.playerType=PlayerType.AVATAR
vars.playerCamoType=PlayerCamoType.BATTLEDRESS
vars.handEquip=TppEquip.EQP_HAND_KILL_ROCKET
vars.playerFaceEquipId=1
vars.itemLevels[TppEquip.EQP_SUIT-TppEquip.EQP_IT_InstantStealth]=1
local e={{equipId=TppEquip.EQP_WP_30235,partsInfo={barrel=TppEquip.BA_30214,ammo=TppEquip.AM_30232,stock=TppEquip.SK_30205,muzzle=TppEquip.MZ_30232,muzzleOption=TppEquip.MO_30235,rearSight=TppEquip.ST_30202,frontSight=TppEquip.ST_30114,option1=TppEquip.LT_40103,option2=TppEquip.LS_30104,underBarrel=TppEquip.UB_50002,underBarrelAmmo=TppEquip.AM_50002}},{equipId=TppEquip.EQP_WP_60317,partsInfo={barrel=TppEquip.BA_30044,ammo=TppEquip.AM_30102,stock=TppEquip.SK_60205,muzzle=TppEquip.MZ_30213,muzzleOption=TppEquip.MO_30105,rearSight=TppEquip.ST_50303,option1=TppEquip.LT_30025,option2=TppEquip.LS_30104,underBarrel=TppEquip.UB_40043,underBarrelAmmo=TppEquip.AM_40001}},{equipId=TppEquip.EQP_WP_20215,partsInfo={ammo=TppEquip.AM_20106,stock=TppEquip.SK_20216,muzzleOption=TppEquip.MO_20205,rearSight=TppEquip.ST_60102,option1=TppEquip.LS_10415}}}GameObject.SendCommand({type="TppPlayer2",index=PlayerInfo.GetLocalPlayerIndex()},{id="DEBUG_ChangeChimeraWeapon",chimeraInfo=e})GameObject.SendCommand({type="TppPlayer2",index=PlayerInfo.GetLocalPlayerIndex()},{id="DEBUG_ChangeEquip",equipId=TppEquip.EQP_HAND_KILL_ROCKET})end
function o.QARELEASE_DEBUG_Init()local e
do
return
end
e.AddDebugMenu("LuaSystem","showSysVars","bool",gvars,"DEBUG_showSysVars")e.AddDebugMenu("LuaSystem","gameStatus","bool",gvars,"DEBUG_showGameStatus")mvars.qaDebug.forceCheckPointSave=false
e.AddDebugMenu("LuaSystem","ForceCheckPointSave","bool",mvars.qaDebug,"forceCheckPointSave")mvars.qaDebug.showWeaponVars=false
e.AddDebugMenu("LuaSystem","ShowWeaponVars","bool",mvars.qaDebug,"showWeaponVars")mvars.qaDebug.showPlayerPartsType=false
e.AddDebugMenu("LuaSystem","ShowPlayerPartsType","bool",mvars.qaDebug,"showPlayerPartsType")mvars.qaDebug.setFobForGPU=false
e.AddDebugMenu("LuaSystem","setFobForGPU","bool",mvars.qaDebug,"setFobForGPU")mvars.qaDebug.showEventTask=false
e.AddDebugMenu("LuaUI","showEventTask","bool",mvars.qaDebug,"showEventTask")mvars.qaDebug.showOnlineChallengeTask=0
e.AddDebugMenu("LuaUI","showOnlineChallengeTask","int32",mvars.qaDebug,"showOnlineChallengeTask")mvars.qaDebug.showOnTaskVersion=false
e.AddDebugMenu("LuaUI","showOnTaskVersion","bool",mvars.qaDebug,"showOnTaskVersion")end
function o.QAReleaseDebugUpdate()local n=svars
local r=mvars
local e=(nil).Print
local a=(nil).NewContext()if r.seq_doneDumpCanMissionStartRefrainIds then
e(a,{1,0,0},"TppSequence: Mission.CanStart() wait is time out!\nPlease screen shot [Mission > ViewStartRefrain > true] , [Pause > ShowFlags > true] and [Pause > ShowInstances > true]")end
if(gvars.usingNormalMissionSlot==false)and(not(((vars.missionCode==10115)or(vars.missionCode==50050))or(TppMission.IsHelicopterSpace(vars.missionCode))))then
e(a,{1,.5,.5},"Now gvars.usingNormalMissionSlot is false, but not emergency mission. Call scripter!!!!!!")end
if(vars.fobSneakMode==FobMode.MODE_SHAM)and(not((vars.missionCode==50050)or(TppMission.IsHelicopterSpace(vars.missionCode))))then
e(a,{1,.5,.5},"Now vars.fobSneakMode isFobMode.MODE_SHAM, but not fob mission. Call scripter!!!!!!")end
if TppSave.DEBUG_EraseAllGameDataCounter then
if TppSave.DEBUG_EraseAllGameDataCounter>0 then
e(a,{1,.5,.5},"TppSave.EraseAllGameDataSaveRequest : erase game data save request!")TppSave.DEBUG_EraseAllGameDataCounter=TppSave.DEBUG_EraseAllGameDataCounter-Time.GetFrameTime()else
TppSave.DEBUG_EraseAllGameDataCounter=nil
end
end
if r.qaDebug.forceCheckPointSave then
r.qaDebug.forceCheckPointSave=false
TppMission.UpdateCheckPoint{ignoreAlert=true,atCurrentPosition=true}end
if gvars.DEBUG_showSysVars then
local o=o.DEBUG_GetSysVarsLog()e(a,{.5,.5,1},"LuaSystem showSysVars")for r,o in ipairs(o)do
e(a,o)end
local o={[FobMode.MODE_ACTUAL]="MODE_ACTUAL",[FobMode.MODE_SHAM]="MODE_SHAM",[FobMode.MODE_VISIT]="MODE_VISIT",[FobMode.MODE_NONE]="MODE_NONE"}e(a,"vars.fobSneakMode = "..tostring(o[vars.fobSneakMode]))local o=TppScriptVars.GetVarValueInSlot(TppDefine.SAVE_SLOT.MB_MANAGEMENT,"vars","mbmTppGmp",0)e(a,"GMP(inSlot) = "..tostring(o))local o=TppScriptVars.GetVarValueInSlot(TppDefine.SAVE_SLOT.MB_MANAGEMENT,"vars","mbmTppHeroicPoint",0)e(a,"HeroicPoint(inSlot) = "..tostring(o))e(a,"killCount = "..tostring(n.killCount))e(a,"totalKillCount = "..tostring(gvars.totalKillCount))end
if gvars.DEBUG_showGameStatus then
e(a,"")e(a,{.5,.5,1},"LuaSystem gameStatus")for o,r in pairs(TppDefine.GAME_STATUS_TYPE_ALL)do
local r=TppGameStatus.IsSet("TppMain.lua",o)if r then
e(a," statusType = "..(tostring(o)..(", IsSet = "..tostring(r))))end
end
local o=TppGameStatus.IsSet("TppMain.lua","S_IS_BLACK_LOADING")if o then
e(a," statusType = "..(tostring"S_IS_BLACK_LOADING"..(", IsSet = "..tostring(o))))end
e(a,"UIStatus")local o={{CallMenu="INVALID"},{PauseMenu="INVALID"},{EquipHud="INVALID"},{EquipPanel="INVALID"},{CqcIcon="INVALID"},{ActionIcon="INVALID"},{AnnounceLog="SUSPEND_LOG"},{AnnounceLog="INVALID_LOG"},{BaseName="INVALID"},{Damage="INVALID"},{Notice="INVALID"},{HeadMarker="INVALID"},{WorldMarker="INVALID"},{HudText="INVALID"},{GmpInfo="INVALID"},{AtTime="INVALID"},{InfoTypingText="INVALID"},{ResourcePanel="SHOW_IN_HELI"}}for r,o in pairs(o)do
for r,o in pairs(o)do
if(TppUiStatusManager.CheckStatus(r,o)==true)then
e(a,string.format(" UI = %s, Status = %s",r,o))end
end
end
end
if r.qaDebug.showWeaponVars then
local o={"PRIMARY_HIP","PRIMARY_BACK","SECONDARY"}e(a,{.5,.5,1},"LuaSystem WeaponVars")for o,r in ipairs(o)do
local o=TppDefine.WEAPONSLOT[r]e(a,string.format("Slot:%16s : vars.initWeapons = %04d, vars.weapons = %04d",r,vars.initWeapons[o],vars.weapons[o]))end
for o=0,7 do
e(a,string.format("Slot:%d : vars.supportWeapons = %04d, vars.initSupportWeapons = %04d, gvars.ply_lastWeaponsUsingTemp = %04d",o,vars.supportWeapons[o],vars.initSupportWeapons[o],gvars.ply_lastWeaponsUsingTemp[o+TppDefine.WEAPONSLOT.SUPPORT_0]))end
for o=0,7 do
e(a,string.format("Slot:%d : vars.items = %04d, vars.initItems = %04d, gvars.ply_lastItemsUsingTemp = %04d",o,vars.items[o],vars.initItems[o],gvars.ply_lastItemsUsingTemp[o]))end
end
if r.qaDebug.showPlayerPartsType then
e(a,{.5,.5,1},"LuaSystem ShowPlayerPartsType")e(a,"gvars.ply_isUsingTempPlayerType = "..tostring(gvars.ply_isUsingTempPlayerType))e(a,string.format("vars.playerPartsType = %04d, gvars.ply_lastPlayerPartsTypeUsingTemp = %04d",vars.playerPartsType,gvars.ply_lastPlayerPartsTypeUsingTemp))e(a,string.format("vars.playerCamoType = %04d, gvars.ply_lastPlayerCamoTypeUsingTemp = %04d",vars.playerCamoType,gvars.ply_lastPlayerCamoTypeUsingTemp))e(a,string.format("vars.playerType = %04d, gvars.ply_lastPlayerTypeUsingTemp = %04d",vars.playerType,gvars.ply_lastPlayerTypeUsingTemp))end
if r.qaDebug.gotFobStatusCount then
e(a,{.5,.5,1},">> Done TppServerManager.GetFobStatus()")r.qaDebug.gotFobStatusCount=r.qaDebug.gotFobStatusCount+1
if r.qaDebug.gotFobStatusCount>120 then
r.qaDebug.gotFobStatusCount=nil
end
end
if r.qaDebug.setFobForGPU then
r.qaDebug.setFobForGPU=false
o.DEBUG_FobGPU()end
if r.qaDebug.showEventTask then
if not r.ui_eventTaskDefine then
r.qaDebug.showEventTask=false
return
end
e(a,{.5,.5,1},"LuaUI ShowEventTask")local function s(n,o,s)local t
if FobUI.IsCompleteEventTask(o,s)then
t=" o "else
t=" x "end
local i=n[o]and n[o].detectType
if i then
local r=r.qaDebug.debugEventTaskTextTable and r.qaDebug.debugEventTaskTextTable[i]if not r then
r="threshold is"end
e(a,string.format("   Task %1d : [%s] %s %06.2f : ( Current %06.2f )",o,t,r,n[o].threshold,FobUI.GetCurrentEventTaskValue(o,s)))end
end
e(a,{.5,1,.5},"FobSneak eventTask")for a=0,7 do
local e=r.ui_eventTaskDefine.sneak
if e and e[a]then
s(e,a,true)end
end
e(a,{.5,1,.5},"FobDefence eventTask")for a=0,7 do
local e=r.ui_eventTaskDefine.defence
if e and e[a]then
s(e,a,false)end
end
end
if(r.qaDebug.showOnlineChallengeTask>0)then
e(a,{.5,.5,1},"LuaUI ShowOnlineChallengeTask")if not OnlineChallengeTask then
e(a,"OnlineChallengeTask.lua is not loaded now. Go to mission!")elseif TppGameMode.GetUserMode()~=TppGameMode.U_KONAMI_LOGIN then
e(a,"Now off-line mode, please connect online!")elseif not r.ui_onlineChallengeTaskDefine then
e(a,"Not defined online challenge task!")else
local t=r.qaDebug.debugOnlineChallengeTaskMissionList[r.qaDebug.showOnlineChallengeTask]if not t then
r.qaDebug.showOnlineChallengeTask=0
return
end
local function i(n,o)local t
if TppChallengeTask.IsCompletedOnlineTask(o)then
t=" o "else
t=" x "end
local s=n[o]and n[o].detectType
if s then
local r=r.qaDebug.debugOnlineChallengeTaskTextTable and r.qaDebug.debugOnlineChallengeTaskTextTable[s]if not r then
r="threshold is"end
e(a,string.format("   Task %02d : [%s] %s %06.2f : ( Current %06.2f )",o,t,r,n[o].threshold,OnlineChallengeTask.GetCurrentTaskValue(o)))end
end
e(a,string.format("missionCode = %05d",t))for a=0,23 do
local e=r.ui_onlineChallengeTaskDefine
if e[a]and(e[a].missionCode==t)then
i(e,a,true)end
end
end
end
if r.qaDebug.showOnTaskVersion then
e(a,{.5,.5,1},"LuaUI ShowOnlineChallengeTaskVersion")e(a,string.format("   ServerVersion : %d",TppNetworkUtil.GetOnlineChallengeTaskVersion()))e(a,string.format("    LocalVersion : %d",gvars.localOnlineChallengeTaskVersion))end
end
function o.Print2D(e)if(e==nil)then
return
end
local r=e.showTime or(3*30)local n=e.xPos or 25
local s=e.yPos or 425
local t=e.size or 20
local a=e.color or"white"local e=e.text or""a=o._GetColor(a)GrxDebug.Print2D{life=r,x=n,y=s,size=t,color=a,args={e}}end
function o.DEBUG_MakeUserSVarList(e)if not n(e)then
return
end
mvars.dbg_userSaveVarList={}for a,e in pairs(e)do
table.insert(mvars.dbg_userSaveVarList,e.name)end
end
function o.AddReturnToSelector(e)e:AddItem("< return",DebugSelector.Pop)end
function o.DEBUG_Init()mvars.debug.returnSelect=false;(nil).AddDebugMenu(" Select","Return select","bool",mvars.debug,"returnSelect")mvars.debug.showSVars=false;(nil).AddDebugMenu("LuaMission","DBG.showSVars","bool",mvars.debug,"showSVars")mvars.debug.showMVars=false;(nil).AddDebugMenu("LuaMission","DBG.showMVars","bool",mvars.debug,"showMVars")mvars.debug.showMissionArea=false;(nil).AddDebugMenu("LuaMission","MIS.missionArea","bool",mvars.debug,"showMissionArea")mvars.debug.showClearState=false;(nil).AddDebugMenu("LuaMission","MIS.clearState","bool",mvars.debug,"showClearState")mvars.debug.openEmergencyTimer=false;(nil).AddDebugMenu("LuaMission","MIS.openEmergencyTimer","bool",mvars.debug,"openEmergencyTimer")mvars.debug.closeEmergencyTimer=false;(nil).AddDebugMenu("LuaMission","MIS.closeEmergencyTimer","bool",mvars.debug,"closeEmergencyTimer")mvars.debug.showDebugPerfCheck=false;(nil).AddDebugMenu("LuaSystem","DBG.showPerf","bool",mvars.debug,"showDebugPerfCheck")mvars.debug.showSysSVars=false;(nil).AddDebugMenu("LuaSystem","DBG.showSysSVars","bool",mvars.debug,"showSysSVars")mvars.debug.showSysMVars=false;(nil).AddDebugMenu("LuaSystem","DBG.showSysMVars","bool",mvars.debug,"showSysMVars")mvars.debug.AnimalBlock=false;(nil).AddDebugMenu("LuaSystem","DBG.AnimalBlock","bool",mvars.debug,"AnimalBlock")mvars.debug.ply_rotCheck=0;(nil).AddDebugMenu("LuaSystem","PLY.rotCheck","int32",mvars.debug,"ply_rotCheck")mvars.debug.ply_intelTrap=false;(nil).AddDebugMenu("LuaSystem","PLY.intelTrap","bool",mvars.debug,"ply_intelTrap")mvars.debug.enableAllMessageLog=false;(nil).AddDebugMenu("LuaMessage","enableAllMessageLog","bool",mvars.debug,"enableAllMessageLog")mvars.debug.showSubscriptMessageTable=0;(nil).AddDebugMenu("LuaMessage","subScripts","int32",mvars.debug,"showSubscriptMessageTable")mvars.debug.showSequenceMessageTable=0;(nil).AddDebugMenu("LuaMessage","sequence","int32",mvars.debug,"showSequenceMessageTable")mvars.debug.showLocationMessageTable=0;(nil).AddDebugMenu("LuaMessage","location","int32",mvars.debug,"showLocationMessageTable")mvars.debug.showLibraryMessageTable=0;(nil).AddDebugMenu("LuaMessage","library","int32",mvars.debug,"showLibraryMessageTable")mvars.debug.showWeaponSelect=false;(nil).AddDebugMenu("LuaWeapon","showWeaponSelect","bool",mvars.debug,"showWeaponSelect")mvars.debug.weaponCategory=1;(nil).AddDebugMenu("LuaWeapon","category","int32",mvars.debug,"weaponCategory")mvars.debug.weaponCategoryList={{"Develop:Hundgan",8,{"EQP_WP_1"}},{"Develop:Submachingun",8,{"EQP_WP_2"}},{"Develop:AssaultRifle",8,{"EQP_WP_3"}},{"Develop:Shotgun",8,{"EQP_WP_4"}},{"Develop:Granader",8,{"EQP_WP_5"}},{"Develop:SniperRifle",8,{"EQP_WP_6"}},{"Develop:MachineGun",8,{"EQP_WP_7"}},{"Develop:Missile",8,{"EQP_WP_8"}},{"EnemyWeapon",8,{"EQP_WP_W","EQP_WP_E","EQP_WP_Q","EQP_WP_C"}},{"SupportWeapon",7,{"EQP_SWP"}},{"Equipment",7,{"EQP_IT_"}}}mvars.debug.selectedWeaponId=0;(nil).AddDebugMenu("LuaWeapon","weaponSelect","int32",mvars.debug,"selectedWeaponId")mvars.debug.enableWeaponChange=false;(nil).AddDebugMenu("LuaWeapon","enableWeaponChange","bool",mvars.debug,"enableWeaponChange")end
function o.DEBUG_OnReload(a)i={}g={}p={}l=0
s=0
o.PERF_CHECK_TYPE=Tpp.Enum(o.PERF_CHECK_TYPE)local e={}u(e,TppDbgStr32.DEBUG_strCode32List)for o,a in pairs(a)do
if a.DEBUG_strCode32List then
u(e,a.DEBUG_strCode32List)end
end
TppDbgStr32.DEBUG_RegisterStrcode32invert(e)end
function o.DebugUpdate()
	local t=svars
	local e=mvars
	local n=e.debug
	local r=(nil).Print
	local a=(nil).NewContext()
	if(not TppUiCommand.IsEndMissionTelop())then
		r(a,{.5,.5,1},"Now showing result.")
	end
	if gvars.needWaitMissionInitialize then
		r(a,{.5,.5,1},"Now neew wait mission initialize.")end
	if n.returnSelect then
		TppUI.FadeOut(0)
		TppSave.ReserveVarRestoreForMissionStart()
		TppMission.SafeStopSettingOnMissionReload()
		tpp_editor_menu2.StartTestStage(6e4)
		n.returnSelect=false
	end
	if n.showSVars then
		r(a,"")
		r(a,{.5,.5,1},"LuaMission DBG.showSVars")
		for o,e in pairs(e.dbg_userSaveVarList)do
			r(a,string.format(" %s = %s",tostring(e),tostring(t[e])))
		end
	end
	if n.showMVars then
		r(a,{.5,.5,1},"LuaMission DBG.showMVars")
		for e,o in pairs(e)do
			r(a,string.format(" %s = %s",tostring(e),tostring(o)))end
	end
	if n.showMissionArea then
		r(a,{.5,.5,1},"LuaMission MIS.missionArea")
		local o
		if e.mis_isOutsideOfMissionArea then
			o="Outside"else
			o="Inside"end
		r(a,"outerZone : "..o)
		if e.mis_isAlertOutOfMissionArea then
	o="Outside"else
	o="Inside"end
	r(a,"innerZone : "..o)if e.mis_isOutsideOfHotZone then
	o="Outside"else
	o="Inside"end
	r(a,"hotZone : "..o)r(a,"hotZone clear check : isNotAlert = "..(tostring(e.debug.notHotZone_isNotAlert)..(", isPlayerStatusNormal = "..(tostring(e.debug.notHotZone_isPlayerStatusNormal)..(", isNotHelicopter = "..tostring(e.debug.notHotZone_isNotHelicopter))))))r(a,"Mission clear timer: "..tostring(v"Timer_OutsideOfHotZoneCount"))r(a,{.5,1,.5},"Recent all target status")local e=e.debug.checkedTargetStatus or{}for e,o in pairs(e)do
	r(a,"  TargetName = "..(e..(" : "..o)))end
	end
	if e.debug.showClearState then
	r(a,{.5,.5,1},"LuaMission MIS.showClearState")r(a,"missionClearState = "..tostring(TppDefine.MISSION_CLEAR_STATE_LIST[gvars.mis_missionClearState+1]))end
	if e.debug.openEmergencyTimer then
	e.debug.openEmergencyTimer=false
	if e.mis_openEmergencyMissionTimerName then
	GkEventTimerManager.Stop(e.mis_openEmergencyMissionTimerName)GkEventTimerManager.Start(e.mis_openEmergencyMissionTimerName,1)end
	end
	if e.debug.closeEmergencyTimer then
	e.debug.closeEmergencyTimer=false
	if e.mis_closeEmergencyMissionTimerName then
	GkEventTimerManager.Stop(e.mis_closeEmergencyMissionTimerName)GkEventTimerManager.Start(e.mis_closeEmergencyMissionTimerName,1)end
	end
	if n.showSysSVars then
	r(a,"")r(a,{.5,.5,1},"LuaSystem DBG.showSysSVars")for e,o in pairs(t.__as)do
	if(o<=1)then
	r(a,string.format(" %s = %s",tostring(e),tostring(t[e])))else
	r(a,string.format(" %s = %s",tostring(e),tostring(o)))for o=0,(o-1)do
	r(a,string.format("   %s[%d] = %s",tostring(e),o,tostring(t[e][o])))end
	end
	end
	end
	if n.showDebugPerfCheck then
	r(a,{.5,.5,1},"LuaSystem DBG.showPerf")for n,e in pairs(p)do
	r(a," perf["..(o.PERF_CHECK_TYPE[n]..("] = "..e)))end
	end
	if e.debug.AnimalBlock then
	r(a,{.5,.5,1},"LuaSystem DBG.AnimalBlock")local t,n=Tpp.GetCurrentStageSmallBlockIndex()r(a,string.format("current block position (x,y) = (%03d, %03d)",t,n))r(a,"Load animal block area = "..tostring(e.animalBlockAreaName))local t=ScriptBlock.GetScriptBlockId"animal_block"local n
	if t~=ScriptBlock.SCRIPT_BLOCK_ID_INVALID then
	n=ScriptBlock.GetScriptBlockState(t)end
	local t
	if n==ScriptBlock.SCRIPT_BLOCK_STATE_EMPTY then
	t="SCRIPT_BLOCK_STATE_EMPTY"elseif n==ScriptBlock.SCRIPT_BLOCK_STATE_PROCESSING then
	t="SCRIPT_BLOCK_STATE_PROCESSING"elseif n==ScriptBlock.SCRIPT_BLOCK_STATE_INACTIVE then
	t="SCRIPT_BLOCK_STATE_INACTIVE"elseif n==ScriptBlock.SCRIPT_BLOCK_STATE_ACTIVE then
	t="SCRIPT_BLOCK_STATE_ACTIVE"end
	r(a,"animal block state : "..tostring(t))if e.animalBlockScript then
	r(a,"animalBlockScript exist")local n=""if e.animalBlockScript.OnMessage then
	n="exist"else
	n="  not"end
	local t=""if e.animalBlockScript.OnReload then
	t="exist"else
	t="  not"end
	r(a,"OnMessage "..(tostring(n)..(" OnReload "..tostring(t))))o.ShowMessageTable(a,"MessageTable",e.animalBlockScript.messageExecTable)else
	if n==ScriptBlock.SCRIPT_BLOCK_STATE_INACTIVE or n==ScriptBlock.SCRIPT_BLOCK_STATE_ACTIVE then
	r(a,{1,0,0},"this data is invalid!!!! please check data!!!")else
	r(a,"animalBlockScript   not")end
	end
	end
	if e.debug.ply_intelTrap then
	r(a,{.5,.5,1},"LuaSystem PLY.intelTrap")for e,o in pairs(e.ply_intelTrapInfo)do
	if Tpp.IsTypeString(e)then
	r(a,{.5,1,.5},"intelName = "..tostring(e))for o,e in pairs(o)do
	r(a,tostring(o)..(" = "..tostring(e)))end
	end
	end
	end
	if(n.showSubscriptMessageTable>0)then
	r(a,{.5,.5,1},"LuaMessage subScripts")local r={"sequence","enemy","demo","radio","sound"}local r=r[e.debug.showSubscriptMessageTable]if r then
	local n=TppMission.GetMissionName()..("_"..r)if e.rad_subScripts[r]then
	local e=e.rad_subScripts[r]._messageExecTable
	o.ShowMessageTable(a,n,e)end
	end
	end
	if(n.showSequenceMessageTable>0)then
	r(a,{.5,.5,1},"LuaMessage sequence")local r=TppSequence.GetSequenceNameWithIndex(e.debug.showSequenceMessageTable)if e.seq_sequenceTable then
	local e=e.seq_sequenceTable[r]if e then
	local e=e._messageExecTable
	o.ShowMessageTable(a,r,e)end
	end
	end
	if(n.showLocationMessageTable>0)then
	r(a,{.5,.5,1},"LuaMessage location")end
	if(n.showLibraryMessageTable>0)then
	r(a,{.5,.5,1},"LuaMessage library")local e=Tpp._requireList[n.showLibraryMessageTable]local r=_G[e].messageExecTable
	o.ShowMessageTable(a,e,r)end
	if e.debug.showWeaponSelect then
	r(a,{.5,.5,1},"LuaWeapon")if e.debug.weaponCategory<1 then
	e.debug.weaponCategory=1
	end
	if e.debug.weaponCategory>#e.debug.weaponCategoryList then
	e.debug.weaponCategory=#e.debug.weaponCategoryList
	end
	local o=e.debug.weaponCategory
	local t=e.debug.weaponCategoryList[e.debug.weaponCategory]r(a,{.5,1,.5},"Current weapon category : "..t[1])
	local l,p
	local o,n,i=0,1,5
	if e.debug.selectedWeaponId>0 then
	n=e.debug.selectedWeaponId
	end
	for e,d in pairs(TppEquip)do
		local u=string.sub(e,1,t[2])local s=false
		for a,e in ipairs(t[3])do
			if u==e then
				s=true
			end
		end
		if s then
			o=o+1
			if(n-o)<=i then
				if o==n then
					l=d
					p=e
					r(a,{.5,1,.5},"> EquipId = TppEquip."..e)else
					r(a,"  EquipId = TppEquip."..e)
				end
			end
			if o==(n+i)then
				break
			end
		end
	end
	if e.debug.enableWeaponChange then
	GameObject.SendCommand({type="TppPlayer2",index=PlayerInfo.GetLocalPlayerIndex()},{id="DEBUG_ChangeEquip",equipId={l}})
	e.debug.enableWeaponChange=false
	end
	end
	end
function o.ShowMessageTable(e,r,a)local o=(nil).Print
o(e,{.5,1,.5},r)if a==nil then
return
end
for r,a in pairs(a)do
local r=d(r)if a then
for n,a in pairs(a)do
local n=d(n)if a.func then
o(e,{1,1,1},r..(" : "..(n..(" : "..tostring(a.func)))))end
local a=a.sender
if a then
for t,a in pairs(a)do
o(e,{1,1,1},r..(" : "..(n..(" : Sender = "..(d(t)..(" : "..tostring(a)))))))end
end
end
end
end
end
function o.PerfCheckStart(a)local e=o
if((a<=0)and(a>#e.PERF_CHECK_TYPE))then
return
end
if(a==e.PERF_CHECK_TYPE.OnUpdate)then
if(i[e.PERF_CHECK_TYPE.OnUpdate]~=nil)then
l=l+(os.clock()-i[e.PERF_CHECK_TYPE.OnUpdate])end
end
i[a]=os.clock()end
function o.PerfCheckEnd(e,a)local n=mvars
local r=o
if((e<=0)and(e>#r.PERF_CHECK_TYPE))then
return
end
local t=a or""local a=0
local o=os.clock()-i[e]if(e==r.PERF_CHECK_TYPE.OnUpdate)then
if(l<m)then
if(o>s)then
s=o
end
else
l=0
s=o
end
a=s
else
a=o
end
p[e]=string.format("%4.2f",a*1e3)..("ms."..t)if n.debug and n.debug.showDebugPerfCheck then
if(a>1/60)then
else
if(e~=r.PERF_CHECK_TYPE.OnUpdate)then
end
end
end
end
function o.ErrorNotSupportYet(e)end
function o._GetColor(e)local e=o.Colors[e]if(e==nil)then
return nil
end
return e
end
return o