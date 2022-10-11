return function()
	local SkeletonUtils = require(script.Parent.SkeletonUtils)

	local testSkeleton = {
		Names = { "Hips", "Neck", "Head" },
		Parents = { 0, 1, 2 },
	}

	describe("buildSkeletonHierarchy", function()
		it("should build a skeleton hierarchy table", function()
			local hierarchy = SkeletonUtils.buildSkeletonHierarchy(testSkeleton.Names, testSkeleton.Parents)
			expect(hierarchy).to.be.ok()
			expect(hierarchy.Hips).to.be.ok()
			expect(hierarchy.Hips.Neck).to.be.ok()
			expect(hierarchy.Hips.Neck.Head).to.be.ok()
		end)
	end)

	describe("getUnusedSkeletonTracks", function()
		it("should return a list of tracks which are unused", function()
			local tracks = { { Name = "Hips" } }
			local unused = SkeletonUtils.getUnusedSkeletonTracks(testSkeleton.Names, tracks)
			expect(unused).to.be.ok()
			expect(#unused).to.equal(2)
			expect(unused[1].Name).to.equal("Head")
			expect(unused[2].Name).to.equal("Neck")
		end)
	end)
end
