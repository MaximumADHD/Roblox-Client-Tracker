MAIN:
  PREPVARARGS 0
  NEWTABLE R0 0 18
  LOADK R1 K0 ["CampaignFilledNeutral"]
  LOADK R2 K1 ["CheckFilledPositive"]
  LOADK R3 K2 ["CreateFilledEmphasis"]
  LOADK R4 K3 ["CreateFilledWarning"]
  LOADK R5 K4 ["EditOffFilledNegative"]
  LOADK R6 K5 ["ErrorFilledError"]
  LOADK R7 K6 ["HappyFilledNeutral"]
  LOADK R8 K7 ["NotificationBell"]
  LOADK R9 K8 ["NotificationSettings"]
  LOADK R10 K9 ["PlayArrowFilledEmphasis"]
  LOADK R11 K10 ["PlayArrowFilledWarning"]
  LOADK R12 K11 ["PlayDisabledFilledNegative"]
  LOADK R13 K12 ["TranslateFilledNeutral"]
  LOADK R14 K13 ["UpdateFilledEmphasis"]
  LOADK R15 K14 ["UpdateFilledNegative"]
  LOADK R16 K15 ["UpdateFilledPositive"]
  SETLIST R0 R1 16 [1]
  LOADK R1 K16 ["UpdateFilledWarning"]
  LOADK R2 K17 ["WarningFilledWarning"]
  SETLIST R0 R1 2 [17]
  RETURN R0 1
