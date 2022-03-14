local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local Cryo = require(CorePackages.Cryo)
local BlockingModalContainer = require(script.Parent.BlockingModalContainer)

local noOpt = function()
end

return function(props)
	return Roact.createElement(BlockingModalContainer, Cryo.Dictionary.join({
		blockingUtility = {
			BlockPlayerAsync = function(player)
				return true, true
			end
		},
		translator = {
			FormatByKey = function(_, key)
				return key
			end
		},
		analytics = {
			action = noOpt
		},
		closeModal = noOpt,
		player = {
			DisplayName = "Dan",
			Name = "Dan",
			UserId = 12345,
		}
	}, props))
end
