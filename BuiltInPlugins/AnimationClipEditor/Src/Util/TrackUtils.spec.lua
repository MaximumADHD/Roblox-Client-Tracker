return function()
	local Plugin = script.Parent.Parent.Parent
	local TrackUtils = require(script.Parent.TrackUtils)
	local Constants = require(Plugin.Src.Util.Constants)

	local testTracks = {
		{
			Instance = "Root",
			Name = "TestTrack1",
			Keyframes = {1, 2, 3, 4, 5},
			Expanded = false,
			Type = Constants.TRACK_TYPES.CFrame,
		},
		{
			Instance = "Root",
			Name = "TestTrack2",
			Keyframes = {2, 7, 8, 10},
			Expanded = false,
			Type = Constants.TRACK_TYPES.CFrame,
		},
		{
			Instance = "Root",
			Name = "TestTrack3",
			Keyframes = {1},
			Expanded = true,
			Type = Constants.TRACK_TYPES.CFrame,
		},
		{
			Instance = "Root",
			Name = "TestTrack4",
			Keyframes = {1},
			Expanded = false,
			Type = Constants.TRACK_TYPES.CFrame,
		},
	}

	describe("countVisibleKeyframes", function()
		it("should be able to count multiple keyframes", function()
			local keyframes = testTracks[1].Keyframes
			local count = TrackUtils.countVisibleKeyframes(keyframes, 1, 5)
			expect(count).to.equal(5)

			count = TrackUtils.countVisibleKeyframes(keyframes, 0, 7)
			expect(count).to.equal(5)

			count = TrackUtils.countVisibleKeyframes(keyframes, 2, 4)
			expect(count).to.equal(3)

			count = TrackUtils.countVisibleKeyframes(keyframes, 0, 1)
			expect(count).to.equal(1)
		end)

		it("should be able to count zero keyframes", function()
			local keyframes = testTracks[1].Keyframes
			local count = TrackUtils.countVisibleKeyframes(keyframes, 10, 20)
			expect(count).to.equal(0)
		end)

		it("should be able to count with a non-continuous array", function()
			local keyframes = testTracks[2].Keyframes
			local count = TrackUtils.countVisibleKeyframes(keyframes, 0, 12)
			expect(count).to.equal(4)
		end)
	end)

	describe("getKeyframesExtents", function()
		it("should be able get keyframe extents", function()
			local keyframes = testTracks[1].Keyframes
			local startIndex, endIndex = TrackUtils.getKeyframesExtents(keyframes, 1, 5)
			expect(startIndex).to.equal(1)
			expect(endIndex).to.equal(5)

			startIndex, endIndex = TrackUtils.getKeyframesExtents(keyframes, 2, 7)
			expect(startIndex).to.equal(2)
			expect(endIndex).to.equal(5)

			startIndex, endIndex = TrackUtils.getKeyframesExtents(keyframes, 2, 4)
			expect(startIndex).to.equal(2)
			expect(endIndex).to.equal(4)
		end)

		it("should be able to get no extents", function()
			local keyframes = testTracks[1].Keyframes
			local startIndex, endIndex = TrackUtils.getKeyframesExtents(keyframes, 10, 20)
			expect(startIndex).to.equal(endIndex)
		end)
	end)

	describe("getTrackFromPosition", function()
		it("should get the summary track", function()
			local track = TrackUtils.getTrackFromPosition(testTracks, 1, 0)
			expect(track).to.equal(0)
		end)

		it("should get the current track when topTrackIndex is 1", function()
			local yPos = Constants.SUMMARY_TRACK_HEIGHT + Constants.TRACK_HEIGHT + 1
			local track = TrackUtils.getTrackFromPosition(testTracks, 1, yPos)
			expect(track).to.equal(2)
		end)

		it("should get the current track when topTrackIndex is not 1", function()
			local yPos = Constants.SUMMARY_TRACK_HEIGHT + 1
			local track = TrackUtils.getTrackFromPosition(testTracks, 3, yPos)
			expect(track).to.equal(3)
		end)

		it("should work with expanded tracks", function()
			local yPos = Constants.SUMMARY_TRACK_HEIGHT + (Constants.TRACK_HEIGHT * 4) + 1
			local track = TrackUtils.getTrackFromPosition(testTracks, 3, yPos)
			expect(track).to.equal(5)
		end)
	end)

	describe("traverseKeyframeRange", function()
		it("should visit the keyframes within the provided range", function()
			local keyframes = {1, 2, 3, 3.5, 4, 5, 6}
			local visited = {}
			TrackUtils.traverseKeyframeRange(keyframes, 3, 5, function(frame)
				table.insert(visited, frame)
			end)
			table.sort(visited)
			expect(#visited).to.equal(4)
			expect(visited[1]).to.equal(3)
			expect(visited[2]).to.equal(3.5)
			expect(visited[3]).to.equal(4)
			expect(visited[4]).to.equal(5)
		end)
	end)

	describe("getSummaryKeyframes", function()
		it("should get the summary keyframes for the provided tracks", function()
			local summaryFrames = TrackUtils.getSummaryKeyframes(testTracks, 0, 10)
			expect(#summaryFrames).to.equal(8)
			expect(summaryFrames[1]).to.equal(1)
			expect(summaryFrames[2]).to.equal(2)
			expect(summaryFrames[3]).to.equal(3)
			expect(summaryFrames[4]).to.equal(4)
			expect(summaryFrames[5]).to.equal(5)
			expect(summaryFrames[6]).to.equal(7)
			expect(summaryFrames[7]).to.equal(8)
			expect(summaryFrames[8]).to.equal(10)
		end)
	end)

	describe("getTrackIndex", function()
		it("should return correct track index", function()
			local index = TrackUtils.getTrackIndex(testTracks, "TestTrack3")
			expect(index).to.equal(3)
		end)
	end)

	describe("getTrackYPosition", function()
		it("should return correct track position", function()
			local yPos = TrackUtils.getTrackYPosition(testTracks, 2, 4)
			expect(yPos).to.equal(Constants.SUMMARY_TRACK_HEIGHT + 4 * Constants.TRACK_HEIGHT)

			yPos = TrackUtils.getTrackYPosition(testTracks, 1, 2)
			expect(yPos).to.equal(Constants.SUMMARY_TRACK_HEIGHT + Constants.TRACK_HEIGHT)
		end)
	end)
end