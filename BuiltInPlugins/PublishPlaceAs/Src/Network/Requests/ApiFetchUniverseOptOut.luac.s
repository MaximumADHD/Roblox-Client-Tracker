PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R2 R1 K1 ["configurations"]
        7 GETTABLEKS                       R3 R1 K2 ["isEligible"]
        9 RETURN                           R2 2

PROTO_1:
        0 DUPTABLE                         R0 K2 [{"Url", "Method"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K3 ["BuildRobloxUrl"]
        4 LOADK                            R2 K4 ["apis"]
        5 LOADK                            R3 K5 ["resource-settings/v1/preferences:batchGet?preferenceTypes=Universes"]
        6 CALL                             R1 2 1
        7 SETTABLEKS                       R1 R0 K0 ["Url"]
        9 LOADK                            R1 K6 ["GET"]
       10 SETTABLEKS                       R1 R0 K1 ["Method"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K7 ["RequestInternal"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 1
       17 DUPCLOSURE                       R3 K8 [PROTO_0]
       18 CAPTURE                          UPVAL U1
       19 NAMECALL                         R1 R1 K9 ["andThen"]
       21 CALL                             R1 2 -1
       22 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R5 K5 [script]
        9 GETTABLEKS                       R4 R5 K6 ["Parent"]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K6 ["Parent"]
       15 GETTABLEKS                       R1 R2 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R5 R1 K9 ["Src"]
       21 GETTABLEKS                       R4 R5 K10 ["Network"]
       23 GETTABLEKS                       R3 R4 K11 ["Http"]
       25 CALL                             R2 1 1
       26 DUPCLOSURE                       R3 K12 [PROTO_1]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R0
       29 RETURN                           R3 1
