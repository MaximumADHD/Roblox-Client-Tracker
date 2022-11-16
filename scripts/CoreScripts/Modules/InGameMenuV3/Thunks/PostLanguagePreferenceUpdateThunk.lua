--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local InGameMenu = script.Parent.Parent
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Promise = InGameMenuDependencies.Promise

-- Network request
local PostUserExperienceLanguagePreferenceRequest = require(InGameMenu.Network.Requests.LanguageSelection.PostUserExperienceLanguagePreference)

-- State change
local SetLanguageSelectionDropdown = require(InGameMenu.Actions.SetLanguageSelectionDropdown)

local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch

local function PostLanguagePreferenceUpdateThunk(networkImpl, newTargetId, newLocaleCode, newIndex)
    -- Change the index and set the new locale without making the post request
    -- if running from studio
    if RunService:IsStudio() then
        return function(store)
            Players.LocalPlayer:SetExperienceSettingsLocaleId(newLocaleCode)
            store:dispatch(SetLanguageSelectionDropdown(nil, newIndex))
        end
    end

    -- Make POST request and only update on success if running from client
    return PerformFetch.Single("PostLanguagePreferenceUpdate", function(store)
        return PostUserExperienceLanguagePreferenceRequest(networkImpl, game.GameId, newTargetId):andThen(function(result)
            Players.LocalPlayer:SetExperienceSettingsLocaleId(newLocaleCode)
            store:dispatch(SetLanguageSelectionDropdown(nil, newIndex))
            return Promise.resolve(result)
        end, function(err)
            return Promise.reject(err)
        end)
    end)
end

return PostLanguagePreferenceUpdateThunk