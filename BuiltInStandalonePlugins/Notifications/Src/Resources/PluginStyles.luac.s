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
  GETIMPORT R5 K4 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K13 ["Util"]
  GETTABLEKS R7 R8 K14 ["SharedFlags"]
  GETTABLEKS R6 R7 K15 ["getFFlagNotificationsMarkAllAsRead"]
  CALL R5 1 1
  LOADNIL R6
  MOVE R7 R5
  CALL R7 0 1
  JUMPIFNOT R7 [+52]
  NEWTABLE R7 0 4
  MOVE R8 R2
  LOADK R9 K16 [".Plugin-NotificationCard-Hover"]
  DUPTABLE R10 K18 [{"BackgroundColor3"}]
  LOADK R11 K19 ["$ForegroundMain"]
  SETTABLEKS R11 R10 K17 ["BackgroundColor3"]
  NEWTABLE R11 0 2
  MOVE R12 R2
  LOADK R13 K20 [":hover"]
  DUPTABLE R14 K18 [{"BackgroundColor3"}]
  LOADK R15 K21 ["$ActionHover"]
  SETTABLEKS R15 R14 K17 ["BackgroundColor3"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K22 [":pressed"]
  DUPTABLE R15 K18 [{"BackgroundColor3"}]
  LOADK R16 K23 ["$ActionActivated"]
  SETTABLEKS R16 R15 K17 ["BackgroundColor3"]
  CALL R13 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K24 [".Plugin-NotificationCard-HoverDisabled"]
  DUPTABLE R11 K18 [{"BackgroundColor3"}]
  LOADK R12 K19 ["$ForegroundMain"]
  SETTABLEKS R12 R11 K17 ["BackgroundColor3"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K25 [".Plugin-Icon-StatusDisabled"]
  DUPTABLE R12 K27 [{"Image"}]
  LOADK R13 K28 ["$NotificationStatusDisabledIcon"]
  SETTABLEKS R13 R12 K26 ["Image"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K29 [".Plugin-Icon-StatusUnread"]
  DUPTABLE R13 K27 [{"Image"}]
  LOADK R14 K30 ["$NotificationStatusUnreadIcon"]
  SETTABLEKS R14 R13 K26 ["Image"]
  CALL R11 2 -1
  SETLIST R7 R8 -1 [1]
  MOVE R6 R7
  JUMP [+35]
  NEWTABLE R7 0 3
  MOVE R8 R2
  LOADK R9 K16 [".Plugin-NotificationCard-Hover"]
  NEWTABLE R10 0 0
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K20 [":hover"]
  DUPTABLE R14 K18 [{"BackgroundColor3"}]
  LOADK R15 K31 ["$SecondaryHoverBackground"]
  SETTABLEKS R15 R14 K17 ["BackgroundColor3"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K25 [".Plugin-Icon-StatusDisabled"]
  DUPTABLE R11 K27 [{"Image"}]
  LOADK R12 K28 ["$NotificationStatusDisabledIcon"]
  SETTABLEKS R12 R11 K26 ["Image"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K29 [".Plugin-Icon-StatusUnread"]
  DUPTABLE R12 K27 [{"Image"}]
  LOADK R13 K30 ["$NotificationStatusUnreadIcon"]
  SETTABLEKS R13 R12 K26 ["Image"]
  CALL R10 2 -1
  SETLIST R7 R8 -1 [1]
  MOVE R6 R7
  GETIMPORT R7 K33 [ipairs]
  MOVE R8 R4
  CALL R7 1 3
  FORGPREP_INEXT R7
  MOVE R13 R6
  MOVE R14 R2
  LOADK R16 K34 [".Plugin-Icon-%*"]
  MOVE R18 R11
  NAMECALL R16 R16 K35 ["format"]
  CALL R16 2 1
  MOVE R15 R16
  DUPTABLE R16 K27 [{"Image"}]
  LOADK R18 K36 ["$%*Icon"]
  MOVE R20 R11
  NAMECALL R18 R18 K35 ["format"]
  CALL R18 2 1
  MOVE R17 R18
  SETTABLEKS R17 R16 K26 ["Image"]
  CALL R14 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R12 K39 [table.insert]
  CALL R12 -1 0
  FORGLOOP R7 2 [inext] [-23]
  MOVE R7 R3
  LOADK R8 K40 ["NotificationsPlugin"]
  MOVE R9 R6
  CALL R7 2 -1
  RETURN R7 -1
