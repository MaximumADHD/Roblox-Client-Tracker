local CorePackages = game:GetService("CorePackages")
local Jest = require(CorePackages.JestGlobals)
local expect = Jest.expect
local jest = Jest.jest

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local Rodux = require(CorePackages.Rodux)
local RoactRodux = require(CorePackages.RoactRodux)
local Rhodium = require(CorePackages.Rhodium)
local List = require(CorePackages.Cryo).List
local Promise = require(CorePackages.Promise)

local UIBlox = require(CorePackages.Packages.UIBlox)
local AppStyleProvider = UIBlox.App.Style.AppStyleProvider

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Modules = CoreGui.RobloxGui.Modules
local TopBar = Modules.TopBar
local Reducer = require(TopBar.Reducer)
local PresentationComponent = require(TopBar.Components.Presentation.BadgeOver13:FindFirstChild("BadgeOver13.story"))
local AppComponent = require(TopBar.Components.Presentation.BadgeOver13)

local GetFFlagFixChromeReferences = require(RobloxGui.Modules.Flags.GetFFlagFixChromeReferences)

local Chrome = Modules.Chrome
local ChromeEnabled : any = if GetFFlagFixChromeReferences() then require(Chrome.Enabled) else Chrome.Enabled

local waitForEvents = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents

function CloseChrome()
	-- New users will see Chrome open and hide BadgeOver13
	-- In order for these tests to pass, we need to force close Chrome
	if GetFFlagFixChromeReferences() then 
		if ChromeEnabled() then 
			local ChromeService = require(Chrome.Service)
			ChromeService:close()
		end 
	else 
		if ChromeEnabled then 
			local ChromeService = require(Chrome.Service)
			ChromeService:close()
		end
	end
end

