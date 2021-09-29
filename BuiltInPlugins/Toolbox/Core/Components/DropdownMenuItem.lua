--[[
	This is a DropdownMenuItem created for the SearchBar. It contains features that are useful
	for implementing autocomplete.
	It will display a single item within a larger dropdown menu component.
	User can change the content of the DropdownMenuItem.

	Required Props:
		callback OnClick: Function that will be called when the item is selected.
		string Text: Text to be displayed in menu item.

	Optional Props:
		number LayoutOrder: order the item should be displayed in the dropdown menu
		UDim2 Position: Position of component
		boolean HideSeparator: Hides separator component in item
		UDim2 Size: Element size
		string FocusedText: Text, if any, to be focused on and unbolded [for autocomplete]
]]

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local Framework = require(Libs.Framework)
local ContextServices = Framework.ContextServices

local Button = Framework.UI.Button
local Separator = Framework.UI.Separator

local DropdownMenuItem = Roact.PureComponent:extend("DropdownMenuItem")

local withContext = ContextServices.withContext
local FFlagToolboxWithContext = game:GetFastFlag("ToolboxWithContext")

local TEXT_PADDING = 10

DropdownMenuItem.defaultProps = {
	Size = UDim2.new(0, 200, 0, 25),
}

local function getBoldedText(text, focusedText)
	local lowercaseText = text:lower()
	local lowercaseFocusedText = focusedText:lower()
	local substringIndex = string.find(lowercaseText, lowercaseFocusedText)
	local newString
	if (substringIndex ~= nil) then
		newString = string.sub(text, 0, substringIndex-1) .. "</b>" .. string.sub(text, substringIndex, substringIndex + string.len(focusedText)-1) .."<b>" ..
			string.sub(text, substringIndex + string.len(focusedText), string.len(text))
	else
		newString = text
	end
	return  "<b>" .. newString .. "</b>"
end

function DropdownMenuItem:render()
	local props = self.props

	local theme = props.Stylizer

	local fontSize = theme.TextSize

	local buttonText
	if (props.FocusedText ~= nil) then
		buttonText = getBoldedText(props.Text, props.FocusedText)
	else
		buttonText = props.Text
	end

	return Roact.createElement(Button, {
		AutomaticSize = Enum.AutomaticSize.Y,
		OnClick = props.OnClick,
		Position = props.Position,
		Size = props.Size,
		LayoutOrder = props.LayoutOrder,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		ItemLabel = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			Font = theme.Font,
			LayoutOrder = 1,
			RichText = true,
			Size = props.Size,
			Text = buttonText,
			TextColor3 = theme.TextColor,
			TextSize = fontSize,
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, TEXT_PADDING),
			}),
		}),
		
		Separator = not props.HideSeparator and Roact.createElement(Separator, {
			DominantAxis = Enum.DominantAxis.Width,
			LayoutOrder = 2,
		})
	})

end

if FFlagToolboxWithContext then
	DropdownMenuItem = withContext({
		Stylizer = ContextServices.Stylizer,
	})(DropdownMenuItem)
else
	ContextServices.mapToProps(DropdownMenuItem, {
		Stylizer = ContextServices.Stylizer,
	})
end

return DropdownMenuItem
