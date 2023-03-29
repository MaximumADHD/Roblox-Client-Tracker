--!strict
local debug = false

local replicatedStorage : ReplicatedStorage = game:GetService("ReplicatedStorage")
local characterStateMachineFolder : Instance = replicatedStorage:WaitForChild("CharacterStateMachine")
local commonTypes = require(characterStateMachineFolder:WaitForChild("CharacterStateMachineTypes"))
local commonFuncs = require(characterStateMachineFolder:WaitForChild("CharacterStateMachineCommon"))

local trackedOwnershipList : {[Model]:Player | string} = {}
local humanoidOwnershipList : {[Player]:commonTypes.RegisterHumanoidSMDataType} = {}
local humanoidRemoteEvent : RemoteEvent = Instance.new("RemoteEvent")
humanoidRemoteEvent.Name = "HumanoidStateMachineUpdate"
humanoidRemoteEvent.Parent = replicatedStorage

local runningStateMachines : { [Model]: commonTypes.RunningStateMachineRecord } = {}

local humanoidUploadTransferInProgress : {[Model]:commonTypes.OwnerTransferDataType} = {}
local humanoidStartupTransferInProgress : {[Model]:commonTypes.OwnerContextTransferDataType} = {}

--[[
	Event Types
		RegisterHumanoidSM (client->server): Client has started a new SM for a new character
		TransferHumanoidSM (server->client): Server is requesting shutdown of SM owned by client
		ContextDataHumanoidSM (client->server): Context data for SM previously running on client 
		StartHumanoidSM (server->client): Server is requesting startup of SM on client
		ConfirmStartHumanoidSM (client->server): Client confirming start of newly transfered SM

]]

local function startStateMachine(character : Model, humanoid : Humanoid, stateName : string?, context : any)	
	if character == nil or humanoid == nil then
		return
	end
	
	local record : commonTypes.RunningStateMachineRecord? = nil
	if stateName == nil then
		record = commonFuncs.startStateMachine(character, humanoid)	
	else
		record = commonFuncs.continueStateMachine(character, humanoid, stateName, context)	
	end

	if record ~= nil then
		runningStateMachines[character] = record
	end
end

local function onHumanoidRemoteEventServer(player : Player, eventType : string, data : any)
	if eventType == "RegisterHumanoidSM" then
		if debug then
			print("Server: New Humanoid", data)
		end

		humanoidOwnershipList[player] = data
		trackedOwnershipList[data.characterModel] = player
	elseif eventType == "ContextDataHumanoidSM" then
		-- Received SM Context Information From Client
		if debug then
			print("Server: Received Context Data", data)
		end
		
		local contextXfer : commonTypes.ContextTransferDataType = data

		-- check to see if we're expecting a transfer
		local transferRecord : commonTypes.OwnerTransferDataType = humanoidUploadTransferInProgress[contextXfer.character]
		if  transferRecord ~= nil then
			-- Check to see if we're expecting it from this Client
			if transferRecord.oldOwner == contextXfer.oldOwner then
				humanoidUploadTransferInProgress[contextXfer.character] = nil
				local contextTransferData : commonTypes.ContextTransferDataType = data
				if  transferRecord.newOwner == nil then
					-- server owned
					local humanoid : Humanoid? = contextXfer.character:FindFirstChildOfClass("Humanoid")
					if humanoid ~= nil then
						startStateMachine(contextXfer.character, humanoid, contextXfer.currentState, contextXfer.context)
					end
					trackedOwnershipList[contextXfer.character] = "server"
				else
					-- new client owner, send it to them
					local newOwner = transferRecord.newOwner
					local newTransferRecord : commonTypes.OwnerContextTransferDataType = {
						oldOwner = transferRecord.oldOwner,
						newOwner = newOwner,
						currentState = contextXfer.currentState,
						context = contextXfer.context
					}
					humanoidStartupTransferInProgress[newOwner] = newTransferRecord 

					trackedOwnershipList[contextXfer.character] = newOwner
					humanoidRemoteEvent:FireClient(newOwner, "ContextDataHumanoidSM", contextXfer)
				end
			else
				warn("Unexpected context recieved from", contextXfer.oldOwner)
			end
		end
	elseif eventType == "ConfirmStartHumanoidSM" then	
		if data ~= nil then
			local character : Model = data
			local startupRecord : commonTypes.OwnerContextTransferDataType? = humanoidStartupTransferInProgress[character]
			if startupRecord == nil then
				-- error
				if debug then
					warn("Startup confirmation from unexpected client")
				end
			else
				-- check to verify that this client is supposed to own this
				if startupRecord.newOwner == player then
					-- clear record
					humanoidStartupTransferInProgress[character] = nil
					trackedOwnershipList[character] = player
				else
					warn("Unexpected client attempting to start up state machine", player, character)
				end
			end
		end
	end
