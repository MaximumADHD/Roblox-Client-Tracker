--[[
	Public interface for UILibrary
]]

local FFlagStudioDeleteUILibraryAssetPreview = game:GetFastFlag("StudioDeleteUILibraryAssetPreview")

local Src = script._internal
local Components = Src.Components
local Utils = Src.Utils

local ActionBar = not FFlagStudioDeleteUILibraryAssetPreview and require(Components.Preview.ActionBar) or nil
local AssetDescription = not FFlagStudioDeleteUILibraryAssetPreview and require(Components.Preview.AssetDescription) or nil
local AssetPreview = not FFlagStudioDeleteUILibraryAssetPreview and require(Components.Preview.AssetPreview) or nil
local BulletPoint = require(Components.BulletPoint)
local Button = require(Components.Button)
local CheckBox = require(Components.CheckBox)
local createFitToContent = require(Components.createFitToContent)
local DetailedDropdown = require(Components.DetailedDropdown)
local DragTarget = require(Components.DragTarget)
local DropdownMenu = require(Components.DropdownMenu)
local DropShadow = require(Components.DropShadow)
local ExpandableList = require(Components.ExpandableList)
local Favorites = not FFlagStudioDeleteUILibraryAssetPreview and require(Components.Preview.Favorites) or nil
local ImagePreview = not FFlagStudioDeleteUILibraryAssetPreview and require(Components.Preview.ImagePreview) or nil
local AudioPreview = not FFlagStudioDeleteUILibraryAssetPreview and require(Components.Preview.AudioPreview) or nil
local InfiniteScrollingFrame = require(Components.InfiniteScrollingFrame)
local LoadingBar = require(Components.LoadingBar)
local LoadingIndicator = require(Components.LoadingIndicator)
local ModelPreview = not FFlagStudioDeleteUILibraryAssetPreview and require(Components.Preview.ModelPreview) or nil
local PreviewController = not FFlagStudioDeleteUILibraryAssetPreview and require(Components.Preview.PreviewController) or nil
local RadioButtons = require(Components.RadioButtons)
local RoundFrame = require(Components.RoundFrame)
local RoundTextBox = require(Components.RoundTextBox)
local RoundTextButton = require(Components.RoundTextButton)
local SearchBar = require(Components.SearchBar)
local Separator = require(Components.Separator)
local StyledDialog = require(Components.StyledDialog)
local StyledDropdown = require(Components.StyledDropdown)
local StyledScrollingFrame = require(Components.StyledScrollingFrame)
local StyledTooltip = require(Components.StyledTooltip)
local TextEntry = require(Components.TextEntry)
local ThumbnailIconPreview = not FFlagStudioDeleteUILibraryAssetPreview and require(Components.Preview.ThumbnailIconPreview) or nil
local TitledFrame = require(Components.TitledFrame)
local Tooltip = require(Components.Tooltip)
local ToggleButton = require(Components.ToggleButton)
local TreeView = require(Components.TreeView)
local TreeViewButton = not FFlagStudioDeleteUILibraryAssetPreview and require(Components.Preview.TreeViewButton) or nil
local TreeViewItem = not FFlagStudioDeleteUILibraryAssetPreview and require(Components.Preview.InstanceTreeViewItem) or nil
local Vote = not FFlagStudioDeleteUILibraryAssetPreview and require(Components.Preview.Vote) or nil

local Spritesheet = require(Utils.Spritesheet)
local LayoutOrderIterator = require(Utils.LayoutOrderIterator)
local GetClassIcon = require(Utils.GetClassIcon)
local GetTextSize = require(Utils.GetTextSize)
local getTimeString = require(Utils.getTimeString)

-- TODO DEVTOOLS-4549: Remove in favour of DevFramework
local AssetType = require(Utils.AssetType)

local Focus = require(Src.Focus)

local deepJoin = require(Src.deepJoin)
local join = require(Src.join)
local MathUtils = require(Utils.MathUtils)
local Signal = require(Utils.Signal)

local Dialog = require(Components.PluginWidget.Dialog)

