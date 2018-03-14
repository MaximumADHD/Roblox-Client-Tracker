local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Action = require(Modules.Common.Action)

--[[
	Passes a table that looks like this...
	sorts  : {
		1  : {
			timeOptionsAvailable  :  false ,
			name  :  Popular ,
			isDefaultSort  :  true ,
			token  :  1 ,
			numberOfRows  :  0 ,
			genreOptionsAvailable  :  true ,
		},
		2  : {
			timeOptionsAvailable  :  false ,
			name  :  TopRated ,
			isDefaultSort  :  true ,
			token  :  8 ,
			numberOfRows  :  0 ,
			genreOptionsAvailable  :  true ,
		}, {...}, ... }
]]

return Action(script.Name, function(sortsTable)
	return {
		sorts = sortsTable
	}
end)