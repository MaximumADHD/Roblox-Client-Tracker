local Plugin = script.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local FrameworkUtil = Framework.Util
local LayoutOrderIterator = FrameworkUtil.LayoutOrderIterator
local StyleModifier = FrameworkUtil.StyleModifier

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization
local withAbsoluteSize = Framework.Wrappers.withAbsoluteSize

local join = Framework.Dash.join

local Stylizer = Framework.Style.Stylizer

local StudioUI = Framework.StudioUI
local SearchBar = StudioUI.SearchBar

local UI = Framework.UI
local Button = UI.Button
local Image = UI.Decoration.Image
local Pane = UI.Pane
local SelectInput = UI.SelectInput
local Slider = UI.Slider
local TextLabel = UI.Decoration.TextLabel
local Tooltip = UI.Tooltip

local Actions = Plugin.Src.Actions
local ClearMaterialVariant = require(Actions.ClearMaterialVariant)
local SetSearch = require(Actions.SetSearch)
local SetMaterialTileSize = require(Actions.SetMaterialTileSize)
local SetMenuHover = require(Actions.SetMenuHover)
local SetMode = require(Actions.SetMode)
local SetViewType = require(Actions.SetViewType)

local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local Flags = Plugin.Src.Flags
local getFFlagMaterialPack2022Update = require(Flags.getFFlagMaterialPack2022Update)
local getFFlagMaterialManagerGlassNeonForceField = require(Flags.getFFlagMaterialManagerGlassNeonForceField)
local getFFlagMaterialManagerGridOverhaul = require(Flags.getFFlagMaterialManagerGridOverhaul)
local TeachingCallout = require(Plugin.Src.Components.TeachingCallout)

local Controllers = Plugin.Src.Controllers
local MaterialController = require(Controllers.MaterialController)
local MaterialServiceController = require(Controllers.MaterialServiceController)
local PluginController = require(Controllers.PluginController)

local ApplyToSelection = require(Plugin.Src.Util.ApplyToSelection)

local getFFlagMaterialManagerGridListView = require(Flags.getFFlagMaterialManagerGridListView)
local FIntInfluxReportMaterialManagerHundrethPercent2 = game:GetFastInt("InfluxReportMaterialManagerHundrethPercent2")

local TopBar = Roact.PureComponent:extend("TopBar")

export type Props = {
	LayoutOrder: number?,
	OpenPrompt: (type: _Types.MaterialPromptType) -> (),
	Size: UDim2?,
}

type _Props = Props & {
	Analytics: any,
	dispatchClearMaterialVariant: () -> (),
	dispatchSetMaterialTileSize: (size : number) -> (),
	dispatchSetMenuHover: (menuHover : boolean) -> (),
	dispatchSetSearch: (string) -> (),
	dispatchSetMode: (mode : string) -> (),
	dispatchSetViewType: (viewType : string) -> (),
	Localization: any,
	Material: _Types.Material?,
	MaterialController: any,
	MaterialServiceController: any?, -- Not optional with FFlagMaterialManagerGridOverhaul
	MaterialTileSize: number,
	MenuHover: boolean,
	PluginController: any,
	Stylizer: any,
	ViewType: string,
	WrapperProps: any,
	AbsoluteSize: Vector2,
}

type _Image = {
	Image: string,
	Color: Color3,
}

type _Style = {
	ApplyToSelection: _Image,
	BackgroundColor: Color3,
	ButtonSize: UDim2,
	CreateNewVariant: _Image,
	-- TODO: Uncomment when adding sortOrder functionality
	-- DropdownSize: UDim2,
	-- Filter: _Image,
	Grid: string,
	ImagePosition: UDim2,
	ImageSize: UDim2,
	List: string,
	Padding: number,
	SearchBarMaxWidth: number,
	SpacerWidth: number,
	ShowInExplorer: _Image,
	TopBarButtonWidth: number,
	ViewTypeBackground: Color3,
	ViewTypeSize: UDim2,
}

type _ButtonProps = {
	ImageStyle: _Image,
	LayoutOrder: number,
	OnClick: () -> (),
	TooltipText: string,
	IsDisabled: boolean,
	Style: _Style,
	TeachingCallout: any,
	ViewTypeSize: UDim2,
}

local Selection = game:GetService("Selection")
local ChangeHistoryService = game:GetService("ChangeHistoryService")

