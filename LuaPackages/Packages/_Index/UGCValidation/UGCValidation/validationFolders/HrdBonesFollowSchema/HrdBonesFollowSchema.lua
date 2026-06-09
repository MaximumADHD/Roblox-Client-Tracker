local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local getEngineFeatureEngineUGCValidationExpandReturnSchema =
	require(root.flags.getEngineFeatureEngineUGCValidationExpandReturnSchema)

local getAllInstancesIsA = require(root.util.getAllInstancesIsA)
local R15plusUtils = require(root.util.R15plusUtils)
local HrdBonesFollowSchema = {}

HrdBonesFollowSchema.categories =
	{ ValidationEnums.UploadCategory.TORSO_AND_LIMBS, ValidationEnums.UploadCategory.DYNAMIC_HEAD }
HrdBonesFollowSchema.requiredData = { ValidationEnums.SharedDataMember.rootInstance }
HrdBonesFollowSchema.fflag = R15plusUtils.checkFlagEnabledForAllowHrd
local FFlagUGCValidationRemoveHRDBlocker = game:DefineFastFlag("UGCValidationRemoveHRDBlocker", false)

local function fillBoneTreeFlatList(instance: Instance, isBonePath: boolean, flatList: { Instance })
	for _, child in instance:GetChildren() do
		local desPathIsBonePath = isBonePath
		if child:IsA("Bone") then
			desPathIsBonePath = true
		end

		if desPathIsBonePath then
			table.insert(flatList, child)
		end

		fillBoneTreeFlatList(child, desPathIsBonePath, flatList)
	end
end

local function nameIsMappedInRigDescriptions(
	inst: Instance,
	hrd: HumanoidRigDescription,
	drd: DigitsRigDescription?
): boolean
	-- We expect the instName to match the bone name, and for every bone to be mapped to a joint in HRD/DRD (instName == jointLabel.Name)
	for _, jointEnum in R15plusUtils.getHrdJointLabels() do
		if inst.Name == jointEnum.Name then
			local linkedInst = hrd:GetJoint(jointEnum)
			return linkedInst and linkedInst.UniqueId == inst.UniqueId
		end
	end

	if drd then
		for _, jointEnum in R15plusUtils.getDrdJointLabels() do
			local expectedInstName = `{drd.Side.Name}Hand{jointEnum.Name}`
			if inst.Name == expectedInstName then
				local linkedInst = drd:GetJoint(jointEnum)
				return linkedInst and linkedInst.UniqueId == inst.UniqueId
			end
		end
	end

	return false
end

HrdBonesFollowSchema.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local rootInstance = data.rootInstance
	for _, bodyMeshPart in getAllInstancesIsA(rootInstance, "MeshPart") do
		local bodyPartName = bodyMeshPart.Name

		local hrd = bodyMeshPart:FindFirstChildWhichIsA("HumanoidRigDescription")
		local drd = bodyMeshPart:FindFirstChildWhichIsA("DigitsRigDescription")

		if hrd ~= nil and not FFlagUGCValidationRemoveHRDBlocker then
			reporter:fail(
				ErrorSourceStrings.Keys.HrdCheck_TempR15BonesUploadNotAllowed,
				nil,
				if getEngineFeatureEngineUGCValidationExpandReturnSchema() then hrd else nil
			)
		end

		if hrd == nil then
			-- If HRD does not exist, we don't expect any bone maps
			local bones = getAllInstancesIsA(bodyMeshPart, "Bone")
			for _, bone in bones do
				reporter:fail(
					ErrorSourceStrings.Keys.HrdCheck_BoneWithoutHrd,
					{ bonePath = bone:GetFullName() },
					if getEngineFeatureEngineUGCValidationExpandReturnSchema() then bone else nil
				)
			end

			if drd ~= nil then
				reporter:fail(
					ErrorSourceStrings.Keys.HrdCheck_DrdWithoutHrd,
					nil,
					if getEngineFeatureEngineUGCValidationExpandReturnSchema() then drd else nil
				)
			end

			continue
		end

		local boneSchema = R15plusUtils.getAvatarBoneSchema(bodyPartName)

		local expectedHierarchyList = R15plusUtils.getSchemaFlatHierarchyList(boneSchema, { bodyPartName })
		local boneTreeFlatList = {}
		fillBoneTreeFlatList(bodyMeshPart, false, boneTreeFlatList)

		-- step 1: make sure all descendants of Bones were pre-mapped in the schema (This wont verify ACs/RigAttachments)
		local existsInSchemaAndPart = { [bodyPartName] = true }
		for _, inst in boneTreeFlatList do
			if getEngineFeatureEngineUGCValidationExpandReturnSchema() then
				reporter:setReportingInstance(inst)
			end
			local instName = inst.Name
			local associatedSchema = expectedHierarchyList[instName]
			if instName == R15plusUtils.JointRotationName then
				continue
			elseif associatedSchema == nil or associatedSchema.ClassName ~= inst.ClassName then
				-- FAIL: in instance tree, but not defined in our schema!
				reporter:fail(ErrorSourceStrings.Keys.HrdCheck_UndefinedInstanceInBoneTree, {
					instName = instName,
					className = inst.ClassName,
				})
			elseif existsInSchemaAndPart[instName] then
				-- FAIL: shows up twice
				reporter:fail(ErrorSourceStrings.Keys.HrdCheck_DuplicateInstance, {
					instName = instName,
				})
			else
				existsInSchemaAndPart[instName] = true
				if associatedSchema.ClassName == "Bone" and not nameIsMappedInRigDescriptions(inst, hrd, drd) then
					-- FAIL: not correctly mapped in HRD
					reporter:fail(ErrorSourceStrings.Keys.HrdCheck_BoneNotMappedInHRD, {
						boneName = instName,
					})
				end
			end
		end

		-- step 2: make sure everything in meshpart that is in schema has proper hierarchy
		for _, des in bodyMeshPart:GetDescendants() do
			if getEngineFeatureEngineUGCValidationExpandReturnSchema() then
				reporter:setReportingInstance(des)
			end
			local associatedSchema = expectedHierarchyList[des.Name]
			if not associatedSchema or not des:IsA("Attachment") or des.Name == R15plusUtils.JointRotationName then
				continue
			end

			local schemaPath = associatedSchema.path
			local expectedParentInd = #schemaPath - 1
			if des.ClassName == "Attachment" then
				-- Attachments are leaf nodes to the deepest available levels.
				-- Regular bones can only exist if the chain leading up to them exists.

				while expectedParentInd > 1 and not existsInSchemaAndPart[schemaPath[expectedParentInd]] do
					expectedParentInd -= 1
				end
			end

			local expectedParentName = associatedSchema.path[expectedParentInd]
			local realParentName = (des.Parent :: Instance).Name

			if realParentName ~= expectedParentName then
				-- FAIL: Wrong parent
				reporter:fail(ErrorSourceStrings.Keys.HrdCheck_ImproperParent, {
					instName = des.Name,
					parentName = realParentName,
					expectedParentName = expectedParentName,
				})
			end
		end
	end
end

return HrdBonesFollowSchema :: Types.ValidationModule
