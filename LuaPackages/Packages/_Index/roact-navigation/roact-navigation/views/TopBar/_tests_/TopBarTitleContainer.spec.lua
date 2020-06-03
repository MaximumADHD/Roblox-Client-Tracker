return function()
	local Roact = require(script.Parent.Parent.Parent.Parent.Parent.Roact)
	local TopBarTitleContainer = require(script.Parent.Parent.TopBarTitleContainer)

    it("should mount and unmount without issue", function()
        local instance = Roact.mount(Roact.createElement(TopBarTitleContainer))
		Roact.unmount(instance)
    end)

    itSKIP("should inject the default with the provided style", function()
        local testTitle = "Test title!"
        local testSubtitle = "Test subtitle!"
        local testTitleSize = 55
        local testSubtitleSize = 11
        local props = {
            headerTitleStyle = {
                TextSize = testTitleSize
            },
            headerSubtitleStyle = {
                TextSize = testSubtitleSize,
            },
            headerTitle = testTitle,
            headerSubtitle = testSubtitle,
        }

        local container = Roact.createElement(TopBarTitleContainer, props)
        local frame = Instance.new("Frame")
        local handle = Roact.mount(container, frame)

        local Title = frame:FindFirstChild("Title", true)
        local Subtitle = frame:FindFirstChild("Subtitle", true)
        local titleText = Title.Text
        local subtitleText = Subtitle.Text
        local titleSize = Title.TextSize
        local subtitleSize = Subtitle.TextSize

        expect(titleText).to.equal(testTitle)
        expect(subtitleText).to.equal(testSubtitle)
        expect(titleSize).to.equal(testTitleSize)
        expect(subtitleSize).to.equal(testSubtitleSize)

        Roact.unmount(handle)
        frame:Destroy()
    end)

    itSKIP("should accept render props and inject them with props", function()
        local testTitle = "Test title!"
        local testSubtitle = "Test subtitle!"
        local testTitleSize = 55
        local testSubtitleSize = 11
        local props = {
            renderHeaderTitle = function(props)
                local headerTitle = props.headerTitle
                local headerTitleStyle = props.headerTitleStyle
                return Roact.createElement("TextLabel", {
                    Text = headerTitle,
                    TextSize = headerTitleStyle.TextSize,
                })
            end,
            renderHeaderSubtitle = function(props)
                local headerSubtitle = props.headerSubtitle
                local headerSubtitleStyle = props.headerSubtitleStyle
                return Roact.createElement("TextLabel", {
                    Text = headerSubtitle,
                    TextSize = headerSubtitleStyle.TextSize,
                })
            end,
            headerTitleStyle = {
                TextSize = testTitleSize
            },
            headerSubtitleStyle = {
                TextSize = testSubtitleSize,
            },
            headerTitle = testTitle,
            headerSubtitle = testSubtitle,
        }

        local container = Roact.createElement(TopBarTitleContainer, props)
        local frame = Instance.new("Frame")
        local handle = Roact.mount(container, frame)

        local Title = frame:FindFirstChild("Title", true)
        local Subtitle = frame:FindFirstChild("Subtitle", true)
        local titleText = Title.Text
        local subtitleText = Subtitle.Text
        local titleSize = Title.TextSize
        local subtitleSize = Subtitle.TextSize

        expect(titleText).to.equal(testTitle)
        expect(subtitleText).to.equal(testSubtitle)
        expect(titleSize).to.equal(testTitleSize)
        expect(subtitleSize).to.equal(testSubtitleSize)

        Roact.unmount(handle)
        frame:Destroy()
    end)

end
