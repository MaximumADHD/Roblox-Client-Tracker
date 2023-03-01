local CorePackages = game:GetService("CorePackages")
local AvatarIdentification = require(CorePackages.Workspace.Packages.TnSAvatarIdentification).AvatarIdentification

local TnsModule = script.Parent.Parent
local SetSelectedAvatars = require(TnsModule.Actions.SetSelectedAvatars)

local getAvatarsForPoint = AvatarIdentification.getAvatarsForPoint

-- annotationPoints should all be in normalized (0-1) coordinates
return function(annotationPoints: {Vector2})
	return function(store)
		-- TODO(jcarlson): see if we need this coroutine
		coroutine.wrap(function()
			local state = store:getState()
			local identifiedAvatars = state.report.identifiedAvatars
			local selectedAvatars: {[number]: Player } = {}

			-- expensive computation
			for _, point in ipairs(annotationPoints) do
				local avatarsForPoint = getAvatarsForPoint(identifiedAvatars, point)
				for userId, player in pairs(avatarsForPoint) do
					selectedAvatars[userId] = player
					print("Selected avatar", userId, player)
				end
			end

			store:dispatch(SetSelectedAvatars(selectedAvatars))
		end)()
	end
end
