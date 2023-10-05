return function()
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect
	local jest = JestGlobals.jest

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local UIBlox = InGameMenuDependencies.UIBlox

	local InGameMenu = script.Parent.Parent.Parent

	local SendInviteButton = require(script.Parent.SendInviteButton)

	local Constants = require(InGameMenu.Resources.Constants)
	local InviteStatus = Constants.InviteStatus

	it("should create and destroy without errors", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
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
			local beginSpy, beginFn = jest.fn()
			local endSpy, endFn = jest.fn()

			local element = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				SendInviteButton = Roact.createElement(SendInviteButton, {
					onActivated = function()
						print("onActivated")
					end,
					animationBegun = beginFn,
					animationEnded = endFn,
					userInviteStatus = InviteStatus.Failed,
				}),
			})

			local instance = Roact.mount(element)
			wait(1)
			Roact.unmount(instance)

			expect(beginSpy).toHaveBeenCalledTimes(1)
			expect(endSpy).toHaveBeenCalledTimes(1)
		end)
	end)
end
