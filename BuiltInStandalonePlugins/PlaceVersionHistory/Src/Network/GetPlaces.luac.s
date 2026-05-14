PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["validate"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIF                           R1 ; [+11]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["reject"]
        9 LOADK                            R5 K2 ["GetPlacesModel: %*"]
       10 MOVE                             R7 R2
       11 NAMECALL                         R5 R5 K3 ["format"]
       13 CALL                             R5 2 1
       14 MOVE                             R4 R5
       15 CALL                             R3 1 -1
       16 RETURN                           R3 -1
       17 DUPTABLE                         R3 K7 [{"hasMore", "cursor", "page"}]
       18 GETTABLEKS                       R5 R0 K8 ["nextPageCursor"]
       20 JUMPIFNOTEQKNIL                  R5 ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 SETTABLEKS                       R4 R3 K4 ["hasMore"]
       26 GETTABLEKS                       R4 R0 K8 ["nextPageCursor"]
       28 SETTABLEKS                       R4 R3 K5 ["cursor"]
       30 NEWTABLE                         R4 0 0
       32 SETTABLEKS                       R4 R3 K6 ["page"]
       34 GETTABLEKS                       R4 R0 K9 ["data"]
       36 LOADNIL                          R5
       37 LOADNIL                          R6
       38 FORGPREP                         R4
       39 GETTABLEKS                       R9 R3 K6 ["page"]
       41 GETTABLEKS                       R10 R8 K10 ["id"]
       43 GETTABLEKS                       R11 R8 K11 ["name"]
       45 SETTABLE                         R11 R9 R10
       46 FORGLOOP                         R4 2 ; [-8]
       48 GETUPVAL                         R4 1
       49 GETTABLEKS                       R4 R4 K12 ["resolve"]
       51 MOVE                             R5 R3
       52 CALL                             R4 1 -1
       53 RETURN                           R4 -1

PROTO_1:
        0 DUPTABLE                         R1 K3 [{"isUniverseCreation", "limit", "cursor"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["isUniverseCreation"]
        4 GETTABLEKS                       R2 R0 K4 ["pageSize"]
        6 SETTABLEKS                       R2 R1 K1 ["limit"]
        8 GETTABLEKS                       R2 R0 K2 ["cursor"]
       10 SETTABLEKS                       R2 R1 K2 ["cursor"]
       12 DUPTABLE                         R2 K8 [{"Method", "Url", "Headers"}]
       13 LOADK                            R3 K9 ["GET"]
       14 SETTABLEKS                       R3 R2 K5 ["Method"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K10 ["composeUrl"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K11 ["DEVELOP_URL"]
       22 LOADK                            R6 K12 ["v1/universes/%*/places"]
       23 GETTABLEKS                       R8 R0 K13 ["universeId"]
       25 NAMECALL                         R6 R6 K14 ["format"]
       27 CALL                             R6 2 1
       28 MOVE                             R5 R6
       29 MOVE                             R6 R1
       30 CALL                             R3 3 1
       31 SETTABLEKS                       R3 R2 K6 ["Url"]
       33 NEWTABLE                         R3 1 0
       35 LOADK                            R4 K15 ["application/json"]
       36 SETTABLEKS                       R4 R3 K16 ["Content-Type"]
       38 SETTABLEKS                       R3 R2 K7 ["Headers"]
       40 GETUPVAL                         R3 1
       41 GETTABLEKS                       R3 R3 K17 ["Request"]
       43 MOVE                             R4 R2
       44 CALL                             R3 1 1
       45 DUPCLOSURE                       R5 K18 [PROTO_0]
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U3
       48 NAMECALL                         R3 R3 K19 ["andThen"]
       50 CALL                             R3 2 -1
       51 RETURN                           R3 -1

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
