PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createParameterAsync"]
        3 DUPTABLE                         R1 K4 [{"parameterType", "allowDuplication", "pinPosition"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["parameterType"]
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["allowDuplication"]
       10 GETUPVAL                         R2 2
       11 SETTABLEKS                       R2 R1 K3 ["pinPosition"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["close"]
        3 CALL                             R1 0 0
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R4 R0
        6 GETIMPORT                        R3 K2 [typeof]
        8 CALL                             R3 1 1
        9 JUMPIFNOTEQKS                    R3 K3 ["number"] ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       15 LOADK                            R3 K4 ["attempted to insert with invalid parameter id type"]
       16 GETIMPORT                        R1 K6 [assert]
       18 CALL                             R1 2 0
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K7 ["observeViewportRect"]
       22 LOADB                            R2 0
       23 CALL                             R1 1 1
       24 GETUPVAL                         R2 2
       25 GETTABLEKS                       R2 R2 K8 ["getNodeInsertPosition"]
       27 MOVE                             R3 R1
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K11 [task.spawn]
       31 NEWCLOSURE                       R4 P0
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R2
       35 CALL                             R3 1 0
       36 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [table.freeze]
        2 NEWTABLE                         R1 0 1
        4 GETIMPORT                        R2 K2 [table.freeze]
        6 DUPTABLE                         R3 K4 [{"items"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K5 ["PARAMETER_MENUITEM_TABLE"]
       10 SETTABLEKS                       R4 R3 K3 ["items"]
       12 CALL                             R2 1 -1
       13 SETLIST                          R1 R2 -1 [1]
       15 CALL                             R0 1 -1
       16 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R1
       22 NEWTABLE                         R5 0 3
       24 GETTABLEKS                       R6 R0 K3 ["close"]
       26 GETTABLEKS                       R7 R1 K4 ["createParameterAsync"]
       28 GETTABLEKS                       R8 R2 K5 ["observeViewportRect"]
       30 SETLIST                          R5 R6 3 [1]
       32 CALL                             R3 2 1
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K6 ["useMemo"]
       36 DUPCLOSURE                       R5 K7 [PROTO_2]
       37 CAPTURE                          UPVAL U4
       38 NEWTABLE                         R6 0 0
       40 CALL                             R4 2 1
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R5 R5 K8 ["createElement"]
       44 GETUPVAL                         R6 5
       45 GETTABLEKS                       R6 R6 K9 ["Menu"]
       47 DUPTABLE                         R7 K18 [{"isOpen", "onPressedOutside", "onActivated", "items", "side", "size", "width", "anchorRef"}]
       48 GETTABLEKS                       R8 R0 K10 ["isOpen"]
       50 SETTABLEKS                       R8 R7 K10 ["isOpen"]
       52 GETTABLEKS                       R8 R0 K3 ["close"]
       54 SETTABLEKS                       R8 R7 K11 ["onPressedOutside"]
       56 SETTABLEKS                       R3 R7 K12 ["onActivated"]
       58 SETTABLEKS                       R4 R7 K13 ["items"]
       60 GETUPVAL                         R8 5
       61 GETTABLEKS                       R8 R8 K19 ["Enums"]
       63 GETTABLEKS                       R8 R8 K20 ["PopoverSide"]
       65 GETTABLEKS                       R8 R8 K21 ["Right"]
       67 SETTABLEKS                       R8 R7 K14 ["side"]
       69 GETUPVAL                         R8 5
       70 GETTABLEKS                       R8 R8 K19 ["Enums"]
       72 GETTABLEKS                       R8 R8 K22 ["InputSize"]
       74 GETTABLEKS                       R8 R8 K23 ["XSmall"]
       76 SETTABLEKS                       R8 R7 K15 ["size"]
       78 GETUPVAL                         R8 6
       79 SETTABLEKS                       R8 R7 K16 ["width"]
       81 GETTABLEKS                       R8 R0 K17 ["anchorRef"]
       83 SETTABLEKS                       R8 R7 K17 ["anchorRef"]
       85 CALL                             R5 2 -1
       86 RETURN                           R5 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+7]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["createElement"]
        6 GETUPVAL                         R2 2
        7 MOVE                             R3 R0
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R2 R0 K1 ["close"]
       13 CALL                             R1 1 1
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K0 ["createElement"]
       17 GETUPVAL                         R3 4
       18 GETTABLEKS                       R3 R3 K2 ["Menu"]
       20 DUPTABLE                         R4 K10 [{"isOpen", "onPressedOutside", "items", "side", "size", "width", "anchorRef"}]
       21 GETTABLEKS                       R5 R0 K3 ["isOpen"]
       23 SETTABLEKS                       R5 R4 K3 ["isOpen"]
       25 GETTABLEKS                       R5 R0 K1 ["close"]
       27 SETTABLEKS                       R5 R4 K4 ["onPressedOutside"]
       29 SETTABLEKS                       R1 R4 K5 ["items"]
       31 GETUPVAL                         R5 4
       32 GETTABLEKS                       R5 R5 K11 ["Enums"]
       34 GETTABLEKS                       R5 R5 K12 ["PopoverSide"]
       36 GETTABLEKS                       R5 R5 K13 ["Right"]
       38 SETTABLEKS                       R5 R4 K6 ["side"]
       40 GETUPVAL                         R5 4
       41 GETTABLEKS                       R5 R5 K11 ["Enums"]
       43 GETTABLEKS                       R5 R5 K14 ["InputSize"]
       45 GETTABLEKS                       R5 R5 K15 ["XSmall"]
       47 SETTABLEKS                       R5 R4 K7 ["size"]
       49 GETUPVAL                         R5 5
       50 SETTABLEKS                       R5 R4 K8 ["width"]
       52 GETTABLEKS                       R5 R0 K9 ["anchorRef"]
       54 SETTABLEKS                       R5 R4 K9 ["anchorRef"]
       56 CALL                             R2 2 -1
       57 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K9 ["NativeGraphContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["NodeView"]
       27 GETTABLEKS                       R4 R4 K12 ["ParameterPane"]
       29 GETTABLEKS                       R4 R4 K13 ["Constants"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K10 ["Components"]
       36 GETTABLEKS                       R5 R5 K11 ["NodeView"]
       38 GETTABLEKS                       R5 R5 K12 ["ParameterPane"]
       40 GETTABLEKS                       R5 R5 K14 ["ParameterPaneUtils"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Parent"]
       47 GETTABLEKS                       R6 R6 K15 ["React"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Contexts"]
       54 GETTABLEKS                       R7 R7 K16 ["ViewportRectContext"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K17 ["Flags"]
       61 GETTABLEKS                       R8 R8 K18 ["getFFlagAnimGraphInsertParameterContextMenu"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K19 ["Hooks"]
       68 GETTABLEKS                       R9 R9 K20 ["useParameterMenuItems"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K23 [UDim.new]
       73 LOADN                            R10 0
       74 GETTABLEKS                       R11 R3 K24 ["PARAMETER_INSERT_ITEM_MENU_WIDTH"]
       76 CALL                             R9 2 1
       77 DUPCLOSURE                       R10 K25 [PROTO_3]
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R9
       85 DUPCLOSURE                       R11 K26 [PROTO_4]
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R9
       92 RETURN                           R11 1
