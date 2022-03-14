local Packages = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Packages.Roact)

local App = Packages.UIBlox.App
local ControllerBar = require(App.Bar.ControllerBar)

local ControllerBarStory = Roact.PureComponent:extend("ControllerBarStory")

function ControllerBarStory:init()
	self.state = {
		screenSize = Vector2.new(0, 100),
	}

	self.changeScreenSize = function(rbx)
		if self.state.screenSize ~= rbx.AbsoluteSize then
			self:setState({
				screenSize = rbx.AbsoluteSize,
			})
		end
	end
end
function ControllerBarStory:render()
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0.5, 0),
		[Roact.Change.AbsoluteSize] = self.changeScreenSize,
	}, {
		Roact.createElement(ControllerBar, {
			leftHint = {
				keyCode = Enum.KeyCode.ButtonB,
				text = "Back",
			},
			rightHints = self.props.hints,
		}),
	})
end

return Roact.createElement("Frame", {
	Size = UDim2.new(1, 0, 0, 700),
}, {
	layout = Roact.createElement("UIListLayout"),
	Roact.createElement(ControllerBarStory, {
		hints = {
			{
				keyCode = Enum.KeyCode.ButtonX,
				text = "More Menu",
			},
			{
				keyCode = Enum.KeyCode.ButtonY,
				text = "Respawn",
			},
		},
	}),
	Roact.createElement(ControllerBarStory, {
		hints = {
			{
				keyCode = Enum.KeyCode.ButtonX,
				text = "More Menu",
			},
			{
				keyCode = Enum.KeyCode.ButtonY,
				text = "Respawn",
			},
			{
				keyCode = Enum.KeyCode.ButtonA,
				text = "Leave Game",
			},
			{
				keyCode = Enum.KeyCode.ButtonB,
				text = "Select",
			},
		},
	}),
})
