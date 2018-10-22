return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)
	local Rodux = require(Plugin.Rodux)

	local ExternalServicesWrapper = require(Plugin.Src.Components.ExternalServicesWrapper)
	local Theme = require(Plugin.Src.Util.Theme)
	local SettingsImpl_mock = require(Plugin.Src.Networking.SettingsImpl_mock)
	local MainReducer = require(Plugin.Src.Reducers.MainReducer)

	local BasicInfo = require(Plugin.Src.Components.SettingsPages.BasicInfo)

	local settingsImpl = SettingsImpl_mock.new()
	local theme = Theme.newDummyTheme()

	local ERROR_COLOR = Color3.new(1, 0.266, 0.266)

	local nameErrors = {
		Moderated = "The name didn't go through our moderation. Please revise it and try again.",
		Empty = "Name cannot be empty.",
	}

	local descriptionErrors = {
		Moderated = "The description didn't go through our moderation. Please revise it and try again.",
	}

	local settingsInfoTest = {
		Current = {
			name = "Name",
			description = "Description",
			isActive = true,
			playableDevices = {
				Computer = true,
				Phone = true,
				Tablet = true,
				Console = false,
			}
		},
		Changed = {},
		Errors = {},
	}

	local settingsInfoEmptyNameTest = {
		Current = {
			name = "",
		},
		Changed = {},
		Errors = {
			name = "Empty"
		},
	}

	local settingsInfoLongNameTest = {
		Current = {
			name = string.rep("w", 150),
		},
		Changed = {},
		Errors = {
			name = "TooLong"
		},
	}

	local settingsInfoBadNameTest = {
		Current = {
			name = "Bad Word",
		},
		Changed = {},
		Errors = {
			name = "Moderated"
		},
	}

	local settingsInfoLongDescriptionTest = {
		Current = {
			description = string.rep("w", 1500),
		},
		Changed = {},
		Errors = {
			description = "TooLong"
		},
	}

	local settingsInfoBadDescriptionTest = {
		Current = {
			description = "Bad Word",
		},
		Changed = {},
		Errors = {
			description = "Moderated"
		},
	}

	local function createTestOptions(startState)
		local settingsStore = Rodux.Store.new(
			MainReducer,
			{Settings = startState},
			{Rodux.thunkMiddleware}
		)

		return Roact.createElement(ExternalServicesWrapper, {
			store = settingsStore,
			impl = settingsImpl,
			theme = theme,
		}, {
			basicInfo = Roact.createElement(BasicInfo),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestOptions()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = workspace

		local element = createTestOptions()
		local instance = Roact.mount(element, container)
		local info = container.Frame

		expect(info.Layout).to.be.ok()
		expect(info.Name).to.be.ok()
		expect(info.Description).to.be.ok()
		expect(info.Playability).to.be.ok()
		expect(info.Devices).to.be.ok()
		expect(info.Separator).to.be.ok()
		expect(info.Separator2).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should disable when no permissions", function()
		local container = workspace

		local element = createTestOptions()
		local instance = Roact.mount(element, container)
		local info = container.Frame

		local textBoxes = {
			info:FindFirstChild("Name").Content.TextBox.Border.Text.Text,
			info.Description.Content.TextBox.Border.Text.ScrollingFrame.Text,
		}

		for _, textBox in ipairs(textBoxes) do
			expect(textBox.Visible).to.equal(false)
		end

		for _, button in ipairs(info.Playability.Content:GetChildren()) do
			if (button:IsA("Frame")) then
				expect(button.Button.TitleLabel.TextTransparency).never.to.equal(0)
			end
		end

		for _, box in ipairs(info.Devices.Content:GetChildren()) do
			if (box:IsA("Frame")) then
				expect(box.Background.TitleLabel.TextTransparency).never.to.equal(0)
			end
		end

		Roact.unmount(instance)
	end)

	it("should enable with permissions", function()
		local container = workspace

		local element = createTestOptions(settingsInfoTest)
		local instance = Roact.mount(element, container)
		local info = container.Frame

		local textBoxes = {
			info:FindFirstChild("Name").Content.TextBox.Border.Text.Text,
			info.Description.Content.TextBox.Border.Text.ScrollingFrame.Text,
		}

		for _, textBox in ipairs(textBoxes) do
			expect(textBox.Visible).to.equal(true)
		end

		for _, button in ipairs(info.Playability.Content:GetChildren()) do
			if (button:IsA("Frame")) then
				expect(button.Button.TitleLabel.TextTransparency).to.equal(0)
			end
		end

		for _, box in ipairs(info.Devices.Content:GetChildren()) do
			if (box:IsA("Frame")) then
				expect(box.Background.TitleLabel.TextTransparency).to.equal(0)
			end
		end

		Roact.unmount(instance)
	end)

	describe("Name", function()
		it("should error when name is empty", function()
			local container = workspace

			local element = createTestOptions(settingsInfoEmptyNameTest)
			local instance = Roact.mount(element, container)
			local info = container.Frame

			expect(info:FindFirstChild("Name").Content.TextBox.Border.ImageColor3).to.equal(ERROR_COLOR)
			expect(info:FindFirstChild("Name").Content.TextBox.Tooltip.Text).to.equal(nameErrors.Empty)

			Roact.unmount(instance)
		end)

		it("should error when name is too long", function()
			local container = workspace

			local element = createTestOptions(settingsInfoLongNameTest)
			local instance = Roact.mount(element, container)
			local info = container.Frame

			expect(info:FindFirstChild("Name").Content.TextBox.Border.ImageColor3).to.equal(ERROR_COLOR)

			Roact.unmount(instance)
		end)

		it("should error when name is moderated", function()
			local container = workspace

			local element = createTestOptions(settingsInfoBadNameTest)
			local instance = Roact.mount(element, container)
			local info = container.Frame

			expect(info:FindFirstChild("Name").Content.TextBox.Border.ImageColor3).to.equal(ERROR_COLOR)
			expect(info:FindFirstChild("Name").Content.TextBox.Tooltip.Text).to.equal(nameErrors.Moderated)

			Roact.unmount(instance)
		end)
	end)

	describe("Description", function()
		it("should error when description is too long", function()
			local container = workspace

			local element = createTestOptions(settingsInfoLongDescriptionTest)
			local instance = Roact.mount(element, container)
			local info = container.Frame

			expect(info.Description.Content.TextBox.Border.ImageColor3).to.equal(ERROR_COLOR)

			Roact.unmount(instance)
		end)

		it("should error when description is moderated", function()
			local container = workspace

			local element = createTestOptions(settingsInfoBadDescriptionTest)
			local instance = Roact.mount(element, container)
			local info = container.Frame

			expect(info.Description.Content.TextBox.Border.ImageColor3).to.equal(ERROR_COLOR)
			expect(info.Description.Content.TextBox.Tooltip.Text).to.equal(descriptionErrors.Moderated)

			Roact.unmount(instance)
		end)
	end)
end