end

humanoidRemoteEvent.OnServerEvent:Connect(onHumanoidRemoteEventServer)


local function RequestOwnershipTransfer(character : Model, newHost : Player?, oldHost : Player?)
	-- Check to see if a transfer has already been requested
	local transferRecord : commonTypes.OwnerTransferDataType = humanoidUploadTransferInProgress[character]
	if transferRecord == nil then
		-- If its not currently being tranferred, record the transfer and request the context information
		-- from the current owner
		transferRecord = {
			oldOwner = oldHost,
			newOwner = newHost
		}
		humanoidUploadTransferInProgress[character] = transferRecord
		if oldHost == nil then
		else
			humanoidRemoteEvent:FireClient(oldHost, "TransferHumanoidSM", character)
		end
	else
		if transferRecord.newOwner ~= newHost then
			-- Ownership change was requested, but the current owner is not the previously recored one
			transferRecord.newOwner = newHost
		end
	end
end

-- poll for ownership changes
while(wait(0.1)) do
	for characterModel : Model, p : Player? | string in pairs(trackedOwnershipList) do	
		if characterModel ~= nil and characterModel.PrimaryPart ~= nil then
			local currentOwnerInstance : Instance = characterModel.PrimaryPart:GetNetworkOwner()

			local player : Player?
			if typeof(p) == "string" then
				player = nil
			else 
				player = p
			end
	
			if currentOwnerInstance ~= player then
				-- check to see if there is already a request pending
				if humanoidUploadTransferInProgress[characterModel] == nil then
					if player == nil then
						-- Need to shut down server owned SM and transfer it to a client
						if debug then
							print("Owner changed from server to", currentOwnerInstance.Name, characterModel)
						end
						local record : commonTypes.RunningStateMachineRecord? = runningStateMachines[characterModel]
						if record == nil then
							if humanoidStartupTransferInProgress[characterModel] == nil then
								-- need to transfer a state machine from the server, but the server doesn't have a record of it
								-- and there is no record of it currently being transfered
								warn("Unable to find currently running state machine for", characterModel, runningStateMachines)
							end
						else
							if currentOwnerInstance:IsA("Player") then
								-- record startup request for client
								local xferRequest : commonTypes.OwnerContextTransferDataType = {
									oldOwner = nil,
									newOwner = currentOwnerInstance,
									currentState = record.humanoid:GetState().Name,
									context = record.CCSM.context
								}
								humanoidStartupTransferInProgress[characterModel] = xferRequest

								-- copy context and shut down local SM
								local contextXfer : commonTypes.ContextTransferDataType = {
									oldOwner = nil,
									character = characterModel,	
									currentState = record.humanoid:GetState().Name,
									context = record.CCSM.context
								}

								humanoidRemoteEvent:FireClient(currentOwnerInstance, "ContextDataHumanoidSM", contextXfer)
								commonFuncs.stopStateMachine(record)	
								runningStateMachines[characterModel] = nil
							else
								warn("New State Machine owner is not a player or nil", currentOwnerInstance)
							end
						end
					else
						if player:IsA("Player") then
							local p : Player = player
							-- Need to shut down client owned SM and transfer it to another owner
							if currentOwnerInstance == nil then
								if debug then
									print("Owner changed from", player.Name, "to server.")
								end
								RequestOwnershipTransfer(characterModel, nil, player)
							elseif currentOwnerInstance:IsA("Player") then
								if debug then
									print("Owner changed from", player.Name, "to ", currentOwnerInstance.Name)
								end
								RequestOwnershipTransfer(characterModel, currentOwnerInstance, player)
							end
						else
							warn("Unknown type of player")
						end
					end
				end	
			end
		end
	end
end

