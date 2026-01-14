local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Logger = require(Foundation.Utility.Logger)
local React = require(Packages.React)

return React.createContext(function()
	Logger:warning("No Style Provider found")
	return ""
end :: (string) -> string) :: React.Context<(string) -> string>
