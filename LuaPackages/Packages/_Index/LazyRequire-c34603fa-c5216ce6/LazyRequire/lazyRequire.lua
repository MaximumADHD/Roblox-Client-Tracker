local lazyRequire = function(moduleName)
	local proxyWrapper = {}
	local loadedModule

	local getModule = function()
		if loadedModule then
			return loadedModule
		else
			loadedModule = require(moduleName)
			return loadedModule
		end
	end

	local packageProxyMetatable = {
		__index = function(_self, k)
			local module = getModule()
			return module[k]
		end,

		__newindex = function(_self, k, v)
			local module = getModule()
			module[k] = v
		end,

		__call = function(_proxySelf, ...)
			local module = getModule()
			return module(...)
		end,

		__len = function(_)
			return #getModule()
		end,

		__iter = function(_)
			return next, getModule()
		end,

		__mode = "kv", -- Week reference, so that GC can collect the memory.
	}

	setmetatable(proxyWrapper, packageProxyMetatable)
	return proxyWrapper
end

return lazyRequire
