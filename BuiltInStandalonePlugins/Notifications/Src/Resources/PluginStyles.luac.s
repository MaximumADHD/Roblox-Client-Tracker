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
  NEWTABLE R4 0 6
  MOVE R5 R2
  LOADK R6 K10 [".Plugin-NotificationCard-Hover"]
  NEWTABLE R7 0 0
  NEWTABLE R8 0 1
  MOVE R9 R2
  LOADK R10 K11 [":hover"]
  DUPTABLE R11 K13 [{"BackgroundColor3"}]
  LOADK R12 K14 ["$SecondaryHoverBackground"]
  SETTABLEKS R12 R11 K12 ["BackgroundColor3"]
  CALL R9 2 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 1
  MOVE R6 R2
  LOADK R7 K15 [".Plugin-Icon-Settings"]
  DUPTABLE R8 K17 [{"Image"}]
  LOADK R9 K18 ["$NotificationSettingsIcon"]
  SETTABLEKS R9 R8 K16 ["Image"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K19 [".Plugin-Icon-StatusDisabled"]
  DUPTABLE R9 K17 [{"Image"}]
  LOADK R10 K20 ["$NotificationStatusDisabledIcon"]
  SETTABLEKS R10 R9 K16 ["Image"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K21 [".Plugin-Icon-StatusUnread"]
  DUPTABLE R10 K17 [{"Image"}]
  LOADK R11 K22 ["$NotificationStatusUnreadIcon"]
  SETTABLEKS R11 R10 K16 ["Image"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K23 [".Plugin-Icon-Placeholder"]
  DUPTABLE R11 K17 [{"Image"}]
  LOADK R12 K24 ["$PlaceholderIcon"]
  SETTABLEKS R12 R11 K16 ["Image"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K25 [".Plugin-Icon-StaticDevForumAnnouncements"]
  DUPTABLE R12 K17 [{"Image"}]
  LOADK R13 K26 ["$StaticDevForumAnnouncements"]
  SETTABLEKS R13 R12 K16 ["Image"]
  CALL R10 2 -1
  SETLIST R4 R5 -1 [1]
  MOVE R5 R3
  LOADK R6 K27 ["NotificationsPlugin"]
  MOVE R7 R4
  CALL R5 2 -1
  RETURN R5 -1
