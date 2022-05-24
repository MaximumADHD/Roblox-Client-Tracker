--!nonstrict
local createUploadContactsByUser = require(script.Parent.createUploadContactsByUser)

return function()
	describe("GIVEN a thunk creator: createUploadContactsByUser", function()
		beforeEach(function(context: any)
			context.thunk = createUploadContactsByUser({
				roduxNetworking = context.roduxNetworking,
			}) :: any
			context.spy, context.reducer = context.Mock.Spy.new(function(_state, _action)
				-- no opt
			end)
		end)
		describe("GIVEN passing mock", function()
			beforeEach(function(context)
				context.mockFunc = function(thunk: any)
					thunk.Mock.reply({
						responseBody = "hi",
					})
				end
				context.getSucceededAction = function(thunk): (any) -> ()
					return thunk.Succeeded.name
				end
			end)

			it("SHOULD dispatch the correct action", function(context)
				local thunk: any = context.thunk
				context.mockFunc(thunk)

				local store = context.createStoreWithReducer(context.Rodux.createReducer(nil, {
					[context.getSucceededAction(thunk)] = context.reducer,
				}))

				store:dispatch(thunk.API({
					{
						fields = {
							{
								name = "Last Name",
								value = "Smith",
							},
							{
								name = "First Name",
								value = "John",
							},
							{
								name = "Phone Number",
								value = 111,
							},
						},
					},
					{
						fields = {
							{
								name = "Last Name",
								value = "Banks",
							},
							{
								name = "First Name",
								value = "Bob",
							},
							{
								name = "Phone Number",
								value = 222,
							},
						},
					},
				}))

				assert(#context.Mock.getCalls(context.spy) > 0, "Check reducer function for errors.")
			end)
		end)
	end)
end
