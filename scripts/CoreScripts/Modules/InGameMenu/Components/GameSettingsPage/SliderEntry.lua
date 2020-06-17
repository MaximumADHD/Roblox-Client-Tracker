local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent.Parent

local GlobalConfig = require(InGameMenu.GlobalConfig)

local InputLabel = require(script.Parent.InputLabel)
local SliderWithInput = require(InGameMenu.Components.SliderWithInput)

local validateProps = t.strictInterface({
	LayoutOrder = t.integer,
	labelKey = t.string,
	min = t.number,
	max = t.number,
	stepInterval = t.number,
	keyboardInputStepInterval = t.optional(t.numberPositive),
	value = t.number,
	disabled = t.optional(t.boolean),
	valueChanged = t.callback,
})

local function SliderEntry(props)
	if GlobalConfig.propValidation then
		assert(validateProps(props))
	end

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 92),
		LayoutOrder = props.LayoutOrder,
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 24),
			PaddingTop = UDim.new(0, 12),
			PaddingRight = UDim.new(0, 30),
			PaddingBottom = UDim.new(0, 24),
		}),
		Label = Roact.createElement(InputLabel, {
			Size = UDim2.new(1, 0, 0, 24),
			localizationKey = props.labelKey,
			Position = UDim2.new(0, 0, 0, 0),
			AnchorPoint = Vector2.new(0, 0),
		}),
		Slider = Roact.createElement(SliderWithInput, {
			min = props.min,
			max = props.max,
			stepInterval = props.stepInterval,
			keyboardInputStepInterval = props.keyboardInputStepInterval,
			value = props.value,
			Position = UDim2.new(0, 0, 0, 32),
			disabled = props.disabled,
			valueChanged = props.valueChanged,
		}),
	})
end

return SliderEntry