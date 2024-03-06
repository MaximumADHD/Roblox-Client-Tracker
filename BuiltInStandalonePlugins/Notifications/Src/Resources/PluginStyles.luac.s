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
  NEWTABLE R5 0 4
  MOVE R6 R2
  LOADK R7 K13 [".Plugin-NotificationCard-Hover"]
  DUPTABLE R8 K15 [{"BackgroundColor3"}]
  LOADK R9 K16 ["$ForegroundMain"]
  SETTABLEKS R9 R8 K14 ["BackgroundColor3"]
  NEWTABLE R9 0 2
  MOVE R10 R2
  LOADK R11 K17 [":hover"]
  DUPTABLE R12 K15 [{"BackgroundColor3"}]
  LOADK R13 K18 ["$ActionHover"]
  SETTABLEKS R13 R12 K14 ["BackgroundColor3"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K19 [":pressed"]
  DUPTABLE R13 K15 [{"BackgroundColor3"}]
  LOADK R14 K20 ["$ActionActivated"]
  SETTABLEKS R14 R13 K14 ["BackgroundColor3"]
  CALL R11 2 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  MOVE R7 R2
  LOADK R8 K21 [".Plugin-NotificationCard-HoverDisabled"]
  DUPTABLE R9 K15 [{"BackgroundColor3"}]
  LOADK R10 K16 ["$ForegroundMain"]
  SETTABLEKS R10 R9 K14 ["BackgroundColor3"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K22 [".Plugin-Icon-StatusDisabled"]
  DUPTABLE R10 K24 [{"Image"}]
  LOADK R11 K25 ["$NotificationStatusDisabledIcon"]
  SETTABLEKS R11 R10 K23 ["Image"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K26 [".Plugin-Icon-StatusUnread"]
  DUPTABLE R11 K24 [{"Image"}]
  LOADK R12 K27 ["$NotificationStatusUnreadIcon"]
  SETTABLEKS R12 R11 K23 ["Image"]
  CALL R9 2 -1
  SETLIST R5 R6 -1 [1]
  GETIMPORT R6 K29 [ipairs]
  MOVE R7 R4
  CALL R6 1 3
  FORGPREP_INEXT R6
  MOVE R12 R5
  MOVE R13 R2
  LOADK R15 K30 [".Plugin-Icon-%*"]
  MOVE R17 R10
  NAMECALL R15 R15 K31 ["format"]
  CALL R15 2 1
  MOVE R14 R15
  DUPTABLE R15 K24 [{"Image"}]
  LOADK R17 K32 ["$%*Icon"]
  MOVE R19 R10
  NAMECALL R17 R17 K31 ["format"]
  CALL R17 2 1
  MOVE R16 R17
  SETTABLEKS R16 R15 K23 ["Image"]
  CALL R13 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R11 K35 [table.insert]
  CALL R11 -1 0
  FORGLOOP R6 2 [inext] [-23]
  MOVE R6 R3
  LOADK R7 K36 ["NotificationsPlugin"]
  MOVE R8 R5
  CALL R6 2 -1
  RETURN R6 -1
