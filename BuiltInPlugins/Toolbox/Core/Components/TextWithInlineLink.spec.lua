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

	local function getInstance(props)
		assert(t.interface({
			text = t.string,
		})(props))

		local element = Roact.createElement(MockWrapper, {}, {
			TextWithInlineLink = Roact.createElement(TextWithInlineLink, Cryo.Dictionary.join({
				onLinkActivated = function() end,
				linkText = linkText,
				linkPlaceholder = linkPlaceholder,
				textProps = {
					TextSize = 12,
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

		local frame = container:FindFirstChildOfClass("Frame")
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

		local frame = container:FindFirstChildOfClass("Frame")
		local children = frame:GetChildren()

		expect(#children).to.equal(3)
		expect(children[2]:GetChildren()[1].Text).to.equal(linkText)
		expect(children[3].Text).to.equal(" world")

		-- TODO: This should be in an 'afterEach' block so it is always called even if the test fails
		Roact.unmount(instance)
    end)


    it("with two link placeholders (one at the end of the text)", function()
		local text = "hello {link} world {link}"
		local container, instance = getInstance({
			text = text
		})

		local frame = container:FindFirstChildOfClass("Frame")
		local children = frame:GetChildren()

		expect(#children).to.equal(5)
		expect(children[2].Text).to.equal("hello ")
		expect(children[3]:GetChildren()[1].Text).to.equal(linkText)
		expect(children[4].Text).to.equal(" world ")
		expect(children[5]:GetChildren()[1].Text).to.equal(linkText)

		-- TODO: This should be in an 'afterEach' block so it is always called even if the test fails
		Roact.unmount(instance)
    end)
end
