PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 3
        8 LOADK                            R3 K0 ["RateLimitUpload"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U0
       12 NEWCLOSURE                       R5 P1
       13 CAPTURE                          UPVAL U1
       14 NAMECALL                         R0 R0 K1 ["fetchUploadQuotas"]
       16 CALL                             R0 5 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useState"]
        3 LOADNIL                          R4
        4 CALL                             R3 1 2
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K0 ["useState"]
        8 LOADB                            R6 0
        9 CALL                             R5 1 2
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K0 ["useState"]
       13 LOADNIL                          R8
       14 CALL                             R7 1 2
       15 GETUPVAL                         R9 0
       16 GETTABLEKS                       R9 R9 K1 ["useEffect"]
       18 NEWCLOSURE                       R10 P0
       19 CAPTURE                          VAL R6
       20 CAPTURE                          VAL R8
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R4
       24 MOVE                             R11 R1
       25 CALL                             R9 2 0
       26 MOVE                             R9 R3
       27 MOVE                             R10 R5
       28 MOVE                             R11 R7
       29 RETURN                           R9 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_3]
       22 CAPTURE                          VAL R1
       23 RETURN                           R3 1
