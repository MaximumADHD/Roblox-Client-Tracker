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

local SetMaterialBrowserLayout = require(Plugin.Src.Actions.SetMaterialBrowserLayout)
local PluginController = require(Plugin.Src.Controllers.PluginController)

local Components = Plugin.Src.Components
local MaterialDetails = require(Components.MaterialBrowser.MaterialDetails)
local MaterialVariantEditor = require(Components.MaterialBrowser.MaterialVariantEditor)
local MaterialGrid = require(Components.MaterialBrowser.MaterialGrid)
local SideBar = require(Components.MaterialBrowser.SideBar)
local TopBar = require(Components.MaterialBrowser.TopBar)

local getViewTypes = require(Plugin.Src.Resources.Constants.getViewTypes)
local ViewTypes = getViewTypes()

local Flags = Plugin.Src.Flags
local getFFlagMaterialManagerVariantCreatorOverhaul = require(Flags.getFFlagMaterialManagerVariantCreatorOverhaul)
local getFFlagMaterialManagerDisableSelectionOnTool = require(Flags.getFFlagMaterialManagerDisableSelectionOnTool)

export type Props = {
	OpenPrompt: (type: _Types.MaterialPromptType) -> (),
}

type _Props = Props & {
	AbsoluteSize: Vector2,
	ActiveAsTool: boolean,
	dispatchSetMaterialBrowserLayout: (materialBrowserLayout: _Types.MaterialBrowserLayout) -> (),
	Material: _Types.Material,
	MaterialBrowserLayout: _Types.MaterialBrowserLayout,
	MaterialTileSize: number,
	PluginController: any,
	Stylizer: any,
	ViewType: string,
	WrapperProps: any,
}

