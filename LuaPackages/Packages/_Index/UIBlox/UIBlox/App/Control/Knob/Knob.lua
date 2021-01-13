local Knob = script.Parent
local Control = Knob.Parent
local App = Control.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)

local BaseKnob = require(Knob.BaseKnob)
local ControlState = require(UIBlox.Core.Control.Enum.ControlState)
local Colors = require(App.Style.Colors)

local colorMap = {
	contextual = {
		[ControlState.Default] = {
			Color = Colors.White,
			Transparency = 0,
		},
		[ControlState.Hover] = {
			Color = Colors.White,
			Transparency = 0,
		},
		[ControlState.Pressed] = {
			Color = Colors.Green,
			Transparency = 0,
		},
		[ControlState.Disabled] = {
			Color = Colors.Pumice,
			Transparency = 0,
		},
		[ControlState.Selected] = {
			Color = Colors.White,
			Transparency = 0,
		},
		[ControlState.SelectedPressed] = {
			Color = Colors.White,
			Transparency = 0,
		},
	},
	system = {
		[ControlState.Default] = {
			Color = Colors.White,
			Transparency = 0,
		},
		[ControlState.Hover] = {
			Color = Colors.White,
			Transparency = 0,
		},
		[ControlState.Pressed] = {
			Color = Colors.Pumice,
			Transparency = 0,
		},
		[ControlState.Disabled] = {
			Color = Colors.Pumice,
			Transparency = 0,
		},
		[ControlState.Selected] = {
			Color = Colors.White,
			Transparency = 0,
		},
		[ControlState.SelectedPressed] = {
			Color = Colors.White,
			Transparency = 0,
		},
	}
}

local function buildKnob(styleName)
	return function(props)
		local currentColorMap = colorMap[styleName]
		local newProps = Cryo.Dictionary.join({},props,{
			colorMap = currentColorMap
		})
		return Roact.createElement(BaseKnob,newProps)
	end
end

return {
	ContextualKnob = buildKnob("contextual"),
	SystemKnob = buildKnob("system"),
}