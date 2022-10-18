--!strict
local Plugin = script:FindFirstAncestor("Toolbox")

local FFlagToolboxAudioAssetPreview = game:GetFastFlag("ToolboxAudioAssetPreview")

local FFlagToolboxAudioUIPolish = game:GetFastFlag("ToolboxAudioUIPolish")

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local Framework = require(Packages.Framework)
local GetPageInfoAnalyticsContextInfo = require(Plugin.Core.Thunks.GetPageInfoAnalyticsContextInfo)
local Dash = Framework.Dash

local Util = Plugin.Core.Util
local LayoutOrderIterator = require(Util.LayoutOrderIterator)
local Constants = require(Util.Constants)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local AssetLogicWrapper = require(Plugin.Core.Components.AssetLogicWrapper)
local AssetInfo = require(Plugin.Core.Models.AssetInfo)
local Category = require(Plugin.Core.Types.Category)

local TextLabel = Framework.UI.Decoration.TextLabel
local Pane = Framework.UI.Pane
local AudioRow = require(Plugin.Core.Components.AudioRow.AudioRow)

local GetAudioTableSizes
if FFlagToolboxAudioUIPolish then
	GetAudioTableSizes = require(Plugin.Core.Components.AudioTable.GetAudioTableSizes)
end

local AudioTable = Roact.PureComponent:extend("AudioTable")

type _ExternalAudioTableProps = {
	AudioType: string?,
	Assets: { AssetInfo.AssetInfo },
	TryInsert: ((assetData: AssetInfo.AssetInfo, assetWasDragged: boolean, insertionMethod: string?) -> nil),
	CanInsertAsset: () -> boolean,
	LayoutOrder: number?,
	LogImpression: (asset: AssetInfo.AssetInfo) -> ()?,
	-- Remove with removal of FFlagToolboxAudioAssetPreview
	tryOpenAssetConfig: AssetLogicWrapper.TryOpenAssetConfigFn?,
	-- Make required with removal of  FFlagToolboxAudioAssetPreview
	TryOpenAssetConfig: AssetLogicWrapper.TryOpenAssetConfigFn?,
	-- Make required with removal of  FFlagToolboxAudioAssetPreview
	OnAssetPreviewButtonClicked: AssetLogicWrapper.OnAssetPreviewButtonClickedFn?,
}

type AudioTableProps = _ExternalAudioTableProps & {
	Localization: any,
	Stylizer: any,
}

type AudioTableState = {
	expandedAssetId: number?,
	width: number,
}

function AudioTable:init(props: AudioTableProps)
	self.ref = Roact.createRef()
	self.state = { width = 0 }
	self.setExpandedAssetId = function(assetId: number)
		self:setState(function(prevState: AudioTableState)
			local expandedAssetId = if assetId == prevState.expandedAssetId then Roact.None else assetId
			return { expandedAssetId = expandedAssetId }
		end)
	end

	if FFlagToolboxAudioUIPolish then
		self.OnAbsoluteSizeChanged = function()
			if self.ref.current then
				self:setState({ width = self.ref.current.AbsoluteSize.X })
			end
		end

		self.createHeaderElement =
			function(text: string, column: number, layoutOrder: number, textXAlignment: Enum.TextXAlignment?)
				local width = self.state.width
				local columnSizes = GetAudioTableSizes(self.props.AudioType, width)
				local audioRowTheme = props.Stylizer.audioRow
				local size = columnSizes[column]

				return if size
					then Roact.createElement(TextLabel, {
						Font = Constants.FONT,
						LayoutOrder = layoutOrder,
						Size = size,
						Text = text,
						TextColor3 = audioRowTheme.headerTextColor,
						TextSize = Constants.FONT_SIZE_SMALL,
						TextXAlignment = textXAlignment or Enum.TextXAlignment.Left,
					}, {
						UIPadding = layoutOrder ~= 1 and Roact.createElement("UIPadding", {
							PaddingLeft = UDim.new(0, Constants.AUDIO_ROW.LEFT_RIGHT_PADDING),
						}),
					})
					else nil
			end
	end
end

