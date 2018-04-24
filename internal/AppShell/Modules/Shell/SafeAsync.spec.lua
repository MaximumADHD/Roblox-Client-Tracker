return function()
    local MakeSafeAsync = require(script.Parent.SafeAsync)

	describe("initial state", function()
		it("should return an initial table when init with async function", function()
			local safeAsync = MakeSafeAsync({asyncFunc = function() end})
			expect(safeAsync).to.be.a("table")
		end)
    end)

	describe("async function", function()
		it("async function gets called after calling the safeAsync object", function()
            local asyncCalledCounter = 0
            local safeAsync = MakeSafeAsync({asyncFunc = function() asyncCalledCounter = asyncCalledCounter + 1 end})
            safeAsync()
			expect(asyncCalledCounter).to.equal(1)
        end)
    end)

    --TODO: add more unit tests like: "if async function gets called multiple times before return, only the latest callback will be called"
    --If Async Test is supported
	describe("callback", function()
        it("callback gets called after async function returns", function()
            local callbackCalledCounter = 0
			local safeAsync = MakeSafeAsync({
                asyncFunc = function() end,
                callback = function() callbackCalledCounter = callbackCalledCounter + 1 end
            })
            safeAsync()
			expect(callbackCalledCounter).to.equal(1)
        end)

        it("async function return values will be passed to callback as arguments", function()
			local safeAsync = MakeSafeAsync({
                asyncFunc = function() return true, 1, {} end,
                callback = function(b, n, t)
                    expect(b).to.equal(true)
                    expect(n).to.equal(1)
                    expect(t).to.be.a("table")
                end
            })
            safeAsync()
        end)
    end)

    describe("cancel", function()
        it("callback won't get called if the task was cancelled", function()
            local callbackCalledCounter = 0
            local safeAsync = nil
            safeAsync = MakeSafeAsync({
                asyncFunc = function()
                    safeAsync:Cancel()
                end,
                callback = function() callbackCalledCounter = callbackCalledCounter + 1 end
            })
            safeAsync()
			expect(callbackCalledCounter).to.equal(0)
        end)
    end)
end