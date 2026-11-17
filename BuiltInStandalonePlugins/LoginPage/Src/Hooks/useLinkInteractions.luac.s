PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["Hover"]
        7 JUMPIFEQ                         R0 R2 ; [+8]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K1 ["Pressed"]
       12 JUMPIFEQ                         R0 R2 ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 JUMPIFNOT                        R1 ; [+14]
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K2 ["current"]
       20 JUMPIF                           R2 ; [+10]
       21 GETUPVAL                         R2 2
       22 LOADB                            R3 1
       23 SETTABLEKS                       R3 R2 K2 ["current"]
       25 GETUPVAL                         R2 0
       26 LOADK                            R4 K3 ["PointingHand"]
       27 NAMECALL                         R2 R2 K4 ["__pushCursor"]
       29 CALL                             R2 2 0
       30 RETURN                           R0 0
       31 JUMPIF                           R1 ; [+12]
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R2 R2 K2 ["current"]
       35 JUMPIFNOT                        R2 ; [+8]
       36 GETUPVAL                         R2 2
       37 LOADB                            R3 0
       38 SETTABLEKS                       R3 R2 K2 ["current"]
       40 GETUPVAL                         R2 0
       41 NAMECALL                         R2 R2 K5 ["__popCursor"]
       43 CALL                             R2 1 0
       44 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R0 0
        7 LOADB                            R1 0
        8 SETTABLEKS                       R1 R0 K0 ["current"]
       10 GETUPVAL                         R0 1
       11 NAMECALL                         R0 R0 K1 ["__popCursor"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_3:
        0 DUPTABLE                         R0 K2 [{"onStateChanged", "stateLayer"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["onStateChanged"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["stateLayer"]
        7 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["useRef"]
        7 LOADB                            R2 0
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K2 ["useCallback"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R1
       16 NEWTABLE                         R4 0 1
       18 MOVE                             R5 R0
       19 SETLIST                          R4 R5 1 [1]
       21 CALL                             R2 2 1
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K3 ["useEffect"]
       25 NEWCLOSURE                       R4 P1
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R0
       28 NEWTABLE                         R5 0 1
       30 MOVE                             R6 R0
       31 SETLIST                          R5 R6 1 [1]
       33 CALL                             R3 2 0
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R3 R3 K4 ["useMemo"]
       37 NEWCLOSURE                       R4 P2
       38 CAPTURE                          VAL R2
       39 CAPTURE                          UPVAL U3
       40 NEWTABLE                         R5 0 1
       42 MOVE                             R6 R2
       43 SETLIST                          R5 R6 1 [1]
       45 CALL                             R3 2 -1
       46 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LoginPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R4 R4 K11 ["Mouse"]
       32 GETTABLEKS                       R5 R2 K12 ["Enums"]
       34 GETTABLEKS                       R5 R5 K13 ["ControlState"]
       36 GETTABLEKS                       R6 R2 K12 ["Enums"]
       38 GETTABLEKS                       R6 R6 K14 ["StateLayerAffordance"]
       40 DUPTABLE                         R7 K16 [{"affordance"}]
       41 GETTABLEKS                       R8 R6 K17 ["None"]
       43 SETTABLEKS                       R8 R7 K15 ["affordance"]
       45 DUPCLOSURE                       R8 K18 [PROTO_4]
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R7
       50 RETURN                           R8 1
