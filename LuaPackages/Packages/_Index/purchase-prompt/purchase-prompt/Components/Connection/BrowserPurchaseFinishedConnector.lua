--[[
	Connects to GuiService's browser close callback to retry purchase after upsell
]]
local FFlagIGPDepSwap = game:GetFastFlag("IGPDepSwap")
local Root = script.Parent.Parent.Parent
local LuaPackages = FFlagIGPDepSwap and Root.Parent or game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")

local Roact = require(LuaPackages.Roact)
local ExternalEventConnection = require(script.Parent.ExternalEventConnection)

local retryAfterUpsell = require(script.Parent.Parent.Parent.Thunks.retryAfterUpsell)

local connectToStore = require(script.Parent.Parent.Parent.connectToStore)

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