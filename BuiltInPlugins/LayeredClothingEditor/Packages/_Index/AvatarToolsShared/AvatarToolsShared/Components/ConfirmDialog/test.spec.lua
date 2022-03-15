return function()
	local AvatarToolsShared = script.Parent.Parent.Parent
	local Packages = AvatarToolsShared.Parent
	local Roact = require(Packages.Roact)

	local TestRunner = require(AvatarToolsShared.Util.TestRunner)
	local runComponentTest = TestRunner.runComponentTest

	local ConfirmDialog = require(script.Parent)

	local function createConfirmDialog()
		return Roact.createElement(ConfirmDialog, {
			Text = "test",
			Title = "title",
			OnClose = function()
			end,
		})
	end

	it("should mount and unmount", function()
		runComponentTest(createConfirmDialog())
	end)

	it("should render correctly", function ()
		runComponentTest(
			createConfirmDialog(),
			function(container)
				wait()
				local screenGui = game.CoreGui["title"]
				local solidBackground = screenGui.SolidBackground
				local contents = solidBackground.Contents
				local buttonContainer = solidBackground.ButtonContainer
				local message = contents.Message

				expect(screenGui).to.be.ok()
				expect(solidBackground).to.be.ok()
				expect(contents).to.be.ok()
				expect(buttonContainer).to.be.ok()
				expect(message).to.be.ok()
			end
		)
	end)

end