return function()
	local InsertService = game:GetService("InsertService")
	local EmoteUtility = require(script.Parent.EmoteUtility)

	-- 'Hello' anim https://www.roblox.com/catalog/3576686446/Hello
	local EMOTE_ASSET_ID = 3576686446
	local TOOL_HOLD_ASSET_ID = 507768375


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
					joint.C1 = CFrame.new(1, 2, 3)
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

		local toolHoldAnim = InsertService:LoadAsset(TOOL_HOLD_ASSET_ID):GetChildren()[1]
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

	local function jointsMatch(char1, char2)
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

	local function setupMockR15Characters(shouldAddTool)
		local emoteAnim = InsertService:LoadAsset(EMOTE_ASSET_ID):GetChildren()[1]
		local thumbnailKeyframeNumber = EmoteUtility.GetNumberValueWithDefault(emoteAnim,
			"ThumbnailKeyframe",
			nil)
		local rotationDegrees = EmoteUtility.GetNumberValueWithDefault(emoteAnim,
			"ThumbnailCharacterRotation",
			0)
		local emoteKeyframes = EmoteUtility.GetEmoteKeyFrames(emoteAnim)
		local thumbnailKeyframe = EmoteUtility.GetThumbnailKeyframe(thumbnailKeyframeNumber,
			emoteKeyframes,
			rotationDegrees)

		local mockCharacter = getMockR15Character()
		addJointsForKeyframe(mockCharacter, thumbnailKeyframe)
		local originalMockCharacter = getMockR15Character()
		addJointsForKeyframe(originalMockCharacter, thumbnailKeyframe)

		if shouldAddTool then
			local toolHoldAnim = InsertService:LoadAsset(TOOL_HOLD_ASSET_ID):GetChildren()[1]
			local toolKeyframes = EmoteUtility.GetEmoteKeyFrames(toolHoldAnim)
			local toolKeyframe = EmoteUtility.GetThumbnailKeyframe(nil, toolKeyframes, 0)

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

	describe("SetPlayerCharacterPose", function()
		it("SHOULD return a function", function()
			expect(EmoteUtility.SetPlayerCharacterPose).to.be.a("function")
		end)
		it("SHOULD cancel if told to", function()
			local mockCharacter, originalMockCharacter = setupMockR15Characters()
			EmoteUtility.SetPlayerCharacterPose(mockCharacter, EMOTE_ASSET_ID, function()
				return false
			end)
			expect(jointsMatch(mockCharacter, originalMockCharacter)).to.equal(true)
		end)
		it("SHOULD apply animation and lead to a different pose", function()
			local mockCharacter, originalMockCharacter = setupMockR15Characters()
			EmoteUtility.SetPlayerCharacterPose(mockCharacter, EMOTE_ASSET_ID, function()
				return true
			end)
			expect(jointsMatch(mockCharacter, originalMockCharacter)).to.equal(false)
		end)
		it("SHOULD apply animation and lead to a different pose when character has tool", function()
			local mockCharacter, originalMockCharacter = setupMockR15Characters(true)
			EmoteUtility.SetPlayerCharacterPose(mockCharacter, EMOTE_ASSET_ID, function()
				return true
			end)
			expect(jointsMatch(mockCharacter, originalMockCharacter)).to.equal(false)
		end)
		it("SHOULD work with nil asset id", function()
			local mockCharacter, originalMockCharacter = setupMockR15Characters(true)
			EmoteUtility.SetPlayerCharacterPose(mockCharacter, nil, function()
				return true
			end)
			expect(jointsMatch(mockCharacter, originalMockCharacter)).to.equal(false)
		end)
		it("SHOULD leave an R6 avatar with no tool completely alone", function()
			local mockCharacter, originalMockCharacter = setupMockR6Characters(false)
			EmoteUtility.SetPlayerCharacterPose(mockCharacter, EMOTE_ASSET_ID, function()
				return true
			end)
			expect(jointsMatch(mockCharacter, originalMockCharacter)).to.equal(true)
		end)
		it("SHOULD move arm of R6 avatar with tool", function()
			local mockCharacter, originalMockCharacter = setupMockR6Characters(true)
			EmoteUtility.SetPlayerCharacterPose(mockCharacter, EMOTE_ASSET_ID, function()
				return true
			end)
			expect(jointsMatch(mockCharacter, originalMockCharacter)).to.equal(true)
		end)
	end)
end
