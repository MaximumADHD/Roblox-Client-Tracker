--!nocheck
local makeConfigurable = require(script.Core.Config.makeConfigurable)
local UIBloxDefaultConfig = require(script.UIBloxDefaultConfig)

local LazyRequire = require(script.Parent.LazyRequire)
local createLazyComponent = LazyRequire.createLazyComponent

local Fonts = require(script.App.Style.Fonts)
local ImagesTypes = require(script.App.ImageSet.ImagesTypes)
local StyleTypes = require(script.App.Style.StyleTypes)
local ResponsiveLayoutConfigReader = require(script.Core.Layout.Responsive.ResponsiveLayoutConfigReader)
local DialogOverlay = require(script.App.Dialog.Overlay.Overlay)
local ControlStateEnum = require(script.Core.Control.Enum.ControlState)

local React = require(script.Parent.React)
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

export type ControlState = ControlStateEnum.ControlState

local function initializeLibrary(configs)
	local strict = require(script.Utility.strict)

	local function lazify<Props>(fn: () -> React.FC<Props> | React.ComponentType<Props>): React.FC<Props>
		if configs.enableCreateLazyComponent then
			return createLazyComponent(fn)
		else
			return fn() :: React.FC<Props>
		end
	end

	local UIBlox = {}

	UIBlox.Core = strict({
		Layout = strict({
			Responsive = strict({
				ResponsiveLayoutProvider = require(script.Core.Layout.Responsive.ResponsiveLayoutProvider),
				ResponsiveRow = lazify(function()
					return require(script.Core.Layout.Responsive.ResponsiveRow)
				end),
				useResponsiveLayout = require(script.Core.Layout.Responsive.useResponsiveLayout),
			}),
			Grid = strict({
				GridContainer_DEPRECATED = lazify(function()
					return require(script.Core.Layout.Grid.GridContainer_DEPRECATED)
				end),
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
				ControlState = ControlStateEnum,
				ControlStateEvent = require(script.Core.Control.Enum.ControlStateEvent),
				SelectionMode = require(script.Core.Control.Enum.SelectionMode),
			}),
			Hooks = strict({
				useGuiControlState = require(script.Core.Control.Hooks.useGuiControlState),
				useGuiControlStateWithBinding = require(script.Core.Control.Hooks.useGuiControlStateWithBinding),
			}),
			Interactable = lazify(function()
				return require(script.Core.Control.Interactable)
			end),
			InteractableList = lazify(function()
				return require(script.Core.Control.InteractableList)
			end),
			StateLayer = lazify(function()
				return require(script.Core.Control.StateLayer)
			end),
			-- TODO: UIBLOX-707 remove once package dependency is resolved
			FeedbackManagerInjectionContext = require(script.Core.Control.FeedbackManagerInjectionContext),
		}),

		Spatial = strict({
			SurfaceGuiWithAdornee = lazify(function()
				return require(script.Core.Spatial.SurfaceGuiWithAdornee)
			end),
		}),

		Style = strict({
			Provider = require(script.Core.Style.StyleProvider),
			withStyle = require(script.Core.Style.withStyle),
			useStyle = require(script.Core.Style.useStyle),
			useTextSizeOffset = require(script.Core.Style.useTextSizeOffset),
			withTextSizeOffset = require(script.Core.Style.withTextSizeOffset),
			useStyleMetadata = require(script.Core.Style.useStyleMetadata),
		}),

		VR = strict({
			Panel3D = lazify(function()
				return require(script.Core.VR.Panel3D)
			end),
			Constants = require(script.Core.VR.Constants),
			PointerOverlay = lazify(function()
				return require(script.Core.VR.PointerOverlay)
			end),
		}),

		Text = strict({
			ExpandableText = strict({
				GetCanExpand = require(script.Core.Text.ExpandableText.ExpandableTextUtils).getCanExpand,
			}),
			GetWrappedTextWithIcon = lazify(function()
				return require(script.Core.Text.GetWrappedTextWithIcon)
			end),
			EmojiTextLabel = lazify(function()
				return require(script.Core.Text.EmojiTextLabel.EmojiTextLabel)
			end),
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
			HeaderBar = if configs.useNewHeaderBar
				then lazify(function()
					return require(script.App.Bar.HeaderBar)
				end)
				else require(script.App.Bar.HeaderBar),
			FullscreenTitleBar = lazify(function()
				return require(script.App.Bar.FullscreenTitleBar)
			end),
			ControllerBar = lazify(function()
				return require(script.App.Bar.ControllerBar)
			end),
		}),

		Button = strict({
			Enum = strict({
				ButtonType = require(script.App.Button.Enum.ButtonType),
				StandardButtonSize = require(script.Core.Button.Enum.StandardButtonSize),
			}),
			Button = lazify(function()
				return require(script.App.Button.Button)
			end),
			ButtonStack = lazify(function()
				return require(script.App.Button.ButtonStack)
			end),
			TextButton = lazify(function()
				return require(script.App.Button.TextButton)
			end),
			LinkButton = lazify(function()
				return require(script.App.Button.LinkButton)
			end),
			IconButton = lazify(function()
				return require(script.App.Button.IconButton)
			end),
			ActionBar = lazify(function()
				return require(script.App.Button.ActionBar)
			end),
			UtilityActionIcon = lazify(function()
				return require(script.App.Button.UtilityActionIcon)
			end),
			ComboButton = lazify(function()
				return require(script.App.Button.ComboButton)
			end),
		}),

		Cell = strict({
			Small = strict({
				SelectionGroup = strict({
					SmallRadioButtonGroup = lazify(function()
						return require(script.App.Cell.Small.SelectionGroup.SmallRadioButtonGroup)
					end),
				}),
			}),
		}),

		Text = strict({
			ExpandableTextArea = lazify(function()
				return require(script.App.Text.ExpandableTextArea.ExpandableTextArea)
			end),
			StyledTextLabel = lazify(function()
				return require(script.App.Text.StyledTextLabel)
			end),
		}),

		Loading = strict({
			Enum = strict({
				RetrievalStatus = require(script.App.Loading.Enum.RetrievalStatus),
				LoadingStrategy = require(script.App.Loading.Enum.LoadingStrategy),
			}),
			LoadableImage = lazify(function()
				return require(script.App.Loading.LoadableImage)
			end),
			ShimmerPanel = lazify(function()
				return require(script.App.Loading.ShimmerPanel)
			end),
			LoadingSpinner = lazify(function()
				return require(script.App.Loading.LoadingSpinner)
			end),
		}),

		InputButton = strict({
			RadioButtonList = lazify(function()
				return require(script.App.InputButton.RadioButtonList)
			end),
			CheckboxList = lazify(function()
				return require(script.App.InputButton.CheckboxList)
			end),
			Checkbox = lazify(function()
				return require(script.App.InputButton.Checkbox)
			end),
			Toggle = lazify(function()
				return require(script.App.InputButton.Toggle)
			end),
		}),

		Container = strict({
			Enum = strict({
				ScrollBarType = require(script.App.Container.Enum.ScrollBarType),
			}),
			Carousel = strict({
				ResponsiveCarousel = require(script.App.Container.Carousel.ResponsiveCarousel),
				FreeFlowCarousel = lazify(function()
					return require(script.App.Container.Carousel.FreeFlowCarousel)
				end),
			}),
			Grid = strict({
				ResponsiveGrid = lazify(function()
					return require(script.App.Container.Grid.ResponsiveGrid)
				end),
			}),
			VerticalScrollView = lazify(function()
				return require(script.App.Container.VerticalScrollView)
			end),
			VerticalScrollViewWithMargin = require(script.App.Container.VerticalScrollViewWithMargin),
			getPageMargin = require(script.App.Container.getPageMargin),
			LoadingStateContainer = lazify(function()
				return require(script.App.Container.LoadingStateContainer)
			end),
			LoadingStatePage = lazify(function()
				return require(script.App.Container.LoadingStatePage)
			end),
			HorizontalPageMargin = lazify(function()
				return require(script.App.Container.HorizontalPageMargin)
			end),
		}),

		Slider = strict({
			ContextualSlider = lazify(function()
				return require(script.App.Slider.ContextualSlider)
			end),
			SystemSlider = lazify(function()
				return require(script.App.Slider.SystemSlider)
			end),
			TwoKnobSystemSlider = lazify(function()
				return require(script.App.Slider.TwoKnobSystemSlider)
			end),
			TwoKnobContextualSlider = lazify(function()
				return require(script.App.Slider.TwoKnobContextualSlider)
			end),
		}),

		Emoji = strict({
			Emoji = lazify(function()
				return require(script.Core.Emoji.Emoji)
			end),
			Enum = strict({
				Emoji = require(script.Core.Emoji.Enum.Emoji),
			}),
		}),

		Grid = strict({
			GridView = lazify(function()
				return require(script.App.Grid.GridView)
			end),
			GridMetrics = require(script.App.Grid.GridMetrics),
			DefaultMetricsGridView = lazify(function()
				return require(script.App.Grid.DefaultMetricsGridView)
			end),
		}),

		Tile = strict({
			MenuTile = lazify(function()
				return require(script.App.Tile.MenuTile.MenuTile)
			end),
			PlayerTile = lazify(function()
				return require(script.App.Tile.PlayerTile.PlayerTile)
			end),
			ExperienceTileV3 = lazify(function()
				return require(script.App.Tile.SplitTile.ExperienceTile.ExperienceTileV3)
			end),
			AspectRatioModeEnum = require(script.App.Tile.SplitTile.ExperienceTile.Enum.AspectRatioMode),
			getExperienceTileHeight = require(script.App.Tile.SplitTile.ExperienceTile.getExperienceTileHeight),
			getExperienceTileRelativeHeight = require(
				script.App.Tile.SplitTile.ExperienceTile.getExperienceTileRelativeHeight
			),
			ExperienceActionRow = lazify(function()
				return require(script.App.Tile.SplitTile.ExperienceTile.ExperienceActionRow)
			end),
			ActionTile = lazify(function()
				return require(script.App.Tile.SplitTile.ActionTile.ActionTile)
			end),
			VerticalTile = lazify(function()
				return require(script.App.Tile.SplitTile.VerticalTile.VerticalTile)
			end),
			VerticalTileThumbnail = lazify(function()
				return require(script.App.Tile.SplitTile.VerticalTile.VerticalTileThumbnail)
			end),
			ExperienceTileMetadata = strict({
				SocialProofFooter = lazify(function()
					return require(script.App.Tile.ExperienceTileMetadata.SocialProofFooter)
				end),
				CoPlayFooter = lazify(function()
					return require(script.App.Tile.ExperienceTileMetadata.CoPlayFooter)
				end),
				TextFooter = lazify(function()
					return require(script.App.Tile.ExperienceTileMetadata.TextFooter)
				end),
			}),
		}),

		Dialog = strict({
			Modal = strict({
				FullPageModal = lazify(function()
					return require(script.App.Dialog.Modal.FullPageModal)
				end),
				getPartialPageModalMiddleContentWidth = require(
					script.App.Dialog.Modal.getPartialPageModalMiddleContentWidth
				),
				PartialPageModal = lazify(function()
					return require(script.App.Dialog.Modal.PartialPageModal)
				end),
				EducationalModal = lazify(function()
					return require(script.App.Dialog.Modal.EducationalModal)
				end),
				ModalWindow = lazify(function()
					return require(script.App.Dialog.Modal.ModalWindow)
				end),
			}),
			Alert = strict({
				InformativeAlert = lazify(function()
					return require(script.App.Dialog.Alert.InformativeAlert)
				end),
				InteractiveAlert = lazify(function()
					return require(script.App.Dialog.Alert.InteractiveAlert)
				end),
				LoadingAlert = lazify(function()
					return require(script.App.Dialog.Alert.LoadingAlert)
				end),
			}),
			Enum = strict({
				AlertType = require(script.App.Dialog.Alert.Enum.AlertType),
				CloseButtonIcon = require(script.App.Dialog.Modal.Enum.CloseButtonIcon),
				TooltipOrientation = require(script.App.Dialog.Tooltip.Enum.TooltipOrientation),
			}),
			Toast = lazify(function()
				return require(script.App.Dialog.Toast.Toast)
			end),
			Tooltip = lazify(function()
				return require(script.App.Dialog.Tooltip.Tooltip)
			end),
			TooltipV2 = require(script.App.Dialog.TooltipV2.Controllers),
			TooltipCallout = lazify(function()
				return require(script.App.Dialog.TooltipV2.TooltipCallout)
			end),
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
				DarkTheme = require(script.App.Style.Themes.DarkTheme),
				LightTheme = require(script.App.Style.Themes.LightTheme),
			},
			Tokens = require(script.App.Style.Tokens),
		}),

		Indicator = strict({
			Badge = lazify(function()
				return require(script.App.Indicator.Badge)
			end),
			EmptyState = lazify(function()
				return require(script.App.Indicator.EmptyState)
			end),
			Enum = strict({
				BadgeStates = require(script.App.Indicator.Enum.BadgeStates),
				BadgeVariant = require(script.App.Indicator.Enum.BadgeVariant),
				VoteStates = require(script.App.Indicator.Enum.VoteStates),
			}),
			PlayerContext = require(script.App.Indicator.PlayerContext),
			PlayerCount = lazify(function()
				return require(script.App.Indicator.PlayerCount)
			end),
			RateCount = lazify(function()
				return require(script.App.Indicator.RateCount)
			end),
			StatWidget = lazify(function()
				return require(script.App.Indicator.StatWidget)
			end),
			StatGroup = lazify(function()
				return require(script.App.Indicator.StatGroup)
			end),
			PlayerName = lazify(function()
				return require(script.App.Indicator.PlayerName)
			end),
		}),

		Menu = strict({
			BaseMenu = lazify(function()
				return require(script.App.Menu.BaseMenu)
			end),
			ContextualMenu = lazify(function()
				return require(script.App.Menu.ContextualMenu)
			end),

			MenuDirection = require(script.App.Menu.MenuDirection),

			DropdownMenu = lazify(function()
				return require(script.App.Menu.DropdownMenu)
			end),

			KeyLabel = lazify(function()
				return require(script.App.Menu.KeyLabel.KeyLabel)
			end),
			KeyLabelUtilities = require(script.App.Menu.KeyLabel.Utilities),
		}),

		Control = strict({
			SegmentedControl = lazify(function()
				return require(script.App.Control.SegmentedControl)
			end),
			Pill = lazify(function()
				return require(script.App.Control.Pill.Pill)
			end),
			Pillv2 = lazify(function()
				return require(script.App.Control.Pill.Pillv2)
			end),
			Slot = strict({
				SlotTray = lazify(function()
					return require(script.App.Control.Slot.SlotTray)
				end),
			}),
			PillGroup = lazify(function()
				return require(script.App.Control.Pill.PillGroup)
			end),
			ScrollingListWithArrowsAndGradient = require(
				script.App.Control.HorizontalNav.ScrollingListWithArrowsAndGradient
			),
		}),

		Navigation = strict({
			Enum = strict({
				Placement = require(script.App.Navigation.Enum.Placement),
				NavigationBarAlignment = require(script.App.Navigation.Enum.NavigationBarAlignment),
				NavigationRailAlignment = require(script.App.Navigation.Enum.NavigationRailAlignment),
				NavigationTabLayout = require(script.App.Navigation.Enum.NavigationTabLayout),
			}),
			SystemBar = lazify(function()
				return require(script.App.Navigation.SystemBar)
			end),
			NavigationBar = lazify(function()
				return require(script.App.Navigation.NavigationBar)
			end),
			NavigationRail = lazify(function()
				return require(script.App.Navigation.NavigationRail)
			end),
			NavigationRailV2 = lazify(function()
				return require(script.App.Navigation.NavigationRailV2)
			end),
			NavigationTab = require(script.App.Navigation.NavigationTab),
			PrimaryNavBar = strict({
				ContextBar = lazify(function()
					return require(script.App.Navigation.PrimaryNavBar.ContextBar)
				end),
				IconTab = lazify(function()
					return require(script.App.Navigation.PrimaryNavBar.IconTab)
				end),
				IconTabGroup = lazify(function()
					return require(script.App.Navigation.PrimaryNavBar.IconTabGroup)
				end),
				Types = lazify(function()
					return require(script.App.Navigation.PrimaryNavBar.Types)
				end),
			}),
			ShortcutBar = lazify(function()
				return require(script.App.Navigation.ShortcutBar.ShortcutBar)
			end),
			Shortcut = lazify(function()
				return require(script.App.Navigation.ShortcutBar.Shortcut)
			end),
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

		-- remove when cleaning up moveDetailsPageToLuaApps as true
		Template = strict({
			DetailsPage = {
				Enum = {
					ContentPosition = require(script.App.Template.DetailsPage.Enum.ContentPosition),
				},
				DetailsPageTemplate = lazify(function()
					return require(script.App.Template.DetailsPage.DetailsPageTemplate)
				end),
				DetailsPageSelector = lazify(function()
					return require(script.App.Template.DetailsPage.DetailsPageSelector)
				end),
			},
		}),

		Table = strict({
			ListTable = lazify(function()
				return require(script.App.Table.ListTable)
			end),
			ScrollingListTable = lazify(function()
				return require(script.App.Table.ScrollingListTable)
			end),
			Cell = lazify(function()
				return require(script.App.Table.Cell)
			end),
			CellHeadDetail = lazify(function()
				return require(script.App.Table.CellHeadDetail)
			end),
			CellTailDescription = lazify(function()
				return require(script.App.Table.CellTailDescription)
			end),
		}),

		Input = strict({
			TextField = lazify(function()
				return require(script.App.Input.TextField)
			end),
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
			validateTheme = require(script.App.Style.Validator.validateTheme),
			validateColorInfo = require(script.Core.Style.Validator.validateColorInfo),
			validateColorToken = require(script.Core.Style.Validator.validateColorToken),
		},
		-- Used for updating the style in consumer who would have previously
		-- used `_context` to access the style object
		Consumer = lazify(function()
			return require(script.Core.Style.StyleConsumer)
		end),
		-- Used for useContext hook
		Context = require(script.Core.Style.StyleContext),
	}

	UIBlox.AccordionView = lazify(function()
		return require(script.App.Accordion.AccordionView)
	end)

	UIBlox.Tile = {
		SaveTile = lazify(function()
			return require(script.App.Tile.SaveTile.SaveTile)
		end),
		ItemTile = lazify(function()
			return require(script.App.Tile.ItemTile.ItemTile)
		end),
		ItemTileEnums = require(script.App.Tile.Enum.ItemTileEnums),
	}

	UIBlox.Utility = {
		-- Keeping for backwards compatibility - consumers should use ReactUtils directly.
		ExternalEventConnection = ReactUtils.EventConnection,
		SpringAnimatedItem = require(script.Utility.SpringAnimatedItem),
		OpenTypeSupport = require(script.Utility.OpenTypeSupport),
	}

	-- DEPRECATED SECTION

	-- DEPRECATED: This is kept for compatibility. This should not be used because it is an old design.
	-- Use ContextualMenu instead
	UIBlox.ModalBottomSheet = lazify(function()
		return require(script.ModalBottomSheet.ModalBottomSheet)
	end)

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
