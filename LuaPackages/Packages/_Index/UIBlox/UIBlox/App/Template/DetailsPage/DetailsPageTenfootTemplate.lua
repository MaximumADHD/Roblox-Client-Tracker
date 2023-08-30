local DetailsPage = script.Parent
local Template = DetailsPage.Parent
local App = Template.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Cryo = require(Packages.Cryo)
local VirtualizedListModule = require(Packages.VirtualizedList)
local AnimatedFlatList = VirtualizedListModule.AnimatedFlatList
type AnimatedFlatListProps = VirtualizedListModule.AnimatedFlatListProps<any>
local DetailsPageHeader = require(DetailsPage.DetailsPageHeader)
local getPlatformConfig = require(DetailsPage.getPlatformConfig)
local useDetailsPageRenderItems = require(DetailsPage.Hooks.useDetailsPageRenderItems)
local useAnimateFullscreen = require(DetailsPage.Hooks.useAnimateFullscreen)
local DetailsPageRenderItem = require(DetailsPage.DetailsPageRenderItem)

local UIBloxConfig = require(Packages.UIBlox.UIBloxConfig)
local EnableActionBarTokens = UIBloxConfig.enableActionBarTokens

local Overlay = require(App.Dialog.Overlay.Overlay)
local LoadableImage = require(App.Loading.LoadableImage)

local Constants = require(App.Style.Constants)
type DeviceType = Constants.DeviceType

local ReactOtter = require(Packages.ReactOtter)
type SpringOptions = ReactOtter.SpringOptions

local DetailsPageTypes = require(DetailsPage.Types)
type ComponentList = DetailsPageTypes.ComponentList

type DetailsPageTenfootTokens = {
	animationConfig: SpringOptions,
	itemPadding: number,
	safeAreaSize: Vector2,
	trailingWhitespace: number,
	thumbnailShadowHeight: number?,
	thumbnailMargin: number?,
	headerGradientHeight: number?,
	headerBottomMargin: number?,
	actionBarWidth: number?,
	actionBarHeight: number?,
}

local React = require(Packages.React)

export type Props = {
	-- URL for the thumbnail
	thumbnailImageUrl: string?,

	-- The height of the thumbnail image
	thumbnailHeight: number?,

	-- Aspect ratio of the thumbnail
	thumbnailAspectRatio: Vector2?,

	-- Title text of the details page. It can be turned off if nil is passed through.
	titleText: string?,

	-- Sub title text of the details page. It can be turned off if nil is passed through.
	subTitleText: string?,

	-- A custom Roact component to be rendered in the header.
	renderInfoContent: () -> React.React_Node,

	-- 	Props for the embedded action bar component.
	-- See [ActionBar](../Components/Button/ActionBar.md) for required and optional props.
	actionBarProps: { button: any, icons: { any }, enableButtonAtStart: boolean? },
	--[[
	The table of props for the content of the details page.

	* `key: string`
	Name of the component.

		* `portraitLayoutOrder: integer`
		The layout of the component in single panel portrait mode.

		* `landscapePosition: enum`
		Type: App.Template.DetailsPage.Enum.ContentPosition
		The position of the component in dual panel landscape mode.

		* `landscapeLayoutOrder: integer`
		The layout of the component in dual panel landscape mode.

		* `componentRender: callback`
		render function for the component.
	]]
	componentList: ComponentList,

	-- The side margin of the body components.
	sideMargin: number?,

	-- Template props
	startingOffsetPosition: number?,

	-- The height of the header bar.
	headerBarBackgroundHeight: number?,

	-- Navigation action for closing
	onClose: any,

	-- Enable fullscreen mode.
	isFullscreen: boolean?,

	-- A custom Roact component to be rendered when in fullscreen mode.
	renderFullscreenContent: () -> React.React_Node,

	-- The device this is running on
	deviceType: DeviceType,

	--deprecated Prop
	isMobile: boolean?,

	-- Design tokens
	tokens: DetailsPageTenfootTokens?,

	-- Not used by 10ft UI, accepted for compatibility
	dualPanelBreakpoint: number?,

	-- Not used by 10ft UI, accepted for compatibility
	bannerPlaceholderGradient: any,

	-- Not used by 10ft UI, accepted for compatibility
	bannerImageUrl: string?,

	-- Not used by 10ft UI, accepted for compatibility
	bodyClipsDescendants: boolean?,
}

local SAFE_AREA = Vector2.new(96, 144)
local ITEM_PADDING = 36
local TRAILING_WHITESPACE = 3000
local SPRING_CONFIG = {
	dampingRatio = 1,
	frequency = 3,
} :: SpringOptions

local defaultTokens = {
	animationConfig = SPRING_CONFIG,
	itemPadding = ITEM_PADDING,
	safeAreaSize = SAFE_AREA,
	trailingWhitespace = TRAILING_WHITESPACE,
}

