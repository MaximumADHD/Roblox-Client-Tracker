return function()
	local Roact = require(script.Parent.Parent.Parent.Parent.Parent.Roact)
	local TopBarBackButton = require(script.Parent.Parent.TopBarBackButton)

    it("should mount and unmount without issue", function()
        local instance = Roact.mount(Roact.createElement(TopBarBackButton))
		Roact.unmount(instance)
    end)

    itSKIP("should accept render props and inject them with props", function()
        local testText = "This is some test text!"
        local props = {
            renderHeaderBackButton = function(props)
                local headerBackButtonStyle = props.headerBackButtonStyle
                return Roact.createElement("TextButton", {
                    Text = headerBackButtonStyle.Text
                })
            end,
            headerBackButtonStyle = {
                Text = testText,
            }
        }

        local backButton = Roact.createElement(TopBarBackButton, props)
        local frame = Instance.new("Frame")
        local handle = Roact.mount(backButton, frame)

        local textButton = frame:FindFirstChildWhichIsA("TextButton", true)
        local text = textButton.Text
        expect(text).to.equal(testText)

        Roact.unmount(handle)
        frame:Destroy()
    end)

end
