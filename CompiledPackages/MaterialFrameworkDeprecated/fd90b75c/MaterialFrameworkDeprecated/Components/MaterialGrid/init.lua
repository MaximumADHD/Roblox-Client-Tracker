--[[
	Display a collection of materials as a grid or list.

	Required Props:
		table Items: An array of material items. Supported values are Enum.Material
			items, MaterialVariant instances, and MaterialGrid.Item objects.

	Optional Props:
		Enum.AutomaticSize AutomaticSize: Whether or not to Automatically Size the grid to fit.
		number GridItemSize: The size of an item when ViewType equals Grid.
		Vector2 InitialGridCanvasPosition: The initial canvas position of the grid.
		Vector2 InitialListCanvasPosition: The initial canvas position of the list.
		number LayoutOrder: The layout order of the item.
		number ListItemHeight: The height of an item when ViewType equals List.
		callback OnClick: Called when an item in the grid is clicked.
		callback OnRightClick: Called when the grid is right clicked. If an item
			is clicked the item is passed to the callback.
		callback OnScrollUpdate: Called when the MaterialGrid is scrolled. The CanvasPosition
			of the scroller is passed to the callback.
		any MaterialPreviewGeometryType: The geometry used to preview the material.
		Enum.ScrollingDirection ScrollingDirection: Limit the Scrolling on the MaterialGrid
		any SelectedItem: The currently selected material or item object.
		any SelectedItemId: The currently selected item id.
		boolean ShouldCenterTooltip: Whether the tooltip should be centered on the grid item.
		boolean ShouldSyncScroll: Whether the grid and list should sync their scroll positions. 
			Defaults to false.
		boolean ShowGridLabels: Whether grid items should display a text label.
		UDim2 Size: The size of the component.
		boolean UseInstantTooltip: Whether to use instant tooltips - if one tooltip is displayed, subsequent tooltips will display immediately. Defaults to false.
		any ViewType: Display the collection in grid or list view. The default is Grid.
]]

local main = script.Parent.Parent
local Types = require(main.Types)
local Packages = main.Parent
local MaterialPreview = require(main.Components.MaterialPreview)

local Dash = require(Packages.Dash)
local Framework = require(Packages.Framework)

local React = require(Packages.React)
local useState = React.useState

local Localization = (Framework.ContextServices :: any).Localization
local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Grid = UI.Grid
local List = UI.List
local Pane = UI.Pane

local prioritize = Framework.Util.prioritize

local getFFlagMaterialGridTerrainEditorItemUx = require(main.Flags.getFFlagMaterialGridTerrainEditorItemUx)
local MaterialGridItem = require(script.MaterialGridItem)
local MaterialGridItemDeprecated = require(script.MaterialGridItemDeprecated) :: any
local MaterialListItem = require(script.MaterialListItem)
local MaterialListItemDeprecated = require(script.MaterialListItemDeprecated) :: any

local ViewType = require(main.Enums.ViewType)

local getMaterialName = require(main.Util.getMaterialName)
local getSerializedMaterialIdentifier = require(main.Util.getSerializedMaterialIdentifier)

local RunService = game:GetService("RunService")

local getFFlagMaterialGridExtraProps = require(main.Flags.getFFlagMaterialGridExtraProps)
local getFFlagMaterialGridShowTooltipWithLabel = require(main.Flags.getFFlagMaterialGridShowTooltipWithLabel)
local getFFlagMaterialGridUseItemIds = require(main.Flags.getFFlagMaterialGridUseItemIds)

export type Item = {
	Id: any?,
	Loading: boolean?,
	Material: Types.Material?,
	OverrideColor: Color3?,
	OverrideTransparency: number?,
	Text: string?,
}

export type ItemOrMaterial = Item | Types.Material

