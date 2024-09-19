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
  GETTABLEKS R2 R3 K8 ["getFFlagNotificationEventVideoIcons"]
  CALL R1 1 1
  NEWTABLE R2 0 21
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
  LOADK R17 K23 ["ThreeDots"]
  LOADK R18 K24 ["TranslateFilledNeutral"]
  SETLIST R2 R3 16 [1]
  LOADK R3 K25 ["UpdateFilledEmphasis"]
  LOADK R4 K26 ["UpdateFilledNegative"]
  LOADK R5 K27 ["UpdateFilledPositive"]
  LOADK R6 K28 ["UpdateFilledWarning"]
  LOADK R7 K29 ["WarningFilledWarning"]
  SETLIST R2 R3 5 [17]
  MOVE R3 R1
  CALL R3 0 1
  JUMPIFNOT R3 [+21]
  FASTCALL2K TABLE_INSERT R2 K30 [+5]
  MOVE R4 R2
  LOADK R5 K30 ["EventFilledNeutral"]
  GETIMPORT R3 K33 [table.insert]
  CALL R3 2 0
  FASTCALL2K TABLE_INSERT R2 K34 [+5]
  MOVE R4 R2
  LOADK R5 K34 ["VideoCamFilledEmphasis"]
  GETIMPORT R3 K33 [table.insert]
  CALL R3 2 0
  FASTCALL2K TABLE_INSERT R2 K35 [+5]
  MOVE R4 R2
  LOADK R5 K35 ["VideoCamFilledNeutral"]
  GETIMPORT R3 K33 [table.insert]
  CALL R3 2 0
  RETURN R2 1
