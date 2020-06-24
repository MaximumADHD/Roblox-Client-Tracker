local CorePackages = game:GetService("CorePackages")
local StarterGui = game:GetService("StarterGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)

local Components = script.Parent.Parent
local TopBar = Components.Parent

local UpdateCoreGuiEnabled = require(TopBar.Actions.UpdateCoreGuiEnabled)

local EventConnection = require(TopBar.Parent.Common.EventConnection)

local CoreGuiConnector = Roact.PureComponent:extend("CoreGuiConnector")

CoreGuiConnector.validateProps = t.strictInterface({
	updateCoreGuiEnabled = t.callback,
})

function CoreGuiConnector:didMount()
	local initalCoreGuiTypes = Enum.CoreGuiType:GetEnumItems()
	for _, coreGuiType in ipairs(initalCoreGuiTypes) do
		if coreGuiType ~= Enum.CoreGuiType.All then
			self.props.updateCoreGuiEnabled(coreGuiType, StarterGui:GetCoreGuiEnabled(coreGuiType))
		end
	end
end

function CoreGuiConnector:render()
	return Roact.createFragment({
		CoreGuiChangedConnection = Roact.createElement(EventConnection, {
			event = StarterGui.CoreGuiChangedSignal,
			callback = function(coreGuiType, enabled)
				self.props.updateCoreGuiEnabled(coreGuiType, enabled)
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