PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["validate"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIF                           R1 ; [+11]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["reject"]
        9 LOADK                            R5 K2 ["StartGeneratedNotesModel: %*"]
       10 MOVE                             R7 R2
       11 NAMECALL                         R5 R5 K3 ["format"]
       13 CALL                             R5 2 1
       14 MOVE                             R4 R5
       15 CALL                             R3 1 -1
       16 RETURN                           R3 -1
       17 GETUPVAL                         R3 2
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R5 R0 K4 ["operationId"]
       21 CALL                             R3 2 -1
       22 RETURN                           R3 -1

PROTO_1:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+24]
        7 GETIMPORT                        R1 K4 [string.match]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K5 ["^Http (%d+):"]
       11 CALL                             R1 2 1
       12 JUMPIFNOTEQKS                    R1 K6 ["404"] ; [+17]
       14 GETIMPORT                        R1 K8 [string.find]
       16 MOVE                             R2 R0
       17 LOADK                            R3 K9 ["No version notes were found to summarize."]
       18 LOADN                            R4 1
       19 LOADB                            R5 1
       20 CALL                             R1 4 1
       21 JUMPIFNOT                        R1 ; [+8]
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K10 ["reject"]
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K11 ["NoSaveNotes"]
       28 CALL                             R1 1 -1
       29 RETURN                           R1 -1
       30 GETUPVAL                         R1 0
       31 GETTABLEKS                       R1 R1 K10 ["reject"]
       33 GETUPVAL                         R2 1
       34 GETTABLEKS                       R2 R2 K12 ["Unavailable"]
       36 CALL                             R1 1 -1
       37 RETURN                           R1 -1

PROTO_2:
        0 DUPTABLE                         R2 K5 [{[1] = "POST", ["Url"], ["Body"], ["Headers"]}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K6 ["composeUrl"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K7 ["APIS_URL"]
        7 LOADK                            R6 K8 ["place-version-history-summary-api/v1/places/%*/summarize-versions"]
        8 MOVE                             R8 R0
        9 NAMECALL                         R6 R6 K9 ["format"]
       11 CALL                             R6 2 1
       12 MOVE                             R5 R6
       13 CALL                             R3 2 1
       14 SETTABLEKS                       R3 R2 K2 ["Url"]
       16 JUMPIFNOT                        R1 ; [+11]
       17 GETUPVAL                         R3 1
       18 DUPTABLE                         R5 K11 [{"createdDate"}]
       19 NAMECALL                         R6 R1 K12 ["ToIsoDate"]
       21 CALL                             R6 1 1
       22 SETTABLEKS                       R6 R5 K10 ["createdDate"]
       24 NAMECALL                         R3 R3 K13 ["JSONEncode"]
       26 CALL                             R3 2 1
       27 JUMP                             ; [+1]
       28 LOADK                            R3 K14 ["{}"]
       29 SETTABLEKS                       R3 R2 K3 ["Body"]
       31 NEWTABLE                         R3 1 0
       33 LOADK                            R4 K15 ["application/json"]
       34 SETTABLEKS                       R4 R3 K16 ["Content-Type"]
       36 SETTABLEKS                       R3 R2 K4 ["Headers"]
       38 GETUPVAL                         R3 2
       39 GETTABLEKS                       R3 R3 K17 ["Request"]
       41 MOVE                             R4 R2
       42 CALL                             R3 1 1
       43 NEWCLOSURE                       R5 P0
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          VAL R0
       48 NAMECALL                         R3 R3 K18 ["andThen"]
       50 CALL                             R3 2 1
       51 DUPCLOSURE                       R5 K19 [PROTO_1]
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          UPVAL U6
       54 NAMECALL                         R3 R3 K20 ["catch"]
       56 CALL                             R3 2 -1
       57 RETURN                           R3 -1

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
       21 GETIMPORT                        R3 K10 [game]
       23 LOADK                            R5 K11 ["HttpService"]
       24 NAMECALL                         R3 R3 K12 ["GetService"]
       26 CALL                             R3 2 1
       27 GETTABLEKS                       R4 R1 K13 ["RobloxAPI"]
       29 GETTABLEKS                       R4 R4 K14 ["Url"]
       31 GETTABLEKS                       R5 R4 K15 ["new"]
       33 CALL                             R5 0 1
       34 GETTABLEKS                       R6 R0 K16 ["Src"]
       36 GETTABLEKS                       R6 R6 K17 ["Network"]
       38 GETIMPORT                        R7 K5 [require]
       40 GETTABLEKS                       R8 R6 K18 ["Http"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R6 K19 ["StartGeneratedNotesModel"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K5 [require]
       50 GETTABLEKS                       R10 R6 K20 ["WaitAndFetchSummary"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K5 [require]
       55 GETTABLEKS                       R11 R6 K21 ["GetGeneratedNotesError"]
       57 CALL                             R10 1 1
       58 GETIMPORT                        R11 K5 [require]
       60 GETTABLEKS                       R12 R0 K16 ["Src"]
       62 GETTABLEKS                       R12 R12 K22 ["Types"]
       64 CALL                             R11 1 1
       65 DUPCLOSURE                       R12 K23 [PROTO_2]
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R10
       73 RETURN                           R12 1
