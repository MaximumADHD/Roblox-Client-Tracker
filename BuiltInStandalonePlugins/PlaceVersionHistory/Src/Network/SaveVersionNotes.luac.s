PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["resolve"]
        3 CALL                             R1 0 -1
        4 RETURN                           R1 -1

PROTO_1:
        0 DUPTABLE                         R1 K4 [{"Method", "Url", "Body", "Headers"}]
        1 LOADK                            R2 K5 ["POST"]
        2 SETTABLEKS                       R2 R1 K0 ["Method"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K6 ["composeUrl"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K7 ["APIS_URL"]
       10 LOADK                            R5 K8 ["place-version-history-api/v1/%*/version/%*/notes"]
       11 GETTABLEKS                       R7 R0 K9 ["placeId"]
       13 GETTABLEKS                       R8 R0 K10 ["version"]
       15 NAMECALL                         R5 R5 K11 ["format"]
       17 CALL                             R5 3 1
       18 MOVE                             R4 R5
       19 CALL                             R2 2 1
       20 SETTABLEKS                       R2 R1 K1 ["Url"]
       22 GETUPVAL                         R2 1
       23 DUPTABLE                         R4 K14 [{"title", "description"}]
       24 GETTABLEKS                       R6 R0 K15 ["notes"]
       26 GETTABLEKS                       R5 R6 K12 ["title"]
       28 SETTABLEKS                       R5 R4 K12 ["title"]
       30 GETTABLEKS                       R6 R0 K15 ["notes"]
       32 GETTABLEKS                       R5 R6 K13 ["description"]
       34 SETTABLEKS                       R5 R4 K13 ["description"]
       36 NAMECALL                         R2 R2 K16 ["JSONEncode"]
       38 CALL                             R2 2 1
       39 SETTABLEKS                       R2 R1 K2 ["Body"]
       41 NEWTABLE                         R2 1 0
       43 LOADK                            R3 K17 ["application/json"]
       44 SETTABLEKS                       R3 R2 K18 ["Content-Type"]
       46 SETTABLEKS                       R2 R1 K3 ["Headers"]
       48 GETUPVAL                         R3 2
       49 GETTABLEKS                       R2 R3 K19 ["Request"]
       51 MOVE                             R3 R1
       52 CALL                             R2 1 1
       53 DUPCLOSURE                       R4 K20 [PROTO_0]
       54 CAPTURE                          UPVAL U3
       55 NAMECALL                         R2 R2 K21 ["andThen"]
       57 CALL                             R2 2 -1
       58 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Promise"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R0 K9 ["Src"]
       23 GETTABLEKS                       R3 R4 K10 ["Contexts"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R3 K11 ["NetworkContext"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R6 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R6 K12 ["Network"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R5 K13 ["Http"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K15 [game]
       41 LOADK                            R9 K16 ["HttpService"]
       42 NAMECALL                         R7 R7 K17 ["GetService"]
       44 CALL                             R7 2 1
       45 GETTABLEKS                       R9 R1 K18 ["RobloxAPI"]
       47 GETTABLEKS                       R8 R9 K19 ["Url"]
       49 GETTABLEKS                       R9 R8 K20 ["new"]
       51 CALL                             R9 0 1
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R12 R0 K9 ["Src"]
       56 GETTABLEKS                       R11 R12 K21 ["Types"]
       58 CALL                             R10 1 1
       59 DUPCLOSURE                       R11 K22 [PROTO_1]
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R2
       64 RETURN                           R11 1
