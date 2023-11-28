--! strict
local replicatedStorage: ReplicatedStorage = game:GetService("ReplicatedStorage")
local commonTypes = require(script.Parent:WaitForChild("CharacterStateMachineTypes"))
local commonFuncs = require(script.Parent:WaitForChild("CharacterStateMachineCommon"))

local playersService: Players = game:FindService("Players")
local sensorAndControllerLoader =
    require(script.Parent:WaitForChild("CharacterPhysicsControllerLoader"))

local humanoidStateMachineUpdateInstance: Instance =
    replicatedStorage:WaitForChild("HumanoidStateMachineUpdate")
local humanoidStateMachineUpdateEvent: RemoteEvent = nil
if humanoidStateMachineUpdateInstance:IsA("RemoteEvent") then
    humanoidStateMachineUpdateEvent = humanoidStateMachineUpdateInstance
end

local debug = false

local ServerMonitor = {}
ServerMonitor.__index = ServerMonitor
ServerMonitor.name = script.Name

local function getHumanoidStateMachineUpdateEvent(humanoidInstance: Humanoid)
    local localHumanoidStateMachineEventInstance: Instance =
        humanoidInstance.Parent:WaitForChild("LocalHumanoidStateMachineEvent")
    local localHumanoidStateMachineEvent: BindableEvent = nil

    if localHumanoidStateMachineEventInstance:IsA("BindableEvent") then
        localHumanoidStateMachineEvent = localHumanoidStateMachineEventInstance
    end

    if localHumanoidStateMachineEvent == nil then
        error("Error !! Expecting LocalHumanoidStateMachineEvent under the character model")
        return
    end
    return localHumanoidStateMachineEvent
end

function ServerMonitor:onServerHumanoidRemoteEventServer(
    player: Player,
    eventType: string,
    data: any
)
    if player == nil or player.Character == nil then
        return
    end

    if eventType == "ChangeStateSM" then
        -- changes to character state
        local changeStateData: commonTypes.ChangeStateSMRecord = data
        commonFuncs.SetState(changeStateData.character, changeStateData.newState)
        local humanoid = changeStateData.character:FindFirstChildOfClass("Humanoid")
        if changeStateData.newState == "Dead" then
            if
                self.trackedOwnershipList[changeStateData.character] == player
                and humanoid
                and humanoid.BreakJointsOnDeath
            then
                changeStateData.character:BreakJoints()
            end
        end
    elseif eventType == "ChangeCollisionSettings" then
        local settingsData: commonTypes.ChangeCollisionSettingsRecord = data
        if settingsData ~= nil and settingsData.character ~= nil then
            for k, v in pairs(settingsData.parts) do
                local part: Part? = settingsData.character:FindFirstChild(k)
                if part ~= nil then
                    part.CanCollide = v
                end
            end
        end
    elseif eventType == "RegisterHumanoidSM" then
        if debug then
            print("Server: New Humanoid", data)
        end
        self.trackedOwnershipList[data.characterModel] = player
    elseif eventType == "ContextDataHumanoidSM" then
        -- Received SM Context Information From Client
        if debug then
            print("Server: Received Context Data", data)
        end

        local contextXfer: commonTypes.ContextTransferDataType = data
        -- check to see if we're expecting a transfer
        local transferRecord: commonTypes.OwnerTransferDataType =
            self.humanoidUploadTransferInProgress[contextXfer.character]
        if transferRecord ~= nil then
            -- Check to see if we're expecting it from this Client
            if transferRecord.oldOwner == contextXfer.oldOwner then
                self.humanoidUploadTransferInProgress[contextXfer.character] = nil
                commonFuncs.SetState(contextXfer.character, contextXfer.currentState)
                if transferRecord.newOwner == nil then
                    -- server owned
                    local humanoid: Humanoid? =
                        contextXfer.character:FindFirstChildOfClass("Humanoid")
                    if humanoid ~= nil and humanoid.Parent ~= nil then
                        local localHumanoidStateMachineEventInstance: Instance =
                            game.ServerScriptService
                                :WaitForChild("StateMachineSystemServer")
                                :WaitForChild("LocalHumanoidStateMachineEvent")
                        local localHumanoidStateMachineEvent: BindableEvent = nil

                        if localHumanoidStateMachineEventInstance:IsA("BindableEvent") then
                            localHumanoidStateMachineEvent = localHumanoidStateMachineEventInstance
                        end

                        if localHumanoidStateMachineEvent == nil then
                            print(
                                "Error !! Expecting LocalHumanoidStateMachineEvent under the character model"
                            )
                        end
                        local record: commonTypes.RunningStateMachineRecord? =
                            commonFuncs.ContinueStateMachine(
                                contextXfer.character,
                                humanoid,
                                self.ccsmDefinition,
                                self.localEvent,
                                contextXfer.currentState,
                                contextXfer.context
                            )
                        self.runningStateMachines[contextXfer.character] = record
                    end

                    self.trackedOwnershipList[contextXfer.character] = "server"
                else
                    -- new client owner, send it to them
                    local newOwner = transferRecord.newOwner
                    local newTransferRecord: commonTypes.OwnerContextTransferDataType = {
                        oldOwner = transferRecord.oldOwner,
                        newOwner = newOwner,
                        currentState = contextXfer.currentState,
                        context = contextXfer.context,
                    }
                    self.humanoidStartupTransferInProgress[contextXfer.character] =
                        newTransferRecord

                    self.trackedOwnershipList[contextXfer.character] = newOwner
                    humanoidStateMachineUpdateEvent:FireClient(
                        newOwner,
                        "ContextDataHumanoidSM",
                        contextXfer
                    )
                end
            else
                warn("Unexpected context recieved from", contextXfer.oldOwner)
            end
        end
    elseif eventType == "ConfirmStartHumanoidSM" then
        if data ~= nil then
            local character: Model = data
            local startupRecord: commonTypes.OwnerContextTransferDataType? =
                self.humanoidStartupTransferInProgress[character]
            if startupRecord == nil then
                -- error
                if debug then
                    warn(
                        "Startup confirmation from unexpected client",
                        character,
                        self.humanoidStartupTransferInProgress
                    )
                end
            else
                -- check to verify that this client is supposed to own this
                if startupRecord.newOwner == player then
                    -- clear record
                    self.humanoidStartupTransferInProgress[character] = nil
                    self.trackedOwnershipList[character] = player
                else
                    warn(
                        "Unexpected client attempting to start up state machine",
                        player,
                        character
                    )
                end
            end
        end
    end
