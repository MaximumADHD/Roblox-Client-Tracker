PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R1 R1 K0 ["getSettingValue"]
        5 CALL                             R1 2 -1
        6 CALL                             R0 -1 0
        7 GETUPVAL                         R1 3
        8 JUMPIFNOT                        R1 ; [+6]
        9 GETUPVAL                         R0 3
       10 GETUPVAL                         R2 0
       11 NAMECALL                         R0 R0 K1 ["Connect"]
       13 CALL                             R0 2 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R0
       16 NEWCLOSURE                       R1 P0
       17 CAPTURE                          VAL R0
       18 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R5 R1
        2 NAMECALL                         R3 R0 K0 ["getSettingValue"]
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 2
        6 MOVE                             R6 R1
        7 NAMECALL                         R4 R0 K1 ["getSettingEvent"]
        9 CALL                             R4 2 1
       10 GETUPVAL                         R5 1
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R4
       16 NEWTABLE                         R7 0 1
       18 MOVE                             R8 R4
       19 SETLIST                          R7 R8 1 [1]
       21 CALL                             R5 2 0
       22 RETURN                           R2 1

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