if FFlagToolboxAudioUIPolish then
	function AudioTable:didMount()
		self.OnAbsoluteSizeChanged()
	end

	function AudioTable:render()
		local props: AudioTableProps = self.props
		local state: AudioTableState = self.state

		local localization = props.Localization
		local assets = props.Assets
		local audioType = props.AudioType
		local layoutOrder = props.LayoutOrder
		local logImpression = props.LogImpression
		local canInsertAsset = props.CanInsertAsset
		local tryOpenAssetConfig = props.tryOpenAssetConfig

		local expandedAssetId = state.expandedAssetId
		local width = state.width

		local isSoundEffectType = audioType == Category.SOUND_EFFECTS.name
		local isMusicType = audioType == Category.MUSIC.name

		local rowsOrderIterator = LayoutOrderIterator.new()
		local audioRows = Dash.map(assets, function(assetInfo: AssetInfo.AssetInfo)
			local insertAsset = function(assetWasDragged: boolean)
				props.TryInsert(assetInfo, assetWasDragged or false)
			end

			return AudioRow.Generator({
				AssetInfo = assetInfo,
				CanInsertAsset = canInsertAsset,
				InsertAsset = insertAsset,
				IsExpanded = assetInfo.Asset and assetInfo.Asset.Id == expandedAssetId,
				LayoutOrder = rowsOrderIterator:getNextOrder() + 1,
				LogImpression = logImpression,
				OnExpanded = self.setExpandedAssetId,
				tryOpenAssetConfig = if FFlagToolboxAudioAssetPreview then nil else props.tryOpenAssetConfig,
				TryOpenAssetConfig = if FFlagToolboxAudioAssetPreview then props.TryOpenAssetConfig else nil,
				OnAssetPreviewButtonClicked = if FFlagToolboxAudioAssetPreview
					then props.OnAssetPreviewButtonClicked
					else nil,
				width = width,
			})
		end)

		local orderIterator = LayoutOrderIterator.new()

		return Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
			Size = UDim2.new(1, 0, 0, 0),
			Layout = Enum.FillDirection.Vertical,
			[Roact.Ref] = self.ref,
			[Roact.Change.AbsoluteSize] = self.OnAbsoluteSizeChanged,
		}, {
			HeaderRow = Roact.createElement(Pane, {
				BackgroundTransparency = 1,
				LayoutOrder = 1,
				Size = UDim2.new(1, 0, 0, 20),
				Layout = Enum.FillDirection.Horizontal,
				Padding = {
					Right = Constants.AUDIO_ROW.BORDER_SIZE,
					Left = Constants.AUDIO_ROW.BORDER_SIZE,
					Top = Constants.AUDIO_ROW.BORDER_SIZE,
					Bottom = Constants.AUDIO_ROW.BORDER_SIZE,
				},
			}, {
				Type = self.createHeaderElement(
					localization:getText("AudioView", "Type"):upper(),
					Constants.AUDIO_ROW.COLUMNS.ICON,
					orderIterator:getNextOrder()
				),
				Name = self.createHeaderElement(
					localization:getText("AudioView", "Name"):upper(),
					Constants.AUDIO_ROW.COLUMNS.NAME,
					orderIterator:getNextOrder()
				),
				Category = isSoundEffectType and self.createHeaderElement(
					localization:getText("AudioView", "Category"):upper(),
					Constants.AUDIO_ROW.COLUMNS.CATEGORY,
					orderIterator:getNextOrder()
				),
				Artist = isMusicType and self.createHeaderElement(
					localization:getText("AudioView", "Artist"):upper(),
					Constants.AUDIO_ROW.COLUMNS.ARTIST,
					orderIterator:getNextOrder()
				),
				Genre = isMusicType and self.createHeaderElement(
					localization:getText("General", "Genre"):upper(),
					Constants.AUDIO_ROW.COLUMNS.GENRE,
					orderIterator:getNextOrder()
				),
				Length = self.createHeaderElement(
					localization:getText("AudioView", "Length"):upper(),
					Constants.AUDIO_ROW.COLUMNS.DURATION,
					orderIterator:getNextOrder(),
					Enum.TextXAlignment.Right
				),
			}),
			RowsWrapper = Roact.createFragment(audioRows),
		})
	end
