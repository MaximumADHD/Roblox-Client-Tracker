return function()
	local CorePackages = game:GetService("CorePackages")

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	describe("ListSection", function()
		it("should create and destroy without errors", function()
			local ListSection = require(script.Parent.ListSection)

			local element = Roact.createElement(UIBlox.Style.Provider, {
				style = appStyle,
			}, {
				ListEntry = Roact.createElement(ListSection, {
					headerText = "List Header",
					items = {
						"Entry 1",
						"Entry 2",
					},
					layoutOrder = 1,
					isFirstSection = true,
					isLastSection = false,
					[Roact.Ref] = Roact.createRef(),
				})
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)

		it("should accept and assign a ref", function()
			local ListSection = require(script.Parent.ListSection)
			local ref = Roact.createRef()

			local element = Roact.createElement(UIBlox.Style.Provider, {
				style = appStyle,
			}, {
				ListEntry = Roact.createElement(ListSection, {
					headerText = "List Header",
					items = {
						"Entry 1",
						"Entry 2",
					},
					layoutOrder = 1,
					isFirstSection = true,
					isLastSection = false,
					[Roact.Ref] = ref,
				})
			})

			local instance = Roact.mount(element)

			expect(ref.current).to.be.ok()
			expect(ref.current:IsA("Instance")).to.equal(true)

			Roact.unmount(instance)
		end)
	end)
end
