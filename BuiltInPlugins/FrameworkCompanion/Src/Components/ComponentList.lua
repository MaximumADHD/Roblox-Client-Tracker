--[[
	The list of components on the left side of the plugin.
	Clicking a component changes what displays on the InfoPanel.
	No required props, all props are injected from mapToProps or RoactRodux:connect.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local UI = require(Plugin.Packages.Framework.UI)
local Container = UI.Container
local Button = UI.Button
local Decoration = UI.Decoration
local HoverArea = UI.HoverArea

local GetComponents = require(Plugin.Src.Thunks.GetComponents)
local RunTests = require(Plugin.Src.Thunks.RunTests)
local SetCurrentItem = require(Plugin.Src.Actions.SetCurrentItem)

local ComponentList = Roact.PureComponent:extend("ComponentList")

function ComponentList:init()
	self.extents, self.updateExtents = Roact.createBinding(Vector2.new())
end

function ComponentList:didMount()
	self.props.GetComponents()

	local rerunAction = self.props.PluginActions:get("rerunLastStory")
	rerunAction.Enabled = true
	self.__rerunActionConnection = rerunAction.Triggered:Connect(function()
		local lastStory = self.props.Plugin:get():GetSetting("lastStory")
		if lastStory then
			self.props.SetCurrentItem(lastStory)
			local tests = self.props.Tests[lastStory]
			if tests then
				self.props.RunTests(tests)
			end
		end
	end)
end

function ComponentList:willUnmount()
	local rerunAction = self.props.PluginActions:get("rerunLastStory")
	rerunAction.Enabled = false
	if self.__rerunActionConnection then
		self.__rerunActionConnection:Disconnect()
	end
end

function ComponentList:renderHeader(header, index)
	local props = self.props
	local text = props.Theme:get("Text")
	local sizes = props.Theme:get("Sizes")

	return Roact.createElement("TextLabel", {
		Size = UDim2.new(1, 0, 0, sizes.ButtonHeight),
		Text = header,
		Font = Enum.Font.SourceSans,
		TextSize = text.Header.Size,
		TextColor3 = text.Header.Color,
		BackgroundTransparency = 1,
		TextXAlignment = Enum.TextXAlignment.Left,
		LayoutOrder = index,
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, sizes.OuterPadding),
		}),
	})
end

function ComponentList:renderEntry(name, index)
	local props = self.props
	local currentItem = props.CurrentItem
	local text = props.Theme:get("Text")
	local sizes = props.Theme:get("Sizes")

	local isCurrent = name == currentItem

	return Roact.createElement(Button, {
		Size = UDim2.new(1, 0, 0, sizes.ButtonHeight),
		Style = isCurrent and "RoundPrimary" or "Round",
		LayoutOrder = index,
		OnClick = function()
			props.Plugin:get():SetSetting("lastStory", name)
			props.SetCurrentItem(name)
		end,
	}, {
		Container = Roact.createElement(Container, {
			Padding = sizes.OuterPadding,
		}, {
			Text = Roact.createElement("TextLabel", {
				Size = UDim2.fromScale(1, 1),
				Text = name,
				Font = Enum.Font.SourceSans,
				TextSize = text.Button.Size,
				TextColor3 = isCurrent and text.Button.PrimaryColor or text.Button.Color,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextTruncate = Enum.TextTruncate.AtEnd,
			}),
		}),

		HoverArea = Roact.createElement(HoverArea, {
			Cursor = "PointingHand",
		}),
	})
end

function ComponentList:addComponents(children)
	local props = self.props
	local components = props.Components
	local UIList = {}
	local studioUIList = {}

	if components and components.UI and components.StudioUI then
		for name, _ in pairs(components.UI) do
			table.insert(UIList, name)
		end

		for name, _ in pairs(components.StudioUI) do
			table.insert(studioUIList, name)
		end
	end

	table.sort(UIList)
	table.sort(studioUIList)

	local order = 0
	local function nextOrder()
		order = order + 1
		return order
	end
	children.__UI = self:renderHeader("UI", nextOrder())
	for _, component in ipairs(UIList) do
		children[component] = self:renderEntry(component, nextOrder())
	end
	children.__StudioUI = self:renderHeader("StudioUI", nextOrder())
	for _, component in ipairs(studioUIList) do
		children[component] = self:renderEntry(component, nextOrder())
	end
end

function ComponentList:render()
	local props = self.props
	local scrollbar = props.Theme:get("Scrollbar")
	local sizes = props.Theme:get("Sizes")

	local children = {
		__Padding = Roact.createElement("UIPadding", {
			PaddingRight = UDim.new(0, sizes.InnerPadding),
		}),

		__Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
			Padding = UDim.new(0, sizes.InnerPadding),
			[Roact.Change.AbsoluteContentSize] = function(rbx)
				self.updateExtents(rbx.AbsoluteContentSize)
			end,
		}),
	}

	self:addComponents(children)

	return Roact.createElement(Container, {
		Size = UDim2.new(0, sizes.Gutter, 1, -sizes.Footer),
		Background = Decoration.Box,
		Padding = {
			Top = sizes.OuterPadding,
			Left = sizes.OuterPadding,
			Bottom = sizes.OuterPadding,
			Right = sizes.InnerPadding,
		},
	}, {
		ScrollingFrame = Roact.createElement("ScrollingFrame", {
			Size = UDim2.fromScale(1, 1),
			CanvasSize = self.extents:map(function(value)
				return UDim2.new(0, 0, 0, value.Y)
			end),
			TopImage = scrollbar.TopImage,
			MidImage = scrollbar.MidImage,
			BottomImage = scrollbar.BottomImage,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ScrollBarThickness = scrollbar.Thickness,
			ScrollBarImageColor3 = scrollbar.Color,
			ScrollBarImageTransparency = scrollbar.Transparency,
			VerticalScrollBarInset = Enum.ScrollBarInset.Always,
		}, children),
	})
end

ContextServices.mapToProps(ComponentList, {
	Theme = ContextServices.Theme,
	PluginActions = ContextServices.PluginActions,
	Plugin = ContextServices.Plugin,
})

ComponentList = RoactRodux.connect(
	function(state, props)
		return {
			Components = state.Components.Components,
			Tests = state.Components.Tests,
			CurrentItem = state.Status.CurrentItem,
		}
	end,
	function(dispatch)
		return {
			GetComponents = function()
				dispatch(GetComponents())
			end,
			RunTests = function(component)
				dispatch(RunTests(component))
			end,
			SetCurrentItem = function(name)
				dispatch(SetCurrentItem(name))
			end
		}
	end
)(ComponentList)

return ComponentList
