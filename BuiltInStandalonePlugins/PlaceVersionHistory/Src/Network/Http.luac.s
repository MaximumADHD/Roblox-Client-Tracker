PROTO_0:
        0 JUMPIFNOT                        R0 ; [+10]
        1 GETTABLEKS                       R2 R1 K0 ["StatusCode"]
        3 LOADN                            R3 200
        4 JUMPIFLT                         R2 R3 ; [+6]
        6 GETTABLEKS                       R2 R1 K0 ["StatusCode"]
        8 LOADN                            R3 300
        9 JUMPIFNOTLE                      R3 R2 ; [+13]
       11 GETUPVAL                         R2 0
       12 LOADK                            R4 K1 ["Http %*: %*"]
       13 GETTABLEKS                       R6 R1 K0 ["StatusCode"]
       15 GETTABLEKS                       R7 R1 K2 ["StatusMessage"]
       17 NAMECALL                         R4 R4 K3 ["format"]
       19 CALL                             R4 3 1
       20 MOVE                             R3 R4
       21 CALL                             R2 1 -1
       22 RETURN                           R2 -1
       23 GETUPVAL                         R2 1
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R5 R1 K4 ["Body"]
       27 NAMECALL                         R3 R3 K5 ["JSONDecode"]
       29 CALL                             R3 2 -1
       30 CALL                             R2 -1 -1
       31 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 NAMECALL                         R2 R2 K0 ["RequestInternal"]
        4 CALL                             R2 2 1
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 NAMECALL                         R2 R2 K1 ["Start"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Promise"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["HttpService"]
       17 NAMECALL                         R2 R2 K11 ["GetService"]
       19 CALL                             R2 2 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Src"]
       24 GETTABLEKS                       R4 R4 K13 ["Types"]
       26 CALL                             R3 1 1
       27 DUPCLOSURE                       R4 K14 [PROTO_2]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 DUPTABLE                         R5 K16 [{"Request"}]
       31 SETTABLEKS                       R4 R5 K15 ["Request"]
       33 RETURN                           R5 1
