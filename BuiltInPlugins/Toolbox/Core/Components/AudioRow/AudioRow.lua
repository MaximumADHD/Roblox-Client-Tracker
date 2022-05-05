--!strict
local Plugin = script:FindFirstAncestor("Toolbox")

local FFlagToolboxAssetGridRefactor6 = game:GetFastFlag("ToolboxAssetGridRefactor6")
local FFlagToolboxUsePageInfoInsteadOfAssetContext = game:GetFastFlag("ToolboxUsePageInfoInsteadOfAssetContext2")

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local Framework = require(Packages.Framework)

local Dash = Framework.Dash
local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local LayoutOrderIterator = require(Util.LayoutOrderIterator)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local AudioPlayer = require(Plugin.Core.Components.AudioPlayer.AudioPlayer)
local AudioRowMetadata = require(Plugin.Core.Components.AudioRow.AudioRowMetadata)
local AudioRowInsertButton = require(Plugin.Core.Components.AudioRow.AudioRowInsertButton)
local DraggableButton = require(Plugin.Core.Components.DraggableButton)
local NetworkInterface = require(Plugin.Core.Networking.NetworkInterface)
local TryCreateContextMenu = require(Plugin.Core.Thunks.TryCreateContextMenu)
local GetPageInfoAnalyticsContextInfo = require(Plugin.Core.Thunks.GetPageInfoAnalyticsContextInfo)
local AssetAnalyticsContextItem = require(Util.Analytics.AssetAnalyticsContextItem)

local Images = require(Plugin.Core.Util.Images)
local ContextHelper = require(Util.ContextHelper)

local withLocalization = ContextHelper.withLocalization

local AssetInfo = require(Plugin.Core.Models.AssetInfo)
local Category = require(Plugin.Core.Types.Category)

local AudioRow = Roact.PureComponent:extend("AudioRow")

type _InteralAudioRowProps = {
	Localization: any,
	Stylizer: any,
	Plugin: any,
	tryCreateContextMenu: () -> nil,
	getPageInfoAnalyticsContextInfo: () -> any,
	AssetAnalytics: any,
}

type AudioRowProps = _InteralAudioRowProps & {
	AssetInfo: AssetInfo.AssetInfo,
	LayoutOrder: number,
	IsExpanded: boolean,
	CanInsertAsset: () -> boolean,
	InsertAsset: (assetWasDragged: boolean) -> nil,
	OnExpanded: (assetId: number) -> nil,
}
type AudioRowState = {
	isHovered: boolean,
	isPlayButtonHovered: boolean,
	isPlaying: boolean,
}

local EMPTY_TEXT_PLACEHOLDER = "---"

function secondsToMinuteString(duration: number | string?)
	local totalSeconds = tonumber(duration) or 0
	local minutes = math.floor(totalSeconds / 60)
	local seconds = totalSeconds % 60

	return string.format("%d:%02d", minutes, seconds)
end

local DEFAULT_AUDIO_DETAILS = {
	Artist = EMPTY_TEXT_PLACEHOLDER,
	MusicAlbum = EMPTY_TEXT_PLACEHOLDER,
}

function audioDetailsWithDefaults(audioDetails: AssetInfo.AudioDetails | nil): AssetInfo.AudioDetails
	return Dash.join(DEFAULT_AUDIO_DETAILS, audioDetails)
end

function AudioRow:init(props: AudioRowProps)
	self.state = {
		isHovered = false,
		isPlayButtonHovered = false,
		isExpanded = true,
		isPlaying = false,
	}

	self.onMouseEnter = function()
		self:setState({ isHovered = true })
	end

	self.onMouseLeave = function()
		self:setState({ isHovered = false })
	end

	self.onPlayButtonMouseEnter = function()
		self:setState({ isPlayButtonHovered = true })
	end

	self.onPlayButtonMouseLeave = function()
		self:setState({ isPlayButtonHovered = false })
	end

	self.toggleIsExpanded = function()
		local assetId = self.props.AssetInfo.Asset.Id
		self.props.OnExpanded(assetId)
	end

	self.stopPlaying = function()
		self:setState({ isPlaying = false })
	end

	self.toggleIsPlayer = function()
		self:setState(function(prevState: AudioRowState)
			return {
				isPlaying = not prevState.isPlaying,
			}
		end)
	end

	self.onDragStart = function()
		if self.props.CanInsertAsset() then
			self.props.InsertAsset(true)
		end
	end

	self.onClick = function()
		if self.props.CanInsertAsset() then
			self.props.InsertAsset(false)
		end
	end
