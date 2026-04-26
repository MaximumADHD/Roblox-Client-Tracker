PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R3 R3 K0 ["getAppSizes"]
        4 CALL                             R3 1 1
        5 GETTABLEN                        R2 R3 1
        6 GETTABLEKS                       R1 R2 K1 ["Offset"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R3 R3 K0 ["getAppSizes"]
        4 CALL                             R3 1 1
        5 GETTABLEN                        R2 R3 1
        6 GETTABLEKS                       R1 R2 K1 ["Offset"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 MOVE                             R2 R0
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K0 ["OnAppSizesChanged"]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U0
        9 NAMECALL                         R3 R3 K1 ["Connect"]
       11 CALL                             R3 2 -1
       12 FASTCALL                         TABLE_INSERT ; [+2]
       13 GETIMPORT                        R1 K4 [table.insert]
       15 CALL                             R1 -1 0
       16 MOVE                             R2 R0
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K5 ["OnPluginWidthChanged"]
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U0
       23 NAMECALL                         R3 R3 K1 ["Connect"]
       25 CALL                             R3 2 -1
       26 FASTCALL                         TABLE_INSERT ; [+2]
       27 GETIMPORT                        R1 K4 [table.insert]
       29 CALL                             R1 -1 0
       30 NEWCLOSURE                       R1 P2
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R0
       33 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["use"]
        3 CALL                             R0 0 1
        4 NAMECALL                         R3 R0 K1 ["getAppSizes"]
        6 CALL                             R3 1 1
        7 GETTABLEN                        R2 R3 1
        8 GETTABLEKS                       R1 R2 K2 ["Offset"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K3 ["useState"]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 2
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R4 R5 K4 ["useEffect"]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R3
       21 CAPTURE                          UPVAL U2
       22 NEWTABLE                         R6 0 0
       24 CALL                             R4 2 0
       25 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["cleanConnections"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Controllers"]
       29 GETTABLEKS                       R4 R5 K12 ["LayoutController"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K13 [PROTO_4]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 RETURN                           R4 1
