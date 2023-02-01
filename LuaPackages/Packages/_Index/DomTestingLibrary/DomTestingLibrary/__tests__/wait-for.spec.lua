-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/__tests__/wait-for.js
local Packages = script.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Error = LuauPolyfill.Error
local setTimeout = LuauPolyfill.setTimeout

local Promise = require(Packages.Promise)

local JestGlobals = require(Packages.JestGlobals)
local expect = JestGlobals.expect
local test = JestGlobals.test
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local jest = JestGlobals.jest

local CollectionService = game:GetService("CollectionService")

-- ROBLOX deviation START: not exactly __dirname, but enough to match
local __dirname = "wait%-for%.spec"
-- ROBLOX deviation END

local waitFor = require(script.Parent.Parent["wait-for"]).waitFor
local configModule = require(script.Parent.Parent.config)
local configure = configModule.configure
local getConfig = configModule.getConfig
local renderIntoDocument = require(script.Parent.helpers["test-utils"]).renderIntoDocument

local function deferred()
	local resolve, reject
	local promise = Promise.new(function(res, rej)
		resolve = res
		reject = rej
	end)
	return { promise = promise, resolve = resolve, reject = reject }
end

local originalConfig
beforeEach(function()
	originalConfig = getConfig()
end)

afterEach(function()
	configure(originalConfig)
	-- restore timers
	jest.useRealTimers()
end)
test("waits callback to not throw an error", function()
	return Promise.resolve()
		:andThen(function()
			local spy = jest.fn()
			-- we are using random timeout here to simulate a real-time example
			-- of an async operation calling a callback at a non-deterministic time
			local randomTimeout = math.floor(math.random() * 60)
			setTimeout(spy, randomTimeout)

			waitFor(function()
				return expect(spy).toHaveBeenCalledTimes(1)
			end):expect()
			expect(spy).toHaveBeenCalledWith()
		end)
		:expect()
end)

