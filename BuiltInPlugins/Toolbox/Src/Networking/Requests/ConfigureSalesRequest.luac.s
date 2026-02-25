PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+10]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETUPVAL                         R4 3
        6 GETUPVAL                         R5 4
        7 GETUPVAL                         R6 5
        8 GETUPVAL                         R7 6
        9 CALL                             R3 4 -1
       10 NAMECALL                         R1 R1 K0 ["dispatch"]
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0

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
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 GETUPVAL                         R4 9
       14 GETUPVAL                         R7 10
       15 GETTABLEKS                       R6 R7 K0 ["ASSET_STATUS"]
       17 GETTABLEKS                       R5 R6 K1 ["OnSale"]
       19 JUMPIFEQ                         R4 R5 ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 JUMPIFNOT                        R3 ; [+6]
       24 GETUPVAL                         R6 10
       25 GETTABLEKS                       R5 R6 K0 ["ASSET_STATUS"]
       27 GETTABLEKS                       R4 R5 K1 ["OnSale"]
       29 JUMPIF                           R4 ; [+5]
       30 GETUPVAL                         R6 10
       31 GETTABLEKS                       R5 R6 K0 ["ASSET_STATUS"]
       33 GETTABLEKS                       R4 R5 K2 ["OffSale"]
       35 JUMPIFNOT                        R3 ; [+2]
       36 GETUPVAL                         R5 11
       37 JUMPIF                           R5 ; [+1]
       38 LOADNIL                          R5
       39 GETUPVAL                         R6 12
       40 GETUPVAL                         R7 9
       41 JUMPIFEQ                         R6 R7 ; [+14]
       43 GETUPVAL                         R6 2
       44 GETUPVAL                         R8 3
       45 MOVE                             R9 R4
       46 MOVE                             R10 R5
       47 NAMECALL                         R6 R6 K3 ["configureSales"]
       49 CALL                             R6 4 1
       50 MOVE                             R8 R1
       51 MOVE                             R9 R2
       52 NAMECALL                         R6 R6 K4 ["andThen"]
       54 CALL                             R6 3 0
       55 RETURN                           R0 0
       56 GETUPVAL                         R6 12
       57 GETUPVAL                         R9 10
       58 GETTABLEKS                       R8 R9 K0 ["ASSET_STATUS"]
       60 GETTABLEKS                       R7 R8 K1 ["OnSale"]
       62 JUMPIFNOTEQ                      R6 R7 ; [+17]
       64 GETUPVAL                         R6 13
       65 GETUPVAL                         R7 11
       66 JUMPIFEQ                         R6 R7 ; [+13]
       68 GETUPVAL                         R6 2
       69 GETUPVAL                         R8 3
       70 MOVE                             R9 R5
       71 NAMECALL                         R6 R6 K5 ["updateSales"]
       73 CALL                             R6 3 1
       74 MOVE                             R8 R1
       75 MOVE                             R9 R2
       76 NAMECALL                         R6 R6 K4 ["andThen"]
       78 CALL                             R6 3 0
       79 RETURN                           R0 0
       80 GETUPVAL                         R6 0
       81 CALL                             R6 0 1
       82 JUMPIF                           R6 ; [+9]
       83 GETUPVAL                         R8 1
       84 GETUPVAL                         R9 2
       85 GETUPVAL                         R10 3
       86 GETUPVAL                         R11 4
       87 GETUPVAL                         R12 5
       88 CALL                             R8 4 -1
       89 NAMECALL                         R6 R0 K6 ["dispatch"]
       91 CALL                             R6 -1 0
       92 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R8 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R6
        6 CAPTURE                          VAL R7
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          VAL R3
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          VAL R5
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R4
       15 RETURN                           R8 1

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
       47 GETIMPORT                        R5 K4 [require]
       49 GETTABLEKS                       R8 R0 K5 ["Src"]
       51 GETTABLEKS                       R7 R8 K12 ["Flags"]
       53 GETTABLEKS                       R6 R7 K13 ["getFFlagRemoveItemTags"]
       55 CALL                             R5 1 1
       56 MOVE                             R7 R5
       57 CALL                             R7 0 1
       58 JUMPIFNOT                        R7 ; [+2]
       59 LOADNIL                          R6
       60 JUMP                             ; [+11]
       61 GETIMPORT                        R6 K4 [require]
       63 GETTABLEKS                       R10 R0 K5 ["Src"]
       65 GETTABLEKS                       R9 R10 K14 ["Networking"]
       67 GETTABLEKS                       R8 R9 K15 ["Requests"]
       69 GETTABLEKS                       R7 R8 K16 ["ConfigureItemTagsRequest"]
       71 CALL                             R6 1 1
       72 DUPCLOSURE                       R7 K17 [PROTO_3]
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R1
       79 RETURN                           R7 1
