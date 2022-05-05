local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator
local StyleModifier = Util.StyleModifier

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
-- local SelectInput = UI.SelectInput
local Tooltip = UI.Tooltip

local Actions = Plugin.Src.Actions
local ClearMaterialVariant = require(Actions.ClearMaterialVariant)
local SetSearch = require(Actions.SetSearch)
local SetMode = require(Actions.SetMode)

local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local Flags = Plugin.Src.Flags
local getFFlagMaterialServiceStringOverride = require(Flags.getFFlagMaterialServiceStringOverride)
local getFFlagMaterialPack2022Update = require(Flags.getFFlagMaterialPack2022Update)

local MaterialController = require(Plugin.Src.Util.MaterialController)
local TeachingCallout = require(Plugin.Src.Components.TeachingCallout)

local getFFlagMaterialManagerTeachingCallout = require(Flags.getFFlagMaterialManagerTeachingCallout)

local TopBar = Roact.PureComponent:extend("TopBar")

export type Props = {
	LayoutOrder : number?,
	OpenPrompt : (type : _Types.MaterialPromptType) -> (),
	Size : UDim2?,
}

type _Props = Props & {
	Analytics : any,
	dispatchClearMaterialVariant : () -> (),
	dispatchSetSearch : (string) -> (),
	dispatchSetMode : (mode : string) -> (),
	Localization : any,
	Material : _Types.Material?,
	MaterialController : any,
	Stylizer : any,
	WrapperProps : any,
	AbsoluteSize : Vector2,
}

type _Image = {
	Image : string,
	Color : Color3,
}

type _Style = {
	ApplyToSelection : _Image,
	BackgroundColor : Color3,
	ButtonSize : UDim2,
	CreateNewVariant : _Image,
	-- TODO : Uncomment when adding sortOrder functionality
	-- DropdownSize : UDim2,
	-- Filter : _Image,
	ImagePosition : UDim2,
	ImageSize : UDim2,
	Padding : number,
	SearchBarMaxWidth : number,
	SpacerWidth : number,
	ShowInExplorer : _Image,
	TopBarButtonWidth : number,
}

type _ButtonProps = {
	ImageStyle : _Image,
	LayoutOrder : number,
	OnClick : () -> (),
	TooltipText : string,
	IsDisabled : boolean,
	Style : _Style,
	TeachingCallout : any,
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
		local props : _Props = self.props

		props.dispatchClearMaterialVariant()
		props.dispatchSetMode("Create")
		props.OpenPrompt("Create")
	end

	self.showInExplorer = function()
		local props : _Props = self.props

		if props.Material then
			Selection:Set({
				props.Material.MaterialVariant
			})
		end
	end

	self.applyToSelection = function()
		local props : _Props = self.props

		if Selection and props.Material then
			local instances = Selection:Get()
			ChangeHistoryService:SetWaypoint("Applied Material to Selection")

			for _, instance in ipairs(instances) do
				if getFFlagMaterialServiceStringOverride() and instance:IsA("BasePart") then
					instance.Material = props.Material.MaterialVariant.BaseMaterial
					if not props.Material.IsBuiltin then
						instance.MaterialVariant = props.Material.MaterialVariant.Name
					end
				end
			end
		end
	end

	self.setSearch = function(search)
		local props : _Props = self.props
		local dispatchSetSearch = props.dispatchSetSearch

		dispatchSetSearch(search)
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

	self.renderButton = function(buttonProps : _ButtonProps)
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
end

function TopBar:didMount()
	local props : _Props = self.props

	if getFFlagMaterialPack2022Update() then
		self.builtinMaterialsChangedConnection = props.MaterialController:getBuiltInMaterialsChangedSignal():Connect(function()
			self:setState({})
		end)
	end

	local isDisabledShowInExplorer = not props.Material or props.Material.IsBuiltin
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
	-- 			if getFFlagMaterialServiceStringOverride() and instance:IsA("BasePart") then
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
	local props : _Props = self.props

	local isDisabledShowInExplorer = not props.Material or props.Material.IsBuiltin
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
	-- 	-- 	if getFFlagMaterialServiceStringOverride() and instance:IsA("BasePart") then
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
	local props : _Props = self.props
	local style : _Style = props.Stylizer.TopBar
	local state = self.state
	local layoutOrder = props.LayoutOrder
	local size = props.Size

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

	local restWidth = props.AbsoluteSize.X - BUTTON_COUNT * (buttonWidth + padding)
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
			TeachingCallout = if getFFlagMaterialManagerTeachingCallout() then Roact.createElement(TeachingCallout, {
				Offset = Vector2.new(0, 6),
				DefinitionId = "MaterialManagerApplyCallout",
				LocationId = "MaterialManagerApplyButton",
			}) else nil,
		}),
		RestPane = Roact.createElement(Pane, {
			Size = UDim2.new(1, - BUTTON_COUNT * (buttonWidth + padding), 1, 0),
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
	Stylizer = Stylizer,
})(TopBar)

return RoactRodux.connect(
	function(state : MainReducer.State)
		return {
			Material = state.MaterialBrowserReducer.Material,
		}
	end,
	function(dispatch)
		return {
			dispatchClearMaterialVariant = function()
				dispatch(ClearMaterialVariant())
			end,
			dispatchSetSearch = function (search)
				dispatch(SetSearch(search))
			end,
			dispatchSetMode = function(mode : string)
				dispatch(SetMode(mode))
			end,
		}
	end
)(withAbsoluteSize(TopBar))
