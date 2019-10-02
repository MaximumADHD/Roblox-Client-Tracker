return function()
	local binarySearch = require(script.Parent.binarySearch)
	it("Works for a sorted list", function()
		local list = { 1, 3, 5, 6, 7 }
		expect(binarySearch(list, 1)).to.equal(1)
		expect(binarySearch(list, 3)).to.equal(2)
		expect(binarySearch(list, 5)).to.equal(3)
		expect(binarySearch(list, 6)).to.equal(4)
		expect(binarySearch(list, 7)).to.equal(5)
		expect(binarySearch(list, 100)).to.never.be.ok()
	end)

	it("Works for a sorted list with duplicates", function()
		local list = { 1, 1, 3, 3, 3, 5, 5, 10, 11 }
		expect(binarySearch(list, 1)).to.equal(1)
		expect(binarySearch(list, 3)).to.equal(3)
		expect(binarySearch(list, 5)).to.equal(6)
		expect(binarySearch(list, 10)).to.equal(8)
		expect(binarySearch(list, 11)).to.equal(9)
	end)

	it("Works for an empty list", function()
		local list = {}
		expect(binarySearch(list, 1)).to.never.be.ok()
	end)

	it("Works for a special comparator", function()
		local list = { 7, 6, 5, 5, 3, 1 }
		local reverse = function(lhs, rhs)
			return rhs < lhs
		end
		expect(binarySearch(list, 7, reverse)).to.equal(1)
		expect(binarySearch(list, 6, reverse)).to.equal(2)
		expect(binarySearch(list, 5, reverse)).to.equal(3)
		expect(binarySearch(list, 3, reverse)).to.equal(5)
		expect(binarySearch(list, 1, reverse)).to.equal(6)
	end)
end