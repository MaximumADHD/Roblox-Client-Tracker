local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local withAbsoluteSize = Framework.Wrappers.withAbsoluteSize

local join = Framework.Dash.join

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local LayoutOrderIterator = Framework.Util.LayoutOrderIterator

local Stylizer = Framework.Style.Stylizer
local UI = Framework.UI
local Pane = UI.Pane
local SplitPane = UI.SplitPane
local IconButton = UI.IconButton

local Components = Plugin.Src.Components

local MaterialGrid = require(Components.MaterialBrowser.MaterialGrid)
local SideBar = require(Components.MaterialBrowser.SideBar)
local TopBar = require(Components.MaterialBrowser.TopBar)

local Flags = Plugin.Src.Flags
local getFFlagMaterialManagerSideBarSplitPaneUpdate = require(Flags.getFFlagMaterialManagerSideBarSplitPaneUpdate)

local MaterialDetails = require(Components.MaterialBrowser.MaterialDetails)

export type Props = {
	OpenPrompt: (type: _Types.MaterialPromptType) -> (),
}

type _Props = Props & {
	AbsoluteSize: Vector2,
	Material: _Types.Material,
	Stylizer: any,
	WrapperProps: any,
}

type _Style = {
	SideBarSize: UDim2,
	TopBarSize: UDim2,
	MainViewSize: UDim2,
	MinSideBarWidth: number,
	MaterialDetailsWidth: number,
	MaterialViewSize: UDim2,
	MaterialGridSize: UDim2,
	MaterialDetailsSize: UDim2,
	HideIcon: string,
	IconColor: Color3,
	BackgroundColor: Color3,
	IconSize: UDim2,
	MaterialTileWidth: number,
	Padding: number,
}

local MaterialBrowser = Roact.PureComponent:extend("MaterialBrowser")

function MaterialBrowser:init()
	self.state = {
		sideBarSize = UDim.new(0, 200),
		lastSideBarSize = UDim.new(0, 200),
		sideBarVisible = true,
		clickedHide = false,
	}

	self.onHideButtonClicked = function()
		self:setState(function(state)
			return {
				sideBarSize = UDim.new(0, 0),
				lastSideBarSize = state.sideBarSize,
				sideBarVisible = false,
				clickedHide = true,
			}
		end)
	end

	self.onShowButtonClicked = function()
		local props: _Props = self.props
		local style: _Style = props.Stylizer.MaterialBrowser
		local state = self.state

		local freeSize = props.AbsoluteSize.X
		if props.Material then
			freeSize = props.AbsoluteSize.X - style.MaterialDetailsWidth
		end

		local materialTileWidth = style.MaterialTileWidth + style.Padding * 2
		local newSideBarSize = state.lastSideBarSize
		if freeSize - state.lastSideBarSize.Offset < materialTileWidth then
			newSideBarSize = UDim.new(0, style.MinSideBarWidth)
		end

		self:setState(function(state)
			return {
				sideBarSize = newSideBarSize,
				lastSideBarSize = newSideBarSize,
				sideBarVisible = true,
				clickedHide = false,
			}
		end)
	end

	self.SideBar = function(layoutOrder: number?)
		local props: _Props = self.props
		local style: _Style = props.Stylizer.MaterialBrowser
		local state = self.state

		return Roact.createElement(Pane, {
			LayoutOrder = if getFFlagMaterialManagerSideBarSplitPaneUpdate() then layoutOrder else 1,
			Size = UDim2.fromScale(1, 1),
		}, {
			SideBar = if state.sideBarVisible
				then Roact.createElement(SideBar, {
					Size = UDim2.fromScale(1, 1),
					ZIndex = if getFFlagMaterialManagerSideBarSplitPaneUpdate() then 1 else nil,
				})
				else nil,
			HideButton = if state.sideBarVisible
				then Roact.createElement(IconButton, {
					Size = style.IconSize,
					LeftIcon = style.HideIcon,
					IconColor = style.IconColor,
					BorderColor = style.BackgroundColor,
					OnClick = self.onHideButtonClicked,
					AnchorPoint = Vector2.new(1, 1),
					Position = UDim2.new(1, -5, 1, -5),
					ZIndex = if getFFlagMaterialManagerSideBarSplitPaneUpdate() then 2 else nil,
				})
				else nil,
		})
	end

	self.MaterialView = function(layoutOrder: number?)
		local props: _Props = self.props
		local style: _Style = props.Stylizer.MaterialBrowser
		local state = self.state

		local material: _Types.Material = props.Material
		local canHideGrid = false
		local materialTileWidth = style.MaterialTileWidth + style.Padding * 2
		if props.AbsoluteSize.X - state.sideBarSize.Offset < materialTileWidth then
			canHideGrid = true
		end

		local showMaterialGrid = not material or not canHideGrid
		local showMaterialDetails = material
		local showSideBar = state.sideBarVisible
			or (showMaterialDetails and props.AbsoluteSize.X < style.MaterialDetailsWidth + style.MinSideBarWidth)

		return Roact.createElement(Pane, {
			Size = UDim2.fromScale(1, 1),
			Layout = Enum.FillDirection.Horizontal,
			LayoutOrder = if getFFlagMaterialManagerSideBarSplitPaneUpdate() then layoutOrder else 2,
		}, {
			MaterialGrid = if showMaterialGrid then
				Roact.createElement(MaterialGrid, {
					LayoutOrder = 1,
					Size = if showMaterialDetails then style.MaterialGridSize else UDim2.fromScale(1, 1),
					OnShowButtonClicked = self.onShowButtonClicked,
					SideBarVisible = showSideBar,
				})
				else nil,
			MaterialDetails = if showMaterialDetails then
				Roact.createElement(MaterialDetails, {
					LayoutOrder = 2,
					OpenPrompt = props.OpenPrompt,
					Size = if showMaterialGrid then style.MaterialDetailsSize else UDim2.fromScale(1, 1),
				})
				else nil,
		})
	end
