local connect = require(script.connect)
local Provider = require(script.Provider)
local Logger = require(script.Logger)

local GetPolicyImplementations = script.getPolicyImplementations
local fromMemStorageService
local fromPolicyService = require(GetPolicyImplementations.fromPolicyService)
local fromStaticSource = require(GetPolicyImplementations.fromStaticSource)

local FFlagPolicyProviderFromMemStorageServiceFix = game:DefineFastFlag("PolicyProviderFromMemStorageServiceFix", false)

if FFlagPolicyProviderFromMemStorageServiceFix then
	fromMemStorageService = require(GetPolicyImplementations.fromMemStorageService)
else
	fromMemStorageService = require(GetPolicyImplementations.oldFromMemStorageService)
end

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
