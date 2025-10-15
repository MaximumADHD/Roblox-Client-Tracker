local Style = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Flags = require(Foundation.Utility.Flags)

local getFormattedTags = require(Foundation.Utility.getFormattedTags)
local TagsContext = require(Style.TagsContext)
local React = require(Packages.React)

local Types = require(Foundation.Components.Types)
type Tags = Types.Tags

local function useStyleTags(tags: Tags?): string?
	local formattedTags = getFormattedTags(tags)

	if not Flags.FoundationDisableStylingPolyfill then
		return formattedTags
	end

	local addTags = React.useContext(TagsContext)
	React.useLayoutEffect(function()
		if formattedTags ~= nil then
			addTags(formattedTags)
		end
	end, { formattedTags })
	return formattedTags
end

return useStyleTags
