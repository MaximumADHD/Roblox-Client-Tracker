local ThirdPartyUserService = nil
pcall(
	function()
		ThirdPartyUserService = game:GetService("ThirdPartyUserService")
	end
)

local currentUserState = nil
if ThirdPartyUserService then
	ThirdPartyUserService.ActiveUserSignedOut:connect(
		function()
			currentUserState = {}
		end
	)
end

--A generic module to make safe async function calls
--[[
	When to use: Have an async call which may be called several times simultaneously
	I.e, don't want to block user input(can't use debounce) and don't want to pile up the calls which may lead to extremely long respond time(can't use mutex)
	Can use the following makeSafeAsync which takes in an async function, a callback function(optinal) and an boolean(optinal) which indicates whether the reponse is user related.
	If several async calls happened concurrently, only the latest async call's return value will be used as the arguments of the callback(if provided).
	Set userRelated as true if want to cancel callback if user switch happens.
	Call Cancel() if you want to cancel the callback manually.

	Example:
		local httpAsync = makeSafeAsync
		{
			asyncFunc = local function() return http.getAsync() end,  --This is the async function
			callback = local function(reponse) process(reponse) end,  --This is the the callback(optinal), take the return of asyncFunc as arguments
			userRelated = true --user related bool(optinal)
		}

		spawn(httpAsync)
		spawn(httpAsync) --The first call's callback won't get called now
		httpAsync:Cancel() --The second call's callback is cancenlled
]]
local function makeSafeAsync(input)
	local this = {}
	local currentFuncState = nil
	--The asyncFunc should always be the same
	local asyncFunc = input.asyncFunc
	assert(type(asyncFunc) == "function", "Must init with an async function.")

	--Many async funtion calls are user related, so we add this attribute
	local userRelated = input.userRelated

	local callback = input.callback
	local cancelled = false
	--Add this cancel which enables us to cancel callback
	function this:Cancel()
		cancelled = true
	end

	setmetatable(this, {
		__call = function(self, ...)
			local lastFuncState = {}
			currentFuncState = lastFuncState

			local lastUserState = currentUserState
			local results = {asyncFunc(...)}

			if currentFuncState ~= lastFuncState then
				return
			end

			if userRelated and lastUserState ~= currentUserState then
				return
			end

			if cancelled then
				return
			end

			if type(callback) == "function" then
				callback(unpack(results))
			end
		end
	})

	return this
end

return makeSafeAsync
