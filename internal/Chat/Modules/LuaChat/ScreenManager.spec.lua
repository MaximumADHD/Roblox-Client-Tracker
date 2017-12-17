return function()
	local Modules = script.Parent
	local ScreenManager = require(Modules.ScreenManager)
	local BaseView = require(Modules.BaseView)

	--[[
		Make an approximation of a view using BaseView
	]]
	local function makeView(intentValue)
		local view = {
			route = {
				intent = intentValue,
			},
			startCount = 0,
			stopCount = 0,
			resumeCount = 0,
			pauseCount = 0,
		}

		setmetatable(view, {
			__index = BaseView
		})

		function view:Start(...)
			BaseView.Start(self, ...)
			self.startCount = self.startCount + 1
		end

		function view:Stop(...)
			BaseView.Stop(self, ...)
			self.stopCount = self.stopCount + 1
		end

		function view:Resume(...)
			BaseView.Resume(self, ...)
			self.resumeCount = self.resumeCount + 1
		end

		function view:Pause(...)
			BaseView.Pause(self, ...)
			self.pauseCount = self.pauseCount + 1
		end

		function view:Destruct(...)
			BaseView.Destruct(self, ...)
		end

		return view
	end

	it("should have no current view by default", function()
		local screenManager = ScreenManager.new(nil)

		expect(screenManager).to.be.ok()
	end)

	it("should push views onto an empty stack", function()
		local screenManager = ScreenManager.new(nil)
		local view = makeView("view")

		screenManager:PushView(view)

		expect(view.startCount).to.equal(1)

		expect(screenManager:GetCurrentView()).to.equal(view)
	end)

	it("should push and pop views onto eachother", function()
		local screenManager = ScreenManager.new(nil)
		local viewA = makeView("viewA")
		local viewB = makeView("viewB")

		screenManager:PushView(viewA)
		screenManager:PushView(viewB)

		expect(screenManager:GetCurrentView()).to.equal(viewB)

		expect(viewA.startCount).to.equal(1)
		expect(viewA.pauseCount).to.equal(1)

		expect(viewB.startCount).to.equal(1)

		local popped = screenManager:PopView()

		expect(popped).to.equal(viewB)
		expect(screenManager:GetCurrentView()).to.equal(viewA)

		expect(viewA.resumeCount).to.equal(1)
		expect(viewB.stopCount).to.equal(1)
	end)

	it("should prevent pushing a view on top of itself", function()
		local screenManager = ScreenManager.new(nil)
		local viewA = makeView("viewA")

		expect(screenManager).to.be.ok()

		expect(function()
			screenManager:PushView(viewA)
			screenManager:PushView(viewA)
		end).to.throw()
	end)
end