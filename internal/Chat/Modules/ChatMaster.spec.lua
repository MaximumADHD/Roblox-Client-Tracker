return function()
	local CoreGui = game:GetService("CoreGui")
	local Modules = CoreGui.RobloxGui.Modules

	local ChatMaster = require(Modules.ChatMaster)
	local Rodux = require(Modules.Common.Rodux)
	local AppReducer = require(Modules.LuaApp.AppReducer)
	local DialogInfo = require(Modules.LuaChat.DialogInfo)
	local RemoveRoute = require(Modules.LuaChat.Actions.RemoveRoute)
	local SetRoute = require(Modules.LuaChat.Actions.SetRoute)

	local function closeGameShare(chatMaster)
		chatMaster._appState.store:Dispatch(RemoveRoute(DialogInfo.Intent.GameShare))
		chatMaster:Stop(ChatMaster.Type.GameShare)
	end

	describe("new", function()
		it("should create a ChatMaster object", function()
			local chatMaster = ChatMaster.new()

			expect(chatMaster).to.be.ok()
		end)

		it("should optionally take a rodux store as an argument", function()
			local store = Rodux.Store.new(AppReducer)
			local chatMaster = ChatMaster.new(store)

			expect(chatMaster).to.be.ok()
		end)
	end)

	describe("Start", function()
		it("should open chat with no arguments", function()
			local chatMaster = ChatMaster.new()
			chatMaster:Start()

			expect(chatMaster).to.be.ok()
		end)

		it("should open Share Game To Chat with valid arguments", function()
			local chatMaster = ChatMaster.new()
			chatMaster:Start(ChatMaster.Type.GameShare, {placeId = "1818"})

			expect(chatMaster).to.be.ok()
		end)
	end)

	describe("Stop", function()
		it("should close chat with no arguments", function()
			local chatMaster = ChatMaster.new()
			chatMaster:Start()
			chatMaster:Stop()
			expect(chatMaster).to.be.ok()
		end)

		it("should close given GameShare as an argument", function()
			local chatMaster = ChatMaster.new()
			chatMaster:Start(ChatMaster.Type.GameShare, {placeId = "1818"})
			chatMaster:Stop(ChatMaster.Type.GameShare)
			expect(chatMaster).to.be.ok()
		end)

		it("closing after GameShare should remove GameShare route", function()
			local chatMaster = ChatMaster.new()
			local appState = chatMaster._appState

			chatMaster:Start(ChatMaster.Type.GameShare, {placeId = "1818"})
			expect(appState.store:GetState().ChatAppReducer.Location.current.intent).to.equal(DialogInfo.Intent.GameShare)
			closeGameShare(chatMaster)
			expect(appState.store:GetState().ChatAppReducer.Location.current.intent).to.never.equal(DialogInfo.Intent.GameShare)
		end)
	end)

	describe("LuaChat and GameShare interaction", function()
		it("opening LuaChat after closing GameShare should open the ConversationHub", function()
			local chatMaster = ChatMaster.new()
			local appState = chatMaster._appState

			chatMaster:Start(ChatMaster.Type.GameShare, {placeId = "1818"})
			expect(appState.store:GetState().ChatAppReducer.Location.current.intent).to.equal(DialogInfo.Intent.GameShare)
			closeGameShare(chatMaster)
			chatMaster:Start(ChatMaster.Type.Default)
			expect(appState.store:GetState().ChatAppReducer.Location.current.intent).to.equal(DialogInfo.Intent.ConversationHub)
		end)

		it("opening GameShare after closing LuaChat should open the GameShare screen", function()
			local chatMaster = ChatMaster.new()
			local appState = chatMaster._appState

			chatMaster:Start(ChatMaster.Type.Default)
			expect(appState.store:GetState().ChatAppReducer.Location.current.intent).to.equal(DialogInfo.Intent.ConversationHub)
			chatMaster:Stop(ChatMaster.Type.Default)
			chatMaster:Start(ChatMaster.Type.GameShare, {placeId = "1818"})
			expect(appState.store:GetState().ChatAppReducer.Location.current.intent).to.equal(DialogInfo.Intent.GameShare)

			closeGameShare(chatMaster)
			chatMaster:Start(ChatMaster.Type.Default)
			expect(appState.store:GetState().ChatAppReducer.Location.current.intent).to.equal(DialogInfo.Intent.ConversationHub)
		end)

		it("closing GameShare should preserve the user's location history", function()
			local chatMaster = ChatMaster.new()
			local appState = chatMaster._appState

			chatMaster:Start()
			appState.store:Dispatch(SetRoute(DialogInfo.Intent.Conversation, {conversationId = "1"}))
			chatMaster:Stop()

			local conversationLocation = appState.store:GetState().ChatAppReducer.Location.current
			expect(conversationLocation).to.be.ok()

			chatMaster:Start(ChatMaster.Type.GameShare, {placeId = "1818"})
			closeGameShare(chatMaster)

			chatMaster:Start()
			expect(appState.store:GetState().ChatAppReducer.Location.current).to.equal(conversationLocation)
		end)
	end)
end