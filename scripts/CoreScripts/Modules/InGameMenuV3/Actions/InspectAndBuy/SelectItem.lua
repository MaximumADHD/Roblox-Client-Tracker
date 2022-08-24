--[[
	Set the data of the selected item from the InspectAndBuy Menu
	to be inspected in the Asset Details Page
]]

local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)

return Rodux.makeActionCreator(script.Name, function(selectedItem)
	return {
		selectedItem = selectedItem,
	}
end)