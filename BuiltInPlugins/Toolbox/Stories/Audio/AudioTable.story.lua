local Plugin = script:FindFirstAncestor("Toolbox")
local FFlagToolboxAudioDiscovery = require(Plugin.Core.Util.Flags.AudioDiscovery).FFlagToolboxAudioDiscovery()

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local CoreTestUtils = require(Plugin.TestUtils.CoreTestUtils)
local Category = require(Plugin.Core.Types.Category)

local AudioTable = require(Plugin.Core.Components.AudioTable.AudioTable)
local AssetInfo = require(Plugin.Core.Models.AssetInfo)

local ToolboxStoryWrapper = require(Plugin.Stories.ToolboxStoryWrapper)
local AudioTableWrapper = Roact.PureComponent:extend("AudioRowWrapper")

function createAudioInfo(id: number): AssetInfo.AssetInfo
	return {
		Asset = {
			Id = id,
			Name = "Cascaded Drumming",
			AssetGenres = nil,
			TypeId = 10,
			IsEndorsed = false,
			Description = "High hat with various percussion sounds. Loud crashes.",
			Duration = "128",
			HasScripts = false,
		},
		AudioDetails = {
			Type = Category.SOUND_EFFECTS.name,
			SoundEffectCategory = "Instrument",
			SoundEffectSubcategory = "Drums",
		},
		Creator = {
			Id = 1,
			Name = "Rolbox",
			Type = "User",
		},
	}
end

local assets: { AssetInfo.AssetInfo } = {}
for i = 1, 10, 1 do
	table.insert(assets, createAudioInfo(i))
end

function AudioTableWrapper:render()
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, -10, 0, 260),
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 0, 0, 0),
	}, {
		AudioTable = AudioTable.Generator({
			Assets = assets,
			AudioType = self.props.AudioType,
			CanInsertAsset = function()
				return true
			end,
			InsertAsset = function()
				print("Insert Asset")
			end,
			TryInsert = function()
				print("Try Insert")
			end,
		}),
	})
end

return {
	summary = "Audio Table",
	stories = {
		FFlagToolboxAudioDiscovery and {
			name = "Soundeffect",
			story = Roact.createElement(ToolboxStoryWrapper, {}, {
				AudioTableWrapper = Roact.createElement(AudioTableWrapper, { AudioType = Category.SOUND_EFFECTS.name }),
			}),
		} or CoreTestUtils.mustSetFlag("FFlagToolboxAudioDiscovery", true),
		FFlagToolboxAudioDiscovery and {
			name = "Music",
			story = Roact.createElement(ToolboxStoryWrapper, {}, {
				AudioTableWrapper = Roact.createElement(AudioTableWrapper, { AudioType = Category.MUSIC.name }),
			}),
		} or CoreTestUtils.mustSetFlag("FFlagToolboxAudioDiscovery", true),
		FFlagToolboxAudioDiscovery and {
			name = "Uncategorized",
			story = Roact.createElement(ToolboxStoryWrapper, {}, {
				AudioTableWrapper = Roact.createElement(AudioTableWrapper),
			}),
		} or CoreTestUtils.mustSetFlag("FFlagToolboxAudioDiscovery", true),
	},
}
