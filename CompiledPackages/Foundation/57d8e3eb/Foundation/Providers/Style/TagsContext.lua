local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Logger = require(Foundation.Utility.Logger)
local React = require(Packages.React)

-- Clean up as just ({string}) -> () with Flags.FoundationUseStyleSheetRegistry
type AddTags = (string | { string }) -> ()

return React.createContext(function()
	Logger:warning("No Style Provider found")
	return ""
end :: AddTags) :: React.Context<AddTags>
