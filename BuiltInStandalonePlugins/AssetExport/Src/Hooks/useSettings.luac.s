PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["getSettingEvent"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R2 2
        6 NAMECALL                         R0 R0 K1 ["Connect"]
        8 CALL                             R0 2 1
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R5 R1
        2 NAMECALL                         R3 R0 K0 ["getSettingValue"]
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 2
        6 GETUPVAL                         R4 1
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R3
       11 NEWTABLE                         R6 0 0
       13 CALL                             R4 2 0
       14 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetExport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useState"]
       16 GETTABLEKS                       R3 R1 K9 ["useEffect"]
       18 DUPCLOSURE                       R4 K10 [PROTO_2]
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R3
       21 RETURN                           R4 1
