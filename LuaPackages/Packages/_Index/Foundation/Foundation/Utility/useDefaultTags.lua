local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Types = require(Foundation.Components.Types)
local Flags = require(Foundation.Utility.Flags)

type Tags = Types.Tags

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)
local Dash = require(Packages.Dash)

local function useDefaultTags(tags: Tags?, defaults: string): Tags
	return React.useMemo(function()
		return if tags ~= nil
			then if type(tags) == "string"
				then `{defaults} {tags}`
				else if Flags.FoundationMigrateCryoToDash
					then Dash.join(tags, { [defaults] = true })
					else Cryo.Dictionary.join(tags, { [defaults] = true })
			else defaults
	end, { tags, defaults })
end

return useDefaultTags
