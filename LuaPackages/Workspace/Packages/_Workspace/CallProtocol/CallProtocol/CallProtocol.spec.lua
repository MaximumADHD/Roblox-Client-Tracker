return function()
	local Root = script.Parent
	local Packages = Root.Parent

	local MessageBus = game:GetService("MessageBusService")

	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect
	local CallProtocol = require(script.Parent.CallProtocol)
	local Constants = require(script.Parent.CallProtocolConstants)
	local UserPresenceType = require(Root.Enums.UserPresenceType)
	local CallStatus = require(Root.Enums.CallStatus)
	local ParticipantStatus = require(Root.Enums.ParticipantStatus)
	local CallNotificationType = require(Root.Enums.CallNotificationType)

	describe("CallProtocol", function()
		beforeAll(function(context: any)
			context.CallProtocol = CallProtocol.new()
			context.mockCallModel = {
				callStatus = CallStatus.Active.rawValue(),
				callId = "123",
				participants = {
					{
						userId = 456,
						username = "username",
						status = ParticipantStatus.Joined.rawValue(),
					},
				},
				experience = {
					placeId = 789,
					gameInstanceId = 012,
				},
			}
		end)

		it("should init call with params", function(context: any)
			local didSucceed = false
			local conn: any = MessageBus:Subscribe(Constants.MESSAGE_INIT_CALL, function(params)
				jestExpect(params.calleeUserId).toEqual(123)
				jestExpect(params.callerPresenceType).toEqual(UserPresenceType.Home.rawValue())
				didSucceed = true
			end, true, true)
			context.CallProtocol:initCall(123, UserPresenceType.Home.rawValue())
			wait()
			jestExpect(didSucceed).toEqual(true)
			conn:Disconnect()
		end)

		it("should answer call with params", function(context: any)
			local didSucceed = false
			local conn: any = MessageBus:Subscribe(Constants.MESSAGE_ANSWER_CALL, function(params)
				jestExpect(params.callId).toEqual("123")
				didSucceed = true
			end, true, true)
			context.CallProtocol:answerCall("123")
			wait()
			jestExpect(didSucceed).toEqual(true)
			conn:Disconnect()
		end)

		it("should reject call with params", function(context: any)
			local didSucceed = false
			local conn: any = MessageBus:Subscribe(Constants.MESSAGE_REJECT_CALL, function(params)
				jestExpect(params.callId).toEqual("123")
				didSucceed = true
			end, true, true)
			context.CallProtocol:rejectCall("123")
			wait()
			jestExpect(didSucceed).toEqual(true)
			conn:Disconnect()
		end)

		it("should cancel call with params", function(context: any)
			local didSucceed = false
			local conn: any = MessageBus:Subscribe(Constants.MESSAGE_CANCEL_CALL, function(params)
				jestExpect(params.callId).toEqual("123")
				didSucceed = true
			end, true, true)
			context.CallProtocol:cancelCall("123")
			wait()
			jestExpect(didSucceed).toEqual(true)
			conn:Disconnect()
		end)

		it("should listen to init call response", function(context: any)
			-- Publish first and subscribe later to make sure our process can
			-- pick up events that has never listened from others
			local didSucceed = false
			MessageBus:Publish(Constants.MESSAGE_HANDLE_INIT_CALL, {
				isSuccess = true,
				call = context.mockCallModel,
			})
			local conn = context.CallProtocol:listenToHandleInitCall(function(params)
				jestExpect(params.isSuccess).toEqual(true)
				jestExpect(params.call.callId).toEqual(context.mockCallModel.callId)
				jestExpect(params.call.callStatus).toEqual(context.mockCallModel.callStatus)
				jestExpect(params.call.participants[1].userId).toEqual(context.mockCallModel.participants[1].userId)
				jestExpect(params.call.experience.placeId).toEqual(context.mockCallModel.experience.placeId)
				didSucceed = true
			end)
			wait()
			jestExpect(didSucceed).toEqual(true)
			conn:Disconnect()
		end)

		it("should listen to answer call response", function(context: any)
			-- Publish first and subscribe later to make sure our process can
			-- pick up events that has never listened from others
			local didSucceed = false
			MessageBus:Publish(Constants.MESSAGE_HANDLE_ANSWER_CALL, {
				isSuccess = true,
				call = context.mockCallModel,
			})
			local conn = context.CallProtocol:listenToHandleAnswerCall(function(params)
				jestExpect(params.isSuccess).toEqual(true)
				jestExpect(params.call.callId).toEqual(context.mockCallModel.callId)
				jestExpect(params.call.callStatus).toEqual(context.mockCallModel.callStatus)
				jestExpect(params.call.participants[1].userId).toEqual(context.mockCallModel.participants[1].userId)
				jestExpect(params.call.experience.placeId).toEqual(context.mockCallModel.experience.placeId)
				didSucceed = true
			end)
			wait()
			jestExpect(didSucceed).toEqual(true)
			conn:Disconnect()
		end)

		it("should listen to reject call response", function(context: any)
			-- Publish first and subscribe later to make sure our process can
			-- pick up events that has never listened from others
			local didSucceed = false
			MessageBus:Publish(Constants.MESSAGE_HANDLE_REJECT_CALL, {
				call = context.mockCallModel,
			})
			local conn = context.CallProtocol:listenToHandleRejectCall(function(params)
				jestExpect(params.call.callId).toEqual(context.mockCallModel.callId)
				jestExpect(params.call.callStatus).toEqual(context.mockCallModel.callStatus)
				jestExpect(params.call.participants[1].userId).toEqual(context.mockCallModel.participants[1].userId)
				jestExpect(params.call.experience.placeId).toEqual(context.mockCallModel.experience.placeId)
				didSucceed = true
			end)
			wait()
			jestExpect(didSucceed).toEqual(true)
			conn:Disconnect()
		end)

		it("should listen to cancel call response", function(context: any)
			-- Publish first and subscribe later to make sure our process can
			-- pick up events that has never listened from others
			local didSucceed = false
			MessageBus:Publish(Constants.MESSAGE_HANDLE_CANCEL_CALL, {
				call = context.mockCallModel,
			})
			local conn = context.CallProtocol:listenToHandleCancelCall(function(params)
				jestExpect(params.call.callId).toEqual(context.mockCallModel.callId)
				jestExpect(params.call.callStatus).toEqual(context.mockCallModel.callStatus)
				jestExpect(params.call.participants[1].userId).toEqual(context.mockCallModel.participants[1].userId)
				jestExpect(params.call.experience.placeId).toEqual(context.mockCallModel.experience.placeId)
				didSucceed = true
			end)
			wait()
			jestExpect(didSucceed).toEqual(true)
			conn:Disconnect()
		end)

		it("should listen to call notification update response", function(context: any)
			-- Publish first and subscribe later to make sure our process can
			-- pick up events that has never listened from others
			local didSucceed = false
			MessageBus:Publish(Constants.MESSAGE_HANDLE_CALL_NOTIFICATION_UPDATE, {
				notificationType = CallNotificationType.Update.rawValue(),
				call = context.mockCallModel,
			})
			local conn = context.CallProtocol:listenToHandleCallNotificationUpdate(function(params)
				jestExpect(params.notificationType).toEqual(CallNotificationType.Update.rawValue())
				jestExpect(params.call.callId).toEqual(context.mockCallModel.callId)
				jestExpect(params.call.callStatus).toEqual(context.mockCallModel.callStatus)
				jestExpect(params.call.participants[1].userId).toEqual(context.mockCallModel.participants[1].userId)
				jestExpect(params.call.experience.placeId).toEqual(context.mockCallModel.experience.placeId)
				didSucceed = true
			end)
			wait()
			jestExpect(didSucceed).toEqual(true)
			conn:Disconnect()
		end)
	end)
end
