local GuiService = game:GetService("GuiService")
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent.Parent
local OpenEducationalPopup = require(InGameMenu.Thunks.OpenEducationalPopup)
local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnection)
local InGameMenuPolicy = require(InGameMenu.InGameMenuPolicy)
local UserLocalStore = require(InGameMenu.Utility.UserLocalStore)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)

local NativeCloseEventConnector = Roact.PureComponent:extend("NativeCloseEventConnector")

NativeCloseEventConnector.validateProps = t.strictInterface({
	isEducationalPopupEnabled = t.boolean,
	maxDisplayCount = t.integer,
	openEducationalPopup = t.optional(t.callback),
})

function NativeCloseEventConnector:init()
	self.onNativeCloseConnect = function()
		if self.props.isEducationalPopupEnabled then
			RbxAnalyticsService:ReportCounter("LeaveGame_NativeClose", 1)

			local localStore = UserLocalStore.new()
			self.props.openEducationalPopup(GuiService, localStore, self.props.maxDisplayCount)
		end

		SendAnalytics(Constants.AnalyticsInGameMenuName, "LeaveGame_NativeClose", {})
	end
end

function NativeCloseEventConnector:render()
	return Roact.createElement(ExternalEventConnection, {
		event = GuiService.NativeClose,
		callback = self.onNativeCloseConnect,
	})
end

NativeCloseEventConnector = InGameMenuPolicy.connect(function(appPolicy, props)
	return {
		isEducationalPopupEnabled = appPolicy.enableEducationalPopup(),
		maxDisplayCount = appPolicy.educationalPopupMaxDisplayCount(),
	}
end)(NativeCloseEventConnector)

return RoactRodux.UNSTABLE_connect2(
	nil,
	function(dispatch)
		return {
			openEducationalPopup = function(guiService, appStorageService, maxCount)
				return dispatch(OpenEducationalPopup(guiService, appStorageService, maxCount))
			end,
		}
	end
)(NativeCloseEventConnector)