local BUTTON_COUNT = 3
local SPACER_COUNT = 2

function TopBar:init()
	self.state = {
		-- TODO : Uncomment when adding sortOrder functionality
		-- sortOrderIndex = 1,
		isDisabledShowInExplorer = true,
		isDisabledApplyToSelection = true,
	}

	self.createMaterialVariant = function()
		local props: _Props = self.props

		props.dispatchClearMaterialVariant()
		props.dispatchSetMode("Create")
		props.OpenPrompt("Create")
	end

	self.showInExplorer = function()
		local props: _Props = self.props

		if props.Material and props.Material.MaterialVariant then
			Selection:Set({
				props.Material.MaterialVariant
			})
			if FIntInfluxReportMaterialManagerHundrethPercent2 > 0 then
				props.Analytics:report("showInExplorer")
			end
		end
	end

	self.applyToSelection = function()
		local props: _Props = self.props

		if getFFlagMaterialManagerGlassNeonForceField() and props.Material then
			ApplyToSelection(props.Material.Material,
				if props.Material.MaterialVariant then props.Material.MaterialVariant.Name else nil)
			if FIntInfluxReportMaterialManagerHundrethPercent2 > 0 then
				props.Analytics:report("applyToSelectionButton")
			end
		else
			if props.Material then
				ApplyToSelection(props.Material.Material,
					if props.Material.MaterialVariant then props.Material.MaterialVariant.Name else nil)
				if FIntInfluxReportMaterialManagerHundrethPercent2 > 0 then
					props.Analytics:report("applyToSelectionButton")
				end
			elseif Selection and props.Material then
				local instances = Selection:Get()
				ChangeHistoryService:SetWaypoint("Applied Material to Selection")

				for _, instance in ipairs(instances) do
					if instance:IsA("BasePart") then
						instance.Material = props.Material.Material
						if props.Material.MaterialVariant then
							instance.MaterialVariant = props.Material.MaterialVariant.Name
						end
					end
				end

				if FIntInfluxReportMaterialManagerHundrethPercent2 > 0 then
					props.Analytics:report("applyToSelectionButton")
				end
			end
		end
	end

	self.setSearch = function(search)
		local props: _Props = self.props

		-- props.MaterialServiceController is no longer optional, remove with flag
		if getFFlagMaterialManagerGridOverhaul() and props.MaterialServiceController then
			props.MaterialServiceController:setSearch(search)
		else
			props.dispatchSetSearch(search)
		end

		
		if FIntInfluxReportMaterialManagerHundrethPercent2 > 0 then
			props.Analytics:report("searchBar")
		end
	end

	-- TODO : Uncomment when adding sortOrder functionality
	-- self.selectSortOrder = function(_, index)
	-- 	self:setState({
	-- 		sortOrderIndex = index,
	-- 	})
	-- end

	-- TODO : Uncomment when adding filtering functionality
	-- self.showFilters = function()
	-- end

	self.renderButton = function(buttonProps: _ButtonProps)
		local style = buttonProps.Style

		local buttonSize = style.ButtonSize
		local imagePosition = style.ImagePosition
		local imageSize = style.ImageSize

		return Roact.createElement(Button, {
			LayoutOrder = buttonProps.LayoutOrder,
			OnClick = buttonProps.OnClick,
			Size = buttonSize,
			Style = "Round",
			StyleModifier = buttonProps.IsDisabled and StyleModifier.Disabled or nil,
		}, {
			Image = Roact.createElement(Image, {
				Position = imagePosition,
				Size = imageSize,
				Style = buttonProps.ImageStyle,
				StyleModifier = buttonProps.IsDisabled and StyleModifier.Disabled or nil,
			}),
			Tooltip = Roact.createElement(Tooltip, {
				Text = buttonProps.TooltipText
			}),
			TeachingCallout = buttonProps.TeachingCallout,
		})
	end

	self.selectViewType = function(item, index)
		self.props.dispatchSetViewType(item)
		self.props.dispatchSetMenuHover(false)

		self.props.PluginController:setViewType(item)
	end

	self.selectMaterialTileSize = function(materialTileSize)
		self.props.dispatchSetMaterialTileSize(materialTileSize)
		self.props.PluginController:setMaterialTileSize(materialTileSize)
	end

	self.onRenderViewType = function(item, index, activated)
		local style = self.props.Stylizer.TopBar
		local icon

		if item == "Grid" then
			icon = style.Grid
		elseif item == "List" then
			icon = style.List
		end

		local function renderViewTypeButton()
			return Roact.createElement(Button, {
				Size = UDim2.new(1, 0, 0, 40),
				LayoutOrder = index,
				OnClick = activated,
			}, {
				ImageContainer = if icon then
					Roact.createElement(Pane, {
						LayoutOrder = 1,
						Size = UDim2.fromOffset(40, 40)
					}, {
						Image = Roact.createElement(Image, {
							AnchorPoint = Vector2.new(0.5, 0.5),
							Position = UDim2.fromScale(0.5, 0.5),
							Size = UDim2.fromOffset(16, 16),
							Style = {
								Image = icon,
							}
						})
					})
					else nil,
				Label = Roact.createElement(TextLabel, {
					LayoutOrder = 2,
					Size = UDim2.new(1, if icon then -40 else 0, 1, 0),
					Text = item,
					TextXAlignment = Enum.TextXAlignment.Left
				}, {
					Padding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, if icon then 40 else 10),
					}),
				})
			})
		end

		return Roact.createElement(Pane, {
			BackgroundColor = style.ViewTypeBackground,
			Layout = Enum.FillDirection.Vertical,
			LayoutOrder = index,
			Size = if item == "Grid" then UDim2.new(1, 0, 0, 60) else UDim2.new(1, 0, 0, 40),
		}, {
			Button = renderViewTypeButton(),
			Slider = if item == "Grid" then
				Roact.createElement(Slider, {
					AnchorPoint = Vector2.new(0.5, 0.5),
					Disabled = false,
					Value = self.props.MaterialTileSize,
					Min = 60,
					Max = 200,
					LayoutOrder = 2,
					OnValueChanged = self.selectMaterialTileSize,
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(1, 0, 0, 20),
					SnapIncrement = 10,
					VerticalDragTolerance = 300,
				})
				else nil
		})
	end

	self.onMouseEnter = function()
		self.props.dispatchSetMenuHover(true)
	end

	self.onMouseLeave = function()
		self.props.dispatchSetMenuHover(false)
	end
