PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+10]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R3 R3 K0 ["getAppSizes"]
        7 CALL                             R3 1 1
        8 GETTABLEN                        R2 R3 1
        9 GETTABLEKS                       R1 R2 K1 ["Offset"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 2
       14 NAMECALL                         R2 R2 K0 ["getAppSizes"]
       16 CALL                             R2 1 1
       17 GETTABLEN                        R1 R2 1
       18 GETTABLEKS                       R0 R1 K2 ["Scale"]
       20 GETUPVAL                         R1 2
       21 NAMECALL                         R1 R1 K3 ["getPluginWidth"]
       23 CALL                             R1 1 1
       24 GETUPVAL                         R2 1
       25 MUL                              R3 R1 R0
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+10]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R3 R3 K0 ["getAppSizes"]
        7 CALL                             R3 1 1
        8 GETTABLEN                        R2 R3 1
        9 GETTABLEKS                       R1 R2 K1 ["Offset"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 2
       14 NAMECALL                         R2 R2 K0 ["getAppSizes"]
       16 CALL                             R2 1 1
       17 GETTABLEN                        R1 R2 1
       18 GETTABLEKS                       R0 R1 K2 ["Scale"]
       20 GETUPVAL                         R1 2
       21 NAMECALL                         R1 R1 K3 ["getPluginWidth"]
       23 CALL                             R1 1 1
       24 GETUPVAL                         R2 1
       25 MUL                              R3 R1 R0
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

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
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U0
       10 NAMECALL                         R3 R3 K1 ["Connect"]
       12 CALL                             R3 2 -1
       13 FASTCALL                         TABLE_INSERT ; [+2]
       14 GETIMPORT                        R1 K4 [table.insert]
       16 CALL                             R1 -1 0
       17 MOVE                             R2 R0
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K5 ["OnPluginWidthChanged"]
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U0
       25 NAMECALL                         R3 R3 K1 ["Connect"]
       27 CALL                             R3 2 -1
       28 FASTCALL                         TABLE_INSERT ; [+2]
       29 GETIMPORT                        R1 K4 [table.insert]
       31 CALL                             R1 -1 0
       32 NEWCLOSURE                       R1 P2
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          VAL R0
       35 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["use"]
        3 CALL                             R0 0 1
        4 LOADN                            R1 0
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+7]
        8 NAMECALL                         R3 R0 K1 ["getAppSizes"]
       10 CALL                             R3 1 1
       11 GETTABLEN                        R2 R3 1
       12 GETTABLEKS                       R1 R2 K2 ["Offset"]
       14 JUMP                             ; [+10]
       15 NAMECALL                         R4 R0 K1 ["getAppSizes"]
       17 CALL                             R4 1 1
       18 GETTABLEN                        R3 R4 1
       19 GETTABLEKS                       R2 R3 K3 ["Scale"]
       21 NAMECALL                         R3 R0 K4 ["getPluginWidth"]
       23 CALL                             R3 1 1
       24 MUL                              R1 R3 R2
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R2 R3 K5 ["useState"]
       28 MOVE                             R3 R1
       29 CALL                             R2 1 2
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R4 R5 K6 ["useEffect"]
       33 NEWCLOSURE                       R5 P0
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          VAL R3
       37 CAPTURE                          UPVAL U3
       38 NEWTABLE                         R6 0 0
       40 CALL                             R4 2 0
       41 RETURN                           R2 1

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
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R7 K13 ["Flags"]
       38 GETTABLEKS                       R5 R6 K14 ["getFFlagAmrSidebarSizing"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K15 [PROTO_4]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 RETURN                           R5 1
