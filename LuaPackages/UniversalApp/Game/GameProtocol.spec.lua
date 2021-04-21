return function()
	local CorePackages = game:GetService("CorePackages")
	local MessageBus = require(CorePackages.UniversalApp.MessageBus)
	local GameProtocol = require(CorePackages.UniversalApp.Game.GameProtocol)
	local tutils = require(CorePackages.Packages.tutils)
	
	local placeId = 1818
	local userId = 100000000
	local accessCode = "sample-access-code-01"
	local referralPage = "sampleReferralPage"
	local gameInstanceId = "sample-instance-id-01"
	local linkCode = "sample-link-code-01"
	
	describe("GameProtocol", function()
		beforeEach(function(context)
			context.subscriber = MessageBus.Subscriber.new()
		end)

		afterEach(function(context)
			context.subscriber:unsubscribeFromAllMessages()
		end)
		
		it("should launch game by placeId", function(context)
			local didSucceed = false
			GameProtocol:launchGame({
				placeId = placeId
			})
			
			context.subscriber:subscribe(GameProtocol.GAME_LAUNCH_DESCRIPTOR, function(params)
				expect(params.placeId).to.equal(placeId)
				didSucceed = true
			end)
			wait()
			expect(didSucceed).to.equal(true)
		end)

		it("should launch game by userId", function(context)
			local didSucceed = false
			GameProtocol:launchGame({
				userId = userId
			})

			context.subscriber:subscribe(GameProtocol.GAME_LAUNCH_DESCRIPTOR, function(params)
				expect(params.userId).to.equal(userId)
				didSucceed = true
			end)
			wait()
			expect(didSucceed).to.equal(true)
		end)

		it("should not launch game without placeId or userId", function(context)
			expect(function()
				GameProtocol:launchGame({
				accessCode = accessCode
				})
			end).to.throw()
		end)
		
		it("should carry referral page", function(context)
			local didSucceed = false
			GameProtocol:launchGame({
				placeId = placeId,
				referralPage = referralPage
			})

			context.subscriber:subscribe(GameProtocol.GAME_LAUNCH_DESCRIPTOR, function(params)
				expect(params.placeId).to.equal(placeId)
				expect(params.referralPage).to.equal(referralPage)
				didSucceed = true
			end)
			wait()
			expect(didSucceed).to.equal(true)
		end)

		it("should carry access code", function(context)
			local didSucceed = false
			GameProtocol:launchGame({
				placeId = placeId,
				accessCode = accessCode
			})

			context.subscriber:subscribe(GameProtocol.GAME_LAUNCH_DESCRIPTOR, function(params)
				expect(params.placeId).to.equal(placeId)
				expect(params.accessCode).to.equal(accessCode)
				didSucceed = true
			end)
			wait()
			expect(didSucceed).to.equal(true)
		end)

		it("should carry game instance id", function(context)
			local didSucceed = false
			GameProtocol:launchGame({
				placeId = placeId,
				gameInstanceId = gameInstanceId
			})

			context.subscriber:subscribe(GameProtocol.GAME_LAUNCH_DESCRIPTOR, function(params)
				expect(params.placeId).to.equal(placeId)
				expect(params.gameInstanceId).to.equal(gameInstanceId)
				didSucceed = true
			end)
			wait()
			expect(didSucceed).to.equal(true)
		end)

		it("should carry link code", function(context)
			local didSucceed = false
			GameProtocol:launchGame({
				placeId = placeId,
				linkCode = linkCode
			})

			context.subscriber:subscribe(GameProtocol.GAME_LAUNCH_DESCRIPTOR, function(params)
				expect(params.placeId).to.equal(placeId)
				expect(params.linkCode).to.equal(linkCode)
				didSucceed = true
			end)
			wait()
			expect(didSucceed).to.equal(true)
		end)

		it("should handle placeId and userId", function(context)
			local didSucceed = false
			GameProtocol:launchGame({
				placeId = placeId,
				userId = userId
			})

			context.subscriber:subscribe(GameProtocol.GAME_LAUNCH_DESCRIPTOR, function(params)
				expect(params.placeId).to.equal(placeId)
				expect(params.userId).to.equal(userId)
				didSucceed = true
			end)
			wait()
			expect(didSucceed).to.equal(true)
		end)
	end)
end