-- we used to have a limitation where we had to set an interval of 0 to 1
-- otherwise there would be problems. I don't think this limitation exists
-- anymore, but we'll keep this test around to make sure a problem doesn't
-- crop up.
test("can accept an interval of 0", function()
	return waitFor(function() end, { interval = 0 }):expect()
end)
test("can timeout after the given timeout time", function()
	return Promise.resolve()
		:andThen(function()
			local error_ = Error.new("throws every time")
			local result = waitFor(function()
					error(error_)
				end, { timeout = 8, interval = 5 })
				:catch(function(e)
					return e
				end)
				:expect()
			expect(result).toBe(error_)
		end)
		:expect()
end)
test("if no error is thrown then throws a timeout error", function()
	return Promise.resolve()
		:andThen(function()
			local result = waitFor(function()
					-- eslint-disable-next-line no-throw-literal
					error(nil)
				end, {
					timeout = 8,
					interval = 5,
					onTimeout = function(e)
						return e
					end,
				})
				:catch(function(e)
					return e
				end)
				:expect()
			-- ROBLOX deviation START: replaced toMatchInlineSnapshot
			expect(result.message).toMatch("Timed out in waitFor.")
			-- ROBLOX deviation END
		end)
		:expect()
end)
test("if showOriginalStackTrace on a timeout error then the stack trace does not include this file", function()
	return Promise.resolve()
		:andThen(function()
			local result = waitFor(function()
					-- eslint-disable-next-line no-throw-literal
					error(nil)
				end, { timeout = 8, interval = 5, showOriginalStackTrace = true })
				:catch(function(e)
					return e
				end)
				:expect()
			expect(result.stack).never.toMatch(__dirname)
		end)
		:expect()
end)
test("uses full stack error trace when showOriginalStackTrace present", function()
	return Promise.resolve():andThen(function()
		local error_ = Error.new("Throws the full stack trace")
		-- even if the error is a TestingLibraryElementError
		error_.name = "TestingLibraryElementError"
		local originalStackTrace = error_.stack
		local result = waitFor(function()
				error(error_)
			end, { timeout = 8, interval = 5, showOriginalStackTrace = true })
			:catch(function(e)
				return e
			end)
			:expect()
		expect(result.stack).toBe(originalStackTrace)
		return result
	end)
end)
test("does not change the stack trace if the thrown error is not a TestingLibraryElementError", function()
	return Promise.resolve()
		:andThen(function()
			local error_ = Error.new("Throws the full stack trace")
			local originalStackTrace = error_.stack
			local result = waitFor(function()
					error(error_)
				end, { timeout = 8, interval = 5 })
				:catch(function(e)
					return e
				end)
				:expect()
			expect(result.stack).toBe(originalStackTrace)
		end)
		:expect()
end)
test("provides an improved stack trace if the thrown error is a TestingLibraryElementError", function()
	return Promise.resolve()
		:andThen(function()
			local error_ = Error.new("Throws the full stack trace")
			error_.name = "TestingLibraryElementError"
			local originalStackTrace = error_.stack
			local result = waitFor(function()
					error(error_)
				end, { timeout = 8, interval = 5 })
				:catch(function(e)
					return e
				end)
				:expect()
			-- too hard to test that the stack trace is what we want it to be
			-- so we'll just make sure that it's not the same as the original
			expect(result.stack).never.toBe(originalStackTrace)
		end)
		:expect()
end)
test("throws nice error if provided callback is not a function", function()
	local div = Instance.new("Frame")
	CollectionService:AddTag(div, "data-testid=div")
	local queryByTestId = renderIntoDocument({ div }).queryByTestId
	local someElement = queryByTestId("div")
	expect(someElement).toBe(div)
	expect(function()
		return waitFor(someElement)
	end).toThrow("Received `callback` arg must be a function")
end)
test("timeout logs a pretty DOM", function()
	return Promise.resolve()
		:andThen(function()
			-- ROBLOX deviation START: replace with Instance
			local div = Instance.new("Frame")
			div.Name = "pretty"
			local text = Instance.new("TextLabel")
			text.Text = "how pretty"
			text.Parent = div
			renderIntoDocument({ div })
			-- ROBLOX deviation END
			local error_ = waitFor(function()
					error(Error.new("always throws"))
				end, { timeout = 1 })
				:catch(function(e)
					return e
				end)
				:expect()
			expect(error_.message).toBe([[
always throws

Folder {
  "Archivable": true,
  "ClassName": "Folder",
  "Name": "Document",
  "Parent": "ScreenGui" [ScreenGui],
  "pretty": Frame {
    "AbsolutePosition": Vector2(0, 0),
    "AbsoluteRotation": 0,
    "AbsoluteSize": Vector2(0, 0),
    "Active": false,
    "AnchorPoint": Vector2(0, 0),
    "Archivable": true,
    "AutoLocalize": true,
    "AutomaticSize": EnumItem(Enum.AutomaticSize.None),
    "BackgroundColor3": Color3(0.639216, 0.635294, 0.647059),
    "BackgroundTransparency": 0,
    "BorderColor3": Color3(0.105882, 0.164706, 0.207843),
    "BorderMode": EnumItem(Enum.BorderMode.Outline),
    "BorderSizePixel": 1,
    "ClassName": "Frame",
    "ClipsDescendants": false,
    "LayoutOrder": 0,
    "Name": "pretty",
    "NextSelectionDown": nil,
    "NextSelectionLeft": nil,
    "NextSelectionRight": nil,
    "NextSelectionUp": nil,
    "Parent": "Document" [Folder],
    "Position": UDim2({0, 0}, {0, 0}),
    "RootLocalizationTable": nil,
    "Rotation": 0,
    "Selectable": false,
    "SelectionImageObject": nil,
    "Size": UDim2({0, 0}, {0, 0}),
    "SizeConstraint": EnumItem(Enum.SizeConstraint.RelativeXY),
    "Style": EnumItem(Enum.FrameStyle.Custom),
    "Visible": true,
    "ZIndex": 1,
    "TextLabel": TextLabel {
      "AbsolutePosition": Vector2(0, 0),
      "AbsoluteRotation": 0,
      "AbsoluteSize": Vector2(0, 0),
      "Active": false,
      "AnchorPoint": Vector2(0, 0),
      "Archivable": true,
      "AutoLocalize": true,
      "AutomaticSize": EnumItem(Enum.AutomaticSize.None),
      "BackgroundColor3": Color3(0.639216, 0.635294, 0.647059),
      "BackgroundTransparency": 0,
      "BorderColor3": Color3(0.105882, 0.164706, 0.207843),
      "BorderMode": EnumItem(Enum.BorderMode.Outline),
      "BorderSizePixel": 1,
      "ClassName": "TextLabel",
      "ClipsDescendants": false,
      "ContentText": "how pretty",
      "Font": EnumItem(Enum.Font.Legacy),
      "LayoutOrder": 0,
      "LineHeight": 1,
      "MaxVisibleGraphemes": -1,
      "Name": "TextLabel",
      "NextSelectionDown": nil,
      "NextSelectionLeft": nil,
      "NextSelectionRight": nil,
      "NextSelectionUp": nil,
      "Parent": "pretty" [Frame],
      "Position": UDim2({0, 0}, {0, 0}),
      "RichText": false,
      "RootLocalizationTable": nil,
      "Rotation": 0,
      "Selectable": false,
      "SelectionImageObject": nil,
      "Size": UDim2({0, 0}, {0, 0}),
      "SizeConstraint": EnumItem(Enum.SizeConstraint.RelativeXY),
      "Text": "how pretty",
      "TextBounds": Vector2(NAN, NAN),
      "TextColor3": Color3(0.105882, 0.164706, 0.207843),
      "TextFits": false,
      "TextScaled": false,
      "TextSize": 8,
      "TextStrokeColor3": Color3(0, 0, 0),
      "TextStrokeTransparency": 1,
      "TextTransparency": 0,
      "TextTruncate": EnumItem(Enum.TextTruncate.None),
      "TextWrapped": false,
      "TextXAlignment": EnumItem(Enum.TextXAlignment.Center),
      "TextYAlignment": EnumItem(Enum.TextYAlignment.Center),
      "Visible": true,
      "ZIndex": 1,
    },
  },
}]])
		end)
		:expect()
end)
test("should delegate to config.getElementError", function()
	return Promise.resolve()
		:andThen(function()
			local elementError = Error.new("Custom element error")
			local getElementError = jest.fn(function()
				return elementError
			end)
			configure({ getElementError = getElementError })
			local div = Instance.new("Frame")
			div.Name = "pretty"
			renderIntoDocument({ div })
			local error_ = waitFor(function()
					error(Error.new("always throws"))
				end, { timeout = 1 })
				:catch(function(e)
					return e
				end)
				:expect()
			expect(getElementError).toBeCalledTimes(1)
			-- ROBLOX deviation START: use toBe instead of toMatchInlineSnapshot
			expect(error_.message).toBe("Custom element error")
			-- ROBLOX deviation END
		end)
		:expect()
end)
test("when a promise is returned, it does not call the callback again until that promise rejects", function()
	return Promise.resolve()
		:andThen(function()
			local function sleep(t)
				return Promise.new(function(r)
					return setTimeout(r, t)
				end)
			end
			local p1 = deferred()
			local waitForCb = jest.fn(function()
				return p1.promise
			end)
			local waitForPromise = waitFor(waitForCb, { interval = 1 })
			expect(waitForCb).toHaveBeenCalledTimes(1)
			waitForCb:mockClear()
			sleep(50):expect()
			expect(waitForCb).toHaveBeenCalledTimes(0)
			local p2 = deferred()
			waitForCb.mockImplementation(function()
				return p2.promise
			end)
			p1:reject("p1 rejection (should not fail this test)")
			sleep(50):expect()
			expect(waitForCb).toHaveBeenCalledTimes(1)
			p2:resolve()
			waitForPromise:expect()
		end)
		:expect()
end)
test("when a promise is returned, if that is not resolved within the timeout, then waitFor is rejected", function()
	return Promise.resolve()
		:andThen(function()
			local function sleep(t)
				return Promise.new(function(r)
					return setTimeout(r, t)
				end)
			end
			local promise = deferred().promise
			local waitForError = waitFor(function()
				return promise
			end, { timeout = 1 }):catch(function(e)
				return e
			end)
			sleep(5):expect()
			-- ROBLOX deviation START: use toBe instead of toMatchInlineSnapshot.
			expect(waitForError:expect().message).toBe([[
Timed out in waitFor.

Folder {
  "Archivable": true,
  "ClassName": "Folder",
  "Name": "Document",
  "Parent": "ScreenGui" [ScreenGui],
}]])
			-- ROBLOX deviation END
		end)
		:expect()
end)
test("if you switch from fake timers to real timers during the wait period you get an error", function()
	return Promise.resolve()
		:andThen(function()
			jest.useFakeTimers()
			local waitForError = waitFor(function()
				error(Error.new("this error message does not matter..."))
			end):catch(function(e)
				return e
			end)
			-- this is the problem...
			jest.useRealTimers()
			local error_ = waitForError:expect()
			-- ROBLOX deviation START: toMatchInlineSnapshot not available
			expect(error_.message).toBe(
				"Changed from using fake timers to real timers while using waitFor. This is not allowed and will result in very strange behavior. Please ensure you're awaiting all async things your test is doing before changing to real timers. For more info, please go to https://github.com/testing-library/dom-testing-library/issues/830"
			)
			-- ROBLOX deviation END
			-- stack trace has this file in it
			expect(error_.stack).toMatch(__dirname)
		end)
		:expect()
end)
test("if you switch from real timers to fake timers during the wait period you get an error", function()
	return Promise.resolve()
		:andThen(function()
			local waitForError = waitFor(function()
				error(Error.new("this error message does not matter..."))
			end):catch(function(e)
				return e
			end)
			-- this is the problem...
			jest.useFakeTimers()
			local error_ = waitForError:expect()
			expect(error_.message).toBe(
				"Changed from using real timers to fake timers while using waitFor. This is not allowed and will result in very strange behavior. Please ensure you're awaiting all async things your test is doing before changing to fake timers. For more info, please go to https://github.com/testing-library/dom-testing-library/issues/830"
			)
			-- stack trace has this file in it
			expect(error_.stack).toMatch(__dirname)
		end)
		:expect()
end)
test("the fake timers => real timers error shows the original stack trace when configured to do so", function()
	return Promise.resolve()
		:andThen(function()
			jest.useFakeTimers()
			local waitForError = waitFor(function()
				error(Error.new("this error message does not matter..."))
			end, { showOriginalStackTrace = true }):catch(function(e)
				return e
			end)
			jest.useRealTimers()
			expect(waitForError:expect().stack).never.toMatch(__dirname)
		end)
		:expect()
end)
test("the real timers => fake timers error shows the original stack trace when configured to do so", function()
	return Promise.resolve()
		:andThen(function()
			local waitForError = waitFor(function()
				error(Error.new("this error message does not matter..."))
			end, { showOriginalStackTrace = true }):catch(function(e)
				return e
			end)
			jest.useFakeTimers()
			expect(waitForError:expect().stack).never.toMatch(__dirname)
		end)
		:expect()
end)

