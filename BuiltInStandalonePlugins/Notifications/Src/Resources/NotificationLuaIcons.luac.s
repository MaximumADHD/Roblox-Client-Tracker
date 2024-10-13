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
  GETIMPORT R2 K4 [require]
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K6 ["Util"]
  GETTABLEKS R4 R5 K7 ["SharedFlags"]
  GETTABLEKS R3 R4 K9 ["getFFlagNotificationPersonAddIcons"]
  CALL R2 1 1
  NEWTABLE R3 0 21
  LOADK R4 K10 ["CampaignFilledNeutral"]
  LOADK R5 K11 ["CheckFilledPositive"]
  LOADK R6 K12 ["CreateFilledEmphasis"]
  LOADK R7 K13 ["CreateFilledNeutral"]
  LOADK R8 K14 ["CreateFilledWarning"]
  LOADK R9 K15 ["EditOffFilledNegative"]
  LOADK R10 K16 ["ErrorFilledError"]
  LOADK R11 K17 ["HappyFilledNeutral"]
  LOADK R12 K18 ["NotificationBell"]
  LOADK R13 K19 ["NotificationSettings"]
  LOADK R14 K20 ["PlayArrowFilledEmphasis"]
  LOADK R15 K21 ["PlayArrowFilledNeutral"]
  LOADK R16 K22 ["PlayArrowFilledWarning"]
  LOADK R17 K23 ["PlayDisabledFilledNegative"]
  LOADK R18 K24 ["ThreeDots"]
  LOADK R19 K25 ["TranslateFilledNeutral"]
  SETLIST R3 R4 16 [1]
  LOADK R4 K26 ["UpdateFilledEmphasis"]
  LOADK R5 K27 ["UpdateFilledNegative"]
  LOADK R6 K28 ["UpdateFilledPositive"]
  LOADK R7 K29 ["UpdateFilledWarning"]
  LOADK R8 K30 ["WarningFilledWarning"]
  SETLIST R3 R4 5 [17]
  MOVE R4 R1
  CALL R4 0 1
  JUMPIFNOT R4 [+21]
  FASTCALL2K TABLE_INSERT R3 K31 [+5]
  MOVE R5 R3
  LOADK R6 K31 ["EventFilledNeutral"]
  GETIMPORT R4 K34 [table.insert]
  CALL R4 2 0
  FASTCALL2K TABLE_INSERT R3 K35 [+5]
  MOVE R5 R3
  LOADK R6 K35 ["VideoCamFilledEmphasis"]
  GETIMPORT R4 K34 [table.insert]
  CALL R4 2 0
  FASTCALL2K TABLE_INSERT R3 K36 [+5]
  MOVE R5 R3
  LOADK R6 K36 ["VideoCamFilledNeutral"]
  GETIMPORT R4 K34 [table.insert]
  CALL R4 2 0
  MOVE R4 R2
  CALL R4 0 1
  JUMPIFNOT R4 [+7]
  FASTCALL2K TABLE_INSERT R3 K37 [+5]
  MOVE R5 R3
  LOADK R6 K37 ["PersonAddNeutral"]
  GETIMPORT R4 K34 [table.insert]
  CALL R4 2 0
  RETURN R3 1
