--[[
	Do not delete the test when removing the flag, need to be updated.
]]

return function()
	local FFlagToolboxAssetGridRefactor4 = game:GetFastFlag("ToolboxAssetGridRefactor4")

	local Plugin = script.Parent.Parent

	local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
	local Libs
	if FFlagToolboxDeduplicatePackages then
		Libs = Plugin.Packages
	else
		Libs = Plugin.Libs
	end
	local Roact = require(Libs.Roact)
	local Urls = require(Plugin.Core.Util.Urls)
	local Category = require(Plugin.Core.Types.Category)

	local Rhodium = require(Plugin.Packages.Dev.Rhodium)
	local XPath = Rhodium.XPath
	local Element = Rhodium.Element
	local TestHelpers = require(script.Parent.Util.TestHelpers)

	local MOCK_THUMBNAIL_URL = "rbxasset://textures/StudioToolbox/Tabs/Recent.png"
	local UNFAV_ICON = "rbxasset://textures/DeveloperFramework/Favorites/star_stroke.png"
	local FAV_ICON = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png"
	local UP_VOTE_COLOR = "0, 0.392157, 0"
	local DOWN_VOTE_COLOR = "0.392157, 0, 0"
	local UNVOTE_COLOR = "0.419608, 0.419608, 0.419608"
	local UNVOTE_COUNT_TEXT = "5087 VOTES"
	local VOTE_COUNT_TEXT = "5088 VOTES"
	local UNFAV_COUNT_TEXT = "10"
	local FAV_COUNT_TEXT = "11"
	local INSERT_BUTTON_TEXT = "TEST_Studio.Toolbox.Common.Insert"

	local DropdownIconPath = TestHelpers.getPathInTestToolbox(
		"Toolbox.Header.CategoryMenu.CurrentSelection.Border.DropDownIcon"
	)
	local DropdownScrollingFramePath =
		"game.CoreGui.ScreenGui.ClickEventDetectFrame.ScrollBlocker.StyledScrollingFrame.ScrollingFrame."
	local AssetPreviewButtonPath = TestHelpers.getPathInTestToolbox(
		"Toolbox.MainView.ScrollingFrame.ScrollingFrame."
			.. "AssetGridContainer.1.InnerFrame.AssetIcon.AssetPreviewTriggerButton"
	)
	local AssetPreviewWindowPath = "game.CoreGui.ScreenGui.AssetPreview"
	local VotePath = AssetPreviewWindowPath
		.. ".Contents.Contents.Contents.ScrollingFrame.Contents.Scroller.VoteBar.Contents"
	local FavoritePath = AssetPreviewWindowPath
		.. ".Contents.Contents.Contents.ScrollingFrame.Contents.Scroller.Favorites.Contents"
	local BottomBarPath = AssetPreviewWindowPath .. ".Contents.Contents.Contents.ButtonArea.Contents"
	local PreviewInfoPath = AssetPreviewWindowPath .. ".Contents.Contents.Contents.ScrollingFrame.Contents.Scroller"

	--local JestRoblox = require(Plugin.Packages.Dev.JestRoblox)
	--local expect = JestRoblox.Globals.expect

	describe("Asset Preview Test Suite", function()
		-- TODO: Update the test when removing the flag (STM-679)

		if FFlagToolboxAssetGridRefactor4 then
			return
		end

		local originalConstructAssetThumbnailUrl
		local container
		local instance

		beforeAll(function()
			originalConstructAssetThumbnailUrl = Urls.constructAssetThumbnailUrl
			Urls.constructAssetThumbnailUrl = function()
				return MOCK_THUMBNAIL_URL
			end
		end)

		beforeEach(function()
			-- Cleanup any test Toolbox left behind by a previously failed test
			TestHelpers.cleanupTestToolbox()

			-- Setup Mocked Toolbox
			container = Instance.new("ScreenGui", game.CoreGui)
			instance = TestHelpers.createTestToolbox(container)

			-- Wait for asset to load
			TestHelpers.delay()
		end)

		afterAll(function()
			Urls.constructAssetThumbnailUrl = originalConstructAssetThumbnailUrl
		end)

		afterEach(function()
			Roact.unmount(instance)
			container:Destroy()
			TestHelpers.cleanupCategoryVerification()
		end)

		it("asset preview button should exist", function()
			local assetPreviewButton = Element.new(XPath.new(AssetPreviewButtonPath))
			expect(assetPreviewButton:getRbxInstance()).to.be.ok()
		end)

		it("asset preview window should open and close", function()
			TestHelpers.clickInstanceWithXPath(AssetPreviewButtonPath)

			-- Asset Preview window should exist
			local assetPreviewInstance = Element.new(AssetPreviewWindowPath)
			expect(assetPreviewInstance:getRbxInstance()).to.be.ok()

			-- Asset Preview window close button should exist
			local assetPreviewCloseButtonPath = AssetPreviewWindowPath .. ".Contents.CloseButton"
			TestHelpers.clickInstanceWithXPath(assetPreviewCloseButtonPath)
			assetPreviewInstance = Element.new(AssetPreviewWindowPath)
			expect(assetPreviewInstance:getRbxInstance()).never.to.be.ok()
		end)

		it("asset preview up vote should work", function()
			TestHelpers.clickInstanceWithXPath(AssetPreviewButtonPath)

			-- Asset Preview Upvote button should exist and not upvoted
			local upVotePath = VotePath .. ".Right.Contents.VoteUp"
			local upVoteColorPath = upVotePath .. ".Decoration"
			local upVoteInstance = Element.new(XPath.new(upVotePath))
			expect(upVoteInstance).to.be.ok()

			local upVoteColorInstance = Element.new(XPath.new(upVoteColorPath))
			expect(upVoteColorInstance).to.be.ok()
			expect(tostring(upVoteColorInstance:getRbxInstance().ImageColor3)).to.be.equal(UNVOTE_COLOR)
			local voteCountPath = VotePath .. ".Left.Contents.VoteCount"
			local voteCountInstance = Element.new(voteCountPath)
			expect(tostring(voteCountInstance:getRbxInstance().Text)).to.be.equal(UNVOTE_COUNT_TEXT)

			-- Asset Preview Upvote button should turn green after click it
			TestHelpers.clickInstanceWithXPath(upVotePath)

			upVoteInstance = Element.new(upVoteColorPath)
			expect(tostring(upVoteColorInstance:getRbxInstance().ImageColor3)).to.be.equal(UP_VOTE_COLOR)

			voteCountInstance = Element.new(voteCountPath)
			expect(tostring(voteCountInstance:getRbxInstance().Text)).to.be.equal(VOTE_COUNT_TEXT)

			-- Asset Preview Upvote button should turn back to original color after click it again
			TestHelpers.clickInstanceWithXPath(upVotePath)

			upVoteInstance = Element.new(upVoteColorPath)
			expect(tostring(upVoteColorInstance:getRbxInstance().ImageColor3)).to.be.equal(UNVOTE_COLOR)

			voteCountInstance = Element.new(voteCountPath)
			expect(tostring(voteCountInstance:getRbxInstance().Text)).to.be.equal(UNVOTE_COUNT_TEXT)
		end)

		it("asset preview down vote should work", function()
			TestHelpers.clickInstanceWithXPath(AssetPreviewButtonPath)

			-- Asset Preview downvote button should exist and not downvoted
			local downVotePath = VotePath .. ".Right.Contents.VoteDown"
			local downVoteColorPath = downVotePath .. ".Decoration"
			local downVoteInstance = Element.new(downVotePath)
			expect(downVoteInstance).to.be.ok()

			local downVoteColorInstance = Element.new(downVoteColorPath)
			expect(tostring(downVoteColorInstance:getRbxInstance().ImageColor3)).to.be.equal(UNVOTE_COLOR)
			local voteCountPath = VotePath .. ".Left.Contents.VoteCount"
			local voteCountInstance = Element.new(voteCountPath)
			expect(tostring(voteCountInstance:getRbxInstance().Text)).to.be.equal(UNVOTE_COUNT_TEXT)

			-- Asset Preview Upvote button should turn green after click it
			TestHelpers.clickInstanceWithXPath(downVotePath)

			downVoteInstance = Element.new(downVoteColorPath)
			expect(tostring(downVoteColorInstance:getRbxInstance().ImageColor3)).to.be.equal(DOWN_VOTE_COLOR)
			voteCountInstance = Element.new(voteCountPath)
			expect(tostring(voteCountInstance:getRbxInstance().Text)).to.be.equal(VOTE_COUNT_TEXT)

			-- Asset Preview Upvote button should turn back to original color after click it again
			TestHelpers.clickInstanceWithXPath(downVotePath)

			downVoteInstance = Element.new(downVoteColorPath)
			expect(tostring(downVoteColorInstance:getRbxInstance().ImageColor3)).to.be.equal(UNVOTE_COLOR)
			voteCountInstance = Element.new(voteCountPath)
			expect(tostring(voteCountInstance:getRbxInstance().Text)).to.be.equal(UNVOTE_COUNT_TEXT)
		end)

		it("asset preview favorite should work", function()
			TestHelpers.clickInstanceWithXPath(AssetPreviewButtonPath)

			-- Asset Preview favorite button should exist and not be filled
			local favoriteCountPath = FavoritePath .. ".Text"
			local favoriteIcon = FavoritePath .. ".Icon"
			local favoriteIconPath = FavoritePath .. ".Icon.Contents.Foreground.Decoration"

			local favoriteInstance = Element.new(favoriteIcon)
			local favoriteCountInstance = Element.new(favoriteCountPath)
			local favoriteIconInstance = Element.new(favoriteIconPath)
			expect(favoriteInstance).to.be.ok()
			expect(tostring(favoriteCountInstance:getRbxInstance().Text)).to.be.equal(UNFAV_COUNT_TEXT)
			expect(tostring(favoriteIconInstance:getRbxInstance().Image)).to.be.equal(UNFAV_ICON)

			-- Asset Preview favorite button should be filled after click it
			TestHelpers.clickInstanceWithXPath(favoriteIcon)

			favoriteCountInstance = Element.new(favoriteCountPath)
			favoriteIconInstance = Element.new(favoriteIconPath)
			expect(tostring(favoriteCountInstance:getRbxInstance().Text)).to.be.equal(FAV_COUNT_TEXT)
			expect(tostring(favoriteIconInstance:getRbxInstance().Image)).to.be.equal(FAV_ICON)

			-- Asset Preview favorite button should turn back to original after click it again
			TestHelpers.clickInstanceWithXPath(favoriteIcon)

			favoriteCountInstance = Element.new(favoriteCountPath)
			favoriteIconInstance = Element.new(favoriteIconPath)
			expect(tostring(favoriteCountInstance:getRbxInstance().Text)).to.be.equal(UNFAV_COUNT_TEXT)
			expect(tostring(favoriteIconInstance:getRbxInstance().Image)).to.be.equal(UNFAV_ICON)
		end)

		it("asset preview insert button should work", function()
			TestHelpers.clickInstanceWithXPath(AssetPreviewButtonPath)

			-- Asset Preview more button should exist and not be filled
			local insertButtonPath = BottomBarPath .. ".ActionButton.Contents.TextButton"
			local insertButtonInstance = Element.new(insertButtonPath)
			expect(insertButtonInstance).to.be.ok()
			expect(insertButtonInstance:getRbxInstance().Text).to.be.equal(INSERT_BUTTON_TEXT)
		end)

		it("asset preview creator should work", function()
			TestHelpers.clickInstanceWithXPath(AssetPreviewButtonPath)

			-- Asset Preview creation info row should exist
			local creatorInfoPath = PreviewInfoPath
				.. ".InfoRow_1.Contents.ContentWrapper.Contents.Content.Contents.TextButton"
			local creatorInfoInstance = Element.new(creatorInfoPath)
			expect(creatorInfoInstance).to.be.ok()
			expect(creatorInfoInstance:getRbxInstance().Text).to.be.equal("JUSTforTEST")
		end)

		it("asset preview genre should work", function()
			TestHelpers.clickInstanceWithXPath(AssetPreviewButtonPath)

			-- Asset Preview creation info row should exist
			local genreInfoPath = PreviewInfoPath .. ".InfoRow_2.Contents.ContentWrapper.Contents.Content"
			local genreInfoInstance = Element.new(genreInfoPath)
			expect(genreInfoInstance).to.be.ok()
			expect(genreInfoInstance:getRbxInstance().Text).to.be.equal("All")
		end)

		local FORMATTED_DATE_PATTERN = "%d+/%d+/%d+ %d+:%d+:%d+ [AP]M"

		it("asset preview created time should show", function()
			TestHelpers.clickInstanceWithXPath(AssetPreviewButtonPath)

			-- Asset Preview creation info row should exist
			local createdTimeInfoPath = PreviewInfoPath .. ".InfoRow_3.Contents.ContentWrapper.Contents.Content"
			local createdTimeInfoInstance = Element.new(createdTimeInfoPath)
			expect(createdTimeInfoInstance).to.be.ok()
			expect(createdTimeInfoInstance:getRbxInstance().Text:match(FORMATTED_DATE_PATTERN)).to.be.ok()
		end)

		it("asset preview updated time should show", function()
			TestHelpers.clickInstanceWithXPath(AssetPreviewButtonPath)

			-- Asset Preview creation info row should exist
			local updatedTimeInfoPath = PreviewInfoPath .. ".InfoRow_4.Contents.ContentWrapper.Contents.Content"
			local updatedTimeInfoInstance = Element.new(updatedTimeInfoPath)
			expect(updatedTimeInfoInstance).to.be.ok()
			expect(updatedTimeInfoInstance:getRbxInstance().Text:match(FORMATTED_DATE_PATTERN)).to.be.ok()
		end)

		local testCases = { Category.FREE_AUDIO.category, Category.FREE_DECALS.category, Category.FREE_MESHES.category }
		for i = 1, #testCases do
			it(tostring(testCases[i]) .. " preview should work", function()
				TestHelpers.clickInstanceWithXPath(DropdownIconPath)
				local dropdownAudioPath = DropdownScrollingFramePath .. testCases[i]
				TestHelpers.clickInstanceWithXPath(dropdownAudioPath)

				TestHelpers.delay()
				TestHelpers.clickInstanceWithXPath(AssetPreviewButtonPath)

				local assetPreviewInstance = Element.new(AssetPreviewWindowPath)
				expect(assetPreviewInstance:getRbxInstance()).to.be.ok()
			end)
		end
	end)
end
