--[[
	Reducer for handling Overlay components within InspectAndBuy
	This allows us to open and close overlays given the component
	and the props that should be passed into that component
]]

local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)
local InspectAndBuyFolder = script.Parent.Parent
local OpenOverlay = require(InspectAndBuyFolder.Actions.OpenOverlay)
local CloseOverlay = require(InspectAndBuyFolder.Actions.CloseOverlay)

export type State = {
	overlay: any?,
	overlayProps: { [any]: any }?,
}

local initState = {
	overlay = nil,
	overlayProps = {},
}

return Rodux.createReducer(initState, {
	-- Set whether an overlay is visible or not.
	[OpenOverlay.name] = function(state, action): State
		return {
			overlay = action.overlay,
			overlayProps = action.overlayProps,
		}
	end :: any,

	-- Set whether an overlay is visible or not.
	[CloseOverlay.name] = function(state, action): State
		return {
			overlay = nil,
			overlayProps = {},
		}
	end :: any,
})
