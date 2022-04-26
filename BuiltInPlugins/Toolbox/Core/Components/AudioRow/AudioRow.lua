--!strict
local Plugin = script:FindFirstAncestor("Toolbox")

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
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
local NetworkInterface = require(Plugin.Core.Networking.NetworkInterface)
local Images = require(Plugin.Core.Util.Images)

local HomeTypes = require(Plugin.Core.Types.HomeTypes)
local AssetInfo = require(Plugin.Core.Models.AssetInfo)

local AudioRow = Roact.PureComponent:extend("AudioRow")

type _InteralAudioRowProps = {
	Localization: any,
	Stylizer: any,
}

type AudioRowProps = _InteralAudioRowProps & {
	AssetInfo: AssetInfo.AssetInfo,
	LayoutOrder: number,
	IsExpanded: boolean,
	InsertAsset: () -> nil,
	OnExpanded: (assetId: number) -> nil,
}
type AudioRowState = {
	isHovered: boolean,
	isPlayButtonHovered: boolean,
	isPlaying: boolean,
}

local ICON_SIZE = 18
local ROW_HEIGHT = 30
local EXPANDED_MUSIC_ROW_HEIGHT = 116
local EXPANDED_SOUND_EFFECT_ROW_HEIGHT = 100
local EXPANDED_UNCATEGORIZED_ROW_HEIGHT = 56
local LEFT_RIGHT_PADDING = 8
local TOP_BUTTON_PADDING = 6
local BORDER_SIZE = 2
local EMPTY_TEXT_PLACEHOLDER = "---"

function secondsToMinuteString(duration: string?)
	local totalSeconds = tonumber(duration) or 0
	local minutes = math.floor(totalSeconds / 60)
	local seconds = totalSeconds % 60

	return string.format("%d:%02d", minutes, seconds)
end

