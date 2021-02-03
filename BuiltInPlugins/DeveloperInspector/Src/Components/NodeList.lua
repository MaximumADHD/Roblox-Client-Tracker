--[[
	A styled select list which can accept rows containing an icon, name and link
]]
local main = script.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Roact = require(main.Packages.Roact)
local RoactRodux = require(main.Packages.RoactRodux)
local ContextServices = Framework.ContextServices
local InspectorContext = require(main.Src.Util.InspectorContext)
local DeveloperTools = require(main.Packages.DeveloperTools)
local RoactInspectorApi = DeveloperTools.RoactInspectorApi

local Util = Framework.Util
local UI = Framework.UI
local Container = UI.Container
local ScrollingFrame = UI.ScrollingFrame

local Dash = require(main.Packages.Dash)
local collect = Dash.collect
local find = Dash.find
local shallowEqual = Dash.shallowEqual

local NodeListRow = require(script.NodeListRow)
local traceSource = require(main.Src.Util.traceSource)

local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local Actions = main.Src.Actions
local SelectNode = require(Actions.RoactInspector.SelectNode)

local NodeList = Roact.PureComponent:extend("NodeList")

local FLASH_DURATION_SECONDS = 1

function NodeList:init()
	self.onSelectNode = function(nodeIndex)
		self.props.selectNode(nodeIndex)
		local inspector = self.props.Inspector:get()
		local api = inspector:getTargetApi()
		if RoactInspectorApi.isInstance(api) then
			api:getFields(self.props.SelectedPath, nodeIndex, {"props"})
			api:getFields(self.props.SelectedPath, nodeIndex, {"state"})
			api:getFields(self.props.SelectedPath, nodeIndex, {"_context"})
		end
	end
end

function NodeList:getFlash()
	local flash = find(self.props.Flash, function(flash, path)
		return shallowEqual(path, self.props.SelectedPath)
	end)
	if flash then
		local age = os.clock() - flash.time
		if age < FLASH_DURATION_SECONDS then
			return flash
		end
	end
	return nil
end

function NodeList:onSelectLink(source)
	local Plugin = self.props.Plugin:get()
	local instance, lineNumber = traceSource(source)
	if instance then
		Plugin:OpenScript(instance, lineNumber)
	end
end

function NodeList:render()
	local props = self.props
	local style
	if THEME_REFACTOR then
		style = props.Stylizer
	else
		local theme = props.Theme
		style = theme:getStyle("Plugin", self)
	end

	local flash = self:getFlash()

	local children = collect(props.Nodes, function(index: number, item)
		local hasFlash = flash and flash.indexSet[index]
		return "Item " .. index, Roact.createElement(NodeListRow, {
			Index = index,
			Icon = item.Icon,
			Name = item.Name,
			Flash = hasFlash and flash or nil,
			LinkText = item.Link,
			IsSelected = index == props.SelectedIndex,
			OnSelect = self.onSelectNode,
			OnClickLink = function()
				self:onSelectLink(item.Source)
			end,
			Style = style
		})
	end)

	return Roact.createElement(Container, {
		Padding = style.Padding,
		Size = props.Size,
		Background = style.Background,
		BackgroundStyle = style.BackgroundStyle,
	}, {
		ScrollingFrame = Roact.createElement(ScrollingFrame, {
			Size = UDim2.fromScale(1, 1),
			Style = style.ScrollingFrame,
			AutoSizeCanvas = true,
			AutoSizeLayoutOptions = {
				SortOrder = Enum.SortOrder.LayoutOrder
			}
		}, children)
	})
end

ContextServices.mapToProps(NodeList, {
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	Inspector = InspectorContext
})

return RoactRodux.connect(
	function(state, props)
		return {
			Flash = state.RoactInspector.flashInstances,
			Nodes = state.RoactInspector.nodes,
			SelectedPath = state.RoactInspector.selectedPath,
			SelectedIndex = state.RoactInspector.selectedNodeIndex
		}
	end,
	function(dispatch)
		return {
			selectNode = function(nodeIndex)
				dispatch(SelectNode(nodeIndex))
			end,
		}
	end
)(NodeList)

