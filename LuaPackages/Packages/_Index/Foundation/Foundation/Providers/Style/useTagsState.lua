local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local function useTagsState()
	local tags, setTags = React.useState({} :: { [string]: boolean })

	local addTags = React.useCallback(function(...: string)
		local newTags: { string } = {}

		-- Iterate over the varargs
		for _, arg in { ... } do
			local tags = string.split(arg, " ")
			for _, tag in tags do
				table.insert(newTags, tag)
			end
		end

		setTags(function(oldTagSet)
			local update = false
			-- Check if we need to update the tag set
			for _, tag in newTags do
				if oldTagSet[tag] ~= true then
					update = true
					break
				end
			end

			if update then
				local newTagSet = table.clone(oldTagSet)
				for _, tag in newTags do
					newTagSet[tag] = true
				end
				return newTagSet
			end

			-- No change, return old value to avoid re-render
			return oldTagSet
		end)
	end, { setTags })

	return tags, addTags
end

return useTagsState
