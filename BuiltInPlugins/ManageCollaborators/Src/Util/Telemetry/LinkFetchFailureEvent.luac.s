MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Collab9119_LogLinkFetchFailures"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+35]
  DUPTABLE R1 K10 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
  LOADK R2 K11 ["LinkFetchFailure"]
  SETTABLEKS R2 R1 K4 ["eventName"]
  NEWTABLE R2 0 1
  LOADK R3 K12 ["Points"]
  SETLIST R2 R3 1 [1]
  SETTABLEKS R2 R1 K5 ["backends"]
  GETIMPORT R2 K1 [game]
  LOADK R4 K13 ["LinkFetchFailuresThrottleHundrethsPercent"]
  NAMECALL R2 R2 K14 ["GetFastInt"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K6 ["throttlingPercentage"]
  NEWTABLE R2 0 3
  LOADN R3 25
  LOADN R4 8
  LOADN R5 26
  SETLIST R2 R3 3 [1]
  SETTABLEKS R2 R1 K7 ["lastUpdated"]
  LOADK R2 K15 ["Reports failures when fetching Studio link requests, including:
	- the URL that was requested
	- status code (HTTP response code, or -1 for network failures)
	- error details (response body, decode errors, or exception messages)
	- the type of link being fetched (edit or teamTest)
	- the request method (POST)"]
  SETTABLEKS R2 R1 K8 ["description"]
  LOADK R2 K16 ["https://roblox.atlassian.net/wiki/x/DQFj3"]
  SETTABLEKS R2 R1 K9 ["links"]
  RETURN R1 1
  RETURN R0 0
