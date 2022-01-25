local Plugin = script.Parent.Parent

local FFlagStudioSerializeInstancesOffUIThread = game:GetFastFlag("StudioSerializeInstancesOffUIThread")
local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)
local Rodux = require(Libs.Rodux)
local Framework = require(Libs.Framework)

local ThunkWithArgsMiddleware = Framework.Util.ThunkWithArgsMiddleware

local ToolboxReducer = require(Plugin.Core.Reducers.ToolboxReducer)

local function mustSetFlag(flagName, value)
    return Roact.createElement("TextLabel", {
        Text = string.format("You must set %s to %s to view this story", flagName, tostring(value)),
        Size = UDim2.new(1, 0, 0, 100),
        TextSize = 18,
        TextWrapped = true,
        BackgroundTransparency = 1,
    })
end

local function createThunkMiddleware()
	if FFlagStudioSerializeInstancesOffUIThread then
		local mockStudioAssetService = {}
		function mockStudioAssetService:SerializeInstances()
			return ""
		end

		return {
			ThunkWithArgsMiddleware({
				StudioAssetService = mockStudioAssetService,
			}),
		}
	else
		return {
			Rodux.thunkMiddleware
		}
	end
end

local function storeWithData(data)
	return Rodux.Store.new(ToolboxReducer, data, createThunkMiddleware())
end

return {
    createThunkMiddleware = createThunkMiddleware,
    mustSetFlag = mustSetFlag,
	storeWithData = storeWithData,
}