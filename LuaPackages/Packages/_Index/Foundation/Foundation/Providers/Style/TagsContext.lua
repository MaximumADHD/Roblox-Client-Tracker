local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

return React.createContext(function()
	return ""
end :: (string) -> string) :: React.Context<(string) -> string>