end

function AudioRow:didUpdate(prevProps: AudioRowProps, prevState: AudioRowState)
	local state: AudioRowState = self.state
	local props: AudioRowProps = self.props

	if state.isPlaying and not prevState.isPlaying and not props.IsExpanded then
		self:toggleIsExpanded()
	end

	if not props.IsExpanded and prevProps.IsExpanded and state.isPlaying then
		self:toggleIsPlayer()
	end
end

function AudioRow:didMount()
	local props: AudioRowProps = self.props
	local asset = props.AssetInfo
	if not FFlagToolboxAssetGridRefactor6 or (FFlagToolboxAssetGridRefactor6 and asset) then
		local assetAnalyticsContext
		if FFlagToolboxUsePageInfoInsteadOfAssetContext then
			local getPageInfoAnalyticsContextInfo = self.props.getPageInfoAnalyticsContextInfo
			assetAnalyticsContext = getPageInfoAnalyticsContextInfo()
		end
		self.props.AssetAnalytics:get():logImpression(asset, assetAnalyticsContext)
	end
end

function AudioRow:render()
	return withLocalization(function(_, localizedContent)
		return self:renderContent(localizedContent)
	end)
end

function AudioRow:renderContent(localizedContent: any)
	local props: AudioRowProps = self.props
	local state: AudioRowState = self.state

	local asset = props.AssetInfo.Asset :: AssetInfo.AssetInfoDetails
	local audioDetails = audioDetailsWithDefaults(props.AssetInfo.AudioDetails)
	local creatorName = props.AssetInfo.Creator and props.AssetInfo.Creator.Name or EMPTY_TEXT_PLACEHOLDER

	local theme = props.Stylizer.audioRow
	local localization = props.Localization
	local layoutOrder = props.LayoutOrder
	local insertAsset = props.InsertAsset
	local assetName = asset.Name
	local audioType = audioDetails.Type
	local artist = audioDetails.Artist :: string
	local album = audioDetails.MusicAlbum :: string
	local genre = audioDetails.MusicGenre
	local description = asset.Description or EMPTY_TEXT_PLACEHOLDER
	local category = audioDetails.SoundEffectCategory
	local subcategory = audioDetails.SoundEffectSubcategory
	local duration = asset.Duration or 0

	local isExpanded = props.IsExpanded

	local isHovered = state.isHovered
	local isPlayButtonHovered = state.isPlayButtonHovered
	local isPlaying = state.isPlaying
	local isSoundEffectType = audioType == Category.SOUND_EFFECTS.name
	local isMusicType = audioType == Category.MUSIC.name
	local isUncategorized = not isMusicType and not isSoundEffectType
	local albumArtist = ""
	if artist ~= EMPTY_TEXT_PLACEHOLDER then
		albumArtist = artist
	end
	if album ~= EMPTY_TEXT_PLACEHOLDER then
		if albumArtist ~= "" then
			albumArtist = albumArtist .. " - "
		end
		albumArtist = albumArtist .. album
	end

	local tryCreateLocalizedContextMenu = function()
		if FFlagToolboxUsePageInfoInsteadOfAssetContext then
			local props = self.props
			local assetInfo = props.AssetInfo
			local plugin = props.Plugin:get()
			local tryOpenAssetConfig = props.tryOpenAssetConfig

			local getPageInfoAnalyticsContextInfo = self.props.getPageInfoAnalyticsContextInfo
			local assetAnalyticsContext = getPageInfoAnalyticsContextInfo()

			self.props.tryCreateContextMenu(
				assetInfo,
				localizedContent,
				plugin,
				tryOpenAssetConfig,
				assetAnalyticsContext
			)
		end
	end

	if isSoundEffectType then
		category = if category
			then localization:getText("Audio.SoundEffect.Category", category)
			else EMPTY_TEXT_PLACEHOLDER

		if subcategory then
			category = category .. " - " .. localization:getText("Audio.SoundEffect.Category", subcategory)
		end
	else
		genre = if genre then localization:getText("Audio.Music.Genre", genre) else EMPTY_TEXT_PLACEHOLDER
	end

	local calculateAudioColumnSize = function(column: number, yScale: number?, yOffset: number?)
		return Constants.CalculateAudioColumnSize(audioType, column, yScale, yOffset)
	end

	local orderIterator = LayoutOrderIterator.new()
	local backgroundColor = if layoutOrder % 2 == 0 then theme.backgroundColorEven else theme.backgroundColorOdd
	local iconProps = {
		LayoutOrder = orderIterator:getNextOrder(),
		Size = UDim2.new(0, Constants.AUDIO_ROW.ICON_SIZE, 0, Constants.AUDIO_ROW.ICON_SIZE),
		[Roact.Event.MouseEnter] = self.onPlayButtonMouseEnter,
		[Roact.Event.MouseLeave] = self.onPlayButtonMouseLeave,
	}

	if isExpanded or isHovered or isPlaying then
		iconProps.Image = if isPlaying then Images.AUDIO_PREVIEW_PAUSE else Images.AUDIO_PREVIEW_PLAY
		iconProps.BackgroundColor3 = if isPlaying or isPlayButtonHovered
			then theme.pauseButtonColor
			else theme.playButtonColor
		iconProps.BackgroundTransparency = 0
		iconProps[Roact.Event.MouseButton1Click] = self.toggleIsPlayer
	else
		iconProps.BackgroundTransparency = 1
		iconProps.ImageColor3 = theme.primaryIconColor
		iconProps.Image = if isSoundEffectType then Images.SOUND_EFFECT_ICON else Images.MUSIC_ICON
	end

	local expandedHeight = if isSoundEffectType
		then Constants.AUDIO_ROW.EXPANDED_SOUND_EFFECT_ROW_HEIGHT
		elseif isMusicType then Constants.AUDIO_ROW.EXPANDED_MUSIC_ROW_HEIGHT
		else Constants.AUDIO_ROW.EXPANDED_UNCATEGORIZED_ROW_HEIGHT

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, if isExpanded then expandedHeight else Constants.AUDIO_ROW.ROW_HEIGHT),
		LayoutOrder = layoutOrder,
		BackgroundTransparency = 1,
	}, {
		Border = (isExpanded or isHovered) and Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = theme.borderColor,
			ZIndex = 0,
		}, { UICorner = Roact.createElement("UICorner", {
			CornerRadius = UDim.new(0, 5),
		}) }),
		Button = Roact.createElement(DraggableButton, {
			BackgroundColor3 = backgroundColor,
			Size = UDim2.new(1, -Constants.AUDIO_ROW.BORDER_SIZE * 2, 1, -Constants.AUDIO_ROW.BORDER_SIZE * 2),
			Position = UDim2.new(0, Constants.AUDIO_ROW.BORDER_SIZE, 0, Constants.AUDIO_ROW.BORDER_SIZE),
			ZIndex = 1,
			[Roact.Event.MouseEnter] = self.onMouseEnter,
			[Roact.Event.MouseLeave] = self.onMouseLeave,
			[Roact.Event.MouseButton1Click] = self.toggleIsExpanded,
			[Roact.Event.MouseButton2Click] = tryCreateLocalizedContextMenu,
			onDragStart = self.onDragStart,
		}, {
			UIPadding = Roact.createElement("UIPadding", {
				PaddingRight = UDim.new(0, Constants.AUDIO_ROW.LEFT_RIGHT_PADDING - Constants.AUDIO_ROW.BORDER_SIZE),
				PaddingLeft = UDim.new(0, Constants.AUDIO_ROW.LEFT_RIGHT_PADDING - Constants.AUDIO_ROW.BORDER_SIZE),
				PaddingTop = UDim.new(0, Constants.AUDIO_ROW.TOP_BUTTON_PADDING - Constants.AUDIO_ROW.BORDER_SIZE),
				PaddingBottom = UDim.new(0, Constants.AUDIO_ROW.TOP_BUTTON_PADDING - Constants.AUDIO_ROW.BORDER_SIZE),
			}),
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, 5),
			}),
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			Details = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, Constants.AUDIO_ROW.ICON_SIZE),
				BackgroundTransparency = 1,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				Icon = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					Size = calculateAudioColumnSize(Constants.AUDIO_ROW.COLUMNS.ICON),
				}, {
					Roact.createElement("ImageButton", iconProps, {
						UICorner = Roact.createElement("UICorner", {
							CornerRadius = UDim.new(0, 15),
						}),
					}),
				}),
				Title = Roact.createElement("TextLabel", {
					Size = calculateAudioColumnSize(Constants.AUDIO_ROW.COLUMNS.NAME),
					BackgroundTransparency = 1,
					LayoutOrder = orderIterator:getNextOrder(),
					Text = assetName,
					Font = Constants.FONT,
					TextSize = Constants.FONT_SIZE_MEDIUM,
					TextColor3 = theme.titleTextColor,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextWrapped = true,
					TextTruncate = Enum.TextTruncate.AtEnd,
				}),
				Artist = isMusicType and Roact.createElement("TextLabel", {
					Size = calculateAudioColumnSize(Constants.AUDIO_ROW.COLUMNS.ARTIST),
					BackgroundTransparency = 1,
					LayoutOrder = orderIterator:getNextOrder(),
					Font = Constants.FONT,
					TextSize = Constants.FONT_SIZE_MEDIUM,
					Text = artist,
					TextColor3 = theme.textColor,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextTruncate = Enum.TextTruncate.AtEnd,
				}, {
					UIPadding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, Constants.AUDIO_ROW.LEFT_RIGHT_PADDING),
					}),
				}),
				Category = isSoundEffectType and Roact.createElement("TextLabel", {
					Size = calculateAudioColumnSize(Constants.AUDIO_ROW.COLUMNS.CATEGORY),
					BackgroundTransparency = 1,
					LayoutOrder = orderIterator:getNextOrder(),
					Font = Constants.FONT,
					TextSize = Constants.FONT_SIZE_MEDIUM,
					Text = category,
					TextColor3 = theme.textColor,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextTruncate = Enum.TextTruncate.AtEnd,
				}, {
					UIPadding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, Constants.AUDIO_ROW.LEFT_RIGHT_PADDING),
					}),
				}),
				Genre = isMusicType and Roact.createElement("TextLabel", {
					Size = calculateAudioColumnSize(Constants.AUDIO_ROW.COLUMNS.GENRE),
					BackgroundTransparency = 1,
					LayoutOrder = orderIterator:getNextOrder(),
					Font = Constants.FONT,
					TextSize = Constants.FONT_SIZE_MEDIUM,
					Text = genre,
					TextColor3 = theme.textColor,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextTruncate = Enum.TextTruncate.AtEnd,
				}, {
					UIPadding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, Constants.AUDIO_ROW.LEFT_RIGHT_PADDING),
					}),
				}),
				Duration = Roact.createElement("TextLabel", {
					Size = calculateAudioColumnSize(Constants.AUDIO_ROW.COLUMNS.DURATION),
					BackgroundTransparency = 1,
					LayoutOrder = orderIterator:getNextOrder(),
					Font = Constants.FONT,
					TextSize = Constants.FONT_SIZE_MEDIUM,
					Text = secondsToMinuteString(duration),
					TextColor3 = theme.textColor,
					TextXAlignment = Enum.TextXAlignment.Right,
				}, {
					UIPadding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, Constants.AUDIO_ROW.LEFT_RIGHT_PADDING),
					}),
				}),
			}),
			AudioPlayerFrame = isExpanded and Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 26),
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
				}),
				UIPadding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 4),
				}),
				AudioPlayerWrapper = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, if isUncategorized then -50 else 0, 0, 26),
				}, {
					UIPadding = Roact.createElement("UIPadding", {
						PaddingRight = UDim.new(0, Constants.AUDIO_ROW.LEFT_RIGHT_PADDING),
					}),
					Layout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal,
						VerticalAlignment = Enum.VerticalAlignment.Center,
					}),
					AudioPlayer = Roact.createElement(AudioPlayer, {
						SoundId = asset.Id,
						IsPlaying = isPlaying,
						OnEnd = self.stopPlaying,
					}),
				}),

				Insert = isUncategorized and Roact.createElement(AudioRowInsertButton, {
					LayoutOrder = 3,
					OnClick = self.onClick,
				}),
			}),
			AdditionalSoundEffectDetails = isExpanded and isSoundEffectType and Roact.createElement("Frame", {
				Size = UDim2.new(1, -20, 0, 52),
				BackgroundTransparency = 1,
				LayoutOrder = 3,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 10),
				}),
				Description = Roact.createElement(AudioRowMetadata, {
					Size = UDim2.new(0.5, Constants.AUDIO_ROW.ICON_SIZE, 1, 0),
					BackgroundTransparency = 1,
					HeaderText = localization:getText("General", "Description"):upper(),
					Text = description,
					LayoutOrder = 1,
				}),
				UploadBy = Roact.createElement(AudioRowMetadata, {
					Size = UDim2.new(0.5, -68, 1, 0),
					BackgroundTransparency = 1,
					LayoutOrder = 2,
					HeaderText = localization:getText("AudioView", "UploadedBy"):upper(),
					Text = creatorName,
				}),
				Insert = Roact.createElement(AudioRowInsertButton, {
					LayoutOrder = 3,
					OnClick = self.onClick,
				}),
			}),
			AdditionalMusicDetails = isExpanded and isMusicType and Roact.createElement("Frame", {
				Size = UDim2.new(1, -10, 0, 60),
				BackgroundTransparency = 1,
				LayoutOrder = 3,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				Roact.createElement("Frame", {
					Size = UDim2.new(1, -10, 0, 26),
					BackgroundTransparency = 1,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, 10),
					}),

					Description = Roact.createElement("TextLabel", {
						Size = UDim2.new(1, -50, 1, 0),
						BackgroundTransparency = 1,
						LayoutOrder = 2,
						Text = description,
						TextColor3 = theme.textColor,
						Font = Constants.FONT,
						TextSize = Constants.FONT_SIZE_MEDIUM,
						TextWrapped = true,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Top,
						TextTruncate = Enum.TextTruncate.AtEnd,
					}),
					Insert = Roact.createElement(AudioRowInsertButton, {
						LayoutOrder = 3,
						OnClick = self.onClick,
					}),
				}),
				Roact.createElement("Frame", {
					Size = UDim2.new(1, -20, 0, 34),
					BackgroundTransparency = 1,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, 10),
					}),
					AlbumArist = Roact.createElement(AudioRowMetadata, {
						Size = UDim2.new(0.5, 0, 1, 0),
						BackgroundTransparency = 1,
						LayoutOrder = 1,
						HeaderText = localization:getText("AudioView", "AlbumArtist"):upper(),
						Text = albumArtist,
					}),
					UploadBy = Roact.createElement(AudioRowMetadata, {
						Size = UDim2.new(0.5, 0, 1, 0),
						BackgroundTransparency = 1,
						LayoutOrder = 2,
						HeaderText = localization:getText("AudioView", "UploadedBy"):upper(),
						Text = creatorName,
					}),
				}),
			}),
		}),
	})
end

AudioRow = withContext({
	AssetAnalytics = AssetAnalyticsContextItem,
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
	Plugin = ContextServices.Plugin,
})(AudioRow)

local function mapStateToProps()
	return {}
end

local function mapDispatchToProps(dispatch)
	return {
		tryCreateContextMenu = FFlagToolboxAssetGridRefactor6
				and function(assetData, localizedContent, plugin, tryOpenAssetConfig, assetAnalyticsContext)
					dispatch(
						TryCreateContextMenu(
							assetData,
							localizedContent,
							plugin,
							tryOpenAssetConfig,
							assetAnalyticsContext
						)
					)
				end
			or nil,
		getPageInfoAnalyticsContextInfo = if FFlagToolboxUsePageInfoInsteadOfAssetContext
			then function()
				return dispatch(GetPageInfoAnalyticsContextInfo())
			end
			else nil,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AudioRow)
