--[[
	The main view.

    For now it will only contain the list view. We will most likely later add
    buttons below the list view.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local UILibrary = require(Plugin.Packages.UILibrary)

local withLocalization = UILibrary.Localizing.withLocalization
local withTheme = require(Plugin.Src.ContextServices.Theming).withTheme

local DraftListView = require(Plugin.Src.Components.DraftListView)
local FeatureDisabledPage = require(Plugin.Src.Components.FeatureDisabledPage)
local LoadingIndicator = UILibrary.Component.LoadingIndicator

local MainView = Roact.Component:extend("MainView")

function MainView:render()
    local draftsServiceEnabled = self.props.DraftsServiceEnabled

    return withTheme(function(theme)
        return withLocalization(function(localization)
            local draftsServiceIsLoading = draftsServiceEnabled == nil

            local children
            if draftsServiceIsLoading then
                children = {
                    LoadingIndicator = Roact.createElement(LoadingIndicator, {
                        Position = UDim2.new(0.5, 0, 0.5, 0),
                        AnchorPoint = Vector2.new(0.5, 0.5),
                    }),
                }
            elseif not draftsServiceEnabled then
                children = {
                    FeatureDisabledPage = Roact.createElement(FeatureDisabledPage),
                }
            elseif draftsServiceEnabled then
                children = {
                    ScriptList = Roact.createElement(DraftListView),
                }
            end

            return Roact.createElement("Frame", {
                BackgroundColor3 = theme.BackgroundColor,
                Size = UDim2.new(1, 0, 1, 0),
            }, children)
        end)
    end)
end

local function mapStateToProps(state, props)
    local draftsServiceStatus = state.DraftsServiceStatus

	return {
        DraftsServiceEnabled = draftsServiceStatus.Enabled,
	}
end

return RoactRodux.connect(mapStateToProps)(MainView)