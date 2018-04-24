return function()
    local MakeSafeAsyncRodux = require(script.Parent.SafeAsyncRodux)
    local Store =
    {
        GetState = function()
            return "user1"
        end
    }
	describe("initial state", function()
		it("should return an initial table when init with async function", function()
			local safeAsyncRodux = MakeSafeAsyncRodux({asyncFunc = function() end})
			expect(safeAsyncRodux).to.be.a("table")
		end)
    end)

	describe("async function", function()
		it("async function gets called after calling the safeAsyncRodux object", function()
            local asyncCalledCounter = 0
            local safeAsyncRodux = MakeSafeAsyncRodux({asyncFunc = function() asyncCalledCounter = asyncCalledCounter + 1 end})
            safeAsyncRodux(Store)
			expect(asyncCalledCounter).to.equal(1)
        end)

        it("async function gets called with the store as the first argument", function()
            local safeAsyncRodux = MakeSafeAsyncRodux(
            {
                asyncFunc = function(store)
                    expect(store == Store).to.equal(true)
                end
            })
            safeAsyncRodux(Store)
        end)
    end)

    --TODO: add more unit tests like: "if async function gets called multiple times before return, only the latest callback will be called"
    --When Async Test is supported
	describe("callback", function()
        it("callback gets called after async function returns", function()
            local callbackCalledCounter = 0
            local safeAsyncRodux = MakeSafeAsyncRodux(
            {
                asyncFunc = function() end,
                callback = function() callbackCalledCounter = callbackCalledCounter + 1 end
            })
            safeAsyncRodux(Store)
			expect(callbackCalledCounter).to.equal(1)
        end)

        it("callback gets called with the store as the first argument", function()
            local safeAsyncRodux = MakeSafeAsyncRodux(
            {
                asyncFunc = function() return true, 1, {} end,
                callback = function(store)
                    expect(store == Store).to.equal(true)
                end
            })
            safeAsyncRodux(Store)
        end)

        it("async function return values will be passed to callback as arguments after store", function()
            local safeAsyncRodux = MakeSafeAsyncRodux(
            {
                asyncFunc = function() return true, 1, {} end,
                callback = function(store, b, n, t)
                    expect(store == Store).to.equal(true)
                    expect(b).to.equal(true)
                    expect(n).to.equal(1)
                    expect(t).to.be.a("table")
                end
            })
            safeAsyncRodux(Store)
        end)
    end)

    describe("cancel", function()
        it("callback won't get called if the task was cancelled", function()
            local callbackCalledCounter = 0
            local safeAsyncRodux = nil
            safeAsyncRodux = MakeSafeAsyncRodux(
            {
                asyncFunc = function()
                    safeAsyncRodux:Cancel()
                end,
                callback = function() callbackCalledCounter = callbackCalledCounter + 1 end
            })
            safeAsyncRodux(Store)
			expect(callbackCalledCounter).to.equal(0)
        end)
    end)
end