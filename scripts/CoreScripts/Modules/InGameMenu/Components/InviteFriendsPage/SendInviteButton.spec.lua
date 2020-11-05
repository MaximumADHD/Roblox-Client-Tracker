return function()
	local CorePackages = game:GetService("CorePackages")

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local UIBlox = InGameMenuDependencies.UIBlox

	local InGameMenu = script.Parent.Parent.Parent

	local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
	local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local SendInviteButton = require(script.Parent.SendInviteButton)

	local Constants = require(InGameMenu.Resources.Constants)
	local InviteStatus = Constants.InviteStatus

	it("should create and destroy without errors", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			SendInviteButton = Roact.createElement(SendInviteButton, {
				onActivated = function()
					print("onActivated")
				end,
				animationBegun = function()
					print("animationBegun")
				end,
				animationEnded = function()
					print("animationEnded")
				end,
				userInviteStatus = nil,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	describe("animations", function()
		it("should call animation began and ended once", function()
			local animationBegunCalled = 0
			local animationEndedCalled = 0

			local element = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				SendInviteButton = Roact.createElement(SendInviteButton, {
					onActivated = function()
						print("onActivated")
					end,
					animationBegun = function()
						animationBegunCalled = animationBegunCalled + 1
					end,
					animationEnded = function()
						animationEndedCalled = animationEndedCalled + 1
					end,
					userInviteStatus = InviteStatus.Failed,
				}),
			})

			local instance = Roact.mount(element)
			wait(1)
			Roact.unmount(instance)

			expect(animationBegunCalled).to.equal(1)
			expect(animationEndedCalled).to.equal(1)
		end)
	end)
end