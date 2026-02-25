PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onHoveredMappingChanged"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{"key", "keyName", "LayoutOrder", "onHover"}]
        5 SETTABLEKS                       R0 R3 K1 ["key"]
        7 SETTABLEKS                       R0 R3 K2 ["keyName"]
        9 GETUPVAL                         R4 2
       10 NAMECALL                         R4 R4 K6 ["getNextOrder"]
       12 CALL                             R4 1 1
       13 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R4 R5 K7 ["onHoveredMappingChanged"]
       18 SETTABLEKS                       R4 R3 K4 ["onHover"]
       20 CALL                             R1 2 -1
       21 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R3 R1 K1 ["mappings"]
        7 GETTABLEKS                       R4 R1 K2 ["isUpdatingMappingForGamepadId"]
        9 GETTABLE                         R2 R3 R4
       10 JUMPIF                           R2 ; [+2]
       11 NEWTABLE                         R2 0 0
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K3 ["useCallback"]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R0
       18 NEWTABLE                         R5 0 1
       20 GETTABLEKS                       R6 R0 K4 ["onHoveredMappingChanged"]
       22 SETLIST                          R5 R6 1 [1]
       24 CALL                             R3 2 1
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R4 R5 K5 ["createElement"]
       28 LOADK                            R5 K6 ["TextButton"]
       29 NEWTABLE                         R6 8 0
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R7 R8 K7 ["Tag"]
       34 LOADK                            R8 K8 ["Component-MappingsList CX-Invisible X-ColumnS"]
       35 SETTABLE                         R8 R6 R7
       36 GETTABLEKS                       R7 R0 K9 ["LayoutOrder"]
       38 SETTABLEKS                       R7 R6 K9 ["LayoutOrder"]
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R8 R9 K10 ["Change"]
       43 GETTABLEKS                       R7 R8 K11 ["AbsoluteSize"]
       45 GETTABLEKS                       R9 R0 K12 ["onAbsoluteSizeChanged"]
       47 JUMPIFEQKNIL                     R9 ; [+4]
       49 GETTABLEKS                       R8 R0 K12 ["onAbsoluteSizeChanged"]
       51 JUMP                             ; [+1]
       52 LOADNIL                          R8
       53 SETTABLE                         R8 R6 R7
       54 GETUPVAL                         R9 0
       55 GETTABLEKS                       R8 R9 K13 ["Event"]
       57 GETTABLEKS                       R7 R8 K14 ["MouseLeave"]
       59 SETTABLE                         R3 R6 R7
       60 LOADK                            R7 K15 [""]
       61 SETTABLEKS                       R7 R6 K16 ["Text"]
       63 GETUPVAL                         R7 2
       64 GETUPVAL                         R8 3
       65 GETUPVAL                         R9 4
       66 NEWCLOSURE                       R10 P1
       67 CAPTURE                          VAL R2
       68 CALL                             R8 2 1
       69 NEWCLOSURE                       R9 P2
       70 CAPTURE                          UPVAL U0
       71 CAPTURE                          UPVAL U5
       72 CAPTURE                          UPVAL U6
       73 CAPTURE                          VAL R0
       74 CALL                             R7 2 -1
       75 CALL                             R4 -1 -1
       76 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Dash"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["map"]
       30 GETTABLEKS                       R5 R3 K11 ["filter"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R9 R0 K12 ["Src"]
       36 GETTABLEKS                       R8 R9 K13 ["Util"]
       38 GETTABLEKS                       R7 R8 K14 ["MappingsContext"]
       40 CALL                             R6 1 1
       41 GETTABLEKS                       R8 R2 K13 ["Util"]
       43 GETTABLEKS                       R7 R8 K15 ["LayoutOrderIterator"]
       45 GETTABLEKS                       R8 R7 K16 ["new"]
       47 CALL                             R8 0 1
       48 GETIMPORT                        R9 K5 [require]
       50 GETTABLEKS                       R12 R0 K12 ["Src"]
       52 GETTABLEKS                       R11 R12 K17 ["Components"]
       54 GETTABLEKS                       R10 R11 K18 ["MappingsListRow"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R13 R0 K12 ["Src"]
       61 GETTABLEKS                       R12 R13 K13 ["Util"]
       63 GETTABLEKS                       R11 R12 K19 ["KeyNamesConstants"]
       65 CALL                             R10 1 1
       66 GETTABLEKS                       R11 R10 K20 ["KEY_NAMES_LIST_DISPLAY_ORDER"]
       68 DUPCLOSURE                       R12 K21 [PROTO_3]
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R8
       76 GETTABLEKS                       R13 R1 K22 ["memo"]
       78 MOVE                             R14 R12
       79 CALL                             R13 1 -1
       80 RETURN                           R13 -1
