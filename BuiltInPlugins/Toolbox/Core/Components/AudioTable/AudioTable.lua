--!strict
local Plugin = script:FindFirstAncestor("Toolbox")

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)
local Dash = Framework.Dash

local Util = Plugin.Core.Util
local LayoutOrderIterator = require(Util.LayoutOrderIterator)
local Constants = require(Util.Constants)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local AssetInfo = require(Plugin.Core.Models.AssetInfo)
local Category = require(Plugin.Core.Types.Category)

local AudioRow = require(Plugin.Core.Components.AudioRow.AudioRow)

local AudioTable = Roact.PureComponent:extend("AudioTable")

type _ExternalAudioTableProps = {
	AudioType: string?,
	Assets: { AssetInfo.AssetInfo },
	TryInsert: ((assetData: AssetInfo.AssetInfo, assetWasDragged: boolean, insertionMethod: string) -> nil),
	CanInsertAsset: () -> boolean,
	LayoutOrder: number?,
}

type AudioTableProps = _ExternalAudioTableProps & {
	Localization: any,
	Stylizer: any,
}

type AudioTableState = {
	expandedAssetId: number?,
}

function AudioTable:init(props: AudioTableProps)
	self.setExpandedAssetId = function(assetId: number)
		self:setState(function(prevState: AudioTableState)
			local expandedAssetId = if assetId == prevState.expandedAssetId then Roact.None else assetId
			return { expandedAssetId = expandedAssetId }
		end)
	end
end

function AudioTable:render()
	local props: AudioTableProps = self.props
	local state: AudioTableState = self.state

	local localization = props.Localization
	local audioRowTheme = props.Stylizer.audioRow
	local assets = props.Assets
	local audioType = props.AudioType
	local layoutOrder = props.LayoutOrder

	local expandedAssetId = state.expandedAssetId

	local isSoundEffectType = audioType == Category.SOUND_EFFECTS.name
	local isMusicType = audioType == Category.MUSIC.name
	local isUncategorized = not isMusicType and not isSoundEffectType

	local rowsOrderIterator = LayoutOrderIterator.new()
	local audioRows = Dash.map(assets, function(assetInfo: AssetInfo.AssetInfo)
		local insertAsset = function(assetWasDragged: boolean)
			self.props.TryInsert(assetInfo, assetWasDragged or false)
		end

		return Roact.createElement(AudioRow, {
			AssetInfo = assetInfo,
			LayoutOrder = rowsOrderIterator:getNextOrder() + 1,
			IsExpanded = assetInfo.Asset and assetInfo.Asset.Id == state.expandedAssetId,
			OnExpanded = self.setExpandedAssetId,
			InsertAsset = insertAsset,
			CanInsertAsset = self.props.CanInsertAsset,
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

AudioTable = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(AudioTable)

function TypedAudioTable(props: _ExternalAudioTableProps, children: any?)
	return Roact.createElement(AudioTable, props, children)
end

return { Component = AudioTable, Generator = TypedAudioTable }
