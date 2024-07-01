--!strict
local makeTimerImpl = require(script.makeTimerImpl)
local makeIntervalImpl = require(script.makeIntervalImpl)
local assign = require(script.Parent.Object.assign)

export type Timeout = makeTimerImpl.Timeout
export type Interval = makeIntervalImpl.Interval

return assign({}, makeTimerImpl(task.delay), makeIntervalImpl(task.delay))
