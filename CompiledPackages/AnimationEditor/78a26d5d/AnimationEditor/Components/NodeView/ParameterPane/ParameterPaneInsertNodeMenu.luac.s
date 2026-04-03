PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createParameterAsync"]
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 0
        5 GETUPVAL                         R3 2
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 CALL                             R0 5 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["close"]
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
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R1 R2 K7 ["observeViewportRect"]
       22 LOADB                            R2 0
       23 CALL                             R1 1 1
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R2 R3 K8 ["getNodeInsertPosition"]
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
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K5 ["PARAMETER_MENUITEM_TABLE"]
       10 SETTABLEKS                       R4 R3 K3 ["items"]
       12 CALL                             R2 1 -1
       13 SETLIST                          R1 R2 -1 [1]
       15 CALL                             R0 1 -1
       16 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K2 ["useCallback"]
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
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R4 R5 K6 ["useMemo"]
       36 DUPCLOSURE                       R5 K7 [PROTO_2]
       37 CAPTURE                          UPVAL U4
       38 NEWTABLE                         R6 0 0
       40 CALL                             R4 2 1
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R5 R6 K8 ["createElement"]
       44 GETUPVAL                         R7 5
       45 GETTABLEKS                       R6 R7 K9 ["Menu"]
       47 DUPTABLE                         R7 K18 [{"isOpen", "onPressedOutside", "onActivated", "items", "side", "size", "width", "anchorRef"}]
       48 GETTABLEKS                       R8 R0 K10 ["isOpen"]
       50 SETTABLEKS                       R8 R7 K10 ["isOpen"]
       52 GETTABLEKS                       R8 R0 K3 ["close"]
       54 SETTABLEKS                       R8 R7 K11 ["onPressedOutside"]
       56 SETTABLEKS                       R3 R7 K12 ["onActivated"]
       58 SETTABLEKS                       R4 R7 K13 ["items"]
       60 GETUPVAL                         R11 5
       61 GETTABLEKS                       R10 R11 K19 ["Enums"]
       63 GETTABLEKS                       R9 R10 K20 ["PopoverSide"]
       65 GETTABLEKS                       R8 R9 K21 ["Right"]
       67 SETTABLEKS                       R8 R7 K14 ["side"]
       69 GETUPVAL                         R11 5
       70 GETTABLEKS                       R10 R11 K19 ["Enums"]
       72 GETTABLEKS                       R9 R10 K22 ["InputSize"]
       74 GETTABLEKS                       R8 R9 K23 ["XSmall"]
       76 SETTABLEKS                       R8 R7 K15 ["size"]
       78 GETUPVAL                         R8 6
       79 SETTABLEKS                       R8 R7 K16 ["width"]
       81 GETTABLEKS                       R8 R0 K17 ["anchorRef"]
       83 SETTABLEKS                       R8 R7 K17 ["anchorRef"]
       85 CALL                             R5 2 -1
       86 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R4 K9 ["NativeGraphContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R7 R0 K10 ["Components"]
       25 GETTABLEKS                       R6 R7 K11 ["NodeView"]
       27 GETTABLEKS                       R5 R6 K12 ["ParameterPane"]
       29 GETTABLEKS                       R4 R5 K13 ["Constants"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R8 R0 K10 ["Components"]
       36 GETTABLEKS                       R7 R8 K11 ["NodeView"]
       38 GETTABLEKS                       R6 R7 K12 ["ParameterPane"]
       40 GETTABLEKS                       R5 R6 K14 ["ParameterPaneUtils"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R7 R0 K6 ["Parent"]
       47 GETTABLEKS                       R6 R7 K15 ["React"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R8 R0 K8 ["Contexts"]
       54 GETTABLEKS                       R7 R8 K16 ["ViewportRectContext"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K19 [UDim.new]
       59 LOADN                            R8 0
       60 GETTABLEKS                       R9 R3 K20 ["PARAMETER_INSERT_ITEM_MENU_WIDTH"]
       62 CALL                             R7 2 1
       63 DUPCLOSURE                       R8 K21 [PROTO_3]
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R7
       71 RETURN                           R8 1
