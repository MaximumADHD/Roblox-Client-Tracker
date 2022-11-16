return function()
	local CorePackages = game:GetService("CorePackages")
	local CoreGui = game:GetService("CoreGui")
	local Modules = CoreGui.RobloxGui.Modules
	local InGameMenu = Modules.InGameMenuV3

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local UIBlox = InGameMenuDependencies.UIBlox

	local InGameMenuPolicy = require(InGameMenu.InGameMenuPolicy)

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham
	local RoactRodux = require(CorePackages.RoactRodux)
	local Store = require(CorePackages.Rodux).Store

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local mockPolicyMapper = function(policy)
		return {
			enableCopiedFeedback = function()
				return true
			end,
		}
	end

	local ShareInviteLinkButton = require(script.Parent.ShareInviteLinkButton)

	it("should create and destroy without errors", function()
		local store = Store.new(function()
			return {
				shareLinks = {
					Invites = {
						ShareInviteLink = {
							linkId = "123456"
						}
					}
				},
				NetworkStatus = {}
			}
		end)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			InGameMenuPolicy = Roact.createElement(InGameMenuPolicy.Provider, {
				policy = { mockPolicyMapper },
			}, {
				SendInviteButton = Roact.createElement(UIBlox.Core.Style.Provider, {
					style = appStyle,
				}, {
					SendInviteButton = Roact.createElement(ShareInviteLinkButton),
				})
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
