local RunService = game:GetService("RunService")

return function()
	-- In non-TC games you are running both client/server in Edit, but in
	-- TC you are only running the client. The server is run by RCC
	return RunService:IsEdit() and not RunService:IsServer()
end