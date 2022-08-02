--[[
	The main view.

	For now it will only contain the list view. We will most likely later add
	buttons below the list view.
]]
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local UILibrary = require(Plugin.Packages.UILibrary)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local SharedFlags = Framework.SharedFlags
local FFlagRemoveUILibraryLoadingIndicator = SharedFlags.getFFlagRemoveUILibraryLoadingIndicator()

local DraftListView = require(Plugin.Src.Components.DraftListView)
local FeatureDisabledPage = require(Plugin.Src.Components.FeatureDisabledPage)

local UI = Framework.UI
local LoadingIndicator = if FFlagRemoveUILibraryLoadingIndicator then UI.LoadingIndicator else UILibrary.Component.LoadingIndicator

local MainView = Roact.Component:extend("MainView")

function MainView:render()
	local style = self.props.Stylizer
	local draftsServiceEnabled = self.props.DraftsServiceEnabled
	local draftsServiceError = self.props.DraftsServiceError

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
			FeatureDisabledPage = Roact.createElement(FeatureDisabledPage, {
				Text = draftsServiceError,
			}),
		}
	else
		children = {
			ScriptList = Roact.createElement(DraftListView),
		}
	end

	return Roact.createElement("Frame", {
		BackgroundColor3 = style.backgroundColor,
		Size = UDim2.new(1, 0, 1, 0),
	}, children)
end

MainView = withContext({
	Stylizer = ContextServices.Stylizer,
})(MainView)

local function mapStateToProps(state, props)
	local draftsServiceStatus = state.DraftsServiceStatus

	return {
		DraftsServiceEnabled = draftsServiceStatus.Enabled,
		DraftsServiceError = draftsServiceStatus.Error,
	}
end

return RoactRodux.connect(mapStateToProps)(MainView)