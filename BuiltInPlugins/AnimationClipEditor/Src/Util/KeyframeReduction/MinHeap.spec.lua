return function()
	local MinHeap = require(script.Parent.MinHeap)

	local function _tri(area: number)
		return { area = area }
	end

	describe("MinHeap", function()
		it("should sort the elements in ascending order", function()
			local values = { 5, 1, 2, 2, 7, 3, 1, 4, 9, 10, 5, 12, 6, 6, 6, 0 }
			local heap = MinHeap.new()

			for _, v in values do
				heap:push(_tri(v))
			end

			table.sort(values)

			for _, v in values do
				expect(heap:pop().area).to.equal(v)
			end
		end)

		it("should return nil when empty", function()
			local heap = MinHeap.new()
			expect(heap:pop()).never.to.be.ok()

			heap:push(_tri(1))
			heap:push(_tri(2))
			expect(heap:pop().area).to.equal(1)
			expect(heap:pop().area).to.equal(2)
			expect(heap:pop()).never.to.be.ok()
		end)
	end)
end
