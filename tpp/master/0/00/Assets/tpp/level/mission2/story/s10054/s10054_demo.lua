local this = {}
local StrCode32 = Fox.StrCode32
local StrCode32Table = Tpp.StrCode32Table




this.demoList = {
    Demo_SahelanTest = "p31_040010_000_final", 
}



this.demoBlockList = {
	_openingDemo			= {	"/Assets/tpp/pack/mission2/story/s10070/s10070_d01.fpk"},
--        Demo_SahelanTest = { "/Assets/tpp/pack/mission2/story/s10070/s10070_d01.fpk" }, 
}




this.PlayOpeningDemo = function(func)
	Fox.Log("#### PlayOpeningDemo ####")
	TppDemo.PlayOpening( { onEnd = function() func() end,}, { useDemoBlock = true, } )
end



return this