end

function TopBar:didMount()
	local props: _Props = self.props

	if getFFlagMaterialPack2022Update() then
		self.builtinMaterialsChangedConnection = props.MaterialController:getBuiltInMaterialsChangedSignal():Connect(function()
			self:setState({})
		end)
	end

	-- Make sure this isn't nil
	local isDisabledShowInExplorer
	if getFFlagMaterialManagerGlassNeonForceField() then
		isDisabledShowInExplorer = if not props.Material or not props.Material.MaterialVariant then true else false
	else
		isDisabledShowInExplorer = not props.Material or props.Material.IsBuiltin
	end

	local isDisablesApplyToSelection = not props.Material or (not getFFlagMaterialPack2022Update() and props.Material.MaterialType == "Terrain")

	self:setState({
		isDisabledShowInExplorer = isDisabledShowInExplorer,
		isDisablesApplyToSelection = isDisablesApplyToSelection,
	})

	-- TODO : re-consider uncomment when/if Selection will be optimized
	-- self.selectionChangedConnection = Selection.SelectionChanged:Connect(function()
	-- 	local isDisabled = true
	-- 	if self.props.Material then
	-- 		local instances = Selection:Get()
	-- 		for _, instance in ipairs(instances) do
	-- 			if instance:IsA("BasePart") then
	-- 				self:setState{
	-- 					isDisabledApplyToSelection = false,
	-- 				}
	-- 				isDisabled = false
	-- 				break
	-- 			end
	-- 		end
	-- 	end
	-- 	if isDisabled then
	-- 		self:setState{
	-- 			isDisabledApplyToSelection = true,
	-- 		}
	-- 	end
	-- end)
end

function TopBar:willUnmount()
	if self.builtinMaterialsChangedConnection then
		self.builtinMaterialsChangedConnection:Disconnect()
		self.builtinMaterialsChangedConnection = nil
	end

	if self.selectionChangedConnection then
		self.selectionChangedConnection:Disconnect()
		self.selectionChangedConnection = nil
	end
end