export type Props = {
	AppliedItemId: any?,
	AutomaticSize: Enum.AutomaticSize?,
	CellGroups: {}?,
	CellGroupHeader: {}?,
	ShouldCenterTooltip: boolean?,
	ContainerXBounds: NumberRange?,
	ContainerYBounds: NumberRange?,
	CustomPreviews: { [ItemOrMaterial]: React.ComponentType<Types.CustomPreviewProps> }?,
	SnapshotBorderThickness: number?,
	SnapshotSize: UDim2?,
	GridItemsPerRow: number?,
	GridItemSize: number?,
	GridPadding: number | { [string]: number }?,
	InitialDistance: number?,
	Items: { ItemOrMaterial },
	ItemsDisabled: boolean?,
	LayoutOrder: number?,
	ListItemHeight: number?,
	OnClick: ((Item) -> ())?,
	OnMouseEnter: ((Item) -> ())?,
	OnMouseLeave: ((Item) -> ())?,
	OnRenderItemChildren: ((Item) -> React.ReactNode)?,
	OnRightClick: ((Item?) -> ())?,
	OnScrollUpdate: ((canvasPosition: Vector2) -> ())?,
	OnSnapshotTaken: ((assetId: string) -> ())?,
	MaterialPreviewGeometryType: Types.MaterialPreviewGeometryType?,
	Padding: number | { [string]: number },
	ListPadding: number | { [string]: number }?,
	InitialGridCanvasPosition: Vector2?,
	InitialListCanvasPosition: Vector2?,
	ScrollingDirection: Enum.ScrollingDirection?,
	SelectedItem: ItemOrMaterial?,
	SelectedItemId: any?,
	ShouldSyncScroll: boolean?,
	ShowGridLabels: boolean?,
	ShowTooltipWithLabel: boolean?,
	Size: UDim2?,
	TooltipDelay: number?,
	UseInstantTooltip: boolean?,
	ViewType: any?,
}

type _Style = {
	BackgroundColor: Color3,
	GridItemBackgroundColor: Color3,
	GridItemPadding: number,
	GridItemSize: number,
	ListItemHeight: number,
	ListItemPadding: number,
	Padding: number | { [string]: number },
	SnapshotSize: UDim2,
	TooltipDelay: number,
	ViewType: any,
}

local function convertToItems(items: { ItemOrMaterial }): ({ Item }, { [Item]: boolean })
	local hasExplicitId = {}
	local convertedItems = Dash.map(items, function(item: ItemOrMaterial)
		if typeof(item) == "table" then
			local convertedItem = item :: Item
			hasExplicitId[convertedItem] = convertedItem.Id ~= nil
			return convertedItem
		else
			local convertedItem = {
				Id = item,
				Loading = false,
				Material = item :: Types.Material,
			}
			hasExplicitId[convertedItem] = false
			return convertedItem
		end
	end)
	return convertedItems, hasExplicitId
end

local function getItemIdentifier(item: Item, hasExplicitId: boolean): any
	if hasExplicitId then
		return item.Id
	end
	if item.Material then
		return getSerializedMaterialIdentifier(item.Material)
	end
	return item.Id
end

local function itemMatchesIdentifier(item: Item, hasExplicitId: boolean, identifier: any): boolean
	if getFFlagMaterialGridUseItemIds() and hasExplicitId and item.Id == identifier then
		return true
	end
	return item.Material ~= nil and getSerializedMaterialIdentifier(item.Material) == identifier
end

local function getItemText(item: Item, localization): string?
	if getFFlagMaterialGridUseItemIds() and item.Text then
		return item.Text
	elseif item.Material then
		return getMaterialName(item.Material, localization)
	end
	return nil
end

