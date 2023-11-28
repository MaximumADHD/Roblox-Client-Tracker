local Compositor = game:GetService("ReplicatedStorage").RobloxCharacterPackages.MotionCompositor
local Layer = require(Compositor.Base.Layer)
local Types = require(Compositor.Base.types)
local Transition = require(Compositor.Util.Transition)

export type LinkData = {
    weight: number | (params: Types.Map?) -> number
}

export type RandomSequenceLayer = Types.ExtendLayer<{
    __index: number,
    __trannsition: Transition.Transition?,
    __transitionToIndex: (RandomSequenceLayer, index: number, gameTime: number) -> (),
    __computeRandomIndex: (RandomSequenceLayer) -> number,
}>

local RandomSequenceLayer = Layer:extend("RandomSequenceLayer")

RandomSequenceLayer.defaultProps = {
    transitionDurationSeconds = 0.1,
    speed = 1.0,
    manualTransitionFn = { function(currentChild) return currentChild.hasLooped end },
}

RandomSequenceLayer.defaultLinkData = {
    weight = 1,
}

function RandomSequenceLayer:init()
    self:__resetInternal()
end

function RandomSequenceLayer:__resetInternal()
    self.__transition = nil
    self.__index = self:__computeRandomIndex()
end

local function getWeight(weight, params)
    if typeof(weight) == "function" then
        return weight(params)
    end
    return weight
end

function RandomSequenceLayer:__computeRandomIndex()
    local randomIndex = 0
    local sumWeight = 0
    for i, child in ipairs(self.children) do
        local prevSumWeight = sumWeight
        sumWeight += math.max(0, getWeight(child.linkData.weight, self.context.params))
        local roll = math.random() * sumWeight
        if roll >= prevSumWeight then
            randomIndex = i
        end
    end
    return randomIndex
end

function RandomSequenceLayer:update(dt: number)
    local speed = self.props.speed
    if self.__transition ~= nil then
        self.__transition:update(speed * dt)
        if self.__transition:isFinished() then
            self.__transition = nil
        end
        return
    end

    if self.__index <= #self.children then
        local child = self.children[self.__index]
        child:update(speed * dt)
        local shouldTransition = self.props.manualTransitionFn[1](child)
        if shouldTransition then
            local newIndex = self:__computeRandomIndex()
            if newIndex ~= self.__index then
                self:__transitionToIndex(newIndex)
            end
        end
    end
end

function RandomSequenceLayer:evaluate(mask: AnimationMask)
    if #self.children < 1 then
        return mask:CreateRestPose()
    end
    if self.__transition ~= nil then
        return self.__transition:evaluate(mask)
    end
    return self.children[self.__index]:evaluate(mask)
end

function RandomSequenceLayer:__transitionToIndex(newIndex)
    if newIndex ~= self.__index then
        local oldLayer= self.children[self.__index]
        local newLayer= self.children[newIndex]
        self.__transition = Transition.CrossFade.new(
            self.props.transitionDurationSeconds,
            oldLayer,
            newLayer,
            function(t) return t end
        )
        self.__index = newIndex
        newLayer:reset()
        newLayer:update(0)
    end
end

return RandomSequenceLayer