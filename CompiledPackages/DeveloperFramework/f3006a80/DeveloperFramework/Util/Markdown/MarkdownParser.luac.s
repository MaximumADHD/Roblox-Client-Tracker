PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["parse"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 LOADK                            R2 K0 ["%*\n%*"]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R5 K3 [debug.traceback]
        4 CALL                             R5 0 1
        5 NAMECALL                         R2 R2 K4 ["format"]
        7 CALL                             R2 3 1
        8 MOVE                             R1 R2
        9 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R2 K1 [xpcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 DUPCLOSURE                       R4 K2 [PROTO_1]
        7 CALL                             R2 2 2
        8 RETURN                           R2 2

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R2
        5 CALL                             R3 1 1
        6 GETUPVAL                         R4 2
        7 MOVE                             R5 R3
        8 CALL                             R4 1 1
        9 GETUPVAL                         R5 3
       10 MOVE                             R6 R4
       11 MOVE                             R7 R1
       12 JUMPIF                           R7 ; [+1]
       13 GETUPVAL                         R7 4
       14 CALL                             R5 2 1
       15 SETTABLEKS                       R5 R4 K0 ["children"]
       17 GETUPVAL                         R5 5
       18 MOVE                             R6 R4
       19 CALL                             R5 1 -1
       20 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["BuildTree"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["PostProcessTree"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["Tokenize"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R4 K3 [script]
       32 GETTABLEKS                       R4 R4 K4 ["Parent"]
       34 GETTABLEKS                       R4 R4 K8 ["unindentTags"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K1 [require]
       39 GETIMPORT                        R5 K3 [script]
       41 GETTABLEKS                       R5 R5 K4 ["Parent"]
       43 GETTABLEKS                       R5 R5 K9 ["indexTree"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K1 [require]
       48 GETIMPORT                        R6 K3 [script]
       50 GETTABLEKS                       R6 R6 K4 ["Parent"]
       52 GETTABLEKS                       R6 R6 K10 ["Types"]
       54 CALL                             R5 1 1
       55 DUPTABLE                         R6 K12 [{"inlineTags"}]
       56 DUPTABLE                         R7 K16 [{["font"] = True, ["img"] = True}]
       57 SETTABLEKS                       R7 R6 K11 ["inlineTags"]
       59 NEWTABLE                         R7 2 0
       61 DUPCLOSURE                       R8 K17 [PROTO_2]
       62 CAPTURE                          VAL R7
       63 SETTABLEKS                       R8 R7 K18 ["safeParse"]
       65 DUPCLOSURE                       R8 K19 [PROTO_3]
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R0
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R4
       72 SETTABLEKS                       R8 R7 K20 ["parse"]
       74 RETURN                           R7 1
