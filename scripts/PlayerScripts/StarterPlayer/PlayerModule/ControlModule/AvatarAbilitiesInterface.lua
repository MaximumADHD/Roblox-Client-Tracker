local Players = game:GetService("Players")
local CommonUtils = require(script.Parent.Parent:WaitForChild("CommonUtils"))
local FlagUtil = CommonUtils.get("FlagUtil")
local FFlagUserPlayerScriptsCCLIntegrationD = FlagUtil.getUserFlag("UserPlayerScriptsCCLIntegrationD")
local FFlagUserPlayerScriptsPlayerControlState = FlagUtil.getUserFlag("UserPlayerScriptsPlayerControlState2")
local FFlagUserPlayerScriptsTaskDeferSimulation = FlagUtil.getUserFlag("UserPlayerScriptsTaskDeferSimulation")
local FFlagUserPlayerScriptsImportWaitForAbilitiesFolder = FlagUtil.getUserFlag("UserPlayerScriptsImportWaitForAbilitiesFolder")

-- The following code is copied from the AvatarAbilities module, but has not yet been released.
-- We can delete this code once the module is released and we can require it directly.
local waitForAbilitiesFolder: (character: Model, timeout: number?) -> Folder?
if not FFlagUserPlayerScriptsImportWaitForAbilitiesFolder then
    --[[
        WaitForChild for several names at once: returns the first of `names` to exist under `parent`, or
        nil if `timeout` elapses first. Waits indefinitely when `timeout` is nil, as WaitForChild does.

        A name that is already present wins immediately and without yielding, checked in `names` order.
        Past that the race is settled by arrival, so `names` order carries no priority.

        Matching is by name only, like WaitForChild; the caller checks the class of whatever comes back.
    ]]
    local function waitForChildren(parent: Instance, names: { string }, timeout: number?): Instance?
        -- Without this an empty list would park forever on a nil timeout, waiting for nothing.
        if #names == 0 then
            return nil
        end

        for _, name in names do
            local existing = parent:FindFirstChild(name)
            if existing then
                return existing
            end
        end

        local thisThread = coroutine.running()
        local result: Instance? = nil
        local settled = false

        -- The ChildAdded connection and the timeout both race to complete this function, and exactly one
        -- may: `settled` makes whichever loses a no-op, so the thread is never resumed twice.
        local function settle(child: Instance?)
            if settled then
                return
            end
            settled = true
            result = child
            -- Resume synchronously so the woken thread can clean up the connection and timer before this callback returns.
            -- Use task.spawn() instead of coroutine.resume() to allow the task scheduler to handle errors with
            -- proper stack attribution. coroutine.resume() would swallow them into a return value nobody reads,
            -- silencing any error in the whole resumed continuation.
            task.spawn(thisThread)
        end

        local connection = parent.ChildAdded:Connect(function(child: Instance)
            if table.find(names, child.Name) then
                settle(child)
            end
        end)
        local timerThread: thread? = nil
        if timeout then
            timerThread = task.delay(timeout, function()
                settle(nil)
            end)
        end

        -- Wait with coroutine.yield() not task.wait(), which would hand the task scheduler
        -- sole ownership of the resume and make the synchronous task.spawn() on it an error.
        coroutine.yield()

        connection:Disconnect()
        -- "suspended" means the timer is still pending and ours to cancel. If the timer is what woke us it
        -- is "running" instead, since we are inside it, and a thread cannot cancel itself.
        if timerThread and coroutine.status(timerThread) == "suspended" then
            task.cancel(timerThread)
        end

        return result
    end

    --[[
        Returns the character's Abilities folder, waiting up to `timeout` seconds for it to replicate, or
        indefinitely when `timeout` is nil. Returns nil if the timeout expires first.
        YIELDS — see getAbilitiesFolder for a non-blocking snapshot.
    ]]
    waitForAbilitiesFolder = function(character: Model, timeout: number?)
        if not character then
            return nil
        end

        -- Provide one timeout budget across both lookups.
        local deadline = if timeout then time() + timeout else nil
        local function getRemainingTime(): number?
            return if deadline then math.max(deadline - time(), 0) else nil
        end

        -- Either layout is still in play and either piece may still be replicating:
        -- the Abilities folder can land directly under the character, or under an AbilityManagerActor.
        local found = waitForChildren(character, { "AbilityManagerActor", "Abilities" }, getRemainingTime())
        if not found then
            return nil
        end
        if found.Name == "Abilities" then
            return if found:IsA("Folder") then found else nil
        end

        -- We've already found the AbilityManagerActor, so wait for its Abilities folder.
        local remainingTime = getRemainingTime()
        local folder = if remainingTime
            then found:WaitForChild("Abilities", remainingTime)
            else found:WaitForChild("Abilities")
        if folder and folder:IsA("Folder") then
            return folder
        end

        return nil
    end
end

