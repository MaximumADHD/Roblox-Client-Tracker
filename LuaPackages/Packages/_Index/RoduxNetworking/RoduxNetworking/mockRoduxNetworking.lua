local makeActionCreator = require(script.Parent.makeActionCreator)

local function makeMockRequestObject(script)
	local request = makeActionCreator(script)
	local noOpt = function() end
	request.API = function()
		return request.Succeeded()
	end

	request.Mock = {
		reply = noOpt,
		clear = noOpt,
		replyWithError = noOpt,
	}

	return request
end

return function()
	return {
		GET = makeMockRequestObject,
		POST = makeMockRequestObject,
		PATCH = makeMockRequestObject,
	}
end