function TopBar:didUpdate(prevProps, prevState)
	local props: _Props = self.props

	-- Make sure this isn't nil
	local isDisabledShowInExplorer
	if getFFlagMaterialManagerGlassNeonForceField() then
		isDisabledShowInExplorer = if not props.Material or not props.Material.MaterialVariant then true else false
	else
		isDisabledShowInExplorer = not props.Material or props.Material.IsBuiltin
	end
	local isDisabledApplyToSelection = not props.Material or (not getFFlagMaterialPack2022Update() and props.Material.MaterialType == "Terrain")

	if prevState.isDisabledShowInExplorer ~= isDisabledShowInExplorer or prevState.isDisabledApplyToSelection ~= isDisabledApplyToSelection then
		self:setState({
			isDisabledShowInExplorer = isDisabledShowInExplorer,
			isDisabledApplyToSelection = isDisabledApplyToSelection,
		})
	end

	-- -- TODO : re-consider uncomment when/if Selection will be optimized
	-- -- if Selection then
	-- if props.Material and prevProps.Material ~= props.Material then
	-- 	-- remove it when/if Selection will be optimized
	-- 	self:setState{
	-- 		isDisabledApplyToSelection = false,
	-- 	}
	-- 	-- local isDisabled = true
	-- 	-- local instances = Selection:Get()
	-- 	-- for _, instance in ipairs(instances) do
	-- 	-- 	if instance:IsA("BasePart") then
	-- 	-- 		self:setState{
	-- 	-- 			isDisabledApplyToSelection = false,
	-- 	-- 		}
	-- 	-- 		isDisabled = false
	-- 	-- 		break
	-- 	-- 	end
	-- 	-- end
	-- 	-- if isDisabled then
	-- 	-- 	self:setState{
	-- 	-- 		isDisabledApplyToSelection = true,
	-- 	-- 	}
	-- 	-- end 
	-- elseif (not props.Material and prevProps.Material) then
	-- 	self:setState{
	-- 		isDisabledApplyToSelection = true,
	-- 	}
	-- end
	-- end
end

