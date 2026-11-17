PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R5 R1 K1 ["eligibilityByCreator"]
        7 LENGTH                           R4 R5
        8 JUMPIFEQKN                       R4 K2 [1] ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 FASTCALL1                        ASSERT R3 ; [+2]
       13 GETIMPORT                        R2 K4 [assert]
       15 CALL                             R2 1 0
       16 DUPTABLE                         R2 K7 [{"userIsEligible", "universeId"}]
       17 GETTABLEKS                       R4 R1 K1 ["eligibilityByCreator"]
       19 GETTABLEN                        R3 R4 1
       20 GETTABLEKS                       R3 R3 K5 ["userIsEligible"]
       22 SETTABLEKS                       R3 R2 K5 ["userIsEligible"]
       24 GETUPVAL                         R3 1
       25 SETTABLEKS                       R3 R2 K6 ["universeId"]
       27 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R2 K4 [{[1], ["Method"] = "POST", ["Body"]}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K5 ["BuildRobloxUrl"]
        4 LOADK                            R4 K6 ["apis"]
        5 LOADK                            R5 K7 ["experience-guidelines-service/v1beta1/multi-creator-eligibility"]
        6 CALL                             R3 2 1
        7 SETTABLEKS                       R3 R2 K0 ["Url"]
        9 GETUPVAL                         R3 1
       10 DUPTABLE                         R5 K12 [{["action"] = 1, ["universeId"], ["userIds"]}]
       11 SETTABLEKS                       R0 R5 K10 ["universeId"]
       13 NEWTABLE                         R6 0 1
       15 MOVE                             R7 R1
       16 SETLIST                          R6 R7 1 [1]
       18 SETTABLEKS                       R6 R5 K11 ["userIds"]
       20 NAMECALL                         R3 R3 K13 ["JSONEncode"]
       22 CALL                             R3 2 1
       23 SETTABLEKS                       R3 R2 K3 ["Body"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K14 ["Request"]
       28 MOVE                             R4 R2
       29 CALL                             R3 1 1
       30 NEWCLOSURE                       R5 P0
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          VAL R0
       33 NAMECALL                         R3 R3 K15 ["andThen"]
       35 CALL                             R3 2 -1
       36 RETURN                           R3 -1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 GETTABLEKS                       R7 R6 K2 ["universeId"]
        9 GETTABLEKS                       R8 R6 K3 ["userIsEligible"]
       11 SETTABLE                         R8 R1 R7
       12 FORGLOOP                         R2 2 ; [-6]
       14 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 MOVE                             R9 R2
        8 GETUPVAL                         R10 0
        9 MOVE                             R11 R7
       10 MOVE                             R12 R1
       11 CALL                             R10 2 -1
       12 FASTCALL                         TABLE_INSERT ; [+2]
       13 GETIMPORT                        R8 K4 [table.insert]
       15 CALL                             R8 -1 0
       16 FORGLOOP                         R3 2 ; [-10]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K5 ["all"]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 1
       23 DUPCLOSURE                       R5 K6 [PROTO_2]
       24 NAMECALL                         R3 R3 K7 ["andThen"]
       26 CALL                             R3 2 -1
       27 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Network"]
       17 GETTABLEKS                       R2 R2 K7 ["Http"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K9 [game]
       22 LOADK                            R4 K10 ["HttpService"]
       23 NAMECALL                         R2 R2 K11 ["GetService"]
       25 CALL                             R2 2 1
       26 GETIMPORT                        R3 K4 [require]
       28 GETTABLEKS                       R4 R0 K12 ["Packages"]
       30 GETTABLEKS                       R4 R4 K13 ["Framework"]
       32 CALL                             R3 1 1
       33 GETTABLEKS                       R3 R3 K14 ["Util"]
       35 GETTABLEKS                       R3 R3 K15 ["Promise"]
       37 DUPCLOSURE                       R4 K16 [PROTO_1]
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 DUPCLOSURE                       R5 K17 [PROTO_3]
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 RETURN                           R5 1