type _Style = {
	GridBackgroundColor: Color3,
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
	self.onHideButtonClicked = function()
		local props: _Props = self.props

		local materialBrowserLayout = join(props.MaterialBrowserLayout, {
			BaseShowSideBar = false,
			OverrideShowSideBar = false,
			SideBarWidth = 200,
		})
		props.dispatchSetMaterialBrowserLayout(materialBrowserLayout)
		props.PluginController:setMaterialBrowserLayout(materialBrowserLayout)
	end

	self.onShowButtonClicked = function()
		local props: _Props = self.props
		local style: _Style = props.Stylizer.MaterialBrowser
		local material: _Types.Material? = props.Material

		local absoluteSize = props.AbsoluteSize
		local minMaterialViewWidth = style.MaterialTileWidth
			+ style.Padding * 2
			+ (if material then style.MaterialDetailsWidth else 0)
			+ style.MinSideBarWidth

		local materialBrowserLayout = join(props.MaterialBrowserLayout, {
			BaseShowSideBar = true,
			OverrideShowSideBar = absoluteSize.X < minMaterialViewWidth,
		})
		props.dispatchSetMaterialBrowserLayout(materialBrowserLayout)
		props.PluginController:setMaterialBrowserLayout(materialBrowserLayout)
	end

	self.setSideBarWidth = function(width: number)
		local props: _Props = self.props

		local materialBrowserLayout = join(props.MaterialBrowserLayout, {
			SideBarWidth = width,
		})
		props.dispatchSetMaterialBrowserLayout(materialBrowserLayout)
		props.PluginController:setMaterialBrowserLayout(materialBrowserLayout)
	end
end

function MaterialBrowser:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.MaterialBrowser
	local layoutOrderIterator = LayoutOrderIterator.new()

	local material: _Types.Material? = props.Material
	local materialBrowserLayout = props.MaterialBrowserLayout

	local showSideBar = materialBrowserLayout.BaseShowSideBar
	local showMaterialGrid = true
	local showMaterialDetails = material and not props.ActiveAsTool

	local gridWidth = if props.ViewType == ViewTypes.Grid then props.MaterialTileSize else style.MaterialTileWidth

	local minMaterialWidth = gridWidth
		+ style.Padding * 2
		+ (if showMaterialDetails then style.MaterialDetailsWidth else 0)
	local minFullWidth = minMaterialWidth + style.MinSideBarWidth
	local fullSize = props.AbsoluteSize.X >= minFullWidth

	if showMaterialDetails then
		if props.AbsoluteSize.X < minMaterialWidth then
			showSideBar = false
			showMaterialGrid = false
		elseif props.AbsoluteSize.X < minFullWidth then
			if materialBrowserLayout.OverrideShowSideBar then
				showMaterialGrid = false
			else
				showSideBar = false
			end
		end
	else
		if props.AbsoluteSize.X < minMaterialWidth then
			if materialBrowserLayout.OverrideShowSideBar then
				showMaterialGrid = false
			else
				showSideBar = false
			end
		end
	end

	local sideBar = if showSideBar
		then Roact.createElement(Pane, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = if not showMaterialGrid and showMaterialDetails
				then style.MaterialGridSize
				else UDim2.fromScale(1, 1),
		}, {
			SideBar = Roact.createElement(SideBar, {
				Size = UDim2.fromScale(1, 1),
				ZIndex = 1,
			}),
			HideButton = Roact.createElement(IconButton, {
				Size = style.IconSize,
				LeftIcon = style.HideIcon,
				IconColor = style.IconColor,
				BorderColor = style.BackgroundColor,
				OnClick = self.onHideButtonClicked,
				AnchorPoint = Vector2.new(1, 1),
				Position = UDim2.new(1, -5, 1, -5),
				ZIndex = 2,
			}),
		})
		else nil

	local materialGrid = if showMaterialGrid
		then Roact.createElement(MaterialGrid, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = if showMaterialDetails or (not fullSize and showSideBar)
				then style.MaterialGridSize
				else UDim2.fromScale(1, 1),
			OnShowButtonClicked = self.onShowButtonClicked,
			SideBarVisible = showSideBar,
		})
		elseif showSideBar then nil
		else Roact.createElement(Pane, {
			BackgroundColor = style.GridBackgroundColor,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = style.MaterialGridSize,
		})

	local materialDetails
	if getFFlagMaterialManagerVariantCreatorOverhaul() then
		materialDetails = if showMaterialDetails
			then Roact.createElement(MaterialVariantEditor, {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Size = style.MaterialDetailsSize,
			})
			else nil
	else
		materialDetails = if showMaterialDetails
			then Roact.createElement(MaterialDetails, {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				OpenPrompt = props.OpenPrompt,
				Size = style.MaterialDetailsSize,
			})
			else nil
	end

	local maxSideBarWidth = props.AbsoluteSize.X - minMaterialWidth
	local sideBarWidth = if materialBrowserLayout.SideBarWidth < maxSideBarWidth
		then materialBrowserLayout.SideBarWidth
		else maxSideBarWidth

	return Roact.createElement(
		Pane,
		join({
			Style = "Box",
			Layout = Enum.FillDirection.Vertical,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			Size = UDim2.fromScale(1, 1),
		}, props.WrapperProps),
		{
			TopBar = Roact.createElement(TopBar, {
				OpenPrompt = props.OpenPrompt,
				Size = style.TopBarSize,
			}),

			MainView = if fullSize and showSideBar
				then Roact.createElement(SplitPane, {
					ClampSize = true,
					Sizes = { UDim.new(0, sideBarWidth), UDim.new(1, -sideBarWidth) },
					Layout = Enum.FillDirection.Horizontal,
					MinSizes = { UDim.new(0, style.MinSideBarWidth), UDim.new(0, minMaterialWidth) },
					OnSizesChange = function(sizes)
						self.setSideBarWidth(sizes[1].Offset)
					end,
					Size = style.MainViewSize,
				}, {
					sideBar,
					Roact.createElement(Pane, {
						Size = UDim2.fromScale(1, 1),
						Layout = Enum.FillDirection.Horizontal,
						LayoutOrder = layoutOrderIterator:getNextOrder(),
					}, {
						MaterialGrid = materialGrid,
						MaterialDetails = materialDetails,
					}),
				})
				else Roact.createElement(Pane, {
					Size = style.MainViewSize,
				}, {
					MainView = Roact.createElement(Pane, {
						Size = UDim2.fromScale(1, 1),
						Layout = Enum.FillDirection.Horizontal,
						LayoutOrder = layoutOrderIterator:getNextOrder(),
					}, {
						SideBar = sideBar,
						MaterialGrid = materialGrid,
						MaterialDetails = materialDetails,
					}),
				}),
		}
	)
end

MaterialBrowser = withContext({
	PluginController = PluginController,
	Stylizer = Stylizer,
})(MaterialBrowser)

return RoactRodux.connect(
	function(state, props)
		return {
			ActiveAsTool = if getFFlagMaterialManagerDisableSelectionOnTool() then state.MaterialBrowserReducer.ActiveAsTool else false,
			Material = state.MaterialBrowserReducer.Material,
			MaterialBrowserLayout = state.MaterialBrowserReducer.MaterialBrowserLayout,
			MaterialTileSize = state.MaterialBrowserReducer.MaterialTileSize,
			ViewType = state.MaterialBrowserReducer.ViewType,
		}
	end,
	function(dispatch)
		return {
			dispatchSetMaterialBrowserLayout = function(materialBrowserLayout: _Types.MaterialBrowserLayout)
				dispatch(SetMaterialBrowserLayout(materialBrowserLayout))
			end,
		}
	end
)(withAbsoluteSize(MaterialBrowser))
