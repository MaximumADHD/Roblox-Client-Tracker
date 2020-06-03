local dependencies = require(script.Parent.dependencies)
local Promise = dependencies.Promise

return function()
	local Paginator = require(script.Parent.Paginator)

	describe("it should initialize properly", function()
		local mockFetchInit = function(params)
			return function()
				return Promise.resolve():andThen(function()
					return params-1, params+1
				end)
			end
		end

		local mockFetchWithCursor = function(cursor)
			return Promise.resolve():andThen(function()
				local newPrevCursor = cursor - 1
				local newNextCursor = cursor + 1
				return newPrevCursor, newNextCursor
			end)
		end

		local startCursor = 4

		local paginator = Paginator.new({
			pageSize = 10,
			fetchInit = mockFetchInit(startCursor),
			fetchWithCursor = mockFetchWithCursor,
		})

		it("given proper values", function()
			expect(paginator).to.be.ok()
		end)
	end)

	describe("it should return the correct cursors", function()
		local mockFetchInit = function(params)
			return function()
				return Promise.resolve():andThen(function()
					return params-1, params+1
				end)
			end
		end

		local mockFetchWithCursor = function(cursor)
			return Promise.resolve():andThen(function()
				local newPrevCursor = cursor - 1
				local newNextCursor = cursor + 1
				return newPrevCursor, newNextCursor
			end)
		end

		local startCursor = 4

		it("when fetching next", function()
			local paginator = Paginator.new({
				pageSize = 10,
				fetchInit = mockFetchInit(startCursor),
				fetchWithCursor = mockFetchWithCursor,
			})

			paginator:getNext()
			local newCursor = paginator:getCurrent()

			expect(newCursor).to.equal(startCursor + 1)
		end)

		it("when fetching previous", function()
			local paginator = Paginator.new({
				pageSize = 10,
				fetchInit = mockFetchInit(startCursor),
				fetchWithCursor = mockFetchWithCursor,
			})

			paginator:getPrevious()
			local newCursor = paginator:getCurrent()

			expect(newCursor).to.equal(startCursor - 1)
		end)

		it("when fetching next then previous", function()
			local paginator = Paginator.new({
				pageSize = 10,
				fetchInit = mockFetchInit(startCursor),
				fetchWithCursor = mockFetchWithCursor,
			})

			paginator:getNext()
			paginator:getPrevious()
			local newCursor = paginator:getCurrent()

			expect(newCursor).to.equal(startCursor)
		end)

		it("when fetching previous then next", function()
			local paginator = Paginator.new({
				pageSize = 10,
				fetchInit = mockFetchInit(startCursor),
				fetchWithCursor = mockFetchWithCursor,
			})

			paginator:getPrevious()
			paginator:getNext()
			local newCursor = paginator:getCurrent()

			expect(newCursor).to.equal(startCursor)
		end)

		it("when fetching next next previous", function()
			local paginator = Paginator.new({
				pageSize = 10,
				fetchInit = mockFetchInit(startCursor),
				fetchWithCursor = mockFetchWithCursor,
			})

			paginator:getPrevious()
			paginator:getNext()
			paginator:getNext()
			local newCursor = paginator:getCurrent()

			expect(newCursor).to.equal(startCursor + 1)
		end)

		it("when fetching previous previous next", function()
			local paginator = Paginator.new({
				pageSize = 10,
				fetchInit = mockFetchInit(startCursor),
				fetchWithCursor = mockFetchWithCursor,
			})

			paginator:getPrevious()
			paginator:getPrevious()
			paginator:getNext()
			local newCursor = paginator:getCurrent()

			expect(newCursor).to.equal(startCursor - 1)
		end)

		it("when fetching previous next next", function()
			local paginator = Paginator.new({
				pageSize = 10,
				fetchInit = mockFetchInit(startCursor),
				fetchWithCursor = mockFetchWithCursor,
			})

			paginator:getPrevious()
			paginator:getNext()
			paginator:getNext()
			local newCursor = paginator:getCurrent()

			expect(newCursor).to.equal(startCursor + 1)
		end)

		it("when fetching next previous previous", function()
			local paginator = Paginator.new({
				pageSize = 10,
				fetchInit = mockFetchInit(startCursor),
				fetchWithCursor = mockFetchWithCursor,
			})

			paginator:getNext()
			paginator:getPrevious()
			paginator:getPrevious()
			local newCursor = paginator:getCurrent()

			expect(newCursor).to.equal(startCursor - 1)
		end)

		it("when fetching next next next", function()
			local paginator = Paginator.new({
				pageSize = 10,
				fetchInit = mockFetchInit(startCursor),
				fetchWithCursor = mockFetchWithCursor,
			})

			paginator:getNext()
			paginator:getNext()
			paginator:getNext()
			local newCursor = paginator:getCurrent()

			expect(newCursor).to.equal(startCursor + 3)
		end)

		it("when fetching previous previous previous", function()
			local paginator = Paginator.new({
				pageSize = 10,
				fetchInit = mockFetchInit(startCursor),
				fetchWithCursor = mockFetchWithCursor,
			})

			paginator:getPrevious()
			paginator:getPrevious()
			paginator:getPrevious()
			local newCursor = paginator:getCurrent()

			expect(newCursor).to.equal(startCursor - 3)
		end)
	end)
end