end

function ServerMonitor:onServerLocalHumanoidStateMachineEvent(
    characterInstance: Model,
    humanoidInstance: Humanoid,
    eventType: string,
    data: any
)
    if characterInstance == nil or humanoidInstance == nil or humanoidInstance.Parent == nil then
        return
    end
    if eventType == "ChangeStateSM" then
        -- changes to character state
        print("local server state change")
        local changeStateData: commonTypes.ChangeStateSMRecord = data
        commonFuncs.SetState(changeStateData.character, changeStateData.newState)
    elseif eventType == "RegisterHumanoidSM" then
        -- New character starting up --

        -- start the state machine
        local record: commonTypes.RunningStateMachineRecord? = commonFuncs.StartStateMachine(
            characterInstance,
            humanoidInstance,
            self.ccsmDefinition,
            self.localEvent,
            true
        )
        if record ~= nil then
            self.runningStateMachines[characterInstance] = record
            self.trackedOwnershipList[characterInstance] = "server"
        end
    end
end

function ServerMonitor:requestOwnershipTransfer(
    character: Model,
    newHost: Player?,
    oldHost: Player?
)
    -- Check to see if a transfer has already been requested
    local transferRecord: commonTypes.OwnerTransferDataType =
        self.humanoidUploadTransferInProgress[character]
    if transferRecord == nil then
        -- If its not currently being tranferred, record the transfer and request the context information
        -- from the current owner
        transferRecord = {
            oldOwner = oldHost,
            newOwner = newHost,
        }
        self.humanoidUploadTransferInProgress[character] = transferRecord
        if oldHost == nil then
        else
            humanoidStateMachineUpdateEvent:FireClient(oldHost, "TransferHumanoidSM", character)
        end
    else
        if transferRecord.newOwner ~= newHost then
            -- Ownership change was requested, but the current owner is not the previously recored one
            transferRecord.newOwner = newHost
        end
    end
end

