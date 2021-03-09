local HttpSession = {}

local sessionId = 0

function HttpSession.currentSession()
	return sessionId
end

function HttpSession.startNewSession()
	sessionId = sessionId + 1
end

return HttpSession