local function MaterialGrid(props: Props)
	local localization = Localization:use()
	local style: _Style = Stylizer:use("MaterialGrid")

	local gridItemSize = prioritize(props.GridItemSize, style.GridItemSize)
	local listItemHeight = prioritize(props.ListItemHeight, style.ListItemHeight)
	local padding = prioritize(props.Padding, style.Padding)
	local gridPadding = prioritize(props.GridPadding, style.Padding)
	local listPadding = prioritize(props.ListPadding, style.Padding)
	local viewType = prioritize(props.ViewType, style.ViewType)
	local tooltipDelay = prioritize(props.TooltipDelay, style.TooltipDelay)

	local items, hasExplicitId = convertToItems(props.Items)

	local dummyRef = React.createRef()
	local currentDummyMaterial, setCurrentDummyMaterial = useState()

	local function takeDummySnapshot()
		if dummyRef then
			local success, rbxTempId = pcall(function()
				return dummyRef:getValue():CaptureSnapshotAsync()
			end)

			if success and props.OnSnapshotTaken then
				props.OnSnapshotTaken(rbxTempId)
			else
				warn("Material Grid failed to get temporary image from viewport frame" .. rbxTempId)
			end
		end
	end

	-- TODO: Ideally we'd like to move this logic to the Tooltip component in Dev Framework
	-- so other components can use instant tooltips too.
	-- However, the Tooltip component doesn't easily allow for sharing information
	-- between multiple instances of itself. Using a singleton Tooltip component is also
	-- difficult as Tooltips assume they are parented to their corresponding component.

	-- This logic could potentially be moved to the Grid component, but would require a
	-- lot of refactoring as the Grid component currently doesn't support tooltips.
	local instantTooltipEnabled, setInstantTooltipEnabled = useState(false)
	local disableInstantTooltipThreshold = React.useRef(0)
	local disableInstantTooltipConnection

	local hoverEffectsEnabled, setHoverEffectsEnabled = useState(true)
	local enableHoverEffectsThreshold = React.useRef(0)

	local tooltipCanvasPosition, setTooltipCanvasPosition = useState(Vector2.new())

	local function onTooltipShown()
		if props.UseInstantTooltip then
			setInstantTooltipEnabled(true)
		end
	end

	local function disconnectDisableInstantTooltip()
		if disableInstantTooltipConnection then
			disableInstantTooltipConnection:Disconnect()
			disableInstantTooltipConnection = nil
		end
	end

	local function connectDisableInstantTooltip()
		disconnectDisableInstantTooltip()
		disableInstantTooltipConnection = RunService.Heartbeat:Connect(function()
			if tick() >= disableInstantTooltipThreshold.current then
				disconnectDisableInstantTooltip()
				setInstantTooltipEnabled(false)
			end
		end)
	end

	local function onMouseEnter()
		if props.UseInstantTooltip then
			disableInstantTooltipThreshold.current = tick() + tooltipDelay

			if instantTooltipEnabled then
				connectDisableInstantTooltip()
			end
		end
	end

	local function onMouseMoved()
		if props.UseInstantTooltip then
			disableInstantTooltipThreshold.current = tick() + tooltipDelay
		end

		if tick() >= enableHoverEffectsThreshold.current then
			setHoverEffectsEnabled(true)
		end
	end

	local function onMouseLeave()
		if props.UseInstantTooltip then
			disableInstantTooltipThreshold.current = tick() + tooltipDelay
		end
	end

	local listCanvasPosition = React.useRef(props.InitialListCanvasPosition or Vector2.new(0, 0))
	local gridCanvasPosition = React.useRef(props.InitialGridCanvasPosition or Vector2.new(0, 0))

	local function createOnScrollUpdate(viewType)
		local listItemScrollHeight = listItemHeight + style.ListItemPadding
		local gridItemScrollHeight = gridItemSize + style.GridItemPadding
		local gridItemsPerRow = props.GridItemsPerRow or 1

		-- For every grid item that is scrolled, we want to scroll one list item
		-- Since there can be multiple grid items per row, multiple of them can be scrolled at once, so we need to
		-- multiply the list:grid ratio by that amount
		local listGridScrollRatio = (listItemScrollHeight / gridItemScrollHeight) * gridItemsPerRow

		return function(canvasPosition: Vector2, canvasSize: UDim2)
			if props.OnScrollUpdate then
				props.OnScrollUpdate(canvasPosition)
			end

			if viewType == ViewType.Grid then
				if props.ShouldSyncScroll then
					listCanvasPosition.current = Vector2.new(0, canvasPosition.Y * listGridScrollRatio)
				end

				if props.ShouldCenterTooltip then
					setTooltipCanvasPosition(canvasPosition)
				end

				if props.UseInstantTooltip then
					disableInstantTooltipThreshold.current = tick() + tooltipDelay
				end

				-- Disable hover effects to prevent items from staying hovered when they're scrolled away from
				-- TODO: This happens for the list view too, but it's not as obvious compared to the grid
				-- Eventually, put the disable hover effects logic in MaterialListItem, although the
				-- styling for that is different than in MaterialGridItem and not as straightforward to change
				-- Jira ticket for tracking: https://roblox.atlassian.net/browse/SBT-2587
				setHoverEffectsEnabled(false)
				-- Set a small delay before enabling hover again after scrolling to avoid flickering
				enableHoverEffectsThreshold.current = tick() + 0.01
			elseif viewType == ViewType.List then
				if props.ShouldSyncScroll then
					gridCanvasPosition.current = Vector2.new(0, canvasPosition.Y / listGridScrollRatio)
				end
			end
		end
	end

	local selectedItemId
	if props.SelectedItemId then
		selectedItemId = props.SelectedItemId
	elseif props.SelectedItem then
		local convertedSelectedItems, selectedItemHasExplicitId = convertToItems({ props.SelectedItem })
		local convertedSelectedItem = convertedSelectedItems[1]
		if getFFlagMaterialGridUseItemIds() then
			selectedItemId = getItemIdentifier(convertedSelectedItem, selectedItemHasExplicitId[convertedSelectedItem])
		else
			selectedItemId = convertedSelectedItem.Id or convertedSelectedItem.Material
		end
	end

	local appliedItemId
	if props.AppliedItemId then
		appliedItemId = props.AppliedItemId
	end

	local function getItemPropsDeprecated(item: Item, index: number, position: UDim2, size: UDim2)
		local material = item.Material

		local selected
		local applied
		local text
		if not item.Loading then
			selected = itemMatchesIdentifier(item, hasExplicitId[item], selectedItemId)
			applied = itemMatchesIdentifier(item, hasExplicitId[item], appliedItemId)
			text = getItemText(item, localization)
		end

		return {
			Applied = applied,
			CanvasPosition = tooltipCanvasPosition,
			ShouldCenterTooltip = props.ShouldCenterTooltip,
			ContainerXBounds = props.ContainerXBounds,
			ContainerYBounds = props.ContainerYBounds,
			CustomPreview = if props.CustomPreviews then props.CustomPreviews[material] else nil,
			InitialDistance = props.InitialDistance,
			GridItemSize = gridItemSize,
			HoverEffectsEnabled = hoverEffectsEnabled,
			InstantTooltipEnabled = instantTooltipEnabled,
			LayoutOrder = index,
			Loading = item.Loading,
			Material = material,
			MaterialPreviewGeometryType = props.MaterialPreviewGeometryType,
			OverrideColor = item.OverrideColor,
			OverrideTransparency = item.OverrideTransparency,
			OnClick = function()
				if props.OnSnapshotTaken then
					takeDummySnapshot()
				end
				if props.OnClick then
					props.OnClick(item)
				end
			end,
			OnMouseEnter = function()
				onMouseEnter()

				if props.OnSnapshotTaken then
					setCurrentDummyMaterial(material)
				end
				if props.OnMouseEnter then
					props.OnMouseEnter(item)
				end
			end,
			OnMouseLeave = function()
				onMouseLeave()

				if props.OnMouseLeave then
					props.OnMouseLeave(item)
				end
			end,
			OnRenderChildren = if props.OnRenderItemChildren
				then function()
					return props.OnRenderItemChildren(item)
				end
				else nil,
			OnRightClick = function()
				if props.OnRightClick then
					props.OnRightClick(item)
				end
			end,
			OnMouseMoved = onMouseMoved,
			OnTooltipShown = onTooltipShown,
			Position = position,
			Selected = selected,
			ShowGridLabels = props.ShowGridLabels,
			ShowTooltipWithLabel = if getFFlagMaterialGridShowTooltipWithLabel()
				then props.ShowTooltipWithLabel
				else nil,
			Size = size,
			Style = style,
			Text = text,
			TooltipDelay = tooltipDelay,
		}
	end

	local onClickForItem = React.useCallback(function(item: Item)
		if props.ItemsDisabled then
			return
		end
		if props.OnSnapshotTaken then
			takeDummySnapshot()
		end
		if props.OnClick then
			props.OnClick(item)
		end
	end, { props.ItemsDisabled, props.OnSnapshotTaken, props.OnClick, takeDummySnapshot } :: { unknown })

	local onMouseEnterForItem = React.useCallback(
		function(item: Item)
			if props.ItemsDisabled then
				return
			end
			onMouseEnter()
			if props.OnSnapshotTaken then
				setCurrentDummyMaterial(item.Material)
			end
			if props.OnMouseEnter then
				props.OnMouseEnter(item)
			end
		end,
		{ props.ItemsDisabled, onMouseEnter, props.OnSnapshotTaken, setCurrentDummyMaterial, props.OnMouseEnter } :: { unknown }
	)

	local onMouseLeaveForItem = React.useCallback(function(item: Item)
		if props.ItemsDisabled then
			return
		end
		onMouseLeave()
		if props.OnMouseLeave then
			props.OnMouseLeave(item)
		end
	end, { props.ItemsDisabled, onMouseLeave, props.OnMouseLeave } :: { unknown })

	local onRightClickForItem = React.useCallback(function(item: Item)
		if props.ItemsDisabled then
			return
		end
		if props.OnRightClick then
			props.OnRightClick(item)
		end
	end, { props.ItemsDisabled, props.OnRightClick } :: { unknown })

	local onRenderChildrenForItem = React.useCallback(function(item: Item)
		if props.OnRenderItemChildren then
			return props.OnRenderItemChildren(item)
		end
		return nil
	end, { props.OnRenderItemChildren } :: { unknown })

	local getItemProps = function(item: Item, index: number, position: UDim2, size: UDim2)
		local itemsDisabled = props.ItemsDisabled == true
		local material = item.Material
		local selected
		local applied
		local text
		if not item.Loading then
			selected = itemMatchesIdentifier(item, hasExplicitId[item], selectedItemId)
			applied = itemMatchesIdentifier(item, hasExplicitId[item], appliedItemId)
			text = getItemText(item, localization)
		end

		return {
			Applied = applied,
			CanvasPosition = tooltipCanvasPosition,
			ShouldCenterTooltip = props.ShouldCenterTooltip,
			ContainerXBounds = props.ContainerXBounds,
			ContainerYBounds = props.ContainerYBounds,
			CustomPreview = if props.CustomPreviews then props.CustomPreviews[material] else nil,
			InitialDistance = props.InitialDistance,
			GridItemSize = gridItemSize,
			HoverEffectsEnabled = hoverEffectsEnabled and not itemsDisabled,
			Item = item,
			ItemsDisabled = itemsDisabled,
			InstantTooltipEnabled = instantTooltipEnabled,
			LayoutOrder = index,
			Loading = item.Loading,
			Material = material,
			MaterialPreviewGeometryType = props.MaterialPreviewGeometryType,
			OverrideColor = item.OverrideColor,
			OverrideTransparency = item.OverrideTransparency,
			OnClick = onClickForItem,
			OnMouseEnter = onMouseEnterForItem,
			OnMouseLeave = onMouseLeaveForItem,
			OnRenderChildren = if props.OnRenderItemChildren then onRenderChildrenForItem else nil,
			OnRightClick = onRightClickForItem,
			OnMouseMoved = onMouseMoved,
			OnTooltipShown = onTooltipShown,
			Position = position,
			Selected = selected,
			ShowGridLabels = props.ShowGridLabels,
			ShowTooltipWithLabel = if getFFlagMaterialGridShowTooltipWithLabel()
				then props.ShowTooltipWithLabel
				else nil,
			Size = size,
			Style = style,
			Text = text,
			TooltipDelay = tooltipDelay,
		}
	end

	local function renderDummyViewport()
		return React.createElement(Pane, {}, {
			React.createElement(MaterialPreview, {
				Static = true,
				Transparent = true,
				Material = currentDummyMaterial,
				Size = prioritize(props.SnapshotSize, style.SnapshotSize),
				BackgroundColor = style.GridItemBackgroundColor,
				MeshPartBorderThickness = props.SnapshotBorderThickness,
				ref = dummyRef,
			}),
			React.createElement(Pane, { -- Hide dummy viewport behind a pane
				Size = UDim2.fromScale(1, 1),
				BackgroundColor3 = style.BackgroundColor,
			}),
		})
	end

	local function renderGrid()
		local materialGridItem = if getFFlagMaterialGridTerrainEditorItemUx()
			then MaterialGridItem
			else MaterialGridItemDeprecated
		local cellProps = if getFFlagMaterialGridTerrainEditorItemUx() then getItemProps else getItemPropsDeprecated
		return React.createElement(Grid, {
			AutomaticSize = if getFFlagMaterialGridExtraProps() then props.AutomaticSize else nil,
			InitialCanvasPosition = gridCanvasPosition.current,
			CellComponent = materialGridItem,
			CellGroups = props.CellGroups,
			CellGroupHeader = props.CellGroupHeader,
			CellPadding = UDim2.fromOffset(style.GridItemPadding, style.GridItemPadding),
			CellSize = UDim2.fromOffset(gridItemSize, gridItemSize),
			Cells = items,
			GetCellProps = cellProps,
			OnScrollUpdate = createOnScrollUpdate(ViewType.Grid),
			ScrollingDirection = if getFFlagMaterialGridExtraProps() then props.ScrollingDirection else nil,
		})
	end

	local function renderList()
		local materialListItem = if getFFlagMaterialGridTerrainEditorItemUx()
			then MaterialListItem
			else MaterialListItemDeprecated
		local cellProps = if getFFlagMaterialGridTerrainEditorItemUx() then getItemProps else getItemPropsDeprecated
		return React.createElement(List, {
			AutomaticSize = if getFFlagMaterialGridExtraProps() then props.AutomaticSize else nil,
			InitialCanvasPosition = listCanvasPosition.current,
			GetRowProps = cellProps,
			OnScrollUpdate = createOnScrollUpdate(ViewType.List),
			RowComponent = materialListItem,
			RowHeight = listItemHeight,
			Rows = items,
			ScrollingDirection = if getFFlagMaterialGridExtraProps() then props.ScrollingDirection else nil,
		})
	end

	return React.createElement(Pane, {
		AutomaticSize = if getFFlagMaterialGridExtraProps() then props.AutomaticSize else nil,
		BackgroundColor = style.BackgroundColor,
		LayoutOrder = props.LayoutOrder,
		OnRightClick = function()
			if props.OnRightClick then
				props.OnRightClick()
			end
		end,
		Padding = if props.Padding then padding elseif viewType == ViewType.Grid then gridPadding else listPadding,
		Size = props.Size,
	}, {
		DummyViewport = if props.OnSnapshotTaken then renderDummyViewport() else nil,
		Grid = if viewType == ViewType.Grid then renderGrid() else nil,
		List = if viewType == ViewType.List then renderList() else nil,
	})
end

return MaterialGrid
