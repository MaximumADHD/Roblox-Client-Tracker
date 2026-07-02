PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 1
        3 SETTABLEKS                       R1 R0 K0 ["gameId"]
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getName"]
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K1 ["name"]
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getDescription"]
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K1 ["description"]
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R3 2
        4 NAMECALL                         R1 R1 K0 ["getGuidelines"]
        6 CALL                             R1 2 1
        7 SETTABLEKS                       R1 R0 K1 ["guidelines"]
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getGenre"]
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K1 ["genre"]
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+2]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R3 2
        6 NAMECALL                         R1 R1 K0 ["getExperienceGenre"]
        8 CALL                             R1 2 1
        9 SETTABLEKS                       R1 R0 K1 ["experienceGenre"]
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getSupportedDevices"]
        4 CALL                             R1 2 1
        5 NEWTABLE                         R2 0 0
        7 GETIMPORT                        R3 K2 [ipairs]
        9 MOVE                             R4 R1
       10 CALL                             R3 1 3
       11 FORGPREP_INEXT                   R3
       12 LOADB                            R8 1
       13 SETTABLE                         R8 R2 R7
       14 FORGLOOP                         R3 2 [inext] ; [-3]
       16 SETTABLEKS                       R2 R0 K3 ["playableDevices"]
       18 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getThumbnails"]
        4 CALL                             R1 2 1
        5 NEWTABLE                         R2 0 0
        7 NEWTABLE                         R3 0 0
        9 GETIMPORT                        R4 K2 [pairs]
       11 MOVE                             R5 R1
       12 CALL                             R4 1 3
       13 FORGPREP_NEXT                    R4
       14 GETTABLEKS                       R10 R8 K3 ["id"]
       16 FASTCALL1                        TOSTRING R10 ; [+2]
       17 GETIMPORT                        R9 K5 [tostring]
       19 CALL                             R9 1 1
       20 SETTABLE                         R8 R2 R9
       21 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       23 MOVE                             R11 R3
       24 MOVE                             R12 R9
       25 GETIMPORT                        R10 K8 [table.insert]
       27 CALL                             R10 2 0
       28 FORGLOOP                         R4 2 ; [-15]
       30 SETTABLEKS                       R3 R0 K9 ["thumbnailOrder"]
       32 SETTABLEKS                       R2 R0 K10 ["thumbnails"]
       34 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getIcon"]
        4 CALL                             R1 2 2
        5 ORK                              R3 R1 K1 ["None"]
        6 SETTABLEKS                       R3 R0 K2 ["gameIcon"]
        8 SETTABLEKS                       R2 R0 K3 ["gameIconApproved"]
       10 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getCreatorId"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 2
        6 GETUPVAL                         R4 3
        7 MOVE                             R5 R1
        8 CALL                             R4 1 -1
        9 NAMECALL                         R2 R2 K1 ["dispatch"]
       11 CALL                             R2 -1 0
       12 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getCreatorType"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 2
        6 GETUPVAL                         R4 3
        7 MOVE                             R5 R1
        8 CALL                             R4 1 -1
        9 NAMECALL                         R2 R2 K1 ["dispatch"]
       11 CALL                             R2 -1 0
       12 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+51]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R1 R1 K0 ["getOptInLocations"]
        7 CALL                             R1 2 1
        8 NEWTABLE                         R2 0 0
       10 JUMPIFEQKNIL                     R1 ; [+7]
       12 GETIMPORT                        R3 K2 [next]
       14 MOVE                             R4 R1
       15 CALL                             R3 1 1
       16 JUMPIFNOTEQKNIL                  R3 ; [+7]
       18 DUPTABLE                         R3 K4 [{"China"}]
       19 DUPTABLE                         R4 K9 [{["status"] = "Unknown", ["selected"] = False}]
       20 SETTABLEKS                       R4 R3 K3 ["China"]
       22 MOVE                             R2 R3
       23 JUMP                             ; [+28]
       24 GETIMPORT                        R3 K11 [pairs]
       26 MOVE                             R4 R1
       27 CALL                             R3 1 3
       28 FORGPREP_NEXT                    R3
       29 GETTABLEKS                       R8 R7 K12 ["region"]
       31 DUPTABLE                         R9 K13 [{"status", "selected"}]
       32 GETTABLEKS                       R10 R7 K5 ["status"]
       34 SETTABLEKS                       R10 R9 K5 ["status"]
       36 LOADB                            R10 0
       37 GETTABLEKS                       R11 R7 K5 ["status"]
       39 JUMPIFEQKS                       R11 K14 ["Removed"] ; [+7]
       41 GETTABLEKS                       R11 R7 K5 ["status"]
       43 JUMPIFNOTEQKS                    R11 K6 ["Unknown"] ; [+2]
       45 LOADB                            R10 0 +1
       46 LOADB                            R10 1
       47 SETTABLEKS                       R10 R9 K7 ["selected"]
       49 SETTABLE                         R9 R2 R8
       50 FORGLOOP                         R3 2 ; [-22]
       52 GETUPVAL                         R3 3
       53 SETTABLE                         R2 R0 R3
       54 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 NAMECALL                         R2 R2 K0 ["getPlayerAcceptances"]
        7 CALL                             R2 1 1
        8 SETTABLE                         R2 R0 R1
        9 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R1 R1 K0 ["getRootPlace"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 3
        9 MOVE                             R4 R1
       10 NAMECALL                         R2 R2 K1 ["getAssetPublishedVersions"]
       12 CALL                             R2 2 1
       13 SETTABLEKS                       R2 R0 K2 ["publishedVersions"]
       15 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+8]
        2 GETUPVAL                         R1 1
        3 GETIMPORT                        R3 K1 [game]
        5 NAMECALL                         R1 R1 K2 ["getScriptCollaborationEnabled"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 2
        9 SETTABLE                         R1 R0 R2
       10 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+8]
        2 GETUPVAL                         R1 1
        3 GETIMPORT                        R3 K1 [game]
        5 NAMECALL                         R1 R1 K2 ["getScriptCollaborationEnabledOnServer"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 2
        9 SETTABLE                         R1 R0 R2
       10 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 1
        3 NAMECALL                         R1 R1 K0 ["getIsTeamCreateEnabled"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 2
        7 SETTABLE                         R1 R0 R2
        8 RETURN                           R0 0

PROTO_17:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R3 K2 ["gameId"]
        7 GETTABLEKS                       R4 R1 K3 ["gameInfoController"]
        9 GETUPVAL                         R6 0
       10 JUMPIFNOT                        R6 ; [+3]
       11 GETTABLEKS                       R5 R1 K4 ["gameOptionsController"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R5
       15 GETTABLEKS                       R6 R1 K5 ["gameMetadataController"]
       17 GETTABLEKS                       R7 R1 K6 ["policyInfoController"]
       19 GETTABLEKS                       R8 R1 K7 ["placesController"]
       21 NEWTABLE                         R9 0 17
       23 NEWCLOSURE                       R10 P0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R3
       26 NEWCLOSURE                       R11 P1
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R3
       29 NEWCLOSURE                       R12 P2
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R3
       32 NEWCLOSURE                       R13 P3
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R3
       36 NEWCLOSURE                       R14 P4
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R3
       39 NEWCLOSURE                       R15 P5
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 NEWCLOSURE                       R16 P6
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R3
       46 NEWCLOSURE                       R17 P7
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R3
       49 NEWCLOSURE                       R18 P8
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R3
       52 NEWCLOSURE                       R19 P9
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U3
       57 NEWCLOSURE                       R20 P10
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U4
       62 NEWCLOSURE                       R21 P11
       63 CAPTURE                          UPVAL U5
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R3
       66 CAPTURE                          UPVAL U6
       67 NEWCLOSURE                       R22 P12
       68 CAPTURE                          UPVAL U5
       69 CAPTURE                          UPVAL U7
       70 CAPTURE                          VAL R7
       71 NEWCLOSURE                       R23 P13
       72 CAPTURE                          UPVAL U5
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R8
       76 NEWCLOSURE                       R24 P14
       77 CAPTURE                          UPVAL U0
       78 CAPTURE                          VAL R5
       79 CAPTURE                          UPVAL U8
       80 NEWCLOSURE                       R25 P15
       81 CAPTURE                          UPVAL U0
       82 CAPTURE                          VAL R5
       83 CAPTURE                          UPVAL U9
       84 SETLIST                          R9 R10 16 [1]
       86 NEWCLOSURE                       R10 P16
       87 CAPTURE                          UPVAL U0
       88 CAPTURE                          VAL R5
       89 CAPTURE                          UPVAL U10
       90 SETLIST                          R9 R10 1 [17]
       92 RETURN                           R9 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["setName"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Settings"]
        3 GETTABLEKS                       R0 R0 K1 ["Changed"]
        5 GETTABLEKS                       R0 R0 K2 ["name"]
        7 JUMPIFEQKNIL                     R0 ; [+37]
        9 GETIMPORT                        R1 K4 [pcall]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 CALL                             R1 1 2
       16 JUMPIF                           R1 ; [+28]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K5 ["NameModerated"]
       20 JUMPIFNOTEQ                      R2 R3 ; [+8]
       22 GETUPVAL                         R3 3
       23 GETUPVAL                         R5 4
       24 DUPTABLE                         R6 K7 [{["name"] = "Moderated"}]
       25 CALL                             R5 1 -1
       26 NAMECALL                         R3 R3 K8 ["dispatch"]
       28 CALL                             R3 -1 0
       29 GETUPVAL                         R3 5
       30 JUMPIFNOT                        R3 ; [+10]
       31 GETIMPORT                        R3 K10 [error]
       33 GETUPVAL                         R4 6
       34 LOADK                            R6 K11 ["General"]
       35 LOADK                            R7 K12 ["GameNameWasModerated"]
       36 NAMECALL                         R4 R4 K13 ["getText"]
       38 CALL                             R4 3 -1
       39 CALL                             R3 -1 0
       40 RETURN                           R0 0
       41 GETIMPORT                        R3 K10 [error]
       43 LOADK                            R4 K14 ["Game name was moderated"]
       44 CALL                             R3 1 0
       45 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["setDescription"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Settings"]
        3 GETTABLEKS                       R0 R0 K1 ["Changed"]
        5 GETTABLEKS                       R0 R0 K2 ["description"]
        7 JUMPIFEQKNIL                     R0 ; [+37]
        9 GETIMPORT                        R1 K4 [pcall]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 CALL                             R1 1 2
       16 JUMPIF                           R1 ; [+28]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K5 ["DescriptionModerated"]
       20 JUMPIFNOTEQ                      R2 R3 ; [+8]
       22 GETUPVAL                         R3 3
       23 GETUPVAL                         R5 4
       24 DUPTABLE                         R6 K7 [{["description"] = "Moderated"}]
       25 CALL                             R5 1 -1
       26 NAMECALL                         R3 R3 K8 ["dispatch"]
       28 CALL                             R3 -1 0
       29 GETUPVAL                         R3 5
       30 JUMPIFNOT                        R3 ; [+10]
       31 GETIMPORT                        R3 K10 [error]
       33 GETUPVAL                         R4 6
       34 LOADK                            R6 K11 ["General"]
       35 LOADK                            R7 K12 ["GameDescriptionWasModerated"]
       36 NAMECALL                         R4 R4 K13 ["getText"]
       38 CALL                             R4 3 -1
       39 CALL                             R3 -1 0
       40 RETURN                           R0 0
       41 GETIMPORT                        R3 K10 [error]
       43 LOADK                            R4 K14 ["Game description was moderated"]
       44 CALL                             R3 1 0
       45 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Settings"]
        3 GETTABLEKS                       R0 R0 K1 ["Changed"]
        5 GETTABLEKS                       R0 R0 K2 ["genre"]
        7 JUMPIFEQKNIL                     R0 ; [+7]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 NAMECALL                         R1 R1 K3 ["setGenre"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Settings"]
        3 GETTABLEKS                       R0 R0 K1 ["Changed"]
        5 GETTABLEKS                       R0 R0 K2 ["playableDevices"]
        7 JUMPIFEQKNIL                     R0 ; [+24]
        9 NEWTABLE                         R1 0 0
       11 GETIMPORT                        R2 K4 [pairs]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 3
       15 FORGPREP_NEXT                    R2
       16 JUMPIFNOT                        R6 ; [+7]
       17 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       19 MOVE                             R8 R1
       20 MOVE                             R9 R5
       21 GETIMPORT                        R7 K7 [table.insert]
       23 CALL                             R7 2 0
       24 FORGLOOP                         R2 2 ; [-9]
       26 GETUPVAL                         R2 1
       27 GETUPVAL                         R4 2
       28 MOVE                             R5 R1
       29 NAMECALL                         R2 R2 K8 ["setSupportedDevices"]
       31 CALL                             R2 3 0
       32 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["removeThumbnails"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_25:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 2
        7 JUMPIF                           R0 ; [+1]
        8 SETUPVAL                         R1 3
        9 GETUPVAL                         R3 4
       10 SUBK                             R2 R3 K2 [1]
       11 SETUPVAL                         R2 4
       12 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["addThumbnails"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_27:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 2
        7 JUMPIFNOT                        R0 ; [+41]
        8 GETIMPORT                        R2 K3 [pairs]
       10 MOVE                             R3 R1
       11 CALL                             R2 1 3
       12 FORGPREP_NEXT                    R2
       13 NAMECALL                         R7 R5 K4 ["GetTemporaryId"]
       15 CALL                             R7 1 1
       16 GETUPVAL                         R8 3
       17 GETTABLEKS                       R8 R8 K5 ["List"]
       19 GETTABLEKS                       R8 R8 K6 ["find"]
       21 GETUPVAL                         R9 4
       22 MOVE                             R10 R7
       23 CALL                             R8 2 1
       24 GETUPVAL                         R9 3
       25 GETTABLEKS                       R9 R9 K7 ["Dictionary"]
       27 GETTABLEKS                       R9 R9 K8 ["join"]
       29 GETUPVAL                         R10 4
       30 NEWTABLE                         R11 1 0
       32 SETTABLE                         R6 R11 R8
       33 CALL                             R9 2 1
       34 SETUPVAL                         R9 4
       35 GETUPVAL                         R10 5
       36 GETTABLE                         R9 R10 R7
       37 JUMPIFEQKNIL                     R9 ; [+8]
       39 GETUPVAL                         R10 5
       40 GETTABLE                         R9 R10 R7
       41 GETUPVAL                         R10 5
       42 LOADNIL                          R11
       43 SETTABLE                         R11 R10 R7
       44 GETUPVAL                         R10 5
       45 SETTABLE                         R9 R10 R6
       46 FORGLOOP                         R2 2 ; [-34]
       48 JUMP                             ; [+1]
       49 SETUPVAL                         R1 6
       50 GETUPVAL                         R3 7
       51 SUBK                             R2 R3 K9 [1]
       52 SETUPVAL                         R2 7
       53 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["updateThumbnailAltText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_29:
        0 DUPTABLE                         R0 K2 [{"MediaAssetId", "MediaAssetAltText"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["MediaAssetId"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["MediaAssetAltText"]
        7 GETIMPORT                        R1 K4 [pcall]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          VAL R0
       13 CALL                             R1 1 2
       14 JUMPIFNOT                        R1 ; [+29]
       15 JUMPIFEQKNIL                     R2 ; [+48]
       17 GETTABLEKS                       R3 R2 K1 ["MediaAssetAltText"]
       19 GETUPVAL                         R4 1
       20 JUMPIFEQ                         R3 R4 ; [+43]
       22 GETUPVAL                         R3 4
       23 JUMPIFNOTEQKNIL                  R3 ; [+12]
       25 GETIMPORT                        R3 K7 [table.clone]
       27 GETUPVAL                         R4 5
       28 GETTABLEKS                       R4 R4 K8 ["Settings"]
       30 GETTABLEKS                       R4 R4 K9 ["Changed"]
       32 GETTABLEKS                       R4 R4 K10 ["thumbnails"]
       34 CALL                             R3 1 1
       35 SETUPVAL                         R3 4
       36 GETUPVAL                         R4 4
       37 GETUPVAL                         R5 0
       38 GETTABLE                         R3 R4 R5
       39 GETTABLEKS                       R4 R2 K1 ["MediaAssetAltText"]
       41 SETTABLEKS                       R4 R3 K11 ["altText"]
       43 JUMP                             ; [+20]
       44 GETUPVAL                         R3 2
       45 GETTABLEKS                       R3 R3 K12 ["AltTextModerated"]
       47 JUMPIFNOTEQ                      R2 R3 ; [+16]
       49 GETUPVAL                         R3 6
       50 GETUPVAL                         R5 7
       51 DUPTABLE                         R6 K13 [{"altText"}]
       52 DUPTABLE                         R7 K17 [{["ThumbnailId"], ["Error"] = "Moderated"}]
       53 GETUPVAL                         R8 0
       54 SETTABLEKS                       R8 R7 K14 ["ThumbnailId"]
       56 SETTABLEKS                       R7 R6 K11 ["altText"]
       58 CALL                             R5 1 -1
       59 NAMECALL                         R3 R3 K18 ["dispatch"]
       61 CALL                             R3 -1 0
       62 LOADK                            R3 K19 ["Thumbnail alt text was moderated"]
       63 SETUPVAL                         R3 8
       64 GETUPVAL                         R4 9
       65 SUBK                             R3 R4 K20 [1]
       66 SETUPVAL                         R3 9
       67 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Settings"]
        3 GETTABLEKS                       R1 R1 K1 ["Current"]
        5 GETTABLEKS                       R1 R1 K2 ["thumbnails"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["Settings"]
       10 GETTABLEKS                       R2 R2 K3 ["Changed"]
       12 GETTABLEKS                       R2 R2 K2 ["thumbnails"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["Settings"]
       17 GETTABLEKS                       R3 R3 K1 ["Current"]
       19 GETTABLEKS                       R3 R3 K4 ["thumbnailOrder"]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K0 ["Settings"]
       24 GETTABLEKS                       R4 R4 K3 ["Changed"]
       26 GETTABLEKS                       R4 R4 K4 ["thumbnailOrder"]
       28 JUMPIFNOTEQKNIL                  R2 ; [+3]
       30 JUMPIFEQKNIL                     R4 ; [+189]
       32 LOADNIL                          R5
       33 JUMPIFNOT                        R1 ; [+147]
       34 JUMPIFNOT                        R2 ; [+146]
       35 NEWTABLE                         R6 0 0
       37 NEWTABLE                         R7 0 0
       39 NEWTABLE                         R8 0 0
       41 GETIMPORT                        R9 K6 [pairs]
       43 MOVE                             R10 R1
       44 CALL                             R9 1 3
       45 FORGPREP_NEXT                    R9
       46 GETTABLE                         R14 R2 R12
       47 JUMPIFNOTEQKNIL                  R14 ; [+12]
       49 FASTCALL1                        TONUMBER R12 ; [+3]
       50 MOVE                             R17 R12
       51 GETIMPORT                        R16 K8 [tonumber]
       53 CALL                             R16 1 1
       54 FASTCALL2                        TABLE_INSERT R7 R16 ; [+4]
       56 MOVE                             R15 R7
       57 GETIMPORT                        R14 K11 [table.insert]
       59 CALL                             R14 2 0
       60 FORGLOOP                         R9 1 ; [-15]
       62 GETIMPORT                        R9 K6 [pairs]
       64 MOVE                             R10 R2
       65 CALL                             R9 1 3
       66 FORGPREP_NEXT                    R9
       67 GETTABLE                         R14 R1 R12
       68 JUMPIFNOTEQKNIL                  R14 ; [+17]
       70 GETTABLEKS                       R16 R13 K12 ["asset"]
       72 FASTCALL2                        TABLE_INSERT R6 R16 ; [+4]
       74 MOVE                             R15 R6
       75 GETIMPORT                        R14 K11 [table.insert]
       77 CALL                             R14 2 0
       78 GETTABLEKS                       R14 R13 K13 ["altText"]
       80 JUMPIFEQKS                       R14 K14 [""] ; [+15]
       82 GETTABLEKS                       R14 R13 K13 ["altText"]
       84 SETTABLE                         R14 R8 R12
       85 JUMP                             ; [+10]
       86 GETTABLE                         R14 R1 R12
       87 GETTABLEKS                       R14 R14 K13 ["altText"]
       89 GETTABLEKS                       R15 R13 K13 ["altText"]
       91 JUMPIFEQ                         R14 R15 ; [+4]
       93 GETTABLEKS                       R14 R13 K13 ["altText"]
       95 SETTABLE                         R14 R8 R12
       96 FORGLOOP                         R9 2 ; [-30]
       98 LOADN                            R9 0
       99 LENGTH                           R10 R7
      100 LOADN                            R11 0
      101 JUMPIFNOTLT                      R11 R10 ; [+12]
      103 ADDK                             R9 R9 K15 [1]
      104 GETIMPORT                        R10 K18 [coroutine.wrap]
      106 NEWCLOSURE                       R11 P0
      107 CAPTURE                          UPVAL U1
      108 CAPTURE                          UPVAL U2
      109 CAPTURE                          VAL R7
      110 CAPTURE                          REF R5
      111 CAPTURE                          REF R9
      112 CALL                             R10 1 1
      113 CALL                             R10 0 0
      114 LENGTH                           R10 R6
      115 LOADN                            R11 0
      116 JUMPIFNOTLT                      R11 R10 ; [+15]
      118 ADDK                             R9 R9 K15 [1]
      119 GETIMPORT                        R10 K18 [coroutine.wrap]
      121 NEWCLOSURE                       R11 P1
      122 CAPTURE                          UPVAL U1
      123 CAPTURE                          UPVAL U2
      124 CAPTURE                          VAL R6
      125 CAPTURE                          UPVAL U3
      126 CAPTURE                          REF R4
      127 CAPTURE                          VAL R8
      128 CAPTURE                          REF R5
      129 CAPTURE                          REF R9
      130 CALL                             R10 1 1
      131 CALL                             R10 0 0
      132 LOADN                            R10 0
      133 JUMPIFNOTLT                      R10 R9 ; [+5]
      135 GETIMPORT                        R10 K20 [wait]
      137 CALL                             R10 0 0
      138 JUMPBACK                         ; [-7]
      139 LOADNIL                          R10
      140 GETIMPORT                        R11 K6 [pairs]
      142 MOVE                             R12 R8
      143 CALL                             R11 1 3
      144 FORGPREP_NEXT                    R11
      145 ADDK                             R9 R9 K15 [1]
      146 GETIMPORT                        R16 K18 [coroutine.wrap]
      148 NEWCLOSURE                       R17 P2
      149 CAPTURE                          VAL R14
      150 CAPTURE                          VAL R15
      151 CAPTURE                          UPVAL U1
      152 CAPTURE                          UPVAL U2
      153 CAPTURE                          REF R10
      154 CAPTURE                          UPVAL U0
      155 CAPTURE                          UPVAL U4
      156 CAPTURE                          UPVAL U5
      157 CAPTURE                          REF R5
      158 CAPTURE                          REF R9
      159 CALL                             R16 1 1
      160 CALL                             R16 0 0
      161 FORGLOOP                         R11 2 ; [-17]
      163 LOADN                            R11 0
      164 JUMPIFNOTLT                      R11 R9 ; [+5]
      166 GETIMPORT                        R11 K20 [wait]
      168 CALL                             R11 0 0
      169 JUMPBACK                         ; [-7]
      170 JUMPIFEQKNIL                     R10 ; [+9]
      172 GETUPVAL                         R11 4
      173 GETUPVAL                         R13 6
      174 LOADK                            R14 K2 ["thumbnails"]
      175 MOVE                             R15 R10
      176 CALL                             R13 2 -1
      177 NAMECALL                         R11 R11 K21 ["dispatch"]
      179 CALL                             R11 -1 0
      180 CLOSEUPVALS                      R9
      181 JUMPIFEQ                         R3 R4 ; [+32]
      183 JUMPIFEQKNIL                     R4 ; [+30]
      185 GETIMPORT                        R6 K6 [pairs]
      187 MOVE                             R7 R4
      188 CALL                             R6 1 3
      189 FORGPREP_NEXT                    R6
      190 GETUPVAL                         R11 3
      191 GETTABLEKS                       R11 R11 K22 ["Dictionary"]
      193 GETTABLEKS                       R11 R11 K23 ["join"]
      195 MOVE                             R12 R4
      196 NEWTABLE                         R13 1 0
      198 FASTCALL1                        TONUMBER R10 ; [+3]
      199 MOVE                             R15 R10
      200 GETIMPORT                        R14 K8 [tonumber]
      202 CALL                             R14 1 1
      203 SETTABLE                         R14 R13 R9
      204 CALL                             R11 2 1
      205 MOVE                             R4 R11
      206 FORGLOOP                         R6 2 ; [-17]
      208 GETUPVAL                         R6 1
      209 GETUPVAL                         R8 2
      210 MOVE                             R9 R4
      211 NAMECALL                         R6 R6 K24 ["setThumbnailsOrder"]
      213 CALL                             R6 3 0
      214 JUMPIFNOT                        R5 ; [+4]
      215 GETIMPORT                        R6 K26 [error]
      217 MOVE                             R7 R5
      218 CALL                             R6 1 0
      219 CLOSEUPVALS                      R5
      220 CLOSEUPVALS                      R4
      221 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Settings"]
        3 GETTABLEKS                       R0 R0 K1 ["Changed"]
        5 GETTABLEKS                       R0 R0 K2 ["gameIcon"]
        7 JUMPIFEQKNIL                     R0 ; [+7]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 NAMECALL                         R1 R1 K3 ["setIcon"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+45]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["Settings"]
        6 GETTABLEKS                       R1 R1 K1 ["Changed"]
        8 GETUPVAL                         R2 2
        9 GETTABLE                         R0 R1 R2
       10 JUMPIFEQKNIL                     R0 ; [+37]
       12 NEWTABLE                         R1 0 0
       14 NEWTABLE                         R2 0 0
       16 GETIMPORT                        R3 K3 [pairs]
       18 MOVE                             R4 R0
       19 CALL                             R3 1 3
       20 FORGPREP_NEXT                    R3
       21 GETTABLEKS                       R8 R7 K4 ["selected"]
       23 JUMPIFNOT                        R8 ; [+8]
       24 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       26 MOVE                             R9 R1
       27 MOVE                             R10 R6
       28 GETIMPORT                        R8 K7 [table.insert]
       30 CALL                             R8 2 0
       31 JUMP                             ; [+7]
       32 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       34 MOVE                             R9 R2
       35 MOVE                             R10 R6
       36 GETIMPORT                        R8 K7 [table.insert]
       38 CALL                             R8 2 0
       39 FORGLOOP                         R3 2 ; [-19]
       41 GETUPVAL                         R3 3
       42 GETUPVAL                         R5 4
       43 MOVE                             R6 R1
       44 MOVE                             R7 R2
       45 NAMECALL                         R3 R3 K8 ["setOptInLocations"]
       47 CALL                             R3 4 0
       48 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+16]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["Settings"]
        5 GETTABLEKS                       R0 R0 K1 ["Changed"]
        7 GETTABLEKS                       R0 R0 K2 ["ScriptCollabEnabled"]
        9 JUMPIFEQKNIL                     R0 ; [+8]
       11 GETUPVAL                         R1 2
       12 GETIMPORT                        R3 K4 [game]
       14 MOVE                             R4 R0
       15 NAMECALL                         R1 R1 K5 ["setScriptCollaborationEnabled"]
       17 CALL                             R1 3 0
       18 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["setIsTeamCreateEnabled"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+16]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["Settings"]
        5 GETTABLEKS                       R0 R0 K1 ["Changed"]
        7 GETTABLEKS                       R0 R0 K2 ["TeamCreateEnabled"]
        9 JUMPIFEQKNIL                     R0 ; [+8]
       11 GETIMPORT                        R1 K5 [task.delay]
       13 LOADN                            R2 1
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R0
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_36:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R3 K2 ["gameId"]
        7 GETTABLEKS                       R4 R1 K3 ["gameInfoController"]
        9 GETUPVAL                         R6 0
       10 JUMPIFNOT                        R6 ; [+3]
       11 GETTABLEKS                       R5 R1 K4 ["gameOptionsController"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R5
       15 GETTABLEKS                       R6 R1 K5 ["localization"]
       17 NEWTABLE                         R7 0 9
       19 NEWCLOSURE                       R8 P0
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R6
       27 NEWCLOSURE                       R9 P1
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R6
       35 NEWCLOSURE                       R10 P2
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R3
       39 NEWCLOSURE                       R11 P3
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 NEWCLOSURE                       R12 P4
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R3
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R0
       49 CAPTURE                          UPVAL U1
       50 CAPTURE                          UPVAL U4
       51 NEWCLOSURE                       R13 P5
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R3
       55 NEWCLOSURE                       R14 P6
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          VAL R2
       58 CAPTURE                          UPVAL U6
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R3
       61 NEWCLOSURE                       R15 P7
       62 CAPTURE                          UPVAL U0
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R5
       65 NEWCLOSURE                       R16 P8
       66 CAPTURE                          UPVAL U0
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R5
       69 SETLIST                          R7 R8 9 [1]
       71 RETURN                           R7 1

PROTO_37:
        0 GETTABLEKS                       R2 R1 K0 ["Settings"]
        2 GETTABLEKS                       R2 R2 K1 ["Errors"]
        4 DUPTABLE                         R3 K24 [{"GameId", "Name", "Guidelines", "Description", "ExperienceGenre", "Genre", "Devices", "Thumbnails", "ThumbnailOrder", "GameIcon", "OptInLocations", "PlayerAcceptance", "PublishedVersions", "NameError", "DescriptionError", "PlayableDevicesError", "ThumbnailsError", "AltTextError", "GameIconError", "IsCurrentlyActive", "OwnerId", "OwnerType"}]
        5 GETUPVAL                         R5 0
        6 JUMPIFNOT                        R5 ; [+4]
        7 MOVE                             R4 R0
        8 LOADK                            R5 K25 ["gameId"]
        9 CALL                             R4 1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R4
       12 SETTABLEKS                       R4 R3 K2 ["GameId"]
       14 MOVE                             R4 R0
       15 LOADK                            R5 K26 ["name"]
       16 CALL                             R4 1 1
       17 SETTABLEKS                       R4 R3 K3 ["Name"]
       19 GETUPVAL                         R5 0
       20 JUMPIFNOT                        R5 ; [+4]
       21 MOVE                             R4 R0
       22 LOADK                            R5 K27 ["guidelines"]
       23 CALL                             R4 1 1
       24 JUMP                             ; [+1]
       25 LOADNIL                          R4
       26 SETTABLEKS                       R4 R3 K4 ["Guidelines"]
       28 MOVE                             R4 R0
       29 LOADK                            R5 K28 ["description"]
       30 CALL                             R4 1 1
       31 SETTABLEKS                       R4 R3 K5 ["Description"]
       33 MOVE                             R4 R0
       34 LOADK                            R5 K29 ["experienceGenre"]
       35 CALL                             R4 1 1
       36 SETTABLEKS                       R4 R3 K6 ["ExperienceGenre"]
       38 MOVE                             R4 R0
       39 LOADK                            R5 K30 ["genre"]
       40 CALL                             R4 1 1
       41 SETTABLEKS                       R4 R3 K7 ["Genre"]
       43 MOVE                             R4 R0
       44 LOADK                            R5 K31 ["playableDevices"]
       45 CALL                             R4 1 1
       46 SETTABLEKS                       R4 R3 K8 ["Devices"]
       48 MOVE                             R4 R0
       49 LOADK                            R5 K32 ["thumbnails"]
       50 CALL                             R4 1 1
       51 SETTABLEKS                       R4 R3 K9 ["Thumbnails"]
       53 MOVE                             R4 R0
       54 LOADK                            R5 K33 ["thumbnailOrder"]
       55 CALL                             R4 1 1
       56 SETTABLEKS                       R4 R3 K10 ["ThumbnailOrder"]
       58 MOVE                             R4 R0
       59 LOADK                            R5 K34 ["gameIcon"]
       60 CALL                             R4 1 1
       61 SETTABLEKS                       R4 R3 K11 ["GameIcon"]
       63 GETUPVAL                         R5 1
       64 CALL                             R5 0 1
       65 JUMPIFNOT                        R5 ; [+4]
       66 MOVE                             R4 R0
       67 GETUPVAL                         R5 2
       68 CALL                             R4 1 1
       69 JUMPIF                           R4 ; [+1]
       70 LOADNIL                          R4
       71 SETTABLEKS                       R4 R3 K12 ["OptInLocations"]
       73 GETUPVAL                         R5 1
       74 CALL                             R5 0 1
       75 JUMPIFNOT                        R5 ; [+4]
       76 MOVE                             R4 R0
       77 GETUPVAL                         R5 3
       78 CALL                             R4 1 1
       79 JUMPIF                           R4 ; [+1]
       80 LOADNIL                          R4
       81 SETTABLEKS                       R4 R3 K13 ["PlayerAcceptance"]
       83 GETUPVAL                         R5 1
       84 CALL                             R5 0 1
       85 JUMPIFNOT                        R5 ; [+4]
       86 MOVE                             R4 R0
       87 LOADK                            R5 K35 ["publishedVersions"]
       88 CALL                             R4 1 1
       89 JUMPIF                           R4 ; [+1]
       90 LOADNIL                          R4
       91 SETTABLEKS                       R4 R3 K14 ["PublishedVersions"]
       93 GETTABLEKS                       R4 R2 K26 ["name"]
       95 SETTABLEKS                       R4 R3 K15 ["NameError"]
       97 GETTABLEKS                       R4 R2 K28 ["description"]
       99 SETTABLEKS                       R4 R3 K16 ["DescriptionError"]
      101 GETTABLEKS                       R4 R2 K31 ["playableDevices"]
      103 SETTABLEKS                       R4 R3 K17 ["PlayableDevicesError"]
      105 GETTABLEKS                       R4 R2 K32 ["thumbnails"]
      107 SETTABLEKS                       R4 R3 K18 ["ThumbnailsError"]
      109 GETTABLEKS                       R4 R2 K36 ["altText"]
      111 SETTABLEKS                       R4 R3 K19 ["AltTextError"]
      113 GETTABLEKS                       R4 R2 K34 ["gameIcon"]
      115 SETTABLEKS                       R4 R3 K20 ["GameIconError"]
      117 GETTABLEKS                       R4 R1 K0 ["Settings"]
      119 GETTABLEKS                       R4 R4 K37 ["Current"]
      121 GETTABLEKS                       R4 R4 K38 ["isActive"]
      123 SETTABLEKS                       R4 R3 K21 ["IsCurrentlyActive"]
      125 GETTABLEKS                       R4 R1 K39 ["GameOwnerMetadata"]
      127 GETTABLEKS                       R4 R4 K40 ["creatorId"]
      129 SETTABLEKS                       R4 R3 K22 ["OwnerId"]
      131 GETTABLEKS                       R4 R1 K39 ["GameOwnerMetadata"]
      133 GETTABLEKS                       R4 R4 K41 ["creatorType"]
      135 SETTABLEKS                       R4 R3 K23 ["OwnerType"]
      137 GETUPVAL                         R4 4
      138 JUMPIFNOT                        R4 ; [+35]
      139 MOVE                             R4 R0
      140 GETUPVAL                         R5 5
      141 CALL                             R4 1 1
      142 SETTABLEKS                       R4 R3 K42 ["ScriptCollabEnabled"]
      144 GETTABLEKS                       R4 R1 K0 ["Settings"]
      146 GETTABLEKS                       R4 R4 K37 ["Current"]
      148 GETTABLEKS                       R4 R4 K42 ["ScriptCollabEnabled"]
      150 SETTABLEKS                       R4 R3 K43 ["CurrentScriptCollabEnabled"]
      152 GETTABLEKS                       R5 R1 K0 ["Settings"]
      154 GETTABLEKS                       R5 R5 K37 ["Current"]
      156 GETTABLEKS                       R5 R5 K45 ["TeamCreateEnabled"]
      158 ORK                              R4 R5 K44 []
      159 SETTABLEKS                       R4 R3 K45 ["TeamCreateEnabled"]
      161 MOVE                             R4 R0
      162 GETUPVAL                         R5 6
      163 CALL                             R4 1 1
      164 SETTABLEKS                       R4 R3 K46 ["PendingTeamCreateEnabled"]
      166 GETTABLEKS                       R4 R1 K0 ["Settings"]
      168 GETTABLEKS                       R4 R4 K37 ["Current"]
      170 GETTABLEKS                       R4 R4 K47 ["ScriptCollaborationEnabledOnServer"]
      172 SETTABLEKS                       R4 R3 K48 ["ScriptCollabEnabledOnServer"]
      174 RETURN                           R3 1

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["altText"]
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 LOADK                            R3 K1 ["thumbnails"]
        8 MOVE                             R4 R0
        9 CALL                             R2 2 -1
       10 CALL                             R1 -1 0
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R2 R2 K2 ["Dictionary"]
       14 GETTABLEKS                       R2 R2 K3 ["keys"]
       16 MOVE                             R3 R0
       17 CALL                             R2 1 1
       18 LENGTH                           R1 R2
       19 GETUPVAL                         R2 4
       20 GETTABLEKS                       R2 R2 K4 ["MAX_THUMBNAILS"]
       22 JUMPIFNOTLT                      R2 R1 ; [+6]
       24 GETUPVAL                         R1 0
       25 GETUPVAL                         R2 5
       26 DUPTABLE                         R3 K6 [{["thumbnails"] = "TooMany"}]
       27 CALL                             R2 1 -1
       28 CALL                             R1 -1 0
       29 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["name"]
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 GETIMPORT                        R1 K3 [utf8.len]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 JUMPIFEQKN                       R1 K4 [0] ; [+13]
       12 GETIMPORT                        R3 K7 [string.gsub]
       14 MOVE                             R4 R0
       15 LOADK                            R5 K8 [" "]
       16 LOADK                            R6 K9 [""]
       17 CALL                             R3 3 1
       18 FASTCALL1                        STRING_LEN R3 ; [+2]
       19 GETIMPORT                        R2 K10 [string.len]
       21 CALL                             R2 1 1
       22 JUMPIFNOTEQKN                    R2 K4 [0] ; [+7]
       24 GETUPVAL                         R2 0
       25 GETUPVAL                         R3 2
       26 DUPTABLE                         R4 K12 [{[1] = "Empty"}]
       27 CALL                             R3 1 -1
       28 CALL                             R2 -1 0
       29 RETURN                           R0 0
       30 LOADN                            R2 50
       31 JUMPIFNOTLT                      R2 R1 ; [+6]
       33 GETUPVAL                         R2 0
       34 GETUPVAL                         R3 2
       35 DUPTABLE                         R4 K14 [{[1] = "TooLong"}]
       36 CALL                             R3 1 -1
       37 CALL                             R2 -1 0
       38 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["description"]
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 GETIMPORT                        R1 K3 [utf8.len]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 2
       11 CALL                             R2 0 1
       12 JUMPIFNOT                        R2 ; [+20]
       13 JUMPIFEQKN                       R1 K4 [0] ; [+13]
       15 GETIMPORT                        R3 K7 [string.gsub]
       17 MOVE                             R4 R0
       18 LOADK                            R5 K8 [" "]
       19 LOADK                            R6 K9 [""]
       20 CALL                             R3 3 1
       21 FASTCALL1                        STRING_LEN R3 ; [+2]
       22 GETIMPORT                        R2 K10 [string.len]
       24 CALL                             R2 1 1
       25 JUMPIFNOTEQKN                    R2 K4 [0] ; [+7]
       27 GETUPVAL                         R2 0
       28 GETUPVAL                         R3 3
       29 DUPTABLE                         R4 K12 [{[1] = "Empty"}]
       30 CALL                             R3 1 -1
       31 CALL                             R2 -1 0
       32 RETURN                           R0 0
       33 LOADN                            R2 1000
       34 JUMPIFNOTLT                      R2 R1 ; [+6]
       36 GETUPVAL                         R2 0
       37 GETUPVAL                         R3 3
       38 DUPTABLE                         R4 K14 [{[1] = "TooLong"}]
       39 CALL                             R3 1 -1
       40 CALL                             R2 -1 0
       41 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["playableDevices"]
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 GETIMPORT                        R1 K2 [pairs]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 3
       10 FORGPREP_NEXT                    R1
       11 JUMPIFNOT                        R5 ; [+1]
       12 RETURN                           R0 0
       13 FORGLOOP                         R1 2 ; [-3]
       15 GETUPVAL                         R1 2
       16 CALL                             R1 0 1
       17 JUMPIFNOT                        R1 ; [+5]
       18 GETUPVAL                         R1 0
       19 GETUPVAL                         R2 3
       20 DUPTABLE                         R3 K4 [{[1] = "Empty"}]
       21 CALL                             R2 1 -1
       22 CALL                             R1 -1 0
       23 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 MOVE                             R4 R0
        7 CALL                             R2 2 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Dictionary"]
        3 GETTABLEKS                       R3 R3 K1 ["join"]
        5 MOVE                             R4 R1
        6 NEWTABLE                         R5 0 0
        8 CALL                             R3 2 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K2 ["List"]
       12 GETTABLEKS                       R4 R4 K1 ["join"]
       14 MOVE                             R5 R2
       15 NEWTABLE                         R6 0 0
       17 CALL                             R4 2 1
       18 GETIMPORT                        R5 K4 [pairs]
       20 MOVE                             R6 R0
       21 CALL                             R5 1 3
       22 FORGPREP_NEXT                    R5
       23 NAMECALL                         R10 R9 K5 ["GetTemporaryId"]
       25 CALL                             R10 1 1
       26 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
       28 MOVE                             R12 R4
       29 MOVE                             R13 R10
       30 GETIMPORT                        R11 K8 [table.insert]
       32 CALL                             R11 2 0
       33 DUPTABLE                         R11 K11 [{"asset", "tempId"}]
       34 SETTABLEKS                       R9 R11 K9 ["asset"]
       36 SETTABLEKS                       R10 R11 K10 ["tempId"]
       38 SETTABLE                         R11 R3 R10
       39 FORGLOOP                         R5 2 ; [-17]
       41 GETUPVAL                         R5 1
       42 GETUPVAL                         R6 2
       43 LOADK                            R7 K12 ["thumbnails"]
       44 MOVE                             R8 R3
       45 CALL                             R6 2 -1
       46 CALL                             R5 -1 0
       47 GETUPVAL                         R5 1
       48 GETUPVAL                         R6 2
       49 LOADK                            R7 K13 ["thumbnailOrder"]
       50 MOVE                             R8 R4
       51 CALL                             R6 2 -1
       52 CALL                             R5 -1 0
       53 LENGTH                           R5 R4
       54 GETUPVAL                         R6 3
       55 GETTABLEKS                       R6 R6 K14 ["MAX_THUMBNAILS"]
       57 JUMPIFNOTLT                      R6 R5 ; [+6]
       59 GETUPVAL                         R5 1
       60 GETUPVAL                         R6 4
       61 DUPTABLE                         R7 K16 [{["thumbnails"] = "TooMany"}]
       62 CALL                             R6 1 -1
       63 CALL                             R5 -1 0
       64 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["thumbnailOrder"]
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 LENGTH                           R1 R0
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K1 ["MAX_THUMBNAILS"]
       10 JUMPIFNOTLT                      R2 R1 ; [+6]
       12 GETUPVAL                         R1 0
       13 GETUPVAL                         R2 3
       14 DUPTABLE                         R3 K4 [{["thumbnails"] = "TooMany"}]
       15 CALL                             R2 1 -1
       16 CALL                             R1 -1 0
       17 RETURN                           R0 0

PROTO_45:
        0 DUPTABLE                         R2 K6 [{"ThumbnailsChanged", "GenreChanged", "NameChanged", "DescriptionChanged", "DevicesChanged", "OptInLocationsChanged"}]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 SETTABLEKS                       R3 R2 K0 ["ThumbnailsChanged"]
       10 MOVE                             R3 R0
       11 LOADK                            R4 K7 ["genre"]
       12 CALL                             R3 1 1
       13 SETTABLEKS                       R3 R2 K1 ["GenreChanged"]
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U4
       19 SETTABLEKS                       R3 R2 K2 ["NameChanged"]
       21 NEWCLOSURE                       R3 P2
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          UPVAL U5
       25 CAPTURE                          UPVAL U4
       26 SETTABLEKS                       R3 R2 K3 ["DescriptionChanged"]
       28 NEWCLOSURE                       R3 P3
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          UPVAL U4
       33 SETTABLEKS                       R3 R2 K4 ["DevicesChanged"]
       35 NEWCLOSURE                       R3 P4
       36 CAPTURE                          UPVAL U6
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          UPVAL U7
       40 SETTABLEKS                       R3 R2 K5 ["OptInLocationsChanged"]
       42 MOVE                             R3 R0
       43 LOADK                            R4 K8 ["gameIcon"]
       44 CALL                             R3 1 1
       45 SETTABLEKS                       R3 R2 K9 ["GameIconChanged"]
       47 NEWCLOSURE                       R3 P5
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          VAL R1
       50 CAPTURE                          UPVAL U1
       51 CAPTURE                          UPVAL U3
       52 CAPTURE                          UPVAL U4
       53 SETTABLEKS                       R3 R2 K10 ["AddThumbnails"]
       55 NEWCLOSURE                       R3 P6
       56 CAPTURE                          VAL R1
       57 CAPTURE                          UPVAL U1
       58 CAPTURE                          UPVAL U3
       59 CAPTURE                          UPVAL U4
       60 SETTABLEKS                       R3 R2 K11 ["ThumbnailOrderChanged"]
       62 GETUPVAL                         R3 8
       63 JUMPIFNOT                        R3 ; [+10]
       64 MOVE                             R3 R0
       65 GETUPVAL                         R4 9
       66 CALL                             R3 1 1
       67 SETTABLEKS                       R3 R2 K12 ["ScriptCollabEnabledChanged"]
       69 MOVE                             R3 R0
       70 GETUPVAL                         R4 10
       71 CALL                             R3 1 1
       72 SETTABLEKS                       R3 R2 K13 ["TeamCreateEnabledChanged"]
       74 RETURN                           R2 1

PROTO_46:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["OwnerId"]
        4 GETTABLEKS                       R3 R1 K2 ["OwnerType"]
        6 LOADB                            R4 1
        7 GETIMPORT                        R5 K6 [Enum.CreatorType.Group]
        9 JUMPIFEQ                         R3 R5 ; [+9]
       11 GETUPVAL                         R5 0
       12 NAMECALL                         R5 R5 K7 ["GetUserId"]
       14 CALL                             R5 1 1
       15 JUMPIFEQ                         R2 R5 ; [+2]
       17 LOADB                            R4 0 +1
       18 LOADB                            R4 1
       19 RETURN                           R4 1

PROTO_47:
        0 GETTABLEKS                       R1 R0 K0 ["data"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETIMPORT                        R1 K2 [next]
        5 GETTABLEKS                       R2 R0 K0 ["data"]
        7 CALL                             R1 1 1
        8 JUMPIFNOTEQKNIL                  R1 ; [+3]
       10 LOADB                            R1 0
       11 RETURN                           R1 1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_48:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["PromptForGameIcon"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R3 R0 K2 ["Localization"]
        9 CALL                             R1 2 1
       10 JUMPIFNOT                        R1 ; [+7]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K0 ["props"]
       14 GETTABLEKS                       R2 R2 K3 ["GameIconChanged"]
       16 MOVE                             R3 R1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["PromptForThumbnails"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R3 R0 K2 ["Localization"]
        9 GETTABLEKS                       R4 R0 K3 ["Dialog"]
       11 GETTABLEKS                       R4 R4 K4 ["showDialog"]
       13 CALL                             R1 3 1
       14 JUMPIFNOT                        R1 ; [+11]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K0 ["props"]
       18 GETTABLEKS                       R2 R2 K5 ["AddThumbnails"]
       20 MOVE                             R3 R1
       21 GETTABLEKS                       R4 R0 K6 ["Thumbnails"]
       23 GETTABLEKS                       R5 R0 K7 ["ThumbnailOrder"]
       25 CALL                             R2 3 0
       26 RETURN                           R0 0

PROTO_50:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["Stylizer"]
        4 GETTABLEKS                       R4 R0 K0 ["props"]
        6 GETTABLEKS                       R4 R4 K2 ["Localization"]
        8 GETUPVAL                         R7 0
        9 LOADK                            R8 K3 ["Status"]
       10 NAMECALL                         R5 R4 K4 ["getText"]
       12 CALL                             R5 3 1
       13 GETTABLEKS                       R6 R3 K5 ["fontStyle"]
       15 GETTABLEKS                       R6 R6 K6 ["Subtitle"]
       17 GETTABLEKS                       R6 R6 K7 ["TextColor3"]
       19 LOADB                            R7 1
       20 GETUPVAL                         R8 1
       21 JUMPIFNOTEQ                      R2 R8 ; [+12]
       23 MOVE                             R9 R2
       24 MOVE                             R10 R1
       25 CONCAT                           R8 R9 R10
       26 MOVE                             R9 R5
       27 GETUPVAL                         R12 0
       28 MOVE                             R13 R8
       29 NAMECALL                         R10 R4 K4 ["getText"]
       31 CALL                             R10 3 1
       32 CONCAT                           R5 R9 R10
       33 JUMP                             ; [+29]
       34 GETUPVAL                         R8 2
       35 JUMPIFNOTEQ                      R2 R8 ; [+9]
       37 MOVE                             R8 R5
       38 GETUPVAL                         R11 0
       39 GETUPVAL                         R12 2
       40 NAMECALL                         R9 R4 K4 ["getText"]
       42 CALL                             R9 3 1
       43 CONCAT                           R5 R8 R9
       44 JUMP                             ; [+18]
       45 GETUPVAL                         R8 3
       46 JUMPIFNOTEQ                      R2 R8 ; [+15]
       48 GETTABLEKS                       R8 R3 K5 ["fontStyle"]
       50 GETTABLEKS                       R8 R8 K8 ["Error"]
       52 GETTABLEKS                       R6 R8 K7 ["TextColor3"]
       54 MOVE                             R8 R5
       55 GETUPVAL                         R11 0
       56 MOVE                             R12 R2
       57 NAMECALL                         R9 R4 K4 ["getText"]
       59 CALL                             R9 3 1
       60 CONCAT                           R5 R8 R9
       61 JUMP                             ; [+1]
       62 LOADB                            R7 0
       63 DUPTABLE                         R8 K12 [{"statusText", "textColor", "show"}]
       64 SETTABLEKS                       R5 R8 K9 ["statusText"]
       66 SETTABLEKS                       R6 R8 K10 ["textColor"]
       68 SETTABLEKS                       R7 R8 K11 ["show"]
       70 RETURN                           R8 1

PROTO_51:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["StyleModifier"]
        5 JUMPIFNOTEQKNIL                  R0 ; [+11]
        7 GETUPVAL                         R0 0
        8 DUPTABLE                         R2 K2 [{"StyleModifier"}]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K3 ["Hover"]
       12 SETTABLEKS                       R3 R2 K1 ["StyleModifier"]
       14 NAMECALL                         R0 R0 K4 ["setState"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["StyleModifier"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["Hover"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+11]
       10 GETUPVAL                         R0 0
       11 DUPTABLE                         R2 K3 [{"StyleModifier"}]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K4 ["None"]
       15 SETTABLEKS                       R3 R2 K1 ["StyleModifier"]
       17 NAMECALL                         R0 R0 K5 ["setState"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["PublishedVersions"]
        5 GETTABLEKS                       R2 R1 K2 ["data"]
        7 JUMPIFNOT                        R2 ; [+7]
        8 GETIMPORT                        R2 K4 [next]
       10 GETTABLEKS                       R3 R1 K2 ["data"]
       12 CALL                             R2 1 1
       13 JUMPIFNOTEQKNIL                  R2 ; [+3]
       15 LOADB                            R0 0
       16 JUMP                             ; [+1]
       17 LOADB                            R0 1
       18 JUMPIFNOT                        R0 ; [+8]
       19 GETUPVAL                         R1 1
       20 GETUPVAL                         R2 2
       21 CALL                             R1 1 1
       22 GETUPVAL                         R2 3
       23 MOVE                             R4 R1
       24 NAMECALL                         R2 R2 K5 ["OpenBrowserWindow"]
       26 CALL                             R2 2 0
       27 RETURN                           R0 0

PROTO_54:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R0 K0 ["props"]
        4 GETTABLEKS                       R3 R3 K1 ["Localization"]
        6 GETTABLEKS                       R4 R0 K0 ["props"]
        8 GETTABLEKS                       R4 R4 K2 ["Stylizer"]
       10 GETUPVAL                         R6 0
       11 GETTABLE                         R5 R2 R6
       12 GETTABLEKS                       R7 R2 K3 ["PublishedVersions"]
       14 GETTABLEKS                       R8 R7 K4 ["data"]
       16 JUMPIFNOT                        R8 ; [+7]
       17 GETIMPORT                        R8 K6 [next]
       19 GETTABLEKS                       R9 R7 K4 ["data"]
       21 CALL                             R8 1 1
       22 JUMPIFNOTEQKNIL                  R8 ; [+3]
       24 LOADB                            R6 0
       25 JUMP                             ; [+1]
       26 LOADB                            R6 1
       27 GETUPVAL                         R7 1
       28 GETUPVAL                         R10 0
       29 LOADK                            R11 K7 ["RequirementsLinkText"]
       30 NAMECALL                         R8 R3 K8 ["getText"]
       32 CALL                             R8 3 1
       33 LOADN                            R9 14
       34 LOADK                            R10 K9 ["SourceSans"]
       35 CALL                             R7 3 1
       36 NEWTABLE                         R8 0 0
       38 NOT                              R9 R6
       39 GETIMPORT                        R10 K11 [pairs]
       41 MOVE                             R11 R5
       42 CALL                             R10 1 3
       43 FORGPREP_NEXT                    R10
       44 GETTABLEKS                       R15 R14 K12 ["status"]
       46 GETTABLEKS                       R16 R14 K13 ["selected"]
       48 MOVE                             R19 R13
       49 MOVE                             R20 R15
       50 NAMECALL                         R17 R0 K14 ["getModerationStatus"]
       52 CALL                             R17 3 1
       53 GETUPVAL                         R19 2
       54 CALL                             R19 0 1
       55 JUMPIFNOT                        R19 ; [+5]
       56 GETUPVAL                         R18 3
       57 GETTABLEKS                       R18 R18 K15 ["new"]
       59 CALL                             R18 0 1
       60 JUMPIF                           R18 ; [+1]
       61 LOADNIL                          R18
       62 DUPTABLE                         R21 K20 [{"Id", "Title", "Selected", "LinkTextFrame"}]
       63 SETTABLEKS                       R13 R21 K16 ["Id"]
       65 LOADK                            R24 K21 ["General"]
       66 LOADK                            R26 K22 ["Location"]
       67 MOVE                             R27 R13
       68 CONCAT                           R25 R26 R27
       69 NAMECALL                         R22 R3 K8 ["getText"]
       71 CALL                             R22 3 1
       72 SETTABLEKS                       R22 R21 K17 ["Title"]
       74 SETTABLEKS                       R16 R21 K18 ["Selected"]
       76 GETUPVAL                         R22 4
       77 GETTABLEKS                       R22 R22 K23 ["createElement"]
       79 LOADK                            R23 K24 ["Frame"]
       80 DUPTABLE                         R24 K30 [{["BackgroundTransparency"] = 1, ["LayoutOrder"], ["Position"], ["Size"]}]
       81 NAMECALL                         R25 R1 K31 ["getNextOrder"]
       83 CALL                             R25 1 1
       84 SETTABLEKS                       R25 R24 K27 ["LayoutOrder"]
       86 GETIMPORT                        R25 K33 [UDim2.new]
       88 LOADN                            R26 0
       89 LOADN                            R27 0
       90 LOADN                            R28 0
       91 GETTABLEKS                       R29 R4 K34 ["requirementsLink"]
       93 GETTABLEKS                       R29 R29 K35 ["paddingY"]
       95 CALL                             R25 4 1
       96 SETTABLEKS                       R25 R24 K28 ["Position"]
       98 GETIMPORT                        R25 K33 [UDim2.new]
      100 LOADN                            R26 1
      101 GETTABLEKS                       R27 R4 K36 ["extraOptInInfo"]
      103 GETTABLEKS                       R27 R27 K37 ["length"]
      105 LOADN                            R28 0
      106 GETTABLEKS                       R29 R4 K36 ["extraOptInInfo"]
      108 GETTABLEKS                       R29 R29 K38 ["height"]
      110 CALL                             R25 4 1
      111 SETTABLEKS                       R25 R24 K29 ["Size"]
      113 DUPTABLE                         R25 K42 [{"UILayout", "StatusRequirements", "Warning"}]
      114 GETUPVAL                         R26 4
      115 GETTABLEKS                       R26 R26 K23 ["createElement"]
      117 LOADK                            R27 K43 ["UIListLayout"]
      118 DUPTABLE                         R28 K48 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
      119 GETIMPORT                        R29 K51 [Enum.FillDirection.Vertical]
      121 SETTABLEKS                       R29 R28 K44 ["FillDirection"]
      123 GETIMPORT                        R29 K53 [UDim.new]
      125 LOADN                            R30 0
      126 GETTABLEKS                       R31 R4 K36 ["extraOptInInfo"]
      128 GETTABLEKS                       R31 R31 K54 ["padding"]
      130 CALL                             R29 2 1
      131 SETTABLEKS                       R29 R28 K45 ["Padding"]
      133 GETIMPORT                        R29 K55 [Enum.SortOrder.LayoutOrder]
      135 SETTABLEKS                       R29 R28 K46 ["SortOrder"]
      137 GETIMPORT                        R29 K57 [Enum.VerticalAlignment.Top]
      139 SETTABLEKS                       R29 R28 K47 ["VerticalAlignment"]
      141 CALL                             R26 2 1
      142 SETTABLEKS                       R26 R25 K39 ["UILayout"]
      144 GETUPVAL                         R26 4
      145 GETTABLEKS                       R26 R26 K23 ["createElement"]
      147 LOADK                            R27 K24 ["Frame"]
      148 DUPTABLE                         R28 K60 [{["BorderSizePixel"] = 0, ["LayoutOrder"]}]
      149 NAMECALL                         R29 R1 K31 ["getNextOrder"]
      151 CALL                             R29 1 1
      152 SETTABLEKS                       R29 R28 K27 ["LayoutOrder"]
      154 DUPTABLE                         R29 K63 [{"UILayout", "ModerationStatus", "RequirementsFrame"}]
      155 GETUPVAL                         R30 4
      156 GETTABLEKS                       R30 R30 K23 ["createElement"]
      158 LOADK                            R31 K43 ["UIListLayout"]
      159 DUPTABLE                         R32 K48 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
      160 GETIMPORT                        R33 K65 [Enum.FillDirection.Horizontal]
      162 SETTABLEKS                       R33 R32 K44 ["FillDirection"]
      164 GETIMPORT                        R33 K53 [UDim.new]
      166 LOADN                            R34 0
      167 GETTABLEKS                       R35 R4 K34 ["requirementsLink"]
      169 GETTABLEKS                       R35 R35 K66 ["paddingX"]
      171 CALL                             R33 2 1
      172 SETTABLEKS                       R33 R32 K45 ["Padding"]
      174 GETIMPORT                        R33 K55 [Enum.SortOrder.LayoutOrder]
      176 SETTABLEKS                       R33 R32 K46 ["SortOrder"]
      178 GETIMPORT                        R33 K57 [Enum.VerticalAlignment.Top]
      180 SETTABLEKS                       R33 R32 K47 ["VerticalAlignment"]
      182 CALL                             R30 2 1
      183 SETTABLEKS                       R30 R29 K39 ["UILayout"]
      185 GETTABLEKS                       R31 R17 K67 ["show"]
      187 JUMPIFNOT                        R31 ; [+66]
      188 GETUPVAL                         R30 4
      189 GETTABLEKS                       R30 R30 K23 ["createElement"]
      191 LOADK                            R31 K68 ["TextLabel"]
      192 DUPTABLE                         R32 K75 [{["BackgroundTransparency"] = 1, ["Font"], ["LayoutOrder"] = -1, ["Size"], ["Text"], ["TextColor3"], ["TextSize"], ["TextXAlignment"]}]
      193 GETTABLEKS                       R33 R4 K76 ["fontStyle"]
      195 GETTABLEKS                       R33 R33 K77 ["Subtext"]
      197 GETTABLEKS                       R33 R33 K69 ["Font"]
      199 SETTABLEKS                       R33 R32 K69 ["Font"]
      201 GETIMPORT                        R33 K33 [UDim2.new]
      203 LOADN                            R34 0
      204 GETUPVAL                         R35 1
      205 GETTABLEKS                       R36 R17 K78 ["statusText"]
      207 GETTABLEKS                       R37 R4 K76 ["fontStyle"]
      209 GETTABLEKS                       R37 R37 K77 ["Subtext"]
      211 GETTABLEKS                       R37 R37 K73 ["TextSize"]
      213 GETTABLEKS                       R38 R4 K76 ["fontStyle"]
      215 GETTABLEKS                       R38 R38 K77 ["Subtext"]
      217 GETTABLEKS                       R38 R38 K69 ["Font"]
      219 CALL                             R35 3 1
      220 GETTABLEKS                       R35 R35 K79 ["X"]
      222 LOADN                            R36 0
      223 GETTABLEKS                       R37 R4 K76 ["fontStyle"]
      225 GETTABLEKS                       R37 R37 K77 ["Subtext"]
      227 GETTABLEKS                       R37 R37 K73 ["TextSize"]
      229 CALL                             R33 4 1
      230 SETTABLEKS                       R33 R32 K29 ["Size"]
      232 GETTABLEKS                       R33 R17 K78 ["statusText"]
      234 SETTABLEKS                       R33 R32 K71 ["Text"]
      236 GETTABLEKS                       R33 R17 K80 ["textColor"]
      238 SETTABLEKS                       R33 R32 K72 ["TextColor3"]
      240 GETTABLEKS                       R33 R4 K76 ["fontStyle"]
      242 GETTABLEKS                       R33 R33 K77 ["Subtext"]
      244 GETTABLEKS                       R33 R33 K73 ["TextSize"]
      246 SETTABLEKS                       R33 R32 K73 ["TextSize"]
      248 GETIMPORT                        R33 K82 [Enum.TextXAlignment.Left]
      250 SETTABLEKS                       R33 R32 K74 ["TextXAlignment"]
      252 CALL                             R30 2 1
      253 JUMPIF                           R30 ; [+1]
      254 LOADNIL                          R30
      255 SETTABLEKS                       R30 R29 K61 ["ModerationStatus"]
      257 GETUPVAL                         R30 4
      258 GETTABLEKS                       R30 R30 K23 ["createElement"]
      260 LOADK                            R31 K24 ["Frame"]
      261 DUPTABLE                         R32 K83 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"], ["Size"]}]
      262 NAMECALL                         R33 R1 K31 ["getNextOrder"]
      264 CALL                             R33 1 1
      265 SETTABLEKS                       R33 R32 K27 ["LayoutOrder"]
      267 GETIMPORT                        R33 K33 [UDim2.new]
      269 LOADN                            R34 0
      270 GETTABLEKS                       R35 R4 K34 ["requirementsLink"]
      272 GETTABLEKS                       R35 R35 K37 ["length"]
      274 LOADN                            R36 0
      275 GETTABLEKS                       R37 R4 K34 ["requirementsLink"]
      277 GETTABLEKS                       R37 R37 K38 ["height"]
      279 CALL                             R33 4 1
      280 SETTABLEKS                       R33 R32 K29 ["Size"]
      282 DUPTABLE                         R33 K85 [{"LinkTextLabel", "RequirementsLinkText"}]
      283 GETUPVAL                         R34 4
      284 GETTABLEKS                       R34 R34 K23 ["createElement"]
      286 GETUPVAL                         R35 5
      287 DUPTABLE                         R36 K90 [{["Position"], ["Size"], ["Style"] = "Body", ["Text"], ["TextTransparency"], ["TextXAlignment"], ["TextYAlignment"]}]
      288 GETIMPORT                        R37 K33 [UDim2.new]
      290 LOADN                            R38 0
      291 GETTABLEKS                       R39 R7 K79 ["X"]
      293 LOADN                            R40 0
      294 LOADN                            R41 0
      295 CALL                             R37 4 1
      296 SETTABLEKS                       R37 R36 K28 ["Position"]
      298 GETIMPORT                        R37 K33 [UDim2.new]
      300 LOADN                            R38 1
      301 GETTABLEKS                       R40 R7 K79 ["X"]
      303 MINUS                            R39 R40
      304 LOADN                            R40 1
      305 LOADN                            R41 0
      306 CALL                             R37 4 1
      307 SETTABLEKS                       R37 R36 K29 ["Size"]
      309 GETUPVAL                         R39 0
      310 LOADK                            R40 K91 ["ChinaRequirements"]
      311 NAMECALL                         R37 R3 K8 ["getText"]
      313 CALL                             R37 3 1
      314 SETTABLEKS                       R37 R36 K71 ["Text"]
      316 JUMPIF                           R6 ; [+2]
      317 LOADK                            R37 K92 [0.5]
      318 JUMP                             ; [+1]
      319 LOADNIL                          R37
      320 SETTABLEKS                       R37 R36 K88 ["TextTransparency"]
      322 GETIMPORT                        R37 K82 [Enum.TextXAlignment.Left]
      324 SETTABLEKS                       R37 R36 K74 ["TextXAlignment"]
      326 GETIMPORT                        R37 K93 [Enum.TextYAlignment.Top]
      328 SETTABLEKS                       R37 R36 K89 ["TextYAlignment"]
      330 CALL                             R34 2 1
      331 SETTABLEKS                       R34 R33 K84 ["LinkTextLabel"]
      333 GETUPVAL                         R34 4
      334 GETTABLEKS                       R34 R34 K23 ["createElement"]
      336 GETUPVAL                         R35 6
      337 DUPTABLE                         R36 K95 [{["OnClick"], ["Size"], ["Style"] = "Body", ["Text"]}]
      338 GETTABLEKS                       R37 R0 K96 ["getOptInLocationsRequirementsLink"]
      340 SETTABLEKS                       R37 R36 K94 ["OnClick"]
      342 GETIMPORT                        R37 K33 [UDim2.new]
      344 LOADN                            R38 0
      345 GETTABLEKS                       R39 R7 K79 ["X"]
      347 LOADN                            R40 0
      348 GETTABLEKS                       R41 R7 K97 ["Y"]
      350 CALL                             R37 4 1
      351 SETTABLEKS                       R37 R36 K29 ["Size"]
      353 GETUPVAL                         R39 0
      354 LOADK                            R40 K7 ["RequirementsLinkText"]
      355 NAMECALL                         R37 R3 K8 ["getText"]
      357 CALL                             R37 3 1
      358 SETTABLEKS                       R37 R36 K71 ["Text"]
      360 CALL                             R34 2 1
      361 SETTABLEKS                       R34 R33 K7 ["RequirementsLinkText"]
      363 CALL                             R30 3 1
      364 SETTABLEKS                       R30 R29 K62 ["RequirementsFrame"]
      366 CALL                             R26 3 1
      367 SETTABLEKS                       R26 R25 K40 ["StatusRequirements"]
      369 JUMPIFNOT                        R9 ; [+157]
      370 GETUPVAL                         R26 4
      371 GETTABLEKS                       R26 R26 K23 ["createElement"]
      373 LOADK                            R27 K24 ["Frame"]
      374 DUPTABLE                         R28 K60 [{["BorderSizePixel"] = 0, ["LayoutOrder"]}]
      375 NAMECALL                         R29 R1 K31 ["getNextOrder"]
      377 CALL                             R29 1 1
      378 SETTABLEKS                       R29 R28 K27 ["LayoutOrder"]
      380 DUPTABLE                         R29 K99 [{"UILayout", "Image", "Text"}]
      381 GETUPVAL                         R30 4
      382 GETTABLEKS                       R30 R30 K23 ["createElement"]
      384 LOADK                            R31 K43 ["UIListLayout"]
      385 DUPTABLE                         R32 K48 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
      386 GETIMPORT                        R33 K65 [Enum.FillDirection.Horizontal]
      388 SETTABLEKS                       R33 R32 K44 ["FillDirection"]
      390 GETIMPORT                        R33 K53 [UDim.new]
      392 LOADN                            R34 0
      393 GETTABLEKS                       R35 R4 K100 ["optInWarning"]
      395 GETTABLEKS                       R35 R35 K54 ["padding"]
      397 CALL                             R33 2 1
      398 SETTABLEKS                       R33 R32 K45 ["Padding"]
      400 GETIMPORT                        R33 K55 [Enum.SortOrder.LayoutOrder]
      402 SETTABLEKS                       R33 R32 K46 ["SortOrder"]
      404 GETIMPORT                        R33 K57 [Enum.VerticalAlignment.Top]
      406 SETTABLEKS                       R33 R32 K47 ["VerticalAlignment"]
      408 CALL                             R30 2 1
      409 SETTABLEKS                       R30 R29 K39 ["UILayout"]
      411 GETUPVAL                         R30 4
      412 GETTABLEKS                       R30 R30 K23 ["createElement"]
      414 GETUPVAL                         R31 7
      415 DUPTABLE                         R32 K102 [{["LayoutOrder"], ["Size"], ["Style"] = "WarningStyle"}]
      416 NAMECALL                         R33 R18 K31 ["getNextOrder"]
      418 CALL                             R33 1 1
      419 SETTABLEKS                       R33 R32 K27 ["LayoutOrder"]
      421 GETIMPORT                        R33 K104 [UDim2.fromOffset]
      423 GETTABLEKS                       R34 R4 K100 ["optInWarning"]
      425 GETTABLEKS                       R34 R34 K105 ["size"]
      427 GETTABLEKS                       R35 R4 K100 ["optInWarning"]
      429 GETTABLEKS                       R35 R35 K105 ["size"]
      431 CALL                             R33 2 1
      432 SETTABLEKS                       R33 R32 K29 ["Size"]
      434 CALL                             R30 2 1
      435 SETTABLEKS                       R30 R29 K98 ["Image"]
      437 GETUPVAL                         R30 4
      438 GETTABLEKS                       R30 R30 K23 ["createElement"]
      440 LOADK                            R31 K68 ["TextLabel"]
      441 DUPTABLE                         R32 K106 [{["BackgroundTransparency"] = 1, ["Font"], ["LayoutOrder"], ["Size"], ["Text"], ["TextColor3"], ["TextTransparency"], ["TextSize"], ["TextXAlignment"]}]
      442 GETTABLEKS                       R33 R4 K76 ["fontStyle"]
      444 GETTABLEKS                       R33 R33 K107 ["Smaller"]
      446 GETTABLEKS                       R33 R33 K69 ["Font"]
      448 SETTABLEKS                       R33 R32 K69 ["Font"]
      450 NAMECALL                         R33 R18 K31 ["getNextOrder"]
      452 CALL                             R33 1 1
      453 SETTABLEKS                       R33 R32 K27 ["LayoutOrder"]
      455 GETIMPORT                        R33 K33 [UDim2.new]
      457 LOADN                            R34 0
      458 GETUPVAL                         R35 1
      459 GETUPVAL                         R38 0
      460 LOADK                            R39 K108 ["SavedGameWarning"]
      461 NAMECALL                         R36 R3 K8 ["getText"]
      463 CALL                             R36 3 1
      464 GETTABLEKS                       R37 R4 K76 ["fontStyle"]
      466 GETTABLEKS                       R37 R37 K107 ["Smaller"]
      468 GETTABLEKS                       R37 R37 K73 ["TextSize"]
      470 GETTABLEKS                       R38 R4 K76 ["fontStyle"]
      472 GETTABLEKS                       R38 R38 K107 ["Smaller"]
      474 GETTABLEKS                       R38 R38 K69 ["Font"]
      476 CALL                             R35 3 1
      477 GETTABLEKS                       R35 R35 K79 ["X"]
      479 LOADN                            R36 0
      480 GETTABLEKS                       R37 R4 K76 ["fontStyle"]
      482 GETTABLEKS                       R37 R37 K107 ["Smaller"]
      484 GETTABLEKS                       R37 R37 K73 ["TextSize"]
      486 CALL                             R33 4 1
      487 SETTABLEKS                       R33 R32 K29 ["Size"]
      489 GETUPVAL                         R35 0
      490 LOADK                            R36 K108 ["SavedGameWarning"]
      491 NAMECALL                         R33 R3 K8 ["getText"]
      493 CALL                             R33 3 1
      494 SETTABLEKS                       R33 R32 K71 ["Text"]
      496 GETTABLEKS                       R33 R4 K76 ["fontStyle"]
      498 GETTABLEKS                       R33 R33 K109 ["Header"]
      500 GETTABLEKS                       R33 R33 K72 ["TextColor3"]
      502 SETTABLEKS                       R33 R32 K72 ["TextColor3"]
      504 GETTABLEKS                       R33 R4 K100 ["optInWarning"]
      506 GETTABLEKS                       R33 R33 K110 ["transparency"]
      508 SETTABLEKS                       R33 R32 K88 ["TextTransparency"]
      510 GETTABLEKS                       R33 R4 K76 ["fontStyle"]
      512 GETTABLEKS                       R33 R33 K107 ["Smaller"]
      514 GETTABLEKS                       R33 R33 K73 ["TextSize"]
      516 SETTABLEKS                       R33 R32 K73 ["TextSize"]
      518 GETIMPORT                        R33 K82 [Enum.TextXAlignment.Left]
      520 SETTABLEKS                       R33 R32 K74 ["TextXAlignment"]
      522 CALL                             R30 2 1
      523 SETTABLEKS                       R30 R29 K71 ["Text"]
      525 CALL                             R26 3 1
      526 JUMPIF                           R26 ; [+1]
      527 LOADNIL                          R26
      528 SETTABLEKS                       R26 R25 K41 ["Warning"]
      530 CALL                             R22 3 1
      531 SETTABLEKS                       R22 R21 K19 ["LinkTextFrame"]
      533 FASTCALL2                        TABLE_INSERT R8 R21 ; [+4]
      535 MOVE                             R20 R8
      536 GETIMPORT                        R19 K113 [table.insert]
      538 CALL                             R19 2 0
      539 LOADB                            R9 0
      540 FORGLOOP                         R10 2 ; [-497]
      542 RETURN                           R8 1

PROTO_55:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["state"]
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 SETTABLEKS                       R1 R0 K1 ["addIcons"]
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U0
       12 SETTABLEKS                       R1 R0 K2 ["addThumbnails"]
       14 DUPCLOSURE                       R1 K3 [PROTO_50]
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 SETTABLEKS                       R1 R0 K4 ["getModerationStatus"]
       21 NEWCLOSURE                       R1 P3
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U5
       24 SETTABLEKS                       R1 R0 K5 ["onMouseEnter"]
       26 NEWCLOSURE                       R1 P4
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U6
       30 SETTABLEKS                       R1 R0 K6 ["onMouseLeave"]
       32 NEWCLOSURE                       R1 P5
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U7
       35 CAPTURE                          UPVAL U8
       36 CAPTURE                          UPVAL U9
       37 SETTABLEKS                       R1 R0 K7 ["getOptInLocationsRequirementsLink"]
       39 DUPCLOSURE                       R1 K8 [PROTO_54]
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          UPVAL U10
       42 CAPTURE                          UPVAL U11
       43 CAPTURE                          UPVAL U12
       44 CAPTURE                          UPVAL U6
       45 CAPTURE                          UPVAL U13
       46 CAPTURE                          UPVAL U14
       47 CAPTURE                          UPVAL U15
       48 SETTABLEKS                       R1 R0 K9 ["createOptInLocationBoxes"]
       50 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PendingTeamCreateEnabled"]
        3 JUMPIFEQKNIL                     R1 ; [+5]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["PendingTeamCreateEnabled"]
        8 JUMP                             ; [+1]
        9 GETUPVAL                         R0 1
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K1 ["TeamCreateEnabledChanged"]
       13 NOT                              R2 R0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ScriptCollabEnabledChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["ScriptCollabEnabled"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["GameId"]
        4 CALL                             R0 1 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R1 K1 ["join"]
        5 GETUPVAL                         R2 1
        6 NEWTABLE                         R3 1 0
        8 GETTABLEKS                       R4 R0 K2 ["Id"]
       10 GETTABLEKS                       R6 R0 K3 ["Selected"]
       12 JUMPIFNOT                        R6 ; [+4]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K4 ["None"]
       16 JUMPIF                           R5 ; [+3]
       17 GETTABLEKS                       R6 R0 K3 ["Selected"]
       19 NOT                              R5 R6
       20 SETTABLE                         R5 R3 R4
       21 CALL                             R1 2 1
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K5 ["DevicesChanged"]
       25 MOVE                             R3 R1
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 2
        4 MOVE                             R3 R0
        5 NAMECALL                         R1 R1 K0 ["OpenBrowserWindow"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_63:
        0 DUPTABLE                         R1 K6 [{[1], ["Title"] = "", ["Header"], ["Buttons"], ["Body"]}]
        1 GETIMPORT                        R2 K9 [Vector2.new]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K10 ["dialog"]
        6 GETTABLEKS                       R3 R3 K11 ["size"]
        8 GETTABLEKS                       R3 R3 K12 ["width"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K10 ["dialog"]
       13 GETTABLEKS                       R4 R4 K11 ["size"]
       15 GETTABLEKS                       R4 R4 K13 ["height"]
       17 CALL                             R2 2 1
       18 SETTABLEKS                       R2 R1 K0 ["Size"]
       20 GETUPVAL                         R2 1
       21 LOADK                            R4 K14 ["General"]
       22 LOADK                            R5 K15 ["TermsDialogHeader"]
       23 NAMECALL                         R2 R2 K16 ["getText"]
       25 CALL                             R2 3 1
       26 SETTABLEKS                       R2 R1 K3 ["Header"]
       28 NEWTABLE                         R2 0 1
       30 GETUPVAL                         R3 1
       31 LOADK                            R5 K14 ["General"]
       32 LOADK                            R6 K17 ["ReplyOK"]
       33 NAMECALL                         R3 R3 K16 ["getText"]
       35 CALL                             R3 3 -1
       36 SETLIST                          R2 R3 -1 [1]
       38 SETTABLEKS                       R2 R1 K4 ["Buttons"]
       40 GETUPVAL                         R2 2
       41 GETTABLEKS                       R2 R2 K18 ["createElement"]
       43 GETUPVAL                         R3 3
       44 DUPTABLE                         R4 K26 [{["OnLinkClicked"], ["Text"], ["LinkText"], ["LinkPlaceholder"] = "[link]", ["MaxWidth"], ["TextProps"]}]
       45 DUPCLOSURE                       R5 K27 [PROTO_62]
       46 CAPTURE                          UPVAL U4
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          UPVAL U6
       49 SETTABLEKS                       R5 R4 K19 ["OnLinkClicked"]
       51 GETUPVAL                         R5 1
       52 LOADK                            R7 K14 ["General"]
       53 LOADK                            R8 K28 ["TermsDialogBody"]
       54 NAMECALL                         R5 R5 K16 ["getText"]
       56 CALL                             R5 3 1
       57 SETTABLEKS                       R5 R4 K20 ["Text"]
       59 GETUPVAL                         R5 1
       60 LOADK                            R7 K14 ["General"]
       61 LOADK                            R8 K29 ["TermsDialogBodyLink"]
       62 NAMECALL                         R5 R5 K16 ["getText"]
       64 CALL                             R5 3 1
       65 SETTABLEKS                       R5 R4 K21 ["LinkText"]
       67 GETUPVAL                         R5 0
       68 GETTABLEKS                       R5 R5 K30 ["textWithInlineLink"]
       70 GETTABLEKS                       R5 R5 K31 ["maxWidth"]
       72 SETTABLEKS                       R5 R4 K24 ["MaxWidth"]
       74 GETUPVAL                         R5 7
       75 GETTABLEKS                       R5 R5 K32 ["Dictionary"]
       77 GETTABLEKS                       R5 R5 K33 ["join"]
       79 GETUPVAL                         R6 0
       80 GETTABLEKS                       R6 R6 K34 ["fontStyle"]
       82 GETTABLEKS                       R6 R6 K35 ["Normal"]
       84 DUPTABLE                         R7 K38 [{["BackgroundTransparency"] = 1}]
       85 CALL                             R5 2 1
       86 SETTABLEKS                       R5 R4 K25 ["TextProps"]
       88 CALL                             R2 2 1
       89 SETTABLEKS                       R2 R1 K5 ["Body"]
       91 GETUPVAL                         R2 8
       92 JUMPIF                           R2 ; [+21]
       93 GETUPVAL                         R2 9
       94 GETTABLEKS                       R2 R2 K39 ["showDialog"]
       96 GETUPVAL                         R3 10
       97 MOVE                             R4 R1
       98 CALL                             R2 2 1
       99 NAMECALL                         R2 R2 K40 ["await"]
      101 CALL                             R2 1 0
      102 NEWTABLE                         R2 1 0
      104 GETUPVAL                         R3 11
      105 LOADB                            R4 1
      106 SETTABLE                         R4 R2 R3
      107 GETUPVAL                         R3 12
      108 GETUPVAL                         R4 13
      109 GETUPVAL                         R5 14
      110 GETUPVAL                         R6 15
      111 MOVE                             R7 R2
      112 CALL                             R3 4 0
      113 RETURN                           R0 0
      114 GETUPVAL                         R2 16
      115 GETUPVAL                         R3 17
      116 NEWTABLE                         R4 1 0
      118 GETTABLEKS                       R5 R0 K41 ["Id"]
      120 DUPTABLE                         R6 K43 [{"selected"}]
      121 GETTABLEKS                       R8 R0 K44 ["Selected"]
      123 NOT                              R7 R8
      124 SETTABLEKS                       R7 R6 K42 ["selected"]
      126 SETTABLE                         R6 R4 R5
      127 CALL                             R2 2 1
      128 NEWTABLE                         R3 2 0
      130 GETUPVAL                         R4 18
      131 GETTABLEKS                       R5 R0 K41 ["Id"]
      133 SETTABLE                         R5 R3 R4
      134 GETUPVAL                         R4 19
      135 GETTABLEKS                       R6 R0 K44 ["Selected"]
      137 NOT                              R5 R6
      138 SETTABLE                         R5 R3 R4
      139 GETUPVAL                         R4 12
      140 GETUPVAL                         R5 13
      141 GETUPVAL                         R6 14
      142 GETUPVAL                         R7 20
      143 MOVE                             R8 R3
      144 CALL                             R4 4 0
      145 GETUPVAL                         R4 21
      146 GETTABLEKS                       R4 R4 K45 ["OptInLocationsChanged"]
      148 MOVE                             R5 R2
      149 CALL                             R4 1 0
      150 RETURN                           R0 0

PROTO_64:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["hasPermissionToEdit"]
        3 CALL                             R0 1 1
        4 JUMPIF                           R0 ; [+9]
        5 DUPTABLE                         R0 K2 [{"InsufficientPermission"}]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K3 ["createElement"]
        9 GETUPVAL                         R2 2
       10 CALL                             R1 1 1
       11 SETTABLEKS                       R1 R0 K1 ["InsufficientPermission"]
       13 RETURN                           R0 1
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K4 ["props"]
       17 GETTABLEKS                       R1 R0 K5 ["Devices"]
       19 GETTABLEKS                       R2 R0 K6 ["Dialog"]
       21 LOADNIL                          R3
       22 LOADNIL                          R4
       23 LOADNIL                          R5
       24 GETUPVAL                         R6 3
       25 CALL                             R6 0 1
       26 JUMPIFNOT                        R6 ; [+25]
       27 GETUPVAL                         R6 4
       28 GETTABLE                         R3 R0 R6
       29 GETTABLEKS                       R7 R0 K7 ["PlayerAcceptance"]
       31 JUMPIFNOT                        R7 ; [+3]
       32 GETTABLEKS                       R6 R0 K7 ["PlayerAcceptance"]
       34 JUMPIF                           R6 ; [+1]
       35 LOADNIL                          R6
       36 MOVE                             R4 R6
       37 GETTABLEKS                       R6 R0 K8 ["PublishedVersions"]
       39 GETTABLEKS                       R7 R6 K9 ["data"]
       41 JUMPIFNOT                        R7 ; [+7]
       42 GETIMPORT                        R7 K11 [next]
       44 GETTABLEKS                       R8 R6 K9 ["data"]
       46 CALL                             R7 1 1
       47 JUMPIFNOTEQKNIL                  R7 ; [+3]
       49 LOADB                            R5 0
       50 JUMP                             ; [+1]
       51 LOADB                            R5 1
       52 NEWTABLE                         R6 0 15
       54 NEWTABLE                         R7 2 0
       56 LOADK                            R8 K12 ["All"]
       57 SETTABLEKS                       R8 R7 K13 ["Id"]
       59 GETUPVAL                         R8 5
       60 LOADK                            R10 K14 ["General"]
       61 LOADK                            R11 K15 ["GenreAll"]
       62 NAMECALL                         R8 R8 K16 ["getText"]
       64 CALL                             R8 3 1
       65 SETTABLEKS                       R8 R7 K17 ["Label"]
       67 NEWTABLE                         R8 2 0
       69 LOADK                            R9 K18 ["Adventure"]
       70 SETTABLEKS                       R9 R8 K13 ["Id"]
       72 GETUPVAL                         R9 5
       73 LOADK                            R11 K14 ["General"]
       74 LOADK                            R12 K19 ["GenreAdventure"]
       75 NAMECALL                         R9 R9 K16 ["getText"]
       77 CALL                             R9 3 1
       78 SETTABLEKS                       R9 R8 K17 ["Label"]
       80 NEWTABLE                         R9 2 0
       82 LOADK                            R10 K20 ["Tutorial"]
       83 SETTABLEKS                       R10 R9 K13 ["Id"]
       85 GETUPVAL                         R10 5
       86 LOADK                            R12 K14 ["General"]
       87 LOADK                            R13 K21 ["GenreBuilding"]
       88 NAMECALL                         R10 R10 K16 ["getText"]
       90 CALL                             R10 3 1
       91 SETTABLEKS                       R10 R9 K17 ["Label"]
       93 NEWTABLE                         R10 2 0
       95 LOADK                            R11 K22 ["Funny"]
       96 SETTABLEKS                       R11 R10 K13 ["Id"]
       98 GETUPVAL                         R11 5
       99 LOADK                            R13 K14 ["General"]
      100 LOADK                            R14 K23 ["GenreComedy"]
      101 NAMECALL                         R11 R11 K16 ["getText"]
      103 CALL                             R11 3 1
      104 SETTABLEKS                       R11 R10 K17 ["Label"]
      106 NEWTABLE                         R11 2 0
      108 LOADK                            R12 K24 ["Ninja"]
      109 SETTABLEKS                       R12 R11 K13 ["Id"]
      111 GETUPVAL                         R12 5
      112 LOADK                            R14 K14 ["General"]
      113 LOADK                            R15 K25 ["GenreFighting"]
      114 NAMECALL                         R12 R12 K16 ["getText"]
      116 CALL                             R12 3 1
      117 SETTABLEKS                       R12 R11 K17 ["Label"]
      119 NEWTABLE                         R12 2 0
      121 LOADK                            R13 K26 ["FPS"]
      122 SETTABLEKS                       R13 R12 K13 ["Id"]
      124 GETUPVAL                         R13 5
      125 LOADK                            R15 K14 ["General"]
      126 LOADK                            R16 K27 ["GenreFPS"]
      127 NAMECALL                         R13 R13 K16 ["getText"]
      129 CALL                             R13 3 1
      130 SETTABLEKS                       R13 R12 K17 ["Label"]
      132 NEWTABLE                         R13 2 0
      134 LOADK                            R14 K28 ["Scary"]
      135 SETTABLEKS                       R14 R13 K13 ["Id"]
      137 GETUPVAL                         R14 5
      138 LOADK                            R16 K14 ["General"]
      139 LOADK                            R17 K29 ["GenreHorror"]
      140 NAMECALL                         R14 R14 K16 ["getText"]
      142 CALL                             R14 3 1
      143 SETTABLEKS                       R14 R13 K17 ["Label"]
      145 NEWTABLE                         R14 2 0
      147 LOADK                            R15 K30 ["Fantasy"]
      148 SETTABLEKS                       R15 R14 K13 ["Id"]
      150 GETUPVAL                         R15 5
      151 LOADK                            R17 K14 ["General"]
      152 LOADK                            R18 K31 ["GenreMedieval"]
      153 NAMECALL                         R15 R15 K16 ["getText"]
      155 CALL                             R15 3 1
      156 SETTABLEKS                       R15 R14 K17 ["Label"]
      158 NEWTABLE                         R15 2 0
      160 LOADK                            R16 K32 ["War"]
      161 SETTABLEKS                       R16 R15 K13 ["Id"]
      163 GETUPVAL                         R16 5
      164 LOADK                            R18 K14 ["General"]
      165 LOADK                            R19 K33 ["GenreMilitary"]
      166 NAMECALL                         R16 R16 K16 ["getText"]
      168 CALL                             R16 3 1
      169 SETTABLEKS                       R16 R15 K17 ["Label"]
      171 NEWTABLE                         R16 2 0
      173 LOADK                            R17 K34 ["Pirate"]
      174 SETTABLEKS                       R17 R16 K13 ["Id"]
      176 GETUPVAL                         R17 5
      177 LOADK                            R19 K14 ["General"]
      178 LOADK                            R20 K35 ["GenreNaval"]
      179 NAMECALL                         R17 R17 K16 ["getText"]
      181 CALL                             R17 3 1
      182 SETTABLEKS                       R17 R16 K17 ["Label"]
      184 NEWTABLE                         R17 2 0
      186 LOADK                            R18 K36 ["RPG"]
      187 SETTABLEKS                       R18 R17 K13 ["Id"]
      189 GETUPVAL                         R18 5
      190 LOADK                            R20 K14 ["General"]
      191 LOADK                            R21 K37 ["GenreRPG"]
      192 NAMECALL                         R18 R18 K16 ["getText"]
      194 CALL                             R18 3 1
      195 SETTABLEKS                       R18 R17 K17 ["Label"]
      197 NEWTABLE                         R18 2 0
      199 LOADK                            R19 K38 ["SciFi"]
      200 SETTABLEKS                       R19 R18 K13 ["Id"]
      202 GETUPVAL                         R19 5
      203 LOADK                            R21 K14 ["General"]
      204 LOADK                            R22 K39 ["GenreSciFi"]
      205 NAMECALL                         R19 R19 K16 ["getText"]
      207 CALL                             R19 3 1
      208 SETTABLEKS                       R19 R18 K17 ["Label"]
      210 NEWTABLE                         R19 2 0
      212 LOADK                            R20 K40 ["Sports"]
      213 SETTABLEKS                       R20 R19 K13 ["Id"]
      215 GETUPVAL                         R20 5
      216 LOADK                            R22 K14 ["General"]
      217 LOADK                            R23 K41 ["GenreSports"]
      218 NAMECALL                         R20 R20 K16 ["getText"]
      220 CALL                             R20 3 1
      221 SETTABLEKS                       R20 R19 K17 ["Label"]
      223 NEWTABLE                         R20 2 0
      225 LOADK                            R21 K42 ["TownAndCity"]
      226 SETTABLEKS                       R21 R20 K13 ["Id"]
      228 GETUPVAL                         R21 5
      229 LOADK                            R23 K14 ["General"]
      230 LOADK                            R24 K43 ["GenreTownAndCity"]
      231 NAMECALL                         R21 R21 K16 ["getText"]
      233 CALL                             R21 3 1
      234 SETTABLEKS                       R21 R20 K17 ["Label"]
      236 NEWTABLE                         R21 2 0
      238 LOADK                            R22 K44 ["WildWest"]
      239 SETTABLEKS                       R22 R21 K13 ["Id"]
      241 GETUPVAL                         R22 5
      242 LOADK                            R24 K14 ["General"]
      243 LOADK                            R25 K45 ["GenreWestern"]
      244 NAMECALL                         R22 R22 K16 ["getText"]
      246 CALL                             R22 3 1
      247 SETTABLEKS                       R22 R21 K17 ["Label"]
      249 SETLIST                          R6 R7 15 [1]
      251 LOADNIL                          R7
      252 GETUPVAL                         R8 6
      253 JUMPIFNOT                        R8 ; [+23]
      254 GETIMPORT                        R8 K47 [pcall]
      256 GETGLOBAL                        R9 K48 ["GetExperienceGenreString"]
      258 GETUPVAL                         R10 5
      259 GETTABLEKS                       R11 R0 K49 ["ExperienceGenre"]
      261 CALL                             R8 3 2
      262 JUMPIFNOT                        R8 ; [+2]
      263 MOVE                             R7 R9
      264 JUMP                             ; [+13]
      265 GETIMPORT                        R10 K51 [warn]
      267 LOADK                            R12 K52 ["Error calling GetExperienceGenreString: "]
      268 FASTCALL1                        TOSTRING R9 ; [+3]
      269 MOVE                             R14 R9
      270 GETIMPORT                        R13 K54 [tostring]
      272 CALL                             R13 1 1
      273 CONCAT                           R11 R12 R13
      274 CALL                             R10 1 0
      275 LOADNIL                          R7
      276 JUMP                             ; [+1]
      277 LOADNIL                          R7
      278 GETUPVAL                         R8 7
      279 CALL                             R8 0 1
      280 GETUPVAL                         R9 1
      281 GETTABLEKS                       R9 R9 K3 ["createElement"]
      283 GETUPVAL                         R10 8
      284 DUPTABLE                         R11 K57 [{"TextTruncate", "Items"}]
      285 GETIMPORT                        R12 K60 [Enum.TextTruncate.AtEnd]
      287 SETTABLEKS                       R12 R11 K55 ["TextTruncate"]
      289 NEWTABLE                         R12 0 3
      291 JUMPIFNOT                        R8 ; [+29]
      292 GETUPVAL                         R14 9
      293 CALL                             R14 0 1
      294 JUMPIFNOT                        R14 ; [+13]
      295 GETUPVAL                         R13 5
      296 LOADK                            R15 K14 ["General"]
      297 LOADK                            R16 K61 ["ThumbnailsLimitExp"]
      298 DUPTABLE                         R17 K63 [{"maxThumbnails"}]
      299 GETUPVAL                         R18 10
      300 GETTABLEKS                       R18 R18 K64 ["MAX_THUMBNAILS"]
      302 SETTABLEKS                       R18 R17 K62 ["maxThumbnails"]
      304 NAMECALL                         R13 R13 K16 ["getText"]
      306 CALL                             R13 4 1
      307 JUMP                             ; [+41]
      308 GETUPVAL                         R13 5
      309 LOADK                            R15 K14 ["General"]
      310 LOADK                            R16 K65 ["ThumbnailsLimit"]
      311 DUPTABLE                         R17 K63 [{"maxThumbnails"}]
      312 GETUPVAL                         R18 10
      313 GETTABLEKS                       R18 R18 K64 ["MAX_THUMBNAILS"]
      315 SETTABLEKS                       R18 R17 K62 ["maxThumbnails"]
      317 NAMECALL                         R13 R13 K16 ["getText"]
      319 CALL                             R13 4 1
      320 JUMP                             ; [+28]
      321 GETUPVAL                         R14 9
      322 CALL                             R14 0 1
      323 JUMPIFNOT                        R14 ; [+13]
      324 GETUPVAL                         R13 5
      325 LOADK                            R15 K14 ["General"]
      326 LOADK                            R16 K66 ["ThumbnailsLimitLuobuExp"]
      327 DUPTABLE                         R17 K63 [{"maxThumbnails"}]
      328 GETUPVAL                         R18 10
      329 GETTABLEKS                       R18 R18 K64 ["MAX_THUMBNAILS"]
      331 SETTABLEKS                       R18 R17 K62 ["maxThumbnails"]
      333 NAMECALL                         R13 R13 K16 ["getText"]
      335 CALL                             R13 4 1
      336 JUMP                             ; [+12]
      337 GETUPVAL                         R13 5
      338 LOADK                            R15 K14 ["General"]
      339 LOADK                            R16 K67 ["ThumbnailsLimitLuobu"]
      340 DUPTABLE                         R17 K63 [{"maxThumbnails"}]
      341 GETUPVAL                         R18 10
      342 GETTABLEKS                       R18 R18 K64 ["MAX_THUMBNAILS"]
      344 SETTABLEKS                       R18 R17 K62 ["maxThumbnails"]
      346 NAMECALL                         R13 R13 K16 ["getText"]
      348 CALL                             R13 4 1
      349 GETUPVAL                         R14 5
      350 LOADK                            R16 K14 ["General"]
      351 LOADK                            R17 K68 ["ThumbnailsHint"]
      352 DUPTABLE                         R18 K70 [{"fileTypes"}]
      353 GETIMPORT                        R19 K73 [table.concat]
      355 GETUPVAL                         R20 10
      356 GETTABLEKS                       R20 R20 K74 ["IMAGE_TYPES"]
      358 LOADK                            R21 K75 [", "]
      359 CALL                             R19 2 1
      360 SETTABLEKS                       R19 R18 K69 ["fileTypes"]
      362 NAMECALL                         R14 R14 K16 ["getText"]
      364 CALL                             R14 4 1
      365 GETUPVAL                         R15 5
      366 LOADK                            R17 K14 ["General"]
      367 LOADK                            R18 K76 ["ThumbnailsModeration"]
      368 NAMECALL                         R15 R15 K16 ["getText"]
      370 CALL                             R15 3 -1
      371 SETLIST                          R12 R13 -1 [1]
      373 SETTABLEKS                       R12 R11 K56 ["Items"]
      375 CALL                             R9 2 1
      376 LOADNIL                          R10
      377 GETTABLEKS                       R11 R0 K77 ["NameError"]
      379 JUMPIFNOT                        R11 ; [+15]
      380 GETUPVAL                         R12 11
      381 GETTABLEKS                       R13 R0 K77 ["NameError"]
      383 GETTABLE                         R11 R12 R13
      384 JUMPIFNOT                        R11 ; [+10]
      385 GETUPVAL                         R11 5
      386 LOADK                            R13 K14 ["General"]
      387 GETUPVAL                         R15 11
      388 GETTABLEKS                       R16 R0 K77 ["NameError"]
      390 GETTABLE                         R14 R15 R16
      391 NAMECALL                         R11 R11 K16 ["getText"]
      393 CALL                             R11 3 1
      394 MOVE                             R10 R11
      395 LOADNIL                          R11
      396 GETTABLEKS                       R12 R0 K78 ["DescriptionError"]
      398 JUMPIFNOT                        R12 ; [+15]
      399 GETUPVAL                         R13 12
      400 GETTABLEKS                       R14 R0 K78 ["DescriptionError"]
      402 GETTABLE                         R12 R13 R14
      403 JUMPIFNOT                        R12 ; [+10]
      404 GETUPVAL                         R12 5
      405 LOADK                            R14 K14 ["General"]
      406 GETUPVAL                         R16 12
      407 GETTABLEKS                       R17 R0 K78 ["DescriptionError"]
      409 GETTABLE                         R15 R16 R17
      410 NAMECALL                         R12 R12 K16 ["getText"]
      412 CALL                             R12 3 1
      413 MOVE                             R11 R12
      414 LOADNIL                          R12
      415 GETTABLEKS                       R13 R0 K79 ["GameIconError"]
      417 JUMPIFNOT                        R13 ; [+15]
      418 GETUPVAL                         R14 13
      419 GETTABLEKS                       R15 R0 K79 ["GameIconError"]
      421 GETTABLE                         R13 R14 R15
      422 JUMPIFNOT                        R13 ; [+10]
      423 GETUPVAL                         R13 5
      424 LOADK                            R15 K14 ["General"]
      425 GETUPVAL                         R17 13
      426 GETTABLEKS                       R18 R0 K79 ["GameIconError"]
      428 GETTABLE                         R16 R17 R18
      429 NAMECALL                         R13 R13 K16 ["getText"]
      431 CALL                             R13 3 1
      432 MOVE                             R12 R13
      433 LOADNIL                          R13
      434 GETTABLEKS                       R14 R0 K80 ["ThumbnailsError"]
      436 JUMPIFNOT                        R14 ; [+15]
      437 GETUPVAL                         R15 13
      438 GETTABLEKS                       R16 R0 K80 ["ThumbnailsError"]
      440 GETTABLE                         R14 R15 R16
      441 JUMPIFNOT                        R14 ; [+10]
      442 GETUPVAL                         R14 5
      443 LOADK                            R16 K14 ["General"]
      444 GETUPVAL                         R18 13
      445 GETTABLEKS                       R19 R0 K80 ["ThumbnailsError"]
      447 GETTABLE                         R17 R18 R19
      448 NAMECALL                         R14 R14 K16 ["getText"]
      450 CALL                             R14 3 1
      451 MOVE                             R13 R14
      452 LOADNIL                          R14
      453 GETTABLEKS                       R15 R0 K81 ["AltTextError"]
      455 JUMPIFNOT                        R15 ; [+24]
      456 GETTABLEKS                       R15 R0 K81 ["AltTextError"]
      458 GETTABLEKS                       R15 R15 K82 ["Error"]
      460 JUMPIFNOT                        R15 ; [+19]
      461 GETUPVAL                         R16 14
      462 GETTABLEKS                       R17 R0 K81 ["AltTextError"]
      464 GETTABLEKS                       R17 R17 K82 ["Error"]
      466 GETTABLE                         R15 R16 R17
      467 JUMPIFNOT                        R15 ; [+12]
      468 GETUPVAL                         R15 5
      469 LOADK                            R17 K14 ["General"]
      470 GETUPVAL                         R19 14
      471 GETTABLEKS                       R20 R0 K81 ["AltTextError"]
      473 GETTABLEKS                       R20 R20 K82 ["Error"]
      475 GETTABLE                         R18 R19 R20
      476 NAMECALL                         R15 R15 K16 ["getText"]
      478 CALL                             R15 3 1
      479 MOVE                             R14 R15
      480 LOADNIL                          R15
      481 GETUPVAL                         R16 15
      482 CALL                             R16 0 1
      483 JUMPIFNOT                        R16 ; [+18]
      484 GETTABLEKS                       R16 R0 K83 ["PlayableDevicesError"]
      486 JUMPIFNOT                        R16 ; [+15]
      487 GETUPVAL                         R17 16
      488 GETTABLEKS                       R18 R0 K83 ["PlayableDevicesError"]
      490 GETTABLE                         R16 R17 R18
      491 JUMPIFNOT                        R16 ; [+10]
      492 GETUPVAL                         R16 5
      493 LOADK                            R18 K14 ["General"]
      494 GETUPVAL                         R20 16
      495 GETTABLEKS                       R21 R0 K83 ["PlayableDevicesError"]
      497 GETTABLE                         R19 R20 R21
      498 NAMECALL                         R16 R16 K16 ["getText"]
      500 CALL                             R16 3 1
      501 MOVE                             R15 R16
      502 GETUPVAL                         R16 17
      503 JUMPIFNOT                        R16 ; [+287]
      504 LOADB                            R16 0
      505 GETTABLEKS                       R17 R0 K84 ["PendingTeamCreateEnabled"]
      507 JUMPIFEQKNIL                     R17 ; [+8]
      509 GETTABLEKS                       R17 R0 K84 ["PendingTeamCreateEnabled"]
      511 GETUPVAL                         R18 18
      512 JUMPIFNOTEQ                      R17 R18 ; [+2]
      514 LOADB                            R16 0 +1
      515 LOADB                            R16 1
      516 DUPTABLE                         R17 K92 [{"Name", "Description", "Separator", "EnableTeamCreate", "EnableScriptCollab", "Separator2", "Guidelines"}]
      517 GETUPVAL                         R18 1
      518 GETTABLEKS                       R18 R18 K3 ["createElement"]
      520 GETUPVAL                         R19 19
      521 DUPTABLE                         R20 K95 [{"LayoutOrder", "Title"}]
      522 GETUPVAL                         R21 20
      523 NAMECALL                         R21 R21 K96 ["getNextOrder"]
      525 CALL                             R21 1 1
      526 SETTABLEKS                       R21 R20 K93 ["LayoutOrder"]
      528 GETUPVAL                         R21 5
      529 LOADK                            R23 K14 ["General"]
      530 LOADK                            R24 K97 ["TitleName"]
      531 NAMECALL                         R21 R21 K16 ["getText"]
      533 CALL                             R21 3 1
      534 SETTABLEKS                       R21 R20 K94 ["Title"]
      536 DUPTABLE                         R21 K99 [{"TextBox"}]
      537 GETUPVAL                         R22 1
      538 GETTABLEKS                       R22 R22 K3 ["createElement"]
      540 GETUPVAL                         R23 21
      541 DUPTABLE                         R24 K106 [{["Disabled"], ["ErrorText"], ["MaxLength"] = 50, ["OnTextChanged"], ["Text"]}]
      542 GETTABLEKS                       R26 R0 K85 ["Name"]
      544 JUMPIFEQKNIL                     R26 ; [+2]
      546 LOADB                            R25 0 +1
      547 LOADB                            R25 1
      548 SETTABLEKS                       R25 R24 K100 ["Disabled"]
      550 SETTABLEKS                       R10 R24 K101 ["ErrorText"]
      552 GETTABLEKS                       R25 R0 K107 ["NameChanged"]
      554 SETTABLEKS                       R25 R24 K104 ["OnTextChanged"]
      556 GETTABLEKS                       R26 R0 K85 ["Name"]
      558 ORK                              R25 R26 K108 [""]
      559 SETTABLEKS                       R25 R24 K105 ["Text"]
      561 CALL                             R22 2 1
      562 SETTABLEKS                       R22 R21 K98 ["TextBox"]
      564 CALL                             R18 3 1
      565 SETTABLEKS                       R18 R17 K85 ["Name"]
      567 GETUPVAL                         R18 1
      568 GETTABLEKS                       R18 R18 K3 ["createElement"]
      570 GETUPVAL                         R19 19
      571 DUPTABLE                         R20 K95 [{"LayoutOrder", "Title"}]
      572 GETUPVAL                         R21 20
      573 NAMECALL                         R21 R21 K96 ["getNextOrder"]
      575 CALL                             R21 1 1
      576 SETTABLEKS                       R21 R20 K93 ["LayoutOrder"]
      578 GETUPVAL                         R21 5
      579 LOADK                            R23 K14 ["General"]
      580 LOADK                            R24 K109 ["TitleDescription"]
      581 NAMECALL                         R21 R21 K16 ["getText"]
      583 CALL                             R21 3 1
      584 SETTABLEKS                       R21 R20 K94 ["Title"]
      586 DUPTABLE                         R21 K99 [{"TextBox"}]
      587 GETUPVAL                         R22 1
      588 GETTABLEKS                       R22 R22 K3 ["createElement"]
      590 GETUPVAL                         R23 21
      591 DUPTABLE                         R24 K115 [{["Disabled"], ["ErrorText"], ["MaxLength"] = 1000, ["MultiLine"] = True, ["OnTextChanged"], ["Height"] = 130, ["Text"]}]
      592 GETTABLEKS                       R26 R0 K86 ["Description"]
      594 JUMPIFEQKNIL                     R26 ; [+2]
      596 LOADB                            R25 0 +1
      597 LOADB                            R25 1
      598 SETTABLEKS                       R25 R24 K100 ["Disabled"]
      600 SETTABLEKS                       R11 R24 K101 ["ErrorText"]
      602 GETTABLEKS                       R25 R0 K116 ["DescriptionChanged"]
      604 SETTABLEKS                       R25 R24 K104 ["OnTextChanged"]
      606 GETTABLEKS                       R26 R0 K86 ["Description"]
      608 ORK                              R25 R26 K108 [""]
      609 SETTABLEKS                       R25 R24 K105 ["Text"]
      611 CALL                             R22 2 1
      612 SETTABLEKS                       R22 R21 K98 ["TextBox"]
      614 CALL                             R18 3 1
      615 SETTABLEKS                       R18 R17 K86 ["Description"]
      617 GETUPVAL                         R18 1
      618 GETTABLEKS                       R18 R18 K3 ["createElement"]
      620 GETUPVAL                         R19 22
      621 DUPTABLE                         R20 K117 [{"LayoutOrder"}]
      622 GETUPVAL                         R21 20
      623 NAMECALL                         R21 R21 K96 ["getNextOrder"]
      625 CALL                             R21 1 1
      626 SETTABLEKS                       R21 R20 K93 ["LayoutOrder"]
      628 CALL                             R18 2 1
      629 SETTABLEKS                       R18 R17 K87 ["Separator"]
      631 GETUPVAL                         R18 1
      632 GETTABLEKS                       R18 R18 K3 ["createElement"]
      634 GETUPVAL                         R19 23
      635 DUPTABLE                         R20 K122 [{"Title", "LayoutOrder", "Selected", "WarningTooltipText", "OnClick", "LinkProps"}]
      636 GETUPVAL                         R21 5
      637 LOADK                            R23 K14 ["General"]
      638 LOADK                            R24 K123 ["TitleEnableTeamCreate"]
      639 NAMECALL                         R21 R21 K16 ["getText"]
      641 CALL                             R21 3 1
      642 SETTABLEKS                       R21 R20 K94 ["Title"]
      644 GETUPVAL                         R21 20
      645 NAMECALL                         R21 R21 K96 ["getNextOrder"]
      647 CALL                             R21 1 1
      648 SETTABLEKS                       R21 R20 K93 ["LayoutOrder"]
      650 GETTABLEKS                       R22 R0 K84 ["PendingTeamCreateEnabled"]
      652 JUMPIFEQKNIL                     R22 ; [+4]
      654 GETTABLEKS                       R21 R0 K84 ["PendingTeamCreateEnabled"]
      656 JUMP                             ; [+1]
      657 GETUPVAL                         R21 18
      658 SETTABLEKS                       R21 R20 K118 ["Selected"]
      660 JUMPIFNOT                        R16 ; [+7]
      661 GETUPVAL                         R21 5
      662 LOADK                            R23 K14 ["General"]
      663 LOADK                            R24 K124 ["TeamCreateChangeWarningTooltip"]
      664 NAMECALL                         R21 R21 K16 ["getText"]
      666 CALL                             R21 3 1
      667 JUMP                             ; [+1]
      668 LOADNIL                          R21
      669 SETTABLEKS                       R21 R20 K119 ["WarningTooltipText"]
      671 NEWCLOSURE                       R21 P0
      672 CAPTURE                          VAL R0
      673 CAPTURE                          UPVAL U18
      674 SETTABLEKS                       R21 R20 K120 ["OnClick"]
      676 DUPTABLE                         R21 K127 [{"Text", "LinkText", "OnLinkClicked"}]
      677 GETUPVAL                         R22 5
      678 LOADK                            R24 K14 ["General"]
      679 LOADK                            R25 K128 ["EnableTeamCreateDescription"]
      680 NAMECALL                         R22 R22 K16 ["getText"]
      682 CALL                             R22 3 1
      683 SETTABLEKS                       R22 R21 K105 ["Text"]
      685 GETUPVAL                         R22 5
      686 LOADK                            R24 K14 ["General"]
      687 LOADK                            R25 K129 ["LearnMoreLink"]
      688 NAMECALL                         R22 R22 K16 ["getText"]
      690 CALL                             R22 3 1
      691 SETTABLEKS                       R22 R21 K125 ["LinkText"]
      693 DUPCLOSURE                       R22 K130 [PROTO_57]
      694 CAPTURE                          UPVAL U24
      695 CAPTURE                          UPVAL U25
      696 SETTABLEKS                       R22 R21 K126 ["OnLinkClicked"]
      698 SETTABLEKS                       R21 R20 K121 ["LinkProps"]
      700 CALL                             R18 2 1
      701 SETTABLEKS                       R18 R17 K88 ["EnableTeamCreate"]
      703 GETUPVAL                         R18 1
      704 GETTABLEKS                       R18 R18 K3 ["createElement"]
      706 GETUPVAL                         R19 23
      707 DUPTABLE                         R20 K132 [{"Title", "Description", "LayoutOrder", "Disabled", "Selected", "ShowWarning", "OnClick"}]
      708 GETUPVAL                         R21 5
      709 LOADK                            R23 K14 ["General"]
      710 LOADK                            R24 K133 ["TitleScriptDraftsMode"]
      711 NAMECALL                         R21 R21 K16 ["getText"]
      713 CALL                             R21 3 1
      714 SETTABLEKS                       R21 R20 K94 ["Title"]
      716 GETUPVAL                         R21 26
      717 SETTABLEKS                       R21 R20 K86 ["Description"]
      719 GETUPVAL                         R21 20
      720 NAMECALL                         R21 R21 K96 ["getNextOrder"]
      722 CALL                             R21 1 1
      723 SETTABLEKS                       R21 R20 K93 ["LayoutOrder"]
      725 GETUPVAL                         R22 18
      726 NOT                              R21 R22
      727 SETTABLEKS                       R21 R20 K100 ["Disabled"]
      729 GETTABLEKS                       R21 R0 K134 ["ScriptCollabEnabled"]
      731 SETTABLEKS                       R21 R20 K118 ["Selected"]
      733 GETUPVAL                         R21 27
      734 SETTABLEKS                       R21 R20 K131 ["ShowWarning"]
      736 NEWCLOSURE                       R21 P2
      737 CAPTURE                          VAL R0
      738 SETTABLEKS                       R21 R20 K120 ["OnClick"]
      740 CALL                             R18 2 1
      741 SETTABLEKS                       R18 R17 K89 ["EnableScriptCollab"]
      743 GETUPVAL                         R19 28
      744 JUMPIF                           R19 ; [+13]
      745 GETUPVAL                         R18 1
      746 GETTABLEKS                       R18 R18 K3 ["createElement"]
      748 GETUPVAL                         R19 22
      749 DUPTABLE                         R20 K117 [{"LayoutOrder"}]
      750 GETUPVAL                         R21 20
      751 NAMECALL                         R21 R21 K96 ["getNextOrder"]
      753 CALL                             R21 1 1
      754 SETTABLEKS                       R21 R20 K93 ["LayoutOrder"]
      756 CALL                             R18 2 1
      757 JUMP                             ; [+1]
      758 LOADNIL                          R18
      759 SETTABLEKS                       R18 R17 K90 ["Separator2"]
      761 GETUPVAL                         R19 28
      762 JUMPIF                           R19 ; [+23]
      763 GETUPVAL                         R19 29
      764 JUMPIFNOT                        R19 ; [+21]
      765 GETUPVAL                         R18 1
      766 GETTABLEKS                       R18 R18 K3 ["createElement"]
      768 GETUPVAL                         R19 30
      769 DUPTABLE                         R20 K137 [{"LayoutOrder", "GameGuideline", "GameId"}]
      770 GETUPVAL                         R21 20
      771 NAMECALL                         R21 R21 K96 ["getNextOrder"]
      773 CALL                             R21 1 1
      774 SETTABLEKS                       R21 R20 K93 ["LayoutOrder"]
      776 GETTABLEKS                       R21 R0 K91 ["Guidelines"]
      778 SETTABLEKS                       R21 R20 K135 ["GameGuideline"]
      780 GETTABLEKS                       R21 R0 K136 ["GameId"]
      782 SETTABLEKS                       R21 R20 K136 ["GameId"]
      784 CALL                             R18 2 1
      785 JUMP                             ; [+1]
      786 LOADNIL                          R18
      787 SETTABLEKS                       R18 R17 K91 ["Guidelines"]
      789 CLOSEUPVALS                      R3
      790 RETURN                           R17 1
      791 DUPTABLE                         R16 K148 [{"Name", "Description", "Separator", "Guidelines", "Separator2", "Icon", "Separator3", "Thumbnails", "Separator4", "Genre", "Separator5", "CreatorRestriction", "Separator6", "Devices", "Separator7", "OptInLocations"}]
      792 GETUPVAL                         R17 1
      793 GETTABLEKS                       R17 R17 K3 ["createElement"]
      795 GETUPVAL                         R18 19
      796 DUPTABLE                         R19 K95 [{"LayoutOrder", "Title"}]
      797 GETUPVAL                         R20 20
      798 NAMECALL                         R20 R20 K96 ["getNextOrder"]
      800 CALL                             R20 1 1
      801 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
      803 GETUPVAL                         R20 5
      804 LOADK                            R22 K14 ["General"]
      805 LOADK                            R23 K97 ["TitleName"]
      806 NAMECALL                         R20 R20 K16 ["getText"]
      808 CALL                             R20 3 1
      809 SETTABLEKS                       R20 R19 K94 ["Title"]
      811 DUPTABLE                         R20 K99 [{"TextBox"}]
      812 GETUPVAL                         R21 1
      813 GETTABLEKS                       R21 R21 K3 ["createElement"]
      815 GETUPVAL                         R22 21
      816 DUPTABLE                         R23 K106 [{["Disabled"], ["ErrorText"], ["MaxLength"] = 50, ["OnTextChanged"], ["Text"]}]
      817 GETTABLEKS                       R25 R0 K85 ["Name"]
      819 JUMPIFEQKNIL                     R25 ; [+2]
      821 LOADB                            R24 0 +1
      822 LOADB                            R24 1
      823 SETTABLEKS                       R24 R23 K100 ["Disabled"]
      825 SETTABLEKS                       R10 R23 K101 ["ErrorText"]
      827 GETTABLEKS                       R24 R0 K107 ["NameChanged"]
      829 SETTABLEKS                       R24 R23 K104 ["OnTextChanged"]
      831 GETTABLEKS                       R25 R0 K85 ["Name"]
      833 ORK                              R24 R25 K108 [""]
      834 SETTABLEKS                       R24 R23 K105 ["Text"]
      836 CALL                             R21 2 1
      837 SETTABLEKS                       R21 R20 K98 ["TextBox"]
      839 CALL                             R17 3 1
      840 SETTABLEKS                       R17 R16 K85 ["Name"]
      842 GETUPVAL                         R17 1
      843 GETTABLEKS                       R17 R17 K3 ["createElement"]
      845 GETUPVAL                         R18 19
      846 DUPTABLE                         R19 K95 [{"LayoutOrder", "Title"}]
      847 GETUPVAL                         R20 20
      848 NAMECALL                         R20 R20 K96 ["getNextOrder"]
      850 CALL                             R20 1 1
      851 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
      853 GETUPVAL                         R20 5
      854 LOADK                            R22 K14 ["General"]
      855 LOADK                            R23 K109 ["TitleDescription"]
      856 NAMECALL                         R20 R20 K16 ["getText"]
      858 CALL                             R20 3 1
      859 SETTABLEKS                       R20 R19 K94 ["Title"]
      861 DUPTABLE                         R20 K99 [{"TextBox"}]
      862 GETUPVAL                         R21 1
      863 GETTABLEKS                       R21 R21 K3 ["createElement"]
      865 GETUPVAL                         R22 21
      866 DUPTABLE                         R23 K115 [{["Disabled"], ["ErrorText"], ["MaxLength"] = 1000, ["MultiLine"] = True, ["OnTextChanged"], ["Height"] = 130, ["Text"]}]
      867 GETTABLEKS                       R25 R0 K86 ["Description"]
      869 JUMPIFEQKNIL                     R25 ; [+2]
      871 LOADB                            R24 0 +1
      872 LOADB                            R24 1
      873 SETTABLEKS                       R24 R23 K100 ["Disabled"]
      875 SETTABLEKS                       R11 R23 K101 ["ErrorText"]
      877 GETTABLEKS                       R24 R0 K116 ["DescriptionChanged"]
      879 SETTABLEKS                       R24 R23 K104 ["OnTextChanged"]
      881 GETTABLEKS                       R25 R0 K86 ["Description"]
      883 ORK                              R24 R25 K108 [""]
      884 SETTABLEKS                       R24 R23 K105 ["Text"]
      886 CALL                             R21 2 1
      887 SETTABLEKS                       R21 R20 K98 ["TextBox"]
      889 CALL                             R17 3 1
      890 SETTABLEKS                       R17 R16 K86 ["Description"]
      892 GETUPVAL                         R17 1
      893 GETTABLEKS                       R17 R17 K3 ["createElement"]
      895 GETUPVAL                         R18 22
      896 DUPTABLE                         R19 K117 [{"LayoutOrder"}]
      897 GETUPVAL                         R20 20
      898 NAMECALL                         R20 R20 K96 ["getNextOrder"]
      900 CALL                             R20 1 1
      901 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
      903 CALL                             R17 2 1
      904 SETTABLEKS                       R17 R16 K87 ["Separator"]
      906 GETUPVAL                         R18 29
      907 JUMPIFNOT                        R18 ; [+21]
      908 GETUPVAL                         R17 1
      909 GETTABLEKS                       R17 R17 K3 ["createElement"]
      911 GETUPVAL                         R18 30
      912 DUPTABLE                         R19 K137 [{"LayoutOrder", "GameGuideline", "GameId"}]
      913 GETUPVAL                         R20 20
      914 NAMECALL                         R20 R20 K96 ["getNextOrder"]
      916 CALL                             R20 1 1
      917 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
      919 GETTABLEKS                       R20 R0 K91 ["Guidelines"]
      921 SETTABLEKS                       R20 R19 K135 ["GameGuideline"]
      923 GETTABLEKS                       R20 R0 K136 ["GameId"]
      925 SETTABLEKS                       R20 R19 K136 ["GameId"]
      927 CALL                             R17 2 1
      928 JUMP                             ; [+1]
      929 LOADNIL                          R17
      930 SETTABLEKS                       R17 R16 K91 ["Guidelines"]
      932 GETUPVAL                         R18 29
      933 JUMPIFNOT                        R18 ; [+13]
      934 GETUPVAL                         R17 1
      935 GETTABLEKS                       R17 R17 K3 ["createElement"]
      937 GETUPVAL                         R18 22
      938 DUPTABLE                         R19 K117 [{"LayoutOrder"}]
      939 GETUPVAL                         R20 20
      940 NAMECALL                         R20 R20 K96 ["getNextOrder"]
      942 CALL                             R20 1 1
      943 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
      945 CALL                             R17 2 1
      946 JUMP                             ; [+1]
      947 LOADNIL                          R17
      948 SETTABLEKS                       R17 R16 K90 ["Separator2"]
      950 GETUPVAL                         R17 1
      951 GETTABLEKS                       R17 R17 K3 ["createElement"]
      953 GETUPVAL                         R18 31
      954 DUPTABLE                         R19 K153 [{["Title"], ["LayoutOrder"], ["Enabled"], ["Icon"], ["TutorialEnabled"] = True, ["AddIcon"], ["ErrorMessage"]}]
      955 GETUPVAL                         R21 9
      956 CALL                             R21 0 1
      957 JUMPIFNOT                        R21 ; [+7]
      958 GETUPVAL                         R20 5
      959 LOADK                            R22 K14 ["General"]
      960 LOADK                            R23 K154 ["TitleExperienceIcon"]
      961 NAMECALL                         R20 R20 K16 ["getText"]
      963 CALL                             R20 3 1
      964 JUMP                             ; [+6]
      965 GETUPVAL                         R20 5
      966 LOADK                            R22 K14 ["General"]
      967 LOADK                            R23 K155 ["TitleGameIcon"]
      968 NAMECALL                         R20 R20 K16 ["getText"]
      970 CALL                             R20 3 1
      971 SETTABLEKS                       R20 R19 K94 ["Title"]
      973 GETUPVAL                         R20 20
      974 NAMECALL                         R20 R20 K96 ["getNextOrder"]
      976 CALL                             R20 1 1
      977 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
      979 GETTABLEKS                       R21 R0 K156 ["GameIcon"]
      981 JUMPIFNOTEQKNIL                  R21 ; [+2]
      983 LOADB                            R20 0 +1
      984 LOADB                            R20 1
      985 SETTABLEKS                       R20 R19 K149 ["Enabled"]
      987 GETTABLEKS                       R20 R0 K156 ["GameIcon"]
      989 SETTABLEKS                       R20 R19 K138 ["Icon"]
      991 GETUPVAL                         R20 0
      992 GETTABLEKS                       R20 R20 K157 ["addIcons"]
      994 SETTABLEKS                       R20 R19 K151 ["AddIcon"]
      996 SETTABLEKS                       R12 R19 K152 ["ErrorMessage"]
      998 CALL                             R17 2 1
      999 SETTABLEKS                       R17 R16 K138 ["Icon"]
     1001 GETUPVAL                         R17 1
     1002 GETTABLEKS                       R17 R17 K3 ["createElement"]
     1004 GETUPVAL                         R18 22
     1005 DUPTABLE                         R19 K117 [{"LayoutOrder"}]
     1006 GETUPVAL                         R20 20
     1007 NAMECALL                         R20 R20 K96 ["getNextOrder"]
     1009 CALL                             R20 1 1
     1010 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
     1012 CALL                             R17 2 1
     1013 SETTABLEKS                       R17 R16 K139 ["Separator3"]
     1015 GETUPVAL                         R17 1
     1016 GETTABLEKS                       R17 R17 K3 ["createElement"]
     1018 GETUPVAL                         R18 32
     1019 DUPTABLE                         R19 K164 [{"LayoutOrder", "Enabled", "Thumbnails", "Order", "Notes", "IsVideoAllowed", "AddThumbnail", "ErrorMessage", "ThumbnailsChanged", "ThumbnailOrderChanged", "AltTextError"}]
     1020 GETUPVAL                         R20 20
     1021 NAMECALL                         R20 R20 K96 ["getNextOrder"]
     1023 CALL                             R20 1 1
     1024 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
     1026 GETTABLEKS                       R21 R0 K140 ["Thumbnails"]
     1028 JUMPIFNOTEQKNIL                  R21 ; [+2]
     1030 LOADB                            R20 0 +1
     1031 LOADB                            R20 1
     1032 SETTABLEKS                       R20 R19 K149 ["Enabled"]
     1034 GETTABLEKS                       R20 R0 K140 ["Thumbnails"]
     1036 SETTABLEKS                       R20 R19 K140 ["Thumbnails"]
     1038 GETTABLEKS                       R20 R0 K165 ["ThumbnailOrder"]
     1040 SETTABLEKS                       R20 R19 K158 ["Order"]
     1042 SETTABLEKS                       R9 R19 K159 ["Notes"]
     1044 SETTABLEKS                       R8 R19 K160 ["IsVideoAllowed"]
     1046 GETUPVAL                         R20 0
     1047 GETTABLEKS                       R20 R20 K166 ["addThumbnails"]
     1049 SETTABLEKS                       R20 R19 K161 ["AddThumbnail"]
     1051 SETTABLEKS                       R13 R19 K152 ["ErrorMessage"]
     1053 GETTABLEKS                       R20 R0 K162 ["ThumbnailsChanged"]
     1055 SETTABLEKS                       R20 R19 K162 ["ThumbnailsChanged"]
     1057 GETTABLEKS                       R20 R0 K163 ["ThumbnailOrderChanged"]
     1059 SETTABLEKS                       R20 R19 K163 ["ThumbnailOrderChanged"]
     1061 DUPTABLE                         R20 K168 [{"ThumbnailId", "ErrorMessage"}]
     1062 GETTABLEKS                       R22 R0 K81 ["AltTextError"]
     1064 JUMPIFNOT                        R22 ; [+5]
     1065 GETTABLEKS                       R21 R0 K81 ["AltTextError"]
     1067 GETTABLEKS                       R21 R21 K167 ["ThumbnailId"]
     1069 JUMP                             ; [+1]
     1070 LOADNIL                          R21
     1071 SETTABLEKS                       R21 R20 K167 ["ThumbnailId"]
     1073 SETTABLEKS                       R14 R20 K152 ["ErrorMessage"]
     1075 SETTABLEKS                       R20 R19 K81 ["AltTextError"]
     1077 CALL                             R17 2 1
     1078 SETTABLEKS                       R17 R16 K140 ["Thumbnails"]
     1080 GETUPVAL                         R17 1
     1081 GETTABLEKS                       R17 R17 K3 ["createElement"]
     1083 GETUPVAL                         R18 22
     1084 DUPTABLE                         R19 K117 [{"LayoutOrder"}]
     1085 GETUPVAL                         R20 20
     1086 NAMECALL                         R20 R20 K96 ["getNextOrder"]
     1088 CALL                             R20 1 1
     1089 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
     1091 CALL                             R17 2 1
     1092 SETTABLEKS                       R17 R16 K141 ["Separator4"]
     1094 GETUPVAL                         R18 6
     1095 JUMPIFNOT                        R18 ; [+183]
     1096 GETUPVAL                         R17 1
     1097 GETTABLEKS                       R17 R17 K3 ["createElement"]
     1099 GETUPVAL                         R18 19
     1100 DUPTABLE                         R19 K95 [{"LayoutOrder", "Title"}]
     1101 GETUPVAL                         R20 20
     1102 NAMECALL                         R20 R20 K96 ["getNextOrder"]
     1104 CALL                             R20 1 1
     1105 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
     1107 GETUPVAL                         R20 5
     1108 LOADK                            R22 K14 ["General"]
     1109 LOADK                            R23 K169 ["TitleGenre"]
     1110 NAMECALL                         R20 R20 K16 ["getText"]
     1112 CALL                             R20 3 1
     1113 SETTABLEKS                       R20 R19 K94 ["Title"]
     1115 DUPTABLE                         R20 K171 [{"ExperienceGenre", "GenreHelperText"}]
     1116 GETUPVAL                         R21 1
     1117 GETTABLEKS                       R21 R21 K3 ["createElement"]
     1119 GETUPVAL                         R22 33
     1120 DUPTABLE                         R23 K177 [{"Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize", "TextXAlignment"}]
     1121 GETUPVAL                         R24 34
     1122 GETTABLEKS                       R24 R24 K178 ["fontStyle"]
     1124 GETTABLEKS                       R24 R24 K179 ["Normal"]
     1126 GETTABLEKS                       R24 R24 K172 ["Font"]
     1128 SETTABLEKS                       R24 R23 K172 ["Font"]
     1130 GETUPVAL                         R24 20
     1131 NAMECALL                         R24 R24 K96 ["getNextOrder"]
     1133 CALL                             R24 1 1
     1134 SETTABLEKS                       R24 R23 K93 ["LayoutOrder"]
     1136 GETIMPORT                        R24 K182 [UDim2.new]
     1138 LOADN                            R25 0
     1139 GETUPVAL                         R26 35
     1140 MOVE                             R27 R7
     1141 GETUPVAL                         R28 34
     1142 GETTABLEKS                       R28 R28 K178 ["fontStyle"]
     1144 GETTABLEKS                       R28 R28 K179 ["Normal"]
     1146 GETTABLEKS                       R28 R28 K175 ["TextSize"]
     1148 GETUPVAL                         R29 34
     1149 GETTABLEKS                       R29 R29 K178 ["fontStyle"]
     1151 GETTABLEKS                       R29 R29 K179 ["Normal"]
     1153 GETTABLEKS                       R29 R29 K172 ["Font"]
     1155 CALL                             R26 3 1
     1156 GETTABLEKS                       R26 R26 K183 ["X"]
     1158 LOADN                            R27 0
     1159 GETUPVAL                         R28 34
     1160 GETTABLEKS                       R28 R28 K178 ["fontStyle"]
     1162 GETTABLEKS                       R28 R28 K179 ["Normal"]
     1164 GETTABLEKS                       R28 R28 K175 ["TextSize"]
     1166 CALL                             R24 4 1
     1167 SETTABLEKS                       R24 R23 K173 ["Size"]
     1169 SETTABLEKS                       R7 R23 K105 ["Text"]
     1171 GETUPVAL                         R24 34
     1172 GETTABLEKS                       R24 R24 K178 ["fontStyle"]
     1174 GETTABLEKS                       R24 R24 K179 ["Normal"]
     1176 GETTABLEKS                       R24 R24 K174 ["TextColor3"]
     1178 SETTABLEKS                       R24 R23 K174 ["TextColor3"]
     1180 GETUPVAL                         R24 34
     1181 GETTABLEKS                       R24 R24 K178 ["fontStyle"]
     1183 GETTABLEKS                       R24 R24 K179 ["Normal"]
     1185 GETTABLEKS                       R24 R24 K175 ["TextSize"]
     1187 SETTABLEKS                       R24 R23 K175 ["TextSize"]
     1189 GETIMPORT                        R24 K185 [Enum.TextXAlignment.Left]
     1191 SETTABLEKS                       R24 R23 K176 ["TextXAlignment"]
     1193 CALL                             R21 2 1
     1194 SETTABLEKS                       R21 R20 K49 ["ExperienceGenre"]
     1196 GETUPVAL                         R21 1
     1197 GETTABLEKS                       R21 R21 K3 ["createElement"]
     1199 GETUPVAL                         R22 36
     1200 DUPTABLE                         R23 K191 [{["OnLinkClicked"], ["LayoutOrder"], ["Text"], ["LinkText"], ["LinkPlaceholder"], ["MaxWidth"], ["TextProps"], ["TextWrapped"] = True, ["HorizontalAlignment"]}]
     1201 NEWCLOSURE                       R24 P3
     1202 CAPTURE                          UPVAL U37
     1203 CAPTURE                          VAL R0
     1204 SETTABLEKS                       R24 R23 K126 ["OnLinkClicked"]
     1206 GETUPVAL                         R24 20
     1207 NAMECALL                         R24 R24 K96 ["getNextOrder"]
     1209 CALL                             R24 1 1
     1210 SETTABLEKS                       R24 R23 K93 ["LayoutOrder"]
     1212 GETUPVAL                         R24 5
     1213 LOADK                            R26 K192 ["GenreSettings"]
     1214 LOADK                            R27 K193 ["GenreManageMessage"]
     1215 DUPTABLE                         R28 K195 [{"link"}]
     1216 GETUPVAL                         R29 5
     1217 LOADK                            R31 K192 ["GenreSettings"]
     1218 LOADK                            R32 K196 ["GenreClickHereLink"]
     1219 NAMECALL                         R29 R29 K16 ["getText"]
     1221 CALL                             R29 3 1
     1222 SETTABLEKS                       R29 R28 K194 ["link"]
     1224 NAMECALL                         R24 R24 K16 ["getText"]
     1226 CALL                             R24 4 1
     1227 SETTABLEKS                       R24 R23 K105 ["Text"]
     1229 GETUPVAL                         R24 5
     1230 LOADK                            R26 K192 ["GenreSettings"]
     1231 LOADK                            R27 K196 ["GenreClickHereLink"]
     1232 NAMECALL                         R24 R24 K16 ["getText"]
     1234 CALL                             R24 3 1
     1235 SETTABLEKS                       R24 R23 K125 ["LinkText"]
     1237 GETUPVAL                         R24 5
     1238 LOADK                            R26 K192 ["GenreSettings"]
     1239 LOADK                            R27 K196 ["GenreClickHereLink"]
     1240 NAMECALL                         R24 R24 K16 ["getText"]
     1242 CALL                             R24 3 1
     1243 SETTABLEKS                       R24 R23 K186 ["LinkPlaceholder"]
     1245 GETUPVAL                         R24 34
     1246 GETTABLEKS                       R24 R24 K197 ["textWithInlineLink"]
     1248 GETTABLEKS                       R24 R24 K198 ["maxWidth"]
     1250 SETTABLEKS                       R24 R23 K187 ["MaxWidth"]
     1252 GETUPVAL                         R24 38
     1253 GETTABLEKS                       R24 R24 K199 ["Dictionary"]
     1255 GETTABLEKS                       R24 R24 K200 ["join"]
     1257 GETUPVAL                         R25 34
     1258 GETTABLEKS                       R25 R25 K178 ["fontStyle"]
     1260 GETTABLEKS                       R25 R25 K201 ["Smaller"]
     1262 DUPTABLE                         R26 K204 [{["BackgroundTransparency"] = 1, ["TextXAlignment"]}]
     1263 GETIMPORT                        R27 K185 [Enum.TextXAlignment.Left]
     1265 SETTABLEKS                       R27 R26 K176 ["TextXAlignment"]
     1267 CALL                             R24 2 1
     1268 SETTABLEKS                       R24 R23 K188 ["TextProps"]
     1270 GETIMPORT                        R24 K205 [Enum.HorizontalAlignment.Left]
     1272 SETTABLEKS                       R24 R23 K190 ["HorizontalAlignment"]
     1274 CALL                             R21 2 1
     1275 SETTABLEKS                       R21 R20 K170 ["GenreHelperText"]
     1277 CALL                             R17 3 1
     1278 JUMP                             ; [+79]
     1279 GETUPVAL                         R17 1
     1280 GETTABLEKS                       R17 R17 K3 ["createElement"]
     1282 GETUPVAL                         R18 19
     1283 DUPTABLE                         R19 K95 [{"LayoutOrder", "Title"}]
     1284 GETUPVAL                         R20 20
     1285 NAMECALL                         R20 R20 K96 ["getNextOrder"]
     1287 CALL                             R20 1 1
     1288 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
     1290 GETUPVAL                         R20 5
     1291 LOADK                            R22 K14 ["General"]
     1292 LOADK                            R23 K169 ["TitleGenre"]
     1293 NAMECALL                         R20 R20 K16 ["getText"]
     1295 CALL                             R20 3 1
     1296 SETTABLEKS                       R20 R19 K94 ["Title"]
     1298 DUPTABLE                         R20 K207 [{"Body"}]
     1299 GETUPVAL                         R21 1
     1300 GETTABLEKS                       R21 R21 K3 ["createElement"]
     1302 GETUPVAL                         R22 36
     1303 DUPTABLE                         R23 K209 [{["OnLinkClicked"], ["Text"], ["LinkText"], ["LinkPlaceholder"] = "[link]", ["MaxWidth"], ["TextProps"], ["TextWrapped"] = True, ["HorizontalAlignment"]}]
     1304 DUPCLOSURE                       R24 K210 [PROTO_60]
     1305 CAPTURE                          UPVAL U24
     1306 CAPTURE                          UPVAL U39
     1307 SETTABLEKS                       R24 R23 K126 ["OnLinkClicked"]
     1309 GETUPVAL                         R24 5
     1310 LOADK                            R26 K14 ["General"]
     1311 LOADK                            R27 K211 ["GenreReplacementMessage"]
     1312 NAMECALL                         R24 R24 K16 ["getText"]
     1314 CALL                             R24 3 1
     1315 SETTABLEKS                       R24 R23 K105 ["Text"]
     1317 GETUPVAL                         R24 5
     1318 LOADK                            R26 K14 ["General"]
     1319 LOADK                            R27 K212 ["GenreOverhaulMessageLink"]
     1320 NAMECALL                         R24 R24 K16 ["getText"]
     1322 CALL                             R24 3 1
     1323 SETTABLEKS                       R24 R23 K125 ["LinkText"]
     1325 GETUPVAL                         R24 34
     1326 GETTABLEKS                       R24 R24 K197 ["textWithInlineLink"]
     1328 GETTABLEKS                       R24 R24 K198 ["maxWidth"]
     1330 SETTABLEKS                       R24 R23 K187 ["MaxWidth"]
     1332 GETUPVAL                         R24 38
     1333 GETTABLEKS                       R24 R24 K199 ["Dictionary"]
     1335 GETTABLEKS                       R24 R24 K200 ["join"]
     1337 GETUPVAL                         R25 34
     1338 GETTABLEKS                       R25 R25 K178 ["fontStyle"]
     1340 GETTABLEKS                       R25 R25 K201 ["Smaller"]
     1342 DUPTABLE                         R26 K204 [{["BackgroundTransparency"] = 1, ["TextXAlignment"]}]
     1343 GETIMPORT                        R27 K185 [Enum.TextXAlignment.Left]
     1345 SETTABLEKS                       R27 R26 K176 ["TextXAlignment"]
     1347 CALL                             R24 2 1
     1348 SETTABLEKS                       R24 R23 K188 ["TextProps"]
     1350 GETIMPORT                        R24 K205 [Enum.HorizontalAlignment.Left]
     1352 SETTABLEKS                       R24 R23 K190 ["HorizontalAlignment"]
     1354 CALL                             R21 2 1
     1355 SETTABLEKS                       R21 R20 K206 ["Body"]
     1357 CALL                             R17 3 1
     1358 SETTABLEKS                       R17 R16 K142 ["Genre"]
     1360 GETUPVAL                         R17 1
     1361 GETTABLEKS                       R17 R17 K3 ["createElement"]
     1363 GETUPVAL                         R18 22
     1364 DUPTABLE                         R19 K117 [{"LayoutOrder"}]
     1365 GETUPVAL                         R20 20
     1366 NAMECALL                         R20 R20 K96 ["getNextOrder"]
     1368 CALL                             R20 1 1
     1369 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
     1371 CALL                             R17 2 1
     1372 SETTABLEKS                       R17 R16 K143 ["Separator5"]
     1374 GETUPVAL                         R17 1
     1375 GETTABLEKS                       R17 R17 K3 ["createElement"]
     1377 GETUPVAL                         R18 19
     1378 DUPTABLE                         R19 K95 [{"LayoutOrder", "Title"}]
     1379 GETUPVAL                         R20 20
     1380 NAMECALL                         R20 R20 K96 ["getNextOrder"]
     1382 CALL                             R20 1 1
     1383 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
     1385 GETUPVAL                         R20 5
     1386 LOADK                            R22 K14 ["General"]
     1387 LOADK                            R23 K213 ["TitleCreatorRestriction"]
     1388 NAMECALL                         R20 R20 K16 ["getText"]
     1390 CALL                             R20 3 1
     1391 SETTABLEKS                       R20 R19 K94 ["Title"]
     1393 DUPTABLE                         R20 K215 [{"Padding", "LinkText"}]
     1394 GETUPVAL                         R21 1
     1395 GETTABLEKS                       R21 R21 K3 ["createElement"]
     1397 LOADK                            R22 K216 ["UIPadding"]
     1398 DUPTABLE                         R23 K218 [{"PaddingTop"}]
     1399 GETIMPORT                        R24 K220 [UDim.new]
     1401 LOADN                            R25 0
     1402 LOADN                            R26 4
     1403 CALL                             R24 2 1
     1404 SETTABLEKS                       R24 R23 K217 ["PaddingTop"]
     1406 CALL                             R21 2 1
     1407 SETTABLEKS                       R21 R20 K214 ["Padding"]
     1409 GETUPVAL                         R21 1
     1410 GETTABLEKS                       R21 R21 K3 ["createElement"]
     1412 GETUPVAL                         R22 40
     1413 DUPTABLE                         R23 K222 [{"OnClick", "Text", "TextXAlignment", "TextYAlignment"}]
     1414 GETUPVAL                         R24 41
     1415 GETTABLEKS                       R25 R0 K136 ["GameId"]
     1417 CALL                             R24 1 1
     1418 SETTABLEKS                       R24 R23 K120 ["OnClick"]
     1420 GETUPVAL                         R24 5
     1421 LOADK                            R26 K14 ["General"]
     1422 LOADK                            R27 K223 ["CreatorRestrictionDeepLink"]
     1423 NAMECALL                         R24 R24 K16 ["getText"]
     1425 CALL                             R24 3 1
     1426 SETTABLEKS                       R24 R23 K105 ["Text"]
     1428 GETIMPORT                        R24 K185 [Enum.TextXAlignment.Left]
     1430 SETTABLEKS                       R24 R23 K176 ["TextXAlignment"]
     1432 GETIMPORT                        R24 K225 [Enum.TextYAlignment.Top]
     1434 SETTABLEKS                       R24 R23 K221 ["TextYAlignment"]
     1436 CALL                             R21 2 1
     1437 SETTABLEKS                       R21 R20 K125 ["LinkText"]
     1439 CALL                             R17 3 1
     1440 SETTABLEKS                       R17 R16 K144 ["CreatorRestriction"]
     1442 GETUPVAL                         R17 1
     1443 GETTABLEKS                       R17 R17 K3 ["createElement"]
     1445 GETUPVAL                         R18 22
     1446 DUPTABLE                         R19 K117 [{"LayoutOrder"}]
     1447 GETUPVAL                         R20 20
     1448 NAMECALL                         R20 R20 K96 ["getNextOrder"]
     1450 CALL                             R20 1 1
     1451 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
     1453 CALL                             R17 2 1
     1454 SETTABLEKS                       R17 R16 K145 ["Separator6"]
     1456 GETUPVAL                         R17 1
     1457 GETTABLEKS                       R17 R17 K3 ["createElement"]
     1459 GETUPVAL                         R18 42
     1460 DUPTABLE                         R19 K228 [{"Title", "LayoutOrder", "Boxes", "Enabled", "ErrorMessage", "EntryClicked"}]
     1461 GETUPVAL                         R20 5
     1462 LOADK                            R22 K14 ["General"]
     1463 LOADK                            R23 K229 ["TitleDevices"]
     1464 NAMECALL                         R20 R20 K16 ["getText"]
     1466 CALL                             R20 3 1
     1467 SETTABLEKS                       R20 R19 K94 ["Title"]
     1469 GETUPVAL                         R20 20
     1470 NAMECALL                         R20 R20 K96 ["getNextOrder"]
     1472 CALL                             R20 1 1
     1473 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
     1475 NEWTABLE                         R20 0 5
     1477 DUPTABLE                         R21 K231 [{["Id"] = "Computer", ["Title"], ["Selected"]}]
     1478 GETUPVAL                         R22 5
     1479 LOADK                            R24 K14 ["General"]
     1480 LOADK                            R25 K232 ["DeviceComputer"]
     1481 NAMECALL                         R22 R22 K16 ["getText"]
     1483 CALL                             R22 3 1
     1484 SETTABLEKS                       R22 R21 K94 ["Title"]
     1486 JUMPIFNOT                        R1 ; [+3]
     1487 GETTABLEKS                       R22 R1 K230 ["Computer"]
     1489 JUMP                             ; [+1]
     1490 LOADB                            R22 0
     1491 SETTABLEKS                       R22 R21 K118 ["Selected"]
     1493 DUPTABLE                         R22 K234 [{["Id"] = "Phone", ["Title"], ["Selected"]}]
     1494 GETUPVAL                         R23 5
     1495 LOADK                            R25 K14 ["General"]
     1496 LOADK                            R26 K235 ["DevicePhone"]
     1497 NAMECALL                         R23 R23 K16 ["getText"]
     1499 CALL                             R23 3 1
     1500 SETTABLEKS                       R23 R22 K94 ["Title"]
     1502 JUMPIFNOT                        R1 ; [+3]
     1503 GETTABLEKS                       R23 R1 K233 ["Phone"]
     1505 JUMP                             ; [+1]
     1506 LOADB                            R23 0
     1507 SETTABLEKS                       R23 R22 K118 ["Selected"]
     1509 DUPTABLE                         R23 K237 [{["Id"] = "Tablet", ["Title"], ["Selected"]}]
     1510 GETUPVAL                         R24 5
     1511 LOADK                            R26 K14 ["General"]
     1512 LOADK                            R27 K238 ["DeviceTablet"]
     1513 NAMECALL                         R24 R24 K16 ["getText"]
     1515 CALL                             R24 3 1
     1516 SETTABLEKS                       R24 R23 K94 ["Title"]
     1518 JUMPIFNOT                        R1 ; [+3]
     1519 GETTABLEKS                       R24 R1 K236 ["Tablet"]
     1521 JUMP                             ; [+1]
     1522 LOADB                            R24 0
     1523 SETTABLEKS                       R24 R23 K118 ["Selected"]
     1525 DUPTABLE                         R24 K240 [{["Id"] = "Console", ["Title"], ["Selected"]}]
     1526 GETUPVAL                         R25 5
     1527 LOADK                            R27 K14 ["General"]
     1528 LOADK                            R28 K241 ["DeviceConsole"]
     1529 NAMECALL                         R25 R25 K16 ["getText"]
     1531 CALL                             R25 3 1
     1532 SETTABLEKS                       R25 R24 K94 ["Title"]
     1534 JUMPIFNOT                        R1 ; [+3]
     1535 GETTABLEKS                       R25 R1 K239 ["Console"]
     1537 JUMP                             ; [+1]
     1538 LOADB                            R25 0
     1539 SETTABLEKS                       R25 R24 K118 ["Selected"]
     1541 DUPTABLE                         R25 K243 [{["Id"] = "VR", ["Title"], ["Selected"]}]
     1542 GETUPVAL                         R26 5
     1543 LOADK                            R28 K14 ["General"]
     1544 LOADK                            R29 K244 ["DeviceVR"]
     1545 NAMECALL                         R26 R26 K16 ["getText"]
     1547 CALL                             R26 3 1
     1548 SETTABLEKS                       R26 R25 K94 ["Title"]
     1550 JUMPIFNOT                        R1 ; [+3]
     1551 GETTABLEKS                       R26 R1 K242 ["VR"]
     1553 JUMP                             ; [+1]
     1554 LOADB                            R26 0
     1555 SETTABLEKS                       R26 R25 K118 ["Selected"]
     1557 SETLIST                          R20 R21 5 [1]
     1559 SETTABLEKS                       R20 R19 K226 ["Boxes"]
     1561 JUMPIFNOTEQKNIL                  R1 ; [+2]
     1563 LOADB                            R20 0 +1
     1564 LOADB                            R20 1
     1565 SETTABLEKS                       R20 R19 K149 ["Enabled"]
     1567 GETUPVAL                         R21 15
     1568 CALL                             R21 0 1
     1569 JUMPIFNOT                        R21 ; [+2]
     1570 MOVE                             R20 R15
     1571 JUMP                             ; [+1]
     1572 LOADNIL                          R20
     1573 SETTABLEKS                       R20 R19 K152 ["ErrorMessage"]
     1575 NEWCLOSURE                       R20 P5
     1576 CAPTURE                          UPVAL U38
     1577 CAPTURE                          VAL R1
     1578 CAPTURE                          VAL R0
     1579 SETTABLEKS                       R20 R19 K227 ["EntryClicked"]
     1581 CALL                             R17 2 1
     1582 SETTABLEKS                       R17 R16 K5 ["Devices"]
     1584 GETUPVAL                         R18 3
     1585 CALL                             R18 0 1
     1586 JUMPIFNOT                        R18 ; [+13]
     1587 GETUPVAL                         R17 1
     1588 GETTABLEKS                       R17 R17 K3 ["createElement"]
     1590 GETUPVAL                         R18 22
     1591 DUPTABLE                         R19 K117 [{"LayoutOrder"}]
     1592 GETUPVAL                         R20 20
     1593 NAMECALL                         R20 R20 K96 ["getNextOrder"]
     1595 CALL                             R20 1 1
     1596 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
     1598 CALL                             R17 2 1
     1599 JUMPIF                           R17 ; [+1]
     1600 LOADNIL                          R17
     1601 SETTABLEKS                       R17 R16 K146 ["Separator7"]
     1603 GETUPVAL                         R18 3
     1604 CALL                             R18 0 1
     1605 JUMPIFNOT                        R18 ; [+143]
     1606 GETUPVAL                         R17 1
     1607 GETTABLEKS                       R17 R17 K3 ["createElement"]
     1609 GETUPVAL                         R18 42
     1610 DUPTABLE                         R19 K246 [{"Title", "LayoutOrder", "Boxes", "ShowWarning", "Enabled", "EntryClicked", "Tooltip"}]
     1611 GETUPVAL                         R20 5
     1612 LOADK                            R22 K14 ["General"]
     1613 LOADK                            R23 K247 ["TitleOptInLocations"]
     1614 NAMECALL                         R20 R20 K16 ["getText"]
     1616 CALL                             R20 3 1
     1617 SETTABLEKS                       R20 R19 K94 ["Title"]
     1619 GETUPVAL                         R20 20
     1620 NAMECALL                         R20 R20 K96 ["getNextOrder"]
     1622 CALL                             R20 1 1
     1623 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
     1625 GETUPVAL                         R20 0
     1626 GETUPVAL                         R22 20
     1627 NAMECALL                         R20 R20 K248 ["createOptInLocationBoxes"]
     1629 CALL                             R20 2 1
     1630 SETTABLEKS                       R20 R19 K226 ["Boxes"]
     1632 NOT                              R20 R5
     1633 SETTABLEKS                       R20 R19 K131 ["ShowWarning"]
     1635 LOADB                            R20 0
     1636 JUMPIFEQKNIL                     R3 ; [+2]
     1638 MOVE                             R20 R5
     1639 SETTABLEKS                       R20 R19 K149 ["Enabled"]
     1641 NEWCLOSURE                       R20 P6
     1642 CAPTURE                          UPVAL U34
     1643 CAPTURE                          UPVAL U5
     1644 CAPTURE                          UPVAL U1
     1645 CAPTURE                          UPVAL U36
     1646 CAPTURE                          UPVAL U43
     1647 CAPTURE                          UPVAL U44
     1648 CAPTURE                          UPVAL U24
     1649 CAPTURE                          UPVAL U38
     1650 CAPTURE                          REF R4
     1651 CAPTURE                          VAL R2
     1652 CAPTURE                          UPVAL U45
     1653 CAPTURE                          UPVAL U46
     1654 CAPTURE                          UPVAL U47
     1655 CAPTURE                          UPVAL U48
     1656 CAPTURE                          UPVAL U49
     1657 CAPTURE                          UPVAL U50
     1658 CAPTURE                          UPVAL U51
     1659 CAPTURE                          REF R3
     1660 CAPTURE                          UPVAL U4
     1661 CAPTURE                          UPVAL U52
     1662 CAPTURE                          UPVAL U53
     1663 CAPTURE                          VAL R0
     1664 SETTABLEKS                       R20 R19 K227 ["EntryClicked"]
     1666 GETUPVAL                         R20 1
     1667 GETTABLEKS                       R20 R20 K3 ["createElement"]
     1669 GETUPVAL                         R21 54
     1670 DUPTABLE                         R22 K253 [{["Size"], ["Position"], ["Style"] = "TooltipStyle", ["StyleModifier"]}]
     1671 GETIMPORT                        R23 K255 [UDim2.fromOffset]
     1673 GETUPVAL                         R24 34
     1674 GETTABLEKS                       R24 R24 K256 ["tooltipIcon"]
     1676 GETTABLEKS                       R24 R24 K257 ["size"]
     1678 GETUPVAL                         R25 34
     1679 GETTABLEKS                       R25 R25 K256 ["tooltipIcon"]
     1681 GETTABLEKS                       R25 R25 K257 ["size"]
     1683 CALL                             R23 2 1
     1684 SETTABLEKS                       R23 R22 K173 ["Size"]
     1686 GETIMPORT                        R23 K182 [UDim2.new]
     1688 LOADN                            R24 0
     1689 GETUPVAL                         R25 34
     1690 GETTABLEKS                       R25 R25 K256 ["tooltipIcon"]
     1692 GETTABLEKS                       R25 R25 K258 ["paddingX"]
     1694 LOADN                            R26 0
     1695 GETUPVAL                         R27 34
     1696 GETTABLEKS                       R27 R27 K256 ["tooltipIcon"]
     1698 GETTABLEKS                       R27 R27 K259 ["paddingY"]
     1700 CALL                             R23 4 1
     1701 SETTABLEKS                       R23 R22 K249 ["Position"]
     1703 GETUPVAL                         R23 0
     1704 GETTABLEKS                       R23 R23 K260 ["state"]
     1706 GETTABLEKS                       R23 R23 K252 ["StyleModifier"]
     1708 SETTABLEKS                       R23 R22 K252 ["StyleModifier"]
     1710 NEWTABLE                         R23 0 2
     1712 GETUPVAL                         R24 1
     1713 GETTABLEKS                       R24 R24 K3 ["createElement"]
     1715 GETUPVAL                         R25 55
     1716 DUPTABLE                         R26 K261 [{"Text"}]
     1717 GETUPVAL                         R27 5
     1718 GETUPVAL                         R29 4
     1719 LOADK                            R30 K245 ["Tooltip"]
     1720 NAMECALL                         R27 R27 K16 ["getText"]
     1722 CALL                             R27 3 1
     1723 SETTABLEKS                       R27 R26 K105 ["Text"]
     1725 CALL                             R24 2 1
     1726 GETUPVAL                         R25 1
     1727 GETTABLEKS                       R25 R25 K3 ["createElement"]
     1729 GETUPVAL                         R26 56
     1730 DUPTABLE                         R27 K266 [{["Cursor"] = "PointingHand", ["MouseEnter"], ["MouseLeave"]}]
     1731 GETUPVAL                         R28 0
     1732 GETTABLEKS                       R28 R28 K267 ["onMouseEnter"]
     1734 SETTABLEKS                       R28 R27 K264 ["MouseEnter"]
     1736 GETUPVAL                         R28 0
     1737 GETTABLEKS                       R28 R28 K268 ["onMouseLeave"]
     1739 SETTABLEKS                       R28 R27 K265 ["MouseLeave"]
     1741 CALL                             R25 2 -1
     1742 SETLIST                          R23 R24 -1 [1]
     1744 CALL                             R20 3 1
     1745 SETTABLEKS                       R20 R19 K245 ["Tooltip"]
     1747 CALL                             R17 2 1
     1748 JUMPIF                           R17 ; [+1]
     1749 LOADNIL                          R17
     1750 SETTABLEKS                       R17 R16 K147 ["OptInLocations"]
     1752 CLOSEUPVALS                      R3
     1753 RETURN                           R16 1

PROTO_65:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Localization"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Stylizer"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["new"]
       11 CALL                             R3 0 1
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 GETUPVAL                         R7 1
       16 JUMPIFNOT                        R7 ; [+42]
       17 GETTABLEKS                       R7 R0 K0 ["props"]
       19 GETTABLEKS                       R7 R7 K5 ["TeamCreateEnabled"]
       21 ORK                              R4 R7 K4 [False]
       22 MOVE                             R7 R4
       23 JUMPIFNOT                        R7 ; [+12]
       24 GETTABLEKS                       R8 R0 K0 ["props"]
       26 GETTABLEKS                       R8 R8 K6 ["ScriptCollabEnabledOnServer"]
       28 GETTABLEKS                       R9 R0 K0 ["props"]
       30 GETTABLEKS                       R9 R9 K7 ["ScriptCollabEnabled"]
       32 JUMPIFNOTEQ                      R8 R9 ; [+2]
       34 LOADB                            R7 0 +1
       35 LOADB                            R7 1
       36 MOVE                             R5 R7
       37 JUMPIF                           R4 ; [+7]
       38 LOADK                            R9 K8 ["General"]
       39 LOADK                            R10 K9 ["EnableTeamCreateForDraftsMode"]
       40 NAMECALL                         R7 R1 K10 ["getText"]
       42 CALL                             R7 3 1
       43 MOVE                             R6 R7
       44 JUMP                             ; [+14]
       45 JUMPIFNOT                        R5 ; [+7]
       46 LOADK                            R9 K8 ["General"]
       47 LOADK                            R10 K11 ["ServerRestartWarning"]
       48 NAMECALL                         R7 R1 K10 ["getText"]
       50 CALL                             R7 3 1
       51 MOVE                             R6 R7
       52 JUMP                             ; [+6]
       53 LOADK                            R9 K8 ["General"]
       54 LOADK                            R10 K12 ["ScriptDraftsMode"]
       55 NAMECALL                         R7 R1 K10 ["getText"]
       57 CALL                             R7 3 1
       58 MOVE                             R6 R7
       59 NEWCLOSURE                       R7 P0
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U2
       62 CAPTURE                          UPVAL U3
       63 CAPTURE                          UPVAL U4
       64 CAPTURE                          UPVAL U5
       65 CAPTURE                          VAL R1
       66 CAPTURE                          UPVAL U6
       67 CAPTURE                          UPVAL U7
       68 CAPTURE                          UPVAL U8
       69 CAPTURE                          UPVAL U9
       70 CAPTURE                          UPVAL U10
       71 CAPTURE                          UPVAL U11
       72 CAPTURE                          UPVAL U12
       73 CAPTURE                          UPVAL U13
       74 CAPTURE                          UPVAL U14
       75 CAPTURE                          UPVAL U15
       76 CAPTURE                          UPVAL U16
       77 CAPTURE                          UPVAL U1
       78 CAPTURE                          REF R4
       79 CAPTURE                          UPVAL U17
       80 CAPTURE                          VAL R3
       81 CAPTURE                          UPVAL U18
       82 CAPTURE                          UPVAL U19
       83 CAPTURE                          UPVAL U20
       84 CAPTURE                          UPVAL U21
       85 CAPTURE                          UPVAL U22
       86 CAPTURE                          REF R6
       87 CAPTURE                          REF R5
       88 CAPTURE                          UPVAL U23
       89 CAPTURE                          UPVAL U24
       90 CAPTURE                          UPVAL U25
       91 CAPTURE                          UPVAL U26
       92 CAPTURE                          UPVAL U27
       93 CAPTURE                          UPVAL U28
       94 CAPTURE                          VAL R2
       95 CAPTURE                          UPVAL U29
       96 CAPTURE                          UPVAL U30
       97 CAPTURE                          UPVAL U31
       98 CAPTURE                          UPVAL U32
       99 CAPTURE                          UPVAL U33
      100 CAPTURE                          UPVAL U34
      101 CAPTURE                          UPVAL U35
      102 CAPTURE                          UPVAL U36
      103 CAPTURE                          UPVAL U37
      104 CAPTURE                          UPVAL U38
      105 CAPTURE                          UPVAL U39
      106 CAPTURE                          UPVAL U40
      107 CAPTURE                          UPVAL U41
      108 CAPTURE                          UPVAL U42
      109 CAPTURE                          UPVAL U43
      110 CAPTURE                          UPVAL U44
      111 CAPTURE                          UPVAL U45
      112 CAPTURE                          UPVAL U46
      113 CAPTURE                          UPVAL U47
      114 CAPTURE                          UPVAL U48
      115 CAPTURE                          UPVAL U49
      116 CAPTURE                          UPVAL U50
      117 GETUPVAL                         R8 2
      118 GETTABLEKS                       R8 R8 K13 ["createElement"]
      120 GETUPVAL                         R9 51
      121 DUPTABLE                         R10 K19 [{"SettingsLoadJobs", "SettingsSaveJobs", "Title", "PageId", "CreateChildren"}]
      122 GETUPVAL                         R11 52
      123 SETTABLEKS                       R11 R10 K14 ["SettingsLoadJobs"]
      125 GETUPVAL                         R11 53
      126 SETTABLEKS                       R11 R10 K15 ["SettingsSaveJobs"]
      128 LOADK                            R13 K8 ["General"]
      129 LOADK                            R15 K20 ["Category"]
      130 GETUPVAL                         R16 54
      131 CONCAT                           R14 R15 R16
      132 NAMECALL                         R11 R1 K10 ["getText"]
      134 CALL                             R11 3 1
      135 SETTABLEKS                       R11 R10 K16 ["Title"]
      137 GETUPVAL                         R11 54
      138 SETTABLEKS                       R11 R10 K17 ["PageId"]
      140 SETTABLEKS                       R7 R10 K18 ["CreateChildren"]
      142 CALL                             R8 2 -1
      143 CLOSEUPVALS                      R4
      144 RETURN                           R8 -1

PROTO_66:
        0 NEWTABLE                         R2 128 0
        2 DUPTABLE                         R3 K4 [{[1] = "na", ["subGenre"] = }]
        3 SETTABLEKS                       R3 R2 K1 ["na"]
        5 DUPTABLE                         R3 K6 [{[1] = "education", ["subGenre"] = }]
        6 SETTABLEKS                       R3 R2 K5 ["education"]
        8 DUPTABLE                         R3 K8 [{[1] = "entertainment", ["subGenre"] = }]
        9 SETTABLEKS                       R3 R2 K7 ["entertainment"]
       11 DUPTABLE                         R3 K10 [{[1] = "entertainment", ["subGenre"] = "music_and_audio"}]
       12 SETTABLEKS                       R3 R2 K9 ["music_and_audio"]
       14 DUPTABLE                         R3 K12 [{[1] = "entertainment", ["subGenre"] = "showcase_and_hub"}]
       15 SETTABLEKS                       R3 R2 K11 ["showcase_and_hub"]
       17 DUPTABLE                         R3 K14 [{[1] = "entertainment", ["subGenre"] = "video"}]
       18 SETTABLEKS                       R3 R2 K13 ["video"]
       20 DUPTABLE                         R3 K16 [{[1] = "entertainment", ["subGenre"] = "other_entertainment"}]
       21 SETTABLEKS                       R3 R2 K15 ["other_entertainment"]
       23 DUPTABLE                         R3 K18 [{[1] = "game", ["subGenre"] = }]
       24 SETTABLEKS                       R3 R2 K17 ["game"]
       26 DUPTABLE                         R3 K20 [{[1] = "action", ["subGenre"] = }]
       27 SETTABLEKS                       R3 R2 K19 ["action"]
       29 DUPTABLE                         R3 K22 [{[1] = "action", ["subGenre"] = "battlegrounds_and_fighting"}]
       30 SETTABLEKS                       R3 R2 K21 ["battlegrounds_and_fighting"]
       32 DUPTABLE                         R3 K24 [{[1] = "action", ["subGenre"] = "open_world_action"}]
       33 SETTABLEKS                       R3 R2 K23 ["open_world_action"]
       35 DUPTABLE                         R3 K26 [{[1] = "action", ["subGenre"] = "other_action"}]
       36 SETTABLEKS                       R3 R2 K25 ["other_action"]
       38 DUPTABLE                         R3 K28 [{[1] = "action", ["subGenre"] = "music_and_rhythm"}]
       39 SETTABLEKS                       R3 R2 K27 ["music_and_rhythm"]
       41 DUPTABLE                         R3 K30 [{[1] = "adventure", ["subGenre"] = }]
       42 SETTABLEKS                       R3 R2 K29 ["adventure"]
       44 DUPTABLE                         R3 K32 [{[1] = "adventure", ["subGenre"] = "exploration"}]
       45 SETTABLEKS                       R3 R2 K31 ["exploration"]
       47 DUPTABLE                         R3 K34 [{[1] = "adventure", ["subGenre"] = "scavenger_hunt"}]
       48 SETTABLEKS                       R3 R2 K33 ["scavenger_hunt"]
       50 DUPTABLE                         R3 K36 [{[1] = "adventure", ["subGenre"] = "story"}]
       51 SETTABLEKS                       R3 R2 K35 ["story"]
       53 DUPTABLE                         R3 K38 [{[1] = "adventure", ["subGenre"] = "other_adventure"}]
       54 SETTABLEKS                       R3 R2 K37 ["other_adventure"]
       56 DUPTABLE                         R3 K40 [{[1] = "roleplay_and_avatar_sim", ["subGenre"] = }]
       57 SETTABLEKS                       R3 R2 K39 ["roleplay_and_avatar_sim"]
       59 DUPTABLE                         R3 K42 [{[1] = "roleplay_and_avatar_sim", ["subGenre"] = "animal_sim"}]
       60 SETTABLEKS                       R3 R2 K41 ["animal_sim"]
       62 DUPTABLE                         R3 K44 [{[1] = "roleplay_and_avatar_sim", ["subGenre"] = "dress_up"}]
       63 SETTABLEKS                       R3 R2 K43 ["dress_up"]
       65 DUPTABLE                         R3 K46 [{[1] = "roleplay_and_avatar_sim", ["subGenre"] = "pet_care"}]
       66 SETTABLEKS                       R3 R2 K45 ["pet_care"]
       68 DUPTABLE                         R3 K48 [{[1] = "roleplay_and_avatar_sim", ["subGenre"] = "life"}]
       69 SETTABLEKS                       R3 R2 K47 ["life"]
       71 DUPTABLE                         R3 K50 [{[1] = "roleplay_and_avatar_sim", ["subGenre"] = "morph_roleplay"}]
       72 SETTABLEKS                       R3 R2 K49 ["morph_roleplay"]
       74 DUPTABLE                         R3 K52 [{[1] = "roleplay_and_avatar_sim", ["subGenre"] = "other_roleplay_and_avatar_sim"}]
       75 SETTABLEKS                       R3 R2 K51 ["other_roleplay_and_avatar_sim"]
       77 DUPTABLE                         R3 K54 [{[1] = "obby_and_platformer", ["subGenre"] = }]
       78 SETTABLEKS                       R3 R2 K53 ["obby_and_platformer"]
       80 DUPTABLE                         R3 K56 [{[1] = "obby_and_platformer", ["subGenre"] = "classic_obby"}]
       81 SETTABLEKS                       R3 R2 K55 ["classic_obby"]
       83 DUPTABLE                         R3 K58 [{[1] = "obby_and_platformer", ["subGenre"] = "runner"}]
       84 SETTABLEKS                       R3 R2 K57 ["runner"]
       86 DUPTABLE                         R3 K60 [{[1] = "obby_and_platformer", ["subGenre"] = "tower_obby"}]
       87 SETTABLEKS                       R3 R2 K59 ["tower_obby"]
       89 DUPTABLE                         R3 K62 [{[1] = "obby_and_platformer", ["subGenre"] = "other_obby_and_platformer"}]
       90 SETTABLEKS                       R3 R2 K61 ["other_obby_and_platformer"]
       92 DUPTABLE                         R3 K64 [{[1] = "party_and_casual", ["subGenre"] = }]
       93 SETTABLEKS                       R3 R2 K63 ["party_and_casual"]
       95 DUPTABLE                         R3 K66 [{[1] = "party_and_casual", ["subGenre"] = "childhood_game"}]
       96 SETTABLEKS                       R3 R2 K65 ["childhood_game"]
       98 DUPTABLE                         R3 K68 [{[1] = "party_and_casual", ["subGenre"] = "minigame"}]
       99 SETTABLEKS                       R3 R2 K67 ["minigame"]
      101 DUPTABLE                         R3 K70 [{[1] = "party_and_casual", ["subGenre"] = "quiz"}]
      102 SETTABLEKS                       R3 R2 K69 ["quiz"]
      104 DUPTABLE                         R3 K72 [{[1] = "party_and_casual", ["subGenre"] = "coloring_and_drawing"}]
      105 SETTABLEKS                       R3 R2 K71 ["coloring_and_drawing"]
      107 DUPTABLE                         R3 K74 [{[1] = "party_and_casual", ["subGenre"] = "other_party_and_casual"}]
      108 SETTABLEKS                       R3 R2 K73 ["other_party_and_casual"]
      110 DUPTABLE                         R3 K76 [{[1] = "puzzle", ["subGenre"] = }]
      111 SETTABLEKS                       R3 R2 K75 ["puzzle"]
      113 DUPTABLE                         R3 K78 [{[1] = "puzzle", ["subGenre"] = "escape_room"}]
      114 SETTABLEKS                       R3 R2 K77 ["escape_room"]
      116 DUPTABLE                         R3 K80 [{[1] = "puzzle", ["subGenre"] = "match_and_merge"}]
      117 SETTABLEKS                       R3 R2 K79 ["match_and_merge"]
      119 DUPTABLE                         R3 K82 [{[1] = "puzzle", ["subGenre"] = "word"}]
      120 SETTABLEKS                       R3 R2 K81 ["word"]
      122 DUPTABLE                         R3 K84 [{[1] = "puzzle", ["subGenre"] = "other_puzzle"}]
      123 SETTABLEKS                       R3 R2 K83 ["other_puzzle"]
      125 DUPTABLE                         R3 K86 [{[1] = "rpg", ["subGenre"] = }]
      126 SETTABLEKS                       R3 R2 K85 ["rpg"]
      128 DUPTABLE                         R3 K88 [{[1] = "rpg", ["subGenre"] = "action_rpg"}]
      129 SETTABLEKS                       R3 R2 K87 ["action_rpg"]
      131 DUPTABLE                         R3 K90 [{[1] = "rpg", ["subGenre"] = "turn_based_rpg"}]
      132 SETTABLEKS                       R3 R2 K89 ["turn_based_rpg"]
      134 DUPTABLE                         R3 K92 [{[1] = "rpg", ["subGenre"] = "open_world_and_survival_rpg"}]
      135 SETTABLEKS                       R3 R2 K91 ["open_world_and_survival_rpg"]
      137 DUPTABLE                         R3 K94 [{[1] = "rpg", ["subGenre"] = "other_rpg"}]
      138 SETTABLEKS                       R3 R2 K93 ["other_rpg"]
      140 DUPTABLE                         R3 K96 [{[1] = "shooter", ["subGenre"] = }]
      141 SETTABLEKS                       R3 R2 K95 ["shooter"]
      143 DUPTABLE                         R3 K98 [{[1] = "shooter", ["subGenre"] = "battle_royale_shooter"}]
      144 SETTABLEKS                       R3 R2 K97 ["battle_royale_shooter"]
      146 DUPTABLE                         R3 K100 [{[1] = "shooter", ["subGenre"] = "pve_shooter"}]
      147 SETTABLEKS                       R3 R2 K99 ["pve_shooter"]
      149 DUPTABLE                         R3 K102 [{[1] = "shooter", ["subGenre"] = "deathmatch_shooter"}]
      150 SETTABLEKS                       R3 R2 K101 ["deathmatch_shooter"]
      152 DUPTABLE                         R3 K104 [{[1] = "shooter", ["subGenre"] = "other_shooter"}]
      153 SETTABLEKS                       R3 R2 K103 ["other_shooter"]
      155 DUPTABLE                         R3 K106 [{[1] = "simulation", ["subGenre"] = }]
      156 SETTABLEKS                       R3 R2 K105 ["simulation"]
      158 DUPTABLE                         R3 K108 [{[1] = "simulation", ["subGenre"] = "vehicle_sim"}]
      159 SETTABLEKS                       R3 R2 K107 ["vehicle_sim"]
      161 DUPTABLE                         R3 K110 [{[1] = "simulation", ["subGenre"] = "physics_sim"}]
      162 SETTABLEKS                       R3 R2 K109 ["physics_sim"]
      164 DUPTABLE                         R3 K112 [{[1] = "simulation", ["subGenre"] = "incremental_simulator"}]
      165 SETTABLEKS                       R3 R2 K111 ["incremental_simulator"]
      167 DUPTABLE                         R3 K114 [{[1] = "simulation", ["subGenre"] = "idle"}]
      168 SETTABLEKS                       R3 R2 K113 ["idle"]
      170 DUPTABLE                         R3 K116 [{[1] = "simulation", ["subGenre"] = "tycoon"}]
      171 SETTABLEKS                       R3 R2 K115 ["tycoon"]
      173 DUPTABLE                         R3 K118 [{[1] = "simulation", ["subGenre"] = "sandbox"}]
      174 SETTABLEKS                       R3 R2 K117 ["sandbox"]
      176 DUPTABLE                         R3 K120 [{[1] = "simulation", ["subGenre"] = "other_simulation"}]
      177 SETTABLEKS                       R3 R2 K119 ["other_simulation"]
      179 DUPTABLE                         R3 K122 [{[1] = "sports_and_racing", ["subGenre"] = }]
      180 SETTABLEKS                       R3 R2 K121 ["sports_and_racing"]
      182 DUPTABLE                         R3 K124 [{[1] = "sports_and_racing", ["subGenre"] = "sports"}]
      183 SETTABLEKS                       R3 R2 K123 ["sports"]
      185 DUPTABLE                         R3 K126 [{[1] = "sports_and_racing", ["subGenre"] = "racing"}]
      186 SETTABLEKS                       R3 R2 K125 ["racing"]
      188 DUPTABLE                         R3 K128 [{[1] = "sports_and_racing", ["subGenre"] = "other_sports_and_racing"}]
      189 SETTABLEKS                       R3 R2 K127 ["other_sports_and_racing"]
      191 DUPTABLE                         R3 K130 [{[1] = "strategy", ["subGenre"] = }]
      192 SETTABLEKS                       R3 R2 K129 ["strategy"]
      194 DUPTABLE                         R3 K132 [{[1] = "strategy", ["subGenre"] = "board_and_card_games"}]
      195 SETTABLEKS                       R3 R2 K131 ["board_and_card_games"]
      197 DUPTABLE                         R3 K134 [{[1] = "strategy", ["subGenre"] = "tower_defense"}]
      198 SETTABLEKS                       R3 R2 K133 ["tower_defense"]
      200 DUPTABLE                         R3 K136 [{[1] = "strategy", ["subGenre"] = "other_strategy"}]
      201 SETTABLEKS                       R3 R2 K135 ["other_strategy"]
      203 DUPTABLE                         R3 K138 [{[1] = "survival", ["subGenre"] = }]
      204 SETTABLEKS                       R3 R2 K137 ["survival"]
      206 DUPTABLE                         R3 K140 [{[1] = "survival", ["subGenre"] = "escape"}]
      207 SETTABLEKS                       R3 R2 K139 ["escape"]
      209 DUPTABLE                         R3 K142 [{[1] = "survival", ["subGenre"] = "one_vs_all"}]
      210 SETTABLEKS                       R3 R2 K141 ["one_vs_all"]
      212 DUPTABLE                         R3 K144 [{[1] = "survival", ["subGenre"] = "other_survival"}]
      213 SETTABLEKS                       R3 R2 K143 ["other_survival"]
      215 DUPTABLE                         R3 K146 [{[1] = "shopping", ["subGenre"] = }]
      216 SETTABLEKS                       R3 R2 K145 ["shopping"]
      218 DUPTABLE                         R3 K148 [{[1] = "shopping", ["subGenre"] = "avatar_shopping"}]
      219 SETTABLEKS                       R3 R2 K147 ["avatar_shopping"]
      221 DUPTABLE                         R3 K150 [{[1] = "shopping", ["subGenre"] = "other_shopping"}]
      222 SETTABLEKS                       R3 R2 K149 ["other_shopping"]
      224 DUPTABLE                         R3 K152 [{[1] = "social", ["subGenre"] = }]
      225 SETTABLEKS                       R3 R2 K151 ["social"]
      227 DUPTABLE                         R3 K154 [{[1] = "social", ["subGenre"] = "content_sharing"}]
      228 SETTABLEKS                       R3 R2 K153 ["content_sharing"]
      230 DUPTABLE                         R3 K156 [{[1] = "social", ["subGenre"] = "communication"}]
      231 SETTABLEKS                       R3 R2 K155 ["communication"]
      233 DUPTABLE                         R3 K158 [{[1] = "social", ["subGenre"] = "hangout"}]
      234 SETTABLEKS                       R3 R2 K157 ["hangout"]
      236 DUPTABLE                         R3 K160 [{[1] = "social", ["subGenre"] = "other_social"}]
      237 SETTABLEKS                       R3 R2 K159 ["other_social"]
      239 DUPTABLE                         R3 K162 [{[1] = "utility_and_other", ["subGenre"] = }]
      240 SETTABLEKS                       R3 R2 K161 ["utility_and_other"]
      242 NEWTABLE                         R3 128 0
      244 LOADK                            R6 K163 ["Genre"]
      245 LOADK                            R7 K164 ["Label.NA"]
      246 NAMECALL                         R4 R0 K165 ["getText"]
      248 CALL                             R4 3 1
      249 SETTABLEKS                       R4 R3 K1 ["na"]
      251 LOADK                            R6 K163 ["Genre"]
      252 LOADK                            R7 K166 ["Label.Education"]
      253 NAMECALL                         R4 R0 K165 ["getText"]
      255 CALL                             R4 3 1
      256 SETTABLEKS                       R4 R3 K5 ["education"]
      258 LOADK                            R6 K163 ["Genre"]
      259 LOADK                            R7 K167 ["Label.Entertainment"]
      260 NAMECALL                         R4 R0 K165 ["getText"]
      262 CALL                             R4 3 1
      263 SETTABLEKS                       R4 R3 K7 ["entertainment"]
      265 LOADK                            R6 K163 ["Genre"]
      266 LOADK                            R7 K168 ["Label.MusicAndAudio"]
      267 NAMECALL                         R4 R0 K165 ["getText"]
      269 CALL                             R4 3 1
      270 SETTABLEKS                       R4 R3 K9 ["music_and_audio"]
      272 LOADK                            R6 K163 ["Genre"]
      273 LOADK                            R7 K169 ["Label.ShowcaseAndHub"]
      274 NAMECALL                         R4 R0 K165 ["getText"]
      276 CALL                             R4 3 1
      277 SETTABLEKS                       R4 R3 K11 ["showcase_and_hub"]
      279 LOADK                            R6 K163 ["Genre"]
      280 LOADK                            R7 K170 ["Label.Video"]
      281 NAMECALL                         R4 R0 K165 ["getText"]
      283 CALL                             R4 3 1
      284 SETTABLEKS                       R4 R3 K13 ["video"]
      286 LOADK                            R6 K163 ["Genre"]
      287 LOADK                            R7 K171 ["Label.OtherEntertainment"]
      288 NAMECALL                         R4 R0 K165 ["getText"]
      290 CALL                             R4 3 1
      291 SETTABLEKS                       R4 R3 K15 ["other_entertainment"]
      293 LOADK                            R6 K163 ["Genre"]
      294 LOADK                            R7 K172 ["Label.Game"]
      295 NAMECALL                         R4 R0 K165 ["getText"]
      297 CALL                             R4 3 1
      298 SETTABLEKS                       R4 R3 K17 ["game"]
      300 LOADK                            R6 K163 ["Genre"]
      301 LOADK                            R7 K173 ["Label.Action"]
      302 NAMECALL                         R4 R0 K165 ["getText"]
      304 CALL                             R4 3 1
      305 SETTABLEKS                       R4 R3 K19 ["action"]
      307 LOADK                            R6 K163 ["Genre"]
      308 LOADK                            R7 K174 ["Label.BattlegroundsAndFighting"]
      309 NAMECALL                         R4 R0 K165 ["getText"]
      311 CALL                             R4 3 1
      312 SETTABLEKS                       R4 R3 K21 ["battlegrounds_and_fighting"]
      314 LOADK                            R6 K163 ["Genre"]
      315 LOADK                            R7 K175 ["Label.OpenWorldAction"]
      316 NAMECALL                         R4 R0 K165 ["getText"]
      318 CALL                             R4 3 1
      319 SETTABLEKS                       R4 R3 K23 ["open_world_action"]
      321 LOADK                            R6 K163 ["Genre"]
      322 LOADK                            R7 K176 ["Label.OtherAction"]
      323 NAMECALL                         R4 R0 K165 ["getText"]
      325 CALL                             R4 3 1
      326 SETTABLEKS                       R4 R3 K25 ["other_action"]
      328 LOADK                            R6 K163 ["Genre"]
      329 LOADK                            R7 K177 ["Label.MusicAndRhythm"]
      330 NAMECALL                         R4 R0 K165 ["getText"]
      332 CALL                             R4 3 1
      333 SETTABLEKS                       R4 R3 K27 ["music_and_rhythm"]
      335 LOADK                            R6 K163 ["Genre"]
      336 LOADK                            R7 K178 ["Label.Adventure"]
      337 NAMECALL                         R4 R0 K165 ["getText"]
      339 CALL                             R4 3 1
      340 SETTABLEKS                       R4 R3 K29 ["adventure"]
      342 LOADK                            R6 K163 ["Genre"]
      343 LOADK                            R7 K179 ["Label.Exploration"]
      344 NAMECALL                         R4 R0 K165 ["getText"]
      346 CALL                             R4 3 1
      347 SETTABLEKS                       R4 R3 K31 ["exploration"]
      349 LOADK                            R6 K163 ["Genre"]
      350 LOADK                            R7 K180 ["Label.ScavengerHunt"]
      351 NAMECALL                         R4 R0 K165 ["getText"]
      353 CALL                             R4 3 1
      354 SETTABLEKS                       R4 R3 K33 ["scavenger_hunt"]
      356 LOADK                            R6 K163 ["Genre"]
      357 LOADK                            R7 K181 ["Label.Story"]
      358 NAMECALL                         R4 R0 K165 ["getText"]
      360 CALL                             R4 3 1
      361 SETTABLEKS                       R4 R3 K35 ["story"]
      363 LOADK                            R6 K163 ["Genre"]
      364 LOADK                            R7 K182 ["Label.OtherAdventure"]
      365 NAMECALL                         R4 R0 K165 ["getText"]
      367 CALL                             R4 3 1
      368 SETTABLEKS                       R4 R3 K37 ["other_adventure"]
      370 LOADK                            R6 K163 ["Genre"]
      371 LOADK                            R7 K183 ["Label.RoleplayAndAvatarSim"]
      372 NAMECALL                         R4 R0 K165 ["getText"]
      374 CALL                             R4 3 1
      375 SETTABLEKS                       R4 R3 K39 ["roleplay_and_avatar_sim"]
      377 LOADK                            R6 K163 ["Genre"]
      378 LOADK                            R7 K184 ["Label.AnimalSim"]
      379 NAMECALL                         R4 R0 K165 ["getText"]
      381 CALL                             R4 3 1
      382 SETTABLEKS                       R4 R3 K41 ["animal_sim"]
      384 LOADK                            R6 K163 ["Genre"]
      385 LOADK                            R7 K185 ["Label.DressUp"]
      386 NAMECALL                         R4 R0 K165 ["getText"]
      388 CALL                             R4 3 1
      389 SETTABLEKS                       R4 R3 K43 ["dress_up"]
      391 LOADK                            R6 K163 ["Genre"]
      392 LOADK                            R7 K186 ["Label.PetCare"]
      393 NAMECALL                         R4 R0 K165 ["getText"]
      395 CALL                             R4 3 1
      396 SETTABLEKS                       R4 R3 K45 ["pet_care"]
      398 LOADK                            R6 K163 ["Genre"]
      399 LOADK                            R7 K187 ["Label.Life"]
      400 NAMECALL                         R4 R0 K165 ["getText"]
      402 CALL                             R4 3 1
      403 SETTABLEKS                       R4 R3 K47 ["life"]
      405 LOADK                            R6 K163 ["Genre"]
      406 LOADK                            R7 K188 ["Label.MorphRoleplay"]
      407 NAMECALL                         R4 R0 K165 ["getText"]
      409 CALL                             R4 3 1
      410 SETTABLEKS                       R4 R3 K49 ["morph_roleplay"]
      412 LOADK                            R6 K163 ["Genre"]
      413 LOADK                            R7 K189 ["Label.OtherRoleplayAndAvatarSim"]
      414 NAMECALL                         R4 R0 K165 ["getText"]
      416 CALL                             R4 3 1
      417 SETTABLEKS                       R4 R3 K51 ["other_roleplay_and_avatar_sim"]
      419 LOADK                            R6 K163 ["Genre"]
      420 LOADK                            R7 K190 ["Label.ObbyAndPlatformer"]
      421 NAMECALL                         R4 R0 K165 ["getText"]
      423 CALL                             R4 3 1
      424 SETTABLEKS                       R4 R3 K53 ["obby_and_platformer"]
      426 LOADK                            R6 K163 ["Genre"]
      427 LOADK                            R7 K191 ["Label.ClassicObby"]
      428 NAMECALL                         R4 R0 K165 ["getText"]
      430 CALL                             R4 3 1
      431 SETTABLEKS                       R4 R3 K55 ["classic_obby"]
      433 LOADK                            R6 K163 ["Genre"]
      434 LOADK                            R7 K192 ["Label.Runner"]
      435 NAMECALL                         R4 R0 K165 ["getText"]
      437 CALL                             R4 3 1
      438 SETTABLEKS                       R4 R3 K57 ["runner"]
      440 LOADK                            R6 K163 ["Genre"]
      441 LOADK                            R7 K193 ["Label.TowerObby"]
      442 NAMECALL                         R4 R0 K165 ["getText"]
      444 CALL                             R4 3 1
      445 SETTABLEKS                       R4 R3 K59 ["tower_obby"]
      447 LOADK                            R6 K163 ["Genre"]
      448 LOADK                            R7 K194 ["Label.OtherObbyAndPlatformer"]
      449 NAMECALL                         R4 R0 K165 ["getText"]
      451 CALL                             R4 3 1
      452 SETTABLEKS                       R4 R3 K61 ["other_obby_and_platformer"]
      454 LOADK                            R6 K163 ["Genre"]
      455 LOADK                            R7 K195 ["Label.PartyAndCasual"]
      456 NAMECALL                         R4 R0 K165 ["getText"]
      458 CALL                             R4 3 1
      459 SETTABLEKS                       R4 R3 K63 ["party_and_casual"]
      461 LOADK                            R6 K163 ["Genre"]
      462 LOADK                            R7 K196 ["Label.ChildhoodGame"]
      463 NAMECALL                         R4 R0 K165 ["getText"]
      465 CALL                             R4 3 1
      466 SETTABLEKS                       R4 R3 K65 ["childhood_game"]
      468 LOADK                            R6 K163 ["Genre"]
      469 LOADK                            R7 K197 ["Label.Minigame"]
      470 NAMECALL                         R4 R0 K165 ["getText"]
      472 CALL                             R4 3 1
      473 SETTABLEKS                       R4 R3 K67 ["minigame"]
      475 LOADK                            R6 K163 ["Genre"]
      476 LOADK                            R7 K198 ["Label.Quiz"]
      477 NAMECALL                         R4 R0 K165 ["getText"]
      479 CALL                             R4 3 1
      480 SETTABLEKS                       R4 R3 K69 ["quiz"]
      482 LOADK                            R6 K163 ["Genre"]
      483 LOADK                            R7 K199 ["Label.ColoringAndDrawing"]
      484 NAMECALL                         R4 R0 K165 ["getText"]
      486 CALL                             R4 3 1
      487 SETTABLEKS                       R4 R3 K71 ["coloring_and_drawing"]
      489 LOADK                            R6 K163 ["Genre"]
      490 LOADK                            R7 K200 ["Label.OtherPartyAndCasual"]
      491 NAMECALL                         R4 R0 K165 ["getText"]
      493 CALL                             R4 3 1
      494 SETTABLEKS                       R4 R3 K73 ["other_party_and_casual"]
      496 LOADK                            R6 K163 ["Genre"]
      497 LOADK                            R7 K201 ["Label.Puzzle"]
      498 NAMECALL                         R4 R0 K165 ["getText"]
      500 CALL                             R4 3 1
      501 SETTABLEKS                       R4 R3 K75 ["puzzle"]
      503 LOADK                            R6 K163 ["Genre"]
      504 LOADK                            R7 K202 ["Label.EscapeRoom"]
      505 NAMECALL                         R4 R0 K165 ["getText"]
      507 CALL                             R4 3 1
      508 SETTABLEKS                       R4 R3 K77 ["escape_room"]
      510 LOADK                            R6 K163 ["Genre"]
      511 LOADK                            R7 K203 ["Label.MatchAndMerge"]
      512 NAMECALL                         R4 R0 K165 ["getText"]
      514 CALL                             R4 3 1
      515 SETTABLEKS                       R4 R3 K79 ["match_and_merge"]
      517 LOADK                            R6 K163 ["Genre"]
      518 LOADK                            R7 K204 ["Label.Word"]
      519 NAMECALL                         R4 R0 K165 ["getText"]
      521 CALL                             R4 3 1
      522 SETTABLEKS                       R4 R3 K81 ["word"]
      524 LOADK                            R6 K163 ["Genre"]
      525 LOADK                            R7 K205 ["Label.OtherPuzzle"]
      526 NAMECALL                         R4 R0 K165 ["getText"]
      528 CALL                             R4 3 1
      529 SETTABLEKS                       R4 R3 K83 ["other_puzzle"]
      531 LOADK                            R6 K163 ["Genre"]
      532 LOADK                            R7 K206 ["Label.Rpg"]
      533 NAMECALL                         R4 R0 K165 ["getText"]
      535 CALL                             R4 3 1
      536 SETTABLEKS                       R4 R3 K85 ["rpg"]
      538 LOADK                            R6 K163 ["Genre"]
      539 LOADK                            R7 K207 ["Label.ActionRpg"]
      540 NAMECALL                         R4 R0 K165 ["getText"]
      542 CALL                             R4 3 1
      543 SETTABLEKS                       R4 R3 K87 ["action_rpg"]
      545 LOADK                            R6 K163 ["Genre"]
      546 LOADK                            R7 K208 ["Label.TurnBasedRpg"]
      547 NAMECALL                         R4 R0 K165 ["getText"]
      549 CALL                             R4 3 1
      550 SETTABLEKS                       R4 R3 K89 ["turn_based_rpg"]
      552 LOADK                            R6 K163 ["Genre"]
      553 LOADK                            R7 K209 ["Label.OpenWorldAndSurvivalRpg"]
      554 NAMECALL                         R4 R0 K165 ["getText"]
      556 CALL                             R4 3 1
      557 SETTABLEKS                       R4 R3 K91 ["open_world_and_survival_rpg"]
      559 LOADK                            R6 K163 ["Genre"]
      560 LOADK                            R7 K210 ["Label.OtherRpg"]
      561 NAMECALL                         R4 R0 K165 ["getText"]
      563 CALL                             R4 3 1
      564 SETTABLEKS                       R4 R3 K93 ["other_rpg"]
      566 LOADK                            R6 K163 ["Genre"]
      567 LOADK                            R7 K211 ["Label.Shooter"]
      568 NAMECALL                         R4 R0 K165 ["getText"]
      570 CALL                             R4 3 1
      571 SETTABLEKS                       R4 R3 K95 ["shooter"]
      573 LOADK                            R6 K163 ["Genre"]
      574 LOADK                            R7 K212 ["Label.BattleRoyaleShooter"]
      575 NAMECALL                         R4 R0 K165 ["getText"]
      577 CALL                             R4 3 1
      578 SETTABLEKS                       R4 R3 K97 ["battle_royale_shooter"]
      580 LOADK                            R6 K163 ["Genre"]
      581 LOADK                            R7 K213 ["Label.PveShooter"]
      582 NAMECALL                         R4 R0 K165 ["getText"]
      584 CALL                             R4 3 1
      585 SETTABLEKS                       R4 R3 K99 ["pve_shooter"]
      587 LOADK                            R6 K163 ["Genre"]
      588 LOADK                            R7 K214 ["Label.DeathmatchShooter"]
      589 NAMECALL                         R4 R0 K165 ["getText"]
      591 CALL                             R4 3 1
      592 SETTABLEKS                       R4 R3 K101 ["deathmatch_shooter"]
      594 LOADK                            R6 K163 ["Genre"]
      595 LOADK                            R7 K215 ["Label.OtherShooter"]
      596 NAMECALL                         R4 R0 K165 ["getText"]
      598 CALL                             R4 3 1
      599 SETTABLEKS                       R4 R3 K103 ["other_shooter"]
      601 LOADK                            R6 K163 ["Genre"]
      602 LOADK                            R7 K216 ["Label.Simulation"]
      603 NAMECALL                         R4 R0 K165 ["getText"]
      605 CALL                             R4 3 1
      606 SETTABLEKS                       R4 R3 K105 ["simulation"]
      608 LOADK                            R6 K163 ["Genre"]
      609 LOADK                            R7 K217 ["Label.VehicleSim"]
      610 NAMECALL                         R4 R0 K165 ["getText"]
      612 CALL                             R4 3 1
      613 SETTABLEKS                       R4 R3 K107 ["vehicle_sim"]
      615 LOADK                            R6 K163 ["Genre"]
      616 LOADK                            R7 K218 ["Label.PhysicsSim"]
      617 NAMECALL                         R4 R0 K165 ["getText"]
      619 CALL                             R4 3 1
      620 SETTABLEKS                       R4 R3 K109 ["physics_sim"]
      622 LOADK                            R6 K163 ["Genre"]
      623 LOADK                            R7 K219 ["Label.IncrementalSimulator"]
      624 NAMECALL                         R4 R0 K165 ["getText"]
      626 CALL                             R4 3 1
      627 SETTABLEKS                       R4 R3 K111 ["incremental_simulator"]
      629 LOADK                            R6 K163 ["Genre"]
      630 LOADK                            R7 K220 ["Label.Idle"]
      631 NAMECALL                         R4 R0 K165 ["getText"]
      633 CALL                             R4 3 1
      634 SETTABLEKS                       R4 R3 K113 ["idle"]
      636 LOADK                            R6 K163 ["Genre"]
      637 LOADK                            R7 K221 ["Label.Tycoon"]
      638 NAMECALL                         R4 R0 K165 ["getText"]
      640 CALL                             R4 3 1
      641 SETTABLEKS                       R4 R3 K115 ["tycoon"]
      643 LOADK                            R6 K163 ["Genre"]
      644 LOADK                            R7 K222 ["Label.Sandbox"]
      645 NAMECALL                         R4 R0 K165 ["getText"]
      647 CALL                             R4 3 1
      648 SETTABLEKS                       R4 R3 K117 ["sandbox"]
      650 LOADK                            R6 K163 ["Genre"]
      651 LOADK                            R7 K223 ["Label.OtherSimulation"]
      652 NAMECALL                         R4 R0 K165 ["getText"]
      654 CALL                             R4 3 1
      655 SETTABLEKS                       R4 R3 K119 ["other_simulation"]
      657 LOADK                            R6 K163 ["Genre"]
      658 LOADK                            R7 K224 ["Label.SportsAndRacing"]
      659 NAMECALL                         R4 R0 K165 ["getText"]
      661 CALL                             R4 3 1
      662 SETTABLEKS                       R4 R3 K121 ["sports_and_racing"]
      664 LOADK                            R6 K163 ["Genre"]
      665 LOADK                            R7 K225 ["Label.Sports"]
      666 NAMECALL                         R4 R0 K165 ["getText"]
      668 CALL                             R4 3 1
      669 SETTABLEKS                       R4 R3 K123 ["sports"]
      671 LOADK                            R6 K163 ["Genre"]
      672 LOADK                            R7 K226 ["Label.Racing"]
      673 NAMECALL                         R4 R0 K165 ["getText"]
      675 CALL                             R4 3 1
      676 SETTABLEKS                       R4 R3 K125 ["racing"]
      678 LOADK                            R6 K163 ["Genre"]
      679 LOADK                            R7 K227 ["Label.OtherSportsAndRacing"]
      680 NAMECALL                         R4 R0 K165 ["getText"]
      682 CALL                             R4 3 1
      683 SETTABLEKS                       R4 R3 K127 ["other_sports_and_racing"]
      685 LOADK                            R6 K163 ["Genre"]
      686 LOADK                            R7 K228 ["Label.Strategy"]
      687 NAMECALL                         R4 R0 K165 ["getText"]
      689 CALL                             R4 3 1
      690 SETTABLEKS                       R4 R3 K129 ["strategy"]
      692 LOADK                            R6 K163 ["Genre"]
      693 LOADK                            R7 K229 ["Label.BoardAndCardGames"]
      694 NAMECALL                         R4 R0 K165 ["getText"]
      696 CALL                             R4 3 1
      697 SETTABLEKS                       R4 R3 K131 ["board_and_card_games"]
      699 LOADK                            R6 K163 ["Genre"]
      700 LOADK                            R7 K230 ["Label.TowerDefense"]
      701 NAMECALL                         R4 R0 K165 ["getText"]
      703 CALL                             R4 3 1
      704 SETTABLEKS                       R4 R3 K133 ["tower_defense"]
      706 LOADK                            R6 K163 ["Genre"]
      707 LOADK                            R7 K231 ["Label.OtherStrategy"]
      708 NAMECALL                         R4 R0 K165 ["getText"]
      710 CALL                             R4 3 1
      711 SETTABLEKS                       R4 R3 K135 ["other_strategy"]
      713 LOADK                            R6 K163 ["Genre"]
      714 LOADK                            R7 K232 ["Label.Survival"]
      715 NAMECALL                         R4 R0 K165 ["getText"]
      717 CALL                             R4 3 1
      718 SETTABLEKS                       R4 R3 K137 ["survival"]
      720 LOADK                            R6 K163 ["Genre"]
      721 LOADK                            R7 K233 ["Label.Escape"]
      722 NAMECALL                         R4 R0 K165 ["getText"]
      724 CALL                             R4 3 1
      725 SETTABLEKS                       R4 R3 K139 ["escape"]
      727 LOADK                            R6 K163 ["Genre"]
      728 LOADK                            R7 K234 ["Label.OneVsAll"]
      729 NAMECALL                         R4 R0 K165 ["getText"]
      731 CALL                             R4 3 1
      732 SETTABLEKS                       R4 R3 K141 ["one_vs_all"]
      734 LOADK                            R6 K163 ["Genre"]
      735 LOADK                            R7 K235 ["Label.OtherSurvival"]
      736 NAMECALL                         R4 R0 K165 ["getText"]
      738 CALL                             R4 3 1
      739 SETTABLEKS                       R4 R3 K143 ["other_survival"]
      741 LOADK                            R6 K163 ["Genre"]
      742 LOADK                            R7 K236 ["Label.Shopping"]
      743 NAMECALL                         R4 R0 K165 ["getText"]
      745 CALL                             R4 3 1
      746 SETTABLEKS                       R4 R3 K145 ["shopping"]
      748 LOADK                            R6 K163 ["Genre"]
      749 LOADK                            R7 K237 ["Label.AvatarShopping"]
      750 NAMECALL                         R4 R0 K165 ["getText"]
      752 CALL                             R4 3 1
      753 SETTABLEKS                       R4 R3 K147 ["avatar_shopping"]
      755 LOADK                            R6 K163 ["Genre"]
      756 LOADK                            R7 K238 ["Label.OtherShopping"]
      757 NAMECALL                         R4 R0 K165 ["getText"]
      759 CALL                             R4 3 1
      760 SETTABLEKS                       R4 R3 K149 ["other_shopping"]
      762 LOADK                            R6 K163 ["Genre"]
      763 LOADK                            R7 K239 ["Label.Social"]
      764 NAMECALL                         R4 R0 K165 ["getText"]
      766 CALL                             R4 3 1
      767 SETTABLEKS                       R4 R3 K151 ["social"]
      769 LOADK                            R6 K163 ["Genre"]
      770 LOADK                            R7 K240 ["Label.ContentSharing"]
      771 NAMECALL                         R4 R0 K165 ["getText"]
      773 CALL                             R4 3 1
      774 SETTABLEKS                       R4 R3 K153 ["content_sharing"]
      776 LOADK                            R6 K163 ["Genre"]
      777 LOADK                            R7 K241 ["Label.Communication"]
      778 NAMECALL                         R4 R0 K165 ["getText"]
      780 CALL                             R4 3 1
      781 SETTABLEKS                       R4 R3 K155 ["communication"]
      783 LOADK                            R6 K163 ["Genre"]
      784 LOADK                            R7 K242 ["Label.Hangout"]
      785 NAMECALL                         R4 R0 K165 ["getText"]
      787 CALL                             R4 3 1
      788 SETTABLEKS                       R4 R3 K157 ["hangout"]
      790 LOADK                            R6 K163 ["Genre"]
      791 LOADK                            R7 K243 ["Label.OtherSocial"]
      792 NAMECALL                         R4 R0 K165 ["getText"]
      794 CALL                             R4 3 1
      795 SETTABLEKS                       R4 R3 K159 ["other_social"]
      797 LOADK                            R6 K163 ["Genre"]
      798 LOADK                            R7 K244 ["Label.UtilityAndOther"]
      799 NAMECALL                         R4 R0 K165 ["getText"]
      801 CALL                             R4 3 1
      802 SETTABLEKS                       R4 R3 K161 ["utility_and_other"]
      804 ORK                              R5 R1 K1 ["na"]
      805 GETTABLE                         R4 R2 R5
      806 JUMPIF                           R4 ; [+1]
      807 DUPTABLE                         R4 K4 [{[1] = "na", ["subGenre"] = }]
      808 GETTABLEKS                       R8 R4 K0 ["genre"]
      810 ORK                              R7 R8 K1 ["na"]
      811 GETTABLE                         R6 R3 R7
      812 ORK                              R5 R6 K245 [""]
      813 GETTABLEKS                       R9 R4 K2 ["subGenre"]
      815 ORK                              R8 R9 K1 ["na"]
      816 GETTABLE                         R7 R3 R8
      817 ORK                              R6 R7 K245 [""]
      818 GETTABLEKS                       R8 R4 K2 ["subGenre"]
      820 JUMPIFNOT                        R8 ; [+5]
      821 MOVE                             R8 R5
      822 LOADK                            R9 K246 [" > "]
      823 MOVE                             R10 R6
      824 CONCAT                           R7 R8 R10
      825 JUMPIF                           R7 ; [+1]
      826 MOVE                             R7 R5
      827 RETURN                           R7 1

PROTO_67:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Settings"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_68:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R2
        7 MOVE                             R5 R0
        8 CALL                             R3 2 1
        9 RETURN                           R3 1

PROTO_69:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_70:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_71:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 MOVE                             R4 R0
        6 CALL                             R2 2 1
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["LuobuDevPublishAnalyticsHundredthsPercentage"]
       12 NAMECALL                         R1 R1 K6 ["GetFastInt"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K4 [game]
       17 LOADK                            R4 K7 ["TranslateGameModeratedErrors"]
       18 NAMECALL                         R2 R2 K8 ["GetFastFlag"]
       20 CALL                             R2 2 1
       21 GETIMPORT                        R3 K4 [game]
       23 LOADK                            R5 K9 ["GameSettingsExperienceGuidelines"]
       24 NAMECALL                         R3 R3 K8 ["GetFastFlag"]
       26 CALL                             R3 2 1
       27 GETIMPORT                        R4 K4 [game]
       29 LOADK                            R6 K10 ["StudioGenreOverhaulExplainationLink"]
       30 NAMECALL                         R4 R4 K11 ["GetFastString"]
       32 CALL                             R4 2 1
       33 GETIMPORT                        R5 K4 [game]
       35 LOADK                            R7 K12 ["CU1320ExperienceGenre"]
       36 NAMECALL                         R5 R5 K8 ["GetFastFlag"]
       38 CALL                             R5 2 1
       39 GETIMPORT                        R6 K4 [game]
       41 LOADK                            R8 K13 ["RemoveQuestionnaireFromGameSettings"]
       42 LOADB                            R9 0
       43 NAMECALL                         R6 R6 K14 ["DefineFastFlag"]
       45 CALL                             R6 3 1
       46 GETIMPORT                        R7 K4 [game]
       48 LOADK                            R9 K15 ["FStringTeamCreateLearnMoreLinkDest"]
       49 LOADK                            R10 K16 ["https://create.roblox.com/docs/projects/collaboration"]
       50 NAMECALL                         R7 R7 K17 ["DefineFastString"]
       52 CALL                             R7 3 1
       53 GETIMPORT                        R8 K19 [require]
       55 GETTABLEKS                       R9 R0 K20 ["Src"]
       57 GETTABLEKS                       R9 R9 K21 ["Flags"]
       59 GETTABLEKS                       R9 R9 K22 ["getFFlagPruneGameSettings"]
       61 CALL                             R8 1 1
       62 CALL                             R8 0 1
       63 GETIMPORT                        R9 K19 [require]
       65 GETTABLEKS                       R10 R0 K20 ["Src"]
       67 GETTABLEKS                       R10 R10 K21 ["Flags"]
       69 GETTABLEKS                       R10 R10 K23 ["getFFlagGameSettingsGameToExperience"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K19 [require]
       74 GETTABLEKS                       R11 R0 K20 ["Src"]
       76 GETTABLEKS                       R11 R11 K21 ["Flags"]
       78 GETTABLEKS                       R11 R11 K24 ["getFFlagGameSettingsAddIARCErrorMessaging"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K4 [game]
       83 LOADK                            R13 K25 ["StudioService"]
       84 NAMECALL                         R11 R11 K26 ["GetService"]
       86 CALL                             R11 2 1
       87 GETIMPORT                        R12 K4 [game]
       89 LOADK                            R14 K27 ["GuiService"]
       90 NAMECALL                         R12 R12 K26 ["GetService"]
       92 CALL                             R12 2 1
       93 GETIMPORT                        R13 K4 [game]
       95 LOADK                            R15 K28 ["TeamCreateService"]
       96 NAMECALL                         R13 R13 K26 ["GetService"]
       98 CALL                             R13 2 1
       99 GETIMPORT                        R14 K1 [script]
      101 GETTABLEKS                       R14 R14 K29 ["Name"]
      103 DUPTABLE                         R15 K34 [{["Moderated"] = "ErrorNameModerated", ["Empty"] = "ErrorNameEmpty"}]
      104 DUPTABLE                         R16 K37 [{["Moderated"] = "ErrorDescModerated", ["Empty"] = "ErrorFieldEmpty"}]
      105 DUPTABLE                         R17 K42 [{["UploadingTooQuickly"] = "ErrorImageLimit", ["ImageNotRecognized"] = "ErrorImageNotRecognized"}]
      106 DUPTABLE                         R18 K43 [{["Empty"] = "ErrorFieldEmpty"}]
      107 DUPTABLE                         R19 K45 [{["Moderated"] = "ErrorAltTextModerated"}]
      108 GETIMPORT                        R20 K1 [script]
      110 GETTABLEKS                       R20 R20 K2 ["Parent"]
      112 GETIMPORT                        R21 K19 [require]
      114 GETTABLEKS                       R22 R0 K46 ["Packages"]
      116 GETTABLEKS                       R22 R22 K47 ["Roact"]
      118 CALL                             R21 1 1
      119 GETIMPORT                        R22 K19 [require]
      121 GETTABLEKS                       R23 R0 K46 ["Packages"]
      123 GETTABLEKS                       R23 R23 K48 ["RoactRodux"]
      125 CALL                             R22 1 1
      126 GETIMPORT                        R23 K19 [require]
      128 GETTABLEKS                       R24 R0 K46 ["Packages"]
      130 GETTABLEKS                       R24 R24 K49 ["Cryo"]
      132 CALL                             R23 1 1
      133 GETIMPORT                        R24 K19 [require]
      135 GETTABLEKS                       R25 R0 K46 ["Packages"]
      137 GETTABLEKS                       R25 R25 K50 ["Framework"]
      139 CALL                             R24 1 1
      140 GETTABLEKS                       R25 R24 K51 ["ContextServices"]
      142 GETTABLEKS                       R26 R25 K52 ["withContext"]
      144 GETIMPORT                        R27 K19 [require]
      146 GETTABLEKS                       R28 R0 K20 ["Src"]
      148 GETTABLEKS                       R28 R28 K51 ["ContextServices"]
      150 GETTABLEKS                       R28 R28 K53 ["Dialog"]
      152 CALL                             R27 1 1
      153 LOADNIL                          R28
      154 JUMPIFNOT                        R3 ; [+8]
      155 GETIMPORT                        R29 K19 [require]
      157 GETTABLEKS                       R30 R20 K54 ["Components"]
      159 GETTABLEKS                       R30 R30 K55 ["Guidelines"]
      161 CALL                             R29 1 1
      162 MOVE                             R28 R29
      163 GETIMPORT                        R29 K19 [require]
      165 GETTABLEKS                       R30 R0 K20 ["Src"]
      167 GETTABLEKS                       R30 R30 K56 ["Util"]
      169 GETTABLEKS                       R30 R30 K57 ["BrowserUtils"]
      171 CALL                             R29 1 1
      172 GETTABLEKS                       R29 R29 K58 ["OpenExperienceSettings"]
      174 GETIMPORT                        R30 K19 [require]
      176 GETTABLEKS                       R31 R0 K20 ["Src"]
      178 GETTABLEKS                       R31 R31 K56 ["Util"]
      180 GETTABLEKS                       R31 R31 K57 ["BrowserUtils"]
      182 CALL                             R30 1 1
      183 GETTABLEKS                       R30 R30 K59 ["OpenExperienceAccess"]
      185 GETTABLEKS                       R31 R24 K60 ["UI"]
      187 GETTABLEKS                       R32 R31 K61 ["BulletList"]
      189 GETTABLEKS                       R33 R31 K62 ["Separator"]
      191 GETTABLEKS                       R34 R31 K63 ["LinkText"]
      193 GETTABLEKS                       R35 R31 K64 ["Tooltip"]
      195 GETTABLEKS                       R36 R31 K65 ["HoverArea"]
      197 GETTABLEKS                       R37 R31 K66 ["SelectInput"]
      199 GETTABLEKS                       R38 R31 K67 ["TextInput"]
      201 GETTABLEKS                       R39 R31 K68 ["Image"]
      203 GETTABLEKS                       R40 R31 K69 ["TextLabel"]
      205 GETTABLEKS                       R41 R31 K70 ["TextWithInlineLink"]
      207 GETTABLEKS                       R42 R31 K71 ["TitledFrame"]
      209 GETTABLEKS                       R43 R31 K72 ["Pane"]
      211 GETTABLEKS                       R44 R31 K73 ["MultiImagePicker"]
      213 GETTABLEKS                       R45 R24 K56 ["Util"]
      215 GETTABLEKS                       R46 R45 K74 ["StyleModifier"]
      217 GETTABLEKS                       R47 R45 K75 ["LayoutOrderIterator"]
      219 GETTABLEKS                       R48 R45 K76 ["deepJoin"]
      221 GETIMPORT                        R49 K19 [require]
      223 GETTABLEKS                       R50 R0 K20 ["Src"]
      225 GETTABLEKS                       R50 R50 K54 ["Components"]
      227 GETTABLEKS                       R50 R50 K77 ["CheckBoxSet"]
      229 CALL                             R49 1 1
      230 GETIMPORT                        R50 K19 [require]
      232 GETTABLEKS                       R51 R0 K20 ["Src"]
      234 GETTABLEKS                       R51 R51 K54 ["Components"]
      236 GETTABLEKS                       R51 R51 K78 ["UploadableIcon"]
      238 GETTABLEKS                       R51 R51 K79 ["UploadableIconWidget"]
      240 CALL                             R50 1 1
      241 GETIMPORT                        R51 K19 [require]
      243 GETTABLEKS                       R52 R0 K20 ["Src"]
      245 GETTABLEKS                       R52 R52 K54 ["Components"]
      247 GETTABLEKS                       R52 R52 K80 ["SettingsPages"]
      249 GETTABLEKS                       R52 R52 K81 ["SettingsPage"]
      251 CALL                             R51 1 1
      252 GETIMPORT                        R52 K19 [require]
      254 GETTABLEKS                       R53 R0 K20 ["Src"]
      256 GETTABLEKS                       R53 R53 K54 ["Components"]
      258 GETTABLEKS                       R53 R53 K53 ["Dialog"]
      260 GETTABLEKS                       R53 R53 K82 ["SimpleDialog"]
      262 CALL                             R52 1 1
      263 GETIMPORT                        R53 K19 [require]
      265 GETTABLEKS                       R54 R0 K20 ["Src"]
      267 GETTABLEKS                       R54 R54 K54 ["Components"]
      269 GETTABLEKS                       R54 R54 K80 ["SettingsPages"]
      271 GETTABLEKS                       R54 R54 K83 ["InsufficientPermissionsPage"]
      273 CALL                             R53 1 1
      274 GETIMPORT                        R54 K19 [require]
      276 GETTABLEKS                       R55 R0 K20 ["Src"]
      278 GETTABLEKS                       R55 R55 K54 ["Components"]
      280 GETTABLEKS                       R55 R55 K84 ["ToggleButtonWithTitle"]
      282 CALL                             R54 1 1
      283 GETIMPORT                        R55 K19 [require]
      285 GETTABLEKS                       R56 R0 K20 ["Src"]
      287 GETTABLEKS                       R56 R56 K85 ["Actions"]
      289 GETTABLEKS                       R56 R56 K86 ["AddChange"]
      291 CALL                             R55 1 1
      292 GETIMPORT                        R56 K19 [require]
      294 GETTABLEKS                       R57 R0 K20 ["Src"]
      296 GETTABLEKS                       R57 R57 K85 ["Actions"]
      298 GETTABLEKS                       R57 R57 K87 ["AddErrors"]
      300 CALL                             R56 1 1
      301 GETIMPORT                        R57 K19 [require]
      303 GETTABLEKS                       R58 R0 K20 ["Src"]
      305 GETTABLEKS                       R58 R58 K85 ["Actions"]
      307 GETTABLEKS                       R58 R58 K88 ["DiscardError"]
      309 CALL                             R57 1 1
      310 GETIMPORT                        R58 K19 [require]
      312 GETTABLEKS                       R59 R0 K20 ["Src"]
      314 GETTABLEKS                       R59 R59 K85 ["Actions"]
      316 GETTABLEKS                       R59 R59 K89 ["SetCreatorId"]
      318 CALL                             R58 1 1
      319 GETIMPORT                        R59 K19 [require]
      321 GETTABLEKS                       R60 R0 K20 ["Src"]
      323 GETTABLEKS                       R60 R60 K85 ["Actions"]
      325 GETTABLEKS                       R60 R60 K90 ["SetCreatorType"]
      327 CALL                             R59 1 1
      328 GETIMPORT                        R60 K19 [require]
      330 GETTABLEKS                       R61 R0 K20 ["Src"]
      332 GETTABLEKS                       R61 R61 K56 ["Util"]
      334 GETTABLEKS                       R61 R61 K91 ["FileUtils"]
      336 CALL                             R60 1 1
      337 GETIMPORT                        R61 K19 [require]
      339 GETTABLEKS                       R62 R0 K20 ["Src"]
      341 GETTABLEKS                       R62 R62 K56 ["Util"]
      343 GETTABLEKS                       R62 R62 K92 ["DEPRECATED_Constants"]
      345 CALL                             R61 1 1
      346 GETIMPORT                        R62 K19 [require]
      348 GETTABLEKS                       R63 R0 K20 ["Src"]
      350 GETTABLEKS                       R63 R63 K56 ["Util"]
      352 GETTABLEKS                       R63 R63 K93 ["GameSettingsUtilities"]
      354 CALL                             R62 1 1
      355 GETTABLEKS                       R63 R62 K94 ["shouldShowDevPublishLocations"]
      357 GETTABLEKS                       R64 R62 K95 ["getPlayerAppDownloadLink"]
      359 GETTABLEKS                       R65 R62 K96 ["getOptInLocationsRequirementsLink"]
      361 GETTABLEKS                       R66 R62 K97 ["getSocialMediaReferencesAllowed"]
      363 GETTABLEKS                       R67 R62 K98 ["sendAnalyticsToKibana"]
      365 GETTABLEKS                       R68 R62 K99 ["calculateTextSize"]
      367 GETIMPORT                        R69 K19 [require]
      369 GETTABLEKS                       R70 R0 K20 ["Src"]
      371 GETTABLEKS                       R70 R70 K56 ["Util"]
      373 GETTABLEKS                       R70 R70 K100 ["KeyProvider"]
      375 CALL                             R69 1 1
      376 GETTABLEKS                       R70 R69 K101 ["getOptInLocationsKeyName"]
      378 CALL                             R70 0 1
      379 GETTABLEKS                       R71 R69 K102 ["getChinaKeyName"]
      381 CALL                             R71 0 1
      382 GETTABLEKS                       R72 R69 K103 ["getPlayerAcceptanceKeyName"]
      384 CALL                             R72 0 1
      385 GETTABLEKS                       R73 R69 K104 ["getApprovedKeyName"]
      387 CALL                             R73 0 1
      388 GETTABLEKS                       R74 R69 K105 ["getInReviewKeyName"]
      390 CALL                             R74 0 1
      391 GETTABLEKS                       R75 R69 K106 ["getRejectedKeyName"]
      393 CALL                             R75 0 1
      394 GETTABLEKS                       R76 R69 K107 ["getLuobuStudioDevPublishKeyName"]
      396 CALL                             R76 0 1
      397 GETTABLEKS                       R77 R69 K108 ["getCheckboxToggleKeyName"]
      399 CALL                             R77 0 1
      400 GETTABLEKS                       R78 R69 K109 ["getSelectedKeyName"]
      402 CALL                             R78 0 1
      403 GETTABLEKS                       R79 R69 K110 ["getTermsOfUseDialogKeyName"]
      405 CALL                             R79 0 1
      406 GETTABLEKS                       R80 R69 K111 ["getButtonClickedKeyName"]
      408 CALL                             R80 0 1
      409 GETTABLEKS                       R81 R69 K112 ["getTeamCreateEnabledKeyName"]
      411 CALL                             R81 0 1
      412 JUMPIFNOT                        R8 ; [+4]
      413 GETTABLEKS                       R82 R69 K113 ["getScriptCollaborationEnabledKeyName"]
      415 CALL                             R82 0 1
      416 JUMP                             ; [+1]
      417 LOADNIL                          R82
      418 GETTABLEKS                       R83 R69 K114 ["getScriptCollaborationEnabledOnServerKeyName"]
      420 MOVE                             R84 R83
      421 CALL                             R84 0 1
      422 DUPCLOSURE                       R85 K115 [PROTO_17]
      423 CAPTURE                          VAL R8
      424 CAPTURE                          VAL R3
      425 CAPTURE                          VAL R5
      426 CAPTURE                          VAL R58
      427 CAPTURE                          VAL R59
      428 CAPTURE                          VAL R63
      429 CAPTURE                          VAL R70
      430 CAPTURE                          VAL R72
      431 CAPTURE                          VAL R82
      432 CAPTURE                          VAL R84
      433 CAPTURE                          VAL R81
      434 DUPCLOSURE                       R86 K116 [PROTO_36]
      435 CAPTURE                          VAL R8
      436 CAPTURE                          VAL R56
      437 CAPTURE                          VAL R2
      438 CAPTURE                          VAL R23
      439 CAPTURE                          VAL R55
      440 CAPTURE                          VAL R63
      441 CAPTURE                          VAL R70
      442 DUPCLOSURE                       R87 K117 [PROTO_37]
      443 CAPTURE                          VAL R3
      444 CAPTURE                          VAL R63
      445 CAPTURE                          VAL R70
      446 CAPTURE                          VAL R72
      447 CAPTURE                          VAL R8
      448 CAPTURE                          VAL R82
      449 CAPTURE                          VAL R81
      450 DUPCLOSURE                       R88 K118 [PROTO_45]
      451 CAPTURE                          VAL R57
      452 CAPTURE                          VAL R55
      453 CAPTURE                          VAL R23
      454 CAPTURE                          VAL R61
      455 CAPTURE                          VAL R56
      456 CAPTURE                          VAL R10
      457 CAPTURE                          VAL R63
      458 CAPTURE                          VAL R70
      459 CAPTURE                          VAL R8
      460 CAPTURE                          VAL R82
      461 CAPTURE                          VAL R81
      462 GETTABLEKS                       R89 R21 K119 ["PureComponent"]
      464 GETIMPORT                        R91 K1 [script]
      466 GETTABLEKS                       R91 R91 K29 ["Name"]
      468 NAMECALL                         R89 R89 K120 ["extend"]
      470 CALL                             R89 2 1
      471 DUPCLOSURE                       R90 K121 [PROTO_46]
      472 CAPTURE                          VAL R11
      473 SETTABLEKS                       R90 R89 K122 ["hasPermissionToEdit"]
      475 DUPCLOSURE                       R90 K123 [PROTO_47]
      476 DUPCLOSURE                       R91 K124 [PROTO_55]
      477 CAPTURE                          VAL R60
      478 CAPTURE                          VAL R70
      479 CAPTURE                          VAL R73
      480 CAPTURE                          VAL R74
      481 CAPTURE                          VAL R75
      482 CAPTURE                          VAL R46
      483 CAPTURE                          VAL R21
      484 CAPTURE                          VAL R65
      485 CAPTURE                          VAL R71
      486 CAPTURE                          VAL R12
      487 CAPTURE                          VAL R68
      488 CAPTURE                          VAL R63
      489 CAPTURE                          VAL R47
      490 CAPTURE                          VAL R40
      491 CAPTURE                          VAL R34
      492 CAPTURE                          VAL R39
      493 SETTABLEKS                       R91 R89 K125 ["init"]
      495 NEWCLOSURE                       R91 P7
      496 CAPTURE                          VAL R47
      497 CAPTURE                          VAL R8
      498 CAPTURE                          VAL R21
      499 CAPTURE                          VAL R53
      500 CAPTURE                          VAL R63
      501 CAPTURE                          VAL R70
      502 CAPTURE                          VAL R5
      503 CAPTURE                          VAL R66
      504 CAPTURE                          VAL R32
      505 CAPTURE                          VAL R9
      506 CAPTURE                          VAL R61
      507 CAPTURE                          VAL R15
      508 CAPTURE                          VAL R16
      509 CAPTURE                          VAL R17
      510 CAPTURE                          VAL R19
      511 CAPTURE                          VAL R10
      512 CAPTURE                          VAL R18
      513 CAPTURE                          VAL R42
      514 CAPTURE                          VAL R38
      515 CAPTURE                          VAL R33
      516 CAPTURE                          VAL R54
      517 CAPTURE                          VAL R12
      518 CAPTURE                          VAL R7
      519 CAPTURE                          VAL R6
      520 CAPTURE                          VAL R3
      521 CAPTURE                          REF R28
      522 CAPTURE                          VAL R50
      523 CAPTURE                          VAL R44
      524 CAPTURE                          VAL R40
      525 CAPTURE                          VAL R68
      526 CAPTURE                          VAL R41
      527 CAPTURE                          VAL R29
      528 CAPTURE                          VAL R23
      529 CAPTURE                          VAL R4
      530 CAPTURE                          VAL R34
      531 CAPTURE                          VAL R30
      532 CAPTURE                          VAL R49
      533 CAPTURE                          VAL R64
      534 CAPTURE                          VAL R71
      535 CAPTURE                          VAL R52
      536 CAPTURE                          VAL R80
      537 CAPTURE                          VAL R67
      538 CAPTURE                          VAL R76
      539 CAPTURE                          VAL R1
      540 CAPTURE                          VAL R79
      541 CAPTURE                          VAL R48
      542 CAPTURE                          VAL R78
      543 CAPTURE                          VAL R77
      544 CAPTURE                          VAL R39
      545 CAPTURE                          VAL R35
      546 CAPTURE                          VAL R36
      547 CAPTURE                          VAL R51
      548 CAPTURE                          VAL R85
      549 CAPTURE                          VAL R86
      550 CAPTURE                          VAL R14
      551 SETTABLEKS                       R91 R89 K126 ["render"]
      553 DUPCLOSURE                       R91 K127 [PROTO_66]
      554 SETGLOBAL                        R91 K128 ["GetExperienceGenreString"]
      556 MOVE                             R91 R26
      557 DUPTABLE                         R92 K133 [{"Localization", "Stylizer", "Dialog", "Mouse", "Plugin"}]
      558 GETTABLEKS                       R93 R25 K129 ["Localization"]
      560 SETTABLEKS                       R93 R92 K129 ["Localization"]
      562 GETTABLEKS                       R93 R25 K130 ["Stylizer"]
      564 SETTABLEKS                       R93 R92 K130 ["Stylizer"]
      566 SETTABLEKS                       R27 R92 K53 ["Dialog"]
      568 GETTABLEKS                       R93 R25 K131 ["Mouse"]
      570 SETTABLEKS                       R93 R92 K131 ["Mouse"]
      572 JUMPIFNOT                        R8 ; [+3]
      573 GETTABLEKS                       R93 R25 K132 ["Plugin"]
      575 JUMP                             ; [+1]
      576 LOADNIL                          R93
      577 SETTABLEKS                       R93 R92 K132 ["Plugin"]
      579 CALL                             R91 1 1
      580 MOVE                             R92 R89
      581 CALL                             R91 1 1
      582 MOVE                             R89 R91
      583 GETIMPORT                        R91 K19 [require]
      585 GETTABLEKS                       R92 R0 K20 ["Src"]
      587 GETTABLEKS                       R92 R92 K134 ["Networking"]
      589 GETTABLEKS                       R92 R92 K135 ["settingFromState"]
      591 CALL                             R91 1 1
      592 GETTABLEKS                       R92 R22 K136 ["connect"]
      594 DUPCLOSURE                       R93 K137 [PROTO_68]
      595 CAPTURE                          VAL R91
      596 CAPTURE                          VAL R87
      597 DUPCLOSURE                       R94 K138 [PROTO_71]
      598 CAPTURE                          VAL R55
      599 CAPTURE                          VAL R88
      600 CALL                             R92 2 1
      601 MOVE                             R93 R89
      602 CALL                             R92 1 1
      603 MOVE                             R89 R92
      604 SETTABLEKS                       R14 R89 K139 ["LocalizationId"]
      606 CLOSEUPVALS                      R28
      607 RETURN                           R89 1
