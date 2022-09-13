local MockPlayersService = require(script.Parent.MockPlayersService)
local Players = game:GetService("Players")

return function()
	if _G.__TESTEZ_RUNNING_TEST__ then
		return (MockPlayersService.new() :: any) :: Players
	else
		return Players
	end
end
