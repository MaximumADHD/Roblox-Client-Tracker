local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Types = require(Foundation.Components.Types)

type Tags = Types.Tags

local React = require(Packages.React)
local Dash = require(Packages.Dash)

local function useDefaultTags(tags: Tags?, defaults: string): Tags
	return React.useMemo(function()
		return if tags ~= nil
			then if type(tags) == "string" then `{defaults} {tags}` else Dash.join(tags, { [defaults] = true })
			else defaults
	end, { tags, defaults })
end

return useDefaultTags
