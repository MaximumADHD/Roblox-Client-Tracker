PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetGuiInset"]
        3 CALL                             R0 1 2
        4 GETIMPORT                        R2 K3 [Rect.new]
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R5 R6 K0 ["Disconnect"]
        7 MOVE                             R6 R4
        8 CALL                             R5 1 0
        9 FORGLOOP                         R0 2 ; [-6]
       11 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+35]
        5 NEWTABLE                         R1 0 3
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K0 ["Connect"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["SafeZoneOffsetsChanged"]
       13 GETUPVAL                         R4 3
       14 CALL                             R2 2 1
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K0 ["Connect"]
       18 GETUPVAL                         R5 4
       19 GETTABLEKS                       R4 R5 K2 ["GetPropertyChangedSignal"]
       21 GETUPVAL                         R5 5
       22 LOADK                            R6 K3 ["BottomBarSize"]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 3
       25 CALL                             R3 2 1
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R4 R5 K0 ["Connect"]
       29 GETUPVAL                         R6 4
       30 GETTABLEKS                       R5 R6 K2 ["GetPropertyChangedSignal"]
       32 GETUPVAL                         R6 5
       33 LOADK                            R7 K4 ["RightBarSize"]
       34 CALL                             R5 2 1
       35 GETUPVAL                         R6 3
       36 CALL                             R4 2 -1
       37 SETLIST                          R1 R2 -1 [1]
       39 MOVE                             R0 R1
       40 NEWCLOSURE                       R1 P0
       41 CAPTURE                          REF R0
       42 CAPTURE                          UPVAL U6
       43 CLOSEUPVALS                      R0
       44 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 DUPCLOSURE                       R1 K1 [PROTO_1]
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["useCallback"]
        9 NEWCLOSURE                       R3 P1
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U1
       12 NEWTABLE                         R4 0 0
       14 CALL                             R2 2 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K3 ["useEffect"]
       18 NEWCLOSURE                       R4 P2
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          UPVAL U6
       25 CAPTURE                          UPVAL U7
       26 NEWTABLE                         R5 0 0
       28 CALL                             R3 2 0
       29 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Utility"]
       18 GETTABLEKS                       R4 R5 K9 ["Wrappers"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Utility"]
       25 GETTABLEKS                       R5 R6 K10 ["isPluginSecurity"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R3 K11 ["Connection"]
       30 GETTABLEKS                       R6 R3 K12 ["Instance"]
       32 GETTABLEKS                       R7 R3 K13 ["Signal"]
       34 GETTABLEKS                       R9 R3 K14 ["Services"]
       36 GETTABLEKS                       R8 R9 K15 ["GuiService"]
       38 GETTABLEKS                       R10 R3 K14 ["Services"]
       40 GETTABLEKS                       R9 R10 K16 ["UserInputService"]
       42 DUPCLOSURE                       R10 K17 [PROTO_0]
       43 CAPTURE                          VAL R8
       44 DUPCLOSURE                       R11 K18 [PROTO_5]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R10
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R8
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R9
       52 CAPTURE                          VAL R5
       53 RETURN                           R11 1
