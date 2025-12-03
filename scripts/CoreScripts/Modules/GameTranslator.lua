--!nonstrict
local LocalizationService = game:GetService("LocalizationService")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")

local playerTranslator = nil
local player = nil
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

local registryInfoMap = {}

local function unregisterGui(element)
    local info = registryInfoMap[element]
    if not info then
        return
    end
    info.connection:Disconnect()
    registryInfoMap[element] = nil
end

local function makeAncestryChangedHandler(element, info)
    return function(child, parent)
        if not game:IsAncestorOf(element) then
            if info.hasBeenAdded then
                unregisterGui(element)
            end
        else
            info.hasBeenAdded = true
        end
    end
end

local function updateRegistryInfo(info, context, text)
    info.context = context
    info.text = text
end

local function makeRegistryInfo(element, context, text)
    local info = { hasBeenAdded = game:IsAncestorOf(element) }
    updateRegistryInfo(info, context, text)
    info.connection = element.AncestryChanged:Connect(
        makeAncestryChangedHandler(element, info))
    return info
end

local function registerGui(element, context, text)
    if registryInfoMap[element] == nil then
        registryInfoMap[element] = makeRegistryInfo(element, context, text)
    else
        updateRegistryInfo(registryInfoMap[element], context, text)
    end
end

Players:GetPropertyChangedSignal("LocalPlayer"):Connect(function()
    reset()
    getTranslator()
end)

local GameTranslator = {}

GameTranslator.LocaleChanged = localeChangedEvent.Event

-- This is meant for translating user game text that appears under CoreGui.
-- It uses Player.LocaleId and the LocalizationTables under LocalizationService.
-- This includes team names, score names, tool names, and notification toasts.
-- DO NOT USE THIS TO TRANSLATE ROBLOX TEXT IN ROBLOX GUIS!!!
-- Text from Roblox in Roblox guis should use LocalizationService.RobloxLocaleId
-- and the CoreScriptLocalization table, NOT user tables with the game locale ID.

function GameTranslator:TranslateGameText(context, text)
    local translator = getTranslator()
    if translator then
        return translator:RobloxOnlyTranslate(context, text)
    else
        return text
    end
end

local function retranslateAll()
    for element, info in pairs(registryInfoMap) do
        element.Text = GameTranslator:TranslateGameText(info.context, info.text)
    end
end

LocalizationService.AutoTranslateWillRun:Connect(retranslateAll)

function GameTranslator:TranslateAndRegister(element, context, text)
    element.Text = self:TranslateGameText(context, text)
    registerGui(element, context, text)
    return text
end

return GameTranslator
