local RunService = game:GetService("RunService")
return function()
    return RunService:IsEdit() and not RunService:IsServer()
end