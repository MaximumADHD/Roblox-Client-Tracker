--!nonstrict
-- Remove with FFlagTopBarDeprecateCoreGuiRodux
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local StarterGui = game:GetService("StarterGui")

local Modules = RobloxGui.Modules
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local t = require(CorePackages.Packages.t)

local Components = script.Parent.Parent
local TopBar = Components.Parent

local UpdateCoreGuiEnabled = require(TopBar.Actions.UpdateCoreGuiEnabled)

local EventConnection = require(TopBar.Parent.Common.EventConnection)

local FFlagMountCoreGuiBackpack = require(Modules.Flags.FFlagMountCoreGuiBackpack)
local FFlagTopBarDeprecateCoreGuiRodux = require(TopBar.Flags.FFlagTopBarDeprecateCoreGuiRodux)

if FFlagTopBarDeprecateCoreGuiRodux then
	return nil :: never
end

local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeHealthBar = CoreGuiCommon.Flags.FFlagTopBarSignalizeHealthBar

local CoreGuiConnector = Roact.PureComponent:extend("CoreGuiConnector")


CoreGuiConnector.validateProps = t.strictInterface({
	updateCoreGuiEnabled = t.callback,
})

function CoreGuiConnector:didMount()
	local initalCoreGuiTypes = Enum.CoreGuiType:GetEnumItems()
	for _, coreGuiType in ipairs(initalCoreGuiTypes) do
		if FFlagMountCoreGuiBackpack and coreGuiType == Enum.CoreGuiType.Backpack then 
			continue
		elseif FFlagTopBarSignalizeHealthBar and coreGuiType == Enum.CoreGuiType.Health then 
			continue
		elseif coreGuiType ~= Enum.CoreGuiType.All then
			self.props.updateCoreGuiEnabled(coreGuiType, StarterGui:GetCoreGuiEnabled(coreGuiType))
		end
	end
end

function CoreGuiConnector:render()
	return Roact.createFragment({
		CoreGuiChangedConnection = Roact.createElement(EventConnection, {
			event = StarterGui.CoreGuiChangedSignal,
			callback = function(coreGuiType, enabled)
				if FFlagMountCoreGuiBackpack then
						if coreGuiType ~= Enum.CoreGuiType.Backpack then
							self.props.updateCoreGuiEnabled(coreGuiType, enabled)
						end
				else
						self.props.updateCoreGuiEnabled(coreGuiType, enabled)
				end
			end,
		}),
	})

end

local function mapDispatchToProps(dispatch)
	return {
		updateCoreGuiEnabled = function(coreGuiType, enabled)
			return dispatch(UpdateCoreGuiEnabled(coreGuiType, enabled))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(nil, mapDispatchToProps)(CoreGuiConnector)
