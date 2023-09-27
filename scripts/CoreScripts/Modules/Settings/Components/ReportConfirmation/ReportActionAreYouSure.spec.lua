--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local ReportActionAreYouSure = require(script.Parent.ReportActionAreYouSure)
	local simpleMountFrame = require(CorePackages.Workspace.Packages.UnitTestHelpers).simpleMountFrame

	describe("ReportActionAreYouSure", function()
		it("SHOULD choose the right strings for muted only", function(context)
			local titleText = "TitleText"
			local subtitleText = "SubtitleText"

			local parent, cleanup = simpleMountFrame(Roact.createElement(ReportActionAreYouSure, {
				mutedTitleText = titleText,
				mutedSubtitleText = subtitleText,
				blockedTitleText = "Block PLACEHOLDER?",
				mutedAndBlockedTitleText = "Mute & Block PLACEHOLDER?",
				blockedSubtitleText = "You and PLACEHOLDER will no longer be able to communicate with each other.",
				mutedAndBlockedSubtitleText = "You won’t be able to hear PLACEHOLDER. You will also no longer be able to communicate with each other.",
				cancelText = "Cancel",
				confirmText = "Yes",
				isMuted = true,
				isBlocked = false,
			}))

			local title = parent:FindFirstChild("title", true)
			expect(title).never.toBeNil()

			local subtitle = parent:FindFirstChild("subtitle", true)
			expect(subtitle).never.toBeNil()

			expect(title.Text).toBe(titleText)
			expect(subtitle.Text).toBe(subtitleText)

			cleanup()
		end)

		it("SHOULD choose the right strings for blocked only", function(context)
			local titleText = "TitleText"
			local subtitleText = "SubtitleText"

			local parent, cleanup = simpleMountFrame(Roact.createElement(ReportActionAreYouSure, {
				blockedTitleText = titleText,
				blockedSubtitleText = subtitleText,
				mutedTitleText = "Mute PLACEHOLDER?",
				mutedAndBlockedTitleText = "Mute & Block PLACEHOLDER?",
				mutedSubtitleText = "You won't be able to hear PLACEHOLDER.",
				mutedAndBlockedSubtitleText = "You won’t be able to hear PLACEHOLDER. You will also no longer be able to communicate with each other.",
				cancelText = "Cancel",
				confirmText = "Yes",
				isMuted = false,
				isBlocked = true,
			}))

			local title = parent:FindFirstChild("title", true)
			expect(title).never.toBeNil()

			local subtitle = parent:FindFirstChild("subtitle", true)
			expect(subtitle).never.toBeNil()

			expect(title.Text).toBe(titleText)
			expect(subtitle.Text).toBe(subtitleText)

			cleanup()
		end)

		it("SHOULD choose the right strings for blocked & muted", function(context)
			local titleText = "TitleText"
			local subtitleText = "SubtitleText"

			local parent, cleanup = simpleMountFrame(Roact.createElement(ReportActionAreYouSure, {
				mutedAndBlockedTitleText = titleText,
				mutedAndBlockedSubtitleText = subtitleText,
				mutedTitleText = "Mute PLACEHOLDER?",
				blockedTitleText = "Block PLACEHOLDER?",
				mutedSubtitleText = "You won't be able to hear PLACEHOLDER.",
				blockedSubtitleText = "You and PLACEHOLDER will no longer be able to communicate with each other.",
				cancelText = "Cancel",
				confirmText = "Yes",
				isMuted = true,
				isBlocked = true,
			}))

			local title = parent:FindFirstChild("title", true)
			expect(title).never.toBeNil()

			local subtitle = parent:FindFirstChild("subtitle", true)
			expect(subtitle).never.toBeNil()

			expect(title.Text).toBe(titleText)
			expect(subtitle.Text).toBe(subtitleText)

			cleanup()
		end)
	end)
end