return function()
	describe("WHEN story is mounted", function()

		local fireEvent = jest.fn()
		local openWebView = jest.fn()

		local parent = Instance.new("ScreenGui")
		parent.Parent = game:GetService("CoreGui")

		local root = ReactRoblox.createRoot(parent)

		local store = Rodux.Store.new(Reducer, nil, {
			Rodux.thunkMiddleware,
		})

		beforeAll(function()
			CloseChrome()
			ReactRoblox.act(function()
				root:render(
					React.createElement(RoactRodux.StoreProvider, {
						store = store
					}, {
						ThemeProvider = React.createElement(AppStyleProvider, {
							style = {
								themeName = "Light",
								fontName = "Gotham",
							},
						}, {
							test = React.createElement(PresentationComponent, {
								fireEvent = fireEvent,
								bodyText = {
									"first",
									"second",
									"third",
								},
								openWebview = openWebView,
								visible = true,
							})
						})
					})
				)
			end)
		end)

		afterAll(function()
			ReactRoblox.act(function()
				root:unmount()
			end)
			parent:Destroy()
		end)

		it("SHOULD send an analytic impression for the badge to event stream", function()
			expect(fireEvent).toHaveBeenCalledTimes(1)
			expect(fireEvent).toHaveBeenLastCalledWith("badgeImpression", { badgeType = "13Plus" })
		end)

		it("SHOULD only display the badge without the popup", function()
			local container = parent:FindFirstChild("subject", true)
			local badge = container:FindFirstChild("badge")
			local popup = container:FindFirstChild("popup")

			expect(badge).toHaveProperty("Visible", true)
			expect(popup).toHaveProperty("Visible", false)
		end)

		it("SHOULD display 13+ on the badge", function()
			local container = parent:FindFirstChild("subject", true)
			local badge = container:FindFirstChild("badge")

			local textLabel = badge:FindFirstChildOfClass("TextLabel")
			expect(textLabel).toHaveProperty("Text", "13+")
		end)

		it("SHOULD NEVER extend beyond a 32px width hitbox", function()
			local subject = parent:FindFirstChild("subject", true)
			assert(subject:IsA("GuiObject"), "needed to be a GuiObject")

			expect(subject.AbsoluteSize.X).toBeLessThanOrEqual(32)
		end)

		describe("WHEN badge is activated", function()

			beforeAll(function()
				CloseChrome()
				fireEvent.mockClear()

				local container = parent:FindFirstChild("subject", true)
				local button = container:FindFirstChildWhichIsA("GuiButton")
				assert(button, "missing button")

				ReactRoblox.act(function()
					Rhodium.Element.new(button):click()
				end)
			end)

			it("SHOULD send an analytic impression for the popup to event stream", function()
				expect(fireEvent).toHaveBeenCalledTimes(1)
				expect(fireEvent).toHaveBeenLastCalledWith("popupImpression", { copyType = "TextFilter+Voice" })
			end)

			it("SHOULD display the popup alongside the badge", function()
				local container = parent:FindFirstChild("subject", true)
				local popup = container:FindFirstChild("popup")

				expect(popup).toHaveProperty("Visible", true)
			end)

			it("SHOULD display popup with localized text in order", function()
				local container = parent:FindFirstChild("subject", true)
				local popup = container:FindFirstChild("popup")

				local bodyTextLabels = List.filter(popup:GetDescendants(), function(instance)
					return instance:IsA("TextLabel")
				end)

				local firstLabelIndex = List.findWhere(bodyTextLabels, function(instance)
					return instance.Text == "first"
				end)
				local secondLabelIndex = List.findWhere(bodyTextLabels, function(instance)
					return instance.Text == "second"
				end)
				local thirdLabelIndex = List.findWhere(bodyTextLabels, function(instance)
					return instance.Text == "third"
				end)

				local firstLabel = bodyTextLabels[firstLabelIndex]
				local secondLabel = bodyTextLabels[secondLabelIndex]
				local thirdLabel = bodyTextLabels[thirdLabelIndex]

				expect(firstLabel.LayoutOrder).toBeLessThan(secondLabel.LayoutOrder)
				expect(secondLabel.LayoutOrder).toBeLessThan(thirdLabel.LayoutOrder)
			end)

			it("SHOULD display Learn More link at the bottom of the popup", function()
				local container = parent:FindFirstChild("subject", true)
				local popup = container:FindFirstChild("popup")
				local link = popup:FindFirstChild("link", true)

				assert(link, "link should exist")

				expect(link).toHaveProperty("Visible", true)
			end)

			describe("WHEN Learn More link is activated", function()

				beforeAll(function()
					CloseChrome()
					fireEvent.mockClear()

					local container = parent:FindFirstChild("subject", true)
					local popup = container:FindFirstChild("popup")
					local link = popup:FindFirstChild("link")
					assert(link, "missing link")

					ReactRoblox.act(function()
						Rhodium.Element.new(link):click()
					end)
				end)

				it("SHOULD call props.openWebview", function()
					expect(openWebView).toHaveBeenCalledTimes(1)
				end)

				it("SHOULD send an analytic interaction for the click and hover to event stream", function()
					expect(fireEvent).toHaveBeenCalledWith("formInteraction", { aType = "hover", input = "learn_more" })
					expect(fireEvent).toHaveBeenCalledWith("formInteraction", { aType = "click", input = "learn_more" })
				end)
			end)
		end)
	end)

	describe("WHEN app is mounted", function()

		beforeAll(function()
			CloseChrome()
		end)
		local setRBXEventStream = jest.fn()

		local function mountWithConfig(config)
			local parent = Instance.new("ScreenGui")
			parent.Parent = game:GetService("CoreGui")

			local PropertyChangedSignal = Instance.new("BindableEvent")
			local player = {
				UnfilteredChat = config.isUnfilteredChat,
				GetPropertyChangedSignal = function()
					return PropertyChangedSignal.Event
				end,
				PropertyChangedSignal = PropertyChangedSignal,
				UserId = "123",
			} :: any

			local store = Rodux.Store.new(Reducer, nil, {
				Rodux.thunkMiddleware,
			})

			local root = ReactRoblox.createRoot(parent)
			ReactRoblox.act(function()
				root:render(
					React.createElement(RoactRodux.StoreProvider, {
						store = store
					}, {
						ThemeProvider = React.createElement(AppStyleProvider, {
							style = {
								themeName = "Light",
								fontName = "Gotham",
							},
						}, {
							test = React.createElement(AppComponent, {
								analytics = {
									EventStream = {
										setRBXEventStream = setRBXEventStream,
									},
								},
								layoutOrder = 0,
								player = player,
								voiceChatServiceManager = {
									asyncInit = function()
										if config.isVoiceEnabled == true then
											return Promise.resolve()
										else
											return Promise.reject()
										end
									end,
								},
								VRService = {
									VREnabled = config.isVREnabled,
								},
								visibilityChanged = function() end,
							})
						})
					}))
			end)

			return {
				player = player,
				parent = parent,
				cleanup = function()
					ReactRoblox.act(function()
						root:unmount()
					end)
					parent:Destroy()
				end,
			}
		end

		it("SHOULD display badge if user is enrolled in voice only", function()
			local result = mountWithConfig({
				isUnfilteredChat = false,
				isVoiceEnabled = true,
				isVREnabled = false,
			})

			local badge = result.parent:FindFirstChild("badge", true)
			expect(badge).toHaveProperty("Visible", true)

			result.cleanup()
		end)

		it("SHOULD display badge if user is enrolled in unfiltered chat only", function()
			local result = mountWithConfig({
				isUnfilteredChat = true,
				isVoiceEnabled = false,
				isVREnabled = false,
			})

			local badge = result.parent:FindFirstChild("badge", true)
			expect(badge).toHaveProperty("Visible", true)

			result.cleanup()
		end)

		it("SHOULD display badge if user is enrolled in unfiltered chat and voice", function()
			local result = mountWithConfig({
				isUnfilteredChat = true,
				isVoiceEnabled = true,
				isVREnabled = false,
			})

			local badge = result.parent:FindFirstChild("badge", true)
			expect(badge).toHaveProperty("Visible", true)

			result.cleanup()
		end)

		it("SHOULD NOT display badge if user is not enrolled in unfiltered chat or voice", function()
			local result = mountWithConfig({
				isUnfilteredChat = false,
				isVoiceEnabled = false,
				isVREnabled = false,
			})

			local badge = result.parent:FindFirstChild("badge", true)
			expect(badge).toHaveProperty("Visible", false)

			result.cleanup()
		end)

		it("SHOULD ONLY display badge if user is using VR with a GamepadCursor", function()
			game:GetService("GamepadService").GamepadCursorEnabled = false

			local result = mountWithConfig({
				isUnfilteredChat = true,
				isVoiceEnabled = true,
				isVREnabled = true,
			})

			local badge = result.parent:FindFirstChild("badge", true)

			-- start not visible in VR
			expect(badge).toHaveProperty("Visible", false)

			-- gamepad cursor was turned on
			ReactRoblox.act(function()
				game:GetService("GamepadService").GamepadCursorEnabled = true
			end)
			waitForEvents.act()
			expect(badge).toHaveProperty("Visible", true)

			-- gamepad cursor was turned off
			ReactRoblox.act(function()
				game:GetService("GamepadService").GamepadCursorEnabled = false
			end)
			waitForEvents.act()
			expect(badge).toHaveProperty("Visible", false)

			result.cleanup()
		end)

		it("SHOULD display if unfiltered chat enrollment changes at runtime", function()
			local result = mountWithConfig({
				isUnfilteredChat = false,
				isVoiceEnabled = false,
				isVREnabled = false,
			})

			local badge = result.parent:FindFirstChild("badge", true)
			expect(badge).toHaveProperty("Visible", false)

			-- change enrollment at runtime
			ReactRoblox.act(function()
				result.player.UnfilteredChat = true
				result.player.PropertyChangedSignal:Fire()
			end)
			waitForEvents.act()
			expect(badge).toHaveProperty("Visible", true)

			result.cleanup()
		end)
	end)
end
