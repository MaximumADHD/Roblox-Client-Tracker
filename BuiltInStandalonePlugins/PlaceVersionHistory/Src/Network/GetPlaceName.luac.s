PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R1 R0 K1 ["name"]
        5 JUMPIF                           R1 ; [+6]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["reject"]
        9 LOADK                            R2 K3 ["GetPlaceName: missing place name"]
       10 CALL                             R1 1 -1
       11 RETURN                           R1 -1
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K4 ["resolve"]
       15 GETTABLEKS                       R2 R0 K1 ["name"]
       17 CALL                             R1 1 -1
       18 RETURN                           R1 -1

PROTO_1:
        0 DUPTABLE                         R1 K4 [{[1] = "GET", ["Url"], ["Headers"]}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K5 ["composeUrl"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K6 ["DEVELOP_URL"]
        7 LOADK                            R4 K7 ["v2/places/%*"]
        8 MOVE                             R6 R0
        9 NAMECALL                         R4 R4 K8 ["format"]
       11 CALL                             R4 2 1
       12 CALL                             R2 2 1
       13 SETTABLEKS                       R2 R1 K2 ["Url"]
       15 NEWTABLE                         R2 1 0
       17 LOADK                            R3 K9 ["application/json"]
       18 SETTABLEKS                       R3 R2 K10 ["Content-Type"]
       20 SETTABLEKS                       R2 R1 K3 ["Headers"]
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K11 ["Request"]
       25 MOVE                             R3 R1
       26 CALL                             R2 1 1
       27 DUPCLOSURE                       R4 K12 [PROTO_0]
       28 CAPTURE                          UPVAL U2
       29 NAMECALL                         R2 R2 K13 ["andThen"]
       31 CALL                             R2 2 -1
       32 RETURN                           R2 -1

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
       21 GETTABLEKS                       R3 R1 K9 ["RobloxAPI"]
       23 GETTABLEKS                       R3 R3 K10 ["Url"]
       25 GETTABLEKS                       R4 R3 K11 ["new"]
       27 CALL                             R4 0 1
       28 GETTABLEKS                       R5 R0 K12 ["Src"]
       30 GETTABLEKS                       R5 R5 K13 ["Network"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R5 K14 ["Http"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R8 R0 K12 ["Src"]
       41 GETTABLEKS                       R8 R8 K15 ["Types"]
       43 CALL                             R7 1 1
       44 DUPCLOSURE                       R8 K16 [PROTO_1]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R2
       48 RETURN                           R8 1
