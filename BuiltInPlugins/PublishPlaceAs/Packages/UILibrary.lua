--[[
	Public interface for UILibrary
]]

local FFlagEnableToolboxVideos = game:GetFastFlag("EnableToolboxVideos")

local Src = script
local Components = Src.Components
local Utils = Src.Utils

local ActionBar = require(Components.Preview.ActionBar)
local AssetDescription = require(Components.Preview.AssetDescription)
local AssetPreview = require(Components.Preview.AssetPreview)
local BulletPoint = require(Components.BulletPoint)
local Button = require(Components.Button)
local CheckBox = require(Components.CheckBox)
local createFitToContent = require(Components.createFitToContent)
local DetailedDropdown = require(Components.DetailedDropdown)
local DragTarget = require(Components.DragTarget)
local DropdownMenu = require(Components.DropdownMenu)
local DropShadow = require(Components.DropShadow)
local ExpandableList = require(Components.ExpandableList)
local Favorites = require(Components.Preview.Favorites)
local ImagePreview = require(Components.Preview.ImagePreview)
local AudioPreview = require(Components.Preview.AudioPreview)
local AudioControl = FFlagEnableToolboxVideos and nil or require(Components.Preview.AudioControl)
local Keyframe = require(Components.Timeline.Keyframe)
local InfiniteScrollingFrame = require(Components.InfiniteScrollingFrame)
local LoadingBar = require(Components.LoadingBar)
local LoadingIndicator = require(Components.LoadingIndicator)
local ModelPreview = require(Components.Preview.ModelPreview)
local PreviewController = require(Components.Preview.PreviewController)
local RadioButtons = require(Components.RadioButtons)
local RoundFrame = require(Components.RoundFrame)
local RoundTextBox = require(Components.RoundTextBox)
local RoundTextButton = require(Components.RoundTextButton)
local Scrubber = require(Components.Timeline.Scrubber)
local SearchBar = require(Components.SearchBar)
local Separator = require(Components.Separator)
local StyledDialog = require(Components.StyledDialog)
local StyledDropdown = require(Components.StyledDropdown)
local StyledScrollingFrame = require(Components.StyledScrollingFrame)
local StyledTooltip = require(Components.StyledTooltip)
local TextEntry = require(Components.TextEntry)
local ThumbnailIconPreview = require(Components.Preview.ThumbnailIconPreview)
local TitledFrame = require(Components.TitledFrame)
local Tooltip = require(Components.Tooltip)
local ToggleButton = require(Components.ToggleButton)
local TreeView = require(Components.TreeView)
local TreeViewButton = require(Components.Preview.TreeViewButton)
local TreeViewItem = require(Components.Preview.InstanceTreeViewItem)
local Vote = require(Components.Preview.Vote)

local Spritesheet = require(Utils.Spritesheet)
local LayoutOrderIterator = require(Utils.LayoutOrderIterator)
local GetClassIcon = require(Utils.GetClassIcon)
local InsertAsset = require(Utils.InsertAsset)
local GetTextSize = require(Utils.GetTextSize)
local getTimeString = require(Utils.getTimeString)
local AssetType = require(Utils.AssetType)

local Focus = require(Src.Focus)

local deepJoin = require(Src.deepJoin)
local join = require(Src.join)
local MathUtils = require(Utils.MathUtils)
local Signal = require(Utils.Signal)

local Dialog = require(Components.PluginWidget.Dialog)

local fflagStudioRestrictUiLibraryUsage = game:DefineFastFlag("StudioRestrictUiLibraryUsage", false)
-- We need to flag this separately so we can wait on existing offenders to be fixed
local fflagStudioUiLibraryErrorOnNilIncludes = game:DefineFastFlag("StudioUiLibraryErrorOnNilIncludes", false)

local function createStrictTable(t)
	if not fflagStudioUiLibraryErrorOnNilIncludes then return t end

	return setmetatable(t, {
		__index = function(_, index)
			error("Attempt to read key '"..index.."' which does not exist")
		end,
	})
end

local UILibrary = createStrictTable({
	Component = createStrictTable({
		ActionBar = ActionBar,
		AssetDescription = AssetDescription,
		AssetPreview = AssetPreview,
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
		Favorites = Favorites,
		ImagePreview = ImagePreview,
		AudioPreview = AudioPreview,
		AudioControl = AudioControl,
		InfiniteScrollingFrame = InfiniteScrollingFrame,
		Keyframe = Keyframe,
		LoadingBar = LoadingBar,
		LoadingIndicator = LoadingIndicator,
		ModelPreview = ModelPreview,
		PreviewController = PreviewController,
		RadioButtons = RadioButtons,
		RoundFrame = RoundFrame,
		RoundTextBox = RoundTextBox,
		RoundTextButton = RoundTextButton,
		Scrubber = Scrubber,
		SearchBar = SearchBar,
		Separator = Separator,
		StyledDialog = StyledDialog,
		StyledDropdown = StyledDropdown,
		StyledScrollingFrame = StyledScrollingFrame,
		StyledTooltip = StyledTooltip,
		TextEntry = TextEntry,
		ThumbnailIconPreview = ThumbnailIconPreview,
		TitledFrame = TitledFrame,
		Tooltip = Tooltip,
		ToggleButton = ToggleButton,
		TreeView = TreeView,
		TreeViewButton = TreeViewButton,
		TreeViewItem = TreeViewItem,
		Vote = Vote,
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
		InsertAsset = InsertAsset,
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

-- Temporary version check to get this enabled in NoOpt immediately so we don't regress while waiting to ship flag
if fflagStudioRestrictUiLibraryUsage or version() == "0.0.0.1" then
	local virtualFolder = Instance.new("Folder")
	virtualFolder.Name = "UILibraryInternals-Do-Not-Access-Directly"
	-- The number of parents to the plugin cannot change since UILibrary components reach out of UILibrary
	-- to get the plugin's copy of Roact
	virtualFolder.Parent = script.Parent

	for _,v in pairs(script:GetChildren()) do
		v.Parent = virtualFolder
	end
end

return UILibrary