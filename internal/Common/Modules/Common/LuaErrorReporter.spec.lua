return function()
	-- NOTE : since each Lua Error Reporter object adds an observer to the script context,
	-- it is important that tests clean up after themselves and call the delete() function
    local LuaErrorReporter = require(script.Parent.LuaErrorReporter)
	local Signal = require(script.Parent.Signal)

	-- create some dummy test values
	local testError = "foo"
	local testAppName = "testSuite"
	local testSignal = Signal.new()

	local function createSilentLER()
		-- NOTE - creating this reporter with the testSignal circumvents testing the functionality
		-- of observing the ScriptContext.Error signal. It is assumed that the Error signal just works.

		-- NOTE - even if the handleError() function doesn't get overriden on the LuaErrorReporter,
		-- don't send error reports over the wire for unit tests
		local ler = LuaErrorReporter.new(testSignal)
		ler._verbose = false
		ler._shouldReportInflux = false
		ler._shouldReportGoogleAnalytics = false
		ler._shouldReportDiag = false
		return ler
	end
	local function fireTestErrorSignal()
		-- fire a signal that mimics the structure of the ScriptContext.Error's arguments:
		-- (message, stackTrace, scriptSource)
		testSignal:Fire(testError, debug.traceback(), script)

		-- NOTE - if these tests are ever to be modified to once again observe
		-- the ScriptContext.Error signal, then be mindful that testSignal resolves synchronously
		-- while ScriptContext.Error does not.
	end

    describe("new()", function()
		it("should construct with a custom signal", function()
			local ler = createSilentLER()
			expect(ler).to.be.ok()

			ler:delete()
		end)

		it("should create an object that observes errors", function()
			local callCounter = 0

			local ler = createSilentLER()
			function ler:handleError(message, stack, offendingScript)
				callCounter = callCounter + 1
				expect(message).to.be.ok()
				expect(stack).to.be.ok()
				expect(offendingScript).to.be.ok()
			end

			fireTestErrorSignal()

			ler:delete()

			expect(callCounter).to.equal(1)
		end)
	end)

	describe("delete()", function()
		it("should break the connection to the error context", function()
			local ler = createSilentLER()
			function ler:handleError(message, stack, script)
				error("delete() failed to remove the script context's error observer")
			end

			ler:delete()

			fireTestErrorSignal()
		end)
	end)

	describe("setCurrentApp()", function()
		it("should not allow the value to be nil", function()
			local ler = createSilentLER()

			expect(function()
				ler:setCurrentApp(nil)
			end).to.throw()

			ler:delete()
		end)

		it("should allow the value to be set to a string", function()
			local ler = createSilentLER()

			ler:setCurrentApp(testAppName)
			expect(ler._currentApp).to.equal(testAppName)

			ler:delete()
		end)
	end)

	describe("handleError()", function()
		it("should be overrideable with a custom function", function()
			local callCounter = 0

			local ler = createSilentLER()
			function ler:handleError(messsage, stack, script)
				callCounter = callCounter + 1
			end

			fireTestErrorSignal()

			expect(callCounter).to.equal(1)
			ler:delete()
		end)
	end)
end