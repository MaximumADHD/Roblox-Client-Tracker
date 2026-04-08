local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Cryo = require(Packages.Cryo)
local Foundation = require(Packages.Foundation)
local MomentsCommon = require(Packages.MomentsCommon)
local React = require(Packages.React)

local Button = Foundation.Button
local ButtonVariant = Foundation.Enums.ButtonVariant
local Chip = Foundation.Chip
local InputSize = Foundation.Enums.InputSize
local Text = Foundation.Text
local View = Foundation.View

local Image = BuilderIcons.Icon.Image
local VideoCamera = BuilderIcons.Icon.VideoCamera

local CaptureItem = require(MomentsCreationFlow.Components.CaptureItem)
local ScrollingGridView = MomentsCommon.ScrollingGridView

local useCallback = React.useCallback
local useContext = React.useContext
local useDeviceInsets = MomentsCommon.Hooks.useDeviceInsets
local useTokens = Foundation.Hooks.useTokens

local CreationFlowContext = require(MomentsCreationFlow.Context.CreationFlowContext)

local Constants = require(MomentsCreationFlow.Constants)
local CreationFlowLocalization = require(MomentsCreationFlow.Enums.CreationFlowLocalization)
local EventNames = require(MomentsCreationFlow.Analytics.EventNames)

type MomentItem = MomentsCommon.MomentItem

local ITEM_PADDING = 2
local ASPECT_RATIO = 1
local MAX_ITEMS_PER_ROW = 5
local MIN_ITEM_WIDTH = 100
local MIN_ITEMS_PER_PAGE = 6

type Props = {
	captures: { Capture },
	selectedCapture: Capture,
	layoutOrder: number,
	onCaptureSelected: (capture: Capture) -> (),
	onNextCallback: () -> (),
}

