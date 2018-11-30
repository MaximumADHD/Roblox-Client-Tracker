local createSignal = require(script.Parent.createSignal)

--[[
	A handy utility just like JavaScript's Object.assign
]]
local function assign(target, ...)
	for i = 1, select("#", ...) do
		local source = select(i, ...)

		for key, value in pairs(source) do
			target[key] = value
		end
	end

	return target
end

-- Since Roblox objects can often deal with properties being set to `nil`, we
-- should make sure that invalid keys are marked as errors.
local valuesMetatable = {
	__index = function(self, key)
		error(("%q is not a valid theme key"):format(key))
	end,
}

local Theme = {}
local themeMetatable = {
	__index = Theme,
}

--[[
	Update the theme by adding `changedValues` to the theme and updating any
	subscribers.
]]
function Theme:update(changedValues)
	assert(typeof(changedValues) == "table", "`changedValues` must be a table")

	local newValues = assign({}, self.values, changedValues)
	setmetatable(newValues, valuesMetatable)

	self.values = newValues
	self.signal:fire(newValues)
end

local function createTheme(values)
	assert(typeof(values) == "table", "`values` must be a table")

	local theme = {
		values = values,
		signal = createSignal(),
	}

	setmetatable(theme, themeMetatable)

	return theme
end

return createTheme