-- Returns a reference to the _real_ task.delay function, to be used by RTL
-- internals where `enqueueTask` isn't quite aligned
return task.delay
