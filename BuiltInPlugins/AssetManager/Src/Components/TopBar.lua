--[[
	The Top Bar contains the buttons for displaying the overlay, going back and forwards,
	importing assets as well the search bar.

	Required Props:
		callback OnOverlayActivated: To display the overlay when the overlay button is clicked.
]]

local Plugin = script.Parent.Parent.Parent
local FFlagStudioAssetManagerAddRecentlyImportedView = game:GetFastFlag("StudioAssetManagerAddRecentlyImportedView")
local FFlagEnableAssetManagerGlobalSearchBar = game:GetFastFlag("EnableAssetManagerGlobalSearchBar")
local FFlagEnableAssetManagerSortButton = game:GetFastFlag("EnableAssetManagerSortButton")

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local FFlagDevFrameworkMigrateSearchBar = Framework.SharedFlags.getFFlagDevFrameworkMigrateSearchBar()

local UI = Framework.UI
local Button = UI.Button
local DropdownMenu = UI.DropdownMenu
local HoverArea = UI.HoverArea
local LinkText = UI.LinkText
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel
local Tooltip = UI.Tooltip

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator
local StyleModifier = Util.StyleModifier
local GetTextSize = Util.GetTextSize

-- TODO(@rbujnowicz) remove this require with FFlagDevFrameworkMigrateSearchBar
local UILibrary = require(Plugin.Packages.UILibrary)
local SearchBar = if FFlagDevFrameworkMigrateSearchBar then Framework.StudioUI.SearchBar else UILibrary.Component.SearchBar

local SetRecentViewToggled = require(Plugin.Src.Actions.SetRecentViewToggled)
local SetSearchTerm = require(Plugin.Src.Actions.SetSearchTerm)
local SetToPreviousScreen = require(Plugin.Src.Actions.SetToPreviousScreen)
local SetToNextScreen = require(Plugin.Src.Actions.SetToNextScreen)
local SetView = require(Plugin.Src.Actions.SetView)

local LaunchBulkImport = require(Plugin.Src.Thunks.LaunchBulkImport)

local Screens = require(Plugin.Src.Util.Screens)
local View = require(Plugin.Src.Util.View)

local BulkImportService = game:GetService("BulkImportService")

local enableBadgesCallout = require(Plugin.Src.Util.AssetManagerUtilities).enableBadgesCallout
local TeachingCallout = enableBadgesCallout() and require(script.Parent.TeachingCallout) or nil

local NUM_BUTTONS = 6
local NUM_PADDING = 2

local TopBar = Roact.PureComponent:extend("TopBar")

function TopBar:init()
	self.state = {
		showSortDropdown = false,
	}

	self.OnTreeViewButtonActivated = function()
		local props = self.props
		props.OnOverlayActivated()
	end

	self.OnSearchRequested = function(searchTerm)
		local props = self.props
		props.Analytics:report("search")
		props.dispatchSetSearchTerm(searchTerm)
	end

	self.OnSelectSortItem = function(value, index)
		-- TODO: connect to backend and add dropdown functionality
		self:setState({
			showSortDropdown = false
		})
	end

	self.OnOpenSortDropdown = function()
		self:setState({
			showSortDropdown = true
		})
	end

	self.OnCloseSortDropdown = function()
		self:setState({
			showSortDropdown = false
		})
	end
end

