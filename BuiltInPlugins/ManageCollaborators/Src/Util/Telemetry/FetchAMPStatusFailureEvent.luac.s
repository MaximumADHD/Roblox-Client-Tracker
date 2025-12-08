MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UpsellCollabSafety2"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+35]
  DUPTABLE R1 K10 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
  LOADK R2 K11 ["FetchAMPStatusFailure"]
  SETTABLEKS R2 R1 K4 ["eventName"]
  NEWTABLE R2 0 1
  LOADK R3 K12 ["Points"]
  SETLIST R2 R3 1 [1]
  SETTABLEKS R2 R1 K5 ["backends"]
  GETIMPORT R2 K1 [game]
  LOADK R4 K13 ["FetchAMPStatusFailureThrottleHundrethsPercent"]
  NAMECALL R2 R2 K14 ["GetFastInt"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K6 ["throttlingPercentage"]
  NEWTABLE R2 0 3
  LOADN R3 11
  LOADN R4 11
  LOADN R5 25
  SETLIST R2 R3 3 [1]
  SETTABLEKS R2 R1 K7 ["lastUpdated"]
  LOADK R2 K15 ["Reports failures when fetching AMP status for Age Verification and Collaboration Setting including:
	- the URL that was requested
	- status code (HTTP response code, or -1 for network failures)
	- error details (response body, decode errors, or exception messages)"]
  SETTABLEKS R2 R1 K8 ["description"]
  LOADK R2 K16 [""]
  SETTABLEKS R2 R1 K9 ["links"]
  RETURN R1 1
  NEWTABLE R1 0 0
  RETURN R1 1
