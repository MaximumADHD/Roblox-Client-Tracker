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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["copy"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+19]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["_itemsCache"]
        6 GETUPVAL                         R2 2
        7 NAMECALL                         R0 R0 K1 ["getScope"]
        9 CALL                             R0 2 1
       10 JUMPIFNOT                        R0 ; [+11]
       11 GETUPVAL                         R1 3
       12 DUPTABLE                         R2 K4 [{"IsLoading", "FetchProgress"}]
       13 GETTABLEKS                       R3 R0 K5 ["Loading"]
       15 SETTABLEKS                       R3 R2 K2 ["IsLoading"]
       17 GETTABLEKS                       R3 R0 K3 ["FetchProgress"]
       19 SETTABLEKS                       R3 R2 K3 ["FetchProgress"]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 0
       23 CALL                             R1 0 1
       24 JUMPIFNOT                        R1 ; [+10]
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R0 R1 K6 ["OnScopeFetchProgressChanged"]
       28 NEWCLOSURE                       R2 P0
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U3
       31 NAMECALL                         R0 R0 K7 ["Connect"]
       33 CALL                             R0 2 1
       34 JUMP                             ; [+9]
       35 GETUPVAL                         R1 4
       36 GETTABLEKS                       R0 R1 K8 ["OnFetchProgressInfoChanged"]
       38 NEWCLOSURE                       R2 P1
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          UPVAL U5
       41 NAMECALL                         R0 R0 K7 ["Connect"]
       43 CALL                             R0 2 1
       44 NEWCLOSURE                       R1 P2
       45 CAPTURE                          VAL R0
       46 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 CALL                             R4 0 1
       10 JUMPIFNOT                        R4 ; [+8]
       11 DUPTABLE                         R3 K3 [{"IsLoading", "Progress"}]
       12 LOADB                            R4 0
       13 SETTABLEKS                       R4 R3 K1 ["IsLoading"]
       15 LOADN                            R4 0
       16 SETTABLEKS                       R4 R3 K2 ["Progress"]
       18 JUMP                             ; [+3]
       19 NAMECALL                         R3 R2 K4 ["getProgressInfo"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 3
       23 MOVE                             R5 R3
       24 CALL                             R4 1 2
       25 GETUPVAL                         R7 4
       26 GETTABLEKS                       R6 R7 K5 ["useEffect"]
       28 NEWCLOSURE                       R7 P0
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R5
       33 CAPTURE                          VAL R2
       34 CAPTURE                          UPVAL U5
       35 NEWTABLE                         R8 0 1
       37 MOVE                             R9 R0
       38 SETLIST                          R8 R9 1 [1]
       40 CALL                             R6 2 0
       41 RETURN                           R4 1

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
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["useState"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R7 R0 K10 ["Src"]
       27 GETTABLEKS                       R6 R7 K11 ["Controllers"]
       29 GETTABLEKS                       R5 R6 K12 ["ItemsController"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R7 R0 K10 ["Src"]
       36 GETTABLEKS                       R6 R7 K13 ["Networking"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R8 R0 K10 ["Src"]
       43 GETTABLEKS                       R7 R8 K14 ["Types"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K5 [require]
       48 GETTABLEKS                       R10 R0 K10 ["Src"]
       50 GETTABLEKS                       R9 R10 K15 ["Flags"]
       52 GETTABLEKS                       R8 R9 K16 ["getFFlagAmrUpdatedItemsCache"]
       54 CALL                             R7 1 1
       55 DUPCLOSURE                       R8 K17 [PROTO_4]
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R2
       62 RETURN                           R8 1
