local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local BoundsCalculator = require(root.util.BoundsCalculator)

local FetchFullBodyPartsMetrics = {}

function FetchFullBodyPartsMetrics.getData(sharedData: Types.SharedData): { [string]: any }?
	local rootInstance = sharedData.rootInstance
	local renderMeshesData = sharedData.renderMeshesData
	if not renderMeshesData then
		return {}
	end

	local allBodyParts: Types.AllBodyParts = {}
	for _, child in rootInstance:GetChildren() do
		if child:IsA("MeshPart") then
			allBodyParts[child.Name] = child
		end
	end

	local editableMeshes: Types.EditableMeshes = {}
	for partName, meshData in renderMeshesData do
		local inst = rootInstance:FindFirstChild(partName, true)
		if inst and meshData.editable then
			editableMeshes[inst] = { MeshId = { instance = meshData.editable, created = false } }
		end
	end

	local validationContext = {
		isServer = sharedData.consumerConfig.consumerEnv == ValidationEnums.ConsumerEnv.Backend,
		editableMeshes = editableMeshes,
	} :: any

	local success, _failureReasons, result =
		BoundsCalculator.calculateIndividualFullBodyPartsData(allBodyParts, validationContext, nil, false)
	if not success then
		return {}
	end

	return result
end

return FetchFullBodyPartsMetrics
