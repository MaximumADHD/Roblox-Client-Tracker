return function()
	local options = {
		keyPath = "networkStatus"
	}
	local installReducer = require(script.Parent.installReducer)(options)
	local buildActionName = require(script.Parent.buildActionName)
	local getStatus = require(script.Parent.getStatus)(options)
	local reducer = installReducer()

	describe("GIVEN an action with one id", function()
		local initialAction = {
			type = buildActionName(options),
			ids = { "123" },
			keymapper = function(id) return "key:" .. id end,
			status = "test",
		}

		it("SHOULD return a new UnorderedMap with the key mapped properly", function()
			local result = reducer(nil, initialAction)

			expect(result).to.be.ok()
			expect(result:get("key:123")).to.equal("test")
		end)

		describe("GIVEN another action that rewrites the previous key", function()
			local overwriteAction = {
				type = buildActionName(options),
				ids = { "123" },
				keymapper = function(id) return "key:" .. id end,
				status = "next-best-thing",
			}

			it("SHOULD update the key accordingly", function()
				local result = reducer(reducer(nil, initialAction), overwriteAction)

				expect(result).to.be.ok()
				expect(result:get("key:123")).to.equal("next-best-thing")
			end)
		end)

		it("SHOULD be retrievable with getStatus", function()
			local state = {
				networkStatus = reducer(nil, initialAction),
			}
			local result = getStatus(state, "key:123")
			expect(result).to.equal("test")
		end)
	end)

	describe("GIVEN an action with multiple ids", function()
		local batchAction = {
			type = buildActionName(options),
			ids = { "123", "456", "789" },
			keymapper = function(id) return "key:" .. id end,
			status = "the-same-status",
		}

		it("SHOULD update all keys to the same status", function()
			local result = reducer(nil, batchAction)

			expect(result).to.be.ok()
			expect(result:get("key:123")).to.equal("the-same-status")
			expect(result:get("key:456")).to.equal("the-same-status")
			expect(result:get("key:789")).to.equal("the-same-status")
		end)
	end)
end
