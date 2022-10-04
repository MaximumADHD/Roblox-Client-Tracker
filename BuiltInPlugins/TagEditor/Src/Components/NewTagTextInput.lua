local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local UI = Framework.UI
local HoverArea = UI.HoverArea
local Image = UI.Decoration.Image
local Pane = UI.Pane
local TextInput = UI.TextInput
local TextLabel = UI.Decoration.TextLabel

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

local Actions = require(Plugin.Src.Actions)
local TagManager = require(Plugin.Src.TagManager)

export type Props = {
	LayoutOrder: number,
	Size: UDim2,
	openTagMenu: ((string) -> ()),
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
}

type _Style = {
	TextInputSize: UDim2,
	Spacing: number,
	IconColorHover: Color3,
	IconColor: Color3,
	IconSize: UDim2,
}

local NewTagTextInput = Roact.Component:extend("NewTagTextInput")

function NewTagTextInput:init()
	self.textBoxRef = Roact.createRef()
	self.state = {
		enteredText = "",
		editing = false,
		hovered = false,
	}

	self.onTextChanged = function(text: string)
		self.enteredText = text
	end

	self.beginEditing = function()
		self:setState({
			editing = true,
		})
		if self.textBoxRef.current then
			self.textBoxRef.current:CaptureFocus()
		end
	end

	self.endEditing = function(enterPressed: boolean)
		local props: _Props = self.props
		if enterPressed then
			TagManager.Get():AddTag(self.enteredText)
			props.openTagMenu("")
		end
		self:setState({
			editing = false,
			enteredText = "",
		})
	end
end

function NewTagTextInput:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.NewTagTextInput
	local localization = props.Localization
	local orderIterator = LayoutOrderIterator.new()

	-- TODO STUDIOPLAT-28607 replace with TextInput2 when complete
	return Roact.createElement(Pane, {
		Size = props.Size,
		LayoutOrder = props.LayoutOrder,
	}, {
		HoverArea = Roact.createElement(HoverArea, {
			Cursor = "PointingHand",
			MouseEnter = function()
				self:setState({
					hovered = true,
				})
			end,
			MouseLeave = function()
				self:setState({
					hovered = false,
				})
			end,
		}),
		Pane = Roact.createElement(Pane, {
			Size = props.Size,
			Layout = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			OnClick = self.beginEditing,
			Spacing = style.Spacing,
		}, {
			AddIcon = Roact.createElement(Image, {
				LayoutOrder = orderIterator:getNextOrder(),
				Size = style.IconSize,
				Image = "rbxasset://textures/TagEditor/Insert.png",
				ImageColor3 = if self.state.hovered then style.IconColorHover else style.IconColor,
			}),
			TextLabel = not self.state.editing and Roact.createElement(TextLabel, {
				Size = style.TextInputSize,
				Style = if self.state.hovered then "ButtonTextHover" else "ButtonText",
				LayoutOrder = orderIterator:getNextOrder(),
				Text = localization:getText("Info", "CreateNewTag"),
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
			TextInput = self.state.editing and Roact.createElement(TextInput, {
				Size = style.TextInputSize,
				Style = "FilledRoundedBorder",
				LayoutOrder = orderIterator:getNextOrder(),
				TextWrapped = true,
				ShouldFocus = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				ForwardRef = self.textBoxRef,
				PlaceholderText = localization:getText("Info", "CreateNewTag"),

				OnTextChanged = self.onTextChanged,
				OnFocusLost = self.endEditing,
			}),
		}),
	})
end

NewTagTextInput = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(NewTagTextInput)

local function mapStateToProps(state, _)
	return {
	}
end

local function mapDispatchToProps(dispatch)
	return {
		openTagMenu = function(tag: string)
			dispatch(Actions.OpenTagMenu(tag))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(NewTagTextInput)
