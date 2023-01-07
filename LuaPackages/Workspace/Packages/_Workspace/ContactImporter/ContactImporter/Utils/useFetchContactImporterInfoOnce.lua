local ContactImporter = script.Parent.Parent
local dependencies = require(ContactImporter.dependencies)

local AppStorageService = dependencies.AppStorageService
local useDispatch = dependencies.useDispatch
local useSelector = dependencies.useSelector
local useEffectOnce = dependencies.useEffectOnce
local FetchContactImporterParams = require(ContactImporter.Networking.FetchContactImporterParams)
local PermissionsProtocol = dependencies.PermissionsProtocol
local useContactImporterConfiguration = require(script.Parent.useContactImporterConfiguration)

return function(config: { policyIsEnabled: boolean? })
	local userId = useSelector(function(state)
		return state.LocalUserId
	end)

	local dispatch = useDispatch()

	local getContactImporterParams = function()
		dispatch(FetchContactImporterParams(userId, PermissionsProtocol.default, AppStorageService))
	end

	local shouldFetchData = useContactImporterConfiguration(config).shouldFetchContactImporterData

	useEffectOnce(getContactImporterParams, shouldFetchData)
end
