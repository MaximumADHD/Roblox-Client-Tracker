PROTO_0:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  JUMPIFNOTEQKS R0 K1 ["Warn"] [+7]
  LOADK R4 K2 ["WarningHeader"]
  LOADK R5 K2 ["WarningHeader"]
  NAMECALL R2 R1 K3 ["getText"]
  CALL R2 3 -1
  RETURN R2 -1
  JUMPIFNOTEQKS R0 K4 ["Ban 1 Day"] [+7]
  LOADK R4 K5 ["BanHeader"]
  LOADK R5 K6 ["Ban1DayHeader"]
  NAMECALL R2 R1 K3 ["getText"]
  CALL R2 3 -1
  RETURN R2 -1
  JUMPIFNOTEQKS R0 K7 ["Ban 3 Days"] [+7]
  LOADK R4 K5 ["BanHeader"]
  LOADK R5 K8 ["Ban3DaysHeader"]
  NAMECALL R2 R1 K3 ["getText"]
  CALL R2 3 -1
  RETURN R2 -1
  JUMPIFNOTEQKS R0 K9 ["Ban 7 Days"] [+7]
  LOADK R4 K5 ["BanHeader"]
  LOADK R5 K10 ["Ban7DaysHeader"]
  NAMECALL R2 R1 K3 ["getText"]
  CALL R2 3 -1
  RETURN R2 -1
  JUMPIFNOTEQKS R0 K11 ["Ban 14 Days"] [+7]
  LOADK R4 K5 ["BanHeader"]
  LOADK R5 K12 ["Ban14DaysHeader"]
  NAMECALL R2 R1 K3 ["getText"]
  CALL R2 3 -1
  RETURN R2 -1
  JUMPIFNOTEQKS R0 K13 ["Ban 6 Months"] [+7]
  LOADK R4 K5 ["BanHeader"]
  LOADK R5 K14 ["Ban6MonthsHeader"]
  NAMECALL R2 R1 K3 ["getText"]
  CALL R2 3 -1
  RETURN R2 -1
  JUMPIFNOTEQKS R0 K15 ["Ban 1 Year"] [+7]
  LOADK R4 K5 ["BanHeader"]
  LOADK R5 K16 ["Ban1YearHeader"]
  NAMECALL R2 R1 K3 ["getText"]
  CALL R2 3 -1
  RETURN R2 -1
  LOADB R3 0
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K18 [assert]
  CALL R2 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["createElement"]
  GETUPVAL R4 1
  NEWTABLE R5 8 0
  LOADB R6 1
  SETTABLEKS R6 R5 K1 ["TextWrapped"]
  GETIMPORT R6 K5 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R6 R5 K3 ["HorizontalAlignment"]
  SETTABLEKS R1 R5 K6 ["Text"]
  GETUPVAL R6 2
  SETTABLEKS R6 R5 K7 ["TextProps"]
  SETTABLEKS R2 R5 K8 ["LinkMap"]
  SETTABLEKS R0 R5 K9 ["LayoutOrder"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K10 ["Tag"]
  LOADK R7 K11 ["X-FitY"]
  SETTABLE R7 R5 R6
  CALL R3 2 -1
  RETURN R3 -1

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ContentProvider"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["BaseUrl"]
  LOADK R3 K5 ["/report-appeals?t_source=studio-nap"]
  CONCAT R1 R2 R3
  GETUPVAL R2 0
  MOVE R4 R1
  NAMECALL R2 R2 K6 ["OpenBrowserWindow"]
  CALL R2 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R3 0
  NAMECALL R3 R3 K0 ["use"]
  CALL R3 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["new"]
  CALL R4 0 1
  DUPTABLE R5 K3 [{"DialogContainer"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K4 ["createElement"]
  LOADK R7 K5 ["Frame"]
  NEWTABLE R8 2 0
  NAMECALL R9 R4 K6 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K7 ["LayoutOrder"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K8 ["Tag"]
  LOADK R10 K9 ["X-Fill X-Column Component-DialogContainer"]
  SETTABLE R10 R8 R9
  DUPTABLE R9 K20 [{"Body", "ReviewedNote", "Separator1", "Reason", "Separator2", "Guidelines", "ReactivateDateNote", "AppealPortal", "ToUAgreement", "AgreeCheckBox"}]
  NAMECALL R11 R4 K6 ["getNextOrder"]
  CALL R11 1 1
  LOADK R14 K21 ["WarningHeader"]
  LOADK R15 K22 ["WarningLink"]
  NAMECALL R12 R3 K23 ["getText"]
  CALL R12 3 1
  NEWTABLE R13 1 0
  DUPTABLE R14 K26 [{"LinkText", "LinkCallback"}]
  LOADK R17 K27 ["Links"]
  LOADK R18 K28 ["ToULink"]
  NAMECALL R15 R3 K23 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K24 ["LinkText"]
  DUPCLOSURE R15 K29 [PROTO_2]
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R15 R14 K25 ["LinkCallback"]
  SETTABLEKS R14 R13 K30 ["[link1]"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K4 ["createElement"]
  GETUPVAL R15 5
  NEWTABLE R16 8 0
  LOADB R17 1
  SETTABLEKS R17 R16 K31 ["TextWrapped"]
  GETIMPORT R17 K35 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R17 R16 K33 ["HorizontalAlignment"]
  SETTABLEKS R12 R16 K36 ["Text"]
  GETUPVAL R17 6
  SETTABLEKS R17 R16 K37 ["TextProps"]
  SETTABLEKS R13 R16 K38 ["LinkMap"]
  SETTABLEKS R11 R16 K7 ["LayoutOrder"]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K8 ["Tag"]
  LOADK R18 K39 ["X-FitY"]
  SETTABLE R18 R16 R17
  CALL R14 2 1
  MOVE R10 R14
  SETTABLEKS R10 R9 K10 ["Body"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 7
  DUPTABLE R12 K42 [{"ReviewDateTime", "ModeratorNote", "LayoutOrder"}]
  GETTABLEKS R13 R0 K40 ["ReviewDateTime"]
  SETTABLEKS R13 R12 K40 ["ReviewDateTime"]
  GETTABLEKS R13 R0 K41 ["ModeratorNote"]
  SETTABLEKS R13 R12 K41 ["ModeratorNote"]
  NAMECALL R13 R4 K6 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K7 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K11 ["ReviewedNote"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K4 ["createElement"]
  LOADK R11 K5 ["Frame"]
  NEWTABLE R12 2 0
  NAMECALL R13 R4 K6 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K7 ["LayoutOrder"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K8 ["Tag"]
  LOADK R14 K43 ["Separator"]
  SETTABLE R14 R12 R13
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["Separator1"]
  GETTABLEKS R10 R0 K13 ["Reason"]
  JUMPIFNOT R10 [+26]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 8
  DUPTABLE R12 K45 [{"Reason", "OffensiveItem", "LayoutOrder"}]
  GETUPVAL R13 9
  MOVE R14 R3
  GETTABLEKS R16 R0 K13 ["Reason"]
  GETTABLEKS R15 R16 K46 ["abuseType"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K13 ["Reason"]
  GETTABLEKS R14 R0 K13 ["Reason"]
  GETTABLEKS R13 R14 K47 ["utteranceText"]
  SETTABLEKS R13 R12 K44 ["OffensiveItem"]
  NAMECALL R13 R4 K6 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K7 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["Reason"]
  GETTABLEKS R10 R0 K13 ["Reason"]
  JUMPIFNOT R10 [+17]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K4 ["createElement"]
  LOADK R11 K5 ["Frame"]
  NEWTABLE R12 2 0
  NAMECALL R13 R4 K6 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K7 ["LayoutOrder"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K8 ["Tag"]
  LOADK R14 K43 ["Separator"]
  SETTABLE R14 R12 R13
  CALL R10 2 1
  SETTABLEKS R10 R9 K14 ["Separator2"]
  NAMECALL R11 R4 K6 ["getNextOrder"]
  CALL R11 1 1
  LOADK R14 K48 ["AccountDisabled"]
  LOADK R15 K15 ["Guidelines"]
  NAMECALL R12 R3 K23 ["getText"]
  CALL R12 3 1
  NEWTABLE R13 1 0
  DUPTABLE R14 K26 [{"LinkText", "LinkCallback"}]
  LOADK R17 K27 ["Links"]
  LOADK R18 K49 ["GuidelinesLink"]
  NAMECALL R15 R3 K23 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K24 ["LinkText"]
  DUPCLOSURE R15 K50 [PROTO_3]
  CAPTURE UPVAL U3
  CAPTURE UPVAL U10
  SETTABLEKS R15 R14 K25 ["LinkCallback"]
  SETTABLEKS R14 R13 K30 ["[link1]"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K4 ["createElement"]
  GETUPVAL R15 5
  NEWTABLE R16 8 0
  LOADB R17 1
  SETTABLEKS R17 R16 K31 ["TextWrapped"]
  GETIMPORT R17 K35 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R17 R16 K33 ["HorizontalAlignment"]
  SETTABLEKS R12 R16 K36 ["Text"]
  GETUPVAL R17 6
  SETTABLEKS R17 R16 K37 ["TextProps"]
  SETTABLEKS R13 R16 K38 ["LinkMap"]
  SETTABLEKS R11 R16 K7 ["LayoutOrder"]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K8 ["Tag"]
  LOADK R18 K39 ["X-FitY"]
  SETTABLE R18 R16 R17
  CALL R14 2 1
  MOVE R10 R14
  SETTABLEKS R10 R9 K15 ["Guidelines"]
  LOADB R10 0
  GETTABLEKS R11 R0 K51 ["Type"]
  JUMPIFEQKS R11 K52 ["Warn"] [+16]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 11
  DUPTABLE R12 K54 [{"BannedDateTime", "LayoutOrder"}]
  GETTABLEKS R13 R0 K53 ["BannedDateTime"]
  SETTABLEKS R13 R12 K53 ["BannedDateTime"]
  NAMECALL R13 R4 K6 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K7 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K16 ["ReactivateDateNote"]
  NAMECALL R11 R4 K6 ["getNextOrder"]
  CALL R11 1 1
  LOADK R14 K48 ["AccountDisabled"]
  LOADK R15 K55 ["Appeal"]
  NAMECALL R12 R3 K23 ["getText"]
  CALL R12 3 1
  NEWTABLE R13 1 0
  DUPTABLE R14 K26 [{"LinkText", "LinkCallback"}]
  LOADK R17 K27 ["Links"]
  LOADK R18 K17 ["AppealPortal"]
  NAMECALL R15 R3 K23 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K24 ["LinkText"]
  DUPCLOSURE R15 K56 [PROTO_4]
  CAPTURE UPVAL U3
  SETTABLEKS R15 R14 K25 ["LinkCallback"]
  SETTABLEKS R14 R13 K30 ["[link1]"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K4 ["createElement"]
  GETUPVAL R15 5
  NEWTABLE R16 8 0
  LOADB R17 1
  SETTABLEKS R17 R16 K31 ["TextWrapped"]
  GETIMPORT R17 K35 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R17 R16 K33 ["HorizontalAlignment"]
  SETTABLEKS R12 R16 K36 ["Text"]
  GETUPVAL R17 6
  SETTABLEKS R17 R16 K37 ["TextProps"]
  SETTABLEKS R13 R16 K38 ["LinkMap"]
  SETTABLEKS R11 R16 K7 ["LayoutOrder"]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K8 ["Tag"]
  LOADK R18 K39 ["X-FitY"]
  SETTABLE R18 R16 R17
  CALL R14 2 1
  MOVE R10 R14
  SETTABLEKS R10 R9 K17 ["AppealPortal"]
  LOADB R10 0
  GETTABLEKS R11 R0 K51 ["Type"]
  JUMPIFNOTEQKS R11 K52 ["Warn"] [+55]
  NAMECALL R11 R4 K6 ["getNextOrder"]
  CALL R11 1 1
  LOADK R14 K57 ["Agreement"]
  LOADK R15 K58 ["TermsOfUse"]
  NAMECALL R12 R3 K23 ["getText"]
  CALL R12 3 1
  NEWTABLE R13 1 0
  DUPTABLE R14 K26 [{"LinkText", "LinkCallback"}]
  LOADK R17 K27 ["Links"]
  LOADK R18 K28 ["ToULink"]
  NAMECALL R15 R3 K23 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K24 ["LinkText"]
  DUPCLOSURE R15 K59 [PROTO_5]
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R15 R14 K25 ["LinkCallback"]
  SETTABLEKS R14 R13 K30 ["[link1]"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K4 ["createElement"]
  GETUPVAL R15 5
  NEWTABLE R16 8 0
  LOADB R17 1
  SETTABLEKS R17 R16 K31 ["TextWrapped"]
  GETIMPORT R17 K35 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R17 R16 K33 ["HorizontalAlignment"]
  SETTABLEKS R12 R16 K36 ["Text"]
  GETUPVAL R17 6
  SETTABLEKS R17 R16 K37 ["TextProps"]
  SETTABLEKS R13 R16 K38 ["LinkMap"]
  SETTABLEKS R11 R16 K7 ["LayoutOrder"]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K8 ["Tag"]
  LOADK R18 K39 ["X-FitY"]
  SETTABLE R18 R16 R17
  CALL R14 2 1
  MOVE R10 R14
  SETTABLEKS R10 R9 K18 ["ToUAgreement"]
  LOADB R10 0
  GETTABLEKS R11 R0 K51 ["Type"]
  JUMPIFNOTEQKS R11 K52 ["Warn"] [+32]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 12
  NEWTABLE R12 8 0
  NAMECALL R13 R4 K6 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K7 ["LayoutOrder"]
  LOADK R15 K57 ["Agreement"]
  LOADK R16 K60 ["IAgree"]
  NAMECALL R13 R3 K23 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K36 ["Text"]
  SETTABLEKS R1 R12 K61 ["Checked"]
  NEWCLOSURE R13 P4
  CAPTURE VAL R2
  CAPTURE VAL R1
  SETTABLEKS R13 R12 K62 ["OnChecked"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K8 ["Tag"]
  LOADK R14 K39 ["X-FitY"]
  SETTABLE R14 R12 R13
  CALL R10 2 1
  SETTABLEKS R10 R9 K19 ["AgreeCheckBox"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K2 ["DialogContainer"]
  RETURN R5 1

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnReactivate"]
  CALL R0 0 0
  RETURN R0 0

PROTO_9:
  GETIMPORT R0 K2 [table.freeze]
  DUPTABLE R1 K6 [{"Label", "Enabled", "OnActivated"}]
  GETUPVAL R2 0
  LOADK R4 K7 ["Buttons"]
  LOADK R5 K8 ["Reactivate"]
  NAMECALL R2 R2 K9 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K3 ["Label"]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K4 ["Enabled"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K5 ["OnActivated"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnLogout"]
  CALL R0 0 0
  RETURN R0 0

PROTO_11:
  GETIMPORT R0 K2 [table.freeze]
  DUPTABLE R1 K5 [{"Label", "OnActivated"}]
  GETUPVAL R2 0
  LOADK R4 K6 ["Buttons"]
  LOADK R5 K7 ["LogOut"]
  NAMECALL R2 R2 K8 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K3 ["Label"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K4 ["OnActivated"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_12:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["useState"]
  LOADB R3 0
  CALL R2 1 2
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["useMemo"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R0
  NEWTABLE R6 0 2
  MOVE R7 R2
  GETTABLEKS R8 R1 K3 ["locale"]
  SETLIST R6 R7 2 [1]
  CALL R4 2 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["useMemo"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R1
  CAPTURE VAL R0
  NEWTABLE R7 0 1
  GETTABLEKS R8 R1 K3 ["locale"]
  SETLIST R7 R8 1 [1]
  CALL R5 2 1
  LOADNIL R6
  GETUPVAL R7 2
  DUPTABLE R8 K12 [{"Intent", "Heading", "Contents", "ActionPrimary", "ActionSecondary", "Modal", "DisableTitleBar", "Width"}]
  GETTABLEKS R10 R0 K13 ["Type"]
  JUMPIFNOTEQKS R10 K14 ["Warn"] [+3]
  LOADK R9 K15 ["Warning"]
  JUMP [+1]
  LOADK R9 K16 ["Error"]
  SETTABLEKS R9 R8 K4 ["Intent"]
  GETUPVAL R9 3
  GETTABLEKS R10 R0 K13 ["Type"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K5 ["Heading"]
  GETUPVAL R9 4
  MOVE R10 R0
  MOVE R11 R2
  MOVE R12 R3
  CALL R9 3 1
  SETTABLEKS R9 R8 K6 ["Contents"]
  GETTABLEKS R10 R0 K13 ["Type"]
  JUMPIFNOTEQKS R10 K14 ["Warn"] [+3]
  MOVE R9 R4
  JUMP [+1]
  MOVE R9 R5
  SETTABLEKS R9 R8 K7 ["ActionPrimary"]
  GETTABLEKS R10 R0 K13 ["Type"]
  JUMPIFNOTEQKS R10 K14 ["Warn"] [+3]
  MOVE R9 R5
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K8 ["ActionSecondary"]
  LOADB R9 1
  SETTABLEKS R9 R8 K9 ["Modal"]
  GETTABLEKS R10 R0 K13 ["Type"]
  JUMPIFNOTEQKS R10 K14 ["Warn"] [+3]
  LOADB R9 0
  JUMP [+1]
  LOADB R9 1
  SETTABLEKS R9 R8 K10 ["DisableTitleBar"]
  LOADN R9 219
  SETTABLEKS R9 R8 K11 ["Width"]
  CALL R7 1 1
  MOVE R6 R7
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K17 ["useEffect"]
  MOVE R8 R6
  NEWTABLE R9 0 0
  CALL R7 2 0
  LOADNIL R7
  RETURN R7 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ModerationDialog"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["Localization"]
  GETTABLEKS R7 R2 K11 ["UI"]
  GETTABLEKS R6 R7 K12 ["Hooks"]
  GETTABLEKS R5 R6 K13 ["useDialog"]
  GETTABLEKS R7 R2 K11 ["UI"]
  GETTABLEKS R6 R7 K14 ["TextWithLinks"]
  GETTABLEKS R8 R2 K15 ["Util"]
  GETTABLEKS R7 R8 K16 ["LayoutOrderIterator"]
  GETTABLEKS R9 R0 K17 ["Src"]
  GETTABLEKS R8 R9 K18 ["Components"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R8 K19 ["Checkbox"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R8 K20 ["Reason"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R8 K21 ["ReviewedNote"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R8 K22 ["ReactivateDateNote"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K17 ["Src"]
  GETTABLEKS R15 R16 K15 ["Util"]
  GETTABLEKS R14 R15 K23 ["AbuseTypeToString"]
  CALL R13 1 1
  GETIMPORT R14 K25 [game]
  LOADK R16 K26 ["ModerationDialogToULink"]
  LOADK R17 K27 ["https://en.help.roblox.com/hc/articles/115004647846-Roblox-Terms-of-Use"]
  NAMECALL R14 R14 K28 ["DefineFastString"]
  CALL R14 3 1
  GETIMPORT R15 K25 [game]
  LOADK R17 K29 ["ModerationDialogCommunityGuidelinesLink"]
  LOADK R18 K30 ["https://en.help.roblox.com/hc/en-us/articles/203313410-Roblox-Community-Standards"]
  NAMECALL R15 R15 K28 ["DefineFastString"]
  CALL R15 3 1
  GETIMPORT R16 K25 [game]
  LOADK R18 K31 ["BrowserService"]
  NAMECALL R16 R16 K32 ["GetService"]
  CALL R16 2 1
  DUPCLOSURE R17 K33 [PROTO_0]
  CAPTURE VAL R4
  DUPTABLE R18 K37 [{"Font", "TextSize", "TextXAlignment"}]
  GETIMPORT R19 K40 [Enum.Font.SourceSans]
  SETTABLEKS R19 R18 K34 ["Font"]
  LOADN R19 16
  SETTABLEKS R19 R18 K35 ["TextSize"]
  GETIMPORT R19 K42 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K36 ["TextXAlignment"]
  DUPCLOSURE R19 K43 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R18
  DUPCLOSURE R20 K44 [PROTO_7]
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R16
  CAPTURE VAL R14
  CAPTURE VAL R6
  CAPTURE VAL R18
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R15
  CAPTURE VAL R12
  CAPTURE VAL R9
  DUPCLOSURE R21 K45 [PROTO_12]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R17
  CAPTURE VAL R20
  RETURN R21 1
