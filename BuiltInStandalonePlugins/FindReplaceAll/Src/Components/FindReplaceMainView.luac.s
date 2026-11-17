PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["findActivationData"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 1
        5 JUMPIF                           R0 ; [+7]
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["findActivationData"]
       10 GETTABLEKS                       R1 R1 K1 ["showReplace"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["useRef"]
        7 LOADNIL                          R4
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K1 ["useState"]
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R5 R5 K2 ["minSearchHeaderHeight"]
       15 CALL                             R4 1 2
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K3 ["useCallback"]
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          VAL R5
       21 NEWTABLE                         R8 0 0
       23 CALL                             R6 2 1
       24 GETUPVAL                         R7 4
       25 GETTABLEKS                       R7 R7 K4 ["useToggleState"]
       27 LOADB                            R8 0
       28 CALL                             R7 1 1
       29 GETUPVAL                         R8 2
       30 GETTABLEKS                       R8 R8 K1 ["useState"]
       32 LOADB                            R9 0
       33 CALL                             R8 1 2
       34 GETUPVAL                         R10 2
       35 GETTABLEKS                       R10 R10 K5 ["useEffect"]
       37 NEWCLOSURE                       R11 P1
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R8
       40 CAPTURE                          VAL R9
       41 NEWTABLE                         R12 0 1
       43 GETTABLEKS                       R13 R0 K6 ["findActivationData"]
       45 SETLIST                          R12 R13 1 [1]
       47 CALL                             R10 2 0
       48 GETUPVAL                         R10 5
       49 LOADK                            R11 K7 ["Frame"]
       50 NEWTABLE                         R12 4 0
       52 LOADN                            R13 0
       53 SETTABLEKS                       R13 R12 K8 ["BorderSizePixel"]
       55 GETIMPORT                        R13 K11 [UDim2.fromScale]
       57 LOADN                            R14 1
       58 LOADN                            R15 1
       59 CALL                             R13 2 1
       60 SETTABLEKS                       R13 R12 K12 ["Size"]
       62 GETUPVAL                         R13 2
       63 GETTABLEKS                       R13 R13 K13 ["Tag"]
       65 LOADK                            R14 K14 ["FindReplaceAll-TopPadM FindReplaceAll-BG-Surface100 data-testid=MainViewFrame"]
       66 SETTABLE                         R14 R12 R13
       67 DUPTABLE                         R13 K18 [{"DropdownOverlay", "WidgetHeader", "WidgetBody"}]
       68 GETUPVAL                         R14 5
       69 LOADK                            R15 K7 ["Frame"]
       70 NEWTABLE                         R16 8 0
       72 GETIMPORT                        R17 K11 [UDim2.fromScale]
       74 LOADN                            R18 1
       75 LOADN                            R19 1
       76 CALL                             R17 2 1
       77 SETTABLEKS                       R17 R16 K12 ["Size"]
       79 LOADN                            R17 1
       80 SETTABLEKS                       R17 R16 K19 ["BackgroundTransparency"]
       82 LOADN                            R17 3
       83 SETTABLEKS                       R17 R16 K20 ["ZIndex"]
       85 SETTABLEKS                       R3 R16 K21 ["ref"]
       87 GETUPVAL                         R17 2
       88 GETTABLEKS                       R17 R17 K13 ["Tag"]
       90 LOADK                            R18 K22 ["FindReplaceAll-SidePadM"]
       91 SETTABLE                         R18 R16 R17
       92 CALL                             R14 2 1
       93 SETTABLEKS                       R14 R13 K15 ["DropdownOverlay"]
       95 GETUPVAL                         R14 5
       96 GETUPVAL                         R15 6
       97 DUPTABLE                         R16 K33 [{["LayoutOrder"], ["ZIndex"] = 2, ["dropdownOverlay"], ["onSearchHeaderSizeChange"], ["disableConfirmationDialog"], ["showReplace"], ["setShowReplace"], ["resultManager"], ["findActivationData"], ["enabled"], ["textBoxRef"]}]
       98 MOVE                             R17 R1
       99 CALL                             R17 0 1
      100 SETTABLEKS                       R17 R16 K23 ["LayoutOrder"]
      102 SETTABLEKS                       R3 R16 K25 ["dropdownOverlay"]
      104 SETTABLEKS                       R6 R16 K26 ["onSearchHeaderSizeChange"]
      106 GETTABLEKS                       R17 R7 K34 ["disable"]
      108 SETTABLEKS                       R17 R16 K27 ["disableConfirmationDialog"]
      110 SETTABLEKS                       R8 R16 K28 ["showReplace"]
      112 SETTABLEKS                       R9 R16 K29 ["setShowReplace"]
      114 SETTABLEKS                       R2 R16 K30 ["resultManager"]
      116 GETTABLEKS                       R17 R0 K6 ["findActivationData"]
      118 SETTABLEKS                       R17 R16 K6 ["findActivationData"]
      120 GETTABLEKS                       R17 R0 K31 ["enabled"]
      122 SETTABLEKS                       R17 R16 K31 ["enabled"]
      124 GETTABLEKS                       R17 R0 K32 ["textBoxRef"]
      126 SETTABLEKS                       R17 R16 K32 ["textBoxRef"]
      128 CALL                             R14 2 1
      129 SETTABLEKS                       R14 R13 K16 ["WidgetHeader"]
      131 GETUPVAL                         R14 5
      132 GETUPVAL                         R15 7
      133 DUPTABLE                         R16 K38 [{["LayoutOrder"], ["ZIndex"] = 2, ["headerOffset"], ["confirmationDialogVisible"], ["toggleConfirmationDialog"], ["showReplace"], ["resultManager"]}]
      134 MOVE                             R17 R1
      135 CALL                             R17 0 1
      136 SETTABLEKS                       R17 R16 K23 ["LayoutOrder"]
      138 SETTABLEKS                       R4 R16 K35 ["headerOffset"]
      140 GETTABLEKS                       R17 R7 K31 ["enabled"]
      142 SETTABLEKS                       R17 R16 K36 ["confirmationDialogVisible"]
      144 GETTABLEKS                       R17 R7 K39 ["toggle"]
      146 SETTABLEKS                       R17 R16 K37 ["toggleConfirmationDialog"]
      148 SETTABLEKS                       R8 R16 K28 ["showReplace"]
      150 SETTABLEKS                       R2 R16 K30 ["resultManager"]
      152 CALL                             R14 2 1
      153 SETTABLEKS                       R14 R13 K17 ["WidgetBody"]
      155 CALL                             R10 3 -1
      156 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K8 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R3 R3 K9 ["createNextOrder"]
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K10 ["Src"]
       34 GETTABLEKS                       R5 R5 K11 ["Components"]
       36 GETTABLEKS                       R5 R5 K12 ["FindReplaceWidgetHeader"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K10 ["Src"]
       43 GETTABLEKS                       R6 R6 K11 ["Components"]
       45 GETTABLEKS                       R6 R6 K13 ["FindReplaceWidgetBody"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K10 ["Src"]
       52 GETTABLEKS                       R7 R7 K14 ["Resources"]
       54 GETTABLEKS                       R7 R7 K15 ["StyleConstants"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K10 ["Src"]
       61 GETTABLEKS                       R8 R8 K16 ["Hooks"]
       63 GETTABLEKS                       R8 R8 K17 ["useResultsManager"]
       65 CALL                             R7 1 1
       66 GETTABLEKS                       R8 R1 K18 ["createElement"]
       68 DUPCLOSURE                       R9 K19 [PROTO_2]
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R5
       77 RETURN                           R9 1
