PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 NEWTABLE                         R3 0 0
        7 GETTABLEKS                       R4 R1 K0 ["data"]
        9 JUMPIFNOT                        R4 ; [+52]
       10 GETTABLEKS                       R4 R1 K0 ["data"]
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 GETTABLEKS                       R9 R8 K1 ["targetId"]
       17 JUMPIFNOT                        R9 ; [+42]
       18 GETTABLEKS                       R9 R8 K1 ["targetId"]
       20 LOADB                            R10 1
       21 SETTABLE                         R10 R2 R9
       22 GETTABLEKS                       R9 R8 K2 ["imageUrl"]
       24 JUMPIFNOT                        R9 ; [+24]
       25 DUPTABLE                         R11 K6 [{"Id", "CDNUrl", "ImageUrl"}]
       26 GETTABLEKS                       R12 R8 K1 ["targetId"]
       28 SETTABLEKS                       R12 R11 K3 ["Id"]
       30 GETTABLEKS                       R12 R8 K2 ["imageUrl"]
       32 SETTABLEKS                       R12 R11 K4 ["CDNUrl"]
       34 GETUPVAL                         R13 1
       35 GETTABLEKS                       R13 R13 K7 ["tempUrls"]
       37 GETTABLEKS                       R14 R8 K2 ["imageUrl"]
       39 GETTABLE                         R12 R13 R14
       40 SETTABLEKS                       R12 R11 K5 ["ImageUrl"]
       42 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       44 MOVE                             R10 R3
       45 GETIMPORT                        R9 K10 [table.insert]
       47 CALL                             R9 2 0
       48 JUMP                             ; [+11]
       49 DUPTABLE                         R11 K13 [{["Id"], ["NoLoadableImage"] = True}]
       50 GETTABLEKS                       R12 R8 K1 ["targetId"]
       52 SETTABLEKS                       R12 R11 K3 ["Id"]
       54 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       56 MOVE                             R10 R3
       57 GETIMPORT                        R9 K10 [table.insert]
       59 CALL                             R9 2 0
       60 FORGLOOP                         R4 2 ; [-46]
       62 GETUPVAL                         R4 2
       63 LOADNIL                          R5
       64 LOADNIL                          R6
       65 FORGPREP                         R4
       66 GETTABLE                         R9 R2 R8
       67 JUMPIF                           R9 ; [+9]
       68 DUPTABLE                         R11 K13 [{["Id"], ["NoLoadableImage"] = True}]
       69 SETTABLEKS                       R8 R11 K3 ["Id"]
       71 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       73 MOVE                             R10 R3
       74 GETIMPORT                        R9 K10 [table.insert]
       76 CALL                             R9 2 0
       77 FORGLOOP                         R4 2 ; [-12]
       79 GETUPVAL                         R4 1
       80 GETUPVAL                         R6 3
       81 LOADN                            R7 0
       82 MOVE                             R8 R3
       83 NAMECALL                         R4 R4 K14 ["upsertItemsForList"]
       85 CALL                             R4 4 0
       86 GETTABLEKS                       R4 R1 K0 ["data"]
       88 JUMPIFNOT                        R4 ; [+16]
       89 GETTABLEKS                       R4 R1 K0 ["data"]
       91 LOADNIL                          R5
       92 LOADNIL                          R6
       93 FORGPREP                         R4
       94 GETTABLEKS                       R9 R8 K2 ["imageUrl"]
       96 JUMPIFNOT                        R9 ; [+6]
       97 GETUPVAL                         R9 4
       98 GETTABLEKS                       R11 R8 K2 ["imageUrl"]
      100 NAMECALL                         R9 R9 K15 ["generateTempUrlInContentProvider"]
      102 CALL                             R9 2 0
      103 FORGLOOP                         R4 2 ; [-10]
      105 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 DUPTABLE                         R8 K3 [{[1], ["NoLoadableImage"] = True}]
        7 SETTABLEKS                       R5 R8 K0 ["Id"]
        9 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       11 MOVE                             R7 R0
       12 GETIMPORT                        R6 K6 [table.insert]
       14 CALL                             R6 2 0
       15 FORGLOOP                         R1 2 ; [-10]
       17 GETUPVAL                         R1 1
       18 GETUPVAL                         R3 2
       19 LOADN                            R4 0
       20 MOVE                             R5 R0
       21 NAMECALL                         R1 R1 K7 ["upsertItemsForList"]
       23 CALL                             R1 4 0
       24 RETURN                           R0 0

