--[[
	NOTE: This is a fork of 'Create' as specified in the Lua mobile chat
	codebase. I wanted to decouple the two code trees, but the GUI-based test
	result reporter does and will depend on this functionality.
]]

local Create = {
	events = {}
}

--[[
	Merge a list of dictionary tables into one table
]]
function Create.merge(...)
	if select("#", ...) == 1 then
		return (...)
	end

	local new = {}

	for i = 1, select("#", ...) do
		for key, value in pairs(select(i, ...)) do
			-- Push numeric keys as a list
			if (type(key) == "number") then
				table.insert(new, value)
			else
				new[key] = value
			end
		end
	end

	return new
end

--[[
	Create a new instance with the given type properties.

	Usage:
		Create.new "Frame" {
			Name = "MyFrame"
		}

		-- OR --

		Create "Frame" {
			Name = "MyFrame"
		}

	Makes no assumptions about the types of children added. The only requirement
	is that the "Parent" property on them can be assigned.
]]
function Create.new(name)
	return function(...)
		local props = Create.merge(...)
		local new = Instance.new(name)

		-- Add properties to this instance; all string keys are property names
		for key, value in pairs(props) do
			if type(key) == "string" then
				assert(key ~= "Parent", "Don't set 'Parent' using Create!")

				new[key] = value
			elseif type(key) == "table" then
				-- Events use a special-case key
				if key == Create.events then
					for name, event in pairs(value) do
						new[name]:connect(event)
					end
				end
			end
		end

		-- Add children after all the properties are set
		for _, child in ipairs(props) do
			child.Parent = new
		end

		return new
	end
end

setmetatable(Create, {
	__call = function(self, ...)
		return Create.new(...)
	end
})

return Create