function TopBar:render()
	local props = self.props
	local analytics = props.Analytics
	local theme = props.Stylizer
	local topBarTheme = theme.TopBar
	local localization = props.Localization

	local size = props.Size
	local layoutOrder = props.LayoutOrder

	local enabled = props.Enabled

	local recentViewToggled = props.RecentViewToggled
	local dispatchSetRecentViewToggled = props.dispatchSetRecentViewToggled

	local currentScreen = props.CurrentScreen
	local previousScreens = props.PreviousScreens
	local nextScreens = props.NextScreens
	local dispatchSetToPreviousScreen = props.dispatchSetToPreviousScreen
	local dispatchSetToNextScreen = props.dispatchSetToNextScreen
	local previousButtonEnabled = #previousScreens > 0
	local nextButtonEnabled = #nextScreens > 0

	local bulkImporterRunning = props.BulkImporterRunning
	local dispatchLaunchBulkImporter = props.dispatchLaunchBulkImporter
	local bulkImporterTooltipText = localization:getText("BulkImport", "BulkImportRunning")
	local bulkImporterLinkText = localization:getText("BulkImport", "BulkImportShowLink")
	local tooltipTextExtents = GetTextSize(bulkImporterTooltipText, topBarTheme.Tooltip.TextSize,
		theme.Font, Vector2.new(topBarTheme.Tooltip.Width, math.huge))
	local linkTextExtents = GetTextSize(bulkImporterLinkText, topBarTheme.Tooltip.TextSize,
		theme.Font, Vector2.new(topBarTheme.Tooltip.Width, math.huge))
	local tooltipHeight = tooltipTextExtents.Y + topBarTheme.Tooltip.Padding + linkTextExtents.Y

	local view = props.View
	local dispatchSetView = props.dispatchSetView
	local viewStyle
	if view.Key == View.GRID.Key then
		viewStyle = "ListViewButton"
	elseif view.Key == View.LIST.Key then
		viewStyle = "GridViewButton"
	end

	local searchBarXOffset
	if FFlagEnableAssetManagerSortButton then
		searchBarXOffset = topBarTheme.Button.Size * NUM_BUTTONS + topBarTheme.Padding * NUM_PADDING
	else
		searchBarXOffset = topBarTheme.Button.Size * 5 + topBarTheme.Padding * 4
	end

    -- Shrink the y-height of the search bar to fit into the smaller top-bar height
    local searchBarYOffset = 2

	-- Remove variable when removing flag
	local showSearchBar
	local defaultText
	if FFlagEnableAssetManagerGlobalSearchBar then
		showSearchBar = true
		if currentScreen.Path ~= Screens.MAIN.Path then
			defaultText = localization:getText("SearchBar", "PlaceholderText")
				.. " " .. localization:getText("Folders", currentScreen.Path)
		else
			defaultText = localization:getText("SearchBar", "GlobalPlaceholderText")
		end
	else
		showSearchBar = currentScreen.Path ~= Screens.MAIN.Path
		defaultText = localization:getText("SearchBar", "PlaceholderText")
			.. " " .. localization:getText("Folders", currentScreen.Path)
	end

	local layoutIndex = LayoutOrderIterator.new()

	local explorerOverlayButtonTooltipText = localization:getText("TopBar", "ExplorerOverlayButton")
	local backButtonTooltipText = localization:getText("TopBar", "BackButton")
	local forwardButtonTooltipText = localization:getText("TopBar", "ForwardButton")
	local bulkImportButtonTooltipText = localization:getText("TopBar", "BulkImportButton")
	local gridListToggleButtonTooltipText
	if view.Key == View.GRID.Key then
		gridListToggleButtonTooltipText = localization:getText("TopBar", "ListViewButton")
	elseif view.Key == View.LIST.Key then
		gridListToggleButtonTooltipText = localization:getText("TopBar", "GridViewButton")
	end
	local sortButtonTooltipText
	local recentlyAddedOption
	local recentlyUsedOption
	local ascendingNameOption
	local descendingNameOption
	if FFlagEnableAssetManagerSortButton then
		sortButtonTooltipText = localization:getText("TopBar", "SortButton")
		recentlyAddedOption = localization:getText("SortOption", "RecentlyAdded")
		recentlyUsedOption = localization:getText("SortOption", "RecentlyUsed")
		ascendingNameOption = localization:getText("SortOption", "AscendingName")
		descendingNameOption = localization:getText("SortOption", "DescendingName")
	end

	return Roact.createElement("Frame", {
		Size = size,
		LayoutOrder = layoutOrder,

		BackgroundColor3 = theme.BackgroundColor,
		BorderColor3 = theme.BorderColor,
		BorderSizePixel = 1,
	}, {
		TopBarLayout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, topBarTheme.Padding),
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, topBarTheme.Padding),
			PaddingRight = UDim.new(0, topBarTheme.Padding),
		}),

		ExplorerOverlayButton = Roact.createElement(Button, {
			Size = UDim2.new(0, topBarTheme.Button.Size, 0, topBarTheme.Button.Size),
			AnchorPoint = Vector2.new(0.5, 0.5),
			LayoutOrder = layoutIndex:getNextOrder(),

			Style = "OverlayButton",

			OnClick = function()
				if enabled then
					self.OnTreeViewButtonActivated()
				end
			end,
		}, {
			HoverArea = enabled and Roact.createElement(HoverArea, {
				Cursor = "PointingHand",
				MouseEnter = self.mouseEnter,
				MouseLeave = self.mouseLeave,
			}),

			Tooltip = enabled and Roact.createElement(Tooltip, {
				Text = explorerOverlayButtonTooltipText,
				Enabled = true,
			}),
		}),

		NavigationButtonsFrame = Roact.createElement("Frame", {
			Size = UDim2.new(0, 2 * topBarTheme.Button.Size, 0, topBarTheme.Button.Size),
			BackgroundTransparency = 1,
			LayoutOrder = layoutIndex:getNextOrder(),
		}, {
			ButtonLayout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, 0),
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			PreviousButton = Roact.createElement(Button, {
				Size = UDim2.new(0, topBarTheme.Button.Size, 0, topBarTheme.Button.Size),
				AnchorPoint = Vector2.new(0.5, 0.5),
				LayoutOrder = 1,

				Style = "PreviousButton",
				StyleModifier = not previousButtonEnabled and StyleModifier.Disabled,

				OnClick = function()
					if previousButtonEnabled and enabled then
						dispatchSetToPreviousScreen(previousButtonEnabled)
						if FFlagStudioAssetManagerAddRecentlyImportedView and recentViewToggled then
							dispatchSetRecentViewToggled(false)
						end
					end
				end,
			}, {
				HoverArea = previousButtonEnabled and enabled and Roact.createElement(HoverArea, {
					Cursor = "PointingHand",
					MouseEnter = self.mouseEnter,
					MouseLeave = self.mouseLeave,
				}),

				Tooltip = previousButtonEnabled and enabled and Roact.createElement(Tooltip, {
					Text = backButtonTooltipText,
					Enabled = true,
				}),
			}),

			NextButton = Roact.createElement(Button, {
				Size = UDim2.new(0, topBarTheme.Button.Size, 0, topBarTheme.Button.Size),
				AnchorPoint = Vector2.new(0.5, 0.5),
				LayoutOrder = 2,

				Style = "NextButton",
				StyleModifier = not nextButtonEnabled and StyleModifier.Disabled,

				OnClick = function()
					if nextButtonEnabled and enabled then
						dispatchSetToNextScreen(nextButtonEnabled)
						if FFlagStudioAssetManagerAddRecentlyImportedView and recentViewToggled then
							dispatchSetRecentViewToggled(false)
						end
					end
				end,
			}, {
				HoverArea = nextButtonEnabled and enabled and Roact.createElement(HoverArea, {
					Cursor = "PointingHand",
					MouseEnter = self.mouseEnter,
					MouseLeave = self.mouseLeave,
				}),

				Tooltip = nextButtonEnabled and enabled and Roact.createElement(Tooltip, {
					Text = forwardButtonTooltipText,
					Enabled = true,
				}),
			}),
		}),

		BulkImporterButton = Roact.createElement(Button, {
			Size = UDim2.new(0, topBarTheme.Button.Size, 0, topBarTheme.Button.Size),
			AnchorPoint = Vector2.new(0.5, 0.5),
			LayoutOrder = layoutIndex:getNextOrder(),

			Style = "BulkImporterButton",
			StyleModifier = bulkImporterRunning and StyleModifier.Disabled,

			OnClick = function()
				if not bulkImporterRunning and enabled then
					analytics:report("clickBulkImportButton")
					dispatchLaunchBulkImporter(0)
				end
			end,
		}, {
			OpenBulkImporterTooltip = Roact.createElement(Tooltip, {
				Content = Roact.createElement(Pane, {
					Layout = Enum.FillDirection.Vertical,
					Spacing = topBarTheme.Tooltip.Padding,
					Style = "Box",
				}, {
					TextLabel = Roact.createElement(TextLabel, {
						AutomaticSize = Enum.AutomaticSize.Y,
						Font = theme.Font,
						LayoutOrder = 1,
						Size = UDim2.fromScale(1, 0),
						Text = bulkImporterTooltipText,
						TextSize = topBarTheme.Tooltip.TextSize,
						TextWrapped = true,
						TextXAlignment = Enum.TextXAlignment.Left,
					}),

					LinkText = Roact.createElement(LinkText, {
						LayoutOrder = 2,
						Style = "BulkImporterTooltip",
						Text = bulkImporterLinkText,

						OnClick = function()
							BulkImportService:ShowBulkImportView()
						end,
					}),
				}),
				ContentExtents = Vector2.new(topBarTheme.Tooltip.Width, tooltipHeight),
				Enabled = bulkImporterRunning,
			}),

			HoverArea = not bulkImporterRunning and enabled and Roact.createElement(HoverArea, {
				Cursor = "PointingHand",
				MouseEnter = self.mouseEnter,
				MouseLeave = self.mouseLeave,
			}),

			BulkImportButtonTooltip = not bulkImporterRunning and enabled and Roact.createElement(Tooltip, {
				Text = bulkImportButtonTooltipText,
				Enabled = true,
			}),
		}),

		GridListToggleButton = Roact.createElement(Button, {
			Size = UDim2.new(0, topBarTheme.Button.Size, 0, topBarTheme.Button.Size),
			AnchorPoint = Vector2.new(0.5, 0.5),
			LayoutOrder = layoutIndex:getNextOrder(),

			Style = viewStyle,
			StyleModifier = bulkImporterRunning and StyleModifier.Disabled,

			OnClick = function()
				if view.Key == View.GRID.Key then
					dispatchSetView(View.LIST)
				elseif view.Key == View.LIST.Key then
					dispatchSetView(View.GRID)
				end
			end,
		}, {
			HoverArea = not bulkImporterRunning and enabled and Roact.createElement(HoverArea, {
				Cursor = "PointingHand",
				MouseEnter = self.mouseEnter,
				MouseLeave = self.mouseLeave,
			}),

			Tooltip = enabled and Roact.createElement(Tooltip, {
				Text = gridListToggleButtonTooltipText,
				Enabled = true,
			}),

			TeachingCallout = enableBadgesCallout() and Roact.createElement(TeachingCallout, {
				DefinitionId = "AssetManagerBadgesDevProductCallout",
				LocationId = "GridListToggleButton",
			}),
		}),

		SearchBar = if not FFlagEnableAssetManagerSortButton and showSearchBar then 
			Roact.createElement(SearchBar, if FFlagDevFrameworkMigrateSearchBar then {
				Size = UDim2.new(1, -searchBarXOffset, 1, -searchBarYOffset),
				LayoutOrder = layoutIndex:getNextOrder(),
				
				Disabled = not enabled,
				
				Style = "Compact",
				ShowSearchIcon = true,
				ShowSearchButton = false,
				
				PlaceholderText = defaultText,
				
				IncrementalTextSearch = true,
				IncrementalTextSearchDelay = 0,
				
				OnSearchRequested = self.OnSearchRequested,
			} else {
				Size = UDim2.new(1, -searchBarXOffset, 1, 0),
				LayoutOrder = layoutIndex:getNextOrder(),
				
				Enabled = enabled,
				
				TextSearchDelay = 0,
				DefaultText = defaultText,
				
				OnSearchRequested = self.OnSearchRequested,
			}) else nil,

		SearchSortFrame = if FFlagEnableAssetManagerSortButton then Roact.createElement(Pane, {
			Size = UDim2.new(1, -searchBarXOffset, 0, topBarTheme.Button.Size),
			BackgroundTransparency = 1,
			Layout = Enum.FillDirection.Horizontal,
			LayoutOrder = layoutIndex:getNextOrder(),
		}, {
			SearchBar = showSearchBar and Roact.createElement(SearchBar, if FFlagDevFrameworkMigrateSearchBar then {
				Size = UDim2.new(1, -topBarTheme.Button.Size, 1, -searchBarYOffset),
				LayoutOrder = 1,
				
				Disabled = not enabled,
				
				Style = "Compact",
				ShowSearchIcon = true,
				ShowSearchButton = false,
				
				PlaceholderText = defaultText,
				
				IncrementalTextSearch = true,
				IncrementalTextSearchDelay = 0,
				
				OnSearchRequested = self.OnSearchRequested,
			} else {
				Size = UDim2.new(1, -topBarTheme.Button.Size, 1, 0),
				LayoutOrder = 1,

				Enabled = enabled,

				TextSearchDelay = 0,
				DefaultText = defaultText,

				OnSearchRequested = self.OnSearchRequested,
			}),

			SortButton = Roact.createElement(Button, {
				Size = UDim2.new(0, topBarTheme.Button.Size, 0, topBarTheme.Button.Size),
				AnchorPoint = Vector2.new(0.5, 0.5),
				LayoutOrder = 2,

				Style = "SortButton",
				StyleModifier = self.state.showSortDropdown and StyleModifier.Selected,

				OnClick = function()
					if enabled then
						self.OnOpenSortDropdown()
					end
				end,
			}, {
				Menu = Roact.createElement(DropdownMenu, {
					Hide = not self.state.showSortDropdown,
					Items = {
						recentlyAddedOption,
						recentlyUsedOption,
						ascendingNameOption,
						descendingNameOption,
					},
					OnItemActivated = self.OnSelectSortItem,
					OnFocusLost = self.OnCloseSortDropdown,
				}),

				HoverArea = enabled and Roact.createElement(HoverArea, {
					Cursor = "PointingHand",
					MouseEnter = self.mouseEnter,
					MouseLeave = self.mouseLeave,
				}),

				Tooltip = enabled and Roact.createElement(Tooltip, {
					Text = sortButtonTooltipText,
					Enabled = true,
				}),
			}),
		}) else nil,
	})
