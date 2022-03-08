--[[
	Shows the Editor tabs

	Required Props:
		string ToolMode: which tool (Point/Lattice/None) is currently in use.
		callback SetToolMode: callback for when tool tab button is clicked
		table Localization: A Localization ContextItem, which is provided via withContext.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.

	Optional Props:
		number LayoutOrder: render order of component in layout
		number ZIndex: the z sorting order of the component
		boolean HasEditingCage: determines if a cage has been loaded into the editor, some tab buttons are disabled if not.
]]

local FFlagDebugEnableLatticeTool = game:DefineFastFlag("DebugEnableLatticeTool", false)

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Util = Framework.Util

local UI = Framework.UI
local Tabs = UI.Tabs
local Pane = UI.Pane

local Constants = require(Plugin.Src.Util.Constants)
local Typecheck = Util.Typecheck

local EditorTabsRibbon = Roact.PureComponent:extend("EditorTabsRibbon")
Typecheck.wrap(EditorTabsRibbon, script)

function EditorTabsRibbon:init()
	self.onClick = function(selectedTab)
		local key = selectedTab.Key
		if key and self.props.SetToolMode then
			self.props.SetToolMode(key)
		end
	end
end

function EditorTabsRibbon:render()
	local props = self.props
	local localization = props.Localization
	local style = props.Stylizer
	local layoutOrder = props.LayoutOrder

	local hasEditingCage = props.HasEditingCage

	local buttons = {}
	if FFlagDebugEnableLatticeTool then
		table.insert(buttons, {
			Key = Constants.TOOL_MODE.Lattice,
			Label = localization:getText(Constants.LOCALIZATION_KEYS.Editor, Constants.TOOL_MODE.Lattice),
			Disabled = not hasEditingCage
		})
	end

	table.insert(buttons, {
		Key = Constants.TOOL_MODE.Point,
		Label = localization:getText(Constants.LOCALIZATION_KEYS.Editor, Constants.TOOL_MODE.Point),
		Disabled = not hasEditingCage,
	})

	table.insert(buttons, {
		Key = Constants.TOOL_MODE.Reset,
		Label = localization:getText(Constants.LOCALIZATION_KEYS.Editor, Constants.TOOL_MODE.Reset),
		Disabled = not hasEditingCage,
	})

	local selectedTab
	for _, tab in ipairs(buttons) do
		if tab.Key == self.props.ToolMode then
			selectedTab = tab
		end
	end

	return Roact.createElement(Pane, {
		Size = UDim2.new(1, 0, 0, style.TabHeight),
		LayoutOrder = layoutOrder,
	}, {
		BottomLine = Roact.createElement(Pane, {
			Size = UDim2.new(1, 0, 0, style.BorderSize),
			Position = UDim2.new(0, 0, 1, 0),
			AnchorPoint = Vector2.new(0, 1),
			BackgroundColor = style.BorderColor,
			ZIndex = 0,
		}),
		Tabs = Roact.createElement(Tabs, {
			Tabs = buttons,
			OnTabSelected = self.onClick,
			SelectedTab = selectedTab,
		}),
	})
end

EditorTabsRibbon = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(EditorTabsRibbon)

return EditorTabsRibbon