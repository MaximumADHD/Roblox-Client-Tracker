-- LookAt - V0.01

--------------------------------------------------------------------------------

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Utils = ReplicatedStorage.AnimateDependencies.Utils
local Util = require(Utils.Util)
local AnimationLibrary = ReplicatedStorage.AnimateDependencies.AnimationLibrary
local Layer = require(AnimationLibrary.Base.Layer)
local Types = require(AnimationLibrary.Base.types)
local SmoothDamp = require(Utils.SmoothDamp)
--local Gizmos = require(Utils.Gizmos)

type LookAt = Types.ExtendLayer<{ __accumulatedTime: number }>
local LookAt: LookAt = Layer:extend("LookAt")

LookAt.defaultProps = {
    lookAtPosition = Vector3.zero,
    lookWeight = 0,
    smoothTime = 0.3,
}

local ENABLED = true

-- Constants
local bodyRange = NumberRange.new(0.1, 0.5)

---------------------------------------------------------------------------------

-- Computes the interest weight for a given target point from a CFrame and a
-- clamp parameter indicating how much we're allowed to deviate in a conical volume.
local function GetInterestWeight(hrp : CFrame, targetPos : Vector3, range : NumberRange)
    local baseFwd = hrp.LookVector
    local targetFwd = targetPos-hrp.Position

    local angle = baseFwd:Angle(targetFwd)
    local dot = 1 - (angle/math.pi)

    local weight1 = range.Max>0 and Util.clamp01(1-((range.Max-dot)/(1-dot))) or 1
    local weight2 = Util.clamp01(Util.remap(dot, range.Min, range.Max, 0, 1))
    weight2 = Util.smoothStep(weight2)

    local ans = weight1*weight2
    return ans
end

---------------------------------------------------------------------------------

function LookAt:onInit()
    self.__accumulatedTime = 0
    self.__lookAtSmoother = SmoothDamp.new(self.props.smoothTime)
    self.__weightSmoother = SmoothDamp.new(self.props.smoothTime)
    self.__smoothLookAt = Vector3.zero
    self.__smoothWeight = 0

    self.character = self.context.character :: Model
    self.hrp = self.character:WaitForChild("HumanoidRootPart", 60)
end

function LookAt:onUpdate(dt: number)
    self.dt = dt
    self.__accumulatedTime += dt

    if self.props.lookAtPosition ~= nil then
        self.__smoothLookAt = self.__lookAtSmoother:update(self.props.lookAtPosition, dt)
    end
    
    self.__smoothWeight = self.__weightSmoother:update(self.props.lookAtPosition and self.props.lookWeight or 0, dt)

    if #self.children == 1 then
        self.children[1]:update(dt)
    end
end

function LookAt:onEvaluate(mask)
    local pose = if #self.children == 1
        then self.children[1]:evaluate(mask)
        else mask:CreateRestPose()

    if not ENABLED or self.__smoothWeight <= 0.0001 then
        return pose
    end

    local interestWeight = GetInterestWeight(self.hrp.CFrame, self.__smoothLookAt, bodyRange)
    if interestWeight > 0 then
        local ikParams = {
            Mode = Enum.IKControlType.LookAt,
            EndEffector = "Head",
            ChainRoot = "UpperTorso",
            Target = CFrame.new(self.__smoothLookAt),
    
            Weight = self.__smoothWeight * interestWeight,
            PoleWeight = 0,
            Enabled = true,
        }
        pose:SolveIk(ikParams)
    end

    return pose
end

function LookAt:__resetInternal()
    self:init()
end

return LookAt :: Types.Layer
