local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local AppReducer = require(Modules.Settings.Pages.ShareGame.AppReducer)

return Rodux.Store.new(AppReducer, nil, { Rodux.thunkMiddleware })
