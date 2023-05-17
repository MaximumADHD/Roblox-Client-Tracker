return function()
	local InsertService = game:GetService("InsertService")
	local EmoteUtility = require(script.Parent.EmoteUtility)
	local FFlagEmoteUtilityDontUseC1ToPose = game:GetFastFlag("EmoteUtilityDontUseC1ToPose")

	EmoteUtility.SetDebugLoadAssetsFromFiles(true)

	-- 'Hello' anim https://www.roblox.com/catalog/3576686446/Hello
	-- Note: this asset has face animation built in.
	local EMOTE_ASSET_ID = 3576686446
	local TOOL_HOLD_ASSET_ID = 507768375

	local function loadAsset(assetId: number)
		local url = "rbxasset://" .. tostring(assetId) .. ".rbxm"
		return InsertService:LoadLocalAsset(url)
	end

	local function addJointsForKeyframe(character, keyframe)
		local function recurAddJoints(parentPose, poseObject)
			if not character:FindFirstChild(poseObject.Name) then
				local part = Instance.new("Part")
				part.Name = poseObject.Name
				part.Parent = character
			end
			if parentPose then
				local jointName = parentPose.Name .. "_" .. poseObject.Name
				if character[poseObject.Name]:FindFirstChild(jointName) == nil then
					local joint = Instance.new("Motor6D")
					joint.Name = jointName
					joint.Part0 = character[parentPose.Name]
					joint.Part1 = character[poseObject.Name]
					joint.Parent = character[poseObject.Name]
					if not FFlagEmoteUtilityDontUseC1ToPose then
						joint.C1 = CFrame.new(1, 2, 3)
					end
				end
			end

			for _, subPose in pairs(poseObject:GetSubPoses()) do
				recurAddJoints(poseObject, subPose)
			end
		end

		for _, poseObj in pairs(keyframe:GetPoses()) do
			recurAddJoints(nil, poseObj)
		end
	end

	local function getMockR15Character()
		local mockModel = Instance.new("Model")

		local mockHumanoid = Instance.new("Humanoid")
		mockHumanoid.Name = "Humanoid"
		mockHumanoid.Parent = mockModel
		mockHumanoid.RigType = Enum.HumanoidRigType.R15

		local mockHead = Instance.new("MeshPart")
		mockHead.Name = "Head"
		mockHead.Parent = mockModel

		local mockFaceControls = Instance.new("FaceControls")
		mockFaceControls.Name = "FaceControls"
		mockFaceControls.Parent = mockHead

		local toolHoldAnim = loadAsset(TOOL_HOLD_ASSET_ID):GetChildren()[1]

		local animate = Instance.new("LocalScript")
		animate.Name = "Animate"
		animate.Parent = mockModel

		local toolnone = Instance.new("StringValue")
		toolnone.Name = "toolnone"
		toolnone.Parent = animate

		toolHoldAnim.Parent = toolnone
		toolHoldAnim.Name = "ToolNoneAnim"

		return mockModel
	end

	local function getMockR6Character()
		local mockModel = Instance.new("Model")

		local mockHumanoid = Instance.new("Humanoid")
		mockHumanoid.Name = "Humanoid"
		mockHumanoid.Parent = mockModel
		mockHumanoid.RigType = Enum.HumanoidRigType.R6

		local torso = Instance.new("Part")
		torso.Parent = mockModel
		torso.Name = "Torso"

		local rightShoulder = Instance.new("Motor6D")
		rightShoulder.Parent = torso
		rightShoulder.Name = "Right Shoulder"

		return mockModel
	end

	local function addTool(character)
		local tool = Instance.new("Tool")
		tool.Parent = character
	end

	-- FIXME(dbanks)
	-- 2023/05/01
	-- Remove with FFlagEmoteUtilityDontUseC1ToPose.
	local function DEPRECATED_jointsMatch(char1, char2)
		for _, part in ipairs(char1:GetChildren()) do
			local name = part.Name
			if part and part.ClassName == "Part" then
				local char1Part = part
				local char2Part = char2[name]
				if #(char1Part:GetChildren()) > 0 then
					local joint1 = char1Part:GetChildren()[1]
					local joint2 = char2Part:GetChildren()[1]
					if joint1.C1 ~= joint2.C1 then
						return false
					end
				end
			end
		end
		return true
	end

	local function jointsMatch(char1, char2)
		for _, part in ipairs(char1:GetChildren()) do
			local name = part.Name
			if part and part.ClassName == "Part" then
				local char1Part = part
				local char2Part = char2[name]
				if #(char1Part:GetChildren()) > 0 then
					local joint1 = char1Part:GetChildren()[1]
					local joint2 = char2Part:GetChildren()[1]
					if joint1.Transform ~= joint2.Transform then
						return false
					end
				end
			end
		end
		return true
	end

	local faceControlsPropNames = {
		"ChinRaiser",
		"ChinRaiserUpperLip",
		"Corrugator",
		"EyesLookDown",
		"EyesLookLeft",
		"EyesLookRight",
		"EyesLookUp",
		"FlatPucker",
		"Funneler",
		"JawDrop",
		"JawLeft",
		"JawRight",
		"LeftBrowLowerer",
		"LeftCheekPuff",
		"LeftCheekRaiser",
		"LeftDimpler",
		"LeftEyeClosed",
		"LeftEyeUpperLidRaiser",
		"LeftInnerBrowRaiser",
		"LeftLipCornerDown",
		"LeftLipCornerPuller",
		"LeftLipStretcher",
		"LeftLowerLipDepressor",
		"LeftNoseWrinkler",
		"LeftOuterBrowRaiser",
		"LeftUpperLipRaiser",
		"LipPresser",
		"LipsTogether",
		"LowerLipSuck",
		"MouthLeft",
		"MouthRight",
		"Pucker",
		"RightBrowLowerer",
		"RightCheekPuff",
		"RightCheekRaiser",
		"RightDimpler",
		"RightEyeClosed",
		"RightEyeUpperLidRaiser",
		"RightInnerBrowRaiser",
		"RightLipCornerDown",
		"RightLipCornerPuller",
		"RightLipStretcher",
		"RightLowerLipDepressor",
		"RightNoseWrinkler",
		"RightOuterBrowRaiser",
		"RightUpperLipRaiser",
		"TongueDown",
		"TongueOut",
		"TongueUp",
		"UpperLipSuck",
	}

	local function facesMatch(char1, char2)
		local faceControls1 = char1:FindFirstChildWhichIsA("FaceControls", true)
		local faceControls2 = char2:FindFirstChildWhichIsA("FaceControls", true)
		assert(faceControls1, "faceControls1 should not be null")
		assert(faceControls2, "faceControls2 should not be null")

		for _, propName in faceControlsPropNames do
			local v1 = faceControls1[propName]
			local v2 = faceControls2[propName]
			assert(v1, "v1 should not be null")
			assert(v2, "v2 should not be null")
			if v1 ~= v2 then
				return false
			end
		end

		return true
	end

	local function setupMockR15Characters(shouldAddTool)
		local emoteAnim = loadAsset(EMOTE_ASSET_ID):GetChildren()[1]
		local thumbnailKeyframeNumber = EmoteUtility.GetNumberValueWithDefault(emoteAnim, "ThumbnailKeyframe", nil)
		local rotationDegrees = EmoteUtility.GetNumberValueWithDefault(emoteAnim, "ThumbnailCharacterRotation", 0)
		local emoteKeyframeSequence = EmoteUtility.GetEmoteAnimationClip(emoteAnim)
		local thumbnailKeyframe =
			EmoteUtility.GetThumbnailKeyframe(thumbnailKeyframeNumber, emoteKeyframeSequence, rotationDegrees)

		local mockCharacter = getMockR15Character()
		addJointsForKeyframe(mockCharacter, thumbnailKeyframe)
		local originalMockCharacter = getMockR15Character()
		addJointsForKeyframe(originalMockCharacter, thumbnailKeyframe)

		if shouldAddTool then
			local toolHoldAnim = loadAsset(TOOL_HOLD_ASSET_ID):GetChildren()[1]
			local toolKeyframeSequence = EmoteUtility.GetEmoteAnimationClip(toolHoldAnim)
			local toolKeyframe = EmoteUtility.GetThumbnailKeyframe(nil, toolKeyframeSequence, 0)

			addTool(mockCharacter)
			addJointsForKeyframe(mockCharacter, toolKeyframe)
			addTool(originalMockCharacter)
			addJointsForKeyframe(originalMockCharacter, toolKeyframe)
		end

		return mockCharacter, originalMockCharacter
	end

	local function setupMockR6Characters(shouldAddTool)
		local mockCharacter = getMockR6Character()
		local originalMockCharacter = getMockR6Character()
		if shouldAddTool then
			addTool(mockCharacter)
			addTool(originalMockCharacter)
		end

		return mockCharacter, originalMockCharacter
	end

	if not FFlagEmoteUtilityDontUseC1ToPose then
		describe("SetPlayerCharacterPose", function()
			it("SHOULD return a function", function()
				expect(EmoteUtility.SetPlayerCharacterPose).to.be.a("function")
			end)
			it("SHOULD apply animation and lead to a different pose", function()
				local mockCharacter, originalMockCharacter = setupMockR15Characters()
				EmoteUtility.SetPlayerCharacterPose(mockCharacter, EMOTE_ASSET_ID, function()
					return true
				end)
				expect(DEPRECATED_jointsMatch(mockCharacter, originalMockCharacter)).to.equal(false)
			end)
			it("SHOULD apply animation and lead to a different pose when character has tool", function()
				local mockCharacter, originalMockCharacter = setupMockR15Characters(true)
				EmoteUtility.SetPlayerCharacterPose(mockCharacter, EMOTE_ASSET_ID, function()
					return true
				end)
				expect(DEPRECATED_jointsMatch(mockCharacter, originalMockCharacter)).to.equal(false)
			end)
			it("SHOULD work with nil asset id", function()
				local mockCharacter, originalMockCharacter = setupMockR15Characters(true)
				EmoteUtility.SetPlayerCharacterPose(mockCharacter, nil, function()
					return true
				end)
				expect(DEPRECATED_jointsMatch(mockCharacter, originalMockCharacter)).to.equal(false)
			end)
			it("SHOULD leave an R6 avatar with no tool completely alone", function()
				local mockCharacter, originalMockCharacter = setupMockR6Characters(false)
				EmoteUtility.SetPlayerCharacterPose(mockCharacter, EMOTE_ASSET_ID, function()
					return true
				end)
				expect(DEPRECATED_jointsMatch(mockCharacter, originalMockCharacter)).to.equal(true)
			end)
			it("SHOULD move arm of R6 avatar with tool", function()
				local mockCharacter, originalMockCharacter = setupMockR6Characters(true)
				EmoteUtility.SetPlayerCharacterPose(mockCharacter, EMOTE_ASSET_ID, function()
					return true
				end)
				expect(DEPRECATED_jointsMatch(mockCharacter, originalMockCharacter)).to.equal(true)
			end)
		end)
	end

	if FFlagEmoteUtilityDontUseC1ToPose then
		describe("SetPlayerCharacterPoseWithMoodFallback", function()
			it("SHOULD return a function", function()
				expect(EmoteUtility.SetPlayerCharacterPoseWithMoodFallback).to.be.a("function")
			end)
			it("SHOULD apply animation and lead to a different pose and face", function()
				local mockCharacter, originalMockCharacter = setupMockR15Characters()
				EmoteUtility.SetPlayerCharacterPoseWithMoodFallback(mockCharacter, EMOTE_ASSET_ID, nil, true, function()
					return true
				end)
				expect(jointsMatch(mockCharacter, originalMockCharacter)).to.equal(false)
				expect(facesMatch(mockCharacter, originalMockCharacter)).to.equal(false)
			end)
			it("SHOULD apply animation and lead to a different pose and face when character has tool", function()
				local mockCharacter, originalMockCharacter = setupMockR15Characters(true)
				EmoteUtility.SetPlayerCharacterPoseWithMoodFallback(mockCharacter, EMOTE_ASSET_ID, nil, true, function()
					return true
				end)
				expect(jointsMatch(mockCharacter, originalMockCharacter)).to.equal(false)
				expect(facesMatch(mockCharacter, originalMockCharacter)).to.equal(false)
			end)
			it("SHOULD work with nil asset ids", function()
				local mockCharacter, originalMockCharacter = setupMockR15Characters(true)
				EmoteUtility.SetPlayerCharacterPoseWithMoodFallback(mockCharacter, nil, nil, true, function()
					return true
				end)
				-- Nothing changes...
				expect(jointsMatch(mockCharacter, originalMockCharacter)).to.equal(false)
				expect(facesMatch(mockCharacter, originalMockCharacter)).to.equal(true)
			end)
			it("SHOULD leave an R6 avatar with no tool completely alone", function()
				local mockCharacter, originalMockCharacter = setupMockR6Characters(false)
				EmoteUtility.SetPlayerCharacterPoseWithMoodFallback(mockCharacter, EMOTE_ASSET_ID, nil, true, function()
					return true
				end)
				expect(jointsMatch(mockCharacter, originalMockCharacter)).to.equal(true)
			end)
			it("SHOULD move arm of R6 avatar with tool", function()
				local mockCharacter, originalMockCharacter = setupMockR6Characters(true)
				EmoteUtility.SetPlayerCharacterPoseWithMoodFallback(mockCharacter, EMOTE_ASSET_ID, nil, true, function()
					return true
				end)
				expect(jointsMatch(mockCharacter, originalMockCharacter)).to.equal(true)
			end)
		end)
	end
end
