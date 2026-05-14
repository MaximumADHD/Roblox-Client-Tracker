PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["validate"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIF                           R1 ; [+11]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["reject"]
        9 LOADK                            R5 K2 ["GetNotesValidationModel: %*"]
       10 MOVE                             R7 R2
       11 NAMECALL                         R5 R5 K3 ["format"]
       13 CALL                             R5 2 1
       14 MOVE                             R4 R5
       15 CALL                             R3 1 -1
       16 RETURN                           R3 -1
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K4 ["resolve"]
       20 GETTABLEKS                       R4 R0 K5 ["isValid"]
       22 CALL                             R3 1 -1
       23 RETURN                           R3 -1

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"text"}]
        1 SETTABLEKS                       R0 R1 K0 ["text"]
        3 DUPTABLE                         R2 K5 [{"Method", "Url", "Headers"}]
        4 LOADK                            R3 K6 ["GET"]
        5 SETTABLEKS                       R3 R2 K2 ["Method"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K7 ["composeUrl"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K8 ["APIS_URL"]
       13 LOADK                            R5 K9 ["place-version-history-api/v1/notes/validate"]
       14 MOVE                             R6 R1
       15 CALL                             R3 3 1
       16 SETTABLEKS                       R3 R2 K3 ["Url"]
       18 NEWTABLE                         R3 1 0
       20 LOADK                            R4 K10 ["application/json"]
       21 SETTABLEKS                       R4 R3 K11 ["Content-Type"]
       23 SETTABLEKS                       R3 R2 K4 ["Headers"]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K12 ["Request"]
       28 MOVE                             R4 R2
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R5 K13 [PROTO_0]
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U3
       33 NAMECALL                         R3 R3 K14 ["andThen"]
       35 CALL                             R3 2 -1
       36 RETURN                           R3 -1

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
       39 GETTABLEKS                       R8 R5 K15 ["GetNotesValidationModel"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K5 [require]
       44 GETTABLEKS                       R9 R0 K12 ["Src"]
       46 GETTABLEKS                       R9 R9 K16 ["Types"]
       48 CALL                             R8 1 1
       49 DUPCLOSURE                       R9 K17 [PROTO_1]
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R2
       54 RETURN                           R9 1
