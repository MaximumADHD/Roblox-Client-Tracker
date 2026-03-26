PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["close"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["triggerRename"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["close"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["deleteNodeInstanceAsync"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K2 ["nodeId"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [table.freeze]
        2 NEWTABLE                         R1 0 1
        4 GETIMPORT                        R2 K2 [table.freeze]
        6 DUPTABLE                         R3 K4 [{"items"}]
        7 GETIMPORT                        R4 K2 [table.freeze]
        9 NEWTABLE                         R5 0 2
       11 GETIMPORT                        R6 K2 [table.freeze]
       13 DUPTABLE                         R7 K9 [{"id", "text", "isDisabled", "onActivated"}]
       14 LOADK                            R8 K10 ["Rename"]
       15 SETTABLEKS                       R8 R7 K5 ["id"]
       17 LOADK                            R8 K10 ["Rename"]
       18 SETTABLEKS                       R8 R7 K6 ["text"]
       20 LOADB                            R8 0
       21 SETTABLEKS                       R8 R7 K7 ["isDisabled"]
       23 NEWCLOSURE                       R8 P0
       24 CAPTURE                          UPVAL U0
       25 SETTABLEKS                       R8 R7 K8 ["onActivated"]
       27 CALL                             R6 1 1
       28 GETIMPORT                        R7 K2 [table.freeze]
       30 DUPTABLE                         R8 K9 [{"id", "text", "isDisabled", "onActivated"}]
       31 LOADK                            R9 K11 ["Delete"]
       32 SETTABLEKS                       R9 R8 K5 ["id"]
       34 LOADK                            R9 K11 ["Delete"]
       35 SETTABLEKS                       R9 R8 K6 ["text"]
       37 LOADB                            R9 0
       38 SETTABLEKS                       R9 R8 K7 ["isDisabled"]
       40 NEWCLOSURE                       R9 P1
       41 CAPTURE                          UPVAL U0
       42 CAPTURE                          UPVAL U1
       43 SETTABLEKS                       R9 R8 K8 ["onActivated"]
       45 CALL                             R7 1 -1
       46 SETLIST                          R5 R6 -1 [1]
       48 CALL                             R4 1 1
       49 SETTABLEKS                       R4 R3 K3 ["items"]
       51 CALL                             R2 1 -1
       52 SETLIST                          R1 R2 -1 [1]
       54 CALL                             R0 1 -1
       55 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useMemo"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R4 0 4
       15 GETTABLEKS                       R5 R0 K3 ["close"]
       17 GETTABLEKS                       R6 R0 K4 ["triggerRename"]
       19 GETTABLEKS                       R7 R0 K5 ["nodeId"]
       21 GETTABLEKS                       R8 R1 K6 ["deleteNodeInstanceAsync"]
       23 SETLIST                          R4 R5 4 [1]
       25 CALL                             R2 2 1
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K7 ["createElement"]
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R4 R5 K8 ["Menu"]
       32 DUPTABLE                         R5 K16 [{"isOpen", "onPressedOutside", "items", "side", "size", "width", "anchorRef"}]
       33 GETTABLEKS                       R6 R0 K9 ["isOpen"]
       35 SETTABLEKS                       R6 R5 K9 ["isOpen"]
       37 GETTABLEKS                       R6 R0 K3 ["close"]
       39 SETTABLEKS                       R6 R5 K10 ["onPressedOutside"]
       41 SETTABLEKS                       R2 R5 K11 ["items"]
       43 GETUPVAL                         R9 2
       44 GETTABLEKS                       R8 R9 K17 ["Enums"]
       46 GETTABLEKS                       R7 R8 K18 ["PopoverSide"]
       48 GETTABLEKS                       R6 R7 K19 ["Right"]
       50 SETTABLEKS                       R6 R5 K12 ["side"]
       52 GETUPVAL                         R9 2
       53 GETTABLEKS                       R8 R9 K17 ["Enums"]
       55 GETTABLEKS                       R7 R8 K20 ["InputSize"]
       57 GETTABLEKS                       R6 R7 K21 ["XSmall"]
       59 SETTABLEKS                       R6 R5 K13 ["size"]
       61 GETUPVAL                         R6 3
       62 SETTABLEKS                       R6 R5 K14 ["width"]
       64 GETTABLEKS                       R6 R0 K15 ["anchorRef"]
       66 SETTABLEKS                       R6 R5 K15 ["anchorRef"]
       68 CALL                             R3 2 -1
       69 RETURN                           R3 -1

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
       23 GETTABLEKS                       R4 R0 K10 ["NodeViewTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R8 R0 K11 ["Components"]
       30 GETTABLEKS                       R7 R8 K12 ["NodeView"]
       32 GETTABLEKS                       R6 R7 K13 ["ParameterPane"]
       34 GETTABLEKS                       R5 R6 K14 ["Constants"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K6 ["Parent"]
       41 GETTABLEKS                       R6 R7 K15 ["React"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K18 [UDim.new]
       46 LOADN                            R7 0
       47 GETTABLEKS                       R8 R4 K19 ["PARAMETER_INSERT_ITEM_MENU_WIDTH"]
       49 CALL                             R6 2 1
       50 DUPCLOSURE                       R7 K20 [PROTO_3]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R6
       55 RETURN                           R7 1
