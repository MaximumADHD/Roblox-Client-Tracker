PROTO_0:
        0 JUMPIFNOT                        R0 ; [+10]
        1 GETTABLEKS                       R2 R1 K0 ["StatusCode"]
        3 LOADN                            R3 200
        4 JUMPIFLT                         R2 R3 ; [+6]
        6 GETTABLEKS                       R2 R1 K0 ["StatusCode"]
        8 LOADN                            R3 300
        9 JUMPIFNOTLE                      R3 R2 ; [+29]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K1 ["EngineFeaturePVHGenerateNotes"]
       14 JUMPIFNOT                        R2 ; [+13]
       15 GETUPVAL                         R2 1
       16 LOADK                            R3 K2 ["Http %*: %* %*"]
       17 GETTABLEKS                       R5 R1 K0 ["StatusCode"]
       19 GETTABLEKS                       R6 R1 K3 ["StatusMessage"]
       21 GETTABLEKS                       R7 R1 K4 ["Body"]
       23 NAMECALL                         R3 R3 K5 ["format"]
       25 CALL                             R3 4 1
       26 CALL                             R2 1 -1
       27 RETURN                           R2 -1
       28 GETUPVAL                         R2 1
       29 LOADK                            R3 K6 ["Http %*: %*"]
       30 GETTABLEKS                       R5 R1 K0 ["StatusCode"]
       32 GETTABLEKS                       R6 R1 K3 ["StatusMessage"]
       34 NAMECALL                         R3 R3 K5 ["format"]
       36 CALL                             R3 3 1
       37 CALL                             R2 1 -1
       38 RETURN                           R2 -1
       39 GETUPVAL                         R2 2
       40 GETUPVAL                         R3 3
       41 GETTABLEKS                       R5 R1 K4 ["Body"]
       43 NAMECALL                         R3 R3 K7 ["JSONDecode"]
       45 CALL                             R3 2 -1
       46 CALL                             R2 -1 -1
       47 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 NAMECALL                         R2 R2 K0 ["RequestInternal"]
        4 CALL                             R2 2 1
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U0
       10 NAMECALL                         R2 R2 K1 ["Start"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

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
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Bin"]
       18 GETTABLEKS                       R3 R3 K9 ["Common"]
       20 GETTABLEKS                       R3 R3 K10 ["flags"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K12 [game]
       25 LOADK                            R5 K13 ["HttpService"]
       26 NAMECALL                         R3 R3 K14 ["GetService"]
       28 CALL                             R3 2 1
       29 GETIMPORT                        R4 K5 [require]
       31 GETTABLEKS                       R5 R0 K15 ["Src"]
       33 GETTABLEKS                       R5 R5 K16 ["Types"]
       35 CALL                             R4 1 1
       36 DUPCLOSURE                       R5 K17 [PROTO_2]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R2
       40 DUPTABLE                         R6 K19 [{"Request"}]
       41 SETTABLEKS                       R5 R6 K18 ["Request"]
       43 RETURN                           R6 1
