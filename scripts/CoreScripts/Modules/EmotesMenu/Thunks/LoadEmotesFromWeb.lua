local CorePackages = game:GetService("CorePackages")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")
local StarterPlayer = game:GetService("StarterPlayer")

local Thunks = script.Parent
local EmotesMenu = Thunks.Parent
local Actions = EmotesMenu.Actions

local Url = require(CorePackages.AppTempCommon.LuaApp.Http.Url)

local EmotesChanged = require(Actions.EmotesChanged)
local EquippedEmotesChanged = require(Actions.EquippedEmotesChanged)

local cachedEmotes = nil

local function getEmotesInfo()
    if cachedEmotes then
        return cachedEmotes
    end

    local getEmotesUrl = Url.AVATAR_URL .. "v1/emotes"

    local success, result = pcall(HttpRbxApiService.GetAsyncFullUrl, HttpRbxApiService, getEmotesUrl)
    if not success then
        return {}
    end

    success, result = pcall(HttpService.JSONDecode, HttpService, result)
    if not success then
        return {}
    end

    cachedEmotes = result
    return result
end

local function loadEmotes(store)
    local equippedEmotesInfo = getEmotesInfo()

    local emotesTable = {}
    local equippedEmotesTable = {}

    for index, emoteInfo in ipairs(equippedEmotesInfo) do
        emotesTable[emoteInfo.assetName] = { emoteInfo.assetId }
        equippedEmotesTable[index] = {
            Slot = emoteInfo.position,
            Name = emoteInfo.assetName,
        }
    end

    store:dispatch(EmotesChanged(emotesTable))
    store:dispatch(EquippedEmotesChanged(equippedEmotesTable))
end

local function LoadEmotesFromWeb()
    return function(store)
        if not StarterPlayer.UserEmotesEnabled then
            return
        end

        coroutine.wrap(loadEmotes)(store)
    end
end

return LoadEmotesFromWeb