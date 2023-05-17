return function()
	local Root = script.Parent
	local Packages = Root.Parent

	local MessageBus = game:GetService("MessageBusService")

	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect
	local CallProtocol = require(script.Parent.CallProtocol)
	local Constants = require(script.Parent.CallProtocolConstants)
	local CallStatus = require(Root.Enums.CallStatus)

	describe("CallProtocol", function()
		beforeAll(function(context: any)
			context.CallProtocol = CallProtocol.new()
			context.mockCallModel = {
				callStatus = CallStatus.Active.rawValue(),
				callId = "123",
				participants = {
					["456"] = {
						userId = 456,
						userName = "userName",
						displayName = "displayName",
					},
				},
				experienceDetail = {
					placeId = 789,
					gameInstanceId = 012,
					universeName = "universe",
				},
			}
		end)

		it("should init call with params", function(context: any)
			local didSucceed = false
			local conn: any = MessageBus:Subscribe(Constants.MESSAGE_INIT_CALL, function(params)
				jestExpect(params.calleeId).toEqual(123)
				jestExpect(params.placeId).toEqual(456)
				jestExpect(params.instanceId).toEqual(789)
				didSucceed = true
			end, true, true)
			context.CallProtocol:initCall(123, 456, 789)
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

		it("should finish call with params", function(context: any)
			local didSucceed = false
			local conn: any = MessageBus:Subscribe(Constants.MESSAGE_FINISH_CALL, function(params)
				jestExpect(params.callId).toEqual("123")
				didSucceed = true
			end, true, true)
			context.CallProtocol:finishCall("123")
			wait()
			jestExpect(didSucceed).toEqual(true)
			conn:Disconnect()
		end)

		it("should listen to init call response", function(context: any)
			-- Publish first and subscribe later to make sure our process can
			-- pick up events that has never listened from others
			local didSucceed = false
			MessageBus:Publish(Constants.MESSAGE_HANDLE_INIT_CALL, context.mockCallModel)
			local conn = context.CallProtocol:listenToHandleInitCall(function(params)
				jestExpect(params.callId).toEqual(context.mockCallModel.callId)
				jestExpect(params.callStatus).toEqual(context.mockCallModel.callStatus)
				jestExpect(params.participants["456"].userId).toEqual(context.mockCallModel.participants["456"].userId)
				jestExpect(params.experienceDetail.placeId).toEqual(context.mockCallModel.experienceDetail.placeId)
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
			MessageBus:Publish(Constants.MESSAGE_HANDLE_ANSWER_CALL, context.mockCallModel)
			local conn = context.CallProtocol:listenToHandleAnswerCall(function(params)
				jestExpect(params.callId).toEqual(context.mockCallModel.callId)
				jestExpect(params.callStatus).toEqual(context.mockCallModel.callStatus)
				jestExpect(params.participants["456"].userId).toEqual(context.mockCallModel.participants["456"].userId)
				jestExpect(params.experienceDetail.placeId).toEqual(context.mockCallModel.experienceDetail.placeId)
				didSucceed = true
			end)
			wait()
			jestExpect(didSucceed).toEqual(true)
			conn:Disconnect()
		end)

		it("should listen to end call response", function(context: any)
			-- Publish first and subscribe later to make sure our process can
			-- pick up events that has never listened from others
			local didSucceed = false
			MessageBus:Publish(Constants.MESSAGE_HANDLE_END_CALL, {
				callStatus = CallStatus.Idle.rawValue(),
			})
			local conn = context.CallProtocol:listenToHandleEndCall(function(params)
				jestExpect(params.callStatus).toEqual(CallStatus.Idle.rawValue())
				didSucceed = true
			end)
			wait()
			jestExpect(didSucceed).toEqual(true)
			conn:Disconnect()
		end)
	end)
end
