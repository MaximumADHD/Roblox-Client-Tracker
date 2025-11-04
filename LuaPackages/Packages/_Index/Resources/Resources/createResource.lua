local types = require(script.Parent.types)
type own = types.own
type dispose = types.dispose

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

local function disposeChildren(children: { dispose })
	local errors: { any } = {}

	for i = #children, 1, -1 do
		local child = children[i]
		local ok, err: any = pcall(child)
		if not ok then
			table.insert(errors, err)
		end
	end

	if #errors > 0 then
		error(table.concat(errors, "\n"))
	end
end

local function createResource<T...>(resourceFn: (own) -> T...): (dispose, T...)
	local isDisposed = false

	local children = {}

	local function dispose()
		if not isDisposed then
			isDisposed = true
			local toDispose = children
			children = {}
			disposeChildren(toDispose)
		end
	end

	local function capture(child: dispose)
		if not isDisposed then
			table.insert(children, child)
		else
			error("attempted to track a child after the resource has been disposed")
		end
	end

	local function own<T...>(child: dispose, ...: T...): T...
		capture(child)
		return ...
	end

	local function handleError<T...>(ok: boolean, ...: T...): T...
		if not ok then
			dispose()
			error(select(1, ...) :: any)
		end
		return ...
	end

	return once(dispose), handleError(pcall(resourceFn, own))
end

return createResource
