MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Collab8766_LogCollabSearchItemClickedEventV3"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+36]
  DUPTABLE R1 K10 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
  LOADK R2 K11 ["CollaboratorSearchItemClicked"]
  SETTABLEKS R2 R1 K4 ["eventName"]
  NEWTABLE R2 0 2
  LOADK R3 K12 ["EventIngest"]
  LOADK R4 K13 ["Points"]
  SETLIST R2 R3 2 [1]
  SETTABLEKS R2 R1 K5 ["backends"]
  GETIMPORT R2 K1 [game]
  LOADK R4 K14 ["CollaboratorSearchItemClickedEventThrottleHundrethsPercent"]
  NAMECALL R2 R2 K15 ["GetFastInt"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K6 ["throttlingPercentage"]
  NEWTABLE R2 0 3
  LOADN R3 25
  LOADN R4 7
  LOADN R5 1
  SETLIST R2 R3 3 [1]
  SETTABLEKS R2 R1 K7 ["lastUpdated"]
  LOADK R2 K16 ["Reports when an item in the collaborator search dropdown is clicked, including: 
	- details about the user or group added
	- if the user was a friend
	- and the time/keystrokes required to search for the item."]
  SETTABLEKS R2 R1 K8 ["description"]
  LOADK R2 K17 ["https://roblox.atlassian.net/wiki/x/BwNG3Q"]
  SETTABLEKS R2 R1 K9 ["links"]
  RETURN R1 1
  RETURN R0 0
