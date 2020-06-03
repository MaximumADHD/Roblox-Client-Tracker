return function()
	local Roact = require(script.Parent.Parent.Parent.Parent.Parent.Roact)
	local TopBar = require(script.Parent.Parent.TopBar)

	it("should mount and unmount without issue", function()
		local scene = {
			descriptor = {
				options = {
					headerTitle = "HOME",
				},
				navigation = {
					goBack = function(key)
						print(key)
					end,
				},
				key = "aScene"
			},
			index = 1,
		}
		local props = {
			scenes = {
				scene,
			},
			scene = scene,
		}

		local instance = Roact.mount(Roact.createElement(TopBar, props))
		Roact.unmount(instance)
	end)

	itSKIP("should detect when to display the back button", function()
		local scene = {
			descriptor = {
				options = {
					headerTitle = "HOME",
				},
				navigation = {
					goBack = function(key)
						print(key)
					end,
				},
				key = "aScene"
			},
			index = 2,
		}
		local props = {
			scenes = {
				scene,
			},
			scene = scene,
		}

		local topBar = Roact.createElement(TopBar, props)
		local frame = Instance.new("Frame")
		local handle = Roact.mount(topBar, frame)

		local Button = frame:FindFirstChild("Button", true)

		expect(Button).to.be.ok()

		Roact.unmount(handle)
		frame:Destroy()
	end)

	itSKIP("should detect when NOT to display the back button", function()
		local scene = {
			descriptor = {
				options = {
					headerTitle = "HOME",
				},
				navigation = {
					goBack = function(key)
						print(key)
					end,
				},
				key = "aScene"
			},
			index = 1,
		}
		local props = {
			scenes = {
				scene,
			},
			scene = scene,
		}

		local topBar = Roact.createElement(TopBar, props)
		local frame = Instance.new("Frame")
		local handle = Roact.mount(topBar, frame)

		local Button = frame:FindFirstChild("Button", true)

		expect(Button).to.never.be.ok()

		Roact.unmount(handle)
		frame:Destroy()
	end)

	it("should throw if we provide the wrong props", function()
		local function renderAndMountAndCleanup(component, props)
			local handle = Roact.mount(Roact.createElement(component, props))
			Roact.unomunt(handle)
		end

		local scene1 = {
			descriptor = {
				options = {
					headerTitle = "Throw Title!",
					renderHeaderTitle = function()
						return Roact.createElement("TextLabel")
					end,
				},
				navigation = {
					goBack = function(key)
						print(key)
					end,
				},
				key = "aScene"
			},
			index = 2,
		}
		local props1 = {
			scenes = {
				scene1,
			},
			scene = scene1,
		}
		expect(function()
			renderAndMountAndCleanup(TopBar, props1)
		end).to.throw()
		local scene2 = {
			descriptor = {
				options = {
					headerSubtitle = "Throw Subtitle!",
					renderHeaderSubtitle = function()
						return Roact.createElement("TextLabel")
					end,
				},
				navigation = {
					goBack = function(key)
						print(key)
					end,
				},
				key = "aScene"
			},
			index = 2,
		}
		local props2 = {
			scenes = {
				scene2,
			},
			scene = scene2,
		}
		expect(function()
			renderAndMountAndCleanup(TopBar, props2)
		end).to.throw()
		local scene3 = {
			descriptor = {
				options = {
					renderHeaderSubtitle = 38139,
				},
				navigation = {
					goBack = function(key)
						print(key)
					end,
				},
				key = "aScene"
			},
			index = 2,
		}
		local props3 = {
			scenes = {
				scene3,
			},
			scene = scene3,
		}
		expect(function()
			renderAndMountAndCleanup(TopBar, props3)
		end).to.throw()
	end)

	itSKIP("should properly pass on the options to the default components", function()
		local testHeaderBackgroundColor = Color3.fromRGB(200, 200, 200)
		local testTitle = "Title!"
		local testSubtitle = "Subtitle!"
		local testTitleSize = 55
		local testSubtitleSize = 11
		local testTitleContainerColor = Color3.fromRGB(144, 124, 123)
		local testLeftContainerColor = Color3.fromRGB(23, 235, 244)

		local scene = {
			descriptor = {
				options = {
					headerTitle = testTitle,
					headerSubtitle = testSubtitle,
					headerStyle = {
						BackgroundColor3 = testHeaderBackgroundColor
					},
					headerTitleStyle = {
						TextSize = testTitleSize,
					},
					headerSubtitleStyle = {
						TextSize = testSubtitleSize,
					},
					headerTitleContainerStyle = {
						BackgroundColor3 = testTitleContainerColor,
					},
					headerLeftContainerStyle = {
						BackgroundColor3 = testLeftContainerColor,
					}
				},
				navigation = {
					goBack = function(key)
						print(key)
					end,
				},
				key = "aScene"
			},
			index = 2,
		}
		local props = {
			scenes = {
				scene,
			},
			scene = scene,
		}

		local topBar = Roact.createElement(TopBar, props)
		local frame = Instance.new("Frame")
		local handle = Roact.mount(topBar, frame)

		local TopBarOutermost = frame:FindFirstChildWhichIsA("Frame", true)
		local Title = frame:FindFirstChild("Title", true)
		local Subtitle = frame:FindFirstChild("Subtitle", true)
		local LeftContainer = frame:FindFirstChild("left", true)
		local CenterContainer = frame:FindFirstChild("center", true)

		expect(TopBarOutermost.BackgroundColor3).to.equal(testHeaderBackgroundColor)
		expect(Title.Text).to.equal(testTitle)
		expect(Subtitle.Text).to.equal(testSubtitle)
		expect(Title.TextSize).to.equal(testTitleSize)
		expect(Subtitle.TextSize).to.equal(testSubtitleSize)
		expect(LeftContainer.BackgroundColor3).to.equal(testLeftContainerColor)
		expect(CenterContainer.BackgroundColor3).to.equal(testTitleContainerColor)

		Roact.unmount(handle)
		frame:Destroy()
	end)

	itSKIP("should accept render props and inject props", function()
		local testHeaderBackgroundColor = Color3.fromRGB(200, 200, 200)
		local testTitle = "Title!"
		local testSubtitle = "Subtitle!"
		local testTitleSize = 55
		local testSubtitleSize = 11
		local testTitleContainerColor = Color3.fromRGB(144, 124, 123)
		local testLeftContainerColor = Color3.fromRGB(23, 235, 244)
		local testRightContainerColor = Color3.fromRGB(233, 0, 2)
		local testKey = "testKey"

		local scene = {
			descriptor = {
				options = {
					renderHeaderTitle = function(props)
						return Roact.createElement("TextLabel", {
							Text = props.headerTitle,
							TextSize = props.headerTitleStyle.TextSize,
						})
					end,
					renderHeaderSubtitle = function(props)
						return Roact.createElement("TextLabel", {
							Text = props.headerSubtitle,
							TextSize = props.headerSubtitleStyle.TextSize,
						})
					end,
					renderHeaderTitleContainer = function(props)
						return Roact.createElement("Frame", {
							BackgroundColor3 = props.headerTitleContainerStyle.BackgroundColor3,
						}, {
							Title = Roact.createElement(props.renderHeaderTitle, {
								headerTitleStyle = props.headerTitleStyle,
								headerTitle = testTitle
							}),
							Subtitle = Roact.createElement(props.renderHeaderSubtitle, {
								headerSubtitleStyle = props.headerSubtitleStyle,
								headerSubtitle = testSubtitle
							}),
						})
					end,
					renderHeaderRight = function()
						return Roact.createElement("Frame", {
							BackgroundColor3 = testRightContainerColor
						})
					end,
					renderHeaderLeftContainer = function(props)
						return Roact.createElement("Frame", {
							BackgroundColor3 = props.headerLeftContainerStyle.BackgroundColor3,
						}, {
							Button = Roact.createElement(props.renderHeaderBackButton, {
								goBack = props.goBack,
							}),
						})
					end,
					renderHeaderBackButton = function(props)
						return Roact.createElement("ImageButton", {
							[Roact.Event.Activated] = props.goBack,
						})
					end,
					headerStyle = {
						BackgroundColor3 = testHeaderBackgroundColor
					},
					headerTitleStyle = {
						TextSize = testTitleSize,
					},
					headerSubtitleStyle = {
						TextSize = testSubtitleSize,
					},
					headerTitleContainerStyle = {
						BackgroundColor3 = testTitleContainerColor,
					},
					headerLeftContainerStyle = {
						BackgroundColor3 = testLeftContainerColor,
					}
				},
				navigation = {
					goBack = function(key)
						return key
					end,
				},
				key = testKey
			},
			index = 2,
		}
		local props = {
			scenes = {
				scene,
			},
			scene = scene,
		}

		local topBar = Roact.createElement(TopBar, props)
		local frame = Instance.new("Frame")
		local handle = Roact.mount(topBar, frame)

		local TopBarOutermost = frame:FindFirstChildWhichIsA("Frame", true)
		local Title = frame:FindFirstChild("Title", true)
		local Subtitle = frame:FindFirstChild("Subtitle", true)
		local LeftContainer = frame:FindFirstChild("left", true)
		local CenterContainer = frame:FindFirstChild("center", true)
		local RightContainer = frame:FindFirstChild("right", true)

		expect(TopBarOutermost.BackgroundColor3).to.equal(testHeaderBackgroundColor)
		expect(Title.Text).to.equal(testTitle)
		expect(Subtitle.Text).to.equal(testSubtitle)
		expect(Title.TextSize).to.equal(testTitleSize)
		expect(Subtitle.TextSize).to.equal(testSubtitleSize)
		expect(LeftContainer.BackgroundColor3).to.equal(testLeftContainerColor)
		expect(CenterContainer.BackgroundColor3).to.equal(testTitleContainerColor)
		expect(RightContainer.BackgroundColor3).to.equal(testRightContainerColor)

		Roact.unmount(handle)
		frame:Destroy()
	end)
end
