local Players = game:GetService("Players")

local LocalPlayer = Players.LocalPlayer

local Thunks = script.Parent
local EmotesMenu = Thunks.Parent

local Actions = EmotesMenu.Actions

local Constants = require(EmotesMenu.Constants)

local HideMenu = require(Actions.HideMenu)
local HideError = require(Actions.HideError)
local ShowError = require(Actions.ShowError)

local function handlePlayFailure(store, reason)
    if reason then
        store:dispatch(ShowError(reason))
        delay(Constants.ErrorDisplayTimeSeconds, function()
            store:dispatch(HideError())
        end)
    end

    store:dispatch(HideMenu())
end

local function PlayEmote(emoteName)
    return function(store)
        local character = LocalPlayer.Character
        if not character then
            handlePlayFailure(store, Constants.ErrorMessages.TemporarilyUnavailable)
            return
        end

        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if not humanoid then
            handlePlayFailure(store, Constants.ErrorMessages.TemporarilyUnavailable)
            return
        end

        if humanoid.RigType ~= Enum.HumanoidRigType.R15 then
            handlePlayFailure(store, Constants.ErrorMessages.R15Only)
            return
        end

        local animate = character:FindFirstChild("Animate")
        if not animate then
            handlePlayFailure(store, Constants.ErrorMessages.NotSupported)
            return
        end

        local playEmoteBindable = animate:FindFirstChild("PlayEmote")
        if playEmoteBindable and playEmoteBindable:IsA("BindableFunction") then
            local success, didPlay = pcall(function() return playEmoteBindable:Invoke(emoteName) end)

            if not success or not didPlay then
                handlePlayFailure(store, Constants.ErrorMessages.TemporarilyUnavailable)
                return
            end
        else
            handlePlayFailure(store, Constants.ErrorMessages.NotSupported)
            return
        end

        -- Success!
        store:dispatch(HideMenu())
    end
end

return PlayEmote