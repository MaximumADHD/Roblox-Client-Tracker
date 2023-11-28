local BaseCharacterSensor = require(script:WaitForChild("BaseCharacterSensor"))
local RunService: RunService = game:FindService("RunService")

local CharecterSensors = {}
CharecterSensors.__index = CharecterSensors
CharecterSensors.name = script.Name

local SensorNames = {
    "AutoJumpSensor",
}

local SensorModules = {}
for _, sensorName in pairs(SensorNames) do
    local sensorModule = script:WaitForChild(sensorName)
    if sensorModule:IsA("ModuleScript") then
        SensorModules[sensorName] = require(sensorModule)
    end
end

local function newCharactorSensors()
    local sensors = {}
    for _, sensorModule in SensorModules do
        local sensor = sensorModule.new()
        table.insert(sensors, sensor)
    end
    return sensors
end

function CharecterSensors:OnStepped(ccsm: any, humanoid: Humanoid, dt: number)
    for _, sensor: BaseCharacterSensor in self.runningSensors do
        sensor:OnStepped(ccsm, humanoid, dt)
    end
end

function CharecterSensors.new()
    local self = {
        runningSensors = newCharactorSensors(),
    }
    setmetatable(self, CharecterSensors)
    return self
end

return CharecterSensors