-- unstable_advanceTimersWrapper returning thenable (other than Promise) not supported
test.skip("does not work after it resolves", function()
	return Promise.resolve()
		:andThen(function()
			-- ROBLOX deviation START: no selection of modern/legacy timers
			jest.useFakeTimers()
			-- ROBLOX deviation END
			local context = "initial"
			configure({
				unstable_advanceTimersWrapper = function(callback)
					local originalContext = context
					context = "act"
					local ok, result = pcall(function(): any
						local result = callback()
						-- eslint-disable-next-line jest/no-if
						if typeof(if typeof(result) == "table" then result.andThen else nil) == "function" then
							local thenable = result
							return {
								andThen = function(self, resolve, reject)
									thenable:andThen(function(returnValue)
										context = originalContext
										resolve(returnValue)
									end, function(error_)
										context = originalContext
										reject(error_)
									end)
								end,
							}
						else
							context = originalContext
							return nil
						end
					end)
					if not ok then
						context = originalContext
						return nil
					end
					return result
				end,
				asyncWrapper = function(callback)
					return Promise.resolve():andThen(function()
						local originalContext = context
						context = "no-act"
						local ok, result = pcall(function()
							callback():expect()
						end)
						context = originalContext

						if not ok then
							error(result)
						end
					end)
				end,
			})

			local data = nil
			setTimeout(function()
				data = "resolved"
			end, 100)

			waitFor(function()
				if data == nil then
					error(Error.new("not found"))
				end
			end, { interval = 50 }):expect()

			expect(context).toEqual("initial")

			Promise:resolve():expect()

			expect(context).toEqual("initial")
		end)
		:expect()
end)
return {}
