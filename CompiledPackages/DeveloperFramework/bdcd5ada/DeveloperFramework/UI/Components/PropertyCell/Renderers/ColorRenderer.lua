local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil

local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

local Components = Framework.UI.Components
local CaptureFocus = require(Components.CaptureFocus)
local ColorPicker = require(Components.ColorPicker)
local IconButton = require(Components.IconButton)
local Pane = require(Components.Pane)
local TextInput = require(Components.TextInput)

local ColorRenderer = Roact.PureComponent:extend("ColorRenderer")

local BUTTON_HEIGHT = 35
local COLORPICKER_HEIGHT = 225
local COLORPICKER_MINWIDTH = 250
local PADDING = 5

export type Props = {
	AutomaticSize: any,
	Disabled: boolean,
	MinimumHeight: number,
	OnChanged: (Color3?) -> (),
	Value: Color3?,
}

type _Props = Props & {
	Focus: any,
}

function ColorRenderer:init()
	self.cellRef = Roact.createRef()

	self.state = {
		isPickerOpen = false,
		ColorValue = self.props.Value,
	}

	self.onClick = function()
		self:setState({
			ColorValue = self.props.Value,
			isPickerOpen = true,
		})
	end

	self.onClose = function()
		self:setState({
			isPickerOpen = false,
		})
	end

	self.onSave = function()
		self.props.OnChanged(self.state.ColorValue)
		self.onClose()
	end

	self.updateColor = function(color: Color3)
		self:setState({
			ColorValue = color,
		})
	end

	self.onTextEdited = function(text: string)
		local ok, color = pcall(function()
			return Color3.fromHex(text)
		end)
		if ok then
			self.props.OnChanged(color)
		end
	end

	self.calculatePosition = function(pluginGui: PluginGui)
		if not self.cellRef or not self.cellRef.current then
			return nil
		end

		local absolutePosition = self.cellRef.current.AbsolutePosition
		local absoluteSize = self.cellRef.current.AbsoluteSize
		local guiSize = pluginGui.AbsoluteSize

		local yPos = absolutePosition.Y + absoluteSize.Y
		local paneHeight = COLORPICKER_HEIGHT + BUTTON_HEIGHT + PADDING * 4
		local enoughRoomOnBottom = guiSize.Y - (absolutePosition.Y + absoluteSize.Y + paneHeight)
		local enoughRoomOnTop = absolutePosition.Y - paneHeight
		if enoughRoomOnBottom < 0 and enoughRoomOnTop > 0 then
			yPos = absolutePosition.Y - paneHeight
		elseif enoughRoomOnBottom < 0 and enoughRoomOnTop < 0 then
			yPos = absolutePosition.Y + enoughRoomOnBottom + absoluteSize.Y
		end

		local xPos = absolutePosition.X
		local fitsRightDiff = guiSize.X - (xPos + COLORPICKER_MINWIDTH)
		if fitsRightDiff < 0 then
			xPos = xPos + fitsRightDiff
		end

		return UDim2.fromOffset(xPos, yPos)
	end
end

function ColorRenderer:renderColorPicker()
	local props = self.props
	local state = self.state

	local pluginGui = props.Focus:get()
	local position = self.calculatePosition(pluginGui)

	return Roact.createElement(Pane, {
		[React.Tag] = "Paper X-Center X-Column X-Fit X-Stroke",
		Position = position,
	}, {
		ColorPicker = Roact.createElement(ColorPicker, {
			Color = state.ColorValue,
			LayoutOrder = 1,
			OnColorChanged = self.updateColor,
			Size = UDim2.new(1, 0, 0, COLORPICKER_HEIGHT),
		}),
		ButtonContainer = Roact.createElement(Pane, {
			LayoutOrder = 2,
			[React.Tag] = "X-Center X-FitY X-Pad X-RowM",
		}, {
			Close = Roact.createElement(IconButton, {
				LayoutOrder = 1,
				Text = "Close",
				OnClick = self.onClose,
			}),
			Save = Roact.createElement(IconButton, {
				LayoutOrder = 2,
				Text = "Save",
				OnClick = self.onSave,
			}),
		}),
	})
end

function ColorRenderer:render()
	local props = self.props
	local state = self.state
	local hexColor = if props.Value then props.Value:ToHex() else "#"

	return Roact.createElement(Pane, {
		[Roact.Ref] = self.cellRef,
	}, {
		Input = Roact.createElement(TextInput, {
			Disabled = props.Disabled,
			LeadingComponent = IconButton,
			LeadingComponentProps = {
				BackgroundColor = props.Value,
				Size = UDim2.fromOffset(16, 16),
				OnClick = self.onClick,
			},
			OnFocusLost = self.onTextEdited,
			Size = if props.AutomaticSize then UDim2.new(1, 0, 0, props.MinimumHeight or 24) else UDim2.fromScale(1, 1),
			Text = hexColor,
		}),
		PortalToRoot = state.isPickerOpen and Roact.createElement(CaptureFocus, {
			OnFocusLost = self.onClose,
		}, {
			Menu = state.isPickerOpen and self:renderColorPicker(),
		}),
	})
end

ColorRenderer = withContext({
	Focus = ContextServices.Focus,
})(ColorRenderer)

return ColorRenderer
