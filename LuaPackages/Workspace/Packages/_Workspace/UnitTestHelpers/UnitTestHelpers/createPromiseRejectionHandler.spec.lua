return function()
	local Root = script.Parent
	local Packages = Root.Parent

	local jestExpect = require(Packages.JestGlobals).expect
	local jest = require(Packages.JestGlobals).jest
	local Promise = require(Packages.Promise)
	local React = require(Packages.Dev.React)
	local ReactRoblox = require(Packages.Dev.ReactRoblox)

	local createPromiseRejectionHandler = require(script.Parent.createPromiseRejectionHandler)
	local thisTestFile = debug.info(1, "s")

	local prevPromiseTestMode
	beforeEach(function()
		prevPromiseTestMode = (Promise :: any).TEST
	end)

	afterEach(function()
		(Promise :: any).TEST = prevPromiseTestMode
	end)

	-- FIXME: Unskip these tests when we restore the error-on-threshold-exceeded
	-- behavior

	describe("rejection handling", function()
		local handler, cleanupHandler
		beforeEach(function()
			handler = createPromiseRejectionHandler()
			cleanupHandler = handler.inject()
		end)

		afterEach(function()
			cleanupHandler()
		end)

		it("intercepts an unhandled promise rejection", function()
			local offendingLine = (debug.info(1, "l") :: number) + 1
			Promise.reject("foo")

			jestExpect(handler.reportRejections).toThrow(
				"Promise was created in test at:\n"
					.. string.format("%s:%d\n\n", thisTestFile, offendingLine)
					.. "Error output:\n"
					.. "foo\n\n"
			)
			-- Since the promise creation stack in the middle will have more
			-- details, we just report again and check for the last part of the
			-- message separately
			jestExpect(handler.reportRejections).toThrow(
				"Promise rejection report:\n"
					.. "    unhandled rejections: 1\n"
					.. "    allowed rejections threshold: 0 (default)"
			)
		end)

		it("intercepts several unhandled promise rejections", function()
			Promise.reject("foo")
			Promise.reject("bar")
			Promise.reject("baz")

			jestExpect(handler.reportRejections).toThrow(
				"Promise rejection report:\n"
					.. "    unhandled rejections: 3\n"
					.. "    allowed rejections threshold: 0 (default)"
			)
		end)

		-- If we error inside the promise body, the promise impl includes
		-- "created at" info automatically; we should make sure we don't
		-- duplicate this in our messages
		it("does not duplicate stack information", function()
			Promise.new(function(_resolve, _reject)
				error("foo")
			end)

			-- FIXME luau: the following code results in this incorrect error:
			-- `TypeError: Function only returns 1 value. 2 are required here`
			-- local _ok, errorMessage = pcall(handler.reportRejections)
			local _ok, errorMessage = pcall(function()
				handler.reportRejections()
			end)

			local occurrences = 0
			for word in string.gmatch(errorMessage, "Promise created at") do
				occurrences += 1
			end
			jestExpect(occurrences).toEqual(1)
		end)
	end)

	describe("with full stack traces disabled", function()
		local handler, cleanupHandler
		beforeEach(function()
			handler = createPromiseRejectionHandler()
			cleanupHandler = handler.inject()
		end)

		afterEach(function()
			cleanupHandler()
		end)

		it("simplifies stacktraces in error output", function()
			local errorStackTop, errorStackBottom

			local function RejectPromise(props)
				React.useEffect(function()
					errorStackTop = debug.info(1, "l") :: number + 1
					Promise.reject(debug.traceback())
				end)

				return React.createElement("Frame")
			end

			local root = ReactRoblox.createRoot(Instance.new("Folder"))
			errorStackBottom = debug.info(1, "l") :: number + 1
			ReactRoblox.act(function()
				root:render(React.createElement(RejectPromise))
			end)

			jestExpect(handler.reportRejections).toThrow(
				"Error output:\n"
					.. string.format("%s:%d\n", thisTestFile, errorStackTop)
					.. "...\n"
					.. string.format("%s:%d\n", thisTestFile, errorStackBottom)
			)
		end)

		it("simplifies promise creation stack", function()
			local errorStackTop, errorStackBottom

			local function RejectPromise(props)
				React.useEffect(function()
					errorStackTop = debug.info(1, "l") :: number + 1
					Promise.reject("foo")
				end)

				return React.createElement("Frame")
			end

			local root = ReactRoblox.createRoot(Instance.new("Folder"))
			errorStackBottom = debug.info(1, "l") :: number + 1
			ReactRoblox.act(function()
				root:render(React.createElement(RejectPromise))
			end)

			jestExpect(handler.reportRejections).toThrow(
				"Error output:\n"
					.. "foo\n\n"
					.. "Promise created at:\n"
					.. string.format("%s:%d\n", thisTestFile, errorStackTop)
					.. "...\n"
					.. string.format("%s:%d\n", thisTestFile, errorStackBottom)
			)
		end)

		it("never redacts the top of the stack", function()
			local errorLine = debug.info(1, "l") :: number + 1
			Promise.reject(
				"CorePackages.Packages._Index.React.React.SomeFile:123 function someFunction\n"
					.. "CorePackages.Packages._Index.React.React.SomeFile:98 function someOtherFunction\n"
					.. string.format("%s:%d\n", thisTestFile, errorLine)
			)

			jestExpect(handler.reportRejections).toThrow(
				"Error output:\n"
					.. "CorePackages.Packages._Index.React.React.SomeFile:123 function someFunction\n"
					.. "...\n"
					.. string.format("%s:%d\n", thisTestFile, errorLine)
			)
		end)

		it("never redacts the top of the stack, even if the string doesn't start with a stack", function()
			local errorLine = debug.info(1, "l") :: number + 1
			Promise.reject(
				"some error message:\n"
					.. "    here are the contents\n"
					.. "    of some detailed message\n"
					.. "CorePackages.Packages._Index.React.React.SomeFile:123 function someFunction\n"
					.. "CorePackages.Packages._Index.React.React.SomeFile:98 function someOtherFunction\n"
					.. string.format("%s:%d\n", thisTestFile, errorLine)
			)

			jestExpect(handler.reportRejections).toThrow(
				"Error output:\n"
					.. "some error message:\n"
					.. "    here are the contents\n"
					.. "    of some detailed message\n"
					.. "CorePackages.Packages._Index.React.React.SomeFile:123 function someFunction\n"
					.. "...\n"
					.. string.format("%s:%d\n", thisTestFile, errorLine)
			)
		end)

		it("never redacts the top of a new stack partway through the error", function()
			local errorLine = debug.info(1, "l") :: number + 1
			Promise.reject(
				"CorePackages.Packages._Index.React.React.SomeFile:123 function someFunction\n"
					.. "CorePackages.Packages._Index.React.React.SomeFile:98 function someOtherFunction\n"
					.. string.format("%s:%d\n", thisTestFile, errorLine)
					.. "\n"
					.. "Promise created at:\n"
					.. "CorePackages.Packages._Index.Promise.Promise:360 function anotherOne\n"
					.. "CorePackages.Packages._Index.Promise.Promise:180 function yetMore\n"
					.. string.format("%s:%d\n", thisTestFile, errorLine)
			)

			jestExpect(handler.reportRejections).toThrow(
				"Error output:\n"
					.. "CorePackages.Packages._Index.React.React.SomeFile:123 function someFunction\n"
					.. "...\n"
					.. string.format("%s:%d\n", thisTestFile, errorLine)
					.. "\n"
					.. "Promise created at:\n"
					.. "CorePackages.Packages._Index.Promise.Promise:360 function anotherOne\n"
					.. "...\n"
					.. string.format("%s:%d\n", thisTestFile, errorLine)
			)
		end)
	end)

	describe("with full stack traces enabled", function()
		local handler, cleanupHandler
		beforeEach(function()
			handler = createPromiseRejectionHandler(true)
			cleanupHandler = handler.inject()
		end)

		afterEach(function()
			cleanupHandler()
		end)

		it("does not simplify stacktraces in error output", function()
			local function RejectPromise(props)
				React.useEffect(function()
					Promise.reject(debug.traceback())
				end)

				return React.createElement("Frame")
			end

			local root = ReactRoblox.createRoot(Instance.new("Folder"))
			ReactRoblox.act(function()
				root:render(React.createElement(RejectPromise))
			end)

			jestExpect(handler.reportRejections).toThrow("CorePackages.Packages._Index.ReactReconcile")
		end)

		it("does not simplify stacktraces in promise creation", function()
			local function RejectPromise(props)
				React.useEffect(function()
					Promise.reject(debug.traceback())
				end)

				return React.createElement("Frame")
			end

			local root = ReactRoblox.createRoot(Instance.new("Folder"))
			ReactRoblox.act(function()
				root:render(React.createElement(RejectPromise))
			end)

			jestExpect(handler.reportRejections).toThrow("CorePackages.Packages._Index.ReactReconcile")
		end)
	end)

	describe("allowed rejection threshold", function()
		local handler, cleanupHandler, mockWarn, mockError
		beforeEach(function()
			handler = createPromiseRejectionHandler()
			mockWarn = jest.fn()
			mockError = jest.fn()
			getfenv(handler.reportRejections).warn = mockWarn
			getfenv(handler.reportRejections).error = mockError

			cleanupHandler = handler.inject()
		end)

		afterEach(function()
			cleanupHandler()
		end)

		it("warns when rejections are below threshold", function()
			Promise.reject("foo")
			Promise.reject("bar")

			handler.reportRejections(3, 3)

			jestExpect(mockWarn).toHaveBeenCalledTimes(1)
			jestExpect(mockWarn.mock.calls[1][1]).toContain(
				"Promise rejection report:\n" .. "    unhandled rejections: 2"
			)
			jestExpect(mockError).never.toHaveBeenCalled()
		end)

		itFIXME("errors when rejections esceed the threshold", function()
			Promise.reject("foo")
			Promise.reject("bar")

			handler.reportRejections(1, 1)

			jestExpect(mockWarn).never.toHaveBeenCalled()
			jestExpect(mockError).toHaveBeenCalledTimes(1)
			jestExpect(mockError.mock.calls[1][1]).toContain(
				"Promise rejection report:\n"
					.. "    unhandled rejections: 2\n"
					.. "    allowed rejections threshold: 1"
			)
		end)

		itFIXME("uses the threshold for the given flag state", function()
			Promise.reject("foo")
			Promise.reject("bar")

			handler.reportRejections(1, 3)

			if game:GetFastFlag("TestPromiseRejectionFlagState") then
				jestExpect(mockWarn).toHaveBeenCalledTimes(1)
				jestExpect(mockWarn.mock.calls[1][1]).toContain(
					"Promise rejection report:\n" .. "    unhandled rejections: 2"
				)
				jestExpect(mockError).never.toHaveBeenCalled()
			else
				jestExpect(mockWarn).never.toHaveBeenCalled()
				jestExpect(mockError).toHaveBeenCalledTimes(1)
				jestExpect(mockError.mock.calls[1][1]).toContain(
					"Promise rejection report:\n"
						.. "    unhandled rejections: 2\n"
						.. "    allowed rejections threshold: 1"
				)
			end
		end)
	end)
end
