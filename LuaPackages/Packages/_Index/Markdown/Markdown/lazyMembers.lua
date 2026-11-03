-- Gives `target` members that load on first access: `loaders[key]()` runs once, and its value is
-- stored in `target`. Generalized iteration (`for k, v in target`) loads every member first, so
-- it still lists them all; `pairs` and `next` see only the loaded ones.

type Loaders = { [string]: () -> any }

local function lazyMembers(target: { [any]: any }, loaders: Loaders): ()
	local function load(key: string): any
		local value = loaders[key]()
		rawset(target, key, value)
		return value
	end

	setmetatable(target, {
		__index = function(_, key)
			if loaders[key] ~= nil then
				return load(key)
			end
			return nil
		end,
		__iter = function(self)
			for key in loaders do
				if rawget(self, key) == nil then
					load(key)
				end
			end
			return next, self
		end,
	})
end

return lazyMembers