local function DetailsPageTenfootTemplate(props: Props)
	-- Configure style props
	local tokens: DetailsPageTenfootTokens = defaultTokens
	if props.tokens then
		tokens = Cryo.Dictionary.join(tokens, props.tokens)
	end

	-- Item Focus Animation
	local showGradient, setShowGradient = React.useState(true)

	-- Size Config
	local deviceConfig = React.useMemo(function()
		return getPlatformConfig(props.deviceType)
	end, { props.deviceType })

	local containerRef = React.useRef(nil)
	local containerSize, setContainerSize = React.useState(Vector2.new(0, 0))
	local onContainerSizeChange = React.useCallback(function(rbx: TextButton)
		setContainerSize(rbx.AbsoluteSize)
	end, {})
	React.useEffect(function()
		if containerRef.current then
			setContainerSize(containerRef.current.AbsoluteSize)
		end
	end, {})

	local thumbnailHeight = if props.thumbnailHeight then props.thumbnailHeight else deviceConfig.thumbnailHeight
	local headerBarBackgroundHeight = if props.headerBarBackgroundHeight ~= nil
		then props.headerBarBackgroundHeight
		else deviceConfig.headerBarBackgroundHeight
	local sideMargin = if props.sideMargin then props.sideMargin else deviceConfig.sideMargin

	-- Fullscreen logic
	local isFullscreen: boolean = if props.isFullscreen == nil then false else props.isFullscreen
	local renderFullscreenContent = props.renderFullscreenContent
	local showFullscreen, fullscreenTransparency =
		useAnimateFullscreen(isFullscreen, renderFullscreenContent, tokens.animationConfig)

	-- Configure Render Items
	local headerElement = React.useMemo(function()
		return React.createElement(DetailsPageHeader, {
			thumbnailImageUrl = props.thumbnailImageUrl,
			thumbnailAspectRatio = props.thumbnailAspectRatio,
			thumbnailHeight = thumbnailHeight,
			titleText = props.titleText,
			subTitleText = props.subTitleText,
			renderInfoContent = props.renderInfoContent,
			actionBarProps = props.actionBarProps,
			sideMargin = sideMargin,
			headerBarBackgroundHeight = headerBarBackgroundHeight,
			deviceType = props.deviceType,
			thumbnailShadowHeight = tokens.thumbnailShadowHeight,
			gradientHeight = tokens.headerGradientHeight,
			actionBarHeight = if EnableActionBarTokens then tokens.actionBarHeight else nil,
			actionBarWidth = if EnableActionBarTokens then tokens.actionBarWidth else nil,
			itemPadding = tokens.thumbnailMargin,
			bottomMargin = tokens.headerBottomMargin,
		})
	end, {
		props.thumbnailImageUrl,
		props.thumbnailAspectRatio,
		thumbnailHeight,
		props.titleText,
		props.subTitleText,
		props.renderInfoContent,
		props.actionBarProps,
		sideMargin,
		headerBarBackgroundHeight,
		props.deviceType,
		tokens.thumbnailShadowHeight,
		tokens.headerGradientHeight,
		tokens.thumbnailMargin,
		tokens.headerBottomMargin,
	} :: { any })

	-- FlatList props
	local detailsPageItems =
		useDetailsPageRenderItems(props.componentList, headerElement, containerSize, tokens.safeAreaSize)

	local renderItem = React.useCallback(function(ref)
		return React.createElement(DetailsPageRenderItem, {
			item = ref.item,
			itemPadding = tokens.itemPadding,
			safeArea = tokens.safeAreaSize,
		})
	end, { tokens.itemPadding, tokens.safeAreaSize } :: { any })

	local itemSeparatorComponent = React.useCallback(function()
		return React.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, tokens.itemPadding),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		})
	end, { tokens.itemPadding })

	local onSelectedIndexChanged = React.useCallback(function(index)
		local item = detailsPageItems[index]
		if item.showCornerGradient == false then
			setShowGradient(false)
		else
			setShowGradient(true)
		end
	end, { detailsPageItems })

	-- Render List
	return React.createElement("Frame", {
		[React.Change.AbsoluteSize] = onContainerSizeChange,
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		ref = containerRef,
	}, {
		BackgroundImage = React.createElement("Frame", {
			ZIndex = 1,
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
		}, {
			BackgroundImage = React.createElement(LoadableImage, {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				Size = UDim2.new(1, 0, 1, 0),
				Image = props.bannerImageUrl,
				ScaleType = Enum.ScaleType.Crop,
			}),
		}),
		Overlay = React.createElement(Overlay, {
			ZIndex = 2,
			showGradient = showGradient,
			gradientDirection = "topRight",
		}),
		Content = React.createElement(AnimatedFlatList, {
			onSelectedIndexChanged = onSelectedIndexChanged,
			animated = true,
			initialNumToRender = #detailsPageItems,
			data = detailsPageItems,
			renderItem = renderItem,
			ItemSeparatorComponent = itemSeparatorComponent,
			ListFooterComponent = React.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, tokens.trailingWhitespace),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
			}),
			ListHeaderComponent = React.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, tokens.safeAreaSize.Y),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
			}),
			viewOffset = tokens.safeAreaSize.Y,
			contentContainerStyle = {
				BackgroundTransparency = 1,
			},
			style = {
				BackgroundTransparency = 1,
				ScrollBarThickness = 0,
				ScrollingEnabled = false,
				Selectable = false,
				VerticalScrollBarInset = Enum.ScrollBarInset.None,
				ZIndex = 3,
			},
			animationConfig = tokens.animationConfig,
			UNSTABLE_forceSiblingLayoutUpdate = true,
			overrideAutomaticCanvasSize = true,
		} :: AnimatedFlatListProps),
		Fullscreen = React.createElement("CanvasGroup", {
			Size = UDim2.fromScale(1, 1),
			GroupTransparency = fullscreenTransparency,
			BorderSizePixel = 0,
			ZIndex = 4,
		}, {
			FullscreenContent = if showFullscreen then renderFullscreenContent() else nil,
		}),
	})
end

return DetailsPageTenfootTemplate
