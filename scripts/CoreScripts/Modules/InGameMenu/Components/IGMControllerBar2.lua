local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)

local UIBlox = InGameMenuDependencies.UIBlox
local ControllerBar = UIBlox.App.Bar.ControllerBar
local InGameMenu = script.Parent.Parent
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local RoactRodux = InGameMenuDependencies.RoactRodux
local Constants = require(InGameMenu.Resources.Constants)
local IncrementControllerBar = require(InGameMenu.Actions.IncrementControllerBar)
local DecrementControllerBar = require(InGameMenu.Actions.DecrementControllerBar)
local IGMControllerBar2 = Roact.PureComponent:extend("IGMControllerBar2")

IGMControllerBar2.validateProps = t.strictInterface({
	rightHints = t.table,
	leftHint = t.table,
	incrementControllerBar = t.callback,
	decrementControllerBar = t.callback,
})

function IGMControllerBar2:init()
	self.props.incrementControllerBar()
end

function IGMControllerBar2:willUnmount()
	self.props.decrementControllerBar()
end

function IGMControllerBar2:render()
	return Roact.createElement(Roact.Portal, {
		-- LUAU FIXME: Need read-write syntax for props to obviate the need for this cast
		target = CoreGui :: Instance,
	}, {
		IGMControllerBar = Roact.createElement("ScreenGui", {
			DisplayOrder = Constants.DisplayOrder.ControllerBar,
		}, {
			ControllerBar = Roact.createElement(ControllerBar, {
				rightHints = self.props.rightHints,
				leftHint = self.props.leftHint,
			}),
		})
	})
end

return RoactRodux.UNSTABLE_connect2(nil, function(dispatch)
	return {
		incrementControllerBar = function()
			dispatch(IncrementControllerBar())
		end,
		decrementControllerBar = function()
			dispatch(DecrementControllerBar())
		end,
	}
end)(IGMControllerBar2)
