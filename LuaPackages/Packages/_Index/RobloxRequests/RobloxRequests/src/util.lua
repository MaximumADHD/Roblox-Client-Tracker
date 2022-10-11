local _U = {}

-- deprecated decorator
function _U.deprecate(method, version, name)
	return function(...)
		if version then
			warn(
				("[http] %s deprecated in version %s. See documentation at http://requests.paric.xyz/"):format(
					name,
					version or "Function"
				)
			)
		else
			warn(("[http] %s deprecated. See documentation at http://requests.paric.xyz/"):format(name or "Function"))
		end

		return method(...)
	end
end

return _U
