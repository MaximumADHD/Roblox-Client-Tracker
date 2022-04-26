local FFlagToolboxAudioDiscovery = game:GetFastFlag("ToolboxAudioDiscovery")

local Plugin = script.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)
local Dash = Framework.Dash
local CoreTestUtils = require(Plugin.TestUtils.CoreTestUtils)
local HomeTypes = require(Plugin.Core.Types.HomeTypes)
local AssetInfo = require(Plugin.Core.Models.AssetInfo)

local AudioRow = require(Plugin.Core.Components.AudioRow.AudioRow)

local ToolboxStoryWrapper = require(Plugin.Stories.ToolboxStoryWrapper)

local AudioRowWrapper = Roact.PureComponent:extend("AudioRowWrapper")

local fakeSoundEffectAsset: AssetInfo.AssetInfo = {
	Asset = {
		Id = 142376088,
		Name = "Cascaded Drumming",
		AssetGenres = nil,
		TypeId = 10,
		IsEndorsed = false,
		Description = "High hat with various percussion sounds. Loud crashes.",
		Duration = "128",
		HasScripts = false,
		AudioDetails = {
			Type = HomeTypes.AUDIO_TYPES.SOUND_EFFECT,
			SoundEffectCategory = "Instrument",
			SoundEffectSubcategory = "Drums",
		},
	},
	Creator = {
		Id = 1,
		Name = "Rolbox",
		Type = "User",
	},
}

local fakeMusicAsset: AssetInfo.AssetInfo = {
	Asset = {
		Id = 142376088,
		Name = "Cascaded Drumming",
		AssetGenres = nil,
		TypeId = 10,
		IsEndorsed = false,
		Description = "High hat with various percussion sounds. Loud crashes.",
		Duration = "508",
		HasScripts = false,
		AudioDetails = {
			Type = HomeTypes.AUDIO_TYPES.MUSIC,
			MusicGenre = "Rock",
			Artist = "Artist",
			MusicAlbum = "asdf",
		},
	},
	Creator = {
		Id = 1,
		Name = "Rolbox",
		Type = "User",
	},
}

local fakeEmptyAsset: AssetInfo.AssetInfo = {
	Asset = {
		Id = 142376088,
		Name = "Cascaded Drumming",
		AssetGenres = nil,
		TypeId = 10,
		IsEndorsed = false,
		Description = "High hat with various percussion sounds. Loud crashes.",
		HasScripts = false,
	},
}

local fakeEmptyMusicAsset: AssetInfo.AssetInfo = {
	Asset = {
		Id = 142376088,
		Name = "Cascaded Drumming",
		AssetGenres = nil,
		TypeId = 10,
		IsEndorsed = false,
		Description = "",
		HasScripts = false,
		AudioDetails = {
			Type = HomeTypes.AUDIO_TYPES.MUSIC,
		},
	},
}

local fakeEmptySoundEffectAsset: AssetInfo.AssetInfo = {
	Asset = {
		Id = 142376088,
		Name = "Cascaded Drumming",
		AssetGenres = nil,
		TypeId = 10,
		IsEndorsed = false,
		Description = "",
		HasScripts = false,
		AudioDetails = {
			Type = HomeTypes.AUDIO_TYPES.SOUND_EFFECT,
		},
	},
}

function AudioRowWrapper:init()
	self.state = {
		expandedAssetId = nil,
	}

	self.toggleIsExpanded = function(assetId)
		self:setState(function(prevState)
			local expandedAssetId = if assetId == prevState.expandedAssetId then Roact.None else assetId
			return { expandedAssetId = expandedAssetId }
		end)
	end
end

function AudioRowWrapper:render()
	return Roact.createFragment({
		Player = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 116),
			BackgroundTransparency = 1,
		}, {
			Player = Roact.createElement(
				AudioRow,
				Dash.join(self.props, {
					IsExpanded = self.props.AssetInfo.Asset.Id == self.state.expandedAssetId,
					OnExpanded = self.toggleIsExpanded,
				})
			),
		}),
	})
end

return {
	summary = "Audio Row",
	stories = {
		FFlagToolboxAudioDiscovery and {
			name = "Soundeffect Odd",
			story = Roact.createElement(ToolboxStoryWrapper, {}, {
				AudioRow = Roact.createElement(AudioRowWrapper, { AssetInfo = fakeSoundEffectAsset, LayoutOrder = 1 }),
			}),
		} or CoreTestUtils.mustSetFlag("FFlagToolboxAudioDiscovery", true),
		FFlagToolboxAudioDiscovery and {
			name = "Soundeffect Even",
			story = Roact.createElement(ToolboxStoryWrapper, {}, {
				AudioRow = Roact.createElement(AudioRowWrapper, { AssetInfo = fakeSoundEffectAsset, LayoutOrder = 2 }),
			}),
		} or CoreTestUtils.mustSetFlag("FFlagToolboxAudioDiscovery", true),
		FFlagToolboxAudioDiscovery and {
			name = "Music Odd",
			story = Roact.createElement(ToolboxStoryWrapper, {}, {
				AudioRow = Roact.createElement(AudioRowWrapper, { AssetInfo = fakeMusicAsset, LayoutOrder = 1 }),
			}),
		} or CoreTestUtils.mustSetFlag("FFlagToolboxAudioDiscovery", true),
		FFlagToolboxAudioDiscovery and {
			name = "Music Even",
			story = Roact.createElement(ToolboxStoryWrapper, {}, {
				AudioRow = Roact.createElement(AudioRowWrapper, { AssetInfo = fakeMusicAsset, LayoutOrder = 2 }),
			}),
		} or CoreTestUtils.mustSetFlag("FFlagToolboxAudioDiscovery", true),
		FFlagToolboxAudioDiscovery and {
			name = "Empty Music",
			story = Roact.createElement(ToolboxStoryWrapper, {}, {
				AudioRow = Roact.createElement(AudioRowWrapper, { AssetInfo = fakeEmptyMusicAsset, LayoutOrder = 2 }),
			}),
		} or CoreTestUtils.mustSetFlag("FFlagToolboxAudioDiscovery", true),
		FFlagToolboxAudioDiscovery and {
			name = "Empty SoundEffect",
			story = Roact.createElement(ToolboxStoryWrapper, {}, {
				AudioRow = Roact.createElement(
					AudioRowWrapper,
					{ AssetInfo = fakeEmptySoundEffectAsset, LayoutOrder = 2 }
				),
			}),
		} or CoreTestUtils.mustSetFlag("FFlagToolboxAudioDiscovery", true),
		FFlagToolboxAudioDiscovery and {
			name = "Uncategorized",
			story = Roact.createElement(ToolboxStoryWrapper, {}, {
				AudioRow = Roact.createElement(AudioRowWrapper, { AssetInfo = fakeEmptyAsset, LayoutOrder = 2 }),
			}),
		} or CoreTestUtils.mustSetFlag("FFlagToolboxAudioDiscovery", true),
	},
}
