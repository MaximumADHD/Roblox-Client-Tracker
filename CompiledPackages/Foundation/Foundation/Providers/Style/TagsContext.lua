local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local Logger = require(Foundation.Utility.Logger)

return React.createContext(function()
	Logger:warning("No Style Provider found")
	return ""
end :: (string) -> string) :: React.Context<(string) -> string>
