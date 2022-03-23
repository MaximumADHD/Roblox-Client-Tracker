local Plugin = script.Parent.Parent

local FFlagStudioSerializeInstancesOffUIThread = game:GetFastFlag("StudioSerializeInstancesOffUIThread3")
local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Rodux = require(Packages.Rodux)
local Framework = require(Packages.Framework)

local ThunkWithArgsMiddleware = Framework.Util.ThunkWithArgsMiddleware

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
		function mockStudioAssetService:SerializeInstances(instances)
			assert(typeof(instances) == "table", "Instances must be a table")
			for _, instance in ipairs(instances) do
				assert(instance:IsA("Instance"))
			end

			return "TEST"
		end

		return {
			ThunkWithArgsMiddleware({
				StudioAssetService = mockStudioAssetService,
			}),
		}
	else
		return {
			Rodux.thunkMiddleware,
		}
	end
end

return {
	createThunkMiddleware = createThunkMiddleware,
	mustSetFlag = mustSetFlag,
}
