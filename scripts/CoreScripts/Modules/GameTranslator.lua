local LocalizationService = game:GetService("LocalizationService")
local Players = game:GetService("Players")

local CoreScriptTranslateGameText = settings():GetFFlag("CoreScriptTranslateGameText")

local playerTranslator = nil
local player = nil
local didWarn = false
local localeId = nil
local localeIdConnection = nil
local localeChangedEvent = Instance.new("BindableEvent")

local function handlePlayerOrLocaleChanged()
    if player and player.LocaleId ~= localeId then
        localeId = player.LocaleId
        localeChangedEvent:Fire(localeId)
    end
end

local function reset()
    playerTranslator = nil
    player = nil
    didWarn = false

    if localeIdConnection then
        localeIdConnection:Disconnect()
        localeIdConnection = nil
    end
end

local function getTranslator()
    if not playerTranslator then
        player = Players.LocalPlayer
        if player then
            playerTranslator = LocalizationService:GetTranslatorForPlayer(player)

            handlePlayerOrLocaleChanged()
            localeIdConnection = player:GetPropertyChangedSignal("LocaleId"):Connect(handlePlayerOrLocaleChanged)
        end
    end
    return playerTranslator
end

if CoreScriptTranslateGameText then
    Players:GetPropertyChangedSignal("LocalPlayer"):Connect(function()
        -- LocalPlayer changed
        reset()
        getTranslator()
    end)
end

local GameTranslator = {}

GameTranslator.LocaleChanged = localeChangedEvent.Event

-- This is meant for translating user game text that appears under CoreGui.
-- It uses Player.LocaleId and the LocalizationTables under LocalizationService.
-- This includes team names, score names, tool names, and notification toasts.
-- DO NOT USE THIS TO TRANSLATE ROBLOX TEXT IN ROBLOX GUIS!!!
-- Text from Roblox in Roblox guis should use LocalizationService.RobloxLocaleId
-- and the CoreScriptLocalization table, NOT user tables with the game locale ID.
function GameTranslator:TranslateGameText(context, text)
    if CoreScriptTranslateGameText then
        local translator = getTranslator()
        if translator then
            return translator:RobloxOnlyTranslate(context, text)
        elseif not didWarn then
            warn("CoreScript failed to translate text. Translator not ready.")
            didWarn = true
        end
    end

    return text
end

return GameTranslator