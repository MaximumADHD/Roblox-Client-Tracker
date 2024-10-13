PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["AbsoluteSize"]
  GETTABLEKS R2 R3 K1 ["Y"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["AbsolutePosition"]
  GETTABLEKS R2 R3 K1 ["Y"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  JUMPIFNOTEQKS R0 K0 ["ok"] [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["OnClose"]
  CALL R1 0 0
  RETURN R0 0
  JUMPIFNOTEQKS R0 K2 ["rerun"] [+14]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["ValidationCompleted"]
  JUMPIFNOT R1 [+9]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["RunValidation"]
  CALL R1 0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["OnClose"]
  CALL R1 0 0
  RETURN R0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K9 [{"key", "AutomaticSize", "Size", "Text", "TextXAlignment", "TextSize", "TextWrapped", "LayoutOrder"}]
  LOADK R6 K10 ["Error%*"]
  MOVE R8 R1
  NAMECALL R6 R6 K11 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  SETTABLEKS R5 R4 K1 ["key"]
  GETIMPORT R5 K14 [Enum.AutomaticSize.Y]
  SETTABLEKS R5 R4 K2 ["AutomaticSize"]
  GETIMPORT R5 K17 [UDim2.fromScale]
  LOADN R6 1
  LOADN R7 0
  CALL R5 2 1
  SETTABLEKS R5 R4 K3 ["Size"]
  GETTABLEKS R7 R0 K18 ["error"]
  GETTABLEKS R6 R7 K19 ["type"]
  JUMPIFNOTEQKS R6 K20 ["message"] [+6]
  GETTABLEKS R6 R0 K18 ["error"]
  GETTABLEKS R5 R6 K20 ["message"]
  JUMP [+37]
  GETTABLEKS R7 R0 K18 ["error"]
  GETTABLEKS R6 R7 K19 ["type"]
  JUMPIFNOTEQKS R6 K21 ["notFound"] [+26]
  GETUPVAL R5 2
  LOADK R7 K22 ["UGCValidation"]
  LOADK R8 K23 ["AssetNotFound"]
  DUPTABLE R9 K25 [{"asset"}]
  GETUPVAL R10 2
  LOADK R12 K26 ["AssetType"]
  GETTABLEKS R15 R0 K27 ["assetType"]
  FASTCALL2K ASSERT R15 K28 [+4]
  LOADK R16 K28 ["notFound sent with no error type"]
  GETIMPORT R14 K30 [assert]
  CALL R14 2 1
  GETTABLEKS R13 R14 K31 ["Name"]
  NAMECALL R10 R10 K32 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K24 ["asset"]
  NAMECALL R5 R5 K32 ["getText"]
  CALL R5 4 1
  JUMP [+6]
  GETUPVAL R5 3
  GETTABLEKS R7 R0 K18 ["error"]
  GETTABLEKS R6 R7 K19 ["type"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K4 ["Text"]
  GETIMPORT R5 K34 [Enum.TextXAlignment.Left]
  SETTABLEKS R5 R4 K5 ["TextXAlignment"]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K6 ["TextSize"]
  SETTABLEKS R5 R4 K6 ["TextSize"]
  LOADB R5 1
  SETTABLEKS R5 R4 K7 ["TextWrapped"]
  GETUPVAL R5 5
  NAMECALL R5 R5 K35 ["getNextOrder"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K8 ["LayoutOrder"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K1 ["use"]
  CALL R2 1 1
  GETUPVAL R3 2
  LOADK R5 K2 ["UGCValidationErrorDialog"]
  NAMECALL R3 R3 K1 ["use"]
  CALL R3 2 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K3 ["useState"]
  LOADN R5 0
  CALL R4 1 2
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K4 ["useCallback"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R5
  NEWTABLE R8 0 0
  CALL R6 2 1
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K3 ["useState"]
  LOADN R8 0
  CALL R7 1 2
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K4 ["useCallback"]
  NEWCLOSURE R10 P1
  CAPTURE VAL R8
  NEWTABLE R11 0 0
  CALL R9 2 1
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K5 ["useContext"]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K6 ["Context"]
  CALL R10 1 1
  GETTABLEKS R12 R10 K7 ["canUploadBundles"]
  JUMPIFEQKNIL R12 [+12]
  GETTABLEKS R13 R10 K7 ["canUploadBundles"]
  GETTABLEKS R12 R13 K8 ["type"]
  JUMPIFNOTEQKS R12 K9 ["notAllowed"] [+6]
  GETTABLEKS R12 R10 K7 ["canUploadBundles"]
  GETTABLEKS R11 R12 K10 ["denyReason"]
  JUMP [+1]
  LOADNIL R11
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K11 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K19 [{"Style", "Title", "MinContentSize", "Resizable", "Buttons", "OnButtonPressed", "OnClose"}]
  GETUPVAL R16 6
  CALL R16 0 1
  JUMPIFNOT R16 [+2]
  LOADK R15 K20 ["CancelAccept"]
  JUMP [+1]
  LOADK R15 K21 ["Alert"]
  SETTABLEKS R15 R14 K12 ["Style"]
  LOADK R17 K22 ["UGCValidation"]
  LOADK R18 K23 ["AlertTitle"]
  NAMECALL R15 R2 K24 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K13 ["Title"]
  GETTABLEKS R15 R3 K25 ["AlertMinContentSize"]
  SETTABLEKS R15 R14 K14 ["MinContentSize"]
  LOADB R15 1
  SETTABLEKS R15 R14 K15 ["Resizable"]
  GETUPVAL R16 6
  CALL R16 0 1
  JUMPIFNOT R16 [+37]
  NEWTABLE R15 0 2
  DUPTABLE R16 K29 [{"Key", "Text", "StyleModifier"}]
  LOADK R17 K30 ["rerun"]
  SETTABLEKS R17 R16 K26 ["Key"]
  LOADK R19 K22 ["UGCValidation"]
  LOADK R20 K31 ["RerunValidation"]
  NAMECALL R17 R2 K24 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K27 ["Text"]
  GETTABLEKS R18 R0 K32 ["ValidationCompleted"]
  JUMPIFNOT R18 [+2]
  LOADNIL R17
  JUMP [+3]
  GETUPVAL R18 7
  GETTABLEKS R17 R18 K33 ["Disabled"]
  SETTABLEKS R17 R16 K28 ["StyleModifier"]
  DUPTABLE R17 K34 [{"Key", "Text"}]
  LOADK R18 K35 ["ok"]
  SETTABLEKS R18 R17 K26 ["Key"]
  LOADK R20 K22 ["UGCValidation"]
  LOADK R21 K36 ["OK"]
  NAMECALL R18 R2 K24 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K27 ["Text"]
  SETLIST R15 R16 2 [1]
  JUMP [+11]
  NEWTABLE R15 0 1
  DUPTABLE R16 K34 [{"Key", "Text"}]
  LOADK R17 K35 ["ok"]
  SETTABLEKS R17 R16 K26 ["Key"]
  LOADK R17 K36 ["OK"]
  SETTABLEKS R17 R16 K27 ["Text"]
  SETLIST R15 R16 1 [1]
  SETTABLEKS R15 R14 K16 ["Buttons"]
  GETUPVAL R16 6
  CALL R16 0 1
  JUMPIFNOT R16 [+3]
  NEWCLOSURE R15 P2
  CAPTURE VAL R0
  JUMP [+2]
  GETTABLEKS R15 R0 K18 ["OnClose"]
  SETTABLEKS R15 R14 K17 ["OnButtonPressed"]
  GETTABLEKS R15 R0 K18 ["OnClose"]
  SETTABLEKS R15 R14 K18 ["OnClose"]
  DUPTABLE R15 K38 [{"Contents"}]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K11 ["createElement"]
  GETUPVAL R17 8
  DUPTABLE R18 K42 [{"Layout", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R19 K46 [Enum.FillDirection.Horizontal]
  SETTABLEKS R19 R18 K39 ["Layout"]
  GETIMPORT R19 K48 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R19 R18 K40 ["HorizontalAlignment"]
  GETIMPORT R19 K50 [Enum.VerticalAlignment.Top]
  SETTABLEKS R19 R18 K41 ["VerticalAlignment"]
  DUPTABLE R19 K54 [{"LeftColumn", "RightColumn", "Rerun_Disabled"}]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K11 ["createElement"]
  GETUPVAL R21 8
  DUPTABLE R22 K57 [{"Size", "LayoutOrder"}]
  GETIMPORT R23 K60 [UDim2.fromOffset]
  GETTABLEKS R25 R3 K61 ["TextSize"]
  GETTABLEKS R26 R3 K62 ["IconTextSpacing"]
  ADD R24 R25 R26
  GETTABLEKS R25 R3 K61 ["TextSize"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K55 ["Size"]
  NAMECALL R23 R1 K63 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K56 ["LayoutOrder"]
  DUPTABLE R23 K65 [{"Image"}]
  GETUPVAL R25 3
  GETTABLEKS R24 R25 K11 ["createElement"]
  GETUPVAL R25 9
  DUPTABLE R26 K67 [{"Image", "ImageColor3", "Size"}]
  GETTABLEKS R27 R3 K68 ["WarningImage"]
  SETTABLEKS R27 R26 K64 ["Image"]
  GETTABLEKS R27 R3 K69 ["WarningColor"]
  SETTABLEKS R27 R26 K66 ["ImageColor3"]
  GETIMPORT R27 K60 [UDim2.fromOffset]
  GETTABLEKS R28 R3 K61 ["TextSize"]
  GETTABLEKS R29 R3 K61 ["TextSize"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K55 ["Size"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K64 ["Image"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K51 ["LeftColumn"]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K11 ["createElement"]
  GETUPVAL R21 8
  NEWTABLE R22 8 0
  GETIMPORT R23 K70 [UDim2.new]
  LOADN R24 1
  GETTABLEKS R26 R3 K61 ["TextSize"]
  MINUS R25 R26
  LOADN R26 1
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K55 ["Size"]
  NAMECALL R23 R1 K63 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K56 ["LayoutOrder"]
  GETIMPORT R23 K72 [Enum.FillDirection.Vertical]
  SETTABLEKS R23 R22 K39 ["Layout"]
  GETTABLEKS R23 R3 K73 ["TitleDetailsSpacing"]
  SETTABLEKS R23 R22 K74 ["Spacing"]
  GETIMPORT R23 K48 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R23 R22 K40 ["HorizontalAlignment"]
  GETIMPORT R23 K50 [Enum.VerticalAlignment.Top]
  SETTABLEKS R23 R22 K41 ["VerticalAlignment"]
  GETUPVAL R25 3
  GETTABLEKS R24 R25 K75 ["Change"]
  GETTABLEKS R23 R24 K76 ["AbsoluteSize"]
  SETTABLE R6 R22 R23
  DUPTABLE R23 K79 [{"WarningLabel", "Warnings"}]
  GETUPVAL R25 3
  GETTABLEKS R24 R25 K11 ["createElement"]
  GETUPVAL R25 10
  DUPTABLE R26 K85 [{"AutomaticSize", "Font", "Size", "Text", "TextColor", "TextSize", "TextXAlignment", "TextWrapped"}]
  GETIMPORT R27 K87 [Enum.AutomaticSize.Y]
  SETTABLEKS R27 R26 K80 ["AutomaticSize"]
  GETTABLEKS R27 R3 K88 ["WarningFont"]
  SETTABLEKS R27 R26 K81 ["Font"]
  GETIMPORT R27 K90 [UDim2.fromScale]
  LOADN R28 1
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K55 ["Size"]
  GETUPVAL R27 11
  MOVE R28 R2
  LOADK R29 K22 ["UGCValidation"]
  LOADK R30 K91 ["WarningLongTitle"]
  GETTABLEKS R33 R0 K92 ["Errors"]
  LENGTH R32 R33
  JUMPIFNOTEQKNIL R11 [+3]
  LOADN R33 0
  JUMP [+1]
  LOADN R33 1
  ADD R31 R32 R33
  CALL R27 4 1
  SETTABLEKS R27 R26 K27 ["Text"]
  GETTABLEKS R27 R3 K69 ["WarningColor"]
  SETTABLEKS R27 R26 K82 ["TextColor"]
  GETTABLEKS R27 R3 K61 ["TextSize"]
  SETTABLEKS R27 R26 K61 ["TextSize"]
  GETIMPORT R27 K93 [Enum.TextXAlignment.Left]
  SETTABLEKS R27 R26 K83 ["TextXAlignment"]
  LOADB R27 1
  SETTABLEKS R27 R26 K84 ["TextWrapped"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K77 ["WarningLabel"]
  GETUPVAL R25 3
  GETTABLEKS R24 R25 K11 ["createElement"]
  GETUPVAL R25 12
  NEWTABLE R26 8 0
  GETIMPORT R27 K87 [Enum.AutomaticSize.Y]
  SETTABLEKS R27 R26 K94 ["AutomaticCanvasSize"]
  GETIMPORT R27 K70 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 0
  SUB R31 R4 R7
  CALL R27 4 1
  SETTABLEKS R27 R26 K55 ["Size"]
  GETIMPORT R27 K72 [Enum.FillDirection.Vertical]
  SETTABLEKS R27 R26 K39 ["Layout"]
  GETIMPORT R27 K96 [UDim.new]
  LOADN R28 0
  GETTABLEKS R29 R3 K97 ["DetailsSpacing"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K74 ["Spacing"]
  GETUPVAL R29 3
  GETTABLEKS R28 R29 K75 ["Change"]
  GETTABLEKS R27 R28 K98 ["AbsolutePosition"]
  SETTABLE R9 R26 R27
  NEWTABLE R27 0 2
  MOVE R28 R11
  JUMPIFNOT R28 [+147]
  GETUPVAL R29 3
  GETTABLEKS R28 R29 K11 ["createElement"]
  GETUPVAL R30 3
  GETTABLEKS R29 R30 K99 ["Fragment"]
  NEWTABLE R30 0 0
  DUPTABLE R31 K102 [{"Header", "ErrorText"}]
  GETUPVAL R33 3
  GETTABLEKS R32 R33 K11 ["createElement"]
  GETUPVAL R33 10
  DUPTABLE R34 K103 [{"Text", "Style", "AutomaticSize", "Size", "TextXAlignment", "TextSize", "TextWrapped", "LayoutOrder"}]
  LOADK R37 K22 ["UGCValidation"]
  LOADK R38 K104 ["PermissionsRequiredHeader"]
  NAMECALL R35 R2 K24 ["getText"]
  CALL R35 3 1
  SETTABLEKS R35 R34 K27 ["Text"]
  LOADK R35 K105 ["Bold"]
  SETTABLEKS R35 R34 K12 ["Style"]
  GETIMPORT R35 K87 [Enum.AutomaticSize.Y]
  SETTABLEKS R35 R34 K80 ["AutomaticSize"]
  GETIMPORT R35 K90 [UDim2.fromScale]
  LOADN R36 1
  LOADN R37 0
  CALL R35 2 1
  SETTABLEKS R35 R34 K55 ["Size"]
  GETIMPORT R35 K93 [Enum.TextXAlignment.Left]
  SETTABLEKS R35 R34 K83 ["TextXAlignment"]
  GETTABLEKS R35 R3 K61 ["TextSize"]
  SETTABLEKS R35 R34 K61 ["TextSize"]
  LOADB R35 1
  SETTABLEKS R35 R34 K84 ["TextWrapped"]
  NAMECALL R35 R1 K63 ["getNextOrder"]
  CALL R35 1 1
  SETTABLEKS R35 R34 K56 ["LayoutOrder"]
  CALL R32 2 1
  SETTABLEKS R32 R31 K100 ["Header"]
  GETUPVAL R33 3
  GETTABLEKS R32 R33 K11 ["createElement"]
  GETUPVAL R33 13
  DUPTABLE R34 K108 [{"LayoutOrder", "Text", "TextProps", "HorizontalAlignment", "LinkMap"}]
  NAMECALL R35 R1 K63 ["getNextOrder"]
  CALL R35 1 1
  SETTABLEKS R35 R34 K56 ["LayoutOrder"]
  JUMPIFNOTEQKS R11 K109 ["MissingIdVerification"] [+7]
  LOADK R37 K22 ["UGCValidation"]
  LOADK R38 K110 ["UploadBundleDenied_MissingIdVerification_Text"]
  NAMECALL R35 R2 K24 ["getText"]
  CALL R35 3 1
  JUMP [+16]
  JUMPIFNOTEQKS R11 K111 ["MissingPremiumSubscriptionTier"] [+7]
  LOADK R37 K22 ["UGCValidation"]
  LOADK R38 K112 ["UploadBundleDenied_MissingPremiumSubscriptionTier_Text"]
  NAMECALL R35 R2 K24 ["getText"]
  CALL R35 3 1
  JUMP [+8]
  LOADK R37 K22 ["UGCValidation"]
  LOADK R38 K113 ["UploadBundleDenied_UnknownError"]
  DUPTABLE R39 K115 [{"errorCode"}]
  SETTABLEKS R11 R39 K114 ["errorCode"]
  NAMECALL R35 R2 K24 ["getText"]
  CALL R35 4 1
  SETTABLEKS R35 R34 K27 ["Text"]
  DUPTABLE R35 K116 [{"Font", "TextSize", "TextXAlignment"}]
  GETIMPORT R36 K118 [Enum.Font.SourceSans]
  SETTABLEKS R36 R35 K81 ["Font"]
  GETTABLEKS R36 R3 K61 ["TextSize"]
  SETTABLEKS R36 R35 K61 ["TextSize"]
  GETIMPORT R36 K93 [Enum.TextXAlignment.Left]
  SETTABLEKS R36 R35 K83 ["TextXAlignment"]
  SETTABLEKS R35 R34 K106 ["TextProps"]
  GETIMPORT R35 K48 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R35 R34 K40 ["HorizontalAlignment"]
  NEWTABLE R35 2 0
  DUPTABLE R36 K121 [{"LinkText", "LinkCallback"}]
  LOADK R39 K22 ["UGCValidation"]
  LOADK R40 K122 ["UploadBundleDenied_MissingIdVerification_Link"]
  NAMECALL R37 R2 K24 ["getText"]
  CALL R37 3 1
  SETTABLEKS R37 R36 K119 ["LinkText"]
  DUPCLOSURE R37 K123 [PROTO_3]
  CAPTURE UPVAL U14
  CAPTURE UPVAL U15
  SETTABLEKS R37 R36 K120 ["LinkCallback"]
  SETTABLEKS R36 R35 K124 ["[Age_Verified]"]
  DUPTABLE R36 K121 [{"LinkText", "LinkCallback"}]
  LOADK R39 K22 ["UGCValidation"]
  LOADK R40 K125 ["UploadBundleDenied_MissingPremiumSubscriptionTier_Link"]
  NAMECALL R37 R2 K24 ["getText"]
  CALL R37 3 1
  SETTABLEKS R37 R36 K119 ["LinkText"]
  DUPCLOSURE R37 K126 [PROTO_4]
  CAPTURE UPVAL U14
  CAPTURE UPVAL U16
  SETTABLEKS R37 R36 K120 ["LinkCallback"]
  SETTABLEKS R36 R35 K127 ["[Premium_1000_Or_2200_Subscription]"]
  SETTABLEKS R35 R34 K107 ["LinkMap"]
  CALL R32 2 1
  SETTABLEKS R32 R31 K101 ["ErrorText"]
  CALL R28 3 1
  LOADB R29 0
  GETTABLEKS R31 R0 K92 ["Errors"]
  LENGTH R30 R31
  LOADN R31 0
  JUMPIFNOTLT R31 R30 [+69]
  GETUPVAL R30 3
  GETTABLEKS R29 R30 K11 ["createElement"]
  GETUPVAL R31 3
  GETTABLEKS R30 R31 K99 ["Fragment"]
  NEWTABLE R31 0 0
  DUPTABLE R32 K128 [{"Header"}]
  GETUPVAL R34 3
  GETTABLEKS R33 R34 K11 ["createElement"]
  GETUPVAL R34 10
  DUPTABLE R35 K103 [{"Text", "Style", "AutomaticSize", "Size", "TextXAlignment", "TextSize", "TextWrapped", "LayoutOrder"}]
  LOADK R38 K22 ["UGCValidation"]
  LOADK R39 K129 ["ValidationErrorsHeader"]
  NAMECALL R36 R2 K24 ["getText"]
  CALL R36 3 1
  SETTABLEKS R36 R35 K27 ["Text"]
  LOADK R36 K105 ["Bold"]
  SETTABLEKS R36 R35 K12 ["Style"]
  GETIMPORT R36 K87 [Enum.AutomaticSize.Y]
  SETTABLEKS R36 R35 K80 ["AutomaticSize"]
  GETIMPORT R36 K90 [UDim2.fromScale]
  LOADN R37 1
  LOADN R38 0
  CALL R36 2 1
  SETTABLEKS R36 R35 K55 ["Size"]
  GETIMPORT R36 K93 [Enum.TextXAlignment.Left]
  SETTABLEKS R36 R35 K83 ["TextXAlignment"]
  GETTABLEKS R36 R3 K61 ["TextSize"]
  SETTABLEKS R36 R35 K61 ["TextSize"]
  LOADB R36 1
  SETTABLEKS R36 R35 K84 ["TextWrapped"]
  NAMECALL R36 R1 K63 ["getNextOrder"]
  CALL R36 1 1
  SETTABLEKS R36 R35 K56 ["LayoutOrder"]
  CALL R33 2 1
  SETTABLEKS R33 R32 K100 ["Header"]
  GETUPVAL R34 17
  GETTABLEKS R33 R34 K130 ["map"]
  GETTABLEKS R34 R0 K92 ["Errors"]
  NEWCLOSURE R35 P5
  CAPTURE UPVAL U3
  CAPTURE UPVAL U10
  CAPTURE VAL R2
  CAPTURE UPVAL U18
  CAPTURE VAL R3
  CAPTURE VAL R1
  CALL R33 2 -1
  CALL R29 -1 1
  SETLIST R27 R28 2 [1]
  CALL R24 3 1
  SETTABLEKS R24 R23 K78 ["Warnings"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K52 ["RightColumn"]
  GETUPVAL R20 6
  CALL R20 0 1
  JUMPIFNOT R20 [+9]
  GETTABLEKS R21 R0 K32 ["ValidationCompleted"]
  NOT R20 R21
  JUMPIFNOT R20 [+5]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K11 ["createElement"]
  LOADK R21 K131 ["Folder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K53 ["Rerun_Disabled"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K37 ["Contents"]
  CALL R12 3 -1
  RETURN R12 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["BrowserService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AvatarCompatibilityPreviewer"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Dash"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R1 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R1 K10 ["Packages"]
  GETTABLEKS R5 R6 K13 ["React"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R1 K10 ["Packages"]
  GETTABLEKS R6 R7 K14 ["UGCValidation"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R1 K15 ["Src"]
  GETTABLEKS R8 R9 K16 ["Components"]
  GETTABLEKS R7 R8 K17 ["UGCValidationContext"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R1 K15 ["Src"]
  GETTABLEKS R9 R10 K18 ["Resources"]
  GETTABLEKS R8 R9 K19 ["Theme"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R1 K15 ["Src"]
  GETTABLEKS R10 R11 K20 ["Util"]
  GETTABLEKS R9 R10 K21 ["exhaustiveMatch"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R12 R1 K15 ["Src"]
  GETTABLEKS R11 R12 K20 ["Util"]
  GETTABLEKS R10 R11 K22 ["localizePlural"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R13 R1 K15 ["Src"]
  GETTABLEKS R12 R13 K23 ["Flags"]
  GETTABLEKS R11 R12 K24 ["getFFlagAvatarPreviewerRerunValidation"]
  CALL R10 1 1
  GETIMPORT R11 K1 [game]
  LOADK R13 K25 ["AvatarPreviewerAgeIDVerificationLink"]
  LOADK R14 K26 ["https://en.help.roblox.com/hc/en-us/articles/4407282410644-Age-ID-Verification"]
  NAMECALL R11 R11 K27 ["DefineFastString"]
  CALL R11 3 1
  GETIMPORT R12 K1 [game]
  LOADK R14 K28 ["AvatarPreviewerPremiumLink"]
  LOADK R15 K29 ["https://www.roblox.com/premium/membership"]
  NAMECALL R12 R12 K27 ["DefineFastString"]
  CALL R12 3 1
  GETTABLEKS R13 R3 K30 ["UI"]
  GETTABLEKS R14 R13 K31 ["Image"]
  GETTABLEKS R15 R13 K32 ["TextLabel"]
  GETTABLEKS R16 R13 K33 ["TextWithLinks"]
  GETTABLEKS R17 R13 K34 ["Pane"]
  GETTABLEKS R18 R13 K35 ["ScrollingFrame"]
  GETTABLEKS R19 R13 K36 ["StyledDialog"]
  GETTABLEKS R21 R3 K20 ["Util"]
  GETTABLEKS R20 R21 K37 ["LayoutOrderIterator"]
  GETTABLEKS R22 R3 K20 ["Util"]
  GETTABLEKS R21 R22 K38 ["StyleModifier"]
  GETTABLEKS R23 R3 K39 ["ContextServices"]
  GETTABLEKS R22 R23 K40 ["Localization"]
  GETTABLEKS R24 R3 K39 ["ContextServices"]
  GETTABLEKS R23 R24 K41 ["Stylizer"]
  DUPCLOSURE R24 K42 [PROTO_6]
  CAPTURE VAL R20
  CAPTURE VAL R22
  CAPTURE VAL R23
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R19
  CAPTURE VAL R10
  CAPTURE VAL R21
  CAPTURE VAL R17
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R9
  CAPTURE VAL R18
  CAPTURE VAL R16
  CAPTURE VAL R0
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R8
  RETURN R24 1
