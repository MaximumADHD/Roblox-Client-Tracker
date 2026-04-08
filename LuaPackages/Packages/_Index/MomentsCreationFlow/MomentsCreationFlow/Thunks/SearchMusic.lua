local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local AssetService = game:GetService("AssetService")

local Dash = require(Packages.Dash)
local MomentsCommon = require(Packages.MomentsCommon)

local CreationFlowMusicInfoRetrieved = require(MomentsCreationFlow.Actions.CreationFlowMusicInfoRetrieved)
local MusicSearchRetrieved = require(MomentsCreationFlow.Actions.MusicSearchRetrieved)

local Constants = require(MomentsCreationFlow.Constants)

type Music = MomentsCommon.Music

local MIN_DURATION = 30

local function filterCreator(musicResult)
	return not Dash.includes(Constants.SearchMusicCreatorFilter, musicResult.Creator.Id)
end

local function filterRecordingCode(musicResult)
	return musicResult.RecordingCode ~= nil
end

local function formatMusic(musicResults: { any }): { [number]: Music }
	local music = {}
	for _, asset in ipairs(musicResults) do
		if asset.Id == nil then
			continue
		end

		music[asset.Id] = {
			Artist = asset.Artist,
			AssetId = asset.Id,
			AudioType = asset.AudioType,
			Duration = asset.Duration,
			RecordingCode = asset.RecordingCode,
			Title = asset.Title,
		} :: Music
	end
	return music
end

local function SearchMusic(keyword, duration)
	return function(store)
		local audioSearchParams = Instance.new("AudioSearchParams")
		audioSearchParams.SearchKeyword = keyword
		audioSearchParams.AudioSubType = Enum.AudioSubType.Music
		audioSearchParams.MinDuration = duration or MIN_DURATION

		task.spawn(function()
			local success, result = pcall(function()
				return AssetService:SearchAudio(audioSearchParams)
			end)

			if not success then
				warn("Failed to retrieve musics: " .. result)
				return
			end

			local musicResults = result:GetCurrentPage()

			local filteredMusicResults = Dash.filter(musicResults, filterCreator)
			local musicIds = Dash.map(filteredMusicResults, function(music)
				return music.Id
			end)

			local musicInfo = AssetService:GetAudioMetadataAsync(musicIds)
			local filteredMusicInfo = Dash.filter(musicInfo, filterRecordingCode)
			store:dispatch(CreationFlowMusicInfoRetrieved(formatMusic(filteredMusicInfo)))
			store:dispatch(MusicSearchRetrieved(Dash.map(filteredMusicInfo, function(music)
				return tonumber(music.AssetId)
			end)))
		end)
	end
end

return SearchMusic