if FFlagUserPlayerScriptsCCLIntegrationD then
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

    local function createAbilitiesByInputNameTable(folder)
        local byInputName = {}
        for _, child in folder:GetChildren() do
            if child:IsA("Configuration") then
                local inputName = child:GetAttribute("InputName")
                if inputName then
                    byInputName[inputName] = child
                end
            end
        end
        return byInputName
    end

    local function notifyAbilitiesChanged(folder, callback)
        local addedConn = folder.ChildAdded:Connect(function(child)
            if child:IsA("Configuration") then
                callback(child, "added")
            end
        end)
        local removedConn = folder.ChildRemoved:Connect(function(child)
            if child:IsA("Configuration") then
                callback(child, "removed")
            end
        end)
        return function()
            addedConn:Disconnect()
            removedConn:Disconnect()
        end
    end

    function AvatarAbilitiesInterface._new(player)
        local self = setmetatable({}, AvatarAbilitiesInterface)

        self._player = player
        self._data = {}
        self._character = nil
        self._humanoid = nil
        self._enabledChangedEvent = Instance.new("BindableEvent")
        self._abilitiesChangedEvent = Instance.new("BindableEvent")
        self._evaluateStateMachineChangedConnection = nil
        self._abilityChangedEvents = {}
        self._abilityChangedConnections = {}

        self._abilitiesByInputName = {}
        self._disconnectAbilitiesChanged = nil

        if FFlagUserPlayerScriptsPlayerControlState and not FFlagUserPlayerScriptsTaskDeferSimulation then
            task.spawn(function()
                self._characterAddedConnection = player.CharacterAdded:Connect(function(character)
                    self:_onCharacterAdded(character)
                end)
            end)
        else
            self._characterAddedConnection = player.CharacterAdded:Connect(function(character)
                self:_onCharacterAdded(character)
            end)
        end

        if player.Character then
            self:_onCharacterAdded(player.Character)
        end

        return self
    end

    local AvatarAbilitiesModule

    function AvatarAbilitiesInterface._avatarAbilities()
        if not AvatarAbilitiesModule then
            local packages = game:GetService("ReplicatedStorage"):FindFirstChild("Packages")
            local avatarAbilitiesScriptModule = if packages then packages:FindFirstChild("AvatarAbilities") else nil
            AvatarAbilitiesModule = if avatarAbilitiesScriptModule then require(avatarAbilitiesScriptModule) else nil

            if not AvatarAbilitiesModule then
                AvatarAbilitiesModule = require("@rbx/AvatarAbilities")
            end
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
        local ability = self._abilitiesByInputName[abilityName]
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
        self._humanoid = nil
        self._character = newCharacter
        self._abilitiesByInputName = {}
        self._data = {}
        if self._disconnectAbilitiesChanged then
            self._disconnectAbilitiesChanged()
            self._disconnectAbilitiesChanged = nil
        end
        for _, connectionsByAbility in self._abilityChangedConnections do
            for _, connection in connectionsByAbility do
                connection:Disconnect()
            end
        end
        self._abilityChangedConnections = {}
        if self._evaluateStateMachineChangedConnection then
            self._evaluateStateMachineChangedConnection:Disconnect()
            self._evaluateStateMachineChangedConnection = nil
        end

        if not self._character then
            return
        end

        -- A newer _onCharacterAdded can land while this thread is parked.
        -- Capture the character this thread was spawned for and retire if a newer one arrives.
        local character = newCharacter
        local function isStale()
            return self._character ~= character
        end

        -- call a separate thread to continue construction while waiting for the abilities folder
        task.spawn(function()
            local folder: Folder?
            if FFlagUserPlayerScriptsImportWaitForAbilitiesFolder then
                folder = self._avatarAbilities().waitForAbilitiesFolder(character)
            else
                folder = waitForAbilitiesFolder(character)
            end
            if not folder or isStale() then return end

            self._humanoid = character:FindFirstChildOfClass("Humanoid")
            while not self._humanoid do
                character.ChildAdded:Wait()
                if isStale() then return end
                self._humanoid = character:FindFirstChildOfClass("Humanoid")
            end

            if self._evaluateStateMachineChangedConnection then
                self._evaluateStateMachineChangedConnection:Disconnect()
                self._evaluateStateMachineChangedConnection = nil
            end

            local function enabledChanged()
                if self._disconnectAbilitiesChanged then
                    self._disconnectAbilitiesChanged()
                    self._disconnectAbilitiesChanged = nil
                end

                if self:isEnabled() then
                    self._disconnectAbilitiesChanged = notifyAbilitiesChanged(folder, function(ability, event)
                        local inputName = ability:GetAttribute("InputName")
                        if not inputName then return end
                        if event == "added" then
                            self._abilitiesByInputName[inputName] = ability
                            -- A consumer can request an attribute signal before this ability replicates,
                            -- which leaves _hookUpAbilityChangedEvent with nothing to bind. Bind those
                            -- pending requests now: the getter hands back its cached event without
                            -- re-hooking, so arrival here is the only remaining chance to connect.
                            for attributeName, events in self._abilityChangedEvents do
                                if events[inputName] then
                                    self:_hookUpAbilityChangedEvent(inputName, attributeName)
                                end
                            end
                        elseif self._abilitiesByInputName[inputName] == ability then
                            -- A replacement can be added under the same InputName before the old
                            -- ability is destroyed, in which case the entry already points at the
                            -- replacement and clearing it would drop a live ability from the map.
                            self._abilitiesByInputName[inputName] = nil
                            -- Reparenting out of the folder does not sever these, so drop them here.
                            -- Reached only when the entry still pointed at this ability, so a
                            -- replacement's freshly bound connections are never disturbed.
                            for _, connectionsByAbility in self._abilityChangedConnections do
                                local connection = connectionsByAbility[inputName]
                                if connection then
                                    connection:Disconnect()
                                    connectionsByAbility[inputName] = nil
                                end
                            end
                        end
                        self._abilitiesChangedEvent:Fire()
                    end)

                    self._abilitiesByInputName = createAbilitiesByInputNameTable(folder)
                    self._abilitiesChangedEvent:Fire()

                    for attributeName, events in self._abilityChangedEvents do
                        for inputName, event in events do
                            event:Fire()
                            self:_hookUpAbilityChangedEvent(inputName, attributeName)
                        end
                    end
                end
                self._enabledChangedEvent:Fire()
            end

            self._evaluateStateMachineChangedConnection = self._humanoid:GetPropertyChangedSignal("EvaluateStateMachine"):Connect(function()
                enabledChanged()
            end)
            enabledChanged()
        end)
    end

    function AvatarAbilitiesInterface:isEnabled()
        return self._humanoid ~= nil and not self._humanoid.EvaluateStateMachine
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

    function AvatarAbilitiesInterface:GetAbilityAttribute(abilityName, attributeName, defaultValue)
        local ability = self._abilitiesByInputName[abilityName]
        if not ability then return defaultValue end
        local syncedState = ability:FindFirstChild("SyncedState")
        if not syncedState then return defaultValue end
        local value = syncedState:GetAttribute(attributeName)
        if value == nil then return defaultValue end
        return value
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
        return self:GetAbilityAttribute(abilityName, "Enabled", false)
    end

    function AvatarAbilitiesInterface:GetAbilityEnabledChangedSignal(abilityName)
        return self:GetAbilityAttributeChangedSignal(abilityName, "Enabled")
    end

    function AvatarAbilitiesInterface:GetAbilitySuspended(abilityName)
        return self:GetAbilityAttribute(abilityName, "Suspended", false)
    end

    function AvatarAbilitiesInterface:GetAbilitySuspendedChangedSignal(abilityName)
        return self:GetAbilityAttributeChangedSignal(abilityName, "Suspended")
    end

    function AvatarAbilitiesInterface:GetAbilityActive(abilityName)
        return self:GetAbilityAttribute(abilityName, "Active", false)
    end

    function AvatarAbilitiesInterface:GetAbilityActiveChangedSignal(abilityName)
        return self:GetAbilityAttributeChangedSignal(abilityName, "Active")
    end

    function AvatarAbilitiesInterface:GetAbilityValid(abilityName)
        return self:GetAbilityAttribute(abilityName, "IsValid", true)
    end

    function AvatarAbilitiesInterface:GetAbilityValidChangedSignal(abilityName)
        return self:GetAbilityAttributeChangedSignal(abilityName, "IsValid")
    end

    function AvatarAbilitiesInterface:GetAbilities()
        local abilities = {}
        for inputName in self._abilitiesByInputName do
            table.insert(abilities, inputName)
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
        local ability = self._abilitiesByInputName[abilityName]
        if not ability then return defaultReturn end
        local actionSlotAttribute = ability:GetAttribute("ActionSlot")
        if not actionSlotAttribute then return defaultReturn end
        local actionSlot = tonumber(actionSlotAttribute)

        local customIconAttribute = ability:GetAttribute("CustomIcon")
        local customIconActiveAttribute = ability:GetAttribute("CustomIconActive")
        local customIconInvalidAttribute = ability:GetAttribute("CustomIconInvalid")

        return {
            Slot = actionSlot,
            ButtonAssetId = customIconAttribute,
            ButtonPressedAssetId = customIconActiveAttribute,
            ButtonInvalidAssetId = customIconInvalidAttribute,
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
        if self._disconnectAbilitiesChanged then
            self._disconnectAbilitiesChanged()
            self._disconnectAbilitiesChanged = nil
        end
        for _, connectionsByAbility in self._abilityChangedConnections do
            for _, connection in connectionsByAbility do
                connection:Disconnect()
            end
        end
        self._abilityChangedConnections = {}
    end

    return AvatarAbilitiesInterface

else -- FFlagUserPlayerScriptsCCLIntegrationD

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

end -- FFlagUserPlayerScriptsCCLIntegrationD
