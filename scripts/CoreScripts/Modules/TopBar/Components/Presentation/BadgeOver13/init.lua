game:DefineFastString("TopBarBadgeLearnMoreLink", "https://roblox.com/info/community-guidelines")

local GamepadService = game:GetService("GamepadService")
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local List = require(CorePackages.Packages.Cryo).List

local AnalyticsContext = require(script.AnalyticsContext)

local ExternalEventConnection = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection

local openWebview = require(script.openWebview)
local BadgeOver13 = require(script.BadgeOver13)

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local COPY_ID_TO_LOCALIZATION_KEY = {
    TextFilter = "InGame.CommonUI.Badge.Popup.TextFilterOnlyInfo",
    Voice = "InGame.CommonUI.Badge.Popup.VoiceInfo",
}

return function(props)
    local player: Player = props.player

    local isVREnabled = props.VRService.VREnabled
    local isGamepadCursorEnabled, setGamepadCursorEnabled = React.useState(GamepadService.GamepadCursorEnabled)
    local isUnfilteredChat, setUnfilteredChat = React.useState(player.UnfilteredChat)
    local isVoiceEnabled, setVoiceEnabled = React.useState(false)

    React.useEffect(function()
        props.voiceChatServiceManager:asyncInit():andThen(function()
            setVoiceEnabled(true)
        end):catch(function() end)
    end, {})

    local shouldRender = (isVREnabled == false or isGamepadCursorEnabled == true) and (isUnfilteredChat == true or isVoiceEnabled == true)

    -- generate copyType array based on feature enrollment
    local copyType = {}
    if isUnfilteredChat then
        table.insert(copyType, "TextFilter")
    end
    if isVoiceEnabled then
        table.insert(copyType, "Voice")
    end

    local bodyText = List.map(copyType, function(copyId)
        local key = COPY_ID_TO_LOCALIZATION_KEY[copyId]
        if key then
            return RobloxTranslator:FormatByKey(COPY_ID_TO_LOCALIZATION_KEY[copyId])
        end
        return nil
    end)
    -- always include community standards at the end
    table.insert(bodyText, RobloxTranslator:FormatByKey("InGame.CommonUI.Badge.Popup.CommunityStandards"))

    return React.createElement(AnalyticsContext.Provider, {
        value = {
            fireEvent = function(eventName: string, additionalArgs: any?)
                props.analytics.EventStream:setRBXEventStream("TopBarBadge", eventName, additionalArgs)
            end,
        }
    }, {
        app = React.createElement(React.Fragment, nil, {
            badge = React.createElement(BadgeOver13, {
                layoutOrder = props.layoutOrder,
                bodyText = bodyText,
                linkText = RobloxTranslator:FormatByKey("InGame.CommonUI.Badge.Popup.LearnMoreLink"),
                openWebview = React.useCallback(function()
                    local url = game:GetFastString("TopBarBadgeLearnMoreLink")
                    openWebview(url)
                end),
                visible = shouldRender,
                analyticsCopyType = table.concat(copyType, "+"),
            }),
            gamepadCursorEnabledListener = GamepadService and React.createElement(ExternalEventConnection, {
                event = GamepadService:GetPropertyChangedSignal("GamepadCursorEnabled"),
                callback = function()
                    setGamepadCursorEnabled(GamepadService.GamepadCursorEnabled)
                end,
            }),
            unfilteredChatListener = React.createElement(ExternalEventConnection, {
                event = player:GetPropertyChangedSignal("UnfilteredChat"),
                callback = function()
                    setUnfilteredChat(player.UnfilteredChat)
                end,
            }),
        })
    })
end
