local t = {}

local function Set (list)
  local set = {}
  for _, l in ipairs(list) do set[l] = true end
  return set
end

local function hook(fun)
    local info = debug.getinfo(2)
    -- RegisterDeployMissionParam ??
    -- UpdateDeliveryWarp
    local items = Set { 
    		"RegisterStaffTypePeaks", 
    		"RegisterRandomRange", 
    		"RegisterStaffBaseRankRange", 
    		"Update",
    		"?",
    		"(for generator)",
    		"RegisterSectionClusterBuildParam",
    		"MainOnUpdate",
    		"GetRawElapsedTimeSinceStartUp",
    		"next",
    		"band",
    		-- "ProcessPlayRequest",
    		-- "ProcessFinishWaitRequestInfo",
    		"QuestBlockOnUpdate",
    		"r",
    		"RegCstDev",
    		"RegenerateGameObjectQuestStaffParameter",
    		"RegFlwDev",
    		"RegisterAnimalParam",
    		"RegisterAssaultDropLandingZone",
    		"RegisterCommandClusterBuildParam",
    		"pairs",
    		"p",
    		"n",
    		"IsTypeTable",'Vector3','VarSaveMbMissionStartSyncEnd','v',
    		'tonumber','t',"StrCode32",'status',
    		"SkipTextureLoadingWait",'ShowAccessIconContinue','s','ResumeMbSaveCoroutine', 'resume',
    		'RegistWeaponPartsInfo','RegistPartsInclusionInfo_ReceiverBase','RegistPartsInclusionInfo','RegisterStageGimmickParam',
    		'RegisterResourceParam','l','s','IsSynchronizeBusy','IsInvoking','IsEnqueuedSaveData','IsEndedSyncControl',
    		'IsSessionConnect',
    		'GetSyncMissionStatus',
    		'GetQuestStepTable',
    		'IsCheckingPatchDlc'
    	}
    if type(info.name)=='number' then
    	a = string.format("_n %n\n",info.name)
    	-- TppUiCommand.AnnounceLogView(a)
    	if write_to_file == true then
    		debugfile:write(a)
    	end
    elseif type(info.name)=='string' then
    	-- if not items[info.name] then
    		local idx = 1
    		local b = ''
    		while true do
    			local key, value = debug.getlocal(2, idx)
    			if ln == nil then
    				break
    			else
    				b = b..key..':'..value..'\t'
    			end
    			idx = 1 + idx
    		end
    			
    		a = string.format("%s", info.name)
    		-- text = string.format("_s_%s : %s\n", info.name, b)
    		text = string.format("_s_%s : %s\n", info.name, ' ')
    		-- if not items[a] then
    			if write_to_file == true then
    				-- debugfile:write(string.format('!mvars! %s\n',tostring(mvars.mis_orderBoxName)))
    				-- debugfile:write(string.format('!gvars! %s\n',tostring(gvars.mis_orderBoxName)))
    				debugfile:write(text)
    				listoffunctions[a] = true
    			end
    		-- end
    		-- TppUiCommand.AnnounceLogView(a)
    	-- end
    end
    -- if info.name == 'RequestToSupplyCbox' then
    -- 	TppUiCommand.AnnounceLogView("Caught you")
    --     persistence.store("C:\\dump.txt", _G);
    --     -- for k,v in pairs(info) do
    --     -- 	TppUiCommand.AnnounceLogView(string.format('%s - %s',k,v))
    --     -- end
    -- end
end

local function dump(t,i)
 seen[t]=true
 local s={}
 local n=0
 for k in pairs(t) do
     n=n+1 s[n]=k
 end
 table.sort(s)
 for k,v in ipairs(s) do
     local f = io.open('C:\\dump.txt','a')
     f:write(string.format('- %s %s',i,v))
     v=t[v]
     if type(v)=="table" and not seen[v] then
         dump(v,i.."\t")
     end
     f:close()
 end
end


local function getparams(f)
 -- TppUiCommand.AnnounceLogView('getparams')
 -- TppUiCommand.AnnounceLogView(string.format('version %s',_VERSION))
 local co = coroutine.create(f)
 local params = {}
 local debug = require 'debug'
 debug.sethook(co, function()
     local i, k = 1, debug.getlocal(co, 2, 1)
     while k do
         TppUiCommand.AnnounceLogView('----')
         if k ~= "(*temporary)" then
             table.insert(params, k)
             debugfile:write(string.format('__param__%s', tostring(k) ))
         end
         i = i+1
         k = debug.getlocal(co, 2, i)
     end
     error("~~end~~")
 end, "c")
 local res, err = coroutine.resume(co)
 if res then
     TppUiCommand.AnnounceLogView("The function provided defies the laws of the universe.")
 elseif string.sub(tostring(err), -7) ~= "~~end~~" then
     TppUiCommand.AnnounceLogView("The function failed with the error: "..tostring(err))
 end
 return params
end

t.getparams = getparams
t.hook = hook
t.dump = dump
return t