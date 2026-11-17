PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K6 [{[1] = "col auto-xy padding-medium radius-large bg-shift-300", ["stateLayer"], ["onSecondaryActivated"], ["LayoutOrder"], ["testId"]}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K2 ["stateLayer"]
        6 GETTABLEKS                       R4 R0 K3 ["onSecondaryActivated"]
        8 SETTABLEKS                       R4 R3 K3 ["onSecondaryActivated"]
       10 GETTABLEKS                       R4 R0 K4 ["LayoutOrder"]
       12 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K7 ["UserMessage"]
       17 GETTABLEKS                       R4 R4 K8 ["Bubble"]
       19 SETTABLEKS                       R4 R3 K5 ["testId"]
       21 GETTABLEKS                       R4 R0 K9 ["children"]
       23 CALL                             R1 3 -1
       24 RETURN                           R1 -1

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"copyText"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["MessageActions"]
        3 LOADK                            R4 K3 ["CopyText"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["copyText"]
        9 RETURN                           R0 1

PROTO_2:
        0 NEWTABLE                         R0 0 1
        2 DUPTABLE                         R1 K5 [{[1] = "copy", ["icon"], ["text"], ["isDisabled"]}]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K6 ["Enums"]
        6 GETTABLEKS                       R2 R2 K7 ["IconName"]
        8 GETTABLEKS                       R2 R2 K8 ["TwoStackedSquares"]
       10 SETTABLEKS                       R2 R1 K2 ["icon"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K9 ["copyText"]
       15 SETTABLEKS                       R2 R1 K3 ["text"]
       17 GETUPVAL                         R3 2
       18 JUMPIFEQKS                       R3 K10 [""] ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 SETTABLEKS                       R2 R1 K4 ["isDisabled"]
       24 SETLIST                          R0 R1 1 [1]
       26 RETURN                           R0 1

PROTO_3:
        0 JUMPIFNOTEQKS                    R0 K0 ["copy"] ; [+12]
        2 GETUPVAL                         R1 0
        3 JUMPIFEQKS                       R1 K1 [""] ; [+9]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["get"]
        8 CALL                             R1 0 1
        9 GETTABLEKS                       R1 R1 K3 ["copyToClipboard"]
       11 GETUPVAL                         R2 0
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 2
       14 LOADB                            R2 0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["setIsMenuOpen"]
        2 GETTABLEKS                       R3 R0 K2 ["messageText"]
        4 ORK                              R2 R3 K1 [""]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K3 ["useMemo"]
        8 DUPCLOSURE                       R4 K4 [PROTO_1]
        9 CAPTURE                          UPVAL U1
       10 NEWTABLE                         R5 0 1
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K5 ["locale"]
       15 SETLIST                          R5 R6 1 [1]
       17 CALL                             R3 2 1
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K3 ["useMemo"]
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R2
       25 NEWTABLE                         R6 0 2
       27 MOVE                             R7 R3
       28 MOVE                             R8 R2
       29 SETLIST                          R6 R7 2 [1]
       31 CALL                             R4 2 1
       32 GETUPVAL                         R5 3
       33 GETUPVAL                         R6 4
       34 DUPTABLE                         R7 K14 [{"align", "isOpen", "items", "side", "size", "onActivated", "onPressedOutside", "LayoutOrder"}]
       35 GETUPVAL                         R8 2
       36 GETTABLEKS                       R8 R8 K15 ["Enums"]
       38 GETTABLEKS                       R8 R8 K16 ["PopoverAlign"]
       40 GETTABLEKS                       R8 R8 K17 ["End"]
       42 SETTABLEKS                       R8 R7 K6 ["align"]
       44 GETTABLEKS                       R8 R0 K18 ["isMenuOpen"]
       46 SETTABLEKS                       R8 R7 K7 ["isOpen"]
       48 SETTABLEKS                       R4 R7 K8 ["items"]
       50 GETUPVAL                         R8 2
       51 GETTABLEKS                       R8 R8 K15 ["Enums"]
       53 GETTABLEKS                       R8 R8 K19 ["PopoverSide"]
       55 GETTABLEKS                       R8 R8 K20 ["Bottom"]
       57 SETTABLEKS                       R8 R7 K9 ["side"]
       59 GETUPVAL                         R8 2
       60 GETTABLEKS                       R8 R8 K15 ["Enums"]
       62 GETTABLEKS                       R8 R8 K21 ["InputSize"]
       64 GETTABLEKS                       R8 R8 K22 ["Small"]
       66 SETTABLEKS                       R8 R7 K10 ["size"]
       68 NEWCLOSURE                       R8 P2
       69 CAPTURE                          VAL R2
       70 CAPTURE                          UPVAL U5
       71 CAPTURE                          VAL R1
       72 SETTABLEKS                       R8 R7 K11 ["onActivated"]
       74 NEWCLOSURE                       R8 P3
       75 CAPTURE                          VAL R1
       76 SETTABLEKS                       R8 R7 K12 ["onPressedOutside"]
       78 GETTABLEKS                       R8 R0 K13 ["LayoutOrder"]
       80 SETTABLEKS                       R8 R7 K13 ["LayoutOrder"]
       82 DUPTABLE                         R8 K24 [{"Bubble"}]
       83 GETUPVAL                         R9 3
       84 GETUPVAL                         R10 6
       85 DUPTABLE                         R11 K26 [{"onSecondaryActivated"}]
       86 NEWCLOSURE                       R12 P4
       87 CAPTURE                          VAL R1
       88 SETTABLEKS                       R12 R11 K25 ["onSecondaryActivated"]
       90 GETTABLEKS                       R12 R0 K27 ["children"]
       92 CALL                             R9 3 1
       93 SETTABLEKS                       R9 R8 K23 ["Bubble"]
       95 CALL                             R5 3 -1
       96 RETURN                           R5 -1

PROTO_7:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+1]
        2 GETUPVAL                         R1 0
        3 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K1 ["useEffect"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R4
       15 CAPTURE                          VAL R1
       16 NEWTABLE                         R7 0 1
       18 MOVE                             R8 R1
       19 SETLIST                          R7 R8 1 [1]
       21 CALL                             R5 2 0
       22 JUMPIF                           R3 ; [+15]
       23 GETUPVAL                         R5 1
       24 GETUPVAL                         R6 2
       25 DUPTABLE                         R7 K4 [{"onSecondaryActivated", "LayoutOrder"}]
       26 NEWCLOSURE                       R8 P1
       27 CAPTURE                          VAL R2
       28 SETTABLEKS                       R8 R7 K2 ["onSecondaryActivated"]
       30 GETTABLEKS                       R8 R0 K3 ["LayoutOrder"]
       32 SETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       34 GETTABLEKS                       R8 R0 K5 ["children"]
       36 CALL                             R5 3 -1
       37 RETURN                           R5 -1
       38 GETUPVAL                         R5 1
       39 GETUPVAL                         R6 3
       40 DUPTABLE                         R7 K9 [{"messageText", "LayoutOrder", "isMenuOpen", "setIsMenuOpen"}]
       41 GETTABLEKS                       R8 R0 K6 ["messageText"]
       43 SETTABLEKS                       R8 R7 K6 ["messageText"]
       45 GETTABLEKS                       R8 R0 K3 ["LayoutOrder"]
       47 SETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       49 SETTABLEKS                       R1 R7 K7 ["isMenuOpen"]
       51 SETTABLEKS                       R2 R7 K8 ["setIsMenuOpen"]
       53 GETTABLEKS                       R8 R0 K5 ["children"]
       55 CALL                             R5 3 -1
       56 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Guest"]
       23 GETTABLEKS                       R5 R5 K10 ["Environment"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Util"]
       30 GETTABLEKS                       R6 R6 K12 ["TestIds"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Resources"]
       37 GETTABLEKS                       R7 R7 K14 ["Localization"]
       39 GETTABLEKS                       R7 R7 K15 ["Translator"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R2 K16 ["Menu"]
       44 GETTABLEKS                       R8 R2 K17 ["View"]
       46 GETTABLEKS                       R9 R3 K18 ["createElement"]
       48 DUPTABLE                         R10 K20 [{"affordance"}]
       49 GETTABLEKS                       R11 R2 K21 ["Enums"]
       51 GETTABLEKS                       R11 R11 K22 ["StateLayerAffordance"]
       53 GETTABLEKS                       R11 R11 K23 ["None"]
       55 SETTABLEKS                       R11 R10 K19 ["affordance"]
       57 DUPCLOSURE                       R11 K24 [PROTO_0]
       58 CAPTURE                          VAL R9
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R10
       61 CAPTURE                          VAL R5
       62 DUPCLOSURE                       R12 K25 [PROTO_6]
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R11
       70 DUPCLOSURE                       R13 K26 [PROTO_10]
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R12
       75 RETURN                           R13 1
