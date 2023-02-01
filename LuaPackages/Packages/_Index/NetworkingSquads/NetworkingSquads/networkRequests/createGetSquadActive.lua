--!strict
local SQUAD_URL = require(script.Parent.Parent.SQUAD_URL)
local networkingSquadTypes = require(script.Parent.Parent.networkingSquadTypes)

return function(config: networkingSquadTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	local GetSquadActive = roduxNetworking.GET({ Name = "GetSquadActive" }, function(requestBuilder)
		return requestBuilder(SQUAD_URL):path("squads"):path("v1"):path("get-active-squad")
	end)

	if config.useMockedResponse then
		GetSquadActive.Mock.clear()
		GetSquadActive.Mock.reply(function()
			return {
				responseBody = {
					squad = {
						squadId = "00000000-0000-0000-0000-000000000000",
						createdUtc = 1672531200000,
						updatedUtc = 1672876800000,
						inviteLinkToken = "QWERTY",
						members = {
							{
								userId = 11117151865,
								status = "Creator",
							},
							{
								userId = 11128063413,
								status = "Member",
							},
							{
								userId = 11128790087,
								status = "Member",
							},
							{
								userId = 11133924223,
								status = "Member",
							},
							{
								userId = 11134037241,
								status = "Member",
							},
							{
								userId = 11126864429,
								status = "Member",
							},
						},
					},
				},
			}
		end)
	end

	return GetSquadActive
end
