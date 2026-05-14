PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["getHistoryAtStart"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R1 1
        8 NAMECALL                         R1 R1 K1 ["getHistoryAtEnd"]
       10 CALL                             R1 1 -1
       11 CALL                             R0 -1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnHistoryChanged"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U2
        7 NAMECALL                         R0 R0 K1 ["Connect"]
        9 CALL                             R0 2 1
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 NAMECALL                         R2 R0 K1 ["getHistoryAtStart"]
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 2
        9 GETUPVAL                         R3 1
       10 NAMECALL                         R4 R0 K2 ["getHistoryAtEnd"]
       12 CALL                             R4 1 -1
       13 CALL                             R3 -1 2
       14 GETUPVAL                         R5 2
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R4
       19 NEWTABLE                         R7 0 0
       21 CALL                             R5 2 0
       22 MOVE                             R5 R1
       23 MOVE                             R6 R3
       24 RETURN                           R5 2

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
       27 DUPCLOSURE                       R5 K13 [PROTO_3]
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 RETURN                           R5 1
