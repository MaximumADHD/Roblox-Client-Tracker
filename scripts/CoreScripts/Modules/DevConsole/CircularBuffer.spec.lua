return function()
	local CircularBuffer = require(script.Parent.CircularBuffer)

	it("should not allow initialize to size 0", function()
		expect(function()
			local buffer = CircularBuffer.new(0)
		end).to.throw()

		expect(function()
			local buffer = CircularBuffer.new()
		end).to.throw()
	end)

	it("should push_back() past its max size and loop over itself", function()
		local buffer = CircularBuffer.new(1)
		buffer:push_back("test1")
		buffer:push_back("test2")
		buffer:push_back("test3")
		expect(buffer:getSize()).to.equal(1)
		expect(buffer:front()).to.equal("test3")

		buffer:setSize(5)
		buffer:reset()
		expect(buffer:getSize()).to.equal(0)

		local expectedData = { 1, 2, 3, 4, 5 }
		for _, v in ipairs(expectedData) do
			buffer:push_back(v)
		end

		expect(buffer:front()).to.equal(1)
		buffer:push_back(6)
		expect(buffer:front()).to.equal(2)
	end)

	it("should sort and clip data during setSize() where applicable", function()
		local buffer = CircularBuffer.new(100)
		for i = 1, 100 do
			buffer:push_back(i)
		end

		expect(buffer:getSize()).to.equal(100)

		buffer:setSize(1)
		expect(buffer:getSize()).to.equal(1)

		buffer:setSize(100)
		expect(buffer:getSize()).to.equal(1)
	end)

	it("should maintain the same front() value until it loops over itself", function()
		local buffer = CircularBuffer.new(10)
		expect(buffer:front()).to.equal(nil)

		for i = 1, 10 do
			buffer:push_back(i)
			expect(buffer:front()).to.equal(1)
		end

		buffer:push_back(11)
		expect(buffer:front()).to.equal(2)

		buffer:push_back(12)
		expect(buffer:front()).to.equal(3)
	end)

	it("should always return the last push_back() value when calling back()", function()
		local buffer = CircularBuffer.new(10)
		expect(buffer:back()).to.equal(nil)

		for i = 1, 20 do
			buffer:push_back(i)
			expect(buffer:back()).to.equal(i)
		end
	end)

	it("should iterate via iterator and terminate with a nil", function()
		local buffer = CircularBuffer.new(100)
		for i = 1, 100 do
			buffer:push_back(i)
		end

		local it = buffer:iterator()
		local val = it:next()
		local count = 1
		while val do
			expect(val).to.equal(count)

			val = it:next()
			count = count + 1
		end

		expect(val).to.equal(nil)
	end)

	it("should maintain expected getData() after push_back()", function()
		local buffer = CircularBuffer.new(5)
		local expectedData = {1, 2, 3, 4, 5}

		for _, v in ipairs(expectedData) do
			buffer:push_back(v)
		end

		local data = buffer:getData()

		for i,v in ipairs(expectedData) do
			expect(data[i].entry).to.equal(v)
		end

		buffer:push_back(6)
		local newExpectedData = {6, 2, 3, 4, 5}
		data = buffer:getData()
		for i,v in ipairs(newExpectedData) do
			expect(data[i].entry).to.equal(v)
		end
	end)

	it("should loop to access the correct values when using at() and reverseAt", function()
		local buffer = CircularBuffer.new(10)
		local expectedData = {2, 4, 6, 8, 0, 9, 7, 5, 3, 1}
		for _,v in ipairs(expectedData) do
			buffer:push_back(v)
		end

		for i, v in ipairs(expectedData) do
			expect(buffer:at(i)).to.equal(v)
		end


		expect(buffer:at(0)).to.equal(1)
		expect(buffer:at(100)).to.equal(1)
		expect(buffer:at(-100)).to.equal(1)

		expect(buffer:at(0)).to.equal(1)
		expect(buffer:at(100)).to.equal(1)
		expect(buffer:at(-100)).to.equal(1)

		expect(buffer:reverseAt(1)).to.equal(1)
		expect(buffer:reverseAt(5)).to.equal(9)
		expect(buffer:reverseAt(0)).to.equal(2)
		expect(buffer:reverseAt(100)).to.equal(2)
		expect(buffer:reverseAt(-100)).to.equal(2)
	end)
end