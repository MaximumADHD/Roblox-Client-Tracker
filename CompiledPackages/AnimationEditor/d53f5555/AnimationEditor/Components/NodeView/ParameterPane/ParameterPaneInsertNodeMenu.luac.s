PROTO_0:
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
       20 GETTABLEKS                       R1 R2 K7 ["createParameterAsync"]
       22 MOVE                             R2 R0
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [table.freeze]
        2 NEWTABLE                         R1 0 1
        4 GETIMPORT                        R2 K2 [table.freeze]
        6 DUPTABLE                         R3 K4 [{"items"}]
        7 GETIMPORT                        R4 K2 [table.freeze]
        9 NEWTABLE                         R5 0 2
       11 GETIMPORT                        R6 K2 [table.freeze]
       13 DUPTABLE                         R7 K8 [{"id", "text", "isDisabled"}]
       14 LOADK                            R8 K9 ["Boolean"]
       15 SETTABLEKS                       R8 R7 K5 ["id"]
       17 LOADK                            R8 K10 ["boolean"]
       18 SETTABLEKS                       R8 R7 K6 ["text"]
       20 LOADB                            R8 0
       21 SETTABLEKS                       R8 R7 K7 ["isDisabled"]
       23 CALL                             R6 1 1
       24 GETIMPORT                        R7 K2 [table.freeze]
       26 DUPTABLE                         R8 K8 [{"id", "text", "isDisabled"}]
       27 LOADK                            R9 K11 ["Number"]
       28 SETTABLEKS                       R9 R8 K5 ["id"]
       30 LOADK                            R9 K12 ["number"]
       31 SETTABLEKS                       R9 R8 K6 ["text"]
       33 LOADB                            R9 0
       34 SETTABLEKS                       R9 R8 K7 ["isDisabled"]
       36 CALL                             R7 1 -1
       37 SETLIST                          R5 R6 -1 [1]
       39 CALL                             R4 1 1
       40 SETTABLEKS                       R4 R3 K3 ["items"]
       42 CALL                             R2 1 -1
       43 SETLIST                          R1 R2 -1 [1]
       45 CALL                             R0 1 -1
       46 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useCallback"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R4 0 1
       15 GETTABLEKS                       R5 R1 K3 ["createParameterAsync"]
       17 SETLIST                          R4 R5 1 [1]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K4 ["useMemo"]
       23 DUPCLOSURE                       R4 K5 [PROTO_1]
       24 NEWTABLE                         R5 0 0
       26 CALL                             R3 2 1
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R4 R5 K6 ["createElement"]
       30 GETUPVAL                         R6 2
       31 GETTABLEKS                       R5 R6 K7 ["Menu"]
       33 DUPTABLE                         R6 K16 [{"isOpen", "onPressedOutside", "onActivated", "items", "side", "size", "width", "anchorRef"}]
       34 GETTABLEKS                       R7 R0 K8 ["isOpen"]
       36 SETTABLEKS                       R7 R6 K8 ["isOpen"]
       38 GETTABLEKS                       R7 R0 K17 ["close"]
       40 SETTABLEKS                       R7 R6 K9 ["onPressedOutside"]
       42 SETTABLEKS                       R2 R6 K10 ["onActivated"]
       44 SETTABLEKS                       R3 R6 K11 ["items"]
       46 GETUPVAL                         R10 2
       47 GETTABLEKS                       R9 R10 K18 ["Enums"]
       49 GETTABLEKS                       R8 R9 K19 ["PopoverSide"]
       51 GETTABLEKS                       R7 R8 K20 ["Right"]
       53 SETTABLEKS                       R7 R6 K12 ["side"]
       55 GETUPVAL                         R10 2
       56 GETTABLEKS                       R9 R10 K18 ["Enums"]
       58 GETTABLEKS                       R8 R9 K21 ["InputSize"]
       60 GETTABLEKS                       R7 R8 K22 ["XSmall"]
       62 SETTABLEKS                       R7 R6 K13 ["size"]
       64 GETUPVAL                         R7 3
       65 SETTABLEKS                       R7 R6 K14 ["width"]
       67 GETTABLEKS                       R7 R0 K15 ["anchorRef"]
       69 SETTABLEKS                       R7 R6 K15 ["anchorRef"]
       71 CALL                             R4 2 -1
       72 RETURN                           R4 -1

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
       34 GETTABLEKS                       R6 R0 K6 ["Parent"]
       36 GETTABLEKS                       R5 R6 K14 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K17 [UDim.new]
       41 LOADN                            R6 0
       42 GETTABLEKS                       R7 R3 K18 ["PARAMETER_INSERT_ITEM_MENU_WIDTH"]
       44 CALL                             R5 2 1
       45 DUPCLOSURE                       R6 K19 [PROTO_2]
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R5
       50 RETURN                           R6 1
