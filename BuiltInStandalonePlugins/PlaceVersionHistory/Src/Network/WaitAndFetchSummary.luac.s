PROTO_0:
        0 DUPTABLE                         R0 K4 [{[1] = "GET", ["Url"], ["Headers"]}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K5 ["composeUrl"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K6 ["APIS_URL"]
        7 LOADK                            R4 K7 ["place-version-history-summary-api/v1/places/%*/version-notes-summaries/%*"]
        8 GETUPVAL                         R6 1
        9 GETUPVAL                         R7 2
       10 NAMECALL                         R4 R4 K8 ["format"]
       12 CALL                             R4 3 1
       13 MOVE                             R3 R4
       14 CALL                             R1 2 1
       15 SETTABLEKS                       R1 R0 K2 ["Url"]
       17 NEWTABLE                         R1 1 0
       19 LOADK                            R2 K9 ["application/json"]
       20 SETTABLEKS                       R2 R1 K10 ["Content-Type"]
       22 SETTABLEKS                       R1 R0 K3 ["Headers"]
       24 GETUPVAL                         R1 3
       25 GETTABLEKS                       R1 R1 K11 ["Request"]
       27 MOVE                             R2 R0
       28 CALL                             R1 1 -1
       29 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["validate"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIF                           R1 ; [+11]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["reject"]
        9 LOADK                            R5 K2 ["GetGeneratedNotesModel: %*"]
       10 MOVE                             R7 R2
       11 NAMECALL                         R5 R5 K3 ["format"]
       13 CALL                             R5 2 1
       14 MOVE                             R4 R5
       15 CALL                             R3 1 -1
       16 RETURN                           R3 -1
       17 DUPTABLE                         R3 K6 [{"title", "description"}]
       18 GETTABLEKS                       R4 R0 K4 ["title"]
       20 SETTABLEKS                       R4 R3 K4 ["title"]
       22 GETTABLEKS                       R4 R0 K7 ["summarizedVersionNotes"]
       24 SETTABLEKS                       R4 R3 K5 ["description"]
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K8 ["resolve"]
       29 MOVE                             R5 R3
       30 CALL                             R4 1 -1
       31 RETURN                           R4 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U2
        8 NAMECALL                         R2 R2 K0 ["andThen"]
       10 CALL                             R2 2 1
       11 DUPCLOSURE                       R4 K1 [PROTO_1]
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 NAMECALL                         R2 R2 K0 ["andThen"]
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

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
       39 GETTABLEKS                       R8 R5 K15 ["GetGeneratedNotesModel"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K5 [require]
       44 GETTABLEKS                       R9 R5 K16 ["WaitForGeneratedNotes"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R0 K12 ["Src"]
       51 GETTABLEKS                       R10 R10 K17 ["Types"]
       53 CALL                             R9 1 1
       54 DUPCLOSURE                       R10 K18 [PROTO_2]
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R2
       60 RETURN                           R10 1
