return function()
	local DoubleClickDetector = require(script.Parent.DoubleClickDetector)

	describe("new", function()
		it("should return a new DoubleClickDetector", function()
			local detector = DoubleClickDetector.new()
			expect(detector).to.be.ok()
		end)
	end)

	describe("isDoubleClick", function()
		it("should return false on a single click", function()
			local detector = DoubleClickDetector.new()
			expect(detector:isDoubleClick()).to.equal(false)
		end)

		it("should return true on a double click", function()
			local detector = DoubleClickDetector.new()
			detector:isDoubleClick()
			expect(detector:isDoubleClick()).to.equal(true)
		end)
	end)
end
