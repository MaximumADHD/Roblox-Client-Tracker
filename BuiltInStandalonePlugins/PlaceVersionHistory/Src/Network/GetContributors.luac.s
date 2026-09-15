PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["validate"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIF                           R1 ; [+10]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["reject"]
        9 LOADK                            R4 K2 ["GetContributorsModel: %*"]
       10 MOVE                             R6 R2
       11 NAMECALL                         R4 R4 K3 ["format"]
       13 CALL                             R4 2 1
       14 CALL                             R3 1 -1
       15 RETURN                           R3 -1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K4 ["resolve"]
       19 MOVE                             R4 R0
       20 CALL                             R3 1 -1
       21 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["contributors"]
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R7 1
        7 MOVE                             R8 R6
        8 CALL                             R7 1 1
        9 NAMECALL                         R7 R7 K1 ["await"]
       11 CALL                             R7 1 2
       12 JUMPIFNOT                        R7 ; [+4]
       13 GETUPVAL                         R9 2
       14 GETTABLEKS                       R9 R9 K2 ["page"]
       16 SETTABLE                         R8 R9 R6
       17 FORGLOOP                         R2 2 ; [-12]
       19 MOVE                             R2 R0
       20 GETUPVAL                         R3 2
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K3 [{"hasMore", "cursor", "page"}]
        1 GETTABLEKS                       R2 R0 K0 ["hasMore"]
        3 SETTABLEKS                       R2 R1 K0 ["hasMore"]
        5 GETTABLEKS                       R2 R0 K4 ["nextCursor"]
        7 SETTABLEKS                       R2 R1 K1 ["cursor"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K2 ["page"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K5 ["new"]
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R1
       20 CALL                             R2 1 -1
       21 RETURN                           R2 -1

PROTO_3:
        0 DUPTABLE                         R1 K3 [{[1] = "GET", ["Url"]}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K4 ["composeUrl"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K5 ["APIS_URL"]
        7 LOADK                            R4 K6 ["place-version-history-api/v1/%*/contributors"]
        8 GETTABLEKS                       R6 R0 K7 ["placeId"]
       10 NAMECALL                         R4 R4 K8 ["format"]
       12 CALL                             R4 2 1
       13 DUPTABLE                         R5 K11 [{"cursor", "pageSize"}]
       14 GETTABLEKS                       R6 R0 K9 ["cursor"]
       16 SETTABLEKS                       R6 R5 K9 ["cursor"]
       18 GETTABLEKS                       R6 R0 K10 ["pageSize"]
       20 SETTABLEKS                       R6 R5 K10 ["pageSize"]
       22 CALL                             R2 3 1
       23 SETTABLEKS                       R2 R1 K2 ["Url"]
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K12 ["Request"]
       28 MOVE                             R3 R1
       29 CALL                             R2 1 1
       30 DUPCLOSURE                       R4 K13 [PROTO_0]
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U3
       33 NAMECALL                         R2 R2 K14 ["andThen"]
       35 CALL                             R2 2 1
       36 DUPCLOSURE                       R4 K15 [PROTO_2]
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U4
       39 NAMECALL                         R2 R2 K14 ["andThen"]
       41 CALL                             R2 2 -1
       42 RETURN                           R2 -1

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
       30 GETTABLEKS                       R5 R1 K12 ["RobloxAPI"]
       32 GETTABLEKS                       R5 R5 K13 ["Url"]
       34 GETTABLEKS                       R6 R5 K14 ["new"]
       36 CALL                             R6 0 1
       37 GETTABLEKS                       R7 R0 K9 ["Src"]
       39 GETTABLEKS                       R7 R7 K15 ["Network"]
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R9 R7 K16 ["GetContributorsModel"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K5 [require]
       48 GETTABLEKS                       R10 R7 K17 ["GetUserName"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R11 R7 K18 ["Http"]
       55 CALL                             R10 1 1
       56 GETIMPORT                        R11 K5 [require]
       58 GETTABLEKS                       R12 R0 K9 ["Src"]
       60 GETTABLEKS                       R12 R12 K19 ["Types"]
       62 CALL                             R11 1 1
       63 DUPCLOSURE                       R12 K20 [PROTO_3]
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R10
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R9
       69 RETURN                           R12 1
