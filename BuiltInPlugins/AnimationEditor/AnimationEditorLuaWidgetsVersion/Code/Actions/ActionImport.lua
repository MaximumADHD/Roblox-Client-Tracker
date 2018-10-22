-- singleton (can't be undone/redone)

local Import = {}

function Import:execute(Paths)
	local id = Paths.Globals.Plugin:PromptForExistingAssetId("Animation")
	if (id ~= nil and tonumber(id) > 0) then
		  Paths.DataModelClip:loadImportAnim(tonumber(id))
	end
end

return Import
