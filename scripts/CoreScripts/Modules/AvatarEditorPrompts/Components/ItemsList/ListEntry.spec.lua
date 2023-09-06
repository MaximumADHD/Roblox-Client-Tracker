return function()
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)

	describe("ListEntry", function()
		it("should create and destroy without errors", function()
			local ListEntry = require(script.Parent.ListEntry)

			local element = Roact.createElement(UIBlox.Style.Provider, {}, {
				ListEntry = Roact.createElement(ListEntry, {
					text = "Hello World!",
					hasBullet = true,
					layoutOrder = 1,
				})
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)

		it("should accept and assign refs", function()
			local ListEntry = require(script.Parent.ListEntry)
			local ref = Roact.createRef()

			local element = Roact.createElement(UIBlox.Style.Provider, {}, {
				ListEntry = Roact.createElement(ListEntry, {
					text = "Hello World!",
					hasBullet = true,
					layoutOrder = 1,
					[Roact.Ref] = ref,
				})
			})

			local instance = Roact.mount(element)

			expect(ref.current).never.toBeNil()
			expect(ref.current:IsA("Instance")).toBe(true)

			Roact.unmount(instance)
		end)
	end)
end
