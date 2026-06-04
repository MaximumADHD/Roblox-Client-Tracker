local Players = game:GetService("Players")
local CommonUtils = require(script.Parent.Parent:WaitForChild("CommonUtils"))
local FlagUtil = CommonUtils.get("FlagUtil")
local FFlagUserPlayerScriptsCCLIntegrationB = FlagUtil.getUserFlag("UserPlayerScriptsCCLIntegrationB")

if FFlagUserPlayerScriptsCCLIntegrationB then
    local AvatarAbilitiesInterface = {}
    AvatarAbilitiesInterface.__index = AvatarAbilitiesInterface

    local cachedInterfaces = {}

    Players.PlayerRemoving:Connect(function(player)
        -- Some code still references the interface slightly after a player is removed
        wait(1)
        local interface = cachedInterfaces[player.UserId]
        if interface then
            interface:destroy()
            cachedInterfaces[player.UserId] = nil
        end
    end)

    function AvatarAbilitiesInterface._new(player)
        local self = setmetatable({}, AvatarAbilitiesInterface)

        self._player = player
        self._data = {}
        self._abilityManagerActor = nil
        self._inputMap = {}
        self._character = nil
        self._humanoid = nil
        self._enabledChangedEvent = Instance.new("BindableEvent")
        self._abilitiesChangedEvent = Instance.new("BindableEvent")
        self._evaluateStateMachineChangedConnection = nil
        self._abilityChangedEvents = {} -- key = attribute name, value = another dictionary.  key = ability name  value = BindableEvent
        self._abilityChangedConnections = {} -- key = attribute name, value = another dictionary.  key = ability name  value = connection

        self._characterAddedConnection = player.CharacterAdded:Connect(function(character)
            self:_onCharacterAdded(character)
        end)

        if player.Character then
            self:_onCharacterAdded(player.Character)
        end

        return self
    end

    local AvatarAbilitiesModule

    function AvatarAbilitiesInterface._avatarAbilities()
        if not AvatarAbilitiesModule then
            AvatarAbilitiesModule = require("@rbx/AvatarAbilities")
        end
        return AvatarAbilitiesModule
    end

    function AvatarAbilitiesInterface.get(player)
        if not player or player.UserId == 0 then return nil end
        local interface = cachedInterfaces[player.UserId]
        if not interface then
            interface = AvatarAbilitiesInterface._new(player)
            cachedInterfaces[player.UserId] = interface
        end
        return interface
    end

    function AvatarAbilitiesInterface:_hookUpAbilityChangedEvent(abilityName, attributeName)
        local abilityList = self._inputMap[abilityName]
        if #abilityList < 1 then return end
        local ability = abilityList[1]
        if not ability then return end
        local syncedState = ability:FindFirstChild("SyncedState")
        if not syncedState then return end

        if not self._abilityChangedConnections[attributeName] then
            self._abilityChangedConnections[attributeName] = {}
        end

        if self._abilityChangedConnections[attributeName][abilityName] then
            self._abilityChangedConnections[attributeName][abilityName]:Disconnect()
            self._abilityChangedConnections[attributeName][abilityName] = nil
        end
        self._abilityChangedConnections[attributeName][abilityName] = syncedState:GetAttributeChangedSignal(attributeName):Connect(function()
            self._abilityChangedEvents[attributeName][abilityName]:Fire()
        end)
    end

    function AvatarAbilitiesInterface:_onCharacterAdded(newCharacter)
        self._abilityManagerActor = nil
        self._humanoid = nil
        self._character = newCharacter
        if self._evaluateStateMachineChangedConnection then
            self._evaluateStateMachineChangedConnection:Disconnect()
            self._evaluateStateMachineChangedConnection = nil
        end

        if self._character then
            self._abilityManagerActor = self._character:FindFirstChild("AbilityManagerActor")
            if self._abilityManagerActor then
                self._data = {}
                self._humanoid = self._character:FindFirstChildOfClass("Humanoid")
                while not self._humanoid do
                    self._character.ChildAdded:Wait()
                    self._humanoid = self._character:FindFirstChildOfClass("Humanoid")
                end

                if self._evaluateStateMachineChangedConnection then
                    self._evaluateStateMachineChangedConnection:Disconnect()
                    self._evaluateStateMachineChangedConnection = nil
                end
                local function enabledChanged()
                    if self:isEnabled() then
                        local inputMapChanged
                        self._inputMap, self._inputMapCleanup, inputMapChanged = self._avatarAbilities().createMaintainedInputMap(self._character)

                        if self._inputMapChangedConnection then
                            self._inputMapChangedConnection:Disconnect()
                            self._inputMapChangedConnection = nil
                        end
                        self._inputMapChangedConnection = inputMapChanged:Connect(function(inputName)
                            self._abilitiesChangedEvent:Fire()
                        end)
                        self._abilitiesChangedEvent:Fire()

                        for attributeName, events in self._abilityChangedEvents do
                            for abilityName, event in events do
                                event:Fire()
                                self:_hookUpAbilityChangedEvent(abilityName, attributeName)
                            end
                        end
                    end
                    self._enabledChangedEvent:Fire()
                end
                self._evaluateStateMachineChangedConnection = self._humanoid:GetPropertyChangedSignal("EvaluateStateMachine"):Connect(function()
                    enabledChanged()
                end)
                enabledChanged()
            end
        end
    end

    function AvatarAbilitiesInterface:isEnabled()
        return self._abilityManagerActor ~= nil and self._humanoid and not self._humanoid.EvaluateStateMachine
    end

    function AvatarAbilitiesInterface:GetEnabledChangedSignal()
        return self._enabledChangedEvent.Event
    end

    function AvatarAbilitiesInterface:SendInput(abilityName, value)
        if not self:isEnabled() then return end
        local oldVal = self._data[abilityName]
        if value ~= oldVal then
            self._data[abilityName] = value
            self._avatarAbilities().setAbilityManagerCommand(self._character, abilityName, value)
        end
    end

    function AvatarAbilitiesInterface:GetAbilityAttribute(abilityName, attributeName)
        local abilityList = self._inputMap[abilityName]
        if #abilityList < 1 then return end
        local ability = abilityList[1]
        if not ability then return false end
        local syncedState = ability:FindFirstChild("SyncedState")
        if not syncedState then return false end
        return not not syncedState:GetAttribute(attributeName)
    end

    function AvatarAbilitiesInterface:GetAbilityAttributeChangedSignal(abilityName, attributeName)
        if not self._abilityChangedEvents[attributeName] then
            self._abilityChangedEvents[attributeName] = {}
        end

        if self._abilityChangedEvents[attributeName][abilityName] then
            return self._abilityChangedEvents[attributeName][abilityName].Event
        end
        local event = Instance.new("BindableEvent")
        self._abilityChangedEvents[attributeName][abilityName] = event

        self:_hookUpAbilityChangedEvent(abilityName, attributeName)

        return event.Event
    end

    function AvatarAbilitiesInterface:GetAbilityEnabled(abilityName)
        return self:GetAbilityAttribute(abilityName, "Enabled")
    end

    function AvatarAbilitiesInterface:GetAbilityEnabledChangedSignal(abilityName)
        return self:GetAbilityAttributeChangedSignal(abilityName, "Enabled")
    end

    function AvatarAbilitiesInterface:GetAbilitySuspended(abilityName)
        return self:GetAbilityAttribute(abilityName, "Suspended")
    end

    function AvatarAbilitiesInterface:GetAbilitySuspendedChangedSignal(abilityName)
        return self:GetAbilityAttributeChangedSignal(abilityName, "Suspended")
    end

    function AvatarAbilitiesInterface:GetAbilityActive(abilityName)
        return self:GetAbilityAttribute(abilityName, "Active")
    end

    function AvatarAbilitiesInterface:GetAbilityActiveChangedSignal(abilityName)
        return self:GetAbilityAttributeChangedSignal(abilityName, "Active")
    end

    function AvatarAbilitiesInterface:GetAbilities()
        local abilities = {}
        for abilityName, config in self._inputMap do
            table.insert(abilities, abilityName)
        end
        return abilities
    end

    function AvatarAbilitiesInterface:GetAbilitiesChangedSignal()
        return self._abilitiesChangedEvent.Event
    end

    function AvatarAbilitiesInterface:GetAbilityConfig(abilityName)
        local defaultReturn = {
            Slot = -1,
        }
        local abilityList = self._inputMap[abilityName]
        if #abilityList < 1 then return defaultReturn end
        local ability = abilityList[1]
        if not ability then return defaultReturn end
        local actionSlotAttribute = ability:GetAttribute("ActionSlot")
        if not actionSlotAttribute then return defaultReturn end
        local actionSlot = tonumber(actionSlotAttribute)
        return {
            Slot = actionSlot,
        }
    end

    function AvatarAbilitiesInterface:destroy()
        if self._characterAddedConnection then
            self._characterAddedConnection:Disconnect()
            self._characterAddedConnection = nil
        end
        if self._evaluateStateMachineChangedConnection then
            self._evaluateStateMachineChangedConnection:Disconnect()
            self._evaluateStateMachineChangedConnection = nil
        end
        for _, connectionsByAbility in self._abilityChangedConnections do
            for _, connection in connectionsByAbility do
                connection:Disconnect()
            end
        end
        self._abilityChangedConnections = {}
    end

    return AvatarAbilitiesInterface

