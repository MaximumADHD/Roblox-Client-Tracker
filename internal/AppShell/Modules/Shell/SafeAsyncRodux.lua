--A generic module to make safe async function calls for rodux async actions
--Similar to makeSafeAsync, but it requests the store whenever get called
--Will also put the store as the first parameter for asyncFunc and callback
local function makeSafeAsyncRodux(input)
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
		__call = function(self, store, ...)
			assert(type(store) == "table", "Must call with the store.")

			local lastFuncState = {}
			currentFuncState = lastFuncState

			local lastUserState = store:GetState().RobloxUser
			local results = {asyncFunc(store, ...)}

			if currentFuncState ~= lastFuncState then
				return
			end

			if userRelated and lastUserState ~= store:GetState().RobloxUser then
				return
			end

			if cancelled then
				return
			end

			if type(callback) == "function" then
				callback(store, unpack(results))
			end
		end
	})

	return this
end

return makeSafeAsyncRodux
