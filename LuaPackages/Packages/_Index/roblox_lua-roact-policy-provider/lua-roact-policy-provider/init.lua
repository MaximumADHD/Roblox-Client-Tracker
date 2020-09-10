local connect = require(script.connect)
local Provider = require(script.Provider)
local Logger = require(script.Logger)

local GetPolicyImplementations = script.getPolicyImplementations
local fromMemStorageService = require(GetPolicyImplementations.fromMemStorageService)
local fromPolicyService = require(GetPolicyImplementations.fromPolicyService)
local fromStaticSource = require(GetPolicyImplementations.fromStaticSource)

return {
	withGetPolicyImplementation = function(getPolicyImpl)
		-- assign default
		assert(getPolicyImpl.read, "expected getPolicyImpl to have `read` function")
		assert(getPolicyImpl.onPolicyChanged, "expected getPolicyImpl to have `onPolicyChanged` function")
		return {
			connect = connect(getPolicyImpl),
			Provider = Provider(),
		}
	end,

	GetPolicyImplementations = {
		MemStorageService = fromMemStorageService(),
		PolicyService = fromPolicyService(),
		Static = fromStaticSource(),
	},

	Logger = Logger,
}