else -- FFlagUserPlayerScriptsCCLIntegrationB

    local Players = game:GetService("Players")

    local AvatarAbilitiesInterface = {}
    local AbilityManagerActor = nil
    local humanoid = nil
    local enabledChangedEvent = Instance.new("BindableEvent")
    local evaluateStateMachineChangedConnection = nil
    local initialized = false

    local function characterAdded(character)
        AbilityManagerActor = nil
        humanoid = nil
        if evaluateStateMachineChangedConnection then
            evaluateStateMachineChangedConnection:Disconnect()
            evaluateStateMachineChangedConnection = nil
        end

        if character then
            AbilityManagerActor = character:FindFirstChild("AbilityManagerActor")
            humanoid = character:FindFirstChildOfClass("Humanoid")
            while not humanoid do
                character.ChildAdded:wait()
                humanoid = character:FindFirstChildOfClass("Humanoid")
            end
            enabledChangedEvent:Fire()
            
            evaluateStateMachineChangedConnection = humanoid:GetPropertyChangedSignal("EvaluateStateMachine"):Connect(function()
                enabledChangedEvent:Fire()
            end)
        end
    end

    local function lazyInit()
        if initialized then
            return
        end
        initialized = true

        local player = Players.LocalPlayer
        if player then
            player.characterAdded:Connect(characterAdded)
            if player.Character then
                characterAdded(player.Character)
            end
        end
    end

    function AvatarAbilitiesInterface.isEnabled()
        lazyInit()
        return AbilityManagerActor ~= nil and humanoid and not humanoid.EvaluateStateMachine
    end

    function AvatarAbilitiesInterface.GetEnabledChangedSignal()
        lazyInit()
        return enabledChangedEvent.Event
    end

    return AvatarAbilitiesInterface

end -- FFlagUserPlayerScriptsCCLIntegrationB
