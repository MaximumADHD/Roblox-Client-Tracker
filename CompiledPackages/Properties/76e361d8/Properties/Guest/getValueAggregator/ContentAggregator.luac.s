PROTO_0:
        0 DUPTABLE                         R2 K1 [{"value"}]
        1 DUPTABLE                         R3 K4 [{[1], ["multiple"] = False}]
        2 GETTABLEKS                       R4 R1 K5 ["Uri"]
        4 SETTABLEKS                       R4 R3 K0 ["value"]
        6 SETTABLEKS                       R3 R2 K0 ["value"]
        8 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["value"]
        2 GETTABLEKS                       R4 R3 K1 ["multiple"]
        4 JUMPIFNOT                        R4 ; [+2]
        5 LOADB                            R4 1
        6 RETURN                           R4 1
        7 GETTABLEKS                       R4 R2 K2 ["Uri"]
        9 GETTABLEKS                       R5 R3 K0 ["value"]
       11 JUMPIFNOTEQ                      R4 R5 ; [+3]
       13 LOADB                            R4 0
       14 RETURN                           R4 1
       15 LOADB                            R4 1
       16 SETTABLEKS                       R4 R3 K1 ["multiple"]
       18 LOADB                            R4 1
       19 RETURN                           R4 1

PROTO_2:
        0 JUMPIFNOTEQKS                    R4 K0 ["value"] ; [+12]
        2 MOVE                             R8 R2
        3 MOVE                             R6 R3
        4 LOADN                            R7 1
        5 FORNPREP                         R6
        6 GETIMPORT                        R9 K3 [Content.fromUri]
        8 MOVE                             R10 R5
        9 CALL                             R9 1 1
       10 SETTABLE                         R9 R1 R8
       11 FORNLOOP                         R6
       12 JUMP                             ; [+9]
       13 GETIMPORT                        R6 K5 [error]
       15 LOADK                            R8 K6 ["Unexpected Content part: %*"]
       16 MOVE                             R10 R4
       17 NAMECALL                         R8 R8 K7 ["format"]
       19 CALL                             R8 2 1
       20 MOVE                             R7 R8
       21 CALL                             R6 1 0
       22 LOADNIL                          R6
       23 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["RpcTypes"]
       16 CALL                             R2 1 1
       17 DUPCLOSURE                       R3 K8 [PROTO_0]
       18 DUPCLOSURE                       R4 K9 [PROTO_1]
       19 DUPCLOSURE                       R5 K10 [PROTO_2]
       20 DUPTABLE                         R6 K14 [{"initParts", "addToAggregation", "setPart"}]
       21 SETTABLEKS                       R3 R6 K11 ["initParts"]
       23 SETTABLEKS                       R4 R6 K12 ["addToAggregation"]
       25 SETTABLEKS                       R5 R6 K13 ["setPart"]
       27 RETURN                           R6 1
