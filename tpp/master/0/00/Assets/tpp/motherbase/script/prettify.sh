#!/bin/bash
sed -i 's/TppMotherBaseManagement\.RegCstDev/\nTppMotherBaseManagement\.RegCstDev/g' EquipDevelopConstSetting.lua
sed -i 's/p[0-9][0-9]/\n\t&/g' EquipDevelopConstSetting.lua
sed -i 's/}/\n}/g' EquipDevelopConstSetting.lua
sed -i 's/return/\nreturn/g' EquipDevelopConstSetting.lua

sed -i 's/TppMotherBaseManagement\.RegFlwDev/\nTppMotherBaseManagement\.RegFlwDev/g' EquipDevelopFlowSetting.lua
sed -i 's/p[0-9][0-9]/\n\t&/g' EquipDevelopFlowSetting.lua
sed -i 's/}/\n}/g' EquipDevelopFlowSetting.lua
sed -i 's/return/\nreturn/g' EquipDevelopFlowSetting.lua
