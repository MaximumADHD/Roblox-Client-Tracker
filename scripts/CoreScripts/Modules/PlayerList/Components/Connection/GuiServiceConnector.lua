local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent.Parent
local PlayerList = Components.Parent

local SetInspectMenuEnabled = require(PlayerList.Actions.SetInspectMenuEnabled)

local EventConnection = require(script.Parent.EventConnection)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local FFlagPlayerListPerformanceImprovements = require(RobloxGui.Modules.Flags.FFlagPlayerListPerformanceImprovements)

local GuiServiceConnector
if FFlagPlayerListPerformanceImprovements then
	GuiServiceConnector = Roact.PureComponent:extend("GuiServiceConnector")

	function GuiServiceConnector:render()
		return Roact.createFragment({
			InspectMenuEnabledConnection = Roact.createElement(EventConnection, {
				event = GuiService.InspectMenuEnabledChangedSignal,
				callback = function(enabled)
					self.props.setInspectMenuEnabled(enabled)
				end,
			}),
		})
	end
else
	function GuiServiceConnector(props)
		-- TODO: Clean this up when Fragments are released.
		return Roact.createElement("Folder", {}, {
			InspectMenuEnabledConnection = Roact.createElement(EventConnection, {
				event = GuiService.InspectMenuEnabledChangedSignal,
				callback = function(enabled)
					props.setInspectMenuEnabled(enabled)
				end,
			}),
		})
	end
end

local function mapDispatchToProps(dispatch)
	return {
		setInspectMenuEnabled = function(value)
			return dispatch(SetInspectMenuEnabled(value))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(nil, mapDispatchToProps)(GuiServiceConnector)