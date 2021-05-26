local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux

local InGameMenu = script.Parent.Parent.Parent

local Controls = require(InGameMenu.Resources.Controls)

local SetControlLayout = require(InGameMenu.Actions.SetControlLayout)

local ControlLayoutSetter = Roact.PureComponent:extend("ControlLayoutSetter")

function ControlLayoutSetter:render()
	return nil
end

function ControlLayoutSetter:didMount()
	self.inputChangedConnection = UserInputService.LastInputTypeChanged:Connect(function(lastInputType)

		local controlLayout = Controls.inputToControlTypeMap[lastInputType]

		if controlLayout then
			self.props.dispatchSetControlLayout(controlLayout)
		end
	end)

	self.props.dispatchSetControlLayout(Controls.ControlLayouts.TOUCH)
end

function ControlLayoutSetter:willUnmount()
	if self.inputChangedConnection then
		self.inputChangedConnection:Disconnect()
	end
end

return RoactRodux.UNSTABLE_connect2(
	nil,
	function(dispatch)
		return {
			dispatchSetControlLayout = function(controlLayout)
				dispatch(SetControlLayout(controlLayout))
			end
		}
	end
)(ControlLayoutSetter)