function ServerMonitor:pollForNetworkOwnership()
    for characterModel: Model, p: Player? | string in pairs(self.trackedOwnershipList) do
        if characterModel ~= nil and characterModel.PrimaryPart ~= nil then
            local isInWorkspace = characterModel:FindFirstAncestorWhichIsA("Workspace")
            if not isInWorkspace then
                continue
            end
            local torso = characterModel:FindFirstChild("UpperTorso")
            if not characterModel.PrimaryPart or not torso then
                continue
            end
            local currentOwnerInstance: Instance = characterModel.PrimaryPart:GetNetworkOwner()
            local oldOwner: Player?
            if typeof(p) == "string" then
                oldOwner = nil
            else
                oldOwner = p
            end

            if currentOwnerInstance ~= oldOwner then
                -- check to see if there is already a request pending
                if self.humanoidUploadTransferInProgress[characterModel] == nil then
                    if oldOwner == nil then
                        -- Need to shut down server owned SM and transfer it to a client
                        if debug then
                            print(
                                "Owner changed from server to",
                                currentOwnerInstance.Name,
                                characterModel
                            )
                        end
                        local record: commonTypes.RunningStateMachineRecord? =
                            self.runningStateMachines[characterModel]
                        if record == nil then
                            if self.humanoidStartupTransferInProgress[characterModel] == nil then
                                -- need to transfer a state machine from the server, but the server doesn't have a record of it
                                -- and there is no record of it currently being transfered
                                warn(
                                    "Unable to find currently running state machine for",
                                    characterModel,
                                    self.runningStateMachines
                                )
                            end
                        else
                            if currentOwnerInstance:IsA("Player") then
                                -- record startup request for client
                                local xferRequest: commonTypes.OwnerContextTransferDataType = {
                                    oldOwner = nil,
                                    newOwner = currentOwnerInstance,
                                    currentState = record.humanoid:GetState().Name,
                                    context = record.CCSM.context,
                                }
                                self.humanoidStartupTransferInProgress[characterModel] = xferRequest

                                -- copy context and shut down local SM
                                local contextXfer: commonTypes.ContextTransferDataType = {
                                    oldOwner = nil,
                                    character = characterModel,
                                    currentState = record.humanoid:GetState().Name,
                                    context = record.CCSM.context,
                                }

                                humanoidStateMachineUpdateEvent:FireClient(
                                    currentOwnerInstance,
                                    "ContextDataHumanoidSM",
                                    contextXfer
                                )
                                commonFuncs.StopStateMachine(record)
                                self.runningStateMachines[characterModel] = nil
                                -- Stop HumanoidMonitor
                            else
                                warn(
                                    "New State Machine owner is not a player or nil",
                                    currentOwnerInstance
                                )
                            end
                        end
                    else
                        if oldOwner:IsA("Player") then
                            local p: Player = oldOwner
                            -- Need to shut down client owned SM and transfer it to another owner
                            if currentOwnerInstance == nil then
                                if debug then
                                    print("Owner changed from", oldOwner.Name, "to server.")
                                end
                                self:requestOwnershipTransfer(characterModel, nil, oldOwner)
                            elseif currentOwnerInstance:IsA("Player") then
                                if debug then
                                    print(
                                        "Owner changed from",
                                        oldOwner.Name,
                                        "to ",
                                        currentOwnerInstance.Name
                                    )
                                end
                                self:requestOwnershipTransfer(
                                    characterModel,
                                    currentOwnerInstance,
                                    oldOwner
                                )
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

local function onCharacterAdded(character: Model)
    character.ChildAdded:Connect(function(child: Instance)
        if child.Name == "HumanoidRootPart" then
            sensorAndControllerLoader.AddSensorsUnderRootPart(character)
        elseif child.Name == "UpperTorso" then
            sensorAndControllerLoader.AddSensorsUnderTorso(character)
        end
    end)

    local humanoid = character:WaitForChild("Humanoid")
    if humanoid == nil or humanoid.Parent == nil then
        return
    end
    local humanoidRootPart = humanoid.Parent:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart ~= nil then
        sensorAndControllerLoader.LoadSensorsAndPhysicsController(character)
    end
    humanoid:GetPropertyChangedSignal("HipHeight"):Connect(function(dt)
        if sensorAndControllerLoader ~= nil then
            local runningController =
                sensorAndControllerLoader.GetControllerByName(character, "RunningController")
            if runningController ~= nil then
                runningController.GroundOffset = humanoid.HipHeight
            end
            local gettingUpController =
                sensorAndControllerLoader.GetControllerByName(character, "GettingUpController")
            if gettingUpController ~= nil then
                gettingUpController.GroundOffset = humanoid.HipHeight
            end
        end
    end)
end

function ServerMonitor:onPlayerAdded(player: Player)
    if player.Character then
        onCharacterAdded(player.Character)
    end
    player.CharacterAdded:Connect(function(character: Model)
        onCharacterAdded(player.Character)
    end)
    player.CharacterRemoving:Connect(function(character: Model)
        local record = self.runningStateMachines[character]
        if record then
            commonFuncs.StopStateMachine(record)
            self.runningStateMachines[character] = nil
            self.trackedOwnershipList[character] = nil
        end
        self.trackedOwnershipList[character] = nil
    end)
end

function ServerMonitor.new(event: BindableEvent, ccsmDef: any)
    local self = {
        ccsmDefinition = ccsmDef,
        localEvent = event,
        runningStateMachines = {},
        humanoidUploadTransferInProgress = {},
        humanoidStartupTransferInProgress = {},
        trackedOwnershipList = {},
    }

    setmetatable(self, ServerMonitor)
    playersService.PlayerAdded:Connect(function(player)
        self:onPlayerAdded(player)
    end)
    for _, player in playersService:GetPlayers() do
        self:onPlayerAdded(player)
    end
    return self
end

return ServerMonitor
