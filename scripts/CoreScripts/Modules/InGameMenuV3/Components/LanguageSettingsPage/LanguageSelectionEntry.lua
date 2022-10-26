--!nonstrict
-- Service imports
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent.Parent

-- UI element imports
local DropDownSelection = require(InGameMenu.Components.DropDownSelection)
local withLocalization = require(InGameMenu.Localization.withLocalization)

-- Network imports
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local Network = InGameMenu.Network
local httpRequest = require(Network.httpRequest)
local networkImpl = httpRequest(HttpRbxApiService)

-- Thunks for sending requests, updating state, and calling game engine functions
local GetLocaleInfoThunk = require(InGameMenu.Thunks.GetLocaleInfoThunk)
local PostLanguagePreferenceUpdateThunk = require(InGameMenu.Thunks.PostLanguagePreferenceUpdateThunk)

local LanguageSelectionEntry = Roact.PureComponent:extend("LanguageSelectionEntry")
LanguageSelectionEntry.validateProps = t.strictInterface({
    LayoutOrder = t.integer,
    canOpen = t.optional(t.boolean),
    canCaptureFocus = t.optional(t.boolean),
    selectionMapping = t.table,
    selectedIndex = t.integer,
    enabled = t.boolean,
    postUserExperienceSettingsPreference = t.callback,
    getLocaleInfo = t.callback
})

LanguageSelectionEntry.defaultProps = {
    canOpen = true,
}

function LanguageSelectionEntry:didMount()
    -- After successful mounting, send off initial locale info get to update
    -- state, get supported languages, populate dropdown, and set initial index
    -- If this thunk doesn't pass then the state will not be updated from
    -- initstate and the dropdown should remain disabled
    local props = self.props
    props.getLocaleInfo(networkImpl, Players.LocalPlayer.LocaleId:gsub('-', '_'))
end

function LanguageSelectionEntry:render()
    local result = {
    }

    -- Retrieve the parameterized translation for the dropdown entry with the
    -- language corresponding to the source language, which will need
    -- "(Original)" or its equivalent translation
    local localizationKeys = {
        SourceLanguageParameterizedEntry = "CoreScripts.InGameMenu.LanguageSelection.SourceLanguage"
    }

    -- if disabled, set placeholder
    -- otherwise set initial index and strings to localize here

    result.LanguageSelectionEntrySelector = Roact.createElement("Frame", {
        Size = UDim2.new(1, 0, 0, 44 + 56 + 20),
        BackgroundTransparency = 1,
        LayoutOrder = self.props.LayoutOrder,
        ZIndex = self.state.dropdownMenuOpen and 3 or 2,
    }, {
        Padding = Roact.createElement("UIPadding", {
            PaddingLeft = UDim.new(0, 24),
            PaddingRight = UDim.new(0, 24),
        }),
        OffsetFrame = Roact.createElement("Frame", {
            Position = UDim2.new(0, 0, 0, 0),
            Size = UDim2.new(1, 0, 0, 44),
            BackgroundTransparency = 1,
        }, {
            Dropdown = withLocalization(localizationKeys)(function(localizedStrings)
                local optionTexts = {}

                --[[
                    This dropdown's localization is a special case because only
                    one element (the one corresponding to the source language)
                    needs localization via the keys. 

                    This is because the source language entry is followed by
                    "(Original)", which is the portion that needs localization
                    via key.

                    The real language names in the dropdown do NOT need
                    localization, as the selection mapping languageName field is
                    an exact match to what should be displayed for non source
                    languages.
                    
                    Also note that because the dropdown has a variable set of
                    options that depends on the number of supported languages,
                    setting localize = true for the DropDownSelection won't work
                    as these will not have keys and trying to localize in the
                    standard way will cause lua to error
                ]]
                local i, _ = string.find(localizedStrings.SourceLanguageParameterizedEntry, "%(")
                local j, _ = string.find(localizedStrings.SourceLanguageParameterizedEntry, "%)")
                local localizedReplacement = nil
                if i ~= nil and j ~= nil and j > i then
                    localizedReplacement = string.sub(localizedStrings.SourceLanguageParameterizedEntry, i, j)
                end

                if self.props.selectionMapping ~= nil then
                    local counter = 1
                    for key, obj in pairs(self.props.selectionMapping) do
                        local stringToReplace = "%(Original%)"
                        if string.find(obj.languageName, stringToReplace) and localizedReplacement ~= nil then
                            optionTexts[counter] = obj.languageName:gsub(stringToReplace, localizedReplacement)
                        else
                            optionTexts[counter] = obj.languageName
                        end
                        counter = counter + 1
                    end
                end

                local function onDropDownChanged(newSelection)
                    local newTargetId = self.props.selectionMapping[newSelection].id
                    local newLocaleCode = self.props.selectionMapping[newSelection].localeCode
                    self.props.postUserExperienceSettingsPreference(networkImpl, newTargetId, newLocaleCode, newSelection)
                end

                return Roact.createElement(DropDownSelection, {
                    Size = UDim2.new(1, 0, 0, 44),
                    Position = UDim2.new(0, 0, 0, 0),
                    selections = optionTexts,
                    selectedIndex =  self.props.selectedIndex or 1,
                    placeHolderText = "",
                    enabled = self.props.enabled,
                    localize = false, --see above comment for why this is explicitly false
                    selectionChanged = onDropDownChanged,
                    canOpen = true,
                    canCaptureFocus = true,
                })
            end), 
        }),
    })

    return Roact.createFragment(result)
end

return RoactRodux.UNSTABLE_connect2(function(state)
    -- Map state elements in the store to properties in the component
    return {
        selectionMapping = state.languageSelectionReducer.selectionMapping,
        selectedIndex = state.languageSelectionReducer.selectedIndex,
        enabled = state.languageSelectionReducer.enabled,
    }
end, function(dispatch)
    return {
        getLocaleInfo = function(networking, displayValueLocale)
            return dispatch(GetLocaleInfoThunk(networking, displayValueLocale))
        end,
        postUserExperienceSettingsPreference = function(networking, newTargetId, newLocaleId, newIndex)
            return dispatch(PostLanguagePreferenceUpdateThunk(networking, newTargetId, newLocaleId, newIndex))
        end,
    }
end)(LanguageSelectionEntry)
