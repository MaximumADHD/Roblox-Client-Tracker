local PluginFolder = script.Parent.Parent.Parent.Parent
local Roact = require(PluginFolder.Packages.Roact)
local Framework = require(PluginFolder.Packages.Framework)
local Cryo = require(PluginFolder.Packages.Cryo)

local UI = Framework.UI
local Pane = UI.Pane
local DropdownMenu = UI.DropdownMenu
local Checkbox = UI.Checkbox
local Separator = UI.Separator
local Button = UI.Button

local DropdownField = Roact.PureComponent:extend("DropdownField")

local function areAllFieldsChecked(states)
	for _, checked in pairs(states) do
		if not checked then
			return false
		end
	end
	return true
end

local function areAnyFieldsChecked(states)
	for _, checked in pairs(states) do
		if checked then
			return true
		end
	end
	return false
end

local function getAllFieldsCheckbox(states)
	if areAllFieldsChecked(states) then
		return true
	elseif areAnyFieldsChecked(states) then
		return Checkbox.Indeterminate
	else
		return false
	end
end

function DropdownField:init()	
	self.state = {
		isOpen = false,
	}

	self.onDropdownClick = function(key)
		local props = self.props
		local enabledFields = {}
		local newKeyStates = Cryo.Dictionary.join(props.KeyStates, {
			[key] = not props.KeyStates[key],
		})
		for k, v in pairs(newKeyStates) do
			if v == true then
				table.insert(enabledFields, self.props.KeyTexts[k])
			end
		end
		props.ClickCallback(enabledFields)
	end

	self.onAllDropdownClick = function(key)
		local props = self.props
		local newAllFieldsChecked = not areAllFieldsChecked((props.KeyStates))
		local enabledFields = {}
		if newAllFieldsChecked then
			for k, v in ipairs(self.props.KeyTexts) do
				if k ~= 1 then
					table.insert(enabledFields, v)
				end
			end
		end
		props.ClickCallback(enabledFields)
	end

	self.onRenderItem = function(item, index, activated)
		local props = self.props
		local localization = props.Localization
		local style = props.Style

		return Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.Y,
			LayoutOrder = index,
			Stylizer = style,
			BackgroundColor = style.MainBackground,
			BorderColor = style.BorderColor,
		}, {
			CheckboxView = Roact.createElement(Checkbox, {
				LayoutOrder = 1,
				Key = index,
				Checked = index == 1 and getAllFieldsCheckbox(props.KeyStates) or props.KeyStates[index],
				OnClick = index == 1 and self.onAllDropdownClick or self.onDropdownClick,
				Text = localization:getText(props.Widget, self.props.KeyTexts[index]),
				Stylizer = style,
			}),
			SeparatorView = index == 1 and Roact.createElement(Separator, {
				LayoutOrder = 2,
				Position = UDim2.new(0.5, 0, 1, 0),
				DominantAxis = Enum.DominantAxis.Width,
				Style = style.Separator,
				Stylizer = style,
			}),
		})
	end

	self.openMenu = function()
		self:setState({
			isOpen = true,
		})
	end

	self.closeMenu = function()
		self:setState({
			isOpen = false,
		})
	end

end

function DropdownField:render()
	local props = self.props
	local style = props.Style
	local localization = props.Localization
	local buttonText = ""
	if props.NumDisplay == props.MaxDisplay then
		buttonText = localization:getText(props.Widget, self.props.KeyTexts[1])
	else
		buttonText = localization:getText(props.Widget, "DropdownButtonText", {NumFields = props.NumDisplay})
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(0, props.DropdownWidth, 1, 0),
		LayoutOrder = props.LayoutOrder,
		BorderColor3 = style.BorderColor
	}, {
		ButtonView = Roact.createElement(Button, {
			Text = buttonText,
			TextSize = style.TextSize,
			Font = style.Font,
			Size = UDim2.new(1, 0, 1, 0),
			Stylizer = style,
			BorderSizePixel = 0,
			OnClick = self.openMenu,
		}),
		DropdownView = Roact.createElement(DropdownMenu, {
			Width = props.DropdownWidth,
			Hide = not self.state.isOpen,
			Items = self.props.KeyTexts,
			OnFocusLost = self.closeMenu,
			OnRenderItem = self.onRenderItem,
			Stylizer = style,
		}),
	})

end

return DropdownField

