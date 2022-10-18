--[[
	The Main View rendered within the Tag Editor Plugin
]]

local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane
local SplitPane = UI.SplitPane
local KeyboardListener = UI.KeyboardListener

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

local Action = require(Plugin.Src.Actions)
local ColorPicker = require(script.Parent.ColorPicker)
-- local IconPicker = require(script.Parent.IconPicker)
local TagTopPane = require(script.Parent.TagTopPane)
local TagSettingsPane = require(script.Parent.TagSettingsPane)
local TagSettingsToggleButton = require(script.Parent.TagSettingsToggleButton)

export type Props = {
	colorPicker: string,
	iconPicker: string,
	minimizedSettingsPane: boolean,
	tagMenu: string,
	groupMenu: string,
	moveTagSelectionUpOrDown: ((boolean) -> ()),
	setRenaming: ((string, boolean) -> ()),
	setRenamingGroup: ((string, boolean) -> ()),
	setAssigningGroup: ((string) -> ()),
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
}

type _Style = {
	SplitPaneMinsizes: _Types.Array<UDim2>,
	SplitPaneInitialSizes: _Types.Array<UDim2>,
	SoloTopPaneSize: UDim2,
}

local MainGui = Roact.PureComponent:extend("MainGui")

function MainGui:init()
	self.onSizesChange = function(sizes)
		self:setState({
			sizes = sizes,
		})
	end
end

function MainGui:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.MainGui
	local orderIterator = LayoutOrderIterator.new()

	local _iconPickerToggled = false
	local colorPickerToggled = false
	local splitPaneVisible = false
	local soloTopPaneVisible = false

	if props.colorPicker and props.colorPicker ~= "" then
		colorPickerToggled = true
	elseif not props.minimizedSettingsPane and props.tagMenu then
		splitPaneVisible = true
	else
		soloTopPaneVisible = true
	end

	return Roact.createElement(Pane, {
		Style = "Box",
		Layout = Enum.FillDirection.Vertical,
		VerticalAlignment = Enum.VerticalAlignment.Top,
	}, {
		KeyboardListener = Roact.createElement(KeyboardListener, {
			OnKeyPressed = function(input, keysHeld)
				local isDown = keysHeld[Enum.KeyCode.Down]
				local isUp = keysHeld[Enum.KeyCode.Up]
				local isReturn = keysHeld[Enum.KeyCode.Return]
				local isEscape = keysHeld[Enum.KeyCode.Escape]
				if isUp or isDown then
					props.moveTagSelectionUpOrDown(isDown)
				elseif isReturn then
					if props.tagMenu and props.tagMenu ~= "" then
						props.setRenaming(props.tagMenu, true)
					else
						props.setRenamingGroup(props.groupMenu, true)
					end
				elseif isEscape then
					props.setAssigningGroup("")
				end
			end,
		}),
		ColorPicker = colorPickerToggled and Roact.createElement(ColorPicker),

		SplitPane = splitPaneVisible and Roact.createElement(SplitPane, {
			LayoutOrder = orderIterator:getNextOrder(),
			ClampSize = true,
			UseScale = true,
			Layout = Enum.FillDirection.Vertical,
			Sizes = self.state.sizes,
			MinSizes = style.SplitPaneMinsizes,
			OnSizesChange = self.onSizesChange,
			BarStyle = "WStyle",
		}, {
			Roact.createElement(TagTopPane),
			Roact.createElement(TagSettingsPane),
		}),
		SoloTopPane = soloTopPaneVisible and Roact.createElement(Pane, {
			LayoutOrder = orderIterator:getNextOrder(),
			Size = style.SoloTopPaneSize,
		}, {
			TopPane = Roact.createElement(TagTopPane),
		}),
		ShowTagSettingsButton = soloTopPaneVisible and Roact.createElement(TagSettingsToggleButton, {
			LayoutOrder = orderIterator:getNextOrder(),
		}),
	})
end

function MainGui:didMount()
	self:setState({
		sizes = self.props.Stylizer.MainGui.SplitPaneInitialSizes,
	})
end


MainGui = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(MainGui)


local function mapStateToProps(state, _)
	return {
		colorPicker = state.ColorPicker,
		iconPicker = state.IconPicker,
		minimizedSettingsPane = state.MinimizedSettingsPane,
		tagMenu = state.TagMenu,
		groupMenu = state.GroupMenu,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		moveTagSelectionUpOrDown = function(isDown)
			dispatch(Action.MoveTagSelectionUpOrDown(isDown))
		end,
		setRenaming = function(tag, renaming)
			dispatch(Action.SetRenaming(tag, renaming))
		end,
		setRenamingGroup = function(group, renaming)
			dispatch(Action.SetRenamingGroup(group, renaming))
		end,
		setAssigningGroup = function(name)
			dispatch(Action.SetAssigningGroup(name))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(MainGui)

