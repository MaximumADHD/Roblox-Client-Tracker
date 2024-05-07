--!nocheck
local makeConfigurable = require(script.Core.Config.makeConfigurable)
local UIBloxDefaultConfig = require(script.UIBloxDefaultConfig)

local Fonts = require(script.App.Style.Fonts)
local ImagesTypes = require(script.App.ImageSet.ImagesTypes)
local StyleTypes = require(script.App.Style.StyleTypes)
local ResponsiveLayoutConfigReader = require(script.Core.Layout.Responsive.ResponsiveLayoutConfigReader)
local DialogOverlay = require(script.App.Dialog.Overlay.Overlay)

local ReactUtils = require(script.Parent.ReactUtils)

export type Font = Fonts.Font
export type FontPalette = Fonts.FontPalette

export type ImageSetImage = ImagesTypes.ImageSetImage
export type Images = ImagesTypes.Images

export type Theme = StyleTypes.Theme
export type ThemeItem = StyleTypes.ThemeItem
export type AppStyle = StyleTypes.AppStyle

export type ResponsiveLayoutConfig<T = number> = ResponsiveLayoutConfigReader.Config<T>

export type GradientDirection = DialogOverlay.GradientDirection

local function initializeLibrary(configs)
	local strict = require(script.Utility.strict)

	local UIBlox = {}

	UIBlox.Core = strict({
		Layout = strict({
			Responsive = strict({
				ResponsiveLayoutProvider = require(script.Core.Layout.Responsive.ResponsiveLayoutProvider),
				ResponsiveRow = require(script.Core.Layout.Responsive.ResponsiveRow),
				useResponsiveLayout = require(script.Core.Layout.Responsive.useResponsiveLayout),
			}),
			Grid = strict({
				GridContainer_DEPRECATED = require(script.Core.Layout.Grid.GridContainer_DEPRECATED),
				withGridConfig_DEPRECATED = require(script.Core.Layout.Grid.withGridConfig_DEPRECATED),
			}),
			LayerCollector = strict({
				LayerCollectorProvider = require(script.Core.Layout.LayerCollector.LayerCollectorProvider),
				withLayerCollectorProvider = require(script.Core.Layout.LayerCollector.withLayerCollectorProvider),
				useLayerCollector = require(script.Core.Layout.LayerCollector.useLayerCollector),
			}),
		}),

		Animation = strict({
			withAnimation = require(script.Core.Animation.withAnimation),
		}),

		ImageSet = strict({
			ImageSetButton = require(script.Core.ImageSet.ImageSetComponent).Button,
			ImageSetLabel = require(script.Core.ImageSet.ImageSetComponent).Label,
			Validator = strict({
				validateImage = require(script.Core.ImageSet.Validator.validateImage),
			}),
		}),

		Control = strict({
			Enum = strict({
				ControlState = require(script.Core.Control.Enum.ControlState),
				ControlStateEvent = require(script.Core.Control.Enum.ControlStateEvent),
				SelectionMode = require(script.Core.Control.Enum.SelectionMode),
			}),
			Hooks = strict({
				useGuiControlState = require(script.Core.Control.Hooks.useGuiControlState),
				useGuiControlStateWithBinding = require(script.Core.Control.Hooks.useGuiControlStateWithBinding),
			}),
			Interactable = require(script.Core.Control.Interactable),
			InteractableList = require(script.Core.Control.InteractableList),
			StateLayer = require(script.Core.Control.StateLayer),
			-- TODO: UIBLOX-707 remove once package dependency is resolved
			FeedbackManagerInjectionContext = require(script.Core.Control.FeedbackManagerInjectionContext),
		}),

		Spatial = strict({
			SurfaceGuiWithAdornee = require(script.Core.Spatial.SurfaceGuiWithAdornee),
		}),

		Style = strict({
			Provider = require(script.Core.Style.StyleProvider),
			withStyle = require(script.Core.Style.withStyle),
			useStyle = require(script.Core.Style.useStyle),
		}),

		VR = strict({
			Panel3D = require(script.Core.VR.Panel3D),
			Constants = require(script.Core.VR.Constants),
			PointerOverlay = require(script.Core.VR.PointerOverlay),
		}),

		Text = strict({
			ExpandableText = strict({
				GetCanExpand = require(script.Core.Text.ExpandableText.ExpandableTextUtils).getCanExpand,
			}),
			GetWrappedTextWithIcon = require(script.Core.Text.GetWrappedTextWithIcon),
			EmojiTextLabel = require(script.Core.Text.EmojiTextLabel.EmojiTextLabel),
		}),

		Hooks = strict({
			-- Kept for backwards compatibility. Consumers should reference ReactUtils directly
			useExternalEvent = ReactUtils.useEventConnection,
			useLazyRef = ReactUtils.useLazyRef,
			useInitializedValue = ReactUtils.useInitializedValue,
			useForwardRef = ReactUtils.useForwardRef,
			useProperties = ReactUtils.useProperties,
			usePropertiesDeferred = ReactUtils.usePropertiesDeferred,

			useIsGamepad = require(script.Utility.useIsGamepad),
			useInputType = require(script.Utility.useInputType),
		}),

		Enums = strict({
			InputType = require(script.Enums.InputType),
		}),
	})

	UIBlox.Common = strict({
		Style = strict({
			ColorSystem = require(script.Common.Style.ColorSystem),
		}),
	})

	UIBlox.App = strict({
		Context = strict({
			ContentProvider = require(script.App.Context.ContentProvider),
		}),

		ImageSet = strict({
			Images = require(script.App.ImageSet.Images),
			getIconSize = require(script.App.ImageSet.getIconSize),
			getIconSizeUDim2 = require(script.App.ImageSet.getIconSizeUDim2),
			scaleSliceToResolution = require(script.App.ImageSet.scaleSliceToResolution),
			Enum = strict({
				IconSize = require(script.App.ImageSet.Enum.IconSize),
			}),
		}),

		Bar = strict({
			HeaderBar = require(script.App.Bar.HeaderBar),
			FullscreenTitleBar = require(script.App.Bar.FullscreenTitleBar),
			ControllerBar = require(script.App.Bar.ControllerBar),
		}),

		Button = strict({
			Enum = strict({
				ButtonType = require(script.App.Button.Enum.ButtonType),
				StandardButtonSize = require(script.Core.Button.Enum.StandardButtonSize),
			}),
			Button = require(script.App.Button.Button),
			ButtonStack = require(script.App.Button.ButtonStack),
			TextButton = require(script.App.Button.TextButton),
			LinkButton = require(script.App.Button.LinkButton),
			IconButton = require(script.App.Button.IconButton),
			ActionBar = require(script.App.Button.ActionBar),
			UtilityActionIcon = require(script.App.Button.UtilityActionIcon),
		}),

		Cell = strict({
			Small = strict({
				SelectionGroup = strict({
					SmallRadioButtonGroup = require(script.App.Cell.Small.SelectionGroup.SmallRadioButtonGroup),
				}),
			}),
		}),

		Text = strict({
			ExpandableTextArea = require(script.App.Text.ExpandableTextArea.ExpandableTextArea),
			StyledTextLabel = require(script.App.Text.StyledTextLabel),
		}),

		Loading = strict({
			Enum = strict({
				RetrievalStatus = require(script.App.Loading.Enum.RetrievalStatus),
				LoadingStrategy = require(script.App.Loading.Enum.LoadingStrategy),
			}),
			LoadableImage = require(script.App.Loading.LoadableImage),
			ShimmerPanel = require(script.App.Loading.ShimmerPanel),
			LoadingSpinner = require(script.App.Loading.LoadingSpinner),
		}),

		InputButton = strict({
			RadioButtonList = require(script.App.InputButton.RadioButtonList),
			CheckboxList = require(script.App.InputButton.CheckboxList),
			Checkbox = require(script.App.InputButton.Checkbox),
			Toggle = require(script.App.InputButton.Toggle),
		}),

		Container = strict({
			Enum = strict({
				ScrollBarType = require(script.App.Container.Enum.ScrollBarType),
			}),
			Carousel = strict({
				ResponsiveCarousel = require(script.App.Container.Carousel.ResponsiveCarousel),
				FreeFlowCarousel = require(script.App.Container.Carousel.FreeFlowCarousel),
			}),
			Grid = strict({
				ResponsiveGrid = require(script.App.Container.Grid.ResponsiveGrid),
			}),
			VerticalScrollView = require(script.App.Container.VerticalScrollView),
			VerticalScrollViewWithMargin = require(script.App.Container.VerticalScrollViewWithMargin),
			getPageMargin = require(script.App.Container.getPageMargin),
			LoadingStateContainer = require(script.App.Container.LoadingStateContainer),
			LoadingStatePage = require(script.App.Container.LoadingStatePage),
			HorizontalPageMargin = require(script.App.Container.HorizontalPageMargin),
			MediaGalleryPreview = require(script.App.Container.MediaGallery.MediaGalleryPreview),
			MediaGalleryFullScreen = require(script.App.Container.MediaGallery.MediaGalleryFullScreen),
			MediaGalleryHorizontal = require(script.App.Container.MediaGallery.MediaGalleryHorizontal),
			MediaGalleryExpandableView = require(script.App.Container.MediaGallery.MediaGalleryExpandableView),
			CrossFadeAnimatedView = require(script.App.Container.MediaGallery.CrossFadeAnimatedView),
		}),

		Slider = strict({
			ContextualSlider = require(script.App.Slider.ContextualSlider),
			SystemSlider = require(script.App.Slider.SystemSlider),
			TwoKnobSystemSlider = require(script.App.Slider.TwoKnobSystemSlider),
			TwoKnobContextualSlider = require(script.App.Slider.TwoKnobContextualSlider),
		}),

		Emoji = strict({
			Emoji = require(script.Core.Emoji.Emoji),
			Enum = strict({
				Emoji = require(script.Core.Emoji.Enum.Emoji),
			}),
		}),

		Grid = strict({
			GridView = require(script.App.Grid.GridView),
			GridMetrics = require(script.App.Grid.GridMetrics),
			DefaultMetricsGridView = require(script.App.Grid.DefaultMetricsGridView),
		}),

		Tile = strict({
			MenuTile = require(script.App.Tile.MenuTile.MenuTile),
			PlayerTile = require(script.App.Tile.PlayerTile.PlayerTile),
			ExperienceTileV3 = require(script.App.Tile.SplitTile.ExperienceTile.ExperienceTileV3),
			AspectRatioModeEnum = require(script.App.Tile.SplitTile.ExperienceTile.Enum.AspectRatioMode),
			getExperienceTileHeight = require(script.App.Tile.SplitTile.ExperienceTile.getExperienceTileHeight),
			getExperienceTileRelativeHeight = require(
				script.App.Tile.SplitTile.ExperienceTile.getExperienceTileRelativeHeight
			),
			ExperienceActionRow = require(script.App.Tile.SplitTile.ExperienceTile.ExperienceActionRow),
			ActionTile = require(script.App.Tile.SplitTile.ActionTile.ActionTile),
			VerticalTile = require(script.App.Tile.SplitTile.VerticalTile.VerticalTile),
			VerticalTileThumbnail = require(script.App.Tile.SplitTile.VerticalTile.VerticalTileThumbnail),
			ExperienceTileMetadata = strict({
				SocialProofFooter = require(script.App.Tile.ExperienceTileMetadata.SocialProofFooter),
				CoPlayFooter = require(script.App.Tile.ExperienceTileMetadata.CoPlayFooter),
				TextFooter = require(script.App.Tile.ExperienceTileMetadata.TextFooter),
			}),
		}),

		Dialog = strict({
			Modal = strict({
				FullPageModal = require(script.App.Dialog.Modal.FullPageModal),
				PartialPageModal = require(script.App.Dialog.Modal.PartialPageModal),
				EducationalModal = require(script.App.Dialog.Modal.EducationalModal),
				ModalWindow = require(script.App.Dialog.Modal.ModalWindow),
			}),
			Alert = strict({
				InformativeAlert = require(script.App.Dialog.Alert.InformativeAlert),
				InteractiveAlert = require(script.App.Dialog.Alert.InteractiveAlert),
				LoadingAlert = require(script.App.Dialog.Alert.LoadingAlert),
			}),
			Enum = strict({
				AlertType = require(script.App.Dialog.Alert.Enum.AlertType),
				TooltipOrientation = require(script.App.Dialog.Tooltip.Enum.TooltipOrientation),
			}),
			Toast = require(script.App.Dialog.Toast.Toast),
			Tooltip = require(script.App.Dialog.Tooltip.Tooltip),
			TooltipV2 = require(script.App.Dialog.TooltipV2.Controllers),
			TooltipCallout = require(script.App.Dialog.TooltipV2.TooltipCallout),
			TooltipOrientation = require(script.App.Dialog.Tooltip.Enum.TooltipOrientation),
			Overlay = DialogOverlay,
		}),

		Constant = strict({
			-- DEPRECATED: use App.ImageSet.getIconSize to get the size
			IconSize = require(script.App.Constant.IconSize),
		}),

		Style = strict({
			AppStyleProvider = require(script.App.Style.AppStyleProvider),
			Colors = require(script.App.Style.Colors),
			Constants = require(script.App.Style.Constants),
			Themes = {
				DarkTheme = if configs.useNewThemeColorPalettes
					then require(script.App.Style.Themes.DarkThemeNew)
					else require(script.App.Style.Themes.DarkTheme),
				LightTheme = if configs.useNewThemeColorPalettes
					then require(script.App.Style.Themes.LightThemeNew)
					else require(script.App.Style.Themes.LightTheme),
			},
			Tokens = require(script.App.Style.Tokens),
		}),

		Indicator = strict({
			Badge = require(script.App.Indicator.Badge),
			EmptyState = require(script.App.Indicator.EmptyState),
			Enum = strict({
				BadgeStates = require(script.App.Indicator.Enum.BadgeStates),
				BadgeVariant = require(script.App.Indicator.Enum.BadgeVariant),
				VoteStates = require(script.App.Indicator.Enum.VoteStates),
			}),
			PlayerContext = require(script.App.Indicator.PlayerContext),
			PlayerCount = require(script.App.Indicator.PlayerCount),
			RateCount = require(script.App.Indicator.RateCount),
			StatWidget = require(script.App.Indicator.StatWidget),
			StatGroup = require(script.App.Indicator.StatGroup),
			PlayerName = require(script.App.Indicator.PlayerName),
		}),

		Menu = strict({
			BaseMenu = require(script.App.Menu.BaseMenu),
			ContextualMenu = require(script.App.Menu.ContextualMenu),

			MenuDirection = require(script.App.Menu.MenuDirection),

			DropdownMenu = require(script.App.Menu.DropdownMenu),

			KeyLabel = require(script.App.Menu.KeyLabel.KeyLabel),
		}),

		Control = strict({
			SegmentedControl = require(script.App.Control.SegmentedControl),
			Pill = require(script.App.Control.Pill.Pill),
			Pillv2 = require(script.App.Control.Pill.Pillv2),
			Slot = strict({
				SlotTray = require(script.App.Control.Slot.SlotTray),
			}),
			PillGroup = require(script.App.Control.Pill.PillGroup),
			ScrollingListWithArrowsAndGradient = require(
				script.App.Control.HorizontalNav.ScrollingListWithArrowsAndGradient
			),
		}),

		Navigation = strict({
			Enum = strict({
				Placement = require(script.App.Navigation.Enum.Placement),
				NavigationRailAlignment = require(script.App.Navigation.Enum.NavigationRailAlignment),
			}),
			SystemBar = require(script.App.Navigation.SystemBar),
			NavigationBar = require(script.App.Navigation.NavigationBar),
			NavigationRail = require(script.App.Navigation.NavigationRail),
			PrimaryNavBar = strict({
				ContextBar = require(script.App.Navigation.PrimaryNavBar.ContextBar),
				IconTab = require(script.App.Navigation.PrimaryNavBar.IconTab),
				IconTabGroup = require(script.App.Navigation.PrimaryNavBar.IconTabGroup),
				Types = require(script.App.Navigation.PrimaryNavBar.Types),
			}),
			ShortcutBar = require(script.App.Navigation.ShortcutBar.ShortcutBar),
		}),

		SelectionImage = strict({
			SelectionCursorProvider = require(script.App.SelectionImage.SelectionCursorProvider),
			CursorKind = require(script.App.SelectionImage.CursorKind),
			withSelectionCursorProvider = require(script.App.SelectionImage.withSelectionCursorProvider),
			useSelectionCursor = require(script.App.SelectionImage.useSelectionCursor),
		}),

		SelectionCursor = strict({
			CursorProvider = require(script.App.SelectionCursor.CursorProvider),
			useCursor = require(script.App.SelectionCursor.useCursor),
			withCursor = require(script.App.SelectionCursor.withCursor),
			useCursorByType = require(script.App.SelectionCursor.useCursorByType),
			CursorType = require(script.App.SelectionCursor.CursorType),
		}),

		Template = strict({
			DetailsPage = {
				Enum = {
					ContentPosition = require(script.App.Template.DetailsPage.Enum.ContentPosition),
				},
				DetailsPageTemplate = require(script.App.Template.DetailsPage.DetailsPageTemplate),
				DetailsPageSelector = require(script.App.Template.DetailsPage.DetailsPageSelector),
			},
		}),

		Table = strict({
			ListTable = require(script.App.Table.ListTable),
			ScrollingListTable = require(script.App.Table.ScrollingListTable),
			Cell = require(script.App.Table.Cell),
			CellHeadDetail = require(script.App.Table.CellHeadDetail),
			CellTailDescription = require(script.App.Table.CellTailDescription),
		}),

		Input = strict({
			TextField = require(script.App.Input.TextField),
		}),
	})

	UIBlox.UnitTestHelpers = {
		MockContentProvider = require(script.UnitTestHelpers.MockContentProvider),
		mockStyleComponent = require(script.Utility.mockStyleComponent),
		testWithStyledComponent = require(script.UnitTestHelpers.testWithStyledComponent),
	}

	UIBlox.Style = {
		Provider = UIBlox.Core.Style.Provider,
		withStyle = UIBlox.Core.Style.withStyle,
		Validator = {
			validateStyle = require(script.App.Style.Validator.validateStyle),
			validateFont = require(script.App.Style.Validator.validateFont),
			validateFontInfo = require(script.Core.Style.Validator.validateFontInfo),
			validateTypographyInfo = require(script.Core.Style.Validator.validateTypographyInfo),
			validateTheme = if configs.useNewThemeColorPalettes
				then require(script.App.Style.Validator.validateThemeNew)
				else require(script.App.Style.Validator.validateTheme),
			validateColorInfo = require(script.Core.Style.Validator.validateColorInfo),
			validateColorToken = require(script.Core.Style.Validator.validateColorToken),
		},
		-- Used for updating the style in consumer who would have previously
		-- used `_context` to access the style object
		Consumer = require(script.Core.Style.StyleConsumer),
		-- Used for useContext hook
		Context = require(script.Core.Style.StyleContext),
	}

	UIBlox.AccordionView = require(script.App.Accordion.AccordionView)

	UIBlox.Tile = {
		SaveTile = require(script.App.Tile.SaveTile.SaveTile),
		ItemTile = require(script.App.Tile.ItemTile.ItemTile),
		ItemTileEnums = require(script.App.Tile.Enum.ItemTileEnums),
	}

	UIBlox.Utility = {
		-- Keeping for backwards compatibility - consumers should use ReactUtils directly.
		ExternalEventConnection = ReactUtils.EventConnection,
		SpringAnimatedItem = require(script.Utility.SpringAnimatedItem),
	}

	-- DEPRECATED SECTION

	-- DEPRECATED: This is kept for compatibility. This should not be used because it is an old design.
	-- Use ContextualMenu instead
	UIBlox.ModalBottomSheet = require(script.ModalBottomSheet.ModalBottomSheet)

	-- END DEPRECATED SECTION

	if _G.__UIBLOX_TRACK_USAGE__ then
		local UsageTracker = require(script.Parent.UsageTracker)

		UIBlox = UsageTracker.trackMemberAccess("UIBlox", UIBlox, UsageTracker.isReactComponent)
	end

	if configs.enableTraceLevelLog then
		local Logger = require(script.Logger)
		Logger:enableTraceLog()
	end

	return UIBlox
end

return makeConfigurable(initializeLibrary, "UIBlox", UIBloxDefaultConfig)
