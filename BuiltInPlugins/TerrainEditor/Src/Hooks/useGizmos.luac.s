PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getTool"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K3 [{[1], ["FromSelf"] = False}]
        2 NAMECALL                         R3 R0 K4 ["gizmos"]
        4 CALL                             R3 1 1
        5 SETTABLEKS                       R3 R2 K0 ["Gizmos"]
        7 SETTABLEKS                       R2 R1 K5 ["current"]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K5 ["current"]
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 2
       15 LOADB                            R2 1
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K3 [{[1], ["FromSelf"] = False}]
        2 GETUPVAL                         R2 1
        3 NAMECALL                         R2 R2 K4 ["gizmos"]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K0 ["Gizmos"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K3 [{[1], ["FromSelf"] = False}]
        2 GETUPVAL                         R2 1
        3 NAMECALL                         R2 R2 K4 ["gizmos"]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K0 ["Gizmos"]
        8 SETTABLEKS                       R1 R0 K5 ["current"]
       10 GETUPVAL                         R0 2
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K5 ["current"]
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 3
       16 LOADB                            R1 1
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K3 [{[1], ["FromSelf"] = False}]
        2 GETUPVAL                         R2 1
        3 NAMECALL                         R2 R2 K4 ["gizmos"]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K0 ["Gizmos"]
        8 SETTABLEKS                       R1 R0 K5 ["current"]
       10 GETUPVAL                         R0 2
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K5 ["current"]
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 3
       16 LOADB                            R1 1
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 NAMECALL                         R0 R0 K0 ["Disconnect"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnToolChanged"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 NAMECALL                         R0 R0 K1 ["Connect"]
        9 CALL                             R0 2 1
       10 GETUPVAL                         R1 4
       11 JUMPIF                           R1 ; [+3]
       12 NEWCLOSURE                       R1 P1
       13 CAPTURE                          VAL R0
       14 RETURN                           R1 1
       15 GETUPVAL                         R1 5
       16 GETTABLEKS                       R1 R1 K2 ["OnInternalsChanged"]
       18 NEWCLOSURE                       R3 P2
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U5
       21 NAMECALL                         R1 R1 K1 ["Connect"]
       23 CALL                             R1 2 1
       24 GETUPVAL                         R2 5
       25 GETTABLEKS                       R2 R2 K3 ["OnFormChanged"]
       27 NEWCLOSURE                       R4 P3
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          UPVAL U3
       32 NAMECALL                         R2 R2 K1 ["Connect"]
       34 CALL                             R2 2 1
       35 GETUPVAL                         R3 5
       36 GETTABLEKS                       R3 R3 K4 ["OnShortcutChanged"]
       38 NEWCLOSURE                       R5 P4
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          UPVAL U3
       43 NAMECALL                         R3 R3 K1 ["Connect"]
       45 CALL                             R3 2 1
       46 NEWCLOSURE                       R4 P5
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R3
       51 RETURN                           R4 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 JUMPIFNOT                        R2 ; [+8]
        3 DUPTABLE                         R1 K3 [{[1], ["FromSelf"] = False}]
        4 GETUPVAL                         R2 2
        5 NAMECALL                         R2 R2 K4 ["gizmos"]
        7 CALL                             R2 1 1
        8 SETTABLEKS                       R2 R1 K0 ["Gizmos"]
       10 JUMP                             ; [+5]
       11 DUPTABLE                         R1 K3 [{[1], ["FromSelf"] = False}]
       12 NEWTABLE                         R2 0 0
       14 SETTABLEKS                       R2 R1 K0 ["Gizmos"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIFNOT                        R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 NAMECALL                         R2 R2 K1 ["getTool"]
        8 CALL                             R2 1 1
        9 MOVE                             R4 R1
       10 NAMECALL                         R2 R2 K2 ["saveGizmos"]
       12 CALL                             R2 2 0
       13 GETUPVAL                         R2 2
       14 DUPTABLE                         R3 K6 [{["Gizmos"], ["FromSelf"] = True}]
       15 GETUPVAL                         R4 1
       16 NAMECALL                         R4 R4 K1 ["getTool"]
       18 CALL                             R4 1 1
       19 NAMECALL                         R4 R4 K7 ["gizmos"]
       21 CALL                             R4 1 1
       22 SETTABLEKS                       R4 R3 K3 ["Gizmos"]
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K3 [{[1], ["FromSelf"] = False}]
        2 NEWTABLE                         R4 0 0
        4 SETTABLEKS                       R4 R3 K0 ["Gizmos"]
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R0
       10 NEWTABLE                         R6 0 1
       12 MOVE                             R7 R2
       13 SETLIST                          R6 R7 1 [1]
       15 CALL                             R4 2 1
       16 GETUPVAL                         R5 0
       17 LOADB                            R6 0
       18 CALL                             R5 1 2
       19 GETUPVAL                         R7 2
       20 LOADNIL                          R8
       21 CALL                             R7 1 1
       22 GETTABLEKS                       R8 R7 K4 ["current"]
       24 JUMPIFNOT                        R8 ; [+11]
       25 MOVE                             R8 R3
       26 GETTABLEKS                       R9 R7 K4 ["current"]
       28 CALL                             R8 1 0
       29 LOADNIL                          R8
       30 SETTABLEKS                       R8 R7 K4 ["current"]
       32 JUMPIFNOT                        R5 ; [+3]
       33 MOVE                             R8 R6
       34 LOADB                            R9 0
       35 CALL                             R8 1 0
       36 GETUPVAL                         R8 3
       37 NEWCLOSURE                       R9 P1
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R7
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R4
       44 NEWTABLE                         R10 0 2
       46 MOVE                             R11 R4
       47 MOVE                             R12 R1
       48 SETLIST                          R10 R11 2 [1]
       50 CALL                             R8 2 0
       51 GETUPVAL                         R8 3
       52 NEWCLOSURE                       R9 P2
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R4
       56 NEWTABLE                         R10 0 1
       58 MOVE                             R11 R1
       59 SETLIST                          R10 R11 1 [1]
       61 CALL                             R8 2 0
       62 NEWCLOSURE                       R8 P3
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R3
       66 GETTABLEKS                       R9 R2 K0 ["Gizmos"]
       68 MOVE                             R10 R8
       69 MOVE                             R11 R4
       70 GETTABLEKS                       R12 R2 K1 ["FromSelf"]
       72 RETURN                           R9 4

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useMemo"]
       16 GETTABLEKS                       R3 R1 K9 ["useRef"]
       18 GETTABLEKS                       R4 R1 K10 ["useState"]
       20 GETTABLEKS                       R5 R1 K11 ["useEffect"]
       22 GETIMPORT                        R6 K5 [require]
       24 GETTABLEKS                       R7 R0 K12 ["Src"]
       26 GETTABLEKS                       R7 R7 K13 ["Types"]
       28 CALL                             R6 1 1
       29 DUPCLOSURE                       R7 K14 [PROTO_10]
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R5
       34 RETURN                           R7 1
