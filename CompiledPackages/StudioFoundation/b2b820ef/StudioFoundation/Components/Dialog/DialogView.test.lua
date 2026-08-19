local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local DialogView = require(script.Parent.DialogView)
local JestGlobals = require(Packages.Dev.JestGlobals)
local React = require(Packages.React)
local ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)
local getFFlagStudioFoundationOpenPlaceDialogFixes =
	require(Main.SharedFlags.getFFlagStudioFoundationOpenPlaceDialogFixes)
local mockContext = require(Main.Util.mockContext)

local StudioUri = require(Main.Util.StudioUri)
local describe = JestGlobals.describe
local e = React.createElement
local expect = JestGlobals.expect
local fireEvent = ReactTestingLibrary.fireEvent
local it = JestGlobals.it
local jest = JestGlobals.jest
local render = ReactTestingLibrary.render
local within = ReactTestingLibrary.within

local FFlagStudioFoundationThemeContext = require(Main.SharedFlags.getFFlagStudioFoundationThemeContext)()
-- Foundation buttons only get a non-zero width when the theme stylesheet is wired up, which happens
-- on the flag-on path; skip click-dependent tests when the flag is off (matches SF's flag gating).
local itIfThemeContext: any = if FFlagStudioFoundationThemeContext then it else it.skip

local function createTestElement(props: DialogView.Props)
	return mockContext({
		Container = e("Frame", {
			Size = UDim2.fromOffset(350, 200),
			Position = UDim2.fromScale(0.5, 0.5),
			AnchorPoint = Vector2.new(0.5, 0.5),
		}, {
			DialogView = e(DialogView, props),
		}),
	})
end

describe("DialogView", function()
	it("should render without errors", function()
		render(createTestElement({
			type = "Default",
		}))
	end)

	it("should render the corresponding icon for each variant", function()
		local rendered = render(createTestElement({
			type = "Default",
		}))
		expect(rendered.queryByTestId("--dialog-icon")).toBeNil()

		rendered.rerender(createTestElement({
			type = "Warning",
		}))
		local icon = rendered.getByTestId("--dialog-icon")
		within(icon).getByText(BuilderIcons.Icon.TriangleExclamation)

		rendered.rerender(createTestElement({
			type = "Critical",
		}))
		within(icon).getByText(BuilderIcons.Icon.CircleX)
	end)

	it("should render a title", function()
		local titleBinding, setTitleBinding = React.createBinding("Title")

		local rendered = render(createTestElement({
			type = "Default",
			title = titleBinding,
		}))

		local title = rendered.getByTestId("--dialog-title")
		within(title).getByText("Title")

		setTitleBinding("New Title")
		within(title).getByText("New Title")
	end)

	it("should render a description", function()
		local descriptionBinding, setDescriptionBinding = React.createBinding("Description")

		local rendered = render(createTestElement({
			type = "Default",
			description = descriptionBinding,
		}))

		local description = rendered.getByTestId("--dialog-description")
		within(description).getByText("Description")

		setDescriptionBinding("New Description")
		within(description).getByText("New Description")
	end)

	itIfThemeContext("should render interactable primary, secondary, and tertiary buttons", function()
		local onActivated = jest.fn()

		local rendered = render(createTestElement({
			type = "Default",
			primaryAction = {
				uri = StudioUri.fromWidget("Dialog", "Primary"),
				text = "Primary",
				onActivated = onActivated,
			},
			secondaryAction = {
				uri = StudioUri.fromWidget("Dialog", "Secondary"),
				text = "Secondary",
				onActivated = onActivated,
			},
			tertiaryAction = {
				uri = StudioUri.fromWidget("Dialog", "Tertiary"),
				text = "Tertiary",
				onActivated = onActivated,
			},
		}))

		local primary = rendered.getByTestId("--dialog-button-primary")
		within(primary).getByText("Primary")
		fireEvent.click(primary)
		expect(onActivated).toHaveBeenCalledTimes(1)

		local secondary = rendered.getByTestId("--dialog-button-secondary")
		within(secondary).getByText("Secondary")
		fireEvent.click(secondary)
		expect(onActivated).toHaveBeenCalledTimes(2)

		local tertiary = rendered.getByTestId("--dialog-button-tertiary")
		within(tertiary).getByText("Tertiary")
		fireEvent.click(tertiary)
		expect(onActivated).toHaveBeenCalledTimes(3)
	end)

	it("should default to 350px wide", function()
		local rendered = render(createTestElement({
			type = "Default",
		}))

		local dialogView = rendered.getByTestId("--dialog")
		expect(dialogView.AbsoluteSize.X).toEqual(350)
	end)

	it("should set its width to the width property if provided", function()
		local rendered = render(createTestElement({
			type = "Default",
			width = 400,
		}))

		local dialogView = rendered.getByTestId("--dialog")
		expect(dialogView.AbsoluteSize.X).toEqual(400)
	end)

	it("should not render a children container View if it is not passed any children", function()
		local rendered = render(createTestElement({
			type = "Default",
		}))

		expect(rendered.queryByTestId("--dialog-children")).toBeNil()
	end)

	it("should render children to a container View if it is passed at least one child", function()
		local rendered = render(createTestElement({
			type = "Default",
			children = e("TextLabel", {
				Text = "Child",
			}),
		}))

		local childrenContainer = rendered.getByTestId("--dialog-children")
		within(childrenContainer).getByText("Child")
	end)

	it("should render a thumbnail image when image is provided", function()
		local imageBinding = React.createBinding("rbxassetid://12345")

		local rendered = render(createTestElement({
			type = "Default",
			image = imageBinding,
		}))

		expect(rendered.queryByTestId("--dialog-thumbnail")).toBeDefined()
	end)

	it("should hide the thumbnail when image is nil", function()
		local rendered = render(createTestElement({
			type = "Default",
		}))

		local thumbnail = rendered.queryByTestId("--dialog-thumbnail")
		expect(thumbnail).toBeDefined()
		expect(thumbnail.Visible).toBe(false)
	end)

	it("should render a progress spinner when showIndeterminateProgressIndicator is true", function()
		local rendered = render(createTestElement({
			type = "Default",
			description = "Loading...",
			showIndeterminateProgressIndicator = true,
		}))

		expect(rendered.queryByTestId("--dialog-progress")).toBeDefined()
	end)

	it("should hide the progress spinner when showIndeterminateProgressIndicator is false", function()
		local rendered = render(createTestElement({
			type = "Default",
			description = "Done",
			showIndeterminateProgressIndicator = false,
		}))

		local progress = rendered.queryByTestId("--dialog-progress")
		expect(progress).toBeDefined()
		expect(progress.Visible).toBe(false)
	end)

	if getFFlagStudioFoundationOpenPlaceDialogFixes() then
		it("should hide the progress spinner when showIndeterminateProgressIndicator is nil", function()
			local rendered = render(createTestElement({
				type = "Default",
				description = "Done",
			}))

			local progress = rendered.queryByTestId("--dialog-progress")
			expect(progress).toBeDefined()
			expect(progress.Visible).toBe(false)
		end)
	end
end)