end

function MaterialBrowser:didUpdate(nextProps, nextState)
	local props: _Props = self.props
	local style: _Style = props.Stylizer.MaterialBrowser
	local state = self.state

	local newMaterial = not nextProps.Material and props.Material
	local changeAbsoluteSize = nextProps.AbsoluteSize.X ~= props.AbsoluteSize.X
	local materialViewWidth = style.MaterialDetailsWidth + style.MaterialTileWidth + style.Padding * 2
	local materialTileWidth = style.MaterialTileWidth + style.Padding * 2

	-- Case 1: when material is just selected or material was already selected and window size shrinks -> 
	-- Check to update the SideBar size or hide it
	if (newMaterial or nextProps.Material and changeAbsoluteSize) and nextState.sideBarVisible then
		if (nextProps.AbsoluteSize.X - nextState.sideBarSize.Offset) < materialViewWidth then
			if nextProps.AbsoluteSize.X - materialViewWidth >= style.MinSideBarWidth then
				self:setState(function(state)
					return {
						sideBarSize = UDim.new(0, nextProps.AbsoluteSize.X - materialViewWidth),
						lastSideBarSize = state.sideBarSize,
						sideBarVisible = true,
						clickedHide = false,
					}
				end)
			else -- needHideSideBar
				self:setState(function(state)
					return {
						sideBarSize = UDim.new(0, 0),
						lastSideBarSize = state.sideBarSize,
						sideBarVisible = false,
						clickedHide = false,
					}
				end)
			end
		end
	end

	-- Case 2: when material is selected and window size expands -> 
	-- Check to automatically show SideBar
	if (props.Material and changeAbsoluteSize) and not nextState.sideBarVisible and not nextState.clickedHide then
		if (nextProps.AbsoluteSize.X - state.lastSideBarSize.Offset) > materialViewWidth then
			self:setState(function(state)
				return {
					lastSideBarSize = state.lastSideBarSize,
					sideBarSize = state.lastSideBarSize,
					sideBarVisible = true,
					clickedHide = false,
				}
			end)
		end
	end

	-- Case 3: when no material is selected and window size shrinks -> 
	-- Check to automatically resize (decrease) SideBar or hide it
	if not props.Material and changeAbsoluteSize and nextState.sideBarVisible then
		if props.AbsoluteSize.X - nextState.sideBarSize.Offset < materialTileWidth then
			if props.AbsoluteSize.X - materialTileWidth >= style.MinSideBarWidth then
				self:setState(function(state)
					return {
						lastSideBarSize = state.sideBarSize,
						sideBarSize = UDim.new(0, props.AbsoluteSize.X - materialTileWidth),
						sideBarVisible = true,
						clickedHide = false,
					}
				end)
			else
				self:setState(function(state)
					return {
						lastSideBarSize = state.sideBarSize,
						sideBarSize = UDim.new(0, 0),
						sideBarVisible = false,
						clickedHide = false,
					}
				end)
			end
		end
	end

	-- Case 4: when material is closed -> 
	-- Check to automatically show SideBar
	if not props.Material and not nextState.sideBarVisible and not nextState.clickedHide then
		if (props.AbsoluteSize.X - state.lastSideBarSize.Offset) >= materialTileWidth then
			self:setState(function(state)
				return {
					lastSideBarSize = state.lastSideBarSize,
					sideBarSize = state.lastSideBarSize,
					sideBarVisible = true,
					clickedHide = false,
				}
			end)
		end
	end
end

function MaterialBrowser:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.MaterialBrowser
	local layoutOrderIterator = LayoutOrderIterator.new()

	local material: _Types.Material? = props.Material

	local sideBarSize = self.state.sideBarSize
	local materialViewWidth = style.MaterialDetailsWidth + style.MaterialTileWidth + style.Padding * 2
	local materialTileWidth = style.MaterialTileWidth + style.Padding * 2
	local sizes = { sideBarSize, UDim.new(0, props.AbsoluteSize.X - sideBarSize.Offset) }
	local minSizeMaterialGrid = if not material then materialTileWidth else materialViewWidth

	return Roact.createElement(Pane, join({
		Style = "Box",
		Layout = Enum.FillDirection.Vertical,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		Size = UDim2.fromScale(1, 1),
	}, props.WrapperProps), {

		TopBar = Roact.createElement(TopBar, {
			OpenPrompt = props.OpenPrompt,
			Size = style.TopBarSize,
		}),

		Pane = if not getFFlagMaterialManagerSideBarSplitPaneUpdate() or self.state.sideBarVisible then Roact.createElement(SplitPane, {
			ClampSize = true,
			Sizes = sizes,
			Layout = Enum.FillDirection.Horizontal,
			MinSizes = { UDim.new(0, 90), UDim.new(0, minSizeMaterialGrid) },
			OnSizesChange = function(sizes)
				self:setState(function(state)
					return {
						lastSideBarSize = state.sideBarSize,
						sideBarSize = sizes[1],
					}
				end)
			end,
			Size = style.MainViewSize,	
		}, {
			self.SideBar(layoutOrderIterator:getNextOrder()),
			self.MaterialView(layoutOrderIterator:getNextOrder()),
		}) else Roact.createElement(Pane, {
			Size = style.MainViewSize,
		}, {
			self.MaterialView()
		})
	})
end

MaterialBrowser = withContext({
	Stylizer = Stylizer,
})(MaterialBrowser)

return RoactRodux.connect(
	function(state, props)
		return {
			Material = state.MaterialBrowserReducer.Material,
		}
	end
)(withAbsoluteSize(MaterialBrowser))
