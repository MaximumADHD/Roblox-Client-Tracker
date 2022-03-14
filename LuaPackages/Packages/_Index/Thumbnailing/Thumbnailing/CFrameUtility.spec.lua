return function()
	local CFrameUtility = require(script.Parent.CFrameUtility)

	describe("CalculateTargetCFrame", function()
		it("SHOULD return a function", function()
			expect(CFrameUtility.CalculateTargetCFrame).to.be.a("function")
		end)

		it("SHOULD generate a CFrame with a flat look vector", function()
			local pos = Vector3.new(1, 2, 3)
			local lookTarget = pos + Vector3.new(4, 5, 6)
			local originalCFrame = CFrame.lookAt(pos, lookTarget)
			local outputCFrame = CFrameUtility.CalculateTargetCFrame(originalCFrame)

			local adjustedLookTarget = pos + Vector3.new(4, 0, 6)
			local expectedCFrame = CFrame.lookAt(pos, adjustedLookTarget)

			expect(outputCFrame.Position).to.equal(expectedCFrame.Position)
			local dotDelta = math.abs(1 - outputCFrame.LookVector:Dot(expectedCFrame.LookVector))
			expect(dotDelta < 0.001).to.equal(true)
		end)

		it("SHOULD gracefully handle CFrame looking straight down or up", function()
			local pos = Vector3.new(1, 2, 3)
			local lookTarget = pos + Vector3.new(0, -2, 0)
			local originalCFrame = CFrame.lookAt(pos, lookTarget)
			local outputCFrame = CFrameUtility.CalculateTargetCFrame(originalCFrame)

			local expectedResultantLookVector = originalCFrame.UpVector

			expect(outputCFrame.Position).to.equal(pos)
			expect(outputCFrame.LookVector).to.equal(expectedResultantLookVector)
		end)
	end)
end
