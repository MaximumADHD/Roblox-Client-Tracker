local types = require(script.Parent.types)
type dispose = types.dispose
type resource<A..., R...> = types.resource<A..., R...>

local function once(dispose: dispose): dispose
	local called = false
	local function notAgain()
		if not called then
			called = true
			dispose()
		end
	end
	return notAgain
end

local function createCachedResource<T>(resource: resource<(), (T)>): resource<(), (T)>
	local value: T? = nil
	local dispose: dispose? = nil
	local references = 0

	local function disposeResource()
		references -= 1
		if references == 0 then
			value = nil
			if dispose ~= nil then
				local toDispose = dispose
				dispose = nil
				toDispose()
			end
		end
	end

	local function constructResource()
		dispose, value = resource()
	end

	local function handleError(ok: boolean, ...)
		if not ok then
			disposeResource()
			error(...)
		end
	end

	local function cachedResource()
		references += 1
		if references == 1 then
			handleError(pcall(constructResource))
		end

		return once(disposeResource), value :: T
	end

	return cachedResource
end

return createCachedResource
