local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local UI = Framework.UI
local TextInput = UI.TextInput

local GroupRenameTextBox = Roact.Component:extend("GroupRenameTextBox")

function GroupRenameTextBox:init()
	self.textBoxRef = Roact.createRef()
	self.enteredText = ""
end

function GroupRenameTextBox:render()
	local props = self.props
	local style = props.Stylizer
	local localization = props.Localization
	local group = props.Group

	-- TODO STUDIOPLAT-28607 replace with TextInput2 when complete
	return Roact.createElement(TextInput, {
		Size = props.Size,
		LayoutOrder = props.LayoutOrder,
		Style = "GroupRename",
		BackgroundTransparency = 1,
		TextWrapped = true,
		ShouldFocus = true,
		TextXAlignment = Enum.TextXAlignment.Right,
		ForwardRef = self.textBoxRef,
		PlaceholderText = localization:getText("Info", "NewGroupName"),

		OnTextChanged = function(text)
			self.text = text
		end,

		OnFocusLost = function(enterPressed)
			if enterPressed then
				props.Group.OnRenamed(self.text)
			else
				props.Group.OnRenamed()
			end
		end,
	})
end

function GroupRenameTextBox:didMount()
	self.textBoxRef.current:CaptureFocus()
end

GroupRenameTextBox = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(GroupRenameTextBox)

return GroupRenameTextBox