end

TopBar = withContext({
	Analytics = ContextServices.Analytics,
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(TopBar)

local function mapStateToProps(state, props)
	local previousScreens = state.Screen.previousScreens
	local nextScreens = state.Screen.nextScreens

	return {
		BulkImporterRunning = state.AssetManagerReducer.bulkImporterRunning,
		CurrentScreen = state.Screen.currentScreen,
		PreviousScreens = previousScreens,
		NextScreens = nextScreens,
		RecentViewToggled = state.AssetManagerReducer.recentViewToggled,
		View = state.AssetManagerReducer.view,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchLaunchBulkImporter = function(assetType)
			dispatch(LaunchBulkImport(assetType))
		end,
		dispatchSetRecentViewToggled = function(toggled)
			dispatch(SetRecentViewToggled(toggled))
		end,
		dispatchSetSearchTerm = function(searchTerm)
			dispatch(SetSearchTerm(searchTerm))
		end,
		dispatchSetToPreviousScreen = function(enabled)
			if enabled then
				dispatch(SetToPreviousScreen())
			end
		end,
		dispatchSetToNextScreen = function(enabled)
			if enabled then
				dispatch(SetToNextScreen())
			end
		end,
		dispatchSetView = function(view)
			dispatch(SetView(view))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(TopBar)
