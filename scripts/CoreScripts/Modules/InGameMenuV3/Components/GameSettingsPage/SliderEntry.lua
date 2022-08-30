local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t
local InputLabel = require(script.Parent.InputLabel)

local SliderEntry = Roact.PureComponent:extend("SliderEntry")
SliderEntry.validateProps = t.strictInterface({
	LayoutOrder = t.integer,
	labelKey = t.string,
	min = t.number,
	max = t.number,
	stepInterval = t.number,
	keyboardInputStepInterval = t.optional(t.numberPositive),
	value = t.number,
	disabled = t.optional(t.boolean),
	valueChanged = t.callback,
	canCaptureFocus = t.optional(t.boolean),
	buttonRef = t.optional(t.table),
})

function SliderEntry:init()
	self.state = {
		isFrameSelectable = true,
	}
end

function SliderEntry:render()
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 92),
		LayoutOrder = self.props.LayoutOrder,
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 24),
			PaddingTop = UDim.new(0, 12),
			PaddingRight = UDim.new(0, 30),
			PaddingBottom = UDim.new(0, 24),
		}),
		Label = Roact.createElement(InputLabel, {
			Size = UDim2.new(1, 0, 0, 24),
			localizationKey = self.props.labelKey,
			Position = UDim2.new(0, 0, 0, 0),
			AnchorPoint = Vector2.new(0, 0),
		}),
		Slider =  Roact.createElement(UIBlox.App.Slider.SystemSlider, {
			value = self.props.value,
			min = self.props.min,
			max = self.props.max,
			stepInterval = self.props.stepInterval,
			isDisabled = self.props.disabled,
			onValueChanged =  self.props.valueChanged,
			textInputEnabled = true,
			position = UDim2.new(0, 0, 0, 32),
			width = UDim.new(1, 1),
		})
	})
end

return SliderEntry
