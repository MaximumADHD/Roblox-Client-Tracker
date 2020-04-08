return function()
	SKIP()
	
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)
	local Rodux = require(Plugin.Rodux)
	local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)

	local ExternalServicesWrapper = require(Plugin.Src.Components.ExternalServicesWrapper)
	local Theme = require(Plugin.Src.Util.Theme)
	local SettingsImpl_mock = require(Plugin.Src.Networking.SettingsImpl_mock)
	local MainReducer = require(Plugin.Src.Reducers.MainReducer)
	local Localization = require(Plugin.Src.Localization.Localization)

	local BasicInfo = require(Plugin.Src.Components.SettingsPages.BasicInfo)

	local settingsImpl = SettingsImpl_mock.new()
	local theme = Theme.newDummyTheme()
	local localization = Localization.newDummyLocalization()
	local localized = localization.values

	local ERROR_COLOR = DEPRECATED_Constants.ERROR_COLOR

	local nameErrors = {
		Moderated = localized.Errors.ErrorNameModerated,
		Empty = localized.Errors.ErrorNameEmpty,
	}

	local descriptionErrors = {
		Moderated = localized.Errors.ErrorDescModerated,
	}

	local settingsInfoTest = {
		Current = {
			name = "Name",
			description = "Description",
			isActive = true,
			gameIcon = "rbxassetid://1818",
			thumbnails = {
				First = {id = "First"},
				Second = {id = "Second"},
				Third = {id = "Third"},
			},
			thumbnailOrder = {"First", "Second", "Third"},
			genre = "All",
			playableDevices = {
				Computer = true,
				Phone = true,
				Tablet = true,
				Console = false,
			},
		},
		Changed = {},
		Errors = {},
	}

	local settingsInfoGroupTest = {
		Current = {
			creatorType = "Group",
			creatorName = "Test Group",
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

	local function createTestBasicInfo(startState)
		local settingsStore = Rodux.Store.new(
			MainReducer,
			{Settings = startState},
			{Rodux.thunkMiddleware}
		)

		return Roact.createElement(ExternalServicesWrapper, {
			store = settingsStore,
			impl = settingsImpl,
			theme = theme,
			localization = localization,
		}, {
			basicInfo = Roact.createElement(BasicInfo),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestBasicInfo()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")

		local element = createTestBasicInfo()
		local instance = Roact.mount(element, container)
		local info = container.Frame

		expect(info.Layout).to.be.ok()
		expect(info.Name).to.be.ok()
		expect(info.Description).to.be.ok()
		expect(info.Playability).to.be.ok()
		expect(info.Devices).to.be.ok()
		expect(info.Separator).to.be.ok()
		expect(info.Separator2).to.be.ok()
		expect(info.Icon).to.be.ok()
		expect(info.Separator3).to.be.ok()
		expect(info.Thumbnails).to.be.ok()
		expect(info.Separator4).to.be.ok()
		expect(info.Genre).to.be.ok()
		expect(info.Separator5).to.be.ok()

		Roact.unmount(instance)
	end)

	it("should disable when no permissions", function()
		local container = Instance.new("Folder")

		local element = createTestBasicInfo()
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

		local iconWidget = info.Icon.Content
		expect(iconWidget.Icon.Visible).to.equal(false)
		expect(iconWidget.NewIcon.Visible).to.equal(false)

		local thumbnailWidget = info.Thumbnails
		expect(#thumbnailWidget.Thumbnails:GetChildren()).to.equal(1)
		expect(thumbnailWidget.CountFolder.Count.Visible).to.equal(false)

		local genre = info.Genre.Content.Selector
		expect(genre.Border.Current.Visible).to.equal(false)

		Roact.unmount(instance)
	end)

	it("should enable with permissions", function()
		local container = Instance.new("Folder")

		local element = createTestBasicInfo(settingsInfoTest)
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

		local iconWidget = info.Icon.Content
		expect(iconWidget.Icon.Visible).to.equal(true)

		local thumbnailWidget = info.Thumbnails
		expect(#thumbnailWidget.Thumbnails:GetChildren()).to.equal(5)
		expect(thumbnailWidget.CountFolder.Count.Visible).to.equal(true)

		local genre = info.Genre.Content.Selector
		expect(genre.Border.Current.Visible).to.equal(true)

		Roact.unmount(instance)
	end)

	describe("Name", function()
		it("should error when name is empty", function()
			local container = Instance.new("Folder")

			local element = createTestBasicInfo(settingsInfoEmptyNameTest)
			local instance = Roact.mount(element, container)
			local info = container.Frame

			expect(info:FindFirstChild("Name").Content.TextBox.Border.ImageColor3).to.equal(ERROR_COLOR)
			expect(info:FindFirstChild("Name").Content.TextBox.Tooltip.Text).to.equal(nameErrors.Empty)

			Roact.unmount(instance)
		end)

		it("should error when name is too long", function()
			local container = Instance.new("Folder")

			local element = createTestBasicInfo(settingsInfoLongNameTest)
			local instance = Roact.mount(element, container)
			local info = container.Frame

			expect(info:FindFirstChild("Name").Content.TextBox.Border.ImageColor3).to.equal(ERROR_COLOR)

			Roact.unmount(instance)
		end)

		it("should error when name is moderated", function()
			local container = Instance.new("Folder")

			local element = createTestBasicInfo(settingsInfoBadNameTest)
			local instance = Roact.mount(element, container)
			local info = container.Frame

			expect(info:FindFirstChild("Name").Content.TextBox.Border.ImageColor3).to.equal(ERROR_COLOR)
			expect(info:FindFirstChild("Name").Content.TextBox.Tooltip.Text).to.equal(nameErrors.Moderated)

			Roact.unmount(instance)
		end)
	end)

	describe("Description", function()
		it("should error when description is too long", function()
			local container = Instance.new("Folder")

			local element = createTestBasicInfo(settingsInfoLongDescriptionTest)
			local instance = Roact.mount(element, container)
			local info = container.Frame

			expect(info.Description.Content.TextBox.Border.ImageColor3).to.equal(ERROR_COLOR)

			Roact.unmount(instance)
		end)

		it("should error when description is moderated", function()
			local container = Instance.new("Folder")

			local element = createTestBasicInfo(settingsInfoBadDescriptionTest)
			local instance = Roact.mount(element, container)
			local info = container.Frame

			expect(info.Description.Content.TextBox.Border.ImageColor3).to.equal(ERROR_COLOR)
			expect(info.Description.Content.TextBox.Tooltip.Text).to.equal(descriptionErrors.Moderated)

			Roact.unmount(instance)
		end)
	end)

	describe("Playability", function()
		it("should change from Friends to Group Members", function()
			local container = Instance.new("Folder")

			local element = createTestBasicInfo(settingsInfoGroupTest)
			local instance = Roact.mount(element, container)
			local info = container.Frame

			local playability = info.Playability.Content["3"].Button
			expect(playability.TitleLabel.Text).to.equal(localized.Playability.Group.Title)
			expect(playability.DescriptionLabel.Text).to.equal(localized.Playability.Group.Description({
				group = "Test Group",
			}))

			Roact.unmount(instance)
		end)
	end)

	describe("Genre", function()
		it("should display the correct genre", function()
			local container = Instance.new("Folder")

			local element = createTestBasicInfo(settingsInfoTest)
			local instance = Roact.mount(element, container)
			local info = container.Frame

			local genre = info.Genre.Content.Selector
			expect(genre.Border.Current.Text).to.equal(localized.Genres[1].Title)

			Roact.unmount(instance)
		end)
	end)
end