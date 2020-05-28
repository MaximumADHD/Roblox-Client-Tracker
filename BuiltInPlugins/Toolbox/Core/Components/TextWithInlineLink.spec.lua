return function()
	local Plugin = script.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)
	local Cryo = require(Libs.Cryo)
	local t = require(Libs.Framework.Util.Typecheck.t)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local TextWithInlineLink = require(Plugin.Core.Components.TextWithInlineLink)

	local linkPlaceholder = '{link}'
	local linkText = 'Link'
	local textSize = 12

	local function getInstance(props)
		assert(t.interface({
			text = t.string,
		})(props))

		local element = Roact.createElement(MockWrapper, {}, {
			TextWithInlineLink = Roact.createElement(TextWithInlineLink, Cryo.Dictionary.join({
				onLinkClicked = function() end,
				linkText = linkText,
				linkPlaceholder = linkPlaceholder,
				maxWidth = 100,
				textProps = {
					TextSize = textSize,
					Font = Enum.Font.SourceSans
				}
			}, props)),
		})

		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)

		return container, instance
	end

	it("with no link placeholder", function()
		local text = "hello world"
		local container, instance = getInstance({
			text = text
		})

		local frame = container:FindFirstChild("line_1", true)
		local children = frame:GetChildren()

		expect(#children).to.equal(2)

		expect(children[2].Text).to.equal(text)

		-- TODO: This should be in an 'afterEach' block so it is always called even if the test fails
		Roact.unmount(instance)
    end)

    it("with one link placeholder at the start of the text", function()
		local text = "{link} world"
		local container, instance = getInstance({
			text = text
		})

		local frame = container:FindFirstChild("line_1", true)
		local children = frame:GetChildren()

		expect(#children).to.equal(3)
		expect(children[2]:FindFirstChild("TextButton", true).Text).to.equal(linkText)
		expect(children[3].Text).to.equal(" world")

		-- TODO: This should be in an 'afterEach' block so it is always called even if the test fails
		Roact.unmount(instance)
	end)

	it("with enough text to cause overflow and wrapping", function()
		local text = "Hello here is a {link} that is going to cause this to wrap onto another line and this line after the link will wrap on its own it's that long!"
		local container, instance = getInstance({
			text = text
		})

		local line1 = container:FindFirstChild("line_1", true)
		local line2 = container:FindFirstChild("line_2", true)

		expect(#line1:GetChildren()).to.equal(3)
		expect(line1:GetChildren()[2].Text).to.equal("Hello here is a ")
		expect(line1:GetChildren()[3]:FindFirstChild("TextButton", true).Text).to.equal(linkText)
		expect(line1.Size.Y.Offset).to.equal(textSize)

		expect(#line2:GetChildren()).to.equal(2)
		expect(line2:GetChildren()[2].Text).to.equal(" that is going to cause this to wrap onto another line and this line after the link will wrap on its own it's that long!")
		expect(line2.Size.Y.Offset).to.equal(textSize * 5)

		-- TODO: This should be in an 'afterEach' block so it is always called even if the test fails
		Roact.unmount(instance)
    end)


    it("with two link placeholders (one at the end of the text)", function()
		local text = "hello {link} world {link}"
		local container, instance = getInstance({
			text = text
		})

		local frame = container:FindFirstChild("line_1", true)
		local children = frame:GetChildren()

		expect(#children).to.equal(5)
		expect(children[2].Text).to.equal("hello ")
		expect(children[3]:FindFirstChild("TextButton", true).Text).to.equal(linkText)
		expect(children[4].Text).to.equal(" world ")
		expect(children[5]:FindFirstChild("TextButton", true).Text).to.equal(linkText)

		-- TODO: This should be in an 'afterEach' block so it is always called even if the test fails
		Roact.unmount(instance)
    end)
end
