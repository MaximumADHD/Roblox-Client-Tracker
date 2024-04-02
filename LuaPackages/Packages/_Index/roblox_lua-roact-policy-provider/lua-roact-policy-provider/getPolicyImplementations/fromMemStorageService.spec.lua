--# selene: allow(unused_variable)

return function()
	local Packages = script.Parent.Parent.Parent
	local Mock = require(Packages.Mock)
	local MagicMock = Mock.MagicMock

	local fromMemStorageService = require(script.Parent.fromMemStorageService)

	describe("GIVEN a behavior", function()
		local behavior = "mockBehavior"
		describe(
			"GIVEN a MemStorageService and HttpService with functional GetItem, BindAndFire and JSONDecode",
			function()
				local mockMemStorageService = MagicMock.new()
				mockMemStorageService.GetItem = function()
					return "jsonExternalPolicy"
				end
				local updateMemStorageService = Instance.new("BindableEvent")
				mockMemStorageService.BindAndFire = function(_, _, func)
					local initialValue = mockMemStorageService.GetItem()
					local connection = updateMemStorageService.Event:Connect(function(value, a)
						func(value)
					end)

					func(initialValue)
					return connection
				end
				local mockHttpService = MagicMock.new()
				mockHttpService.JSONDecode = function()
					return "decodedExternalPolicy"
				end

				local fromMemStorageServiceInstance = fromMemStorageService({
					MemStorageService = mockMemStorageService,
					HttpService = mockHttpService,
				})(behavior)
				it("SHOULD return the policy when `read` is invoked", function()
					local result = fromMemStorageServiceInstance.read()
					expect(result).to.equal("decodedExternalPolicy")
				end)

				it("SHOULD return a Disconnect-able object when `onPolicyChanged` is invoked", function()
					local result = fromMemStorageServiceInstance.onPolicyChanged(function() end)
					expect(result).to.be.ok()
					expect(result.Disconnect).to.be.ok()
					result:Disconnect()
				end)

				it(
					"SHOULD invoke passed in function with JSONDecode results when updateMemStorageService is fired",
					function()
						local wasEverCalled = false
						local result = fromMemStorageServiceInstance.onPolicyChanged(function(value)
							wasEverCalled = true
							expect(value).to.equal("decodedExternalPolicy")
						end)

						updateMemStorageService:Fire("jsonExternalPolicyUpdated")

						result:Disconnect()

						expect(wasEverCalled).to.equal(true)
					end
				)

				it(
					"SHOULD NOT invoke passed in function with JSONDecode results "
						.. "when updateMemStorageService is fired with the same value",
					function()
						local timesEverCalled = 0
						local result = fromMemStorageServiceInstance.onPolicyChanged(function(value)
							timesEverCalled = timesEverCalled + 1
							expect(value).to.equal("decodedExternalPolicy")
						end)

						updateMemStorageService:Fire("foo")
						updateMemStorageService:Fire("foo")
						updateMemStorageService:Fire("foo")
						updateMemStorageService:Fire("foo")

						result:Disconnect()

						-- Once for initial value and then once for foo
						expect(timesEverCalled).to.equal(2)
					end
				)

				it(
					"SHOULD NOT invoke passed in function with JSONDecode results "
						.. "when updateMemStorageService is fired with the same value, while ignore nils",
					function()
						local timesEverCalled = 0
						local result = fromMemStorageServiceInstance.onPolicyChanged(function(value)
							timesEverCalled = timesEverCalled + 1
							expect(value).to.equal("decodedExternalPolicy")
						end)

						updateMemStorageService:Fire("bar")
						updateMemStorageService:Fire(nil)
						updateMemStorageService:Fire("bar")

						result:Disconnect()

						-- Once for initial value and then once for bar
						expect(timesEverCalled).to.equal(2)
					end
				)

				it("SHOULD invoke multiple listeners when updateMemStorageService is fired", function()
					local listenerACalled = 0
					local connA = fromMemStorageServiceInstance.onPolicyChanged(function(value)
						listenerACalled = listenerACalled + 1
						expect(value).to.equal("decodedExternalPolicy")
					end)

					local listenerBCalled = 0
					local connB = fromMemStorageServiceInstance.onPolicyChanged(function(value)
						listenerBCalled = listenerBCalled + 1
						expect(value).to.equal("decodedExternalPolicy")
					end)

					updateMemStorageService:Fire("baz")

					connA:Disconnect()
					connB:Disconnect()

					-- Once for initial value and then once for baz
					expect(listenerACalled).to.equal(2)
					expect(listenerBCalled).to.equal(2)
				end)
			end
		)

		describe("GIVEN a functional MemStorageService and broken HttpService JSONDecode", function()
			local mockMemStorageService = MagicMock.new()
			mockMemStorageService.GetItem = function()
				return "jsonExternalPolicy"
			end
			local updateMemStorageService = Instance.new("BindableEvent")
			mockMemStorageService.BindAndFire = function(_, _, func)
				return updateMemStorageService.Event:Connect(function(value, a)
					func(value)
				end)
			end
			local mockHttpService = MagicMock.new()
			mockHttpService.JSONDecode = function()
				return nil
			end

			local fromMemStorageServiceInstance = fromMemStorageService({
				MemStorageService = mockMemStorageService,
				HttpService = mockHttpService,
			})(behavior)
			it("SHOULD return nil when `read` is invoked", function()
				local result = fromMemStorageServiceInstance.read()
				expect(result).to.equal(nil)
			end)

			it(
				"SHOULD invoke passed in function with JSONDecode results when updateMemStorageService is fired",
				function()
					local wasEverCalled = false
					local result = fromMemStorageServiceInstance.onPolicyChanged(function(value)
						wasEverCalled = true
						expect(value).to.equal(nil)
					end)

					updateMemStorageService:Fire("jsonExternalPolicyUpdated")

					result:Disconnect()

					expect(wasEverCalled).to.equal(true)
				end
			)
		end)

		describe("GIVEN a MemStorageService that always returns invalid results", function()
			local mockMemStorageService = MagicMock.new()
			mockMemStorageService.GetItem = function()
				return nil
			end
			local updateMemStorageService = Instance.new("BindableEvent")
			mockMemStorageService.BindAndFire = function(_, _, func)
				return updateMemStorageService.Event:Connect(function(value, a)
					func(value)
				end)
			end
			local mockHttpService = MagicMock.new()

			local fromMemStorageServiceInstance = fromMemStorageService({
				MemStorageService = mockMemStorageService,
				HttpService = mockHttpService,
			})(behavior)
			it("SHOULD return nil when `read` is invoked", function()
				local result = fromMemStorageServiceInstance.read()
				expect(result).to.equal(nil)
			end)

			it(
				"SHOULD never invoke passed function with JSONDecode results when updateMemStorageService is fired",
				function()
					local wasEverCalled = false
					local result = fromMemStorageServiceInstance.onPolicyChanged(function(value)
						wasEverCalled = true
					end)

					updateMemStorageService:Fire(nil)

					result:Disconnect()

					expect(wasEverCalled).to.equal(false)
				end
			)
		end)

		describe("GIVEN a PlayersService with a missing LocalPlayer", function()
			local mockMemStorageService = MagicMock.new()
			mockMemStorageService.GetItem = function()
				return "mockStorageItemJSON"
			end

			local mockHttpService = MagicMock.new()
			local mockPlayersService = MagicMock.new()
			mockPlayersService.LocalPlayer = nil

			local fromMemStorageServiceInstance = fromMemStorageService({
				MemStorageService = mockMemStorageService,
				PlayersService = mockPlayersService,
				HttpService = mockHttpService,
			})(behavior)

			it("SHOULD still return a value when `read` is invoked", function()
				local result = fromMemStorageServiceInstance.read()
				expect(result).to.be.ok()
			end)
		end)

		describe("GIVEN a HttpService that can throw based on MemStorageService's GetItem", function()
			local mockMemStorageService = MagicMock.new()
			mockMemStorageService.GetItem = function()
				return "garbage"
			end
			local updateMemStorageService = Instance.new("BindableEvent")
			mockMemStorageService.BindAndFire = function(_, _, func)
				return updateMemStorageService.Event:Connect(function(value, a)
					func(value)
				end)
			end

			local mockHttpService = MagicMock.new()
			mockHttpService.JSONDecode = function(_, value)
				if value == "validJson" then
					return { foo = true }
				end

				error("invalid json")
			end

			local fromMemStorageServiceInstance = fromMemStorageService({
				MemStorageService = mockMemStorageService,
				HttpService = mockHttpService,
			})(behavior)

			it("SHOULD return nil since GetItem returns garbage", function()
				local result = fromMemStorageServiceInstance.read()
				expect(result).to.never.be.ok()
			end)

			it(
				"SHOULD never invoke passed function with JSONDecode results when updateMemStorageService is fired",
				function()
					local numberOfTimesCalled = 0
					local result = fromMemStorageServiceInstance.onPolicyChanged(function(value)
						numberOfTimesCalled = numberOfTimesCalled + 1
					end)

					updateMemStorageService:Fire("validJson")
					updateMemStorageService:Fire("garbage")
					updateMemStorageService:Fire("validJson")

					result:Disconnect()

					expect(numberOfTimesCalled).to.equal(1)
				end
			)
		end)

		describe("GIVEN a new instance of fromMemStorageService", function()
			local validJson = "validJson"
			local mockMemStorageService = MagicMock.new()
			mockMemStorageService.GetItem = function()
				return validJson
			end
			local updateMemStorageService = Instance.new("BindableEvent")
			mockMemStorageService.BindAndFire = function(_, _, func)
				return updateMemStorageService.Event:Connect(function(value, a)
					func(value)
				end)
			end

			local mockHttpService = MagicMock.new()
			mockHttpService.JSONDecode = function(_, value)
				return "tableFromJson"
			end

			local fromMemStorageServiceInstance = fromMemStorageService({
				MemStorageService = mockMemStorageService,
				HttpService = mockHttpService,
			})(behavior)

			describe("WHEN read returns a value and onPolicyChanged returns the same value", function()
				it("SHOULD not fire onPolicyChanged function", function()
					local numberOfTimesCalled = 0
					fromMemStorageServiceInstance.onPolicyChanged(function()
						numberOfTimesCalled = numberOfTimesCalled + 1
					end)
					local _ = fromMemStorageServiceInstance.read()
					-- intentionally fire the same value that we read
					updateMemStorageService:Fire(validJson)

					expect(numberOfTimesCalled).to.equal(0)
				end)
			end)
		end)

		describe("GIVEN Performance", function()
			describe("Benchmark fromMemStorageService", function()
				local policyJsonData = "{"
					.. '"ChatConversationHeaderGroupDetails": true,'
					.. '"ChatHeaderSearch": true,'
					.. '"ChatHeaderCreateChatGroup": true,'
					.. '"ChatHeaderHomeButton": false,'
					.. '"ChatHeaderNotifications": true,'
					.. '"ChatPlayTogether": true,'
					.. '"ChatShareGameToChatFromChat": true,'
					.. '"ChatTapConversationThumbnail": true,'
					.. '"ChatViewProfileOption": true,'
					.. '"GamesDropDownList": true,'
					.. '"UseNewDropDown": true,'
					.. '"GameDetailsMorePage": true,'
					.. '"GameDetailsShowGlobalCounters": true,'
					.. '"GameDetailsPlayWithFriends": true,'
					.. '"GameDetailsSubtitle": true,'
					.. '"GameInfoList": true,'
					.. '"GameInfoListDeveloper": true,'
					.. '"GamePlaysAndRatings": true,'
					.. '"GameInfoShowBadges": true,'
					.. '"GameInfoShowCreated": true,'
					.. '"GameInfoShowGamepasses": true,'
					.. '"GameInfoShowGenre": true,'
					.. '"GameInfoShowMaxPlayers": true,'
					.. '"GameInfoShowServers": true,'
					.. '"GameInfoShowUpdated": true,'
					.. '"GameReportingDisabled": false,'
					.. '"GamePlayerCounts": true,'
					.. '"GiftCardsEnabled": true,'
					.. '"Notifications": true,'
					.. '"OfficialStoreEnabled": true,'
					.. '"RecommendedGames": false,'
					.. '"SearchBar": true,'
					.. '"MorePageType": "More",'
					.. '"AboutPageType": "About",'
					.. '"FriendFinder": true,'
					.. '"SocialLinks": true,'
					.. '"SocialGroupLinks": true,'
					.. '"EligibleForCapturesFeature": false,'
					.. '"EnableShareCaptureCTA": false,'
					.. '"SiteMessageBanner": true,'
					.. '"UseWidthBasedFormFactorRule": false,'
					.. '"UseHomePageWithAvatarAndPanel": false,'
					.. '"UseBottomBar": true,'
					.. '"AvatarHeaderIcon": "LuaApp/icons/ic-back",'
					.. '"AvatarEditorShowBuyRobuxOnTopBar": true,'
					.. '"HomeIcon": "LuaApp/icons/ic-roblox-close",'
					.. '"ShowYouTubeAgeAlert": false,'
					.. '"GameDetailsShareButton": true,'
					.. '"CatalogShareButton": true,'
					.. '"AccountProviderName": "",'
					.. '"InviteFromAccountProvider": false,'
					.. '"ShareToAccountProvider": false,'
					.. '"ShareToAccountProviderTimeout": 8,'
					.. '"ShowDisplayName": true,'
					.. '"GamesPageCreationCenterTitle": false,'
					.. '"ShowShareTargetGameCreator": true,'
					.. '"SearchAutoComplete": true,'
					.. '"CatalogShow3dView": true,'
					.. '"CatalogReportingDisabled": false,'
					.. '"CatalogCommunityCreations": true,'
					.. '"CatalogPremiumCategory": true,'
					.. '"CatalogPremiumContent": true,'
					.. '"ItemDetailsFullView": true,'
					.. '"UseAvatarExperienceLandingPage": true,'
					.. '"HomePageFriendSection": true,'
					.. '"HomePageProfileLink": true,'
					.. '"PurchasePromptIncludingWarning": false,'
					.. '"ShowVideoThumbnails": true,'
					.. '"VideoSharingTestContent": [],'
					.. '"SystemBarPlacement": "Left",'
					.. '"EnableInGameHomeIcon": true,'
					.. '"UseExternalBrowserForDisclaimerLinks": true,'
					.. '"ShowExitFullscreenToast": false,'
					.. '"ExitFullscreenToastEnabled": true,'
					.. '"UseLuobuAuthentication": false,'
					.. '"CheckUserAgreementsUpdatedOnLogin": true,'
					.. '"AddUserAgreementIdsToSignupRequest": true,'
					.. '"UseOmniRecommendation": true,'
					.. '"ShowAgeVerificationOverlayEnabled": false,'
					.. '"ShouldShowGroupsTile": true,'
					.. '"ShowVoiceUpsell": true,'
					.. '"ProfileShareEnabled": true,'
					.. '"ContactImporterEnabled": true,'
					.. '"FriendCodeQrCodeScannerEnabled": false,'
					.. '"RealNamesInDisplayNamesEnabled": false,'
					.. '"CsatSurveyRestrictTextInput": false,'
					.. '"RobloxCreatedItemsCreatedByLuobu": false,'
					.. '"GameInfoShowChatFeatures": true,'
					.. '"PlatformGroup": "Desktop",'
					.. '"UsePhoneSearchDiscoverEntry": false,'
					.. '"ShowVoiceUpsellV2": true,'
					.. '"HomeLocalFeedItems": {'
					.. '"UserInfo": 1,'
					.. '"FriendCarousel": 2'
					.. "},"
					.. '"Routes": {'
					.. '"auth": {'
					.. '"connect": "v2/login",'
					.. '"login": "v2/login",'
					.. '"signup": "v2/signup"'
					.. "}"
					.. "},"
					.. '"PromotionalEmailsCheckboxEnabled": true,'
					.. '"PromotionalEmailsOptInByDefault": true,'
					.. '"EnablePremiumUserFeatures": true,'
					.. '"CanShowUnifiedChatU13Upsell": false,'
					.. '"CanShowUnifiedChatUpsell": true,'
					.. '"CommunityLinksEnabled": true,'
					.. '"EnableProfileQrCode": true,'
					.. '"enableDualLogin": true,'
					.. '"luaProfileEnabled": true,'
					.. '"AlwaysFetchFriendRecommendations": false,'
					.. '"FriendCarouselSorting": "allFriendsThenRecommendations",'
					.. '"EnableNotificationPreferencesPage": true,'
					.. '"FullscreenTitleBarEnabled": true,'
					.. '"UseGridHomePage": true,'
					.. '"UseGridPageLayout": true,'
					.. '"ShouldSystemBarUsuallyBePresent": true,'
					.. '"UseExternalBrowserForMoreLinks": true,'
					.. '"ShowStudioCTA": true,'
					.. '"EnableVoiceReportAbuseMenu": true,'
					.. '"ShowPassesOnExperienceDetails": true,'
					.. '"displayAccountDeletion": true,'
					.. '"DisplayCheckboxInVoiceConsent": false'
					.. "}"
				local mockMemStorageService = MagicMock.new()
				mockMemStorageService.GetItem = function()
					return policyJsonData
				end
				local updateMemStorageService = Instance.new("BindableEvent")
				mockMemStorageService.BindAndFire = function(_, _, func)
					local initialValue = mockMemStorageService.GetItem()
					local connection = updateMemStorageService.Event:Connect(function(value, a)
						func(value)
					end)

					func(initialValue)
					return connection
				end

				local fromMemStorageServiceInstance = fromMemStorageService({
					MemStorageService = mockMemStorageService,
				})(behavior)

				it("benchmark read function", function()
					local startTimeInMs = os.clock() * 1000
					local result = fromMemStorageServiceInstance.read()
					local totalTimeSpentInMs = os.clock() * 1000 - startTimeInMs
					print(string.format("total time to read is %fms ", totalTimeSpentInMs))
				end)

				it("benchmark onPolicyChanged function", function()
					local wasEverCalled = false
					local callback = function(value)
						wasEverCalled = true
					end
					local startTimeInMs = os.clock() * 1000
					local result = fromMemStorageServiceInstance.onPolicyChanged(callback)
					updateMemStorageService:Fire(policyJsonData)
					for i = 1, 1000 do
						fromMemStorageServiceInstance.onPolicyChanged(callback)
					end

					local totalTimeSpentInMs = os.clock() * 1000 - startTimeInMs
					print(string.format("total time on onPolicyChanged 1K times is %fms ", totalTimeSpentInMs))

					result:Disconnect()

					expect(wasEverCalled).to.equal(true)
				end)
			end)
		end)
	end)
end