local PreviewView = function(props: Props): React.ReactElement?
	local insets = useDeviceInsets()
	local tokens = useTokens()
	local creationFlowContext = useContext(CreationFlowContext)
	local filterType, setFilterType = React.useState(nil :: Enum.CaptureType?)
	local hasLoggedEmptyState = React.useRef(false)

	local filteredCaptures = React.useMemo(function()
		if not filterType then
			return props.captures
		end

		return Cryo.List.filter(props.captures, function(capture)
			return capture.CaptureType == filterType
		end)
	end, { props.captures, filterType })

	React.useEffect(function()
		if #props.captures == 0 and hasLoggedEmptyState.current == false then
			hasLoggedEmptyState.current = true
			creationFlowContext.fireEvent(EventNames.EditingFlowGalleryNoCapturesAvailable)
		end
	end, { props.captures })

	local renderCapture = useCallback(function(capture: Capture, _index: number)
		return React.createElement(CaptureItem, {
			capture = capture,
			onActivated = props.onCaptureSelected,
			selected = props.selectedCapture == capture,
			zIndex = 1,
		})
	end, { props.selectedCapture, props.onCaptureSelected })

	local renderEmptyState = useCallback(function()
		return React.createElement(View, {
			tag = "shrink size-full-full",
		}, {
			EmptyState = React.createElement(Text, {
				tag = "anchor-top-center auto-xy content-action-emphasis padding-large position-top-center text-align-x-center text-align-y-center text-body-medium",
				Text = creationFlowContext.getLocalization(CreationFlowLocalization.GeneralEmptyStateText),
			}),
		})
	end, { creationFlowContext })

	local resetFilter = useCallback(function()
		setFilterType(nil)
	end, {})

	local filterToScreenshots = useCallback(function()
		setFilterType(Enum.CaptureType.Screenshot)
	end, {})

	local filterToVideos = useCallback(function()
		setFilterType(Enum.CaptureType.Video)
	end, {})

	local onShowMoreCallback = useCallback(function()
		creationFlowContext.fetchAdditionalCaptures()
	end, { creationFlowContext })

	return React.createElement(View, {
		LayoutOrder = props.layoutOrder,
		tag = "align-x-center auto-y align-y-bottom anchor-bottom-center gap-large position-bottom-center col shrink size-full-0",
	}, {
		Padding = React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, tokens.Padding.Large),
			PaddingBottom = UDim.new(0, math.max(insets.bottom, tokens.Padding.Large)),
		}),

		FilterButtons = React.createElement(View, {
			LayoutOrder = 1,
			tag = "auto-y anchor-top-center gap-small position-top-center row size-full-0",
		}, {
			Padding = React.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, math.max(insets.left, tokens.Padding.XLarge)),
				PaddingRight = UDim.new(0, math.max(insets.right, tokens.Padding.XLarge)),
			}),

			AllChip = React.createElement(Chip, {
				isChecked = filterType == nil,
				LayoutOrder = 1,
				onActivated = resetFilter,
				size = Foundation.Enums.ChipSize.Small,
				text = creationFlowContext.getLocalization(CreationFlowLocalization.GeneralAllChipLabel),
			}),

			PhotosChip = React.createElement(Chip, {
				isChecked = filterType == Enum.CaptureType.Screenshot,
				LayoutOrder = 2,
				leading = Image,
				onActivated = filterToScreenshots,
				size = Foundation.Enums.ChipSize.Small,
				text = creationFlowContext.getLocalization(CreationFlowLocalization.GeneralPhotosChipLabel),
			}),

			VideosChip = React.createElement(Chip, {
				isChecked = filterType == Enum.CaptureType.Video,
				LayoutOrder = 3,
				leading = VideoCamera,
				onActivated = filterToVideos,
				size = Foundation.Enums.ChipSize.Small,
				text = creationFlowContext.getLocalization(CreationFlowLocalization.GeneralVideosChipLabel),
			}),
		}),

		CaptureGrid = React.createElement(View, {
			LayoutOrder = 2,
			tag = "anchor-top-center gap-small position-top-center row shrink size-full-full",
		}, {
			Padding = React.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, insets.left),
				PaddingRight = UDim.new(0, insets.right),
			}),

			CaptureGrid = React.createElement(ScrollingGridView, {
				aspectRatio = ASPECT_RATIO,
				itemConfig = {
					padding = ITEM_PADDING,
					maxItemsPerRow = MAX_ITEMS_PER_ROW,
					minItemsPerPage = MIN_ITEMS_PER_PAGE,
					minItemWidth = MIN_ITEM_WIDTH,
				},
				items = filteredCaptures,
				layoutOrder = 1,
				onShowMoreCallback = onShowMoreCallback,
				padding = {
					bottom = UDim.new(0, tokens.Padding.Large),
				},
				renderEmptyState = renderEmptyState,
				renderItem = renderCapture,
				shouldShowShowMoreButton = not creationFlowContext.capturesPagesIsFinished(),
				showMoreButtonText = creationFlowContext.getLocalization(CreationFlowLocalization.GeneralCtaShowMore),
			}),
		}),

		ButtonContainer = React.createElement(View, {
			LayoutOrder = 3,
			tag = "align-x-center auto-y size-full-0",
		}, {
			Padding = React.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, math.max(insets.left, tokens.Padding.XLarge)),
				PaddingRight = UDim.new(0, math.max(insets.right, tokens.Padding.XLarge)),
			}),

			ButtonConstraint = React.createElement(View, {
				sizeConstraint = {
					MaxSize = Constants.BottomBarSizeConstraint,
				},
				tag = "auto-y size-full-0",
			}, {
				NextButton = React.createElement(Button, {
					fillBehavior = Foundation.Enums.FillBehavior.Fill,
					isDisabled = not props.selectedCapture,
					LayoutOrder = 1,
					onActivated = props.onNextCallback,
					size = InputSize.Medium,
					text = creationFlowContext.getLocalization(CreationFlowLocalization.PublishingCtaContinue),
					variant = ButtonVariant.Emphasis,
				}),
			}),
		}),
	})
end

return PreviewView
