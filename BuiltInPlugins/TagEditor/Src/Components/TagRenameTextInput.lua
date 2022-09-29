local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local UI = Framework.UI
local TextInput = UI.TextInput

local Actions = require(Plugin.Src.Actions)
local TagManager = require(Plugin.Src.TagManager)

export type Props = {
	LayoutOrder: number,
	Size: UDim2,
	tagMenu: string,
	groupMenu: string,
	openTagMenu: ((string) -> ()),
	openGroupMenu: ((string) -> ()),
	setRenaming: ((string, boolean) -> ()),
	setRenamingGroup: ((string, boolean) -> ()),
}

type _Props = Props

local TagRenameTextInput = Roact.Component:extend("TagRenameTextInput")

function TagRenameTextInput:init()
	self.textBoxRef = Roact.createRef()
	self.enteredText = ""

	self.onTextChanged = function(text)
		self.enteredText = text
	end

	self.onFocusLost = function(enterPressed)
		local props: _Props = self.props
		local tagName = props.tagMenu
		local groupName = props.groupMenu
		local isGroup = groupName ~= nil and groupName ~= ""
		local text = self.enteredText
		string.gsub(text, "^%s+", "")
		if isGroup then
			if enterPressed and text ~= "" then
				TagManager.Get():RenameGroup(groupName, text)
				props.openGroupMenu(text)
			end
			props.setRenamingGroup(groupName, false)
		else
			if enterPressed and text ~= "" then
				TagManager.Get():Rename(tagName, text)
				props.openTagMenu(text)
			end
			props.setRenaming(tagName, false)
		end
	end
end

function TagRenameTextInput:render()
	local props: _Props = self.props

	local tagName = props.tagMenu
	local groupName = props.groupMenu

	local isGroup = groupName ~= nil and groupName ~= ""

	-- TODO STUDIOPLAT-28607 replace with TextInput2 when complete
	return Roact.createElement(TextInput, {
		Size = props.Size,
		Style = "FilledRoundedBorder",
		LayoutOrder = props.LayoutOrder,
		TextWrapped = true,
		ShouldFocus = true,
		TextXAlignment = Enum.TextXAlignment.Left,
		ForwardRef = self.textBoxRef,
		PlaceholderText = if isGroup then groupName else tagName,

		OnTextChanged = self.onTextChanged,
		OnFocusLost = self.onFocusLost,
	})
end

function TagRenameTextInput:didMount()
	self.textBoxRef.current:CaptureFocus()
end

local function mapStateToProps(state, _)
	return {
		tagMenu = state.TagMenu,
		groupMenu = state.GroupMenu,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		openTagMenu = function(tag: string)
			dispatch(Actions.OpenTagMenu(tag))
		end,
		openGroupMenu = function(group: string)
			dispatch(Actions.OpenGroupMenu(group))
		end,
		setRenaming = function(tag: string, renaming: boolean)
			dispatch(Actions.SetRenaming(tag, renaming))
		end,
		setRenamingGroup = function(group: string, renaming: boolean)
			dispatch(Actions.SetRenaming(group, renaming))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(TagRenameTextInput)
