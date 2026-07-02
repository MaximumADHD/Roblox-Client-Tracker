PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["resolve"]
        3 CALL                             R1 0 -1
        4 RETURN                           R1 -1

PROTO_1:
        0 DUPTABLE                         R1 K5 [{[1] = "POST", ["Url"], ["Body"], ["Headers"]}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K6 ["composeUrl"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K7 ["APIS_URL"]
        7 LOADK                            R5 K8 ["place-version-history-api/v1/%*/version/%*/notes"]
        8 GETTABLEKS                       R7 R0 K9 ["placeId"]
       10 GETTABLEKS                       R8 R0 K10 ["version"]
       12 NAMECALL                         R5 R5 K11 ["format"]
       14 CALL                             R5 3 1
       15 MOVE                             R4 R5
       16 CALL                             R2 2 1
       17 SETTABLEKS                       R2 R1 K2 ["Url"]
       19 GETUPVAL                         R2 1
       20 DUPTABLE                         R4 K14 [{"title", "description"}]
       21 GETTABLEKS                       R5 R0 K15 ["notes"]
       23 GETTABLEKS                       R5 R5 K12 ["title"]
       25 SETTABLEKS                       R5 R4 K12 ["title"]
       27 GETTABLEKS                       R5 R0 K15 ["notes"]
       29 GETTABLEKS                       R5 R5 K13 ["description"]
       31 SETTABLEKS                       R5 R4 K13 ["description"]
       33 NAMECALL                         R2 R2 K16 ["JSONEncode"]
       35 CALL                             R2 2 1
       36 SETTABLEKS                       R2 R1 K3 ["Body"]
       38 NEWTABLE                         R2 1 0
       40 LOADK                            R3 K17 ["application/json"]
       41 SETTABLEKS                       R3 R2 K18 ["Content-Type"]
       43 SETTABLEKS                       R2 R1 K4 ["Headers"]
       45 GETUPVAL                         R2 2
       46 GETTABLEKS                       R2 R2 K19 ["Request"]
       48 MOVE                             R3 R1
       49 CALL                             R2 1 1
       50 DUPCLOSURE                       R4 K20 [PROTO_0]
       51 CAPTURE                          UPVAL U3
       52 NAMECALL                         R2 R2 K21 ["andThen"]
       54 CALL                             R2 2 -1
       55 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Promise"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R0 K9 ["Src"]
       23 GETTABLEKS                       R3 R3 K10 ["Contexts"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R3 K11 ["NetworkContext"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R5 K12 ["Network"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R5 K13 ["Http"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K15 [game]
       41 LOADK                            R9 K16 ["HttpService"]
       42 NAMECALL                         R7 R7 K17 ["GetService"]
       44 CALL                             R7 2 1
       45 GETTABLEKS                       R8 R1 K18 ["RobloxAPI"]
       47 GETTABLEKS                       R8 R8 K19 ["Url"]
       49 GETTABLEKS                       R9 R8 K20 ["new"]
       51 CALL                             R9 0 1
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R11 R0 K9 ["Src"]
       56 GETTABLEKS                       R11 R11 K21 ["Types"]
       58 CALL                             R10 1 1
       59 DUPCLOSURE                       R11 K22 [PROTO_1]
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R2
       64 RETURN                           R11 1