local DEFAULT_AUDIO_DETAILS = {
	Artist = EMPTY_TEXT_PLACEHOLDER,
	MusicAlbum = EMPTY_TEXT_PLACEHOLDER,
	MusicGenre = EMPTY_TEXT_PLACEHOLDER,
	SoundEffectCategory = EMPTY_TEXT_PLACEHOLDER,
	SoundEffectSubcategory = EMPTY_TEXT_PLACEHOLDER,
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

function AudioRow:render()
	local props: AudioRowProps = self.props
	local state: AudioRowState = self.state

	local asset = props.AssetInfo.Asset :: AssetInfo.AssetInfoDetails
	local creatorName = props.AssetInfo.Creator and props.AssetInfo.Creator.Name or EMPTY_TEXT_PLACEHOLDER
	local audioDetails: any = asset and asset.AudioDetails
	audioDetails = audioDetailsWithDefaults(audioDetails)
	local theme = props.Stylizer.audioRow
	local localization = props.Localization
	local layoutOrder = props.LayoutOrder
	local insertAsset = props.InsertAsset
	local assetName = asset.Name
	local audioType = audioDetails.Type
	local artist = audioDetails.Artist
	local album = audioDetails.MusicAlbum
	local genre = audioDetails.MusicGenre
	local description = asset.Description or EMPTY_TEXT_PLACEHOLDER
	local subcategory = audioDetails.SoundEffectSubcategory
	local duration = asset.Duration or "0"
	local isExpanded = props.IsExpanded

	local isHovered = state.isHovered
	local isPlayButtonHovered = state.isPlayButtonHovered
	local isPlaying = state.isPlaying
	local isSoundEffectType = audioType == HomeTypes.AUDIO_TYPES.SOUND_EFFECT
	local isMusicType = audioType == HomeTypes.AUDIO_TYPES.MUSIC
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

	local category = if isSoundEffectType then subcategory else genre
	category = category or EMPTY_TEXT_PLACEHOLDER

	local orderIterator = LayoutOrderIterator.new()
	local backgroundColor = if layoutOrder % 2 == 0 then theme.backgroundColorEven else theme.backgroundColorOdd
	local iconProps = {
		LayoutOrder = orderIterator:getNextOrder(),
		Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE),
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
		then EXPANDED_SOUND_EFFECT_ROW_HEIGHT
		elseif isMusicType then EXPANDED_MUSIC_ROW_HEIGHT
		else EXPANDED_UNCATEGORIZED_ROW_HEIGHT

	local durationWidth = Constants.getTextSize(secondsToMinuteString(duration), nil, nil).X

	local titleSize = if isUncategorized
		then UDim2.new(1, -ICON_SIZE - durationWidth, 1, 0)
		else UDim2.new(0.6, -ICON_SIZE - durationWidth, 1, 0)
	local categorySize
	categorySize = if isMusicType then UDim2.new(0.2, 0, 1, 0) else UDim2.new(0.4, 0, 1, 0)

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, if isExpanded then expandedHeight else ROW_HEIGHT),
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
		Button = Roact.createElement("ImageButton", {
			BackgroundColor3 = backgroundColor,
			Size = UDim2.new(1, -BORDER_SIZE * 2, 1, -BORDER_SIZE * 2),
			Position = UDim2.new(0, BORDER_SIZE, 0, BORDER_SIZE),
			ZIndex = 1,
			[Roact.Event.MouseEnter] = self.onMouseEnter,
			[Roact.Event.MouseLeave] = self.onMouseLeave,
			[Roact.Event.MouseButton1Click] = self.toggleIsExpanded,
		}, {
			UIPadding = Roact.createElement("UIPadding", {
				PaddingRight = UDim.new(0, LEFT_RIGHT_PADDING - BORDER_SIZE),
				PaddingLeft = UDim.new(0, LEFT_RIGHT_PADDING - BORDER_SIZE),
				PaddingTop = UDim.new(0, TOP_BUTTON_PADDING - BORDER_SIZE),
				PaddingBottom = UDim.new(0, TOP_BUTTON_PADDING - BORDER_SIZE),
			}),
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, 5),
			}),
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			Details = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, ICON_SIZE),
				BackgroundTransparency = 1,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				Icon = Roact.createElement("ImageButton", iconProps, {
					UICorner = Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, 15),
					}),
				}),
				Title = Roact.createElement("TextLabel", {
					Size = titleSize,
					BackgroundTransparency = 1,
					LayoutOrder = orderIterator:getNextOrder(),
					Text = assetName,
					TextColor3 = theme.titleTextColor,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextWrapped = true,
					TextTruncate = Enum.TextTruncate.AtEnd,
				}, {
					UIPadding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, LEFT_RIGHT_PADDING),
					}),
				}),
				Artist = isMusicType and Roact.createElement("TextLabel", {
					Size = categorySize,
					BackgroundTransparency = 1,
					LayoutOrder = orderIterator:getNextOrder(),
					Text = artist,
					TextColor3 = theme.textColor,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextTruncate = Enum.TextTruncate.AtEnd,
				}, {
					UIPadding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, LEFT_RIGHT_PADDING),
					}),
				}),
				Category = not isUncategorized and Roact.createElement("TextLabel", {
					Size = categorySize,
					BackgroundTransparency = 1,
					LayoutOrder = orderIterator:getNextOrder(),
					Text = category,
					TextColor3 = theme.textColor,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextTruncate = Enum.TextTruncate.AtEnd,
				}, {
					UIPadding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, LEFT_RIGHT_PADDING),
					}),
				}),
				Duration = Roact.createElement("TextLabel", {
					Size = UDim2.new(0, durationWidth, 1, 0),
					BackgroundTransparency = 1,
					LayoutOrder = orderIterator:getNextOrder(),
					Text = secondsToMinuteString(duration),
					TextColor3 = theme.textColor,
					TextXAlignment = Enum.TextXAlignment.Right,
				}, {
					UIPadding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, LEFT_RIGHT_PADDING),
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
						PaddingRight = UDim.new(0, LEFT_RIGHT_PADDING),
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
					OnClick = insertAsset,
				}),
			}),
			AdditionalSoundEffectDetails = isExpanded and isSoundEffectType and Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 52),
				BackgroundTransparency = 1,
				LayoutOrder = 3,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				Description = Roact.createElement(AudioRowMetadata, {
					Size = UDim2.new(0.5, ICON_SIZE, 1, 0),
					BackgroundTransparency = 1,
					HeaderText = localization:getText("General", "Description"):upper(),
					Text = description,
					LayoutOrder = 1,
				}),
				Subcategory = Roact.createElement(AudioRowMetadata, {
					Size = UDim2.new(0.5, -68, 1, 0),
					BackgroundTransparency = 1,
					HeaderText = localization:getText("AudioView", "Subcategory"):upper(),
					Text = subcategory,
					LayoutOrder = 2,
				}),
				Insert = Roact.createElement(AudioRowInsertButton, {
					LayoutOrder = 3,
					OnClick = insertAsset,
				}),
			}),
			AdditionalMusicDetails = isExpanded and isMusicType and Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 60),
				BackgroundTransparency = 1,
				LayoutOrder = 3,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 26),
					BackgroundTransparency = 1,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal,
						SortOrder = Enum.SortOrder.LayoutOrder,
					}),

					Description = Roact.createElement("TextLabel", {
						Size = UDim2.new(1, -50, 1, 0),
						BackgroundTransparency = 1,
						LayoutOrder = 2,
						Text = description,
						TextColor3 = theme.textColor,
						TextWrapped = true,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Top,
						TextTruncate = Enum.TextTruncate.AtEnd,
					}),
					Insert = Roact.createElement(AudioRowInsertButton, {
						LayoutOrder = 3,
						OnClick = insertAsset,
					}),
				}),
				Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 34),
					BackgroundTransparency = 1,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal,
						SortOrder = Enum.SortOrder.LayoutOrder,
					}),
					AlbumArist = Roact.createElement(AudioRowMetadata, {
						Size = UDim2.new(0.5, 0, 1, 0),
						BackgroundTransparency = 1,
						LayoutOrder = 1,
						HeaderText = localization:getText("AudioView", "Subcategory"):upper(),
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
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(AudioRow)

return AudioRow
