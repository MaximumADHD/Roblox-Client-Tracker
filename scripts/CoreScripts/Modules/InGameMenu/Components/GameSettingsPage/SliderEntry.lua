local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent.Parent

local InputLabel = require(script.Parent.InputLabel)
local SliderWithInput = require(InGameMenu.Components.SliderWithInput)

local Flags = InGameMenu.Flags
local GetFFlagInGameMenuControllerDevelopmentOnly = require(Flags.GetFFlagInGameMenuControllerDevelopmentOnly)

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
	canCaptureFocus = GetFFlagInGameMenuControllerDevelopmentOnly() and t.optional(t.boolean) or nil,
	isMenuOpen = GetFFlagInGameMenuControllerDevelopmentOnly() and t.optional(t.boolean) or nil,
	buttonRef = GetFFlagInGameMenuControllerDevelopmentOnly() and t.optional(t.table) or nil,
})

function SliderEntry:init()
	self.state = {
		isFrameSelectable = GetFFlagInGameMenuControllerDevelopmentOnly() and true or nil,
	}
end

function SliderEntry:render()
	local selectable = nil
	if GetFFlagInGameMenuControllerDevelopmentOnly() then
		selectable = self.state.isFrameSelectable
	end

	local canCaptureFocus = nil
	if GetFFlagInGameMenuControllerDevelopmentOnly() then
		canCaptureFocus = self.props.canCaptureFocus
	end

	local isMenuOpen = nil
	if GetFFlagInGameMenuControllerDevelopmentOnly() then
		isMenuOpen = self.props.isMenuOpen
	end

	local sliderDotRef = self.props.buttonRef or
		(GetFFlagInGameMenuControllerDevelopmentOnly() and Roact.createRef() or nil)
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 92),
		LayoutOrder = self.props.LayoutOrder,

		-- Captures focus gamepad focus when navigating to slider area and directs it
		-- to the slider dot (as opposed to the slider text entry box)
		Selectable = selectable,
		[Roact.Event.SelectionGained] = GetFFlagInGameMenuControllerDevelopmentOnly() and function()
			GuiService.SelectedCoreObject = sliderDotRef:getValue()
			self:setState({
				isFrameSelectable = false,
			})
		end or nil,
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
		Slider = Roact.createElement(SliderWithInput, {
			min = self.props.min,
			max = self.props.max,
			stepInterval = self.props.stepInterval,
			keyboardInputStepInterval = self.props.keyboardInputStepInterval,
			value = self.props.value,
			Position = UDim2.new(0, 0, 0, 32),
			disabled = self.props.disabled,
			valueChanged = self.props.valueChanged,
			canCaptureFocus = canCaptureFocus,
			isMenuOpen = isMenuOpen,
			sliderDotRef = sliderDotRef,

			-- Following two props are passed down to both slider dot and slider text box. The surrounding frame
			-- rendered above, which is used to catch and direct focus to the slider dot, is made unselectable
			-- when one of it's children is selected. When focus is lost from one of them, the bounding frame
			-- becomes selectable again.
			onSelectionLost = GetFFlagInGameMenuControllerDevelopmentOnly() and function()
				self:setState({
					isFrameSelectable = true
				})
			end or nil,
			onSelectionGained = GetFFlagInGameMenuControllerDevelopmentOnly() and function()
				self:setState({
					isFrameSelectable = false
				})
			end or nil,
		}),
	})
end

return SliderEntry