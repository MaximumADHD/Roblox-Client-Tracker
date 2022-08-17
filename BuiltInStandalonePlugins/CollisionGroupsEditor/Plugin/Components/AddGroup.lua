local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local UI = Framework.UI
local Button = UI.Button
local Pane = UI.Pane
local TextInput = UI.TextInput

local StyleModifier = Framework.Util.StyleModifier

local Constants = require(script.Parent.Parent.Constants)

local AddGroup = Roact.PureComponent:extend("AddGroup")

function AddGroup:init()
	self.textBoxRef = Roact.createRef()
	self.text = ""
	self.state = {
		editing = false,
	}
end

function AddGroup:render()
	local props = self.props
	local localization = props.Localization
	local style = props.Stylizer

	local shouldDisable = #props.Groups >= Constants.GroupCountMax

	if shouldDisable and self.state.editing then
		self:setState({editing = false})
	end

	return Roact.createElement(Pane, {
		Size = props.Size,
		LayoutOrder = props.LayoutOrder,
		AutomaticSize = Enum.AutomaticSize.X,
		Layout = Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
	}, {
		AddButton = not self.state.editing and Roact.createElement(Button, {
			Style = "Round",
			Text = "+ " .. localization:getText("Actions", "AddGroup"),
			StyleModifier = if shouldDisable then StyleModifier.Disabled else nil,
			Size = style.AddGroupInternalButtonSize,
			TextWrapped = true,

			OnClick = function()
				self:setState({editing = true})

				if self.textBoxRef:getValue() ~= nil then
					self.textBoxRef:getValue():CaptureFocus()
				end

				props.OnEditingChanged(true)
			end,
		}),

		-- TODO STUDIOPLAT-28607 replace with TextInput2 when complete
		TextInput = self.state.editing and Roact.createElement(TextInput, {
			Style = "AddGroup",
			Size = style.AddGroupInternalButtonSize,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Center,
			PlaceholderText = "+ " .. localization:getText("Info", "NewGroupName"),
			ForwardRef = self.textBoxRef,

			OnTextChanged = function(text)
				self.text = text
			end,
			OnFocusLost = function(enterPressed)
				local text = self.text

				-- Despite clearing the text in this function, we still end up with a newline insertion after recapturing focus.
				-- So we should strip a leading newline from the input if one is present
				text = string.gsub(text, "^%s+", "")

				if enterPressed and text ~= "" and
				 text ~= " " and
				 text ~= localization:getText("Groups", "DefaultGroupName") then
					props.OnGroupAdded(text)
					if self.textBoxRef:getValue() ~= nil then
						self.textBoxRef:getValue():CaptureFocus()
					end
				else
					self:setState({editing = false})
					props.OnEditingChanged(false)
				end
				if self.textBoxRef:getValue() ~= nil then
					self.textBoxRef:getValue().Text = ""
				end
			end,
		}),
	})
end

AddGroup = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(AddGroup)

return AddGroup
