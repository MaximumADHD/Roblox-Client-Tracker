local Result = {}
Result.__index = Result

local ResultTypeSymbol = newproxy(true)

function Result.new(status, value)
	assert(typeof(status) == "boolean")

	local result = {
	-- Used to locate where a result was created
		_source = debug.traceback(),

	-- A tag to identify us as a result
		[ResultTypeSymbol] = true,

		_status = status,

	-- The value success value or error message.
		_value = value,
	}

	setmetatable(result, Result)

	return result
end

function Result.success(value)
	return Result.new(true, value)
end

function Result.error(value)
	return Result.new(false, value)
end

--[[
	Is the given object a Result instance?
]]
function Result.is(object)
	if typeof(object) ~= "table" then
		return false
	end

	return object[ResultTypeSymbol]
end

--[[
	The given callbacks are invoked depending on that result.

	Creates a new result that receives the output of the callback.
]]
function Result:match(successHandler, errorHandler)
	assert(typeof(successHandler) == "function" or typeof(successHandler) == "nil",
			string.format("Result:match expects successHandler to be a function or nil, got %s", typeof(successHandler)))
	assert(typeof(errorHandler) == "function" or typeof(errorHandler) == "nil",
			string.format("Result:match expects errorHandler to be a function or nil, got %s", typeof(errorHandler)))

	local newResult
	if self._status then
		if successHandler ~= nil then
			newResult = successHandler(self._value)
		else
			return self
		end
	else
		if errorHandler ~= nil then
			newResult = errorHandler(self._value)
		else
			return self
		end
	end
	if Result.is(newResult) then
		return newResult
	else
		return Result.success(newResult)
	end
end

--[[
	The given callback is invoked if the result is success.

	Creates a new result that receives the output of the callback.
]]
function Result:matchSuccess(successHandler)
	return self:match(successHandler, nil)
end

--[[
	The given callback is invoked if the result is error.

	Creates a new result that receives the output of the callback.
]]
function Result:matchError(errorHandler)
	return self:match(nil, errorHandler)
end

function Result:unwrap()
	return self._status, self._value
end

return Result