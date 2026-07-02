PROTO_0:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["JSONDecode"]
        5 GETUPVAL                         R3 0
        6 MOVE                             R4 R0
        7 CALL                             R1 3 2
        8 JUMPIFNOT                        R1 ; [+1]
        9 RETURN                           R2 1
       10 GETIMPORT                        R3 K4 [warn]
       12 LOADK                            R4 K5 ["JSON decode failed"]
       13 CALL                             R3 1 0
       14 LOADNIL                          R3
       15 RETURN                           R3 1

PROTO_1:
        0 DUPTABLE                         R1 K3 [{[1], ["Method"] = "GET"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K4 ["BuildRobloxUrl"]
        4 LOADK                            R3 K5 ["develop"]
        5 LOADK                            R4 K6 ["v1/universes/%d/configuration"]
        6 MOVE                             R6 R0
        7 NAMECALL                         R4 R4 K7 ["format"]
        9 CALL                             R4 2 -1
       10 CALL                             R2 -1 1
       11 SETTABLEKS                       R2 R1 K0 ["Url"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K8 ["Request"]
       16 MOVE                             R3 R1
       17 CALL                             R2 1 1
       18 DUPCLOSURE                       R4 K9 [PROTO_0]
       19 CAPTURE                          UPVAL U1
       20 NAMECALL                         R2 R2 K10 ["andThen"]
       22 CALL                             R2 2 -1
       23 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R1 R1 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R3 R1 K9 ["Src"]
       21 GETTABLEKS                       R3 R3 K10 ["Network"]
       23 GETTABLEKS                       R3 R3 K11 ["Http"]
       25 CALL                             R2 1 1
       26 DUPCLOSURE                       R3 K12 [PROTO_1]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R0
       29 RETURN                           R3 1
