local noYield = function(fn: (...any) -> any)
	local resultHandler = function<T>(co: thread, ok: boolean, ...): T?
		if not ok then
			return nil
		end

		if coroutine.status(co) ~= "dead" then
			return nil
		end

		return ...
	end

	local co = coroutine.create(fn)
	return resultHandler(co, coroutine.resume(co))
end

return noYield
