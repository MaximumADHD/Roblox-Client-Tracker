return function()
	local Plugin = script.Parent.Parent

	local TestHelpers = require(Plugin.RhodiumTests.TestHelpers)
	local TestPaths = require(Plugin.RhodiumTests.TestPaths)
	local runTest = TestHelpers.runTest

	local Templates = require(Plugin.Src.Util.Templates)

	local testAnimationData = Templates.animationData()
	local tracks = {
		"Head",
		"UpperTorso",
		"LowerTorso",
		"LeftUpperArm",
		"LeftLowerArm",
		"LeftHand",
		"RightUpperArm",
		"RightLowerArm",
		"RightHand",
		"LeftUpperLeg",
		"LeftLowerLeg",
		"LeftFoot",
		"RightUpperLeg",
		"RightLowerLeg",
		"RightFoot",
	}

	for _, trackName in ipairs(tracks) do
		local keyframes = {}
		local data = {}
		for index = 0, 300 do
			table.insert(keyframes, index)
			data[index] = {}
		end
		local track = {
			Keyframes = keyframes,
			Data = data,
		}
		testAnimationData.Instances.Root.Tracks[trackName] = track
	end
	testAnimationData.Metadata.EndTick = 500

	it("should be able to load a large animation", function()
		runTest(function(test)
			local store = test:getStore()
			TestHelpers.loadAnimation(store, testAnimationData)
		end)
	end)

	it("should show keyframe clusters if the animation is large", function()
		runTest(function(test)
			local store = test:getStore()
			local container = test:getContainer()
			TestHelpers.loadAnimation(store, testAnimationData)
			local testTrack = TestPaths.getTrack(container, "Track_LowerTorso")
			local summaryTrack = TestPaths.getTrack(container, "SummaryTrack")

			expect(#testTrack:GetChildren()).to.equal(1)
			expect(#summaryTrack:GetChildren()).to.equal(1)
		end)
	end)
end
