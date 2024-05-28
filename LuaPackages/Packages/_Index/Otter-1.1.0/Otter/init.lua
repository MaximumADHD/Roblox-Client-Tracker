--!strict
local createGroupMotor = require(script.createGroupMotor)
local createSingleMotor = require(script.createSingleMotor)
local spring = require(script.spring)
local instant = require(script.instant)
local types = require(script.types)

local Heartbeat = require(script.Heartbeat)

export type Goal<T> = types.Goal<T>
export type Motor<T, U> = types.Motor<T, U>
export type Unsubscribe = types.Unsubscribe
export type MotorCallback<T> = types.MotorCallback<T>

export type SingleMotor = createSingleMotor.SingleMotor
export type GroupMotor = createGroupMotor.GroupMotor

export type SpringOptions = spring.SpringOptions

return {
	createGroupMotor = createGroupMotor,
	createSingleMotor = createSingleMotor,
	spring = spring,
	instant = instant,
	__devHeartbeat = Heartbeat,
}
