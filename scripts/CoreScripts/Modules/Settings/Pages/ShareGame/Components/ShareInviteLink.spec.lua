return function()
	local CorePackages = game:GetService("CorePackages")
	local CoreGui = game:GetService("CoreGui")
	local RobloxGui = CoreGui:WaitForChild("RobloxGui")
	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local RoactRodux = require(CorePackages.RoactRodux)
	local Store = require(CorePackages.Rodux).Store
	local UIBlox = InGameMenuDependencies.UIBlox
	local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
	local Constants = require(ShareGame.Constants)
	local dependencies = require(CorePackages.Workspace.Packages.NotificationsCommon).ReducerDependencies

	local NetworkingShareLinks = dependencies.NetworkingShareLinks


	local ShareInviteLink = require(script.Parent.ShareInviteLink)

	afterEach(function()
		NetworkingShareLinks.GenerateLink.Mock.clear()
	end)

	it("should mount", function()
		local store = Store.new(function()
			return {
				ShareLinks = {
					Invites = {
						shareInviteLink = {
							linkId ="123456"
						}
					}
				},
				NetworkStatus = {}
			}
		end)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ShareInviteLink = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				ShareButton = Roact.createElement(ShareInviteLink, {
					deviceLayout = Constants.DeviceLayout.DESKTOP,
				}),
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