function TopBar:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.TopBar
	local state = self.state
	local layoutOrder = props.LayoutOrder
	local size = props.Size
	local viewType = props.ViewType

	local localization = props.Localization

	local layoutOrderIterator = LayoutOrderIterator.new()

	local applyToSelection = style.ApplyToSelection
	local createNewVariant = style.CreateNewVariant
	-- local filter = style.Filter
	-- local dropdownSize = style.DropdownSize
	local showInExplorer = style.ShowInExplorer

	local backgroundColor = style.BackgroundColor
	local buttonWidth = style.ButtonSize.X.Offset
	local padding = style.Padding
	local spacerWidth = style.SpacerWidth
	local searchBarMaxWidth = style.SearchBarMaxWidth
	local topBarButtonWidth = style.TopBarButtonWidth
	local viewTypeWidth = style.ViewTypeSize.X.Offset

	local restWidth
	if getFFlagMaterialManagerGridListView() then
		restWidth = props.AbsoluteSize.X - (BUTTON_COUNT * (buttonWidth + padding) + (viewTypeWidth + padding))
	else
		restWidth = props.AbsoluteSize.X - BUTTON_COUNT * (buttonWidth + padding)
	end
	local percentage = math.min(1, restWidth / (SPACER_COUNT * spacerWidth + searchBarMaxWidth))

	return Roact.createElement(Pane, join({
		BackgroundColor = backgroundColor,
		Layout = Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		LayoutOrder = layoutOrder,
		Padding = padding,
		Size = size,
		Spacing = padding,
	}, props.WrapperProps), {
		CreateMaterialVariant = Roact.createElement(self.renderButton, {
			Style = style,
			ImageStyle = createNewVariant,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			OnClick = self.createMaterialVariant,
			TooltipText = localization:getText("TopBar", "Create"),
			IsDisabled = false,
			TeachingCallout = nil,
		}),
		ShowInExplorer = Roact.createElement(self.renderButton, {
			Style = style,
			ImageStyle = showInExplorer,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			OnClick = if not state.isDisabledShowInExplorer then self.showInExplorer else function() end,
			TooltipText = localization:getText("TopBar", "Show"),
			IsDisabled = state.isDisabledShowInExplorer,
			TeachingCallout = nil,
		}),
		ApplyToSelection = Roact.createElement(self.renderButton, {
			Style = style,
			ImageStyle = applyToSelection,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			OnClick = if not state.isDisabledApplyToSelection then self.applyToSelection else function() end,
			TooltipText = localization:getText("TopBar", "Apply"),
			IsDisabled = state.isDisabledApplyToSelection,
			TeachingCallout = Roact.createElement(TeachingCallout, {
				Offset = Vector2.new(0, 6),
				DefinitionId = "MaterialManagerApplyCallout",
				LocationId = "MaterialManagerApplyButton",
			}),
		}),
		RestPane = Roact.createElement(Pane, {
			Size = if getFFlagMaterialManagerGridListView() then
				UDim2.new(1, - (BUTTON_COUNT * (buttonWidth + padding) + (viewTypeWidth + padding)), 1, 0)
				else
				UDim2.new(1, - BUTTON_COUNT * (buttonWidth + padding), 1, 0),
			LayoutOrder = layoutOrderIterator:getNextOrder(),
		}, {
			SearchBar = Roact.createElement(SearchBar, {
				Position = UDim2.new(0.5, 0, 0, 0),
				AnchorPoint = Vector2.new(0.5, 0),
				OnSearchRequested = self.setSearch,
				PlaceholderText = localization:getText("TopBar", "Search"),
				ShowSearchButton = false,
				ShowSearchIcon = true,
				Size = UDim2.new(0, searchBarMaxWidth * percentage, 0, topBarButtonWidth),
			}),
		}),
		ViewType = if getFFlagMaterialManagerGridListView() then Roact.createElement(Pane, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = UDim2.new(0, 50, 1, 0),
		}, {
				SelectInput = Roact.createElement(SelectInput, {
					Icons = {
						style.Grid,
						style.List,
					},
					Items = {
						"Grid",
						"List",
					},
					HideText = true,
					OnItemActivated = self.selectViewType,
					OnRenderItem = self.onRenderViewType,
					OnMouseEnter = self.onMouseEnter,
					OnMouseLeave = self.onMouseLeave,
					SelectedIndex = if viewType == "Grid" then 1 else 2,
					Size = style.ViewTypeSize,
				}),
			}) else nil,
		-- TODO : Update sort order values when functionality is added
		-- SortOrder = Roact.createElement(Pane, {
		-- 	LayoutOrder = layoutOrderIterator:getNextOrder(),
		-- 	Size = dropdownSize,
		-- }, {
		-- 	SelectInput = Roact.createElement(SelectInput, {
		-- 		Items = { "Sort Order "},
		-- 		OnItemActivated = self.selectSortOrder,
		-- 		SelectedIndex = self.state.sortOrderIndex,
		-- 		Size = UDim2.fromScale(1, 1),
		-- 	})
		-- }),
		-- TODO: Uncomment when adding filter functionality
		-- Filters = self.renderButton({
		-- 	ImageStyle = filter,
		-- 	LayoutOrder = layoutOrderIterator:getNextOrder(),
		-- 	OnClick = self.showFilters,
		-- 	TooltipText = localization:getText("TopBar", "Filters"),
		-- }),
	})
end

TopBar = withContext({
	Analytics = Analytics,
	Localization = Localization,
	MaterialController = MaterialController,
	MaterialServiceController = if getFFlagMaterialManagerGridOverhaul() then MaterialServiceController else nil,
	PluginController = PluginController,
	Stylizer = Stylizer,
})(TopBar)

return RoactRodux.connect(
	function(state: MainReducer.State)
		return {
			Material = state.MaterialBrowserReducer.Material,
			MaterialTileSize = if getFFlagMaterialManagerGridListView() then state.MaterialBrowserReducer.MaterialTileSize else nil,
			MenuHover = if getFFlagMaterialManagerGridListView() then state.MaterialBrowserReducer.MenuHover else nil,
			ViewType = if getFFlagMaterialManagerGridListView() then state.MaterialBrowserReducer.ViewType else nil,
		}
	end,
	function(dispatch)
		return {
			dispatchClearMaterialVariant = function()
				dispatch(ClearMaterialVariant())
			end,
			dispatchSetSearch = function (search: string)
				dispatch(SetSearch(search))
			end,
			dispatchSetMaterialTileSize = function(size: number)
				dispatch(SetMaterialTileSize(size))
			end,
			dispatchSetMode = function(mode: string)
				dispatch(SetMode(mode))
			end,
			dispatchSetViewType = function(viewType: string)
				dispatch(SetViewType(viewType))
			end,
			dispatchSetMenuHover = function(menuHover: boolean)
				dispatch(SetMenuHover(menuHover))
			end,
		}
	end
)(withAbsoluteSize(TopBar))
