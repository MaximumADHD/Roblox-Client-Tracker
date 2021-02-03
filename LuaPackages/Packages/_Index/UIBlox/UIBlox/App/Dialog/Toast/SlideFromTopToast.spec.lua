return function()
	local RunService = game:GetService("RunService")

	local ToastRoot = script.Parent
	local DialogRoot = ToastRoot.Parent
	local AppRoot = DialogRoot.Parent
	local UIBloxRoot = AppRoot.Parent
	local Packages = UIBloxRoot.Parent

	local Roact = require(Packages.Roact)

	local mockStyleComponent = require(UIBloxRoot.Utility.mockStyleComponent)
	local SlideFromTopToast = require(ToastRoot.SlideFromTopToast)

	local createSlideFromTopToast = function(props)
		return mockStyleComponent({
			SlideFromTopToast = Roact.createElement(SlideFromTopToast, props)
		})
	end

	it("should throw on empty toastTitle", function()
		local element = createSlideFromTopToast({
			toastContent = {
				toastTitle = nil,
			},
		})
		expect(function()
			Roact.mount(element)
		end).to.throw()
	end)

	it("should create and destroy without errors", function()
		local element = createSlideFromTopToast({
			toastContent = {
				toastTitle = "Test Title",
			},
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors when render InformativeToast", function()
		local element = createSlideFromTopToast({
			toastContent = {
				iconImage = "rbxassetid://4126499279",
				toastSubtitle = "test test test",
				toastTitle = "Item on sale",
			},
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors when render InteractiveToast with onActivated callback", function()
		local element = createSlideFromTopToast({
			toastContent = {
				iconImage = "rbxassetid://4126499279",
				onActivated = function() end,
				toastSubtitle = "Tap to see more information",
				toastTitle = "System Outage",
			},
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	-- FIXME: This test sometimes fails. I think it's because having a
	-- high spring frequency does not guarantee an opening in 1 frame.
	-- TODO: https://jira.rbx.com/browse/UIBLOX-181
	itSKIP("should consistently close immediately after opening when provided a duration of 0", function()
		-- Run test 10 times to confirm it is not flaky
		for _ = 1, 10 do
			local appeared = false
			local disappeared = false

			local element = createSlideFromTopToast({
				toastContent = {
					toastTitle = "Test Title",
					onAppeared = function()
						appeared = true
					end,
					onDismissed = function()
						disappeared = true
					end,
				},
				springOptions = {
					frequency = 15000000,
					damping = 1,
				},
				duration = 0,
			})

			local instance = Roact.mount(element)

			-- Wait a heartbeat and a step to ensure the otter motor has a chance to complete its movement
			RunService.Heartbeat:Wait()
			RunService.Stepped:Wait()
			expect(appeared).to.equal(true)
			expect(disappeared).to.equal(false)

			RunService.Heartbeat:Wait()
			RunService.Stepped:Wait()
			expect(appeared).to.equal(true)
			expect(disappeared).to.equal(true)

			Roact.unmount(instance)
		end
	end)
end