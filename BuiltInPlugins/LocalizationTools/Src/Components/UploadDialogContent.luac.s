PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K5 [{"AutomaticSize", "Text", "TextColor", "LayoutOrder"}]
  GETIMPORT R4 K8 [Enum.AutomaticSize.XY]
  SETTABLEKS R4 R3 K1 ["AutomaticSize"]
  GETTABLEKS R4 R0 K2 ["Text"]
  SETTABLEKS R4 R3 K2 ["Text"]
  GETTABLEKS R4 R0 K9 ["Color"]
  SETTABLEKS R4 R3 K3 ["TextColor"]
  GETTABLEKS R4 R0 K4 ["LayoutOrder"]
  SETTABLEKS R4 R3 K4 ["LayoutOrder"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  LOADB R1 1
  GETTABLEKS R2 R0 K0 ["Content"]
  JUMPIFEQKS R2 K1 [""] [+12]
  LOADB R1 1
  GETTABLEKS R2 R0 K0 ["Content"]
  JUMPIFEQKNIL R2 [+7]
  GETTABLEKS R2 R0 K0 ["Content"]
  JUMPIFEQKN R2 K2 [0] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIFNOT R1 [+3]
  GETTABLEKS R2 R0 K3 ["ColorB"]
  JUMPIF R2 [+2]
  GETTABLEKS R2 R0 K4 ["ColorA"]
  GETIMPORT R3 K7 [string.format]
  LOADK R4 K8 ["%s %s"]
  GETTABLEKS R5 R0 K9 ["PreText"]
  JUMPIFNOT R1 [+2]
  LOADK R6 K10 ["none"]
  JUMP [+6]
  GETTABLEKS R7 R0 K0 ["Content"]
  FASTCALL1 TOSTRING R7 [+2]
  GETIMPORT R6 K12 [tostring]
  CALL R6 1 1
  CALL R3 3 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K13 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K17 [{"Text", "Color", "LayoutOrder"}]
  SETTABLEKS R3 R6 K14 ["Text"]
  SETTABLEKS R2 R6 K15 ["Color"]
  GETTABLEKS R7 R0 K16 ["LayoutOrder"]
  SETTABLEKS R7 R6 K16 ["LayoutOrder"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["Content"]
  JUMPIFEQKNIL R1 [+30]
  GETTABLEKS R1 R0 K0 ["Content"]
  JUMPIFEQKS R1 K1 [""] [+26]
  GETIMPORT R1 K4 [string.format]
  LOADK R2 K5 ["%s %s"]
  GETTABLEKS R3 R0 K6 ["PreText"]
  GETTABLEKS R4 R0 K0 ["Content"]
  CALL R1 3 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K11 [{"Text", "Color", "LayoutOrder"}]
  SETTABLEKS R1 R4 K8 ["Text"]
  GETTABLEKS R5 R0 K9 ["Color"]
  SETTABLEKS R5 R4 K9 ["Color"]
  GETTABLEKS R5 R0 K10 ["LayoutOrder"]
  SETTABLEKS R5 R4 K10 ["LayoutOrder"]
  CALL R2 2 -1
  RETURN R2 -1
  LOADNIL R1
  RETURN R1 1

PROTO_3:
  GETTABLEKS R2 R0 K0 ["Count"]
  LOADN R3 0
  JUMPIFLT R3 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIFNOT R1 [+3]
  GETTABLEKS R2 R0 K1 ["EnabledColor"]
  JUMPIF R2 [+2]
  GETTABLEKS R2 R0 K2 ["DisabledColor"]
  GETIMPORT R3 K5 [string.format]
  LOADK R4 K6 ["%s %d"]
  GETTABLEKS R5 R0 K7 ["PreText"]
  GETTABLEKS R6 R0 K0 ["Count"]
  CALL R3 3 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K8 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K12 [{"Text", "Color", "LayoutOrder"}]
  SETTABLEKS R3 R6 K9 ["Text"]
  SETTABLEKS R2 R6 K10 ["Color"]
  GETTABLEKS R7 R0 K11 ["LayoutOrder"]
  SETTABLEKS R7 R6 K11 ["LayoutOrder"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["CancelCallback"]
  GETTABLEKS R5 R1 K4 ["OkCallback"]
  GETTABLEKS R7 R1 K5 ["PatchInfo"]
  GETTABLEKS R6 R7 K6 ["totalRows"]
  GETTABLEKS R8 R1 K5 ["PatchInfo"]
  GETTABLEKS R7 R8 K7 ["totalTranslations"]
  GETTABLEKS R9 R1 K5 ["PatchInfo"]
  GETTABLEKS R8 R9 K8 ["supportedLocales"]
  GETTABLEKS R10 R1 K5 ["PatchInfo"]
  GETTABLEKS R9 R10 K9 ["unsupportedLocales"]
  GETTABLEKS R11 R1 K5 ["PatchInfo"]
  GETTABLEKS R10 R11 K10 ["numAddedEntries"]
  GETTABLEKS R12 R1 K5 ["PatchInfo"]
  GETTABLEKS R11 R12 K11 ["numAddedTranslations"]
  GETTABLEKS R13 R1 K5 ["PatchInfo"]
  GETTABLEKS R12 R13 K12 ["numChangedTranslations"]
  GETTABLEKS R14 R1 K5 ["PatchInfo"]
  GETTABLEKS R13 R14 K13 ["includeDeletes"]
  GETTABLEKS R15 R1 K5 ["PatchInfo"]
  GETTABLEKS R14 R15 K14 ["numRemovedEntries"]
  GETTABLEKS R16 R1 K5 ["PatchInfo"]
  GETTABLEKS R15 R16 K15 ["numRemovedTranslations"]
  GETTABLEKS R17 R1 K5 ["PatchInfo"]
  GETTABLEKS R16 R17 K16 ["newLanguages"]
  LOADNIL R17
  ADD R21 R11 R12
  ADD R20 R21 R15
  ADD R19 R20 R10
  ADD R18 R19 R14
  JUMPIFNOTEQKN R18 K17 [0] [+8]
  LOADK R20 K18 ["UploadDialogContent"]
  LOADK R21 K19 ["PatchEmptyMessage"]
  NAMECALL R18 R3 K20 ["getText"]
  CALL R18 3 1
  MOVE R17 R18
  JUMP [+6]
  LOADK R20 K18 ["UploadDialogContent"]
  LOADK R21 K21 ["UploadPatchMessage"]
  NAMECALL R18 R3 K20 ["getText"]
  CALL R18 3 1
  MOVE R17 R18
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K22 ["createElement"]
  LOADK R19 K23 ["Frame"]
  DUPTABLE R20 K27 [{"BackgroundTransparency", "BackgroundColor3", "Size"}]
  LOADN R21 0
  SETTABLEKS R21 R20 K24 ["BackgroundTransparency"]
  GETTABLEKS R21 R2 K28 ["MainBackground"]
  SETTABLEKS R21 R20 K25 ["BackgroundColor3"]
  GETIMPORT R21 K31 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 1
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K26 ["Size"]
  DUPTABLE R21 K36 [{"Padding", "Layout", "InfoFrame", "ButtonFrame"}]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K22 ["createElement"]
  LOADK R23 K37 ["UIPadding"]
  DUPTABLE R24 K41 [{"PaddingLeft", "PaddingRight", "PaddingTop"}]
  GETIMPORT R25 K43 [UDim.new]
  LOADN R26 0
  GETTABLEKS R27 R2 K32 ["Padding"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K38 ["PaddingLeft"]
  GETIMPORT R25 K43 [UDim.new]
  LOADN R26 0
  GETTABLEKS R27 R2 K32 ["Padding"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K39 ["PaddingRight"]
  GETIMPORT R25 K43 [UDim.new]
  LOADN R26 0
  GETTABLEKS R27 R2 K32 ["Padding"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K40 ["PaddingTop"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K32 ["Padding"]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K22 ["createElement"]
  LOADK R23 K44 ["UIListLayout"]
  DUPTABLE R24 K46 [{"SortOrder"}]
  GETIMPORT R25 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R25 R24 K45 ["SortOrder"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K33 ["Layout"]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K22 ["createElement"]
  LOADK R23 K23 ["Frame"]
  DUPTABLE R24 K50 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K24 ["BackgroundTransparency"]
  LOADN R25 1
  SETTABLEKS R25 R24 K48 ["LayoutOrder"]
  GETIMPORT R25 K31 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 0
  GETTABLEKS R29 R2 K51 ["PatchInfoFrameHeight"]
  CALL R25 4 1
  SETTABLEKS R25 R24 K26 ["Size"]
  DUPTABLE R25 K57 [{"Layout", "TableContentTitle", "TableContentFrame", "ThisPatchWillTitle", "ThisPatchWillFrame", "Message"}]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K22 ["createElement"]
  LOADK R27 K44 ["UIListLayout"]
  DUPTABLE R28 K46 [{"SortOrder"}]
  GETIMPORT R29 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R29 R28 K45 ["SortOrder"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K33 ["Layout"]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K22 ["createElement"]
  GETUPVAL R27 1
  DUPTABLE R28 K60 [{"Color", "LayoutOrder", "Text"}]
  GETTABLEKS R29 R2 K61 ["BrightText"]
  SETTABLEKS R29 R28 K58 ["Color"]
  LOADN R29 1
  SETTABLEKS R29 R28 K48 ["LayoutOrder"]
  LOADK R31 K18 ["UploadDialogContent"]
  LOADK R32 K62 ["PatchContainsLabel"]
  NAMECALL R29 R3 K20 ["getText"]
  CALL R29 3 1
  SETTABLEKS R29 R28 K59 ["Text"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K52 ["TableContentTitle"]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K22 ["createElement"]
  LOADK R27 K23 ["Frame"]
  DUPTABLE R28 K50 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R29 1
  SETTABLEKS R29 R28 K24 ["BackgroundTransparency"]
  LOADN R29 2
  SETTABLEKS R29 R28 K48 ["LayoutOrder"]
  GETIMPORT R29 K31 [UDim2.new]
  LOADN R30 1
  LOADN R31 0
  LOADN R32 0
  GETTABLEKS R33 R2 K63 ["TableContentsFrameHeight"]
  CALL R29 4 1
  SETTABLEKS R29 R28 K26 ["Size"]
  DUPTABLE R29 K68 [{"Layout", "Padding", "TotalRowsLine", "TranslationsLine", "SupportedLocales", "UnsupportedLocales"}]
  GETUPVAL R31 0
  GETTABLEKS R30 R31 K22 ["createElement"]
  LOADK R31 K44 ["UIListLayout"]
  DUPTABLE R32 K46 [{"SortOrder"}]
  GETIMPORT R33 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R33 R32 K45 ["SortOrder"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K33 ["Layout"]
  GETUPVAL R31 0
  GETTABLEKS R30 R31 K22 ["createElement"]
  LOADK R31 K37 ["UIPadding"]
  DUPTABLE R32 K69 [{"PaddingLeft", "PaddingTop"}]
  GETIMPORT R33 K43 [UDim.new]
  LOADN R34 0
  GETTABLEKS R35 R2 K70 ["TableContentPaddingLeft"]
  CALL R33 2 1
  SETTABLEKS R33 R32 K38 ["PaddingLeft"]
  GETIMPORT R33 K43 [UDim.new]
  LOADN R34 0
  GETTABLEKS R35 R2 K71 ["TableContentPaddingTop"]
  CALL R33 2 1
  SETTABLEKS R33 R32 K40 ["PaddingTop"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K32 ["Padding"]
  GETUPVAL R31 0
  GETTABLEKS R30 R31 K22 ["createElement"]
  GETUPVAL R31 2
  DUPTABLE R32 K76 [{"PreText", "Content", "ColorA", "ColorB", "LayoutOrder"}]
  LOADK R35 K18 ["UploadDialogContent"]
  LOADK R36 K77 ["PatchTotalRowsLabel"]
  NAMECALL R33 R3 K20 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K72 ["PreText"]
  SETTABLEKS R6 R32 K73 ["Content"]
  GETTABLEKS R33 R2 K61 ["BrightText"]
  SETTABLEKS R33 R32 K74 ["ColorA"]
  GETTABLEKS R33 R2 K78 ["ErrorText"]
  SETTABLEKS R33 R32 K75 ["ColorB"]
  LOADN R33 1
  SETTABLEKS R33 R32 K48 ["LayoutOrder"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K64 ["TotalRowsLine"]
  GETUPVAL R31 0
  GETTABLEKS R30 R31 K22 ["createElement"]
  GETUPVAL R31 2
  DUPTABLE R32 K76 [{"PreText", "Content", "ColorA", "ColorB", "LayoutOrder"}]
  LOADK R35 K18 ["UploadDialogContent"]
  LOADK R36 K79 ["PatchTotalTranslationsLabel"]
  NAMECALL R33 R3 K20 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K72 ["PreText"]
  SETTABLEKS R7 R32 K73 ["Content"]
  GETTABLEKS R33 R2 K61 ["BrightText"]
  SETTABLEKS R33 R32 K74 ["ColorA"]
  GETTABLEKS R33 R2 K78 ["ErrorText"]
  SETTABLEKS R33 R32 K75 ["ColorB"]
  LOADN R33 2
  SETTABLEKS R33 R32 K48 ["LayoutOrder"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K65 ["TranslationsLine"]
  GETUPVAL R31 0
  GETTABLEKS R30 R31 K22 ["createElement"]
  GETUPVAL R31 2
  DUPTABLE R32 K76 [{"PreText", "Content", "ColorA", "ColorB", "LayoutOrder"}]
  LOADK R35 K18 ["UploadDialogContent"]
  LOADK R36 K80 ["PatchLanguagesLabel"]
  NAMECALL R33 R3 K20 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K72 ["PreText"]
  SETTABLEKS R8 R32 K73 ["Content"]
  GETTABLEKS R33 R2 K61 ["BrightText"]
  SETTABLEKS R33 R32 K74 ["ColorA"]
  GETTABLEKS R33 R2 K81 ["DimmedText"]
  SETTABLEKS R33 R32 K75 ["ColorB"]
  LOADN R33 3
  SETTABLEKS R33 R32 K48 ["LayoutOrder"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K66 ["SupportedLocales"]
  GETUPVAL R31 0
  GETTABLEKS R30 R31 K22 ["createElement"]
  GETUPVAL R31 3
  DUPTABLE R32 K82 [{"PreText", "Content", "Color", "LayoutOrder"}]
  LOADK R35 K18 ["UploadDialogContent"]
  LOADK R36 K83 ["PatchInvalidLanguagesLabel"]
  NAMECALL R33 R3 K20 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K72 ["PreText"]
  SETTABLEKS R9 R32 K73 ["Content"]
  GETTABLEKS R33 R2 K84 ["WarningText"]
  SETTABLEKS R33 R32 K58 ["Color"]
  LOADN R33 4
  SETTABLEKS R33 R32 K48 ["LayoutOrder"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K67 ["UnsupportedLocales"]
  CALL R26 3 1
  SETTABLEKS R26 R25 K53 ["TableContentFrame"]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K22 ["createElement"]
  GETUPVAL R27 1
  DUPTABLE R28 K85 [{"Text", "Color", "LayoutOrder"}]
  LOADK R31 K18 ["UploadDialogContent"]
  LOADK R32 K86 ["PatchWillLabel"]
  NAMECALL R29 R3 K20 ["getText"]
  CALL R29 3 1
  SETTABLEKS R29 R28 K59 ["Text"]
  GETTABLEKS R29 R2 K61 ["BrightText"]
  SETTABLEKS R29 R28 K58 ["Color"]
  LOADN R29 3
  SETTABLEKS R29 R28 K48 ["LayoutOrder"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K54 ["ThisPatchWillTitle"]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K22 ["createElement"]
  LOADK R27 K23 ["Frame"]
  DUPTABLE R28 K50 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R29 1
  SETTABLEKS R29 R28 K24 ["BackgroundTransparency"]
  LOADN R29 4
  SETTABLEKS R29 R28 K48 ["LayoutOrder"]
  GETIMPORT R29 K31 [UDim2.new]
  LOADN R30 1
  LOADN R31 0
  LOADN R32 0
  GETTABLEKS R33 R2 K87 ["ThisPatchWIllFrameHeight"]
  CALL R29 4 1
  SETTABLEKS R29 R28 K26 ["Size"]
  DUPTABLE R29 K94 [{"Layout", "Padding", "AddEntriesLine", "AddTranslationsLine", "ChangeLine", "DeleteEntriesLine", "DeleteTranslationsLine", "AddLanguagesLine"}]
  GETUPVAL R31 0
  GETTABLEKS R30 R31 K22 ["createElement"]
  LOADK R31 K44 ["UIListLayout"]
  DUPTABLE R32 K46 [{"SortOrder"}]
  GETIMPORT R33 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R33 R32 K45 ["SortOrder"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K33 ["Layout"]
  GETUPVAL R31 0
  GETTABLEKS R30 R31 K22 ["createElement"]
  LOADK R31 K37 ["UIPadding"]
  DUPTABLE R32 K69 [{"PaddingLeft", "PaddingTop"}]
  GETIMPORT R33 K43 [UDim.new]
  LOADN R34 0
  GETTABLEKS R35 R2 K70 ["TableContentPaddingLeft"]
  CALL R33 2 1
  SETTABLEKS R33 R32 K38 ["PaddingLeft"]
  GETIMPORT R33 K43 [UDim.new]
  LOADN R34 0
  GETTABLEKS R35 R2 K71 ["TableContentPaddingTop"]
  CALL R33 2 1
  SETTABLEKS R33 R32 K40 ["PaddingTop"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K32 ["Padding"]
  GETUPVAL R31 0
  GETTABLEKS R30 R31 K22 ["createElement"]
  GETUPVAL R31 4
  DUPTABLE R32 K98 [{"PreText", "Count", "EnabledColor", "DisabledColor", "LayoutOrder"}]
  LOADK R35 K18 ["UploadDialogContent"]
  LOADK R36 K99 ["AddEntriesPreText"]
  NAMECALL R33 R3 K20 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K72 ["PreText"]
  SETTABLEKS R10 R32 K95 ["Count"]
  GETTABLEKS R33 R2 K61 ["BrightText"]
  SETTABLEKS R33 R32 K96 ["EnabledColor"]
  GETTABLEKS R33 R2 K81 ["DimmedText"]
  SETTABLEKS R33 R32 K97 ["DisabledColor"]
  LOADN R33 1
  SETTABLEKS R33 R32 K48 ["LayoutOrder"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K88 ["AddEntriesLine"]
  GETUPVAL R31 0
  GETTABLEKS R30 R31 K22 ["createElement"]
  GETUPVAL R31 4
  DUPTABLE R32 K98 [{"PreText", "Count", "EnabledColor", "DisabledColor", "LayoutOrder"}]
  LOADK R35 K18 ["UploadDialogContent"]
  LOADK R36 K100 ["AddTranslationsPretext"]
  NAMECALL R33 R3 K20 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K72 ["PreText"]
  SETTABLEKS R11 R32 K95 ["Count"]
  GETTABLEKS R33 R2 K61 ["BrightText"]
  SETTABLEKS R33 R32 K96 ["EnabledColor"]
  GETTABLEKS R33 R2 K81 ["DimmedText"]
  SETTABLEKS R33 R32 K97 ["DisabledColor"]
  LOADN R33 2
  SETTABLEKS R33 R32 K48 ["LayoutOrder"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K89 ["AddTranslationsLine"]
  GETUPVAL R31 0
  GETTABLEKS R30 R31 K22 ["createElement"]
  GETUPVAL R31 4
  DUPTABLE R32 K98 [{"PreText", "Count", "EnabledColor", "DisabledColor", "LayoutOrder"}]
  LOADK R35 K18 ["UploadDialogContent"]
  LOADK R36 K101 ["ChangeTranslationsPretext"]
  NAMECALL R33 R3 K20 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K72 ["PreText"]
  SETTABLEKS R12 R32 K95 ["Count"]
  GETTABLEKS R33 R2 K61 ["BrightText"]
  SETTABLEKS R33 R32 K96 ["EnabledColor"]
  GETTABLEKS R33 R2 K81 ["DimmedText"]
  SETTABLEKS R33 R32 K97 ["DisabledColor"]
  LOADN R33 3
  SETTABLEKS R33 R32 K48 ["LayoutOrder"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K90 ["ChangeLine"]
  MOVE R30 R13
  JUMPIFNOT R30 [+26]
  GETUPVAL R31 0
  GETTABLEKS R30 R31 K22 ["createElement"]
  GETUPVAL R31 4
  DUPTABLE R32 K98 [{"PreText", "Count", "EnabledColor", "DisabledColor", "LayoutOrder"}]
  LOADK R35 K18 ["UploadDialogContent"]
  LOADK R36 K102 ["DeleteEntriesPretext"]
  NAMECALL R33 R3 K20 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K72 ["PreText"]
  SETTABLEKS R14 R32 K95 ["Count"]
  GETTABLEKS R33 R2 K61 ["BrightText"]
  SETTABLEKS R33 R32 K96 ["EnabledColor"]
  GETTABLEKS R33 R2 K81 ["DimmedText"]
  SETTABLEKS R33 R32 K97 ["DisabledColor"]
  LOADN R33 4
  SETTABLEKS R33 R32 K48 ["LayoutOrder"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K91 ["DeleteEntriesLine"]
  MOVE R30 R13
  JUMPIFNOT R30 [+26]
  GETUPVAL R31 0
  GETTABLEKS R30 R31 K22 ["createElement"]
  GETUPVAL R31 4
  DUPTABLE R32 K98 [{"PreText", "Count", "EnabledColor", "DisabledColor", "LayoutOrder"}]
  LOADK R35 K18 ["UploadDialogContent"]
  LOADK R36 K103 ["DeleteTranslationsPretext"]
  NAMECALL R33 R3 K20 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K72 ["PreText"]
  SETTABLEKS R15 R32 K95 ["Count"]
  GETTABLEKS R33 R2 K61 ["BrightText"]
  SETTABLEKS R33 R32 K96 ["EnabledColor"]
  GETTABLEKS R33 R2 K81 ["DimmedText"]
  SETTABLEKS R33 R32 K97 ["DisabledColor"]
  LOADN R33 5
  SETTABLEKS R33 R32 K48 ["LayoutOrder"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K92 ["DeleteTranslationsLine"]
  LOADB R30 0
  JUMPIFEQKNIL R16 [+29]
  LOADB R30 0
  JUMPIFEQKS R16 K104 [""] [+26]
  GETUPVAL R31 0
  GETTABLEKS R30 R31 K22 ["createElement"]
  GETUPVAL R31 1
  DUPTABLE R32 K85 [{"Text", "Color", "LayoutOrder"}]
  GETIMPORT R33 K107 [string.format]
  LOADK R34 K108 ["%s %s"]
  LOADK R37 K18 ["UploadDialogContent"]
  LOADK R38 K109 ["AddLanguagesPretext"]
  NAMECALL R35 R3 K20 ["getText"]
  CALL R35 3 1
  MOVE R36 R16
  CALL R33 3 1
  SETTABLEKS R33 R32 K59 ["Text"]
  GETTABLEKS R33 R2 K61 ["BrightText"]
  SETTABLEKS R33 R32 K58 ["Color"]
  LOADN R33 6
  SETTABLEKS R33 R32 K48 ["LayoutOrder"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K93 ["AddLanguagesLine"]
  CALL R26 3 1
  SETTABLEKS R26 R25 K55 ["ThisPatchWillFrame"]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K22 ["createElement"]
  GETUPVAL R27 1
  DUPTABLE R28 K60 [{"Color", "LayoutOrder", "Text"}]
  GETTABLEKS R29 R2 K61 ["BrightText"]
  SETTABLEKS R29 R28 K58 ["Color"]
  LOADN R29 5
  SETTABLEKS R29 R28 K48 ["LayoutOrder"]
  SETTABLEKS R17 R28 K59 ["Text"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K56 ["Message"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K34 ["InfoFrame"]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K22 ["createElement"]
  LOADK R23 K23 ["Frame"]
  DUPTABLE R24 K50 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K24 ["BackgroundTransparency"]
  LOADN R25 2
  SETTABLEKS R25 R24 K48 ["LayoutOrder"]
  GETIMPORT R25 K31 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 0
  GETTABLEKS R29 R2 K110 ["ButtonFrameHeight"]
  CALL R25 4 1
  SETTABLEKS R25 R24 K26 ["Size"]
  DUPTABLE R25 K113 [{"Cancel", "Confirm"}]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K22 ["createElement"]
  GETUPVAL R27 5
  DUPTABLE R28 K117 [{"LayoutOrder", "OnClick", "Position", "Size", "Style", "Text"}]
  LOADN R29 1
  SETTABLEKS R29 R28 K48 ["LayoutOrder"]
  SETTABLEKS R4 R28 K114 ["OnClick"]
  GETIMPORT R29 K31 [UDim2.new]
  LOADK R30 K118 [0.5]
  GETTABLEKS R33 R2 K119 ["ButtonWidth"]
  MINUS R32 R33
  GETTABLEKS R33 R2 K32 ["Padding"]
  SUB R31 R32 R33
  LOADN R32 0
  LOADN R33 0
  CALL R29 4 1
  SETTABLEKS R29 R28 K115 ["Position"]
  GETIMPORT R29 K31 [UDim2.new]
  LOADN R30 0
  GETTABLEKS R31 R2 K119 ["ButtonWidth"]
  LOADN R32 0
  GETTABLEKS R33 R2 K120 ["ButtonHeight"]
  CALL R29 4 1
  SETTABLEKS R29 R28 K26 ["Size"]
  LOADK R29 K121 ["TextButton"]
  SETTABLEKS R29 R28 K116 ["Style"]
  LOADK R31 K18 ["UploadDialogContent"]
  LOADK R32 K122 ["CancelButton"]
  NAMECALL R29 R3 K20 ["getText"]
  CALL R29 3 1
  SETTABLEKS R29 R28 K59 ["Text"]
  NEWTABLE R29 0 1
  GETUPVAL R31 0
  GETTABLEKS R30 R31 K22 ["createElement"]
  GETUPVAL R31 6
  DUPTABLE R32 K124 [{"Cursor"}]
  LOADK R33 K125 ["PointingHand"]
  SETTABLEKS R33 R32 K123 ["Cursor"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  SETTABLEKS R26 R25 K111 ["Cancel"]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K22 ["createElement"]
  GETUPVAL R27 5
  DUPTABLE R28 K117 [{"LayoutOrder", "OnClick", "Position", "Size", "Style", "Text"}]
  LOADN R29 2
  SETTABLEKS R29 R28 K48 ["LayoutOrder"]
  SETTABLEKS R5 R28 K114 ["OnClick"]
  GETIMPORT R29 K31 [UDim2.new]
  LOADK R30 K118 [0.5]
  GETTABLEKS R31 R2 K32 ["Padding"]
  LOADN R32 0
  LOADN R33 0
  CALL R29 4 1
  SETTABLEKS R29 R28 K115 ["Position"]
  GETIMPORT R29 K31 [UDim2.new]
  LOADN R30 0
  GETTABLEKS R31 R2 K119 ["ButtonWidth"]
  LOADN R32 0
  GETTABLEKS R33 R2 K120 ["ButtonHeight"]
  CALL R29 4 1
  SETTABLEKS R29 R28 K26 ["Size"]
  LOADK R29 K126 ["PrimeTextButton"]
  SETTABLEKS R29 R28 K116 ["Style"]
  LOADK R31 K18 ["UploadDialogContent"]
  LOADK R32 K127 ["ConfirmButton"]
  NAMECALL R29 R3 K20 ["getText"]
  CALL R29 3 1
  SETTABLEKS R29 R28 K59 ["Text"]
  NEWTABLE R29 0 1
  GETUPVAL R31 0
  GETTABLEKS R30 R31 K22 ["createElement"]
  GETUPVAL R31 6
  DUPTABLE R32 K124 [{"Cursor"}]
  LOADK R33 K125 ["PointingHand"]
  SETTABLEKS R33 R32 K123 ["Cursor"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  SETTABLEKS R26 R25 K112 ["Confirm"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K35 ["ButtonFrame"]
  CALL R18 3 -1
  RETURN R18 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R5 R2 K10 ["UI"]
  GETTABLEKS R6 R5 K11 ["Button"]
  GETTABLEKS R7 R5 K12 ["HoverArea"]
  GETTABLEKS R8 R5 K13 ["TextLabel"]
  GETTABLEKS R9 R1 K14 ["PureComponent"]
  LOADK R11 K15 ["UploadDialogContent"]
  NAMECALL R9 R9 K16 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K17 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R8
  DUPCLOSURE R11 K18 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R10
  DUPCLOSURE R12 K19 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R10
  DUPCLOSURE R13 K20 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R10
  DUPCLOSURE R14 K21 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R14 R9 K22 ["render"]
  MOVE R14 R4
  DUPTABLE R15 K25 [{"Stylizer", "Localization"}]
  GETTABLEKS R16 R3 K23 ["Stylizer"]
  SETTABLEKS R16 R15 K23 ["Stylizer"]
  GETTABLEKS R16 R3 K24 ["Localization"]
  SETTABLEKS R16 R15 K24 ["Localization"]
  CALL R14 1 1
  MOVE R15 R9
  CALL R14 1 1
  MOVE R9 R14
  RETURN R9 1
