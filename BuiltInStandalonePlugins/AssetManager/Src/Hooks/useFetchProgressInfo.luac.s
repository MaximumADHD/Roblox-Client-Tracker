PROTO_0:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOTEQ                      R3 R2 ; [+8]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K2 [{"IsLoading", "FetchProgress"}]
        5 SETTABLEKS                       R1 R4 K0 ["IsLoading"]
        7 SETTABLEKS                       R0 R4 K1 ["FetchProgress"]
        9 CALL                             R3 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getItemsCache"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R0 R0 K1 ["getScope"]
        7 CALL                             R0 2 1
        8 JUMPIFNOT                        R0 ; [+11]
        9 GETUPVAL                         R1 2
       10 DUPTABLE                         R2 K4 [{"IsLoading", "FetchProgress"}]
       11 GETTABLEKS                       R3 R0 K5 ["Loading"]
       13 SETTABLEKS                       R3 R2 K2 ["IsLoading"]
       15 GETTABLEKS                       R3 R0 K3 ["FetchProgress"]
       17 SETTABLEKS                       R3 R2 K3 ["FetchProgress"]
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K6 ["OnScopeFetchProgressChanged"]
       23 NEWCLOSURE                       R3 P0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U2
       26 NAMECALL                         R1 R1 K7 ["Connect"]
       28 CALL                             R1 2 1
       29 NEWCLOSURE                       R2 P1
       30 CAPTURE                          VAL R1
       31 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 DUPTABLE                         R2 K3 [{"IsLoading", "FetchProgress"}]
        5 LOADB                            R3 0
        6 SETTABLEKS                       R3 R2 K1 ["IsLoading"]
        8 LOADN                            R3 0
        9 SETTABLEKS                       R3 R2 K2 ["FetchProgress"]
       11 GETUPVAL                         R3 1
       12 MOVE                             R4 R2
       13 CALL                             R3 1 2
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K4 ["useEffect"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R4
       21 NEWTABLE                         R7 0 1
       23 MOVE                             R8 R0
       24 SETLIST                          R7 R8 1 [1]
       26 CALL                             R5 2 0
       27 RETURN                           R3 1

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
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Src"]
       20 GETTABLEKS                       R4 R4 K10 ["Controllers"]
       22 GETTABLEKS                       R4 R4 K11 ["ItemsController"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K9 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["Types"]
       31 CALL                             R4 1 1
       32 DUPCLOSURE                       R5 K13 [PROTO_3]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R1
       36 RETURN                           R5 1
