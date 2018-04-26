local CoreGui = game:GetService("CoreGui")
local Action = require(CoreGui.RobloxGui.Modules.Common.Action)

return Action("DeleteError", function(error)
    error = error or {}
	return {
		error = {
			Title = error.Title,
			Msg = error.Msg,
			Code = error.Code
		}
	}
end)