MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Styling"]
  GETTABLEKS R2 R3 K8 ["createStyleRule"]
  GETTABLEKS R4 R1 K7 ["Styling"]
  GETTABLEKS R3 R4 K9 ["createStyleSheet"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Resources"]
  GETTABLEKS R5 R6 K12 ["NotificationLuaIcons"]
  CALL R4 1 1
  NEWTABLE R5 0 3
  MOVE R6 R2
  LOADK R7 K13 [".Plugin-NotificationCard-Hover"]
  NEWTABLE R8 0 0
  NEWTABLE R9 0 1
  MOVE R10 R2
  LOADK R11 K14 [":hover"]
  DUPTABLE R12 K16 [{"BackgroundColor3"}]
  LOADK R13 K17 ["$SecondaryHoverBackground"]
  SETTABLEKS R13 R12 K15 ["BackgroundColor3"]
  CALL R10 2 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R2
  LOADK R8 K18 [".Plugin-Icon-StatusDisabled"]
  DUPTABLE R9 K20 [{"Image"}]
  LOADK R10 K21 ["$NotificationStatusDisabledIcon"]
  SETTABLEKS R10 R9 K19 ["Image"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K22 [".Plugin-Icon-StatusUnread"]
  DUPTABLE R10 K20 [{"Image"}]
  LOADK R11 K23 ["$NotificationStatusUnreadIcon"]
  SETTABLEKS R11 R10 K19 ["Image"]
  CALL R8 2 -1
  SETLIST R5 R6 -1 [1]
  GETIMPORT R6 K25 [ipairs]
  MOVE R7 R4
  CALL R6 1 3
  FORGPREP_INEXT R6
  MOVE R12 R5
  MOVE R13 R2
  LOADK R15 K26 [".Plugin-Icon-%*"]
  MOVE R17 R10
  NAMECALL R15 R15 K27 ["format"]
  CALL R15 2 1
  MOVE R14 R15
  DUPTABLE R15 K20 [{"Image"}]
  LOADK R17 K28 ["$%*Icon"]
  MOVE R19 R10
  NAMECALL R17 R17 K27 ["format"]
  CALL R17 2 1
  MOVE R16 R17
  SETTABLEKS R16 R15 K19 ["Image"]
  CALL R13 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R11 K31 [table.insert]
  CALL R11 -1 0
  FORGLOOP R6 2 [inext] [-23]
  MOVE R6 R3
  LOADK R7 K32 ["NotificationsPlugin"]
  MOVE R8 R5
  CALL R6 2 -1
  RETURN R6 -1
