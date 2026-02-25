PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R1 R0 K1 ["name"]
        5 JUMPIF                           R1 ; [+6]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K2 ["reject"]
        9 LOADK                            R2 K3 ["GetPlaceName: missing place name"]
       10 CALL                             R1 1 -1
       11 RETURN                           R1 -1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K4 ["resolve"]
       15 GETTABLEKS                       R2 R0 K1 ["name"]
       17 CALL                             R1 1 -1
       18 RETURN                           R1 -1

PROTO_1:
        0 DUPTABLE                         R1 K3 [{"Method", "Url", "Headers"}]
        1 LOADK                            R2 K4 ["GET"]
        2 SETTABLEKS                       R2 R1 K0 ["Method"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K5 ["composeUrl"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K6 ["DEVELOP_URL"]
       10 LOADK                            R5 K7 ["v2/places/%*"]
       11 MOVE                             R7 R0
       12 NAMECALL                         R5 R5 K8 ["format"]
       14 CALL                             R5 2 1
       15 MOVE                             R4 R5
       16 CALL                             R2 2 1
       17 SETTABLEKS                       R2 R1 K1 ["Url"]
       19 NEWTABLE                         R2 1 0
       21 LOADK                            R3 K9 ["application/json"]
       22 SETTABLEKS                       R3 R2 K10 ["Content-Type"]
       24 SETTABLEKS                       R2 R1 K2 ["Headers"]
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R2 R3 K11 ["Request"]
       29 MOVE                             R3 R1
       30 CALL                             R2 1 1
       31 DUPCLOSURE                       R4 K12 [PROTO_0]
       32 CAPTURE                          UPVAL U2
       33 NAMECALL                         R2 R2 K13 ["andThen"]
       35 CALL                             R2 2 -1
       36 RETURN                           R2 -1

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
       21 GETTABLEKS                       R4 R1 K9 ["RobloxAPI"]
       23 GETTABLEKS                       R3 R4 K10 ["Url"]
       25 GETTABLEKS                       R4 R3 K11 ["new"]
       27 CALL                             R4 0 1
       28 GETTABLEKS                       R6 R0 K12 ["Src"]
       30 GETTABLEKS                       R5 R6 K13 ["Network"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R5 K14 ["Http"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R9 R0 K12 ["Src"]
       41 GETTABLEKS                       R8 R9 K15 ["Types"]
       43 CALL                             R7 1 1
       44 DUPCLOSURE                       R8 K16 [PROTO_1]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R2
       48 RETURN                           R8 1
