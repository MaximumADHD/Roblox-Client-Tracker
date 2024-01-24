MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K6 ["Util"]
  GETTABLEKS R3 R4 K7 ["SharedFlags"]
  GETTABLEKS R2 R3 K8 ["getFFlagCollaborationNeutralNotificationIcons"]
  CALL R1 1 1
  NEWTABLE R2 0 18
  LOADK R3 K9 ["CampaignFilledNeutral"]
  LOADK R4 K10 ["CheckFilledPositive"]
  LOADK R5 K11 ["CreateFilledEmphasis"]
  LOADK R6 K12 ["CreateFilledWarning"]
  LOADK R7 K13 ["EditOffFilledNegative"]
  LOADK R8 K14 ["ErrorFilledError"]
  LOADK R9 K15 ["HappyFilledNeutral"]
  LOADK R10 K16 ["NotificationBell"]
  LOADK R11 K17 ["NotificationSettings"]
  LOADK R12 K18 ["PlayArrowFilledEmphasis"]
  LOADK R13 K19 ["PlayArrowFilledWarning"]
  LOADK R14 K20 ["PlayDisabledFilledNegative"]
  LOADK R15 K21 ["TranslateFilledNeutral"]
  LOADK R16 K22 ["UpdateFilledEmphasis"]
  LOADK R17 K23 ["UpdateFilledNegative"]
  LOADK R18 K24 ["UpdateFilledPositive"]
  SETLIST R2 R3 16 [1]
  LOADK R3 K25 ["UpdateFilledWarning"]
  LOADK R4 K26 ["WarningFilledWarning"]
  SETLIST R2 R3 2 [17]
  MOVE R3 R1
  CALL R3 0 1
  JUMPIFNOT R3 [+14]
  FASTCALL2K TABLE_INSERT R2 K27 [+5]
  MOVE R4 R2
  LOADK R5 K27 ["CreateFilledNeutral"]
  GETIMPORT R3 K30 [table.insert]
  CALL R3 2 0
  FASTCALL2K TABLE_INSERT R2 K31 [+5]
  MOVE R4 R2
  LOADK R5 K31 ["PlayArrowFilledNeutral"]
  GETIMPORT R3 K30 [table.insert]
  CALL R3 2 0
  RETURN R2 1
