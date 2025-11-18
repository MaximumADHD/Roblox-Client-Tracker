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
  LOADK R12 K19 [":press"]
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
  DUPTABLE R6 K57 [{"FontPrimary", "FontBold", "FontSemibold", "Margin", "MarginSmall", "HeaderSize", "HeaderTitleTextSize", "HeaderSubtitleTextSize", "HeaderIconSize", "HeaderLeftMargin", "ScrollBarWidth", "ScrollBarGutter", "ButtonBorderRadius", "CardBorderRadius", "CardIconSize", "CardIconTextMargin", "CardStatusIndicatorSize", "CardStatusMinWidth", "CardUnsubscribeButtonSize", "CardElapsedTimeTextSize", "CardSubjectTextSize"}]
  GETIMPORT R7 K61 [Enum.Font.SourceSans]
  SETTABLEKS R7 R6 K36 ["FontPrimary"]
  GETIMPORT R7 K63 [Enum.Font.SourceSansBold]
  SETTABLEKS R7 R6 K37 ["FontBold"]
  GETIMPORT R7 K65 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R7 R6 K38 ["FontSemibold"]
  GETIMPORT R7 K68 [UDim.new]
  LOADN R8 0
  LOADN R9 8
  CALL R7 2 1
  SETTABLEKS R7 R6 K39 ["Margin"]
  GETIMPORT R7 K68 [UDim.new]
  LOADN R8 0
  LOADN R9 2
  CALL R7 2 1
  SETTABLEKS R7 R6 K40 ["MarginSmall"]
  GETIMPORT R7 K70 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 40
  CALL R7 4 1
  SETTABLEKS R7 R6 K41 ["HeaderSize"]
  LOADN R7 20
  SETTABLEKS R7 R6 K42 ["HeaderTitleTextSize"]
  LOADN R7 14
  SETTABLEKS R7 R6 K43 ["HeaderSubtitleTextSize"]
  GETIMPORT R7 K70 [UDim2.new]
  LOADN R8 0
  LOADN R9 20
  LOADN R10 0
  LOADN R11 20
  CALL R7 4 1
  SETTABLEKS R7 R6 K44 ["HeaderIconSize"]
  GETIMPORT R7 K68 [UDim.new]
  LOADN R8 0
  LOADN R9 14
  CALL R7 2 1
  SETTABLEKS R7 R6 K45 ["HeaderLeftMargin"]
  LOADN R7 8
  SETTABLEKS R7 R6 K46 ["ScrollBarWidth"]
  LOADN R7 12
  SETTABLEKS R7 R6 K47 ["ScrollBarGutter"]
  GETIMPORT R7 K68 [UDim.new]
  LOADN R8 0
  LOADN R9 4
  CALL R7 2 1
  SETTABLEKS R7 R6 K48 ["ButtonBorderRadius"]
  GETIMPORT R7 K68 [UDim.new]
  LOADN R8 0
  LOADN R9 6
  CALL R7 2 1
  SETTABLEKS R7 R6 K49 ["CardBorderRadius"]
  GETIMPORT R7 K70 [UDim2.new]
  LOADN R8 0
  LOADN R9 16
  LOADN R10 0
  LOADN R11 16
  CALL R7 4 1
  SETTABLEKS R7 R6 K50 ["CardIconSize"]
  GETIMPORT R7 K68 [UDim.new]
  LOADN R8 0
  LOADN R9 4
  CALL R7 2 1
  SETTABLEKS R7 R6 K51 ["CardIconTextMargin"]
  GETIMPORT R7 K70 [UDim2.new]
  LOADN R8 0
  LOADN R9 16
  LOADN R10 0
  LOADN R11 16
  CALL R7 4 1
  SETTABLEKS R7 R6 K52 ["CardStatusIndicatorSize"]
  LOADN R7 40
  SETTABLEKS R7 R6 K53 ["CardStatusMinWidth"]
  GETIMPORT R7 K70 [UDim2.new]
  LOADN R8 0
  LOADN R9 16
  LOADN R10 0
  LOADN R11 16
  CALL R7 4 1
  SETTABLEKS R7 R6 K54 ["CardUnsubscribeButtonSize"]
  LOADN R7 16
  SETTABLEKS R7 R6 K55 ["CardElapsedTimeTextSize"]
  LOADN R7 18
  SETTABLEKS R7 R6 K56 ["CardSubjectTextSize"]
  MOVE R7 R3
  LOADK R8 K71 ["NotificationsPlugin"]
  MOVE R9 R5
  MOVE R10 R6
  CALL R7 3 -1
  RETURN R7 -1
