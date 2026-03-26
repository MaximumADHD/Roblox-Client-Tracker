PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Lua toolbox: Could not configure sales"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 CALL                             R3 1 -1
       13 NAMECALL                         R1 R1 K4 ["dispatch"]
       15 CALL                             R1 -1 0
       16 GETUPVAL                         R1 1
       17 GETUPVAL                         R3 3
       18 LOADB                            R4 0
       19 CALL                             R3 1 -1
       20 NAMECALL                         R1 R1 K4 ["dispatch"]
       22 CALL                             R1 -1 0
       23 RETURN                           R0 0

PROTO_2:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 NEWCLOSURE                       R2 P1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 GETUPVAL                         R4 3
        7 GETUPVAL                         R7 4
        8 GETTABLEKS                       R6 R7 K1 ["ASSET_STATUS"]
       10 GETTABLEKS                       R5 R6 K2 ["OnSale"]
       12 JUMPIFEQ                         R4 R5 ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 JUMPIFNOT                        R3 ; [+6]
       17 GETUPVAL                         R6 4
       18 GETTABLEKS                       R5 R6 K1 ["ASSET_STATUS"]
       20 GETTABLEKS                       R4 R5 K2 ["OnSale"]
       22 JUMPIF                           R4 ; [+5]
       23 GETUPVAL                         R6 4
       24 GETTABLEKS                       R5 R6 K1 ["ASSET_STATUS"]
       26 GETTABLEKS                       R4 R5 K3 ["OffSale"]
       28 JUMPIFNOT                        R3 ; [+2]
       29 GETUPVAL                         R5 5
       30 JUMPIF                           R5 ; [+1]
       31 LOADNIL                          R5
       32 GETUPVAL                         R6 6
       33 GETUPVAL                         R7 3
       34 JUMPIFEQ                         R6 R7 ; [+14]
       36 GETUPVAL                         R6 7
       37 GETUPVAL                         R8 8
       38 MOVE                             R9 R4
       39 MOVE                             R10 R5
       40 NAMECALL                         R6 R6 K4 ["configureSales"]
       42 CALL                             R6 4 1
       43 MOVE                             R8 R1
       44 MOVE                             R9 R2
       45 NAMECALL                         R6 R6 K5 ["andThen"]
       47 CALL                             R6 3 0
       48 RETURN                           R0 0
       49 GETUPVAL                         R6 6
       50 GETUPVAL                         R9 4
       51 GETTABLEKS                       R8 R9 K1 ["ASSET_STATUS"]
       53 GETTABLEKS                       R7 R8 K2 ["OnSale"]
       55 JUMPIFNOTEQ                      R6 R7 ; [+16]
       57 GETUPVAL                         R6 9
       58 GETUPVAL                         R7 5
       59 JUMPIFEQ                         R6 R7 ; [+12]
       61 GETUPVAL                         R6 7
       62 GETUPVAL                         R8 8
       63 MOVE                             R9 R5
       64 NAMECALL                         R6 R6 K6 ["updateSales"]
       66 CALL                             R6 3 1
       67 MOVE                             R8 R1
       68 MOVE                             R9 R2
       69 NAMECALL                         R6 R6 K5 ["andThen"]
       71 CALL                             R6 3 0
       72 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R6 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R3
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R5
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R4
       11 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Util"]
       17 GETTABLEKS                       R2 R3 K7 ["AssetConfigConstants"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Src"]
       24 GETTABLEKS                       R4 R5 K8 ["Actions"]
       26 GETTABLEKS                       R3 R4 K9 ["NetworkError"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R6 R0 K5 ["Src"]
       33 GETTABLEKS                       R5 R6 K8 ["Actions"]
       35 GETTABLEKS                       R4 R5 K10 ["UploadResult"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R7 R0 K5 ["Src"]
       42 GETTABLEKS                       R6 R7 K6 ["Util"]
       44 GETTABLEKS                       R5 R6 K11 ["DebugFlags"]
       46 CALL                             R4 1 1
       47 DUPCLOSURE                       R5 K12 [PROTO_3]
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R1
       52 RETURN                           R5 1
