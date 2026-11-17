PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["validate"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIF                           R1 ; [+10]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["reject"]
        9 LOADK                            R4 K2 ["GetPlacesModel: %*"]
       10 MOVE                             R6 R2
       11 NAMECALL                         R4 R4 K3 ["format"]
       13 CALL                             R4 2 1
       14 CALL                             R3 1 -1
       15 RETURN                           R3 -1
       16 DUPTABLE                         R3 K7 [{"hasMore", "cursor", "page"}]
       17 GETTABLEKS                       R5 R0 K8 ["nextPageCursor"]
       19 JUMPIFNOTEQKNIL                  R5 ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 SETTABLEKS                       R4 R3 K4 ["hasMore"]
       25 GETTABLEKS                       R4 R0 K8 ["nextPageCursor"]
       27 SETTABLEKS                       R4 R3 K5 ["cursor"]
       29 NEWTABLE                         R4 0 0
       31 SETTABLEKS                       R4 R3 K6 ["page"]
       33 GETTABLEKS                       R4 R0 K9 ["data"]
       35 LOADNIL                          R5
       36 LOADNIL                          R6
       37 FORGPREP                         R4
       38 GETTABLEKS                       R9 R3 K6 ["page"]
       40 GETTABLEKS                       R10 R8 K10 ["id"]
       42 GETTABLEKS                       R11 R8 K11 ["name"]
       44 SETTABLE                         R11 R9 R10
       45 FORGLOOP                         R4 2 ; [-8]
       47 GETUPVAL                         R4 1
       48 GETTABLEKS                       R4 R4 K12 ["resolve"]
       50 MOVE                             R5 R3
       51 CALL                             R4 1 -1
       52 RETURN                           R4 -1

PROTO_1:
        0 DUPTABLE                         R1 K4 [{[1] = False, ["limit"], ["cursor"]}]
        1 GETTABLEKS                       R2 R0 K5 ["pageSize"]
        3 SETTABLEKS                       R2 R1 K2 ["limit"]
        5 GETTABLEKS                       R2 R0 K3 ["cursor"]
        7 SETTABLEKS                       R2 R1 K3 ["cursor"]
        9 DUPTABLE                         R2 K10 [{["Method"] = "GET", ["Url"], ["Headers"]}]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K11 ["composeUrl"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K12 ["DEVELOP_URL"]
       16 LOADK                            R5 K13 ["v1/universes/%*/places"]
       17 GETTABLEKS                       R7 R0 K14 ["universeId"]
       19 NAMECALL                         R5 R5 K15 ["format"]
       21 CALL                             R5 2 1
       22 MOVE                             R6 R1
       23 CALL                             R3 3 1
       24 SETTABLEKS                       R3 R2 K8 ["Url"]
       26 NEWTABLE                         R3 1 0
       28 LOADK                            R4 K16 ["application/json"]
       29 SETTABLEKS                       R4 R3 K17 ["Content-Type"]
       31 SETTABLEKS                       R3 R2 K9 ["Headers"]
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R3 R3 K18 ["Request"]
       36 MOVE                             R4 R2
       37 CALL                             R3 1 1
       38 DUPCLOSURE                       R5 K19 [PROTO_0]
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          UPVAL U3
       41 NAMECALL                         R3 R3 K20 ["andThen"]
       43 CALL                             R3 2 -1
       44 RETURN                           R3 -1

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
       43 GETTABLEKS                       R9 R7 K16 ["Http"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K5 [require]
       48 GETTABLEKS                       R10 R7 K17 ["GetPlacesModel"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R11 R0 K9 ["Src"]
       55 GETTABLEKS                       R11 R11 K18 ["Types"]
       57 CALL                             R10 1 1
       58 DUPCLOSURE                       R11 K19 [PROTO_1]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R2
       63 RETURN                           R11 1
