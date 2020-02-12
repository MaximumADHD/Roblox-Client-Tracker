--[[
	Connects to GuiService's browser close callback to retry purchase after upsell
]]
local Root = script.Parent.Parent.Parent
local GuiService = game:GetService("GuiService")

local LuaPackages = Root.Parent
local Roact = require(LuaPackages.Roact)

local retryAfterUpsell = require(Root.Thunks.retryAfterUpsell)
local connectToStore = require(Root.connectToStore)

local ExternalEventConnection = require(script.Parent.ExternalEventConnection)

local function BrowserPurchaseFinishedConnector(props)
	local onBrowserWindowClosed = props.onBrowserWindowClosed

	--[[
		CLILUACORE-309: The browser window closing is the ONLY
		indication we have about when the user finished interacting
		with the upsell flow on desktop.
	]]
	return Roact.createElement(ExternalEventConnection, {
		event = GuiService.BrowserWindowClosed,
		callback = onBrowserWindowClosed,
	})
end

local function mapDispatchToProps(dispatch)
	return {
		onBrowserWindowClosed = function()
			dispatch(retryAfterUpsell())
		end,
	}
end

BrowserPurchaseFinishedConnector = connectToStore(
	nil,
	mapDispatchToProps
)(BrowserPurchaseFinishedConnector)

return BrowserPurchaseFinishedConnector