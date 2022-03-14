return function()
	local CoreGui = game:GetService("CoreGui")
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local dependencies = require(SocialLibraries.dependencies)
	local Roact = dependencies.Roact
	local RoactNavigation = dependencies.RoactNavigation
	local Packages = SocialLibraries.Parent
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect
	local jest = JestGlobals.jest
	local UIBlox = dependencies.UIBlox
	local Images = UIBlox.App.ImageSet.Images

	local ToastScreen = require(script.Parent)

	describe("WHEN mounted as screen of StackNavigator", function()
		it("SHOULD mount and unmount without issue", function(context)
			local TestNavigator = RoactNavigation.createRobloxStackNavigator({
				{
					["TestScreen"] = {
						screen = ToastScreen,
					},
				},
			})

			local navigationAppContainer = RoactNavigation.createAppContainer(TestNavigator)
			local _, cleanup = context.UnitTestHelpers.mountFrame(Roact.createElement(navigationAppContainer))

			cleanup()
		end)
	end)

	describe("WHEN mounted with mock navigation", function()
		it("SHOULD call correct props after duration", function(context)
			local goBack = jest.fn()
			local onAppeared = jest.fn()
			local onDismissed = jest.fn()

			local _, cleanup = context.UnitTestHelpers.mountFrame(Roact.createElement(ToastScreen, {
				navigation = {
					getParam = function()
						return {
							toastContent = {
								onAppeared = function()
									onAppeared()
								end,
								onDismissed = function()
									onDismissed()
								end,
							},
							duration = 1,
						}
					end,
					goBack = function()
						goBack()
					end,
				}
			}))

			wait(1)
			jestExpect(onAppeared).toHaveBeenCalledTimes(1)

			wait(2)
			jestExpect(goBack).toHaveBeenCalledTimes(1)
			jestExpect(onDismissed).toHaveBeenCalledTimes(1)

			cleanup()
		end)

		it("SHOULD pass correct props", function(context)
			local ElementGui = Roact.createElement(ToastScreen, {
				navigation = {
					getParam = function()
						return {
							toastContent = {
								toastTitle = "toastTitle",
								toastSubtitle = "toastSubtitle",
								iconImage = Images["icons/actions/block"],
							},
							duration = 1,
						}
					end,
					goBack = function()end,
				}
			})

			local folder, cleanup = context.UnitTestHelpers.mountFrame(ElementGui, {
				parent = Instance.new("Folder", CoreGui),
			})

			wait(1)
			local titleElement = context.RhodiumHelpers.findFirstElement(folder, {
				Text = "toastTitle",
			})
			local subtitleElement = context.RhodiumHelpers.findFirstElement(folder, {
				Text = "toastSubtitle",
			})

			local iconElement = context.RhodiumHelpers.findFirstInstance(
				folder,
				context.UnitTestHelpers.findImageSet("icons/actions/block")
			)

			jestExpect(titleElement).never.toBeNil()
			jestExpect(subtitleElement).never.toBeNil()
			jestExpect(iconElement).never.toBeNil()

			cleanup()
		end)

		it("SHOULD pass correct icon if it's not passed", function(context)
			local ElementGui = Roact.createElement(ToastScreen, {
				navigation = {
					getParam = function()
						return {
							toastContent = {
								toastTitle = "toastTitle",
							},
							duration = 1,
						}
					end,
					goBack = function()end,
				}
			})

			local folder, cleanup = context.UnitTestHelpers.mountFrame(ElementGui, {
				parent = Instance.new("Folder", CoreGui),
			})

			wait(1)
			local titleElement = context.RhodiumHelpers.findFirstElement(folder, {
				Text = "toastTitle",
			})

			local iconElement = context.RhodiumHelpers.findFirstInstance(
				folder,
				context.UnitTestHelpers.findImageSet("icons/status/alert")
			)

			jestExpect(titleElement).never.toBeNil()
			jestExpect(iconElement).never.toBeNil()

			cleanup()
		end)

		it("SHOULD not render icon if hideIcon passed", function(context)
			local ElementGui = Roact.createElement(ToastScreen, {
				navigation = {
					getParam = function()
						return {
							toastContent = {
								toastTitle = "toastTitle",
								hideIcon = true,
							},
							duration = 1,
						}
					end,
					goBack = function()end,
				}
			})

			local folder, cleanup = context.UnitTestHelpers.mountFrame(ElementGui, {
				parent = Instance.new("Folder", CoreGui),
			})

			wait(1)
			local titleElement = context.RhodiumHelpers.findFirstElement(folder, {
				Text = "toastTitle",
			})

			local iconElement = context.RhodiumHelpers.findFirstInstance(
				folder,
				context.UnitTestHelpers.findImageSet("icons/status/alert")
			)

			jestExpect(titleElement).never.toBeNil()
			jestExpect(iconElement).toBeNil()

			cleanup()
		end)

		it("SHOULD not render icon if icon and hideIcon passed", function(context)
			local ElementGui = Roact.createElement(ToastScreen, {
				navigation = {
					getParam = function()
						return {
							toastContent = {
								toastTitle = "toastTitle",
								iconImage = Images["icons/actions/block"],
								hideIcon = true,
							},
							duration = 1,
						}
					end,
					goBack = function()end,
				}
			})

			local folder, cleanup = context.UnitTestHelpers.mountFrame(ElementGui, {
				parent = Instance.new("Folder", CoreGui),
			})

			wait(1)
			local titleElement = context.RhodiumHelpers.findFirstElement(folder, {
				Text = "toastTitle",
			})

			local iconElementDefault = context.RhodiumHelpers.findFirstInstance(
				folder,
				context.UnitTestHelpers.findImageSet("icons/status/alert")
			)
			local iconElement = context.RhodiumHelpers.findFirstInstance(
				folder,
				context.UnitTestHelpers.findImageSet("icons/actions/block")
			)

			jestExpect(titleElement).never.toBeNil()
			jestExpect(iconElementDefault).toBeNil()
			jestExpect(iconElement).toBeNil()

			cleanup()
		end)
	end)
end
