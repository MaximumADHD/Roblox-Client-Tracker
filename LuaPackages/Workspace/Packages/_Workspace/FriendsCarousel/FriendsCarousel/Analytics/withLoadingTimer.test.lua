local FriendsCarousel = script.Parent.Parent
local devDependencies = require(FriendsCarousel.devDependencies)
local dependencies = require(FriendsCarousel.dependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local jest = devDependencies.jest
local UnitTestHelpers = devDependencies.UnitTestHelpers
local runWhileMounted = UnitTestHelpers.runWhileMounted
local Roact = dependencies.Roact

local withLoadingTimer = require(script.Parent.withLoadingTimer)

local spyOnInjectedProps
local TestElement = function(props)
	spyOnInjectedProps = props
	return Roact.createElement("Frame")
end

describe("withLoadingTimer", function()
	it("SHOULD be a function", function()
		jestExpect(withLoadingTimer).toEqual(jestExpect.any("function"))
	end)
end)

describe("LoadingTimer", function()
	it("SHOULD mount component", function()
		local LoadingTimer = withLoadingTimer(TestElement, {})
		local Component = Roact.createElement(LoadingTimer, {})
		runWhileMounted(Component, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
			spyOnInjectedProps.loadingTimerProps.startTimer()
		end)
	end)

	it("SHOULD return correct injected props", function()
		local LoadingTimer = withLoadingTimer(TestElement, {})
		local Component = Roact.createElement(LoadingTimer, {})
		runWhileMounted(Component, function()
			jestExpect(spyOnInjectedProps.loadingTimerProps).toEqual({
				startTimer = jestExpect.any("function"),
				stopTimer = jestExpect.any("function"),
				resetTimer = jestExpect.any("function"),
				getLoadingTime = jestExpect.any("function"),
				cancelThreshold = jestExpect.any("function"),
			})
		end)
	end)

	describe("onLoaded", function()
		it("SHOULD call onLoaded on stop timer if passed in cofig", function()
			local onLoadedSpy = jest.fn()
			local config = {
				onLoaded = function(...)
					onLoadedSpy(...)
				end,
			}
			local LoadingTimer = withLoadingTimer(TestElement, config)
			local Component = Roact.createElement(LoadingTimer, {})
			runWhileMounted(Component, function()
				spyOnInjectedProps.loadingTimerProps.startTimer()
				spyOnInjectedProps.loadingTimerProps.stopTimer()
				jestExpect(onLoadedSpy).toHaveBeenCalledTimes(1)
				jestExpect(onLoadedSpy).toHaveBeenCalledWith(jestExpect.any("number"), {})
			end)
		end)

		it("SHOULD call onLoaded with -1 if timer was not started", function()
			local onLoadedSpy = jest.fn()
			local config = {
				onLoaded = function(...)
					onLoadedSpy(...)
				end,
			}
			local LoadingTimer = withLoadingTimer(TestElement, config)
			local Component = Roact.createElement(LoadingTimer, {})
			runWhileMounted(Component, function()
				spyOnInjectedProps.loadingTimerProps.stopTimer()
				jestExpect(onLoadedSpy).toHaveBeenCalledTimes(1)
				jestExpect(onLoadedSpy).toHaveBeenCalledWith(-1, {})
			end)
		end)

		it("SHOULD not call onLoaded more than once", function()
			local onLoadedSpy = jest.fn()
			local config = {
				onLoaded = function(...)
					onLoadedSpy(...)
				end,
			}
			local LoadingTimer = withLoadingTimer(TestElement, config)
			local Component = Roact.createElement(LoadingTimer, {})
			runWhileMounted(Component, function()
				spyOnInjectedProps.loadingTimerProps.startTimer()
				spyOnInjectedProps.loadingTimerProps.stopTimer()
				spyOnInjectedProps.loadingTimerProps.startTimer()
				spyOnInjectedProps.loadingTimerProps.stopTimer()
				spyOnInjectedProps.loadingTimerProps.stopTimer()
				jestExpect(onLoadedSpy).toHaveBeenCalledTimes(1)
				jestExpect(onLoadedSpy).toHaveBeenCalledWith(jestExpect.any("number"), {})
			end)
		end)

		it("SHOULD call onLoaded second time only if resetTimer was called", function()
			local onLoadedSpy = jest.fn()
			local config = {
				onLoaded = function(...)
					onLoadedSpy(...)
				end,
			}
			local LoadingTimer = withLoadingTimer(TestElement, config)
			local Component = Roact.createElement(LoadingTimer, {})
			runWhileMounted(Component, function()
				spyOnInjectedProps.loadingTimerProps.startTimer()
				spyOnInjectedProps.loadingTimerProps.stopTimer()
				spyOnInjectedProps.loadingTimerProps.resetTimer()
				spyOnInjectedProps.loadingTimerProps.startTimer()
				spyOnInjectedProps.loadingTimerProps.stopTimer()
				jestExpect(onLoadedSpy).toHaveBeenCalledTimes(2)
				jestExpect(onLoadedSpy).toHaveBeenCalledWith(jestExpect.any("number"), {})
			end)
		end)

		-- TODO: SOCCONN-1792 unskip once confirmed wait() is safe to use
		it.skip("SHOULD not call onLoaded if loadingThreshold was reached", function()
			local onReachingThreshold = jest.fn()
			local onLoadedSpy = jest.fn()
			local config = {
				loadingThreshold = 0.1,
				onReachingThreshold = function(...)
					onReachingThreshold(...)
				end,
				onLoaded = function(...)
					onLoadedSpy(...)
				end,
			}
			local LoadingTimer = withLoadingTimer(TestElement, config)
			local Component = Roact.createElement(LoadingTimer, {})
			runWhileMounted(Component, function()
				spyOnInjectedProps.loadingTimerProps.startTimer()
				wait(0.1)
				jestExpect(onReachingThreshold).toHaveBeenCalledTimes(1)
				jestExpect(onReachingThreshold).toHaveBeenCalledWith(jestExpect.any("number"), {})
				spyOnInjectedProps.loadingTimerProps.stopTimer()
				jestExpect(onLoadedSpy).never.toHaveBeenCalled()
			end)
		end)
	end)

	describe("onReachingThreshold", function()
		-- TODO: SOCCONN-1792 unskip once confirmed wait() is safe to use
		it.skip(
			"SHOULD call onReachingThreshold only if loadingThreshold was passed and stopTimer was not called before",
			function()
				local onReachingThreshold = jest.fn()
				local config = {
					loadingThreshold = 0.1,
					onReachingThreshold = function(...)
						onReachingThreshold(...)
					end,
				}
				local LoadingTimer = withLoadingTimer(TestElement, config)
				local Component = Roact.createElement(LoadingTimer, {})
				runWhileMounted(Component, function()
					spyOnInjectedProps.loadingTimerProps.startTimer()
					wait(0.1)
					jestExpect(onReachingThreshold).toHaveBeenCalledTimes(1)
					jestExpect(onReachingThreshold).toHaveBeenCalledWith(jestExpect.any("number"), {})
				end)
			end
		)

		-- TODO: SOCCONN-1792 unskip once confirmed wait() is safe to use
		it.skip(
			"SHOULD not call onReachingThreshold if loadingThreshold was not passed and stopTimer was not called before",
			function()
				local onReachingThreshold = jest.fn()
				local config = {
					onReachingThreshold = function(...)
						onReachingThreshold(...)
					end,
				}
				local LoadingTimer = withLoadingTimer(TestElement, config)
				local Component = Roact.createElement(LoadingTimer, {})
				runWhileMounted(Component, function()
					spyOnInjectedProps.loadingTimerProps.startTimer()
					wait(0.1)
					jestExpect(onReachingThreshold).never.toHaveBeenCalled()
				end)
			end
		)
	end)

	-- TODO: SOCCONN-1792 unskip once confirmed wait() is safe to use
	it.skip("SHOULD not call onReachingThreshold if stopTimer was called before loadingThreshold", function()
		local onReachingThreshold = jest.fn()
		local onLoadedSpy = jest.fn()
		local config = {
			loadingThreshold = 0.1,
			onReachingThreshold = function(...)
				onReachingThreshold(...)
			end,
			onLoaded = function(...)
				onLoadedSpy(...)
			end,
		}
		local LoadingTimer = withLoadingTimer(TestElement, config)
		local Component = Roact.createElement(LoadingTimer, {})
		runWhileMounted(Component, function()
			spyOnInjectedProps.loadingTimerProps.startTimer()
			spyOnInjectedProps.loadingTimerProps.stopTimer()
			wait(0.1)
			jestExpect(onReachingThreshold).never.toHaveBeenCalled()
			jestExpect(onLoadedSpy).toHaveBeenCalledTimes(1)
			jestExpect(onLoadedSpy).toHaveBeenCalledWith(jestExpect.any("number"), {})
		end)
	end)

	-- TODO: SOCCONN-1792 unskip once confirmed wait() is safe to use
	it.skip("SHOULD not call onReachingThreshold if timer was never started", function()
		local onReachingThreshold = jest.fn()
		local config = {
			loadingThreshold = 0.1,
			onReachingThreshold = function(...)
				onReachingThreshold(...)
			end,
		}
		local LoadingTimer = withLoadingTimer(TestElement, config)
		local Component = Roact.createElement(LoadingTimer, {})
		runWhileMounted(Component, function()
			wait(0.1)
			jestExpect(onReachingThreshold).never.toHaveBeenCalled()
		end)
	end)

	-- TODO: SOCCONN-1792 unskip once confirmed wait() is safe to use
	it.skip("SHOULD not call onReachingThreshold if timer was resetted", function()
		local onReachingThreshold = jest.fn()
		local config = {
			loadingThreshold = 0.1,
			onReachingThreshold = function(...)
				onReachingThreshold(...)
			end,
		}
		local LoadingTimer = withLoadingTimer(TestElement, config)
		local Component = Roact.createElement(LoadingTimer, {})
		runWhileMounted(Component, function()
			spyOnInjectedProps.loadingTimerProps.startTimer()
			spyOnInjectedProps.loadingTimerProps.resetTimer()
			wait(0.1)
			jestExpect(onReachingThreshold).never.toHaveBeenCalled()
		end)
	end)
end)
