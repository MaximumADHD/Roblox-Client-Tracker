PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R1 R1 K0 ["getFolderReadinessStatus"]
        5 CALL                             R1 2 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R1 R1 K0 ["getFolderReadinessStatus"]
        5 CALL                             R1 2 -1
        6 CALL                             R0 -1 0
        7 LOADNIL                          R0
        8 GETIMPORT                        R1 K3 [table.find]
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K4 ["RootAccountScopeTypes"]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K5 ["Type"]
       16 CALL                             R1 2 1
       17 JUMPIFNOT                        R1 ; [+11]
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K6 ["OnFolderReadyMapChanged"]
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          UPVAL U2
       25 NAMECALL                         R1 R1 K7 ["Connect"]
       27 CALL                             R1 2 1
       28 MOVE                             R0 R1
       29 NEWCLOSURE                       R1 P1
       30 CAPTURE                          REF R0
       31 CLOSEUPVALS                      R0
       32 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 MOVE                             R5 R0
        6 NAMECALL                         R3 R1 K1 ["getFolderReadinessStatus"]
        8 CALL                             R3 2 -1
        9 CALL                             R2 -1 2
       10 GETUPVAL                         R4 2
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U3
       16 NEWTABLE                         R6 0 2
       18 MOVE                             R7 R0
       19 GETTABLEKS                       R8 R0 K2 ["Uid"]
       21 SETLIST                          R6 R7 2 [1]
       23 CALL                             R4 2 0
       24 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useState"]
       16 GETTABLEKS                       R3 R1 K9 ["useEffect"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R5 R0 K10 ["Src"]
       22 GETTABLEKS                       R5 R5 K11 ["Controllers"]
       24 GETTABLEKS                       R5 R5 K12 ["ExplorerController"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Src"]
       31 GETTABLEKS                       R6 R6 K13 ["Types"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K10 ["Src"]
       38 GETTABLEKS                       R7 R7 K14 ["Resources"]
       40 GETTABLEKS                       R7 R7 K15 ["Constants"]
       42 CALL                             R6 1 1
       43 DUPCLOSURE                       R7 K16 [PROTO_3]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R6
       48 RETURN                           R7 1
