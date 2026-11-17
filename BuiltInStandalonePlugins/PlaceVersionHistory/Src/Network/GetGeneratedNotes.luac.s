PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["validate"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIF                           R1 ; [+10]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["reject"]
        9 LOADK                            R4 K2 ["StartGeneratedNotesModel: %*"]
       10 MOVE                             R6 R2
       11 NAMECALL                         R4 R4 K3 ["format"]
       13 CALL                             R4 2 1
       14 CALL                             R3 1 -1
       15 RETURN                           R3 -1
       16 GETUPVAL                         R3 2
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R5 R0 K4 ["operationId"]
       20 CALL                             R3 2 -1
       21 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagPVHGenerateNotesDeprecate404"]
        3 JUMPIF                           R1 ; [+30]
        4 FASTCALL1                        TYPE R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K2 [type]
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKS                    R1 K3 ["string"] ; [+24]
       11 GETIMPORT                        R1 K5 [string.match]
       13 MOVE                             R2 R0
       14 LOADK                            R3 K6 ["^Http (%d+):"]
       15 CALL                             R1 2 1
       16 JUMPIFNOTEQKS                    R1 K7 ["404"] ; [+17]
       18 GETIMPORT                        R1 K9 [string.find]
       20 MOVE                             R2 R0
       21 LOADK                            R3 K10 ["No version notes were found to summarize."]
       22 LOADN                            R4 1
       23 LOADB                            R5 1
       24 CALL                             R1 4 1
       25 JUMPIFNOT                        R1 ; [+8]
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R1 R1 K11 ["reject"]
       29 GETUPVAL                         R2 2
       30 GETTABLEKS                       R2 R2 K12 ["NoSaveNotes"]
       32 CALL                             R1 1 -1
       33 RETURN                           R1 -1
       34 GETUPVAL                         R1 0
       35 GETTABLEKS                       R1 R1 K13 ["FFlagPVHGenerateNotes204NoContent"]
       37 JUMPIFNOT                        R1 ; [+22]
       38 FASTCALL1                        TYPE R0 ; [+3]
       39 MOVE                             R2 R0
       40 GETIMPORT                        R1 K2 [type]
       42 CALL                             R1 1 1
       43 JUMPIFNOTEQKS                    R1 K3 ["string"] ; [+16]
       45 GETIMPORT                        R1 K5 [string.match]
       47 MOVE                             R2 R0
       48 LOADK                            R3 K6 ["^Http (%d+):"]
       49 CALL                             R1 2 1
       50 JUMPIFNOTEQKS                    R1 K14 ["204"] ; [+9]
       52 GETUPVAL                         R1 1
       53 GETTABLEKS                       R1 R1 K11 ["reject"]
       55 GETUPVAL                         R2 2
       56 GETTABLEKS                       R2 R2 K12 ["NoSaveNotes"]
       58 CALL                             R1 1 -1
       59 RETURN                           R1 -1
       60 GETUPVAL                         R1 0
       61 GETTABLEKS                       R1 R1 K15 ["FFlagPVHGenerateNotesQuotaMessage"]
       63 JUMPIFNOT                        R1 ; [+30]
       64 FASTCALL1                        TYPE R0 ; [+3]
       65 MOVE                             R2 R0
       66 GETIMPORT                        R1 K2 [type]
       68 CALL                             R1 1 1
       69 JUMPIFNOTEQKS                    R1 K3 ["string"] ; [+24]
       71 GETIMPORT                        R1 K5 [string.match]
       73 MOVE                             R2 R0
       74 LOADK                            R3 K6 ["^Http (%d+):"]
       75 CALL                             R1 2 1
       76 JUMPIFNOTEQKS                    R1 K16 ["429"] ; [+17]
       78 GETIMPORT                        R1 K9 [string.find]
       80 MOVE                             R2 R0
       81 LOADK                            R3 K17 ["Daily summary quota exceeded."]
       82 LOADN                            R4 1
       83 LOADB                            R5 1
       84 CALL                             R1 4 1
       85 JUMPIFNOT                        R1 ; [+8]
       86 GETUPVAL                         R1 1
       87 GETTABLEKS                       R1 R1 K11 ["reject"]
       89 GETUPVAL                         R2 2
       90 GETTABLEKS                       R2 R2 K18 ["QuotaExceeded"]
       92 CALL                             R1 1 -1
       93 RETURN                           R1 -1
       94 GETUPVAL                         R1 1
       95 GETTABLEKS                       R1 R1 K11 ["reject"]
       97 GETUPVAL                         R2 2
       98 GETTABLEKS                       R2 R2 K19 ["Unavailable"]
      100 CALL                             R1 1 -1
      101 RETURN                           R1 -1

PROTO_2:
        0 DUPTABLE                         R2 K5 [{[1] = "POST", ["Url"], ["Body"], ["Headers"]}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K6 ["composeUrl"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K7 ["APIS_URL"]
        7 LOADK                            R5 K8 ["place-version-history-summary-api/v1/places/%*/summarize-versions"]
        8 MOVE                             R7 R0
        9 NAMECALL                         R5 R5 K9 ["format"]
       11 CALL                             R5 2 1
       12 CALL                             R3 2 1
       13 SETTABLEKS                       R3 R2 K2 ["Url"]
       15 JUMPIFNOT                        R1 ; [+11]
       16 GETUPVAL                         R3 1
       17 DUPTABLE                         R5 K11 [{"createdDate"}]
       18 NAMECALL                         R6 R1 K12 ["ToIsoDate"]
       20 CALL                             R6 1 1
       21 SETTABLEKS                       R6 R5 K10 ["createdDate"]
       23 NAMECALL                         R3 R3 K13 ["JSONEncode"]
       25 CALL                             R3 2 1
       26 JUMP                             ; [+1]
       27 LOADK                            R3 K14 ["{}"]
       28 SETTABLEKS                       R3 R2 K3 ["Body"]
       30 NEWTABLE                         R3 1 0
       32 LOADK                            R4 K15 ["application/json"]
       33 SETTABLEKS                       R4 R3 K16 ["Content-Type"]
       35 SETTABLEKS                       R3 R2 K4 ["Headers"]
       37 GETUPVAL                         R3 2
       38 GETTABLEKS                       R3 R3 K17 ["Request"]
       40 MOVE                             R4 R2
       41 CALL                             R3 1 1
       42 NEWCLOSURE                       R5 P0
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          VAL R0
       47 NAMECALL                         R3 R3 K18 ["andThen"]
       49 CALL                             R3 2 1
       50 DUPCLOSURE                       R5 K19 [PROTO_1]
       51 CAPTURE                          UPVAL U6
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          UPVAL U7
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
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["flags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["Promise"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K13 [game]
       32 LOADK                            R6 K14 ["HttpService"]
       33 NAMECALL                         R4 R4 K15 ["GetService"]
       35 CALL                             R4 2 1
       36 GETTABLEKS                       R5 R2 K16 ["RobloxAPI"]
       38 GETTABLEKS                       R5 R5 K17 ["Url"]
       40 GETTABLEKS                       R6 R5 K18 ["new"]
       42 CALL                             R6 0 1
       43 GETTABLEKS                       R7 R0 K19 ["Src"]
       45 GETTABLEKS                       R7 R7 K20 ["Network"]
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R9 R7 K21 ["Http"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K5 [require]
       54 GETTABLEKS                       R10 R7 K22 ["StartGeneratedNotesModel"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R11 R7 K23 ["WaitAndFetchSummary"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K5 [require]
       64 GETTABLEKS                       R12 R7 K24 ["GetGeneratedNotesError"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K5 [require]
       69 GETTABLEKS                       R13 R0 K19 ["Src"]
       71 GETTABLEKS                       R13 R13 K25 ["Types"]
       73 CALL                             R12 1 1
       74 DUPCLOSURE                       R13 K26 [PROTO_2]
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R11
       83 RETURN                           R13 1
