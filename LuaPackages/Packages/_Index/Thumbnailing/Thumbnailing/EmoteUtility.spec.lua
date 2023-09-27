return function()
	local EmoteUtility = require(script.Parent.EmoteUtility)
	local InsertService = game:GetService("InsertService")

	-- Note: this emote has face built in.
	local HELLO_EMOTE_ASSET_ID = 3576686446
	local HELLO_KEYFRAME_SEQUENCE_ASSET_ID = 10714359093
	local TOOL_HOLD_ANIMATION_ASSET_ID = 8675309
	local TOOL_HOLD_KEYFRAME_SEQUENCE_ASSET_ID = 507768375
	local COUNTRY_LINE_DANCE_EMOTE_ASSET_ID = 5915780563
	local COUNTRY_LINE_DANCE_KEYFRAME_SEQUENCE_ASSET_ID = 5915712534
	local DYLAN_DEFAULT_MOOD_ANIMATION_ASSET_ID = 10687293613
	local DYLAN_DEFAULT_KEYFRAME_SEQUENCE_MOOD_ASSET_ID = 10789320410

	type FaceControlsPropName =
		"ChinRaiserUpperLip"
		| "ChinRaiser"
		| "FlatPucker"
		| "Funneler"
		| "LowerLipSuck"
		| "LipPresser"
		| "LipsTogether"
		| "MouthLeft"
		| "MouthRight"
		| "Pucker"
		| "UpperLipSuck"
		| "LeftCheekPuff"
		| "LeftDimpler"
		| "LeftLipCornerDown"
		| "LeftLowerLipDepressor"
		| "LeftLipCornerPuller"
		| "LeftLipStretcher"
		| "LeftUpperLipRaiser"
		| "RightCheekPuff"
		| "RightDimpler"
		| "RightLipCornerDown"
		| "RightLowerLipDepressor"
		| "RightLipCornerPuller"
		| "RightLipStretcher"
		| "RightUpperLipRaiser"
		| "JawDrop"
		| "JawLeft"
		| "JawRight"
		| "Corrugator"
		| "LeftBrowLowerer"
		| "LeftOuterBrowRaiser"
		| "LeftNoseWrinkler"
		| "LeftInnerBrowRaiser"
		| "RightBrowLowerer"
		| "RightOuterBrowRaiser"
		| "RightInnerBrowRaiser"
		| "RightNoseWrinkler"
		| "EyesLookDown"
		| "EyesLookLeft"
		| "EyesLookUp"
		| "EyesLookRight"
		| "LeftCheekRaiser"
		| "LeftEyeUpperLidRaiser"
		| "LeftEyeClosed"
		| "RightCheekRaiser"
		| "RightEyeUpperLidRaiser"
		| "RightEyeClosed"
		| "TongueDown"
		| "TongueOut"
		| "TongueUp"

	local function mapAssetIdToFileName(assetId: number): string
		if assetId == tonumber(EmoteUtility.FallbackKeyframeSequenceAssetId) then
			return "fallbackKeyframeSequence.rbxm"
		end
		if assetId == HELLO_EMOTE_ASSET_ID then
			return "helloEmote.rbxm"
		end
		if assetId == HELLO_KEYFRAME_SEQUENCE_ASSET_ID then
			return "helloKeyframeSequence.rbxm"
		end
		if assetId == TOOL_HOLD_ANIMATION_ASSET_ID then
			return "toolHoldAnimation.rbxm"
		end
		if assetId == TOOL_HOLD_KEYFRAME_SEQUENCE_ASSET_ID then
			return "toolHoldKeyframeSequence.rbxm"
		end
		if assetId == COUNTRY_LINE_DANCE_EMOTE_ASSET_ID then
			return "countryLineDanceEmote.rbxm"
		end
		if assetId == COUNTRY_LINE_DANCE_KEYFRAME_SEQUENCE_ASSET_ID then
			return "countryLineDanceKeyframeSequence.rbxm"
		end
		if assetId == DYLAN_DEFAULT_MOOD_ANIMATION_ASSET_ID then
			return "dylanDefaultMoodAnimation.rbxm"
		end
		if assetId == DYLAN_DEFAULT_KEYFRAME_SEQUENCE_MOOD_ASSET_ID then
			return "dylanDefaultMoodKeyframeSequence.rbxm"
		end
		return assetId .. ".rbxm"
	end

	EmoteUtility.SetDebugLoadAssetsFromFiles(true, mapAssetIdToFileName)

	local function addJointsForKeyframe(character: Model, keyframe: Keyframe)
		local function recurAddJoints(parentPose: Pose?, poseObject: Pose)
			if not character:FindFirstChild(poseObject.Name) then
				local part = Instance.new("Part")
				part.Name = poseObject.Name
				part.Parent = character
			end
			if parentPose then
				local jointName = parentPose.Name .. "_" .. poseObject.Name
				-- Type checker doesn't like dynamic prop lookups. Cast to any to make it shut up.
				local anyCharacter = character :: any
				if anyCharacter[poseObject.Name]:FindFirstChild(jointName) == nil then
					local joint = Instance.new("Motor6D")
					joint.Name = jointName
					joint.Part0 = anyCharacter[parentPose.Name]
					joint.Part1 = anyCharacter[poseObject.Name]
					joint.Parent = anyCharacter[poseObject.Name]
				end
			end

			for _, subPose in pairs(poseObject:GetSubPoses()) do
				recurAddJoints(poseObject, subPose :: Pose)
			end
		end

		for _, poseObj in pairs(keyframe:GetPoses()) do
			recurAddJoints(nil, poseObj :: Pose)
		end
	end

	local function getMockR15Character(): Model
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

		local _, model = EmoteUtility.LoadAsset(TOOL_HOLD_ANIMATION_ASSET_ID)
		local toolHoldAnimation = model:GetChildren()[1] :: Animation

		local animate = Instance.new("LocalScript")
		animate.Name = "Animate"
		animate.Parent = mockModel

		local toolnone = Instance.new("StringValue")
		toolnone.Name = "toolnone"
		toolnone.Parent = animate

		toolHoldAnimation.Parent = toolnone
		toolHoldAnimation.Name = "ToolNoneAnim"

		return mockModel
	end

	local function getMockR6Character(): Model
		local model = InsertService:LoadLocalAsset("rbxasset://r6avatar.rbxm") :: Model
		assert(model, "model should be non-nil")
		return model
	end

	local function addTool(character: Model)
		local tool = Instance.new("Tool")
		tool.Parent = character
	end

	local function motor6DsMatch(char1: Model, char2: Model): boolean
		for _, part in ipairs(char1:GetChildren()) do
			local name = part.Name
			if part and part.ClassName == "Part" then
				local char1Part = part
				-- Type checker doesn't like dynamic prop lookups. Cast to any to make it shut up.
				local char2Part = char2:FindFirstChild(name)
				if char2Part then
					local c1Children = char1Part:GetChildren()
					local c2Children = char2Part:GetChildren()

					for _, c1Child in c1Children do
						if c1Child:IsA("Motor6D") then
							local c1ChildName = c1Child.Name
							local c2Child
							for _, child in c2Children do
								if child.Name == c1ChildName then
									if child:IsA("Motor6D") then
										c2Child = child
										break
									end
								end
							end
							if not c2Child then
								return false
							end
							if c1Child.Transform ~= c2Child.Transform then
								return false
							end
						end
					end
				else
					return false
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
	} :: { FaceControlsPropName }

	local function facesMatch(char1: Model, char2: Model): boolean
		local faceControls1 = char1:FindFirstChildWhichIsA("FaceControls", true)
		local faceControls2 = char2:FindFirstChildWhichIsA("FaceControls", true)

		if not faceControls1 then
			if not faceControls2 then
				return true
			else
				return false
			end
		else
			if not faceControls2 then
				return false
			end
		end

		assert(faceControls1, "faceControls1 should not be null")
		assert(faceControls2, "faceControls2 should not be null")

		for _, propName in faceControlsPropNames do
			propName = propName :: FaceControlsPropName
			-- Type checker doesn't like dynamic prop lookups. Cast to any to make it shut up.
			local v1 = (faceControls1 :: any)[propName]
			local v2 = (faceControls2 :: any)[propName]
			assert(v1, "v1 should not be null")
			assert(v2, "v2 should not be null")
			if v1 ~= v2 then
				return false
			end
		end

		return true
	end

	local function setupMockR15Characters(shouldAddTool: boolean?): (Model, Model)
		local _, model = EmoteUtility.LoadAsset(HELLO_EMOTE_ASSET_ID)
		local emoteAnimation = model:GetChildren()[1] :: Animation
		local thumbnailKeyframeNumber = EmoteUtility.GetNumberValueWithDefault(emoteAnimation, "ThumbnailKeyframe", nil)
		local rotationDegrees =
			EmoteUtility.GetNumberValueWithDefault(emoteAnimation, "ThumbnailCharacterRotation", 0) :: number
		local emoteAnimationClip = EmoteUtility.GetAnimationClip(emoteAnimation)
		assert(emoteAnimationClip, "emoteAnimationClip should be non-nil. Silence type checker.")
		assert(emoteAnimationClip:IsA("KeyframeSequence"), "emoteAnimationClip should be a KeyframeSequence")
		local emoteKeyframeSequence = emoteAnimationClip :: KeyframeSequence
		local thumbnailKeyframe =
			EmoteUtility.GetThumbnailKeyframe(thumbnailKeyframeNumber, emoteKeyframeSequence, rotationDegrees)

		local mockCharacter = getMockR15Character()
		addJointsForKeyframe(mockCharacter, thumbnailKeyframe)
		local originalMockCharacter = getMockR15Character()
		addJointsForKeyframe(originalMockCharacter, thumbnailKeyframe)

		if shouldAddTool then
			local _, toolModel = EmoteUtility.LoadAsset(TOOL_HOLD_ANIMATION_ASSET_ID)
			local toolHoldAnimation = toolModel:GetChildren()[1] :: Animation
			local toolAnimationClip = EmoteUtility.GetAnimationClip(toolHoldAnimation)
			assert(toolAnimationClip, "toolAnimationClip should be non-nil. Silence type checker.")
			assert(toolAnimationClip:IsA("KeyframeSequence"), "toolAnimationClip should be a KeyframeSequence")
			local toolKeyframeSequence = toolAnimationClip :: KeyframeSequence
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

	describe("LoadKeyframesForPose", function()
		it("SHOULD return a function", function()
			expect(EmoteUtility.LoadKeyframesForPose).to.be.a("function")
		end)
		it("SHOULD load animation for body, no face", function()
			local mockCharacter, _ = setupMockR15Characters()
			local keyframesForPose = EmoteUtility.LoadKeyframesForPose(mockCharacter, HELLO_EMOTE_ASSET_ID)
			assert(keyframesForPose, "keyframesForPose should be non-nil. Silence type checker")
			expect(keyframesForPose.originalAnimationAssetId).to.equal(HELLO_EMOTE_ASSET_ID)
			expect(keyframesForPose.finalAnimationAssetIdOrUrl).to.equal(HELLO_EMOTE_ASSET_ID)
			expect(keyframesForPose.poseKeyframe).never.to.equal(nil)
			expect(keyframesForPose.moodKeyframe).to.equal(nil)
			expect(keyframesForPose.defaultToolKeyframe).to.equal(nil)
			expect(keyframesForPose.suggestedKeyframeFromTool).to.equal(nil)
		end)
		it("SHOULD load animation and mood animation.", function()
			local mockCharacter, _ = setupMockR15Characters()
			local keyframesForPose = EmoteUtility.LoadKeyframesForPose(
				mockCharacter,
				COUNTRY_LINE_DANCE_EMOTE_ASSET_ID,
				DYLAN_DEFAULT_MOOD_ANIMATION_ASSET_ID
			)
			assert(keyframesForPose, "keyframesForPose should be non-nil. Silence type checker")
			expect(keyframesForPose.originalAnimationAssetId).to.equal(COUNTRY_LINE_DANCE_EMOTE_ASSET_ID)
			expect(keyframesForPose.finalAnimationAssetIdOrUrl).to.equal(COUNTRY_LINE_DANCE_EMOTE_ASSET_ID)
			expect(keyframesForPose.poseKeyframe).never.to.equal(nil)
			expect(keyframesForPose.moodKeyframe).never.to.equal(nil)
			expect(keyframesForPose.defaultToolKeyframe).to.equal(nil)
			expect(keyframesForPose.suggestedKeyframeFromTool).to.equal(nil)
		end)
		it("SHOULD load animation, mood animation, tool stuff.", function()
			local mockCharacter, _ = setupMockR15Characters(true)
			local keyframesForPose = EmoteUtility.LoadKeyframesForPose(mockCharacter, HELLO_EMOTE_ASSET_ID)
			assert(keyframesForPose, "keyframesForPose should be non-nil. Silence type checker")
			expect(keyframesForPose.originalAnimationAssetId).to.equal(HELLO_EMOTE_ASSET_ID)
			expect(keyframesForPose.finalAnimationAssetIdOrUrl).to.equal(HELLO_EMOTE_ASSET_ID)
			expect(keyframesForPose.poseKeyframe).never.to.equal(nil)
			expect(keyframesForPose.moodKeyframe).to.equal(nil)
			expect(keyframesForPose.defaultToolKeyframe).never.to.equal(nil)
			expect(keyframesForPose.suggestedKeyframeFromTool).to.equal(nil)
		end)
		it("SHOULD load no keyframes for nil closeup", function()
			local mockCharacter, _ = setupMockR15Characters(true)
			local keyframesForPose = EmoteUtility.LoadKeyframesForPose(mockCharacter, nil, nil, true, true)
			assert(keyframesForPose, "keyframesForPose should be non-nil. Silence type checker")
			expect(keyframesForPose.originalAnimationAssetId).to.equal(nil)
			expect(keyframesForPose.finalAnimationAssetIdOrUrl).to.equal(nil)
			expect(keyframesForPose.poseKeyframe).to.equal(nil)
			expect(keyframesForPose.moodKeyframe).to.equal(nil)
			expect(keyframesForPose.defaultToolKeyframe).to.equal(nil)
			expect(keyframesForPose.suggestedKeyframeFromTool).to.equal(nil)
		end)
		it("SHOULD load body and tool keyframes for nil fullbody", function()
			local mockCharacter, _ = setupMockR15Characters(true)
			local keyframesForPose = EmoteUtility.LoadKeyframesForPose(mockCharacter, nil, nil, true, false)
			assert(keyframesForPose, "keyframesForPose should be non-nil. Silence type checker")
			expect(keyframesForPose.originalAnimationAssetId).to.equal(nil)
			expect(keyframesForPose.finalAnimationAssetIdOrUrl).to.equal(
				EmoteUtility.FALLBACK_KEYFRAME_SEQUENCE_ASSET_URL
			)
			expect(keyframesForPose.poseKeyframe).never.to.equal(nil)
			expect(keyframesForPose.moodKeyframe).to.equal(nil)
			expect(keyframesForPose.defaultToolKeyframe).never.to.equal(nil)
			expect(keyframesForPose.suggestedKeyframeFromTool).to.equal(nil)
		end)
		it("SHOULD load nothing for r6 no mood.", function()
			local mockCharacter, _ = setupMockR6Characters(false)
			local keyframesForPose = EmoteUtility.LoadKeyframesForPose(mockCharacter, HELLO_EMOTE_ASSET_ID, nil)
			assert(keyframesForPose, "keyframesForPose should be non-nil. Silence type checker")
			expect(keyframesForPose.originalAnimationAssetId).to.equal(HELLO_EMOTE_ASSET_ID)
			expect(keyframesForPose.finalAnimationAssetIdOrUrl).to.equal(nil)
			expect(keyframesForPose.poseKeyframe).to.equal(nil)
			expect(keyframesForPose.moodKeyframe).to.equal(nil)
			expect(keyframesForPose.defaultToolKeyframe).to.equal(nil)
			expect(keyframesForPose.suggestedKeyframeFromTool).to.equal(nil)
		end)
		it("SHOULD not load mood for r6 w mood.", function()
			local mockCharacter, _ = setupMockR6Characters(false)
			local keyframesForPose = EmoteUtility.LoadKeyframesForPose(
				mockCharacter,
				HELLO_EMOTE_ASSET_ID,
				DYLAN_DEFAULT_MOOD_ANIMATION_ASSET_ID
			)
			assert(keyframesForPose, "keyframesForPose should be non-nil. Silence type checker")
			expect(keyframesForPose.originalAnimationAssetId).to.equal(HELLO_EMOTE_ASSET_ID)
			expect(keyframesForPose.finalAnimationAssetIdOrUrl).to.equal(nil)
			expect(keyframesForPose.poseKeyframe).to.equal(nil)
			expect(keyframesForPose.moodKeyframe).to.equal(nil)
			expect(keyframesForPose.defaultToolKeyframe).to.equal(nil)
			expect(keyframesForPose.suggestedKeyframeFromTool).to.equal(nil)
		end)
	end)

	describe("SetPlayerCharacterPoseWithMoodFallback", function()
		it("SHOULD return a function", function()
			expect(EmoteUtility.SetPlayerCharacterPoseWithMoodFallback).to.be.a("function")
		end)
		it("SHOULD apply animation and lead to a different pose and face", function()
			local mockCharacter, originalMockCharacter = setupMockR15Characters()
			EmoteUtility.SetPlayerCharacterPoseWithMoodFallback(mockCharacter, HELLO_EMOTE_ASSET_ID, nil, true)
			expect(motor6DsMatch(mockCharacter, originalMockCharacter)).to.equal(false)
			expect(facesMatch(mockCharacter, originalMockCharacter)).to.equal(false)
		end)
		it("SHOULD apply animation and lead to a different pose but same face", function()
			local mockCharacter, originalMockCharacter = setupMockR15Characters()
			EmoteUtility.SetPlayerCharacterPoseWithMoodFallback(
				mockCharacter,
				COUNTRY_LINE_DANCE_EMOTE_ASSET_ID,
				nil,
				true
			)
			expect(motor6DsMatch(mockCharacter, originalMockCharacter)).to.equal(false)
			expect(facesMatch(mockCharacter, originalMockCharacter)).to.equal(true)
		end)
		it("SHOULD apply animation with mood animation to lead to a different pose but and face", function()
			local mockCharacter, originalMockCharacter = setupMockR15Characters()
			EmoteUtility.SetPlayerCharacterPoseWithMoodFallback(
				mockCharacter,
				COUNTRY_LINE_DANCE_EMOTE_ASSET_ID,
				DYLAN_DEFAULT_MOOD_ANIMATION_ASSET_ID,
				true
			)
			expect(motor6DsMatch(mockCharacter, originalMockCharacter)).to.equal(false)
			expect(facesMatch(mockCharacter, originalMockCharacter)).to.equal(false)
		end)
		it("SHOULD apply animation and lead to a different pose and face when character has tool", function()
			local mockCharacter, originalMockCharacter = setupMockR15Characters(true)
			EmoteUtility.SetPlayerCharacterPoseWithMoodFallback(mockCharacter, HELLO_EMOTE_ASSET_ID, nil, true)
			expect(motor6DsMatch(mockCharacter, originalMockCharacter)).to.equal(false)
			expect(facesMatch(mockCharacter, originalMockCharacter)).to.equal(false)
		end)
		it("SHOULD work with nil asset ids", function()
			local mockCharacter, originalMockCharacter = setupMockR15Characters(true)
			EmoteUtility.SetPlayerCharacterPoseWithMoodFallback(mockCharacter, nil, nil, true)
			-- Body poses with fallback.  Face does not move.
			expect(motor6DsMatch(mockCharacter, originalMockCharacter)).to.equal(false)
			expect(facesMatch(mockCharacter, originalMockCharacter)).to.equal(true)
		end)
		it("SHOULD leave an R6 avatar with no tool completely alone", function()
			local mockCharacter, originalMockCharacter = setupMockR6Characters(false)
			EmoteUtility.SetPlayerCharacterPoseWithMoodFallback(mockCharacter, HELLO_EMOTE_ASSET_ID, nil, true)
			expect(motor6DsMatch(mockCharacter, originalMockCharacter)).to.equal(true)
			expect(facesMatch(mockCharacter, originalMockCharacter)).to.equal(true)
		end)
		it("SHOULD move an R6 avatar that isn't at rest.", function()
			local mockCharacter, originalMockCharacter = setupMockR6Characters(false)

			local torso = mockCharacter:FindFirstChild("Torso")
			local rightShoulder = torso:FindFirstChild("Right Shoulder") :: Motor6D
			rightShoulder.Transform = CFrame.fromEulerAnglesYXZ(math.rad(-15), math.rad(-30), math.rad(-45))
			EmoteUtility.ForceAnimationToStep(mockCharacter)

			EmoteUtility.SetPlayerCharacterPoseWithMoodFallback(mockCharacter, HELLO_EMOTE_ASSET_ID, nil, true)
			expect(motor6DsMatch(mockCharacter, originalMockCharacter)).to.equal(false)
			expect(facesMatch(mockCharacter, originalMockCharacter)).to.equal(true)
		end)
		it("SHOULD not apply mood to R6 avatar", function()
			local mockCharacter, originalMockCharacter = setupMockR6Characters(false)
			EmoteUtility.SetPlayerCharacterPoseWithMoodFallback(
				mockCharacter,
				HELLO_EMOTE_ASSET_ID,
				DYLAN_DEFAULT_MOOD_ANIMATION_ASSET_ID,
				true
			)
			expect(motor6DsMatch(mockCharacter, originalMockCharacter)).to.equal(true)
			expect(facesMatch(mockCharacter, originalMockCharacter)).to.equal(true)
		end)
		it("SHOULD move arm of R6 avatar with tool no mood", function()
			local mockCharacter, originalMockCharacter = setupMockR6Characters(true)
			EmoteUtility.SetPlayerCharacterPoseWithMoodFallback(mockCharacter, HELLO_EMOTE_ASSET_ID, nil, true)
			expect(motor6DsMatch(mockCharacter, originalMockCharacter)).to.equal(true)
			expect(facesMatch(mockCharacter, originalMockCharacter)).to.equal(true)
		end)
	end)

	describe("Calculate Thumbnail Zoom Extents", function()
		it("SHOULD return a function", function()
			expect(EmoteUtility.ThumbnailZoomExtents).to.be.a("function")
		end)
		it("SHOULD produce a particular CFrame for a set of parameters", function()
			local mockCharacter, _originalMockCharacter = setupMockR15Characters()
			local cameraCFrame = EmoteUtility.ThumbnailZoomExtents(
				mockCharacter, -- character
				20, -- FOV
				1, -- horizontalOffset
				2, -- verticalOffset
				0.5 -- thumbnailZoom
			)
			-- TODO within this test we might consider checking every of the parameters below (as for the third one there might be a rounding problem)
			-- currently leaving this as is to avoid 9 lines of comparison.
			expect(cameraCFrame).to.equal(CFrame.new(1, -2, -26.2599335, -1, 0, -0, -0, 1, -0, -0, 0, -1))
		end)
	end)
end
