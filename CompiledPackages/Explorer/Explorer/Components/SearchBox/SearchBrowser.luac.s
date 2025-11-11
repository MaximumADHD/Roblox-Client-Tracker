PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["stepSelectedNode"]
  LOADN R3 255
  GETIMPORT R6 K4 [Enum.ModifierKey.Ctrl]
  NAMECALL R4 R1 K5 ["IsModifierKeyDown"]
  CALL R4 2 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K6 ["session"]
  GETTABLEKS R5 R6 K7 ["isInstanceIdSearched"]
  CALL R2 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["stepSelectedNode"]
  LOADN R3 1
  GETIMPORT R6 K4 [Enum.ModifierKey.Ctrl]
  NAMECALL R4 R1 K5 ["IsModifierKeyDown"]
  CALL R4 2 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K6 ["session"]
  GETTABLEKS R5 R6 K7 ["isInstanceIdSearched"]
  CALL R2 3 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["session"]
  GETTABLEKS R0 R1 K1 ["setSearch"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["session"]
  GETTABLEKS R1 R2 K2 ["getSearch"]
  CALL R1 0 1
  LOADB R2 1
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ContextServices"]
  GETTABLEKS R1 R2 K1 ["Localization"]
  NAMECALL R1 R1 K2 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["use"]
  GETTABLEKS R4 R0 K3 ["session"]
  GETTABLEKS R3 R4 K4 ["searchResultCountObservable"]
  CALL R2 1 1
  GETUPVAL R3 2
  GETTABLEKS R4 R0 K3 ["session"]
  CALL R3 1 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K5 ["useCallback"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R3
  CAPTURE VAL R0
  NEWTABLE R6 0 2
  GETTABLEKS R7 R3 K6 ["stepSelectedNode"]
  GETTABLEKS R9 R0 K3 ["session"]
  GETTABLEKS R8 R9 K7 ["isInstanceIdSearched"]
  SETLIST R6 R7 2 [1]
  CALL R4 2 1
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K5 ["useCallback"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R3
  CAPTURE VAL R0
  NEWTABLE R7 0 2
  GETTABLEKS R8 R3 K6 ["stepSelectedNode"]
  GETTABLEKS R10 R0 K3 ["session"]
  GETTABLEKS R9 R10 K7 ["isInstanceIdSearched"]
  SETLIST R7 R8 2 [1]
  CALL R5 2 1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K5 ["useCallback"]
  NEWCLOSURE R7 P2
  CAPTURE VAL R0
  NEWTABLE R8 0 2
  GETTABLEKS R10 R0 K3 ["session"]
  GETTABLEKS R9 R10 K8 ["setSearch"]
  GETTABLEKS R11 R0 K3 ["session"]
  GETTABLEKS R10 R11 K9 ["getSearch"]
  SETLIST R8 R9 2 [1]
  CALL R6 2 1
  GETUPVAL R7 4
  CALL R7 0 1
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  GETUPVAL R9 5
  LOADK R10 K10 ["Frame"]
  NEWTABLE R11 2 0
  GETTABLEKS R12 R0 K11 ["layoutOrder"]
  SETTABLEKS R12 R11 K12 ["LayoutOrder"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K13 ["Tag"]
  LOADK R13 K14 ["X-Row X-Middle Explorer-SidePadS Explorer-SearchBox-SearchBrowser data-testid=SearchBrowser"]
  SETTABLE R13 R11 R12
  DUPTABLE R12 K21 [{"LoadingSpinner", "ResultCount", "FindPrevious", "FindNext", "SelectAll", "Refresh"}]
  NOT R13 R8
  JUMPIFNOT R13 [+8]
  GETUPVAL R13 5
  GETUPVAL R14 6
  DUPTABLE R15 K22 [{"layoutOrder"}]
  MOVE R16 R7
  CALL R16 0 1
  SETTABLEKS R16 R15 K11 ["layoutOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K15 ["LoadingSpinner"]
  GETUPVAL R13 5
  LOADK R14 K23 ["TextLabel"]
  NEWTABLE R15 4 0
  MOVE R16 R7
  CALL R16 0 1
  SETTABLEKS R16 R15 K12 ["LayoutOrder"]
  JUMPIF R8 [+2]
  LOADK R16 K24 [""]
  JUMP [+19]
  JUMPIFNOTEQKN R2 K25 [1] [+7]
  LOADK R18 K26 ["SearchBrowser"]
  LOADK R19 K27 ["ResultCountSingular"]
  NAMECALL R16 R1 K28 ["getText"]
  CALL R16 3 1
  JUMP [+11]
  LOADK R18 K26 ["SearchBrowser"]
  LOADK R19 K29 ["ResultCountPlural_v2_1"]
  DUPTABLE R20 K31 [{"resultCount"}]
  GETUPVAL R21 7
  ORK R22 R2 K32 [0]
  CALL R21 1 1
  SETTABLEKS R21 R20 K30 ["resultCount"]
  NAMECALL R16 R1 K28 ["getText"]
  CALL R16 4 1
  SETTABLEKS R16 R15 K33 ["Text"]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K13 ["Tag"]
  LOADK R18 K34 ["Explorer-FillX data-testid=SearchBrowser-ResultCountLabel"]
  GETUPVAL R20 8
  CALL R20 0 1
  JUMPIFNOT R20 [+2]
  LOADK R19 K35 [" Explorer-Text-Size-14 Explorer-Content-Muted"]
  JUMP [+1]
  LOADK R19 K24 [""]
  CONCAT R17 R18 R19
  SETTABLE R17 R15 R16
  CALL R13 2 1
  SETTABLEKS R13 R12 K16 ["ResultCount"]
  GETUPVAL R13 5
  GETUPVAL R14 9
  DUPTABLE R15 K39 [{"image", "layoutOrder", "tooltipText", "onActivated"}]
  GETUPVAL R17 10
  GETTABLEKS R16 R17 K40 ["standard"]
  LOADK R17 K41 ["findPrevious"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K36 ["image"]
  MOVE R16 R7
  CALL R16 0 1
  SETTABLEKS R16 R15 K11 ["layoutOrder"]
  LOADK R18 K26 ["SearchBrowser"]
  LOADK R19 K42 ["SelectPreviousMatch"]
  NAMECALL R16 R1 K28 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K37 ["tooltipText"]
  SETTABLEKS R4 R15 K38 ["onActivated"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K17 ["FindPrevious"]
  GETUPVAL R13 5
  GETUPVAL R14 9
  DUPTABLE R15 K39 [{"image", "layoutOrder", "tooltipText", "onActivated"}]
  GETUPVAL R17 10
  GETTABLEKS R16 R17 K40 ["standard"]
  LOADK R17 K43 ["findNext"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K36 ["image"]
  MOVE R16 R7
  CALL R16 0 1
  SETTABLEKS R16 R15 K11 ["layoutOrder"]
  LOADK R18 K26 ["SearchBrowser"]
  LOADK R19 K44 ["SelectNextMatch"]
  NAMECALL R16 R1 K28 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K37 ["tooltipText"]
  SETTABLEKS R5 R15 K38 ["onActivated"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K18 ["FindNext"]
  GETUPVAL R13 5
  GETUPVAL R14 9
  DUPTABLE R15 K39 [{"image", "layoutOrder", "tooltipText", "onActivated"}]
  GETUPVAL R17 10
  GETTABLEKS R16 R17 K40 ["standard"]
  LOADK R17 K45 ["selectAll"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K36 ["image"]
  MOVE R16 R7
  CALL R16 0 1
  SETTABLEKS R16 R15 K11 ["layoutOrder"]
  LOADK R18 K26 ["SearchBrowser"]
  LOADK R19 K46 ["SelectAllMatches"]
  NAMECALL R16 R1 K28 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K37 ["tooltipText"]
  GETTABLEKS R17 R0 K3 ["session"]
  GETTABLEKS R16 R17 K47 ["selectAllSearchedIds"]
  SETTABLEKS R16 R15 K38 ["onActivated"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K19 ["SelectAll"]
  GETUPVAL R13 5
  GETUPVAL R14 9
  DUPTABLE R15 K39 [{"image", "layoutOrder", "tooltipText", "onActivated"}]
  GETUPVAL R17 10
  GETTABLEKS R16 R17 K40 ["standard"]
  LOADK R17 K48 ["refresh"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K36 ["image"]
  MOVE R16 R7
  CALL R16 0 1
  SETTABLEKS R16 R15 K11 ["layoutOrder"]
  LOADK R18 K26 ["SearchBrowser"]
  LOADK R19 K49 ["RefreshResults"]
  NAMECALL R16 R1 K28 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K37 ["tooltipText"]
  SETTABLEKS R6 R15 K38 ["onActivated"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K20 ["Refresh"]
  CALL R9 3 -1
  RETURN R9 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["ImageUrl"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K10 ["Components"]
  GETTABLEKS R5 R6 K11 ["SearchBox"]
  GETTABLEKS R4 R5 K12 ["LoadingSpinner"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K8 ["Util"]
  GETTABLEKS R5 R6 K13 ["Observable"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Parent"]
  GETTABLEKS R6 R7 K14 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R0 K15 ["RpcTypes"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K10 ["Components"]
  GETTABLEKS R9 R10 K11 ["SearchBox"]
  GETTABLEKS R8 R9 K16 ["SearchBrowserButton"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K8 ["Util"]
  GETTABLEKS R9 R10 K17 ["createNextOrder"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K18 ["Flags"]
  GETTABLEKS R10 R11 K19 ["getFFlagExplorerFixBlurryTextHopefully"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R0 K8 ["Util"]
  GETTABLEKS R11 R12 K20 ["localizeInt"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K21 ["Hooks"]
  GETTABLEKS R12 R13 K22 ["useSelectionStepper"]
  CALL R11 1 1
  GETTABLEKS R12 R5 K23 ["createElement"]
  DUPCLOSURE R13 K24 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R2
  RETURN R13 1
