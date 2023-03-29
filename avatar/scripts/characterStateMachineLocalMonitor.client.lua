--!strict


-- Watching for messages from server
local debug = false
local replicatedStorage : ReplicatedStorage = game:GetService("ReplicatedStorage")
local humanoidStateMachineUpdateInstance : Instance = replicatedStorage:WaitForChild("HumanoidStateMachineUpdate")
local characterStateMachineFolder : Instance = replicatedStorage:WaitForChild("CharacterStateMachine")
local commonTypes = require(characterStateMachineFolder:WaitForChild("CharacterStateMachineTypes"))
local commonFuncs = require(characterStateMachineFolder:WaitForChild("CharacterStateMachineCommon"))
local playersService : Players = game:FindService("Players")

local runningStateMachines : { [Model]: commonTypes.RunningStateMachineRecord } = {}

local humanoidStateMachineUpdateEvent : RemoteEvent = nil
if humanoidStateMachineUpdateInstance:IsA("RemoteEvent") then
	humanoidStateMachineUpdateEvent = humanoidStateMachineUpdateInstance
end

local localHumanoidStateMachineEvent : BindableEvent = Instance.new("BindableEvent")
localHumanoidStateMachineEvent.Name = "LocalHumanoidStateMachineEvent"
localHumanoidStateMachineEvent.Parent = script

-- SETUP CHARACTER CONTROL STATE MACHINE -----------------------------------------------------------
local CCSMDef = require(characterStateMachineFolder:WaitForChild("CharacterControlStateMachine"))

local function startStateMachine(character : Model, humanoid : Humanoid, stateName : string?, context : any) : boolean
	if character == nil or humanoid == nil then
		return false
	end
	
	local record : commonTypes.RunningStateMachineRecord? = nil
	if stateName == nil then
		record = commonFuncs.startStateMachine(character, humanoid)	
	else
		record = commonFuncs.continueStateMachine(character, humanoid, stateName, context)	
	end

	if record ~= nil then
		runningStateMachines[character] = record
		return true
	end

	return false
end

-- WATCH FOR NEW PCs -----------------------------------------------------------
if debug then
	print("Starting client monitor")
end

local function onLocalHumanoidStateMachineEvent(character : Model, humanoid : Humanoid, eventType : string)
	if eventType == "RegisterHumanoidSM" then
		local registerRecord : commonTypes.RegisterHumanoidSMDataType = {
			characterModel = character,
			humanoidInstance = humanoid
		}
		humanoidStateMachineUpdateEvent:FireServer("RegisterHumanoidSM", registerRecord)
		startStateMachine(character, humanoid)
	end
end

localHumanoidStateMachineEvent.Event:Connect(onLocalHumanoidStateMachineEvent)

-- LISTEN TO SERVER REQUESTS -----------------------------------------------------

local function onHumanoidRemoteEventClient(eventType : string, data : any)
	if eventType == "TransferHumanoidSM" then
		if debug then
			print("TransferHumanoidSM", data)
		end
		local transferDataModel : Model = data
		local record : commonTypes.RunningStateMachineRecord? = runningStateMachines[transferDataModel]
		if record == nil then
			warn("Unable to find currently running state machine for.")
		else
			-- copy context and shut down local SM
			local contextXfer : commonTypes.ContextTransferDataType = {
				oldOwner = playersService.LocalPlayer,
				character = data,	
				currentState = record.humanoid:GetState().Name,
				context = record.CCSM.context
			}

			humanoidStateMachineUpdateEvent:FireServer("ContextDataHumanoidSM", contextXfer)
			commonFuncs.stopStateMachine(record)	
			runningStateMachines[transferDataModel] = nil
		end
	elseif eventType == "ContextDataHumanoidSM" then
		if debug then
			print("ContextDataHumanoidSM")
		end
		if data ~= nil then
			local contextXfer : commonTypes.ContextTransferDataType = data
			local humanoid : Humanoid? = contextXfer.character:FindFirstChildOfClass("Humanoid")
			if humanoid ~= nil then
				local results : boolean = startStateMachine(contextXfer.character, humanoid, contextXfer.currentState, contextXfer.context)

				if results then
					-- send confirmation to server
					humanoidStateMachineUpdateEvent:FireServer("ConfirmStartHumanoidSM", contextXfer.character)
				end
			end
		end
	else
		print("Unknown state machine message: ", eventType)
	end
end
if humanoidStateMachineUpdateEvent ~= nil then
	humanoidStateMachineUpdateEvent.OnClientEvent:Connect(onHumanoidRemoteEventClient)
else
	error("Unable to find remote event for state machine messaging.")
end

