--!strict
local CALL_URL = require(script.Parent.Parent.CALL_URL)
local networkingCallTypes = require(script.Parent.Parent.networkingCallTypes)

return function(config: networkingCallTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	local GetCallList = roduxNetworking.GET({ Name = "GetCallList" }, function(requestBuilder)
		return requestBuilder(CALL_URL):path("call"):path("v1"):path("list")
	end)

	if config.useMockedResponse then
		-- Mock response for now as we wait for endpoint.
		GetCallList.Mock.clear()
		GetCallList.Mock.reply(function()
			return {
				responseBody = {
					callList = {
						{
							createdUtc = 1666635183000,
							participants = {
								{
									userId = 3447649029,
									username = "jovocados",
								},
							},
							state = "Outgoing",
						},
						{
							createdUtc = 1665635183000,
							participants = {
								{
									userId = 2591489824,
									username = "corgichu8",
								},
							},
							state = "Incoming",
						},
						{
							createdUtc = 1664635183000,
							participants = {
								{
									userId = 2591622000,
									username = "hamulgg",
								},
							},
							state = "Missed",
						},
					},
				},
			}
		end)
	end

	return GetCallList
end
