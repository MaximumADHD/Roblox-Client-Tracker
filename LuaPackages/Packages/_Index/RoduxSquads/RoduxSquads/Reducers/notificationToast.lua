local RoduxSquad = script:FindFirstAncestor("RoduxSquads")
local Root = RoduxSquad.Parent
local Cryo = require(Root.Cryo)
local Rodux = require(Root.Rodux)
local NotificationToastModel = require(RoduxSquad.Models).NotificationToastModel
local NotificationToastAdded = require(RoduxSquad.Actions).NotificationToastAdded
local NotificationToastCleared = require(RoduxSquad.Actions).NotificationToastCleared

local RoduxSquadsTypes = require(script.Parent.Parent.RoduxSquadsTypes)

local DEFAULT_STATE: RoduxSquadsTypes.NotificationToast = {}

return function()
	return Rodux.createReducer(DEFAULT_STATE, {

		[NotificationToastAdded.name] = function(
			state: RoduxSquadsTypes.NotificationToast,
			action: RoduxSquadsTypes.NotificationToastAddedAction
		)
			local notificationToast = action.payload.notificationToast
			return Cryo.List.join(state, { NotificationToastModel.format(notificationToast) })
		end,

		[NotificationToastCleared.name] = function(
			state: RoduxSquadsTypes.NotificationToast,
			action: RoduxSquadsTypes.NotificationToastClearedAction
		)
			local notificationId = action.payload.notificationId
			if #state > 0 and state[1].notificationId == notificationId then
				return Cryo.List.removeIndex(state, 1)
			else
				return state
			end
		end,
	})
end
