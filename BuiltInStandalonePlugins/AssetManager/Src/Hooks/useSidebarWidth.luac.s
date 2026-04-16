PROTO_0:
        0 GETUPVAL                         R2 1
        1 NAMECALL                         R2 R2 K0 ["getAppSizes"]
        3 CALL                             R2 1 1
        4 GETTABLEN                        R1 R2 1
        5 GETTABLEKS                       R0 R1 K1 ["Scale"]
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 NAMECALL                         R0 R0 K2 ["getPluginWidth"]
       11 CALL                             R0 1 1
       12 SETUPVAL                         R0 2
       13 GETUPVAL                         R0 3
       14 GETUPVAL                         R2 2
       15 GETUPVAL                         R4 4
       16 GETTABLEKS                       R3 R4 K1 ["Scale"]
       18 MUL                              R1 R2 R3
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 1
        1 NAMECALL                         R2 R2 K0 ["getAppSizes"]
        3 CALL                             R2 1 1
        4 GETTABLEN                        R1 R2 1
        5 GETTABLEKS                       R0 R1 K1 ["Scale"]
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 NAMECALL                         R0 R0 K2 ["getPluginWidth"]
       11 CALL                             R0 1 1
       12 SETUPVAL                         R0 2
       13 GETUPVAL                         R0 3
       14 GETUPVAL                         R2 2
       15 GETUPVAL                         R3 0
       16 MUL                              R1 R2 R3
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

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
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 NAMECALL                         R3 R3 K1 ["Connect"]
       14 CALL                             R3 2 -1
       15 FASTCALL                         TABLE_INSERT ; [+2]
       16 GETIMPORT                        R1 K4 [table.insert]
       18 CALL                             R1 -1 0
       19 MOVE                             R2 R0
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K5 ["OnPluginWidthChanged"]
       23 NEWCLOSURE                       R5 P1
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U3
       28 NAMECALL                         R3 R3 K1 ["Connect"]
       30 CALL                             R3 2 -1
       31 FASTCALL                         TABLE_INSERT ; [+2]
       32 GETIMPORT                        R1 K4 [table.insert]
       34 CALL                             R1 -1 0
       35 NEWCLOSURE                       R1 P2
       36 CAPTURE                          UPVAL U5
       37 CAPTURE                          VAL R0
       38 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["use"]
        3 CALL                             R0 0 1
        4 NAMECALL                         R3 R0 K1 ["getAppSizes"]
        6 CALL                             R3 1 1
        7 GETTABLEN                        R2 R3 1
        8 GETTABLEKS                       R1 R2 K2 ["Scale"]
       10 NAMECALL                         R2 R0 K3 ["getPluginWidth"]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K4 ["useState"]
       16 MUL                              R4 R2 R1
       17 CALL                             R3 1 2
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R5 R6 K5 ["useEffect"]
       21 NEWCLOSURE                       R6 P0
       22 CAPTURE                          VAL R0
       23 CAPTURE                          REF R1
       24 CAPTURE                          REF R2
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R3
       27 CAPTURE                          UPVAL U2
       28 NEWTABLE                         R7 0 0
       30 CALL                             R5 2 0
       31 CLOSEUPVALS                      R1
       32 RETURN                           R3 1

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
