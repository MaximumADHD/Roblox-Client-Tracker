--!nocheck
local RoduxSharelinks = script:FindFirstAncestor("RoduxShareLinks")
local Root = RoduxSharelinks.Parent
local Cryo = require(Root.Cryo)
local Rodux = require(Root.Rodux)
local Actions = RoduxSharelinks.Actions

local SetShareInviteLink = require(Actions.SetShareInviteLink)
local ClearShareInviteLink = require(Actions.ClearShareInviteLink)

local DEFAULT_STATE = {}

return function(options)
	local ShareLinksNetworking = options.shareLinksNetworking

	return Rodux.createReducer(DEFAULT_STATE, {
		[ShareLinksNetworking.GenerateLink.Succeeded.name] = function(state, action)
			return Cryo.Dictionary.join(state, { ShareInviteLink = action.responseBody })
		end,

		[SetShareInviteLink.name] = function(state, action: SetShareInviteLink.Action)
			return Cryo.Dictionary.join(state, { ShareInviteLink = action.shareInviteLink })
		end,

		[ClearShareInviteLink.name] = function(state, action: ClearShareInviteLink.Action)
			return Cryo.Dictionary.join(state, { ShareInviteLink = Cryo.None })
		end,
	})
end
