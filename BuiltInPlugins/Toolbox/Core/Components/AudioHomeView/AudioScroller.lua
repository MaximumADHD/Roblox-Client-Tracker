--!strict
local Plugin = script:FindFirstAncestor("Toolbox")

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)
local Dash = Framework.Dash

local Util = Plugin.Core.Util
local LayoutOrderIterator = require(Util.LayoutOrderIterator)
local Constants = require(Util.Constants)
local AssetLogicWrapper = require(Plugin.Core.Components.AssetLogicWrapper)

local ResultsFetcher = require(Plugin.Core.Components.ResultsFetcher)
local Category = require(Plugin.Core.Types.Category)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local ContextGetter = require(Util.ContextGetter)
local AssetInfo = require(Plugin.Core.Models.AssetInfo)
local LoadingIndicator = Framework.UI.LoadingIndicator
local AudioTable = require(Plugin.Core.Components.AudioTable.AudioTable)
local StyledScrollingFrame = require(Plugin.Core.Components.StyledScrollingFrame)

local AudioScroller = Roact.PureComponent:extend("AudioScroller")

type _InteralAudioScrollerProps = {
	Localization: any,
	Stylizer: any,
}

type _ExternalAudioScrollerProps = {
	Assets: { AssetInfo.AssetInfo },
	Total: number?,
	Loading: boolean,
	TryInsert: ((assetData: any, assetWasDragged: boolean, insertionMethod: string?) -> any),
	CanInsertAsset: () -> boolean,
	LayoutOrder: number?,
	Position: number?,
	Size: UDim2?,
	RenderTopContent: nil | (() -> nil),
	AudioType: string?,
	FetchNextPage: ((pageSize: number) -> ())?,
	LogImpression: (asset: AssetInfo.AssetInfo) -> ()?,
	tryOpenAssetConfig: AssetLogicWrapper.TryOpenAssetConfigFn,
}
type AudioScrollerProps = _InteralAudioScrollerProps & _ExternalAudioScrollerProps

type AudioScrollerState = {
	initialLoading: boolean,
}

AudioScroller.defaultProps = {
	Size = UDim2.new(1, 0, 1, 0),
}

local INITIAL_PAGE_SIZE = 20

function AudioScroller:init(props: AudioScrollerProps)
	self.state = { initialLoading = props.Loading }
	self.scrollingFrameRef = Roact.createRef()

	self.calculateCanvasHeight = function(assetCount: number)
		local props: AudioScrollerProps = self.props

		local assetCount = #self.props.Assets
		local loadingIndicatorHeight = if self.props.Loading then 60 else 0
		local topContentHeight = if self.props.RenderTopContent then 30 else 0
		return Constants.AUDIO_ROW.ROW_HEIGHT * assetCount + loadingIndicatorHeight + topContentHeight
	end

	self.calculateRenderBounds = function(forceUpdate)
		self:setState(function(prevState) end)
	end

	self.checkForNextPage = function()
		local props: AudioScrollerProps = self.props

		local scrollingFrame = self.scrollingFrameRef.current
		if not scrollingFrame or props.Loading or (props.Total and props.Total == #props.Assets) then
			return
		end

		local canvasY = scrollingFrame.CanvasPosition.Y
		local windowHeight = scrollingFrame.AbsoluteWindowSize.Y
		local canvasHeight = scrollingFrame.CanvasSize.Y.Offset

		-- Where the bottom of the scrolling frame is relative to canvas size
		local bottom = canvasY + windowHeight
		local dist = canvasHeight - bottom

		if dist < Constants.DIST_FROM_BOTTOM_BEFORE_NEXT_PAGE and props.FetchNextPage then
			props.FetchNextPage(INITIAL_PAGE_SIZE)
		end
	end
end

function AudioScroller:didMount()
	self.checkForNextPage()
end

function AudioScroller:didUpdate(prevProps: AudioScrollerProps)
	local props = self.props
	self.checkForNextPage()

	if not props.Loading and prevProps.Loading then
		self:setState({ initialLoading = false })
	end
end

function AudioScroller:render()
	local props: AudioScrollerProps = self.props
	local state: AudioScrollerState = self.state

	local theme = props.Stylizer
	local tryInsert = props.TryInsert
	local canInsertAsset = props.CanInsertAsset
	local assets = props.Assets
	local loading = props.Loading
	local layoutOrder = props.LayoutOrder
	local position = props.Position
	local size = props.Size
	local audioType = props.AudioType
	local renderTopContent = props.RenderTopContent
	local logImpression = props.LogImpression
	local initialLoading = state.initialLoading
	local canvasHeight = self.calculateCanvasHeight()

	if initialLoading then
		return Roact.createElement("Frame", {
			BackgroundColor3 = theme.backgroundColor,
			BackgroundTransparency = 1,
			LayoutOrder = 1,
			Size = UDim2.new(1, 0, 1, 0),
		}, {
			LoadingIndicator = Roact.createElement(LoadingIndicator, {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
			}),
		})
	end

	local topContent
	if renderTopContent then
		topContent = renderTopContent()
	end

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = size,
		LayoutOrder = layoutOrder,
		Position = position,
		[Roact.Change.AbsoluteSize] = self.checkForNextPage,
	}, {
		Roact.createElement(StyledScrollingFrame, {
			CanvasSize = UDim2.new(1, 0, 0, canvasHeight),
			Size = UDim2.new(1, 0, 1, 0),
			onScroll = self.checkForNextPage,
			[Roact.Ref] = self.scrollingFrameRef,
			[Roact.Change.AbsoluteSize] = self.checkForNextPage,
		}, {
			UIPadding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, Constants.AUDIO_PADDING),
				PaddingRight = UDim.new(0, Constants.AUDIO_PADDING + Constants.SCROLLBAR_BACKGROUND_THICKNESS),
				PaddingTop = UDim.new(0, Constants.AUDIO_PADDING),
				PaddingBottom = UDim.new(0, Constants.AUDIO_PADDING),
			}),
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			TopContent = topContent,
			Table = AudioTable.Generator({
				AudioType = audioType,
				Assets = assets,
				TryInsert = tryInsert,
				CanInsertAsset = canInsertAsset,
				LayoutOrder = 2,
				LogImpression = logImpression,
				tryOpenAssetConfig = props.tryOpenAssetConfig,
			}),
			LoadingIndicator = loading and Roact.createElement("Frame", {
				BackgroundColor3 = theme.backgroundColor,
				BackgroundTransparency = 1,
				LayoutOrder = 3,
				Size = UDim2.new(0, 60, 1, 0),
			}, {
				LoadingIndicator = Roact.createElement(LoadingIndicator),
			}),
		}),
	})
end

AudioScroller = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(AudioScroller)

function TypedAudioScroller(props: _ExternalAudioScrollerProps, children: any?)
	return Roact.createElement(AudioScroller, props, children)
end

return { Component = AudioScroller, Generator = TypedAudioScroller }