local function createStrictTable(t)
	return setmetatable(t, {
		__index = function(_, index)
			error("Attempt to read key '"..index.."' which does not exist")
		end,
	})
end

local UILibrary = createStrictTable({
	Component = createStrictTable({		
		BulletPoint = BulletPoint,
		Button = Button,
		CheckBox = CheckBox,
		createFitToContent = createFitToContent,
		DetailedDropdown = DetailedDropdown,
		Dialog = Dialog,
		DragTarget = DragTarget,
		DropdownMenu = DropdownMenu,
		DropShadow = DropShadow,
		ExpandableList = ExpandableList,
		InfiniteScrollingFrame = InfiniteScrollingFrame,
		LoadingBar = LoadingBar,
		LoadingIndicator = LoadingIndicator,
		RadioButtons = RadioButtons,
		RoundFrame = RoundFrame,
		RoundTextBox = RoundTextBox,
		RoundTextButton = RoundTextButton,
		SearchBar = SearchBar,
		Separator = Separator,
		StyledDialog = StyledDialog,
		StyledDropdown = StyledDropdown,
		StyledScrollingFrame = StyledScrollingFrame,
		StyledTooltip = StyledTooltip,
		TextEntry = TextEntry,
		TitledFrame = TitledFrame,
		Tooltip = Tooltip,
		ToggleButton = ToggleButton,
		TreeView = TreeView,

		AssetPreview = not FFlagStudioDeleteUILibraryAssetPreview and AssetPreview or nil,
		ActionBar = not FFlagStudioDeleteUILibraryAssetPreview and ActionBar or nil,
		AssetDescription = not FFlagStudioDeleteUILibraryAssetPreview and AssetDescription or nil,
		Favorites = not FFlagStudioDeleteUILibraryAssetPreview and Favorites or nil,
		ImagePreview = not FFlagStudioDeleteUILibraryAssetPreview and ImagePreview or nil,
		AudioPreview = not FFlagStudioDeleteUILibraryAssetPreview and AudioPreview or nil,
		ModelPreview = not FFlagStudioDeleteUILibraryAssetPreview and ModelPreview or nil,
		PreviewController = not FFlagStudioDeleteUILibraryAssetPreview and PreviewController or nil,
		ThumbnailIconPreview = not FFlagStudioDeleteUILibraryAssetPreview and ThumbnailIconPreview or nil,
		TreeViewButton = not FFlagStudioDeleteUILibraryAssetPreview and TreeViewButton or nil,
		TreeViewItem = not FFlagStudioDeleteUILibraryAssetPreview and TreeViewItem or nil,
		Vote = not FFlagStudioDeleteUILibraryAssetPreview and Vote or nil,
	}),

	Studio = createStrictTable({
		ContextMenus = require(Src.Studio.ContextMenus),
		Localization = require(Src.Studio.Localization),
		Analytics = require(Src.Studio.Analytics),
		Style = require(Src.Studio.StudioStyle),
		Theme = require(Src.Studio.StudioTheme),
		PartialHyperlink = require(Src.Studio.PartialHyperLink),
		Hyperlink = require(Src.Studio.Hyperlink),
	}),

	Focus = createStrictTable({
		CaptureFocus = Focus.CaptureFocus,
		ShowOnTop = Focus.ShowOnTop,
		KeyboardListener = Focus.KeyboardListener,
	}),

	Util = createStrictTable({
		Spritesheet = Spritesheet,
		LayoutOrderIterator = LayoutOrderIterator,
		deepJoin = deepJoin,
		join = join,
		GetClassIcon = GetClassIcon,
		GetTextSize = GetTextSize,
		getTimeString = getTimeString,
		MathUtils = MathUtils,
		Signal = Signal,
		AssetType = AssetType,
	}),

	Plugin = require(Src.Plugin),
	Localizing = require(Src.Localizing),
	Wrapper = require(Src.UILibraryWrapper),
	MockWrapper = require(Src.MockWrapper),

	createTheme = require(Src.createTheme),
})

return UILibrary