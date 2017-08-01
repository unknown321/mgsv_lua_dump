local a={}local e=EnemyFova.MAX_REALIZED_COUNT
local n=0
local o=1
local t=2
local _=3
local s=4
local p=5
local f=6
local m="/Assets/tpp/parts/chara/prs/prs2_main0_def_v00.parts"local r="/Assets/tpp/parts/chara/prs/prs5_main0_def_v00.parts"local y="/Assets/tpp/parts/chara/prs/prs3_main0_def_v00.parts"local I="/Assets/tpp/parts/chara/prs/prs6_main0_def_v00.parts"local E="/Assets/tpp/parts/chara/dds/dds5_main0_def_v00.parts"local c={female={TppEnemyBodyId.dlf_enef0_def,TppEnemyBodyId.dlf_enef1_def,TppEnemyBodyId.dlf_enef2_def,TppEnemyBodyId.dlf_enef3_def,TppEnemyBodyId.dlf_enef4_def,TppEnemyBodyId.dlf_enef5_def,TppEnemyBodyId.dlf_enef6_def,TppEnemyBodyId.dlf_enef7_def,TppEnemyBodyId.dlf_enef8_def,TppEnemyBodyId.dlf_enef9_def,TppEnemyBodyId.dlf_enef10_def,TppEnemyBodyId.dlf_enef11_def,TppEnemyBodyId.dlg_enef0_def,TppEnemyBodyId.dlg_enef1_def,TppEnemyBodyId.dlg_enef2_def,TppEnemyBodyId.dlg_enef3_def,TppEnemyBodyId.dlg_enef4_def,TppEnemyBodyId.dlg_enef5_def,TppEnemyBodyId.dlg_enef6_def,TppEnemyBodyId.dlg_enef7_def,TppEnemyBodyId.dlg_enef8_def,TppEnemyBodyId.dlg_enef9_def,TppEnemyBodyId.dlg_enef10_def,TppEnemyBodyId.dlg_enef11_def,TppEnemyBodyId.dlh_enef0_def,TppEnemyBodyId.dlh_enef1_def,TppEnemyBodyId.dlh_enef2_def,TppEnemyBodyId.dlh_enef3_def,TppEnemyBodyId.dlh_enef4_def,TppEnemyBodyId.dlh_enef5_def,TppEnemyBodyId.dlh_enef6_def,TppEnemyBodyId.dlh_enef7_def,TppEnemyBodyId.dlh_enef8_def,TppEnemyBodyId.dlh_enef9_def,TppEnemyBodyId.dlh_enef10_def,TppEnemyBodyId.dlh_enef11_def},male={TppEnemyBodyId.dlf_enem0_def,TppEnemyBodyId.dlf_enem1_def,TppEnemyBodyId.dlf_enem2_def,TppEnemyBodyId.dlf_enem3_def,TppEnemyBodyId.dlf_enem4_def,TppEnemyBodyId.dlf_enem5_def,TppEnemyBodyId.dlf_enem6_def,TppEnemyBodyId.dlf_enem7_def,TppEnemyBodyId.dlf_enem8_def,TppEnemyBodyId.dlf_enem9_def,TppEnemyBodyId.dlf_enem10_def,TppEnemyBodyId.dlf_enem11_def,TppEnemyBodyId.dlg_enem0_def,TppEnemyBodyId.dlg_enem1_def,TppEnemyBodyId.dlg_enem2_def,TppEnemyBodyId.dlg_enem3_def,TppEnemyBodyId.dlg_enem4_def,TppEnemyBodyId.dlg_enem5_def,TppEnemyBodyId.dlg_enem6_def,TppEnemyBodyId.dlg_enem7_def,TppEnemyBodyId.dlg_enem8_def,TppEnemyBodyId.dlg_enem9_def,TppEnemyBodyId.dlg_enem10_def,TppEnemyBodyId.dlg_enem11_def,TppEnemyBodyId.dlh_enem0_def,TppEnemyBodyId.dlh_enem1_def,TppEnemyBodyId.dlh_enem2_def,TppEnemyBodyId.dlh_enem3_def,TppEnemyBodyId.dlh_enem4_def,TppEnemyBodyId.dlh_enem5_def,TppEnemyBodyId.dlh_enem6_def,TppEnemyBodyId.dlh_enem7_def,TppEnemyBodyId.dlh_enem8_def,TppEnemyBodyId.dlh_enem9_def,TppEnemyBodyId.dlh_enem10_def,TppEnemyBodyId.dlh_enem11_def}}local T={[10010]=1,[10020]=1,[10030]=1,[10054]=1,[11054]=1,[10070]=1,[10080]=1,[11080]=1,[10100]=1,[10110]=1,[10120]=1,[10130]=1,[11130]=1,[10140]=1,[11140]=1,[10150]=1,[10200]=1,[11200]=1,[10280]=1,[30010]=1,[30020]=1}local i={[10081]={TppDefine.AFR_ARMOR.TYPE_RC},[10082]={TppDefine.AFR_ARMOR.TYPE_CFA},[11082]={TppDefine.AFR_ARMOR.TYPE_CFA},[10085]={TppDefine.AFR_ARMOR.TYPE_RC},[11085]={TppDefine.AFR_ARMOR.TYPE_RC},[10086]={TppDefine.AFR_ARMOR.TYPE_CFA},[10090]={TppDefine.AFR_ARMOR.TYPE_CFA},[11090]={TppDefine.AFR_ARMOR.TYPE_CFA},[10091]={TppDefine.AFR_ARMOR.TYPE_CFA},[11091]={TppDefine.AFR_ARMOR.TYPE_CFA},[10093]={TppDefine.AFR_ARMOR.TYPE_ZRS},[10121]={TppDefine.AFR_ARMOR.TYPE_CFA},[11121]={TppDefine.AFR_ARMOR.TYPE_CFA},[10171]={TppDefine.AFR_ARMOR.TYPE_CFA},[11171]={TppDefine.AFR_ARMOR.TYPE_CFA},[10195]={TppDefine.AFR_ARMOR.TYPE_CFA},[11195]={TppDefine.AFR_ARMOR.TYPE_CFA},[10211]={TppDefine.AFR_ARMOR.TYPE_CFA},[11211]={TppDefine.AFR_ARMOR.TYPE_CFA}}local d={[10020]={count=0},[10030]={count=0},[10033]={count=1,lang=t},[11033]={count=1,lang=t},[10036]={count=0},[11036]={count=0},[10040]={count=1,lang=s},[10041]={count=2,lang=t},[11041]={count=2,lang=t},[10043]={count=2,lang=s},[11043]={count=2,lang=s},[10044]={count=1,lang=t,overlap=true},[11044]={count=1,lang=t,overlap=true},[10045]={count=2,lang=t},[10050]={count=0},[11050]={count=0},[10052]={count=6,lang=f,overlap=true,ignoreList={40,41,42,43,44,45,46,47,48,49},modelNum=5},[11052]={count=6,lang=f,overlap=true,ignoreList={40,41,42,43,44,45,46,47,48,49},modelNum=5},[10054]={count=4,lang=o,overlap=true},[11054]={count=4,lang=o,overlap=true},[10070]={count=0},[10080]={count=0},[11080]={count=0},[10081]={count=0},[10082]={count=2,lang=p,overlap=true},[11082]={count=2,lang=p,overlap=true},[10085]={count=0},[11085]={count=0},[10086]={count=0},[10090]={count=0},[11090]={count=0},[10091]={count=1,lang=o,useHair=true,overlap=true},[11091]={count=1,lang=o,useHair=true,overlap=true},[10093]={count=0},[10100]={count=0},[10110]={count=0},[10115]={count=0},[11115]={count=0},[10120]={count=1,lang=o,overlap=true},[10121]={count=0},[11121]={count=0},[10130]={count=0},[11130]={count=0},[10140]={count=0},[11140]={count=0},[10145]={count=0},[10150]={count=0},[10151]={count=0},[11151]={count=0},[10171]={count=0},[11171]={count=0},[10156]={count=1,lang=t,overlap=true},[10195]={count=1,lang=p},[11195]={count=1,lang=p},[10200]={count=1,lang=p},[11200]={count=1,lang=p},[10240]={count=0},[10211]={count=4,lang=_,overlap=true},[11211]={count=4,lang=s,overlap=true},[10260]={count=0},[10280]={count=0}}a.S10030_FaceIdList={78,200,283,30,88,124,138,169,213,222,243,264,293,322,343}a.S10030_useBalaclavaNum=3
a.S10240_FemaleFaceIdList={394,351,373,456,463,455,511,502}a.S10240_MaleFaceIdList={195,144,214,6,217,83,273,60,87,71,256,201,290,178,102,255,293,165,85,18,228,12,65,134,31,132,161,342,107,274,184,226,153,247,344,242,56,183,54,126,223}local n={}local function l(n)function n:case(a,n)local e=self[a]or self.default
if e then
e(a,n)end
end
return n
end
function a.IsNotRequiredArmorSoldier(e)if T[e]~=nil then
return true
end
return false
end
function a.CanUseArmorType(n,e)local d={PF_A=TppDefine.AFR_ARMOR.TYPE_CFA,PF_B=TppDefine.AFR_ARMOR.TYPE_ZRS,PF_C=TppDefine.AFR_ARMOR.TYPE_RC}local e=d[e]if e==nil then
return true
end
local a=a.GetArmorTypeTable(n)for n,a in ipairs(a)do
if a==e then
return true
end
end
return false
end
function a.GetHostageCountAtMissionId(e)local a=0
if d[e]~=nil then
local e=d[e]if e~=nil then
if e.count~=nil then
return e.count
else
return a
end
else
return a
end
end
return a
end
function a.GetHostageLangAtMissionId(e)local a=o
if d[e]~=nil then
local e=d[e]if e~=nil then
if e.lang~=nil then
return e.lang
end
end
end
return a
end
function a.GetHostageUseHairAtMissionId(e)local a=false
if d[e]~=nil then
local e=d[e]if e~=nil then
if e.useHair~=nil then
return e.useHair
end
end
end
return a
end
function a.GetHostageIsFaceModelOverlap(e)local a=false
if d[e]~=nil then
local e=d[e]if e~=nil then
if e.overlap~=nil then
return e.overlap
end
end
end
return a
end
function a.GetHostageFaceModelCount(e)local a=2
if d[e]~=nil then
local e=d[e]if e~=nil then
if e.modelNum~=nil then
return e.modelNum
end
end
end
return a
end
function a.GetHostageIgnoreFaceList(e)local a={}if d[e]~=nil then
local e=d[e]if e~=nil then
if e.ignoreList~=nil then
return e.ignoreList
end
end
end
return a
end
function a.GetArmorTypeTable(e)if a.IsNotRequiredArmorSoldier(e)then
return{}end
if not TppLocation.IsMiddleAfrica()then
return{}end
local a={TppDefine.AFR_ARMOR.TYPE_ZRS}if i[e]~=nil then
local e=i[e]if e~=nil then
return e
end
end
return a
end
function a.SetHostageFaceTable(l)local i=a.GetHostageCountAtMissionId(l)local d=a.GetHostageLangAtMissionId(l)local r=0
if i>0 then
local n={}if d==o then
table.insert(n,3)local e=bit.rshift(gvars.hosface_groupNumber,8)%100
if e<40 then
table.insert(n,0)end
elseif d==t then
table.insert(n,0)elseif d==p then
table.insert(n,2)local e=bit.rshift(gvars.hosface_groupNumber,8)%100
if e<10 then
table.insert(n,0)end
elseif d==f then
table.insert(n,0)table.insert(n,1)r=1
elseif d==s then
table.insert(n,1)elseif d==_ then
table.insert(n,2)else
if TppLocation.IsAfghan()then
table.insert(n,0)elseif TppLocation.IsMiddleAfrica()then
table.insert(n,2)elseif TppLocation.IsMotherBase()then
table.insert(n,0)elseif TppLocation.IsMBQF()then
table.insert(n,0)elseif TppLocation.IsCyprus()then
table.insert(n,0)end
end
local c=a.GetHostageIsFaceModelOverlap(l)local T=a.GetHostageIgnoreFaceList(l)local f=a.GetHostageFaceModelCount(l)local r=TppSoldierFace.CreateFaceTable{race=n,needCount=i,maxUsedFovaCount=f,faceModelOverlap=c,ignoreFaceList=T,raceHalfMode=r}if r~=nil then
local t={}local d={}local n=#r
local a=e
if i<=n then
a=1
end
if(n>0)and(n<i)then
a=math.floor(i/n)+1
end
if a<=0 then
a=e
end
for n,e in ipairs(r)do
table.insert(t,{e,0,0,a})table.insert(d,e)end
local e=#d
if e>0 then
local e=gvars.hosface_groupNumber
TppSoldierFace.SetPoolTable{hostageFace=d,randomSeed=e}end
TppSoldierFace.OverwriteMissionFovaData{face=t}else
local a={}local n=gvars.hosface_groupNumber%9
if d==o then
table.insert(a,{25+n,0,0,e})elseif d==t then
table.insert(a,{100+n,0,0,e})elseif d==p then
table.insert(a,{210+n,0,0,e})elseif d==s then
table.insert(a,{9+n,0,0,e})elseif d==_ then
table.insert(a,{260+n,0,0,e})else
table.insert(a,{55+n,0,0,e})end
TppSoldierFace.OverwriteMissionFovaData{face=a}end
local e=a.GetHostageUseHairAtMissionId(l)if e==true then
TppSoldierFace.SetHostageUseHairFova(true)end
end
end
function a.GetFaceGroupTableAtGroupType(e)local d=TppEnemyFaceGroup.GetFaceGroupTable(e)local a={}local e=EnemyFova.MAX_REALIZED_COUNT
for d,n in pairs(d)do
table.insert(a,{n,e,e,0})end
return a
end
n[10200]=function(t,d)a.SetHostageFaceTable(d)local e={{TppEnemyBodyId.chd0_v00,e},{TppEnemyBodyId.chd0_v01,e},{TppEnemyBodyId.chd0_v02,e},{TppEnemyBodyId.chd0_v03,e},{TppEnemyBodyId.chd0_v04,e},{TppEnemyBodyId.chd0_v05,e},{TppEnemyBodyId.chd0_v06,e},{TppEnemyBodyId.chd0_v07,e},{TppEnemyBodyId.chd0_v08,e},{TppEnemyBodyId.chd0_v09,e},{TppEnemyBodyId.chd0_v10,e},{TppEnemyBodyId.chd0_v11,e},{TppEnemyBodyId.prs5_main0_v00,e}}TppSoldierFace.OverwriteMissionFovaData{body=e}TppSoldierFace.SetBodyFovaUserType{hostage={TppEnemyBodyId.prs5_main0_v00}}TppHostage2.SetDefaultBodyFovaId{parts=r,bodyId=TppEnemyBodyId.prs5_main0_v00}end
n[11200]=n[10200]n[10120]=function(t,d)a.SetHostageFaceTable(d)local e={{TppEnemyBodyId.chd0_v00,e},{TppEnemyBodyId.chd0_v01,e},{TppEnemyBodyId.chd0_v02,e},{TppEnemyBodyId.chd0_v03,e},{TppEnemyBodyId.chd0_v04,e},{TppEnemyBodyId.chd0_v05,e},{TppEnemyBodyId.chd0_v06,e},{TppEnemyBodyId.chd0_v07,e},{TppEnemyBodyId.chd0_v08,e},{TppEnemyBodyId.chd0_v09,e},{TppEnemyBodyId.chd0_v10,e},{TppEnemyBodyId.chd0_v11,e},{TppEnemyBodyId.prs5_main0_v00,e}}TppSoldierFace.OverwriteMissionFovaData{body=e}TppSoldierFace.SetBodyFovaUserType{hostage={TppEnemyBodyId.prs5_main0_v00}}TppHostage2.SetDefaultBodyFovaId{parts=r,bodyId=TppEnemyBodyId.prs5_main0_v00}end
n[10040]=function(a,e)local a=l(n)a:case("Afghan",e)TppSoldierFace.SetUseZombieFova{enabled=true}end
n[10045]=function(a,e)local a=l(n)a:case("Afghan",e)local e={}for a=0,9 do
table.insert(e,a)end
for a=20,39 do
table.insert(e,a)end
for a=50,81 do
table.insert(e,a)end
for a=93,199 do
table.insert(e,a)end
local a=#e
local a=gvars.hosface_groupNumber%a
local e=e[a]local a={{TppEnemyFaceId.svs_balaclava,1,1,0},{e,1,1,0}}TppSoldierFace.OverwriteMissionFovaData{face=a,additionalMode=true}local a=274
TppSoldierFace.SetSpecialFovaId{face={e},body={a}}local e={{a,1}}TppSoldierFace.OverwriteMissionFovaData{body=e,additionalMode=true}end
n[10052]=function(a,e)local a=l(n)a:case("Afghan",e)TppSoldierFace.SetSplitRaceForHostageRandomFaceId{enabled=true}end
n[11052]=n[10052]n[10090]=function(a,e)local a=l(n)a:case("Africa",e)TppSoldierFace.SetUseZombieFova{enabled=true}end
n[11090]=n[10090]n[10091]=function(a,e)local a=l(n)a:case("Africa",e)local e={}for a=0,9 do
table.insert(e,a)end
for a=20,39 do
table.insert(e,a)end
for a=50,81 do
table.insert(e,a)end
for a=93,199 do
table.insert(e,a)end
local d=#e
local t=gvars.solface_groupNumber%d
local a=gvars.hosface_groupNumber%d
if t==a then
a=(a+1)%d
end
local d=e[t]local t=e[a]local e={{TppEnemyFaceId.pfs_balaclava,2,2,0},{d,1,1,0},{t,1,1,0}}TppSoldierFace.OverwriteMissionFovaData{face=e,additionalMode=true}local e=265
local a=266
TppSoldierFace.SetSpecialFovaId{face={d,t},body={e,a}}local e={{e,1},{a,1}}TppSoldierFace.OverwriteMissionFovaData{body=e,additionalMode=true}end
n[11091]=n[10091]n[10080]=function(d,a)local d=l(n)d:case("Africa",a)if TppPackList.IsMissionPackLabel"afterPumpStopDemo"then
else
TppSoldier2.SetExtendPartsInfo{type=2,path="/Assets/tpp/parts/chara/chd/chd0_main0_def_v00.parts"}local e={{TppEnemyBodyId.chd0_v00,e},{TppEnemyBodyId.chd0_v01,e},{TppEnemyBodyId.chd0_v02,e},{TppEnemyBodyId.chd0_v03,e},{TppEnemyBodyId.chd0_v04,e},{TppEnemyBodyId.chd0_v05,e},{TppEnemyBodyId.chd0_v06,e},{TppEnemyBodyId.chd0_v07,e},{TppEnemyBodyId.chd0_v08,e},{TppEnemyBodyId.chd0_v09,e},{TppEnemyBodyId.chd0_v10,e},{TppEnemyBodyId.chd0_v11,e}}TppSoldierFace.OverwriteMissionFovaData{body=e}end
end
n[11080]=n[10080]n[10115]=function(a,a)local a={}for e=0,9 do
table.insert(a,e)end
for e=20,39 do
table.insert(a,e)end
for e=50,81 do
table.insert(a,e)end
for e=93,199 do
table.insert(a,e)end
local d=gvars.hosface_groupNumber
TppSoldierFace.SetPoolTable{face=a,randomSeed=d}TppSoldierFace.SetSoldierNoFaceResourceMode(true)TppSoldierFace.SetUseFaceIdListMode{enabled=true,staffCheck=true}local e={{140,e},{141,e},{TppEnemyBodyId.dds5_main0_v00,e}}TppSoldierFace.SetBodyFovaUserType{hostage={TppEnemyBodyId.dds5_main0_v00}}TppHostage2.SetDefaultBodyFovaId{parts=E,bodyId=TppEnemyBodyId.dds5_main0_v00}TppSoldierFace.OverwriteMissionFovaData{body=e}end
n[11115]=n[10115]n[10130]=function(e,a)local e=l(n)e:case("Africa",a)TppSoldierFace.SetUseZombieFova{enabled=true}end
n[11130]=n[10130]n[10140]=function(e,a)local e=l(n)e:case("Africa",a)TppSoldierFace.SetUseZombieFova{enabled=true}end
n[11140]=n[10140]n[10150]=function(a,a)local a={}for e=0,9 do
table.insert(a,e)end
for e=20,39 do
table.insert(a,e)end
for e=50,81 do
table.insert(a,e)end
for e=93,199 do
table.insert(a,e)end
local d=gvars.hosface_groupNumber
TppSoldierFace.SetPoolTable{face=a,randomSeed=d}TppSoldierFace.SetSoldierNoFaceResourceMode(true)TppSoldierFace.SetUseFaceIdListMode{enabled=true,staffCheck=true}local e={{TppEnemyBodyId.wss4_main0_v00,e}}TppSoldierFace.OverwriteMissionFovaData{body=e}end
n[10151]=function(e,e)end
n[11151]=n[10151]n[30010]=function(d,a)local d=l(n)d:case("Afghan",a)TppSoldierFace.SetUseZombieFova{enabled=true}local e={{TppEnemyBodyId.prs3_main0_v00,e}}TppSoldierFace.OverwriteMissionFovaData{body=e}TppSoldierFace.SetBodyFovaUserType{hostage={TppEnemyBodyId.prs3_main0_v00}}TppHostage2.SetDefaultBodyFovaId{parts=y,bodyId=TppEnemyBodyId.prs3_main0_v00}end
n[30020]=function(a,d)local a=l(n)a:case("Africa",d)TppSoldierFace.SetUseZombieFova{enabled=true}local e={{TppEnemyBodyId.prs6_main0_v00,e}}TppSoldierFace.OverwriteMissionFovaData{body=e}TppSoldierFace.SetBodyFovaUserType{hostage={TppEnemyBodyId.prs6_main0_v00}}TppHostage2.SetDefaultBodyFovaId{parts=I,bodyId=TppEnemyBodyId.prs6_main0_v00}end
function n.Afghan(n,d)if d==10010 then
return
end
local t=0
if TppSoldierFace.IsMoreVariationMode~=nil then
t=TppSoldierFace.IsMoreVariationMode()end
local l=15
local n=gvars.solface_groupNumber%l
local o=TppEnemyFaceGroupId.AFGAN_GRP_00+n
local o=a.GetFaceGroupTableAtGroupType(o)TppSoldierFace.OverwriteMissionFovaData{face=o}if t>0 then
for e=1,2 do
n=n+2
local e=(n%l)*2
local e=TppEnemyFaceGroupId.AFGAN_GRP_00+(e)local e=a.GetFaceGroupTableAtGroupType(e)TppSoldierFace.OverwriteMissionFovaData{face=e}end
end
TppSoldierFace.SetUseFaceIdListMode{enabled=true,staffCheck=true}a.SetHostageFaceTable(d)local n={{0,e},{1,e},{2,e},{5,e},{6,e},{7,e},{10,e},{11,e},{20,e},{21,e},{22,e},{25,e},{26,e},{27,e},{30,e},{31,e},{TppEnemyBodyId.prs2_main0_v00,e}}if not a.IsNotRequiredArmorSoldier(d)then
local e={TppEnemyBodyId.sva0_v00_a,e}table.insert(n,e)end
TppSoldierFace.OverwriteMissionFovaData{body=n}TppSoldierFace.SetBodyFovaUserType{hostage={TppEnemyBodyId.prs2_main0_v00}}TppHostage2.SetDefaultBodyFovaId{parts=m,bodyId=TppEnemyBodyId.prs2_main0_v00}end
function n.Africa(n,p)local t=0
if TppSoldierFace.IsMoreVariationMode~=nil then
t=TppSoldierFace.IsMoreVariationMode()end
local d=30
local n=gvars.solface_groupNumber
local o=(n%d)*2
local l=TppEnemyFaceGroupId.AFRICA_GRP000_B+(o)local s=a.GetFaceGroupTableAtGroupType(l)TppSoldierFace.OverwriteMissionFovaData{face=s}if t>0 then
for e=1,2 do
n=n+2
local e=(n%d)*2
local e=TppEnemyFaceGroupId.AFRICA_GRP000_B+(e)local e=a.GetFaceGroupTableAtGroupType(e)TppSoldierFace.OverwriteMissionFovaData{face=e}end
end
d=30
n=gvars.solface_groupNumber
o=(n%d)*2
l=TppEnemyFaceGroupId.AFRICA_GRP000_W+(o)local l=a.GetFaceGroupTableAtGroupType(l)TppSoldierFace.OverwriteMissionFovaData{face=l}if t>0 then
for e=1,2 do
n=n+2
local e=(n%d)*2
local e=TppEnemyFaceGroupId.AFRICA_GRP000_W+(e)local e=a.GetFaceGroupTableAtGroupType(e)TppSoldierFace.OverwriteMissionFovaData{face=e}end
end
a.SetHostageFaceTable(p)TppSoldierFace.SetUseFaceIdListMode{enabled=true,staffCheck=true,raceSplit=60}local n={{50,e},{51,e},{55,e},{60,e},{61,e},{70,e},{71,e},{75,e},{80,e},{81,e},{90,e},{91,e},{95,e},{100,e},{101,e},{TppEnemyBodyId.prs5_main0_v00,e}}local a=a.GetArmorTypeTable(p)if a~=nil then
local d=#a
if d>0 then
for d,a in ipairs(a)do
if a==TppDefine.AFR_ARMOR.TYPE_ZRS then
table.insert(n,{TppEnemyBodyId.pfa0_v00_a,e})elseif a==TppDefine.AFR_ARMOR.TYPE_CFA then
table.insert(n,{TppEnemyBodyId.pfa0_v00_b,e})elseif a==TppDefine.AFR_ARMOR.TYPE_RC then
table.insert(n,{TppEnemyBodyId.pfa0_v00_c,e})else
table.insert(n,{TppEnemyBodyId.pfa0_v00_a,e})end
end
end
end
TppSoldierFace.OverwriteMissionFovaData{body=n}TppSoldierFace.SetBodyFovaUserType{hostage={TppEnemyBodyId.prs5_main0_v00}}TppHostage2.SetDefaultBodyFovaId{parts=r,bodyId=TppEnemyBodyId.prs5_main0_v00}end
function n.Mbqf(n,n)TppSoldierFace.SetSoldierOutsideFaceMode(false)TppSoldier2.SetDisableMarkerModelEffect{enabled=true}local d={}local n={}if TppStory.GetCurrentStorySequence()<TppDefine.STORY_SEQUENCE.CLEARD_MURDER_INFECTORS then
local e,a=TppMotherBaseManagement.GetStaffsS10240()for a,e in pairs(e)do
local e=TppMotherBaseManagement.StaffIdToFaceId{staffId=e}if n[e]==nil then
n[e]=2
else
n[e]=n[e]+1
end
end
for a,e in pairs(a)do
local e=TppMotherBaseManagement.StaffIdToFaceId{staffId=e}if n[e]==nil then
n[e]=2
else
n[e]=n[e]+1
end
end
else
for e,d in ipairs(a.S10240_MaleFaceIdList)do
local e=a.S10240_MaleFaceIdList[e]if n[e]==nil then
n[e]=2
else
n[e]=n[e]+1
end
end
for e,d in ipairs(a.S10240_FemaleFaceIdList)do
local e=a.S10240_FemaleFaceIdList[e]if n[e]==nil then
n[e]=2
else
n[e]=n[e]+1
end
end
end
for a,e in pairs(n)do
table.insert(d,{a,e,e,0})end
table.insert(d,{623,1,1,0})table.insert(d,{TppEnemyFaceId.dds_balaclava2,10,10,0})table.insert(d,{TppEnemyFaceId.dds_balaclava6,2,2,0})table.insert(d,{TppEnemyFaceId.dds_balaclava7,2,2,0})local e={{146,e},{147,e},{148,e},{149,e},{150,e},{151,1},{152,e},{153,e},{154,e},{155,e},{156,e},{157,e},{158,e}}TppSoldier2.SetExtendPartsInfo{type=1,path="/Assets/tpp/parts/chara/dds/ddr1_main0_def_v00.parts"}TppSoldierFace.OverwriteMissionFovaData{face=d,body=e}TppSoldierFace.SetSoldierUseHairFova(true)end
function n.Mb(n,t)if TppMission.IsHelicopterSpace(t)then
return
end
TppSoldierFace.SetSoldierOutsideFaceMode(false)local d={}local l=TppEnemy.GetDDSuit()if TppMission.IsFOBMission(t)then
local o=TppMotherBaseManagement.GetStaffsFob()local t=36
local p=100
local n={}local s={}do
for a,e in pairs(o)do
local e=TppMotherBaseManagement.StaffIdToFaceId{staffId=e}if n[e]==nil then
n[e]=1
else
n[e]=n[e]+1
end
if a==t then
break
end
end
if#o==0 then
for e=1,t do
n[e]=1
end
end
for a,e in pairs(n)do
table.insert(d,{a,e,e,0})end
end
do
for a=t+1,t+p do
local e=o[a]if e==nil then
break
end
local e=TppMotherBaseManagement.StaffIdToFaceId{staffId=e}if n[e]==nil then
s[e]=1
end
if a==p then
break
end
end
for e,a in pairs(s)do
table.insert(d,{e,0,0,0})end
end
local n={}if l==TppEnemy.FOB_DD_SUIT_SNEAKING then
TppSoldier2.SetDefaultPartsPath"/Assets/tpp/parts/chara/sna/sna4_enem0_def_v00.parts"table.insert(n,{TppEnemyFaceId.dds_balaclava0,e,e,0})table.insert(n,{TppEnemyFaceId.dds_balaclava1,e,e,0})table.insert(n,{TppEnemyFaceId.dds_balaclava12,e,e,0})table.insert(n,{TppEnemyFaceId.dds_balaclava3,e,e,0})table.insert(n,{TppEnemyFaceId.dds_balaclava4,e,e,0})table.insert(n,{TppEnemyFaceId.dds_balaclava14,e,e,0})elseif l==TppEnemy.FOB_DD_SUIT_BTRDRS then
TppSoldier2.SetDefaultPartsPath"/Assets/tpp/parts/chara/sna/sna5_enem0_def_v00.parts"table.insert(n,{TppEnemyFaceId.dds_balaclava0,e,e,0})table.insert(n,{TppEnemyFaceId.dds_balaclava1,e,e,0})table.insert(n,{TppEnemyFaceId.dds_balaclava12,e,e,0})table.insert(n,{TppEnemyFaceId.dds_balaclava3,e,e,0})table.insert(n,{TppEnemyFaceId.dds_balaclava4,e,e,0})table.insert(n,{TppEnemyFaceId.dds_balaclava14,e,e,0})elseif l==TppEnemy.FOB_PF_SUIT_ARMOR then
TppSoldier2.SetDefaultPartsPath"/Assets/tpp/parts/chara/pfs/pfs0_main0_def_v00.parts"else
TppSoldier2.SetDefaultPartsPath"/Assets/tpp/parts/chara/dds/dds5_enem0_def_v00.parts"table.insert(n,{TppEnemyFaceId.dds_balaclava0,e,e,0})table.insert(n,{TppEnemyFaceId.dds_balaclava2,e,e,0})table.insert(n,{TppEnemyFaceId.dds_balaclava3,e,e,0})table.insert(n,{TppEnemyFaceId.dds_balaclava5,e,e,0})end
if a.IsUseGasMaskInFOB()then
n={{TppEnemyFaceId.dds_balaclava8,e,e,0},{TppEnemyFaceId.dds_balaclava9,e,e,0},{TppEnemyFaceId.dds_balaclava10,e,e,0},{TppEnemyFaceId.dds_balaclava11,e,e,0},{TppEnemyFaceId.dds_balaclava13,e,e,0},{TppEnemyFaceId.dds_balaclava15,e,e,0}}end
if TppMotherBaseManagement.GetMbsClusterSecurityIsEquipSwimSuit()then
local a=TppMotherBaseManagement.GetMbsClusterSecuritySwimSuitInfo()local e
if a==TppMotherBaseManagementConst.SWIM_SUIT_TYPE_1 then
e="/Assets/tpp/parts/chara/dlf/dlf1_enem0_def_v00.parts"elseif a==TppMotherBaseManagementConst.SWIM_SUIT_TYPE_2 then
e="/Assets/tpp/parts/chara/dlg/dlg1_enem0_def_v00.parts"elseif a==TppMotherBaseManagementConst.SWIM_SUIT_TYPE_3 then
e="/Assets/tpp/parts/chara/dlh/dlh1_enem0_def_v00.parts"end
TppSoldier2.SetDefaultPartsPath(e)end
for a,e in ipairs(n)do
table.insert(d,e)end
else
if t==30050 then
elseif t==30150 then
elseif t==30250 then
local a=TppMotherBaseManagement.GetOutOnMotherBaseStaffs{sectionId=TppMotherBaseManagementConst.SECTION_SECURITY}local e=#a
local e={}for n,a in pairs(a)do
local a=TppMotherBaseManagement.StaffIdToFaceId{staffId=a}if e[a]==nil then
e[a]=1
else
e[a]=e[a]+1
end
if n==7 then
break
end
end
for a,e in pairs(e)do
table.insert(d,{a,e,e,0})end
table.insert(d,{TppEnemyFaceId.dds_balaclava6,7,7,0})elseif t==10240 then
d={{1,e,e,0},{2,e,e,0},{3,e,e,0},{4,e,e,0},{5,e,e,0},{6,e,e,0},{7,e,e,0},{8,e,e,0},{9,e,e,0},{14,e,e,0},{15,e,e,0},{16,e,e,0},{17,e,e,0},{18,e,e,0}}table.insert(d,{TppEnemyFaceId.dds_balaclava6,e,e,0})elseif t==10030 then
for a,e in ipairs(a.S10030_FaceIdList)do
table.insert(d,{e,1,1,0})end
table.insert(d,{TppEnemyFaceId.dds_balaclava0,a.S10030_useBalaclavaNum,a.S10030_useBalaclavaNum,0})else
for a=0,35 do
table.insert(d,{a,e,e,0})end
table.insert(d,{TppEnemyFaceId.dds_balaclava0,e,e,0})table.insert(d,{TppEnemyFaceId.dds_balaclava1,e,e,0})table.insert(d,{TppEnemyFaceId.dds_balaclava2,e,e,0})end
end
TppSoldierFace.OverwriteMissionFovaData{face=d}local a={}if TppMission.IsFOBMission(t)then
if l==TppEnemy.FOB_DD_SUIT_SNEAKING then
a={{TppEnemyBodyId.dds4_enem0_def,e},{TppEnemyBodyId.dds4_enef0_def,e}}elseif l==TppEnemy.FOB_DD_SUIT_BTRDRS then
a={{TppEnemyBodyId.dds5_enem0_def,e},{TppEnemyBodyId.dds5_enef0_def,e}}elseif l==TppEnemy.FOB_PF_SUIT_ARMOR then
a={{TppEnemyBodyId.pfa0_v00_a,e}}else
a={{TppEnemyBodyId.dds5_main0_v00,e},{TppEnemyBodyId.dds6_main0_v00,e}}end
if TppMotherBaseManagement.GetMbsClusterSecurityIsEquipSwimSuit()then
local n=TppMotherBaseManagement.GetMbsClusterSecuritySwimSuitGrade()a={{c.female[n],e},{c.male[n],e}}end
else
a={{TppEnemyBodyId.dds3_main0_v00,e},{TppEnemyBodyId.dds8_main0_v00,e}}end
TppSoldierFace.OverwriteMissionFovaData{body=a}if not(t==10030 or t==10240)then
if TppMission.IsFOBMission(t)then
if l==TppEnemy.FOB_DD_SUIT_SNEAKING then
TppSoldier2.SetExtendPartsInfo{type=1,path="/Assets/tpp/parts/chara/sna/sna4_enef0_def_v00.parts"}elseif l==TppEnemy.FOB_DD_SUIT_BTRDRS then
TppSoldier2.SetExtendPartsInfo{type=1,path="/Assets/tpp/parts/chara/sna/sna5_enef0_def_v00.parts"}elseif l==TppEnemy.FOB_PF_SUIT_ARMOR then
else
TppSoldier2.SetExtendPartsInfo{type=1,path="/Assets/tpp/parts/chara/dds/dds6_enef0_def_v00.parts"}end
if TppMotherBaseManagement.GetMbsClusterSecurityIsEquipSwimSuit()then
local a=TppMotherBaseManagement.GetMbsClusterSecuritySwimSuitInfo()local e
if a==TppMotherBaseManagementConst.SWIM_SUIT_TYPE_1 then
e="/Assets/tpp/parts/chara/dlf/dlf0_enem0_def_f_v00.parts"elseif a==TppMotherBaseManagementConst.SWIM_SUIT_TYPE_2 then
e="/Assets/tpp/parts/chara/dlg/dlg0_enem0_def_f_v00.parts"elseif a==TppMotherBaseManagementConst.SWIM_SUIT_TYPE_3 then
e="/Assets/tpp/parts/chara/dlh/dlh0_enem0_def_f_v00.parts"end
TppSoldier2.SetExtendPartsInfo{type=1,path=e}end
elseif t~=10115 and t~=11115 then
TppSoldier2.SetExtendPartsInfo{type=1,path="/Assets/tpp/parts/chara/dds/dds8_main0_def_v00.parts"}end
end
TppSoldierFace.SetSoldierUseHairFova(true)end
function n.Cyprus(a,a)local a={}for e=0,5 do
table.insert(a,e)end
TppSoldierFace.SetPoolTable{face=a}TppSoldierFace.SetSoldierNoFaceResourceMode(true)local e={{TppEnemyBodyId.wss0_main0_v00,e}}TppSoldierFace.OverwriteMissionFovaData{body=e}end
function n.default(n,a)TppSoldierFace.SetMissionFovaData{face={},body={}}if a>6e4 then
local e={{30,e,e,e}}TppSoldierFace.OverwriteMissionFovaData{face=e}end
end
function a.AddTakingOverHostagePack()local e={}for n,d in ipairs(TppEnemy.TAKING_OVER_HOSTAGE_LIST)do
local a=n-1
if a>=gvars.ene_takingOverHostageCount then
break
end
local a={type="hostage",name=d,faceId=gvars.ene_takingOverHostageFaceIds[a]}table.insert(e,a)end
a.AddUniqueSettingPackage(e)end
function a.PreMissionLoad(e,a)TppSoldier2.SetEnglishVoiceIdTable{voice={}}TppSoldierFace.SetMissionFovaData{face={},body={}}TppSoldierFace.ResetForPreMissionLoad()TppSoldier2.SetDisableMarkerModelEffect{enabled=false}TppSoldier2.SetDefaultPartsPath()TppSoldier2.SetExtendPartsInfo{}TppHostage2.ClearDefaultBodyFovaId()if TppLocation.IsMotherBase()or TppLocation.IsMBQF()then
local e=TppMotherBaseManagement.GetMbsClusterSecuritySoldierEquipGrade{}local a=TppMotherBaseManagement.GetMbsClusterSecurityIsNoKillMode()TppEnemy.PrepareDDParameter(e,a)end
local a=l(n)if n[e]==nil then
if TppMission.IsHelicopterSpace(e)then
a:case("default",e)elseif TppLocation.IsAfghan()then
a:case("Afghan",e)elseif TppLocation.IsMiddleAfrica()then
a:case("Africa",e)elseif TppLocation.IsMBQF()then
a:case("Mbqf",e)elseif TppLocation.IsMotherBase()then
a:case("Mb",e)elseif TppLocation.IsCyprus()then
a:case("Cyprus",e)else
a:case("default",e)end
else
a:case(e,e)end
end
local f={}local r={}local t={}local d={}local o=0
local l=0
local p=0
local i=0
local s=0
local y=15
local m=16
local T=32
local _=0
function a.InitializeUniqueSetting()f={}r={}t={}d={}o=0
l=0
p=0
i=0
s=0
local n=GameObject.NULL_ID
local a=EnemyFova.NOT_USED_FOVA_VALUE
for e=0,TppDefine.ENEMY_FOVA_UNIQUE_SETTING_COUNT-1 do
gvars.ene_fovaUniqueTargetIds[e]=n
gvars.ene_fovaUniqueFaceIds[e]=a
gvars.ene_fovaUniqueBodyIds[e]=a
gvars.ene_fovaUniqueBodyIds[e]=a
if gvars.ene_fovaUniqueFlags then
gvars.ene_fovaUniqueFlags[e]=0
end
end
end
function a.GetStaffIdForDD(e,n)local a=_
if e==10081 then
a=TppMotherBaseManagement.GetStaffS10081()elseif e==10091 or e==11091 then
local e=TppMotherBaseManagement.GetStaffsS10091()if e and n<#e then
a=e[n+1]end
elseif e==10115 or e==11115 then
local e=TppMotherBaseManagement.GetStaffsS10115()if e and n<#e then
a=e[n+1]end
end
return a
end
function a.GetFaceIdForDdHostage(e)local n=o
o=o+1
local a=a.GetStaffIdForDD(e,n)local d=bit.bor(m,n)if a~=_ then
local a=TppMotherBaseManagement.StaffIdToFaceId{staffId=a}if e==10081 then
p=a
elseif e==10091 or e==11091 then
if n>0 then
s=a
else
i=a
end
end
return a,d
end
local a=(gvars.hosface_groupNumber+n)%30
local a=50+a
if TppSoldierFace.GetRandomFaceId~=nil then
local e=gvars.solface_groupNumber+n
a=TppSoldierFace.GetRandomFaceId{race={0,2,3},gender=0,useIndex=e}end
if e==10081 then
p=a
elseif e==10091 or e==11091 then
if n>0 then
s=a
else
i=a
end
end
return a,d
end
function a.GetFaceId_s10081()return p
end
function a.GetFaceId_s10091_0()return i
end
function a.GetFaceId_s10091_1()return s
end
function a.GetFaceIdForFemaleHostage(e)local n=T
if e==10086 then
return 613,n
end
local d=l
l=l+1
local a={}table.insert(a,0)if TppLocation.IsAfghan()then
table.insert(a,3)elseif TppLocation.IsMiddleAfrica()then
table.insert(a,2)table.insert(a,3)end
local t=gvars.solface_groupNumber+d
local e=EnemyFova.INVALID_FOVA_VALUE
if TppSoldierFace.GetRandomFaceId~=nil then
e=TppSoldierFace.GetRandomFaceId{race=a,gender=1,useIndex=t}if e~=EnemyFova.INVALID_FOVA_VALUE then
return e,n
else
local a=(gvars.hosface_groupNumber+d)%50
e=350+a
end
else
local a=(gvars.hosface_groupNumber+d)%50
e=350+a
end
return e,n
end
function a.GetFaceIdAndFlag(d,e)local n=EnemyFova.NOT_USED_FOVA_VALUE
if e=="female"then
if d=="hostage"then
return a.GetFaceIdForFemaleHostage(vars.missionCode)else
return n,0
end
elseif e=="dd"then
if d=="hostage"then
return a.GetFaceIdForDdHostage(vars.missionCode)else
return n,0
end
end
return e,0
end
function a.RegisterUniqueSetting(l,p,o,n)local e=EnemyFova.NOT_USED_FOVA_VALUE
local a,o=a.GetFaceIdAndFlag(l,o)if a==nil then
a=e
end
if n==nil then
n=e
end
table.insert(f,{name=p,faceId=a,bodyId=n,flag=o})do
local o=1
local d=2
local n=3
local t=4
local e=nil
for d,n in ipairs(r)do
if n[o]==a then
e=n
end
end
if not e then
e={a,0,0,0}table.insert(r,e)end
if l=="enemy"then
e[d]=e[d]+1
e[n]=e[n]+1
elseif l=="hostage"then
e[t]=e[t]+1
end
end
do
local p=1
local o=2
local e=nil
for d,a in ipairs(t)do
if a[p]==n then
e=a
end
end
if not e then
e={n,0}table.insert(t,e)end
e[o]=e[o]+1
if l=="hostage"then
local e=n
for d,a in ipairs(d)do
if a==n then
e=nil
break
end
end
if e then
table.insert(d,e)end
end
end
end
function a.AddUniqueSettingPackage(e)if e and type(e)=="table"then
for n,e in ipairs(e)do
a.RegisterUniqueSetting(e.type,e.name,e.faceId,e.bodyId,e.missionCode)end
end
TppSoldierFace.OverwriteMissionFovaData{face=r,body=t,additionalMode=true}if#d>0 then
TppSoldierFace.SetBodyFovaUserType{hostage=d}end
end
function a.AddUniquePackage(e)TppSoldierFace.OverwriteMissionFovaData{face=e.face,body=e.body,additionalMode=true}if e.body and e.type=="hostage"then
local a={}for n,e in ipairs(e.body)do
table.insert(a,e[1])end
if#a>0 then
TppSoldierFace.SetBodyFovaUserType{hostage=a}end
end
end
function a.ApplyUniqueSetting()local d=GameObject.NULL_ID
local e=EnemyFova.NOT_USED_FOVA_VALUE
if gvars.ene_fovaUniqueTargetIds[0]==d then
local e=0
for n,a in ipairs(f)do
local n=GameObject.GetGameObjectId(a.name)if n~=d then
if e<TppDefine.ENEMY_FOVA_UNIQUE_SETTING_COUNT then
gvars.ene_fovaUniqueTargetIds[e]=n
gvars.ene_fovaUniqueFaceIds[e]=a.faceId
gvars.ene_fovaUniqueBodyIds[e]=a.bodyId
if gvars.ene_fovaUniqueFlags then
gvars.ene_fovaUniqueFlags[e]=a.flag
end
end
e=e+1
end
end
end
local t=bit.band
for n=0,TppDefine.ENEMY_FOVA_UNIQUE_SETTING_COUNT-1 do
local e=gvars.ene_fovaUniqueTargetIds[n]if e==d then
break
end
local d={id="ChangeFova",faceId=gvars.ene_fovaUniqueFaceIds[n],bodyId=gvars.ene_fovaUniqueBodyIds[n]}GameObject.SendCommand(e,d)local d=0
if gvars.ene_fovaUniqueFlags then
d=gvars.ene_fovaUniqueFlags[n]end
if t(d,m)~=0 then
local n=vars.missionCode
local d=t(d,y)local a=a.GetStaffIdForDD(n,d)if a~=_ then
local a={id="SetStaffId",staffId=a}GameObject.SendCommand(e,a)end
local a={id="SetHostage2Flag",flag="dd",on=true}GameObject.SendCommand(e,a)elseif t(d,T)~=0 then
local a={id="SetHostage2Flag",flag="female",on=true}GameObject.SendCommand(e,a)end
end
end
function a.ApplyMTBSUniqueSetting(e,t,o,s)local d=0
local n=EnemyFova.INVALID_FOVA_VALUE
local p=TppEnemy.GetDDSuit()local function l(e)local e=TppSoldierFace.CheckFemale{face={e}}return e and e[1]==1
end
if TppMission.IsFOBMission(vars.missionCode)then
if p==TppEnemy.FOB_DD_SUIT_SNEAKING then
if((TppEnemy.weaponIdTable.DD.NORMAL.SNEAKING_SUIT and TppEnemy.weaponIdTable.DD.NORMAL.SNEAKING_SUIT>=3)and TppMotherBaseManagement.GetMbsNvgSneakingLevel)and TppMotherBaseManagement.GetMbsNvgSneakingLevel()>0 then
TppEnemy.AddPowerSetting(e,{"NVG"})end
if l(t)==true then
d=TppEnemyBodyId.dds4_enef0_def
local a={id="UseExtendParts",enabled=true}GameObject.SendCommand(e,a)if TppEnemy.IsHelmet(e)then
if TppEnemy.IsNVG(e)then
n=TppEnemyFaceId.dds_balaclava14
else
n=TppEnemyFaceId.dds_balaclava3
end
else
n=TppEnemyFaceId.dds_balaclava4
end
else
d=TppEnemyBodyId.dds4_enem0_def
local a={id="UseExtendParts",enabled=false}GameObject.SendCommand(e,a)if TppEnemy.IsHelmet(e)then
if TppEnemy.IsNVG(e)then
n=TppEnemyFaceId.dds_balaclava12
else
n=TppEnemyFaceId.dds_balaclava0
end
else
n=TppEnemyFaceId.dds_balaclava1
end
end
elseif p==TppEnemy.FOB_DD_SUIT_BTRDRS then
if((TppEnemy.weaponIdTable.DD.NORMAL.BATTLE_DRESS and TppEnemy.weaponIdTable.DD.NORMAL.BATTLE_DRESS>=3)and TppMotherBaseManagement.GetMbsNvgBattleLevel)and TppMotherBaseManagement.GetMbsNvgBattleLevel()>0 then
TppEnemy.AddPowerSetting(e,{"NVG"})end
if l(t)==true then
d=TppEnemyBodyId.dds5_enef0_def
local a={id="UseExtendParts",enabled=true}GameObject.SendCommand(e,a)if TppEnemy.IsHelmet(e)then
if TppEnemy.IsNVG(e)then
n=TppEnemyFaceId.dds_balaclava14
else
n=TppEnemyFaceId.dds_balaclava3
end
elseif o then
n=TppEnemyFaceId.dds_balaclava4
end
else
d=TppEnemyBodyId.dds5_enem0_def
local a={id="UseExtendParts",enabled=false}GameObject.SendCommand(e,a)if TppEnemy.IsHelmet(e)then
if TppEnemy.IsNVG(e)then
n=TppEnemyFaceId.dds_balaclava12
else
n=TppEnemyFaceId.dds_balaclava0
end
elseif o then
n=TppEnemyFaceId.dds_balaclava1
end
end
elseif p==TppEnemy.FOB_PF_SUIT_ARMOR then
if not l(t)==true then
d=TppEnemyBodyId.pfa0_v00_a
local a={id="UseExtendParts",enabled=false}GameObject.SendCommand(e,a)TppEnemy.AddPowerSetting(e,{"ARMOR"})end
else
if l(t)==true then
d=TppEnemyBodyId.dds6_main0_v00
local a={id="UseExtendParts",enabled=true}GameObject.SendCommand(e,a)if o then
if TppEnemy.IsHelmet(e)then
n=TppEnemyFaceId.dds_balaclava3
else
n=TppEnemyFaceId.dds_balaclava5
end
end
else
d=TppEnemyBodyId.dds5_main0_v00
local a={id="UseExtendParts",enabled=false}GameObject.SendCommand(e,a)if o then
if TppEnemy.IsHelmet(e)then
n=TppEnemyFaceId.dds_balaclava0
else
n=TppEnemyFaceId.dds_balaclava2
end
end
end
end
if TppMotherBaseManagement.GetMbsClusterSecurityIsEquipSwimSuit()then
local e=TppMotherBaseManagement.GetMbsClusterSecuritySwimSuitGrade()if l(t)then
d=c.female[e]else
d=c.male[e]end
end
if a.IsUseGasMaskInFOB()and p~=TppEnemy.FOB_PF_SUIT_ARMOR then
if l(t)then
if TppEnemy.IsHelmet(e)then
if TppEnemy.IsNVG(e)then
n=TppEnemyFaceId.dds_balaclava15
else
n=TppEnemyFaceId.dds_balaclava11
end
else
n=TppEnemyFaceId.dds_balaclava10
end
else
if TppEnemy.IsHelmet(e)then
if TppEnemy.IsNVG(e)then
n=TppEnemyFaceId.dds_balaclava13
else
n=TppEnemyFaceId.dds_balaclava9
end
else
n=TppEnemyFaceId.dds_balaclava8
end
end
TppEnemy.AddPowerSetting(e,{"GAS_MASK"})end
else
if l(t)then
d=TppEnemyBodyId.dds8_main0_v00
local d={id="UseExtendParts",enabled=true}GameObject.SendCommand(e,d)if o then
n=TppEnemyFaceId.dds_balaclava5
end
if a.IsUseGasMaskInMBFree()then
n=TppEnemyFaceId.dds_balaclava7
TppEnemy.AddPowerSetting(e,{"GAS_MASK"})end
else
d=TppEnemyBodyId.dds3_main0_v00
local d={id="UseExtendParts",enabled=false}GameObject.SendCommand(e,d)if o then
n=TppEnemyFaceId.dds_balaclava2
end
if a.IsUseGasMaskInMBFree()then
n=TppEnemyFaceId.dds_balaclava6
TppEnemy.AddPowerSetting(e,{"GAS_MASK"})end
end
end
if s then
n=EnemyFova.NOT_USED_FOVA_VALUE
end
local a={id="ChangeFova",faceId=t,bodyId=d,balaclavaFaceId=n}GameObject.SendCommand(e,a)end
function a.IsUseGasMaskInMBFree(e)local a=TppMotherBaseManagement.IsPandemicEventMode()local e=mvars.f30050_currentFovaClusterId~=TppDefine.CLUSTER_DEFINE.Command
return a and e
end
function a.IsUseGasMaskInFOB()local a,a,e=a.GetUavSetting()return e
end
function a.GetUavSetting()local l=TppMotherBaseManagement.GetMbsUavLevel{}local s=TppMotherBaseManagement.GetMbsUavSmokeGrenadeLevel{}local T=TppMotherBaseManagement.GetMbsUavSleepingGusGrenadeLevel{}local n=TppMotherBaseManagement.GetMbsClusterSecuritySoldierEquipGrade{}local _=TppMotherBaseManagement.GetMbsClusterSecurityIsNoKillMode()local o=TppUav.DEVELOP_LEVEL_LMG_0
local t=false
local i=false
local a=100
local e=a
local d=a
local p=a
local r=7
local r=4
local r=3
local r=3
local r=3
local c=3
local r=6
local f=7
if n<c then
e=a
elseif l>0 then
if l==1 then
e=TppUav.DEVELOP_LEVEL_LMG_0
elseif l==2 then
if n>=r then
e=TppUav.DEVELOP_LEVEL_LMG_1
else
e=TppUav.DEVELOP_LEVEL_LMG_0
end
elseif l>=3 then
if n>=f then
e=TppUav.DEVELOP_LEVEL_LMG_2
elseif n>=r then
e=TppUav.DEVELOP_LEVEL_LMG_1
else
e=TppUav.DEVELOP_LEVEL_LMG_0
end
end
end
local c=4
local r=6
local f=7
if n<c then
d=a
elseif l>0 then
if s==1 then
d=TppUav.DEVELOP_LEVEL_SMOKE_0
elseif s==2 then
if n>=r then
d=TppUav.DEVELOP_LEVEL_SMOKE_1
else
d=TppUav.DEVELOP_LEVEL_SMOKE_0
end
elseif s==3 then
if n>=f then
d=TppUav.DEVELOP_LEVEL_SMOKE_2
elseif n>=r then
d=TppUav.DEVELOP_LEVEL_SMOKE_1
else
d=TppUav.DEVELOP_LEVEL_SMOKE_0
end
end
end
local s=8
if n<s then
p=a
else
if T>=1 then
p=TppUav.DEVELOP_LEVEL_SLEEP_0
end
end
if l==0 then
t=false
else
if _==true then
if p~=a then
o=p
t=true
i=true
elseif d~=a then
o=d
t=true
i=true
elseif e~=a then
o=e
t=true
else
t=false
end
else
if e~=a then
o=e
t=true
else
t=false
end
end
end
return t,o,i
end
function a.GetUavCombatGradeAndEmpLevel(d,o,n,l)if d<9 then
return nil,0
end
local t={[9]={4,2},[10]={5,3},[11]={6,4}}local e,a
if o then
a=2
e=l
else
a=1
e=n
end
local n
for d,t in pairs(t)do
if t[a]==e then
n=d
end
end
if not n then
if e>t[11][a]then
end
return nil,0
end
local e,a
if d<=n then
e=d
else
e=n
end
a=e-8
return e,a
end
return a