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
  GETTABLEKS R2 R3 K8 ["getFFlagNotificationsMarkAllAsRead"]
  CALL R1 1 1
  NEWTABLE R2 0 20
  LOADK R3 K9 ["CampaignFilledNeutral"]
  LOADK R4 K10 ["CheckFilledPositive"]
  LOADK R5 K11 ["CreateFilledEmphasis"]
  LOADK R6 K12 ["CreateFilledNeutral"]
  LOADK R7 K13 ["CreateFilledWarning"]
  LOADK R8 K14 ["EditOffFilledNegative"]
  LOADK R9 K15 ["ErrorFilledError"]
  LOADK R10 K16 ["HappyFilledNeutral"]
  LOADK R11 K17 ["NotificationBell"]
  LOADK R12 K18 ["NotificationSettings"]
  LOADK R13 K19 ["PlayArrowFilledEmphasis"]
  LOADK R14 K20 ["PlayArrowFilledNeutral"]
  LOADK R15 K21 ["PlayArrowFilledWarning"]
  LOADK R16 K22 ["PlayDisabledFilledNegative"]
  LOADK R17 K23 ["TranslateFilledNeutral"]
  LOADK R18 K24 ["UpdateFilledEmphasis"]
  SETLIST R2 R3 16 [1]
  LOADK R3 K25 ["UpdateFilledNegative"]
  LOADK R4 K26 ["UpdateFilledPositive"]
  LOADK R5 K27 ["UpdateFilledWarning"]
  LOADK R6 K28 ["WarningFilledWarning"]
  SETLIST R2 R3 4 [17]
  MOVE R3 R1
  CALL R3 0 1
  JUMPIFNOT R3 [+7]
  FASTCALL2K TABLE_INSERT R2 K29 [+5]
  MOVE R4 R2
  LOADK R5 K29 ["ThreeDots"]
  GETIMPORT R3 K32 [table.insert]
  CALL R3 2 0
  RETURN R2 1