else
	function AudioTable:render()
		local props: AudioTableProps = self.props
		local state: AudioTableState = self.state

		local localization = props.Localization
		local audioRowTheme = props.Stylizer.audioRow
		local assets = props.Assets
		local audioType = props.AudioType
		local layoutOrder = props.LayoutOrder
		local logImpression = props.LogImpression

		local expandedAssetId = state.expandedAssetId

		local isSoundEffectType = audioType == Category.SOUND_EFFECTS.name
		local isMusicType = audioType == Category.MUSIC.name
		local isUncategorized = not isMusicType and not isSoundEffectType

		local rowsOrderIterator = LayoutOrderIterator.new()
		local audioRows = Dash.map(assets, function(assetInfo: AssetInfo.AssetInfo)
			local insertAsset = function(assetWasDragged: boolean)
				props.TryInsert(assetInfo, assetWasDragged or false)
			end

			return AudioRow.Generator({
				AssetInfo = assetInfo,
				LayoutOrder = rowsOrderIterator:getNextOrder() + 1,
				IsExpanded = assetInfo.Asset and assetInfo.Asset.Id == state.expandedAssetId,
				OnExpanded = self.setExpandedAssetId,
				InsertAsset = insertAsset,
				CanInsertAsset = props.CanInsertAsset,
				LogImpression = logImpression,
				tryOpenAssetConfig = props.tryOpenAssetConfig,
			})
		end)

		table.insert(
			audioRows,
			Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
			})
		)

		local calculateAudioColumnSize = function(column: number)
			return Constants.CalculateAudioColumnSize(props.AudioType, column)
		end

		local orderIterator = LayoutOrderIterator.new()
		local createHeaderElement = function(text: string, size: UDim2, textXAlignment: Enum.TextXAlignment?)
			local audioRowTheme = props.Stylizer.audioRow
			local layoutOrder = orderIterator:getNextOrder()
			return Roact.createElement("TextLabel", {
				Text = text,
				BackgroundTransparency = 1,
				LayoutOrder = layoutOrder,
				Size = size,
				TextColor3 = audioRowTheme.headerTextColor,
				TextXAlignment = textXAlignment or Enum.TextXAlignment.Left,
				Font = Constants.FONT,
				TextSize = Constants.FONT_SIZE_SMALL,
			}, {
				UIPadding = layoutOrder ~= 1 and Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, Constants.AUDIO_ROW.LEFT_RIGHT_PADDING),
				}),
			})
		end

		return Roact.createElement("Frame", {
			LayoutOrder = layoutOrder,
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
		}, {
			HeaderRow = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 20),
				LayoutOrder = 1,
				BackgroundTransparency = 1,
			}, {
				UIPadding = Roact.createElement("UIPadding", {
					PaddingRight = UDim.new(0, Constants.AUDIO_ROW.BORDER_SIZE),
					PaddingLeft = UDim.new(0, Constants.AUDIO_ROW.BORDER_SIZE),
					PaddingTop = UDim.new(0, Constants.AUDIO_ROW.BORDER_SIZE),
					PaddingBottom = UDim.new(0, Constants.AUDIO_ROW.BORDER_SIZE),
				}),
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				Type = createHeaderElement(
					localization:getText("AudioView", "Type"):upper(),
					calculateAudioColumnSize(Constants.AUDIO_ROW.COLUMNS.ICON)
				),
				Name = createHeaderElement(
					localization:getText("AudioView", "Name"):upper(),
					calculateAudioColumnSize(Constants.AUDIO_ROW.COLUMNS.NAME)
				),
				Category = isSoundEffectType and createHeaderElement(
					localization:getText("AudioView", "Category"):upper(),
					calculateAudioColumnSize(Constants.AUDIO_ROW.COLUMNS.CATEGORY)
				),
				Artist = isMusicType and createHeaderElement(
					localization:getText("AudioView", "Artist"):upper(),
					calculateAudioColumnSize(Constants.AUDIO_ROW.COLUMNS.ARTIST)
				),
				Genre = isMusicType and createHeaderElement(
					localization:getText("General", "Genre"):upper(),
					calculateAudioColumnSize(Constants.AUDIO_ROW.COLUMNS.GENRE)
				),
				Length = createHeaderElement(
					localization:getText("AudioView", "Length"):upper(),
					calculateAudioColumnSize(Constants.AUDIO_ROW.COLUMNS.DURATION),
					Enum.TextXAlignment.Right
				),
			}),
			RowsWrapper = Roact.createFragment(audioRows),
		})
	end
end

AudioTable = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(AudioTable)

function TypedAudioTable(props: _ExternalAudioTableProps, children: any?)
	return Roact.createElement(AudioTable, props, children)
end

return { Component = AudioTable, Generator = TypedAudioTable }