PROTO_2:
        0 LENGTH                           R2 R0
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 DUPTABLE                         R2 K8 [{["placeIds"], ["size"] = "150x150", ["format"] = "Png", ["returnPolicy"] = "AutoGenerated"}]
        5 SETTABLEKS                       R0 R2 K1 ["placeIds"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K9 ["new"]
       10 CALL                             R3 0 1
       11 GETTABLEKS                       R4 R3 K10 ["composeUrl"]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K11 ["PLACES_ICON_URL"]
       16 GETTABLEKS                       R5 R5 K12 ["Prefix"]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K11 ["PLACES_ICON_URL"]
       21 GETTABLEKS                       R6 R6 K13 ["Url"]
       23 CALL                             R6 0 1
       24 MOVE                             R7 R2
       25 CALL                             R4 3 1
       26 GETUPVAL                         R5 2
       27 GETUPVAL                         R7 2
       28 MOVE                             R9 R4
       29 NAMECALL                         R7 R7 K14 ["get"]
       31 CALL                             R7 2 -1
       32 NAMECALL                         R5 R5 K15 ["parseJson"]
       34 CALL                             R5 -1 1
       35 NEWCLOSURE                       R7 P0
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R1
       40 CAPTURE                          UPVAL U5
       41 NAMECALL                         R5 R5 K16 ["andThen"]
       43 CALL                             R5 2 1
       44 NEWCLOSURE                       R7 P1
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U4
       47 CAPTURE                          VAL R1
       48 NAMECALL                         R5 R5 K17 ["catch"]
       50 CALL                             R5 2 0
       51 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFIntDebugLuaStartPageLogging"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 GETIMPORT                        R2 K5 [require]
       19 GETTABLEKS                       R3 R0 K9 ["Packages"]
       21 GETTABLEKS                       R3 R3 K10 ["Framework"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K5 [require]
       26 GETTABLEKS                       R4 R0 K6 ["Src"]
       28 GETTABLEKS                       R4 R4 K11 ["Models"]
       30 GETTABLEKS                       R4 R4 K12 ["ApiArrayResponseThumbnailResponse"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K5 [require]
       35 GETTABLEKS                       R5 R0 K6 ["Src"]
       37 GETTABLEKS                       R5 R5 K13 ["Network"]
       39 GETTABLEKS                       R5 R5 K14 ["Urls"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K5 [require]
       44 GETTABLEKS                       R6 R0 K6 ["Src"]
       46 GETTABLEKS                       R6 R6 K15 ["Util"]
       48 GETTABLEKS                       R6 R6 K16 ["Services"]
       50 CALL                             R5 1 1
       51 GETTABLEKS                       R5 R5 K17 ["Networking"]
       53 GETIMPORT                        R6 K5 [require]
       55 GETTABLEKS                       R7 R0 K6 ["Src"]
       57 GETTABLEKS                       R7 R7 K15 ["Util"]
       59 GETTABLEKS                       R7 R7 K18 ["createResponseValidator"]
       61 CALL                             R6 1 1
       62 GETIMPORT                        R7 K5 [require]
       64 GETTABLEKS                       R8 R0 K6 ["Src"]
       66 GETTABLEKS                       R8 R8 K13 ["Network"]
       68 GETTABLEKS                       R8 R8 K19 ["GameCache"]
       70 CALL                             R7 1 1
       71 GETIMPORT                        R8 K5 [require]
       73 GETTABLEKS                       R9 R0 K6 ["Src"]
       75 GETTABLEKS                       R9 R9 K15 ["Util"]
       77 GETTABLEKS                       R9 R9 K16 ["Services"]
       79 CALL                             R8 1 1
       80 GETTABLEKS                       R9 R8 K20 ["StartPageManager"]
       82 GETTABLEKS                       R10 R2 K21 ["RobloxAPI"]
       84 GETTABLEKS                       R10 R10 K22 ["Url"]
       86 GETTABLEKS                       R11 R5 K23 ["new"]
       88 DUPTABLE                         R12 K27 [{["isInternal"] = True, ["loggingLevel"]}]
       89 SETTABLEKS                       R1 R12 K26 ["loggingLevel"]
       91 CALL                             R11 1 1
       92 MOVE                             R12 R6
       93 GETTABLEKS                       R13 R3 K28 ["validate"]
       95 CALL                             R12 1 1
       96 DUPCLOSURE                       R13 K29 [PROTO_2]
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R9
      103 RETURN                           R13 1
