local DefaultPolicyService = game:GetService("PolicyService")
local DefaultPlayersService = game:GetService("Players")

local root = script.Parent.Parent
local Packages = root.Parent
local Promise = require(Packages.Promise)

local Logger = require(root.Logger)

return function(dependencies)
	dependencies = dependencies or {}
	dependencies.PolicyService = dependencies.PolicyService or DefaultPolicyService
	dependencies.PlayersService = dependencies.PlayersService or DefaultPlayersService

	assert(dependencies.PolicyService, "expected dependencies.PolicyService")
	assert(dependencies.PlayersService, "expected dependencies.PlayersService")

	local PolicyService = dependencies.PolicyService
	local PlayersService = dependencies.PlayersService

	return function()
		return {
			read = function()
				return nil
			end,

			onPolicyChanged = function(func)
				local onPolicyChangedEvent = Instance.new("BindableEvent")

				-- be sure to connect before our Promise can resolve
				local connection = onPolicyChangedEvent.Event:Connect(func)

				Promise.new(function(resolve, reject)
					local player = PlayersService.LocalPlayer
					if player then
						local success, result = pcall(function()
							return PolicyService:GetPolicyInfoForPlayerAsync(player)
						end)
						if success then
							if result then
								resolve(result)
							else
								reject("GetPolicyInfoForPlayerAsync return nil value")
							end
						else
							reject("GetPolicyInfoForPlayerAsync had an error when calling")
						end
					else
						reject("LocalPlayer not found")
					end
				end):andThen(function(newPolicy)
					onPolicyChangedEvent:Fire(newPolicy)
				end):catch(function(errorString)
					Logger:warning("Could not fetch from PolicyService due to error: {}", errorString)
				end)

				return connection
			end,
		}
	end
end
