PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["getFolderReadinessStatus"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 2
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R0
        1 GETIMPORT                        R1 K2 [table.find]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K3 ["RootAccountScopeTypes"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K4 ["Type"]
        9 CALL                             R1 2 1
       10 JUMPIFNOT                        R1 ; [+11]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K5 ["OnFolderReadyMapChanged"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U3
       18 NAMECALL                         R1 R1 K6 ["Connect"]
       20 CALL                             R1 2 1
       21 MOVE                             R0 R1
       22 NEWCLOSURE                       R1 P1
       23 CAPTURE                          REF R0
       24 CLOSEUPVALS                      R0
       25 RETURN                           R1 1

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
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R3
       16 NEWTABLE                         R6 0 1
       18 MOVE                             R7 R0
       19 SETLIST                          R6 R7 1 [1]
       21 CALL                             R4 2 0
       22 RETURN                           R2 1

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
