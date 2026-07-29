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
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getExperienceGenre"]
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K1 ["experienceGenre"]
        7 RETURN                           R0 0

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
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R3
       42 NEWCLOSURE                       R16 P6
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R3
       45 NEWCLOSURE                       R17 P7
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R3
       48 NEWCLOSURE                       R18 P8
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R3
       51 NEWCLOSURE                       R19 P9
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R0
       55 CAPTURE                          UPVAL U2
       56 NEWCLOSURE                       R20 P10
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U3
       61 NEWCLOSURE                       R21 P11
       62 CAPTURE                          UPVAL U4
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R3
       65 CAPTURE                          UPVAL U5
       66 NEWCLOSURE                       R22 P12
       67 CAPTURE                          UPVAL U4
       68 CAPTURE                          UPVAL U6
       69 CAPTURE                          VAL R7
       70 NEWCLOSURE                       R23 P13
       71 CAPTURE                          UPVAL U4
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R8
       75 NEWCLOSURE                       R24 P14
       76 CAPTURE                          UPVAL U0
       77 CAPTURE                          VAL R5
       78 CAPTURE                          UPVAL U7
       79 NEWCLOSURE                       R25 P15
       80 CAPTURE                          UPVAL U0
       81 CAPTURE                          VAL R5
       82 CAPTURE                          UPVAL U8
       83 SETLIST                          R9 R10 16 [1]
       85 NEWCLOSURE                       R10 P16
       86 CAPTURE                          UPVAL U0
       87 CAPTURE                          VAL R5
       88 CAPTURE                          UPVAL U9
       89 SETLIST                          R9 R10 1 [17]
       91 RETURN                           R9 1

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

PROTO_61:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 2
        4 MOVE                             R3 R0
        5 NAMECALL                         R1 R1 K0 ["OpenBrowserWindow"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_62:
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
       45 DUPCLOSURE                       R5 K27 [PROTO_61]
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

PROTO_63:
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
       52 LOADNIL                          R6
       53 GETIMPORT                        R7 K13 [pcall]
       55 GETGLOBAL                        R8 K14 ["GetExperienceGenreString"]
       57 GETUPVAL                         R9 5
       58 GETTABLEKS                       R10 R0 K15 ["ExperienceGenre"]
       60 CALL                             R7 3 2
       61 JUMPIFNOT                        R7 ; [+2]
       62 MOVE                             R6 R8
       63 JUMP                             ; [+11]
       64 GETIMPORT                        R9 K17 [warn]
       66 LOADK                            R11 K18 ["Error calling GetExperienceGenreString: "]
       67 FASTCALL1                        TOSTRING R8 ; [+3]
       68 MOVE                             R13 R8
       69 GETIMPORT                        R12 K20 [tostring]
       71 CALL                             R12 1 1
       72 CONCAT                           R10 R11 R12
       73 CALL                             R9 1 0
       74 LOADNIL                          R6
       75 GETUPVAL                         R9 6
       76 CALL                             R9 0 1
       77 GETUPVAL                         R10 1
       78 GETTABLEKS                       R10 R10 K3 ["createElement"]
       80 GETUPVAL                         R11 7
       81 DUPTABLE                         R12 K23 [{"TextTruncate", "Items"}]
       82 GETIMPORT                        R13 K26 [Enum.TextTruncate.AtEnd]
       84 SETTABLEKS                       R13 R12 K21 ["TextTruncate"]
       86 NEWTABLE                         R13 0 3
       88 JUMPIFNOT                        R9 ; [+29]
       89 GETUPVAL                         R15 8
       90 CALL                             R15 0 1
       91 JUMPIFNOT                        R15 ; [+13]
       92 GETUPVAL                         R14 5
       93 LOADK                            R16 K27 ["General"]
       94 LOADK                            R17 K28 ["ThumbnailsLimitExp"]
       95 DUPTABLE                         R18 K30 [{"maxThumbnails"}]
       96 GETUPVAL                         R19 9
       97 GETTABLEKS                       R19 R19 K31 ["MAX_THUMBNAILS"]
       99 SETTABLEKS                       R19 R18 K29 ["maxThumbnails"]
      101 NAMECALL                         R14 R14 K32 ["getText"]
      103 CALL                             R14 4 1
      104 JUMP                             ; [+41]
      105 GETUPVAL                         R14 5
      106 LOADK                            R16 K27 ["General"]
      107 LOADK                            R17 K33 ["ThumbnailsLimit"]
      108 DUPTABLE                         R18 K30 [{"maxThumbnails"}]
      109 GETUPVAL                         R19 9
      110 GETTABLEKS                       R19 R19 K31 ["MAX_THUMBNAILS"]
      112 SETTABLEKS                       R19 R18 K29 ["maxThumbnails"]
      114 NAMECALL                         R14 R14 K32 ["getText"]
      116 CALL                             R14 4 1
      117 JUMP                             ; [+28]
      118 GETUPVAL                         R15 8
      119 CALL                             R15 0 1
      120 JUMPIFNOT                        R15 ; [+13]
      121 GETUPVAL                         R14 5
      122 LOADK                            R16 K27 ["General"]
      123 LOADK                            R17 K34 ["ThumbnailsLimitLuobuExp"]
      124 DUPTABLE                         R18 K30 [{"maxThumbnails"}]
      125 GETUPVAL                         R19 9
      126 GETTABLEKS                       R19 R19 K31 ["MAX_THUMBNAILS"]
      128 SETTABLEKS                       R19 R18 K29 ["maxThumbnails"]
      130 NAMECALL                         R14 R14 K32 ["getText"]
      132 CALL                             R14 4 1
      133 JUMP                             ; [+12]
      134 GETUPVAL                         R14 5
      135 LOADK                            R16 K27 ["General"]
      136 LOADK                            R17 K35 ["ThumbnailsLimitLuobu"]
      137 DUPTABLE                         R18 K30 [{"maxThumbnails"}]
      138 GETUPVAL                         R19 9
      139 GETTABLEKS                       R19 R19 K31 ["MAX_THUMBNAILS"]
      141 SETTABLEKS                       R19 R18 K29 ["maxThumbnails"]
      143 NAMECALL                         R14 R14 K32 ["getText"]
      145 CALL                             R14 4 1
      146 GETUPVAL                         R15 5
      147 LOADK                            R17 K27 ["General"]
      148 LOADK                            R18 K36 ["ThumbnailsHint"]
      149 DUPTABLE                         R19 K38 [{"fileTypes"}]
      150 GETIMPORT                        R20 K41 [table.concat]
      152 GETUPVAL                         R21 9
      153 GETTABLEKS                       R21 R21 K42 ["IMAGE_TYPES"]
      155 LOADK                            R22 K43 [", "]
      156 CALL                             R20 2 1
      157 SETTABLEKS                       R20 R19 K37 ["fileTypes"]
      159 NAMECALL                         R15 R15 K32 ["getText"]
      161 CALL                             R15 4 1
      162 GETUPVAL                         R16 5
      163 LOADK                            R18 K27 ["General"]
      164 LOADK                            R19 K44 ["ThumbnailsModeration"]
      165 NAMECALL                         R16 R16 K32 ["getText"]
      167 CALL                             R16 3 -1
      168 SETLIST                          R13 R14 -1 [1]
      170 SETTABLEKS                       R13 R12 K22 ["Items"]
      172 CALL                             R10 2 1
      173 LOADNIL                          R11
      174 GETTABLEKS                       R12 R0 K45 ["NameError"]
      176 JUMPIFNOT                        R12 ; [+15]
      177 GETUPVAL                         R13 10
      178 GETTABLEKS                       R14 R0 K45 ["NameError"]
      180 GETTABLE                         R12 R13 R14
      181 JUMPIFNOT                        R12 ; [+10]
      182 GETUPVAL                         R12 5
      183 LOADK                            R14 K27 ["General"]
      184 GETUPVAL                         R16 10
      185 GETTABLEKS                       R17 R0 K45 ["NameError"]
      187 GETTABLE                         R15 R16 R17
      188 NAMECALL                         R12 R12 K32 ["getText"]
      190 CALL                             R12 3 1
      191 MOVE                             R11 R12
      192 LOADNIL                          R12
      193 GETTABLEKS                       R13 R0 K46 ["DescriptionError"]
      195 JUMPIFNOT                        R13 ; [+15]
      196 GETUPVAL                         R14 11
      197 GETTABLEKS                       R15 R0 K46 ["DescriptionError"]
      199 GETTABLE                         R13 R14 R15
      200 JUMPIFNOT                        R13 ; [+10]
      201 GETUPVAL                         R13 5
      202 LOADK                            R15 K27 ["General"]
      203 GETUPVAL                         R17 11
      204 GETTABLEKS                       R18 R0 K46 ["DescriptionError"]
      206 GETTABLE                         R16 R17 R18
      207 NAMECALL                         R13 R13 K32 ["getText"]
      209 CALL                             R13 3 1
      210 MOVE                             R12 R13
      211 LOADNIL                          R13
      212 GETTABLEKS                       R14 R0 K47 ["GameIconError"]
      214 JUMPIFNOT                        R14 ; [+15]
      215 GETUPVAL                         R15 12
      216 GETTABLEKS                       R16 R0 K47 ["GameIconError"]
      218 GETTABLE                         R14 R15 R16
      219 JUMPIFNOT                        R14 ; [+10]
      220 GETUPVAL                         R14 5
      221 LOADK                            R16 K27 ["General"]
      222 GETUPVAL                         R18 12
      223 GETTABLEKS                       R19 R0 K47 ["GameIconError"]
      225 GETTABLE                         R17 R18 R19
      226 NAMECALL                         R14 R14 K32 ["getText"]
      228 CALL                             R14 3 1
      229 MOVE                             R13 R14
      230 LOADNIL                          R14
      231 GETTABLEKS                       R15 R0 K48 ["ThumbnailsError"]
      233 JUMPIFNOT                        R15 ; [+15]
      234 GETUPVAL                         R16 12
      235 GETTABLEKS                       R17 R0 K48 ["ThumbnailsError"]
      237 GETTABLE                         R15 R16 R17
      238 JUMPIFNOT                        R15 ; [+10]
      239 GETUPVAL                         R15 5
      240 LOADK                            R17 K27 ["General"]
      241 GETUPVAL                         R19 12
      242 GETTABLEKS                       R20 R0 K48 ["ThumbnailsError"]
      244 GETTABLE                         R18 R19 R20
      245 NAMECALL                         R15 R15 K32 ["getText"]
      247 CALL                             R15 3 1
      248 MOVE                             R14 R15
      249 LOADNIL                          R15
      250 GETTABLEKS                       R16 R0 K49 ["AltTextError"]
      252 JUMPIFNOT                        R16 ; [+24]
      253 GETTABLEKS                       R16 R0 K49 ["AltTextError"]
      255 GETTABLEKS                       R16 R16 K50 ["Error"]
      257 JUMPIFNOT                        R16 ; [+19]
      258 GETUPVAL                         R17 13
      259 GETTABLEKS                       R18 R0 K49 ["AltTextError"]
      261 GETTABLEKS                       R18 R18 K50 ["Error"]
      263 GETTABLE                         R16 R17 R18
      264 JUMPIFNOT                        R16 ; [+12]
      265 GETUPVAL                         R16 5
      266 LOADK                            R18 K27 ["General"]
      267 GETUPVAL                         R20 13
      268 GETTABLEKS                       R21 R0 K49 ["AltTextError"]
      270 GETTABLEKS                       R21 R21 K50 ["Error"]
      272 GETTABLE                         R19 R20 R21
      273 NAMECALL                         R16 R16 K32 ["getText"]
      275 CALL                             R16 3 1
      276 MOVE                             R15 R16
      277 LOADNIL                          R16
      278 GETUPVAL                         R17 14
      279 CALL                             R17 0 1
      280 JUMPIFNOT                        R17 ; [+18]
      281 GETTABLEKS                       R17 R0 K51 ["PlayableDevicesError"]
      283 JUMPIFNOT                        R17 ; [+15]
      284 GETUPVAL                         R18 15
      285 GETTABLEKS                       R19 R0 K51 ["PlayableDevicesError"]
      287 GETTABLE                         R17 R18 R19
      288 JUMPIFNOT                        R17 ; [+10]
      289 GETUPVAL                         R17 5
      290 LOADK                            R19 K27 ["General"]
      291 GETUPVAL                         R21 15
      292 GETTABLEKS                       R22 R0 K51 ["PlayableDevicesError"]
      294 GETTABLE                         R20 R21 R22
      295 NAMECALL                         R17 R17 K32 ["getText"]
      297 CALL                             R17 3 1
      298 MOVE                             R16 R17
      299 GETUPVAL                         R17 16
      300 JUMPIFNOT                        R17 ; [+287]
      301 LOADB                            R17 0
      302 GETTABLEKS                       R18 R0 K52 ["PendingTeamCreateEnabled"]
      304 JUMPIFEQKNIL                     R18 ; [+8]
      306 GETTABLEKS                       R18 R0 K52 ["PendingTeamCreateEnabled"]
      308 GETUPVAL                         R19 17
      309 JUMPIFNOTEQ                      R18 R19 ; [+2]
      311 LOADB                            R17 0 +1
      312 LOADB                            R17 1
      313 DUPTABLE                         R18 K60 [{"Name", "Description", "Separator", "EnableTeamCreate", "EnableScriptCollab", "Separator2", "Guidelines"}]
      314 GETUPVAL                         R19 1
      315 GETTABLEKS                       R19 R19 K3 ["createElement"]
      317 GETUPVAL                         R20 18
      318 DUPTABLE                         R21 K63 [{"LayoutOrder", "Title"}]
      319 GETUPVAL                         R22 19
      320 NAMECALL                         R22 R22 K64 ["getNextOrder"]
      322 CALL                             R22 1 1
      323 SETTABLEKS                       R22 R21 K61 ["LayoutOrder"]
      325 GETUPVAL                         R22 5
      326 LOADK                            R24 K27 ["General"]
      327 LOADK                            R25 K65 ["TitleName"]
      328 NAMECALL                         R22 R22 K32 ["getText"]
      330 CALL                             R22 3 1
      331 SETTABLEKS                       R22 R21 K62 ["Title"]
      333 DUPTABLE                         R22 K67 [{"TextBox"}]
      334 GETUPVAL                         R23 1
      335 GETTABLEKS                       R23 R23 K3 ["createElement"]
      337 GETUPVAL                         R24 20
      338 DUPTABLE                         R25 K74 [{["Disabled"], ["ErrorText"], ["MaxLength"] = 50, ["OnTextChanged"], ["Text"]}]
      339 GETTABLEKS                       R27 R0 K53 ["Name"]
      341 JUMPIFEQKNIL                     R27 ; [+2]
      343 LOADB                            R26 0 +1
      344 LOADB                            R26 1
      345 SETTABLEKS                       R26 R25 K68 ["Disabled"]
      347 SETTABLEKS                       R11 R25 K69 ["ErrorText"]
      349 GETTABLEKS                       R26 R0 K75 ["NameChanged"]
      351 SETTABLEKS                       R26 R25 K72 ["OnTextChanged"]
      353 GETTABLEKS                       R27 R0 K53 ["Name"]
      355 ORK                              R26 R27 K76 [""]
      356 SETTABLEKS                       R26 R25 K73 ["Text"]
      358 CALL                             R23 2 1
      359 SETTABLEKS                       R23 R22 K66 ["TextBox"]
      361 CALL                             R19 3 1
      362 SETTABLEKS                       R19 R18 K53 ["Name"]
      364 GETUPVAL                         R19 1
      365 GETTABLEKS                       R19 R19 K3 ["createElement"]
      367 GETUPVAL                         R20 18
      368 DUPTABLE                         R21 K63 [{"LayoutOrder", "Title"}]
      369 GETUPVAL                         R22 19
      370 NAMECALL                         R22 R22 K64 ["getNextOrder"]
      372 CALL                             R22 1 1
      373 SETTABLEKS                       R22 R21 K61 ["LayoutOrder"]
      375 GETUPVAL                         R22 5
      376 LOADK                            R24 K27 ["General"]
      377 LOADK                            R25 K77 ["TitleDescription"]
      378 NAMECALL                         R22 R22 K32 ["getText"]
      380 CALL                             R22 3 1
      381 SETTABLEKS                       R22 R21 K62 ["Title"]
      383 DUPTABLE                         R22 K67 [{"TextBox"}]
      384 GETUPVAL                         R23 1
      385 GETTABLEKS                       R23 R23 K3 ["createElement"]
      387 GETUPVAL                         R24 20
      388 DUPTABLE                         R25 K83 [{["Disabled"], ["ErrorText"], ["MaxLength"] = 1000, ["MultiLine"] = True, ["OnTextChanged"], ["Height"] = 130, ["Text"]}]
      389 GETTABLEKS                       R27 R0 K54 ["Description"]
      391 JUMPIFEQKNIL                     R27 ; [+2]
      393 LOADB                            R26 0 +1
      394 LOADB                            R26 1
      395 SETTABLEKS                       R26 R25 K68 ["Disabled"]
      397 SETTABLEKS                       R12 R25 K69 ["ErrorText"]
      399 GETTABLEKS                       R26 R0 K84 ["DescriptionChanged"]
      401 SETTABLEKS                       R26 R25 K72 ["OnTextChanged"]
      403 GETTABLEKS                       R27 R0 K54 ["Description"]
      405 ORK                              R26 R27 K76 [""]
      406 SETTABLEKS                       R26 R25 K73 ["Text"]
      408 CALL                             R23 2 1
      409 SETTABLEKS                       R23 R22 K66 ["TextBox"]
      411 CALL                             R19 3 1
      412 SETTABLEKS                       R19 R18 K54 ["Description"]
      414 GETUPVAL                         R19 1
      415 GETTABLEKS                       R19 R19 K3 ["createElement"]
      417 GETUPVAL                         R20 21
      418 DUPTABLE                         R21 K85 [{"LayoutOrder"}]
      419 GETUPVAL                         R22 19
      420 NAMECALL                         R22 R22 K64 ["getNextOrder"]
      422 CALL                             R22 1 1
      423 SETTABLEKS                       R22 R21 K61 ["LayoutOrder"]
      425 CALL                             R19 2 1
      426 SETTABLEKS                       R19 R18 K55 ["Separator"]
      428 GETUPVAL                         R19 1
      429 GETTABLEKS                       R19 R19 K3 ["createElement"]
      431 GETUPVAL                         R20 22
      432 DUPTABLE                         R21 K90 [{"Title", "LayoutOrder", "Selected", "WarningTooltipText", "OnClick", "LinkProps"}]
      433 GETUPVAL                         R22 5
      434 LOADK                            R24 K27 ["General"]
      435 LOADK                            R25 K91 ["TitleEnableTeamCreate"]
      436 NAMECALL                         R22 R22 K32 ["getText"]
      438 CALL                             R22 3 1
      439 SETTABLEKS                       R22 R21 K62 ["Title"]
      441 GETUPVAL                         R22 19
      442 NAMECALL                         R22 R22 K64 ["getNextOrder"]
      444 CALL                             R22 1 1
      445 SETTABLEKS                       R22 R21 K61 ["LayoutOrder"]
      447 GETTABLEKS                       R23 R0 K52 ["PendingTeamCreateEnabled"]
      449 JUMPIFEQKNIL                     R23 ; [+4]
      451 GETTABLEKS                       R22 R0 K52 ["PendingTeamCreateEnabled"]
      453 JUMP                             ; [+1]
      454 GETUPVAL                         R22 17
      455 SETTABLEKS                       R22 R21 K86 ["Selected"]
      457 JUMPIFNOT                        R17 ; [+7]
      458 GETUPVAL                         R22 5
      459 LOADK                            R24 K27 ["General"]
      460 LOADK                            R25 K92 ["TeamCreateChangeWarningTooltip"]
      461 NAMECALL                         R22 R22 K32 ["getText"]
      463 CALL                             R22 3 1
      464 JUMP                             ; [+1]
      465 LOADNIL                          R22
      466 SETTABLEKS                       R22 R21 K87 ["WarningTooltipText"]
      468 NEWCLOSURE                       R22 P0
      469 CAPTURE                          VAL R0
      470 CAPTURE                          UPVAL U17
      471 SETTABLEKS                       R22 R21 K88 ["OnClick"]
      473 DUPTABLE                         R22 K95 [{"Text", "LinkText", "OnLinkClicked"}]
      474 GETUPVAL                         R23 5
      475 LOADK                            R25 K27 ["General"]
      476 LOADK                            R26 K96 ["EnableTeamCreateDescription"]
      477 NAMECALL                         R23 R23 K32 ["getText"]
      479 CALL                             R23 3 1
      480 SETTABLEKS                       R23 R22 K73 ["Text"]
      482 GETUPVAL                         R23 5
      483 LOADK                            R25 K27 ["General"]
      484 LOADK                            R26 K97 ["LearnMoreLink"]
      485 NAMECALL                         R23 R23 K32 ["getText"]
      487 CALL                             R23 3 1
      488 SETTABLEKS                       R23 R22 K93 ["LinkText"]
      490 DUPCLOSURE                       R23 K98 [PROTO_57]
      491 CAPTURE                          UPVAL U23
      492 CAPTURE                          UPVAL U24
      493 SETTABLEKS                       R23 R22 K94 ["OnLinkClicked"]
      495 SETTABLEKS                       R22 R21 K89 ["LinkProps"]
      497 CALL                             R19 2 1
      498 SETTABLEKS                       R19 R18 K56 ["EnableTeamCreate"]
      500 GETUPVAL                         R19 1
      501 GETTABLEKS                       R19 R19 K3 ["createElement"]
      503 GETUPVAL                         R20 22
      504 DUPTABLE                         R21 K100 [{"Title", "Description", "LayoutOrder", "Disabled", "Selected", "ShowWarning", "OnClick"}]
      505 GETUPVAL                         R22 5
      506 LOADK                            R24 K27 ["General"]
      507 LOADK                            R25 K101 ["TitleScriptDraftsMode"]
      508 NAMECALL                         R22 R22 K32 ["getText"]
      510 CALL                             R22 3 1
      511 SETTABLEKS                       R22 R21 K62 ["Title"]
      513 GETUPVAL                         R22 25
      514 SETTABLEKS                       R22 R21 K54 ["Description"]
      516 GETUPVAL                         R22 19
      517 NAMECALL                         R22 R22 K64 ["getNextOrder"]
      519 CALL                             R22 1 1
      520 SETTABLEKS                       R22 R21 K61 ["LayoutOrder"]
      522 GETUPVAL                         R23 17
      523 NOT                              R22 R23
      524 SETTABLEKS                       R22 R21 K68 ["Disabled"]
      526 GETTABLEKS                       R22 R0 K102 ["ScriptCollabEnabled"]
      528 SETTABLEKS                       R22 R21 K86 ["Selected"]
      530 GETUPVAL                         R22 26
      531 SETTABLEKS                       R22 R21 K99 ["ShowWarning"]
      533 NEWCLOSURE                       R22 P2
      534 CAPTURE                          VAL R0
      535 SETTABLEKS                       R22 R21 K88 ["OnClick"]
      537 CALL                             R19 2 1
      538 SETTABLEKS                       R19 R18 K57 ["EnableScriptCollab"]
      540 GETUPVAL                         R20 27
      541 JUMPIF                           R20 ; [+13]
      542 GETUPVAL                         R19 1
      543 GETTABLEKS                       R19 R19 K3 ["createElement"]
      545 GETUPVAL                         R20 21
      546 DUPTABLE                         R21 K85 [{"LayoutOrder"}]
      547 GETUPVAL                         R22 19
      548 NAMECALL                         R22 R22 K64 ["getNextOrder"]
      550 CALL                             R22 1 1
      551 SETTABLEKS                       R22 R21 K61 ["LayoutOrder"]
      553 CALL                             R19 2 1
      554 JUMP                             ; [+1]
      555 LOADNIL                          R19
      556 SETTABLEKS                       R19 R18 K58 ["Separator2"]
      558 GETUPVAL                         R20 27
      559 JUMPIF                           R20 ; [+23]
      560 GETUPVAL                         R20 28
      561 JUMPIFNOT                        R20 ; [+21]
      562 GETUPVAL                         R19 1
      563 GETTABLEKS                       R19 R19 K3 ["createElement"]
      565 GETUPVAL                         R20 29
      566 DUPTABLE                         R21 K105 [{"LayoutOrder", "GameGuideline", "GameId"}]
      567 GETUPVAL                         R22 19
      568 NAMECALL                         R22 R22 K64 ["getNextOrder"]
      570 CALL                             R22 1 1
      571 SETTABLEKS                       R22 R21 K61 ["LayoutOrder"]
      573 GETTABLEKS                       R22 R0 K59 ["Guidelines"]
      575 SETTABLEKS                       R22 R21 K103 ["GameGuideline"]
      577 GETTABLEKS                       R22 R0 K104 ["GameId"]
      579 SETTABLEKS                       R22 R21 K104 ["GameId"]
      581 CALL                             R19 2 1
      582 JUMP                             ; [+1]
      583 LOADNIL                          R19
      584 SETTABLEKS                       R19 R18 K59 ["Guidelines"]
      586 CLOSEUPVALS                      R3
      587 RETURN                           R18 1
      588 DUPTABLE                         R17 K116 [{"Name", "Description", "Separator", "Guidelines", "Separator2", "Icon", "Separator3", "Thumbnails", "Separator4", "Genre", "Separator5", "CreatorRestriction", "Separator6", "Devices", "Separator7", "OptInLocations"}]
      589 GETUPVAL                         R18 1
      590 GETTABLEKS                       R18 R18 K3 ["createElement"]
      592 GETUPVAL                         R19 18
      593 DUPTABLE                         R20 K63 [{"LayoutOrder", "Title"}]
      594 GETUPVAL                         R21 19
      595 NAMECALL                         R21 R21 K64 ["getNextOrder"]
      597 CALL                             R21 1 1
      598 SETTABLEKS                       R21 R20 K61 ["LayoutOrder"]
      600 GETUPVAL                         R21 5
      601 LOADK                            R23 K27 ["General"]
      602 LOADK                            R24 K65 ["TitleName"]
      603 NAMECALL                         R21 R21 K32 ["getText"]
      605 CALL                             R21 3 1
      606 SETTABLEKS                       R21 R20 K62 ["Title"]
      608 DUPTABLE                         R21 K67 [{"TextBox"}]
      609 GETUPVAL                         R22 1
      610 GETTABLEKS                       R22 R22 K3 ["createElement"]
      612 GETUPVAL                         R23 20
      613 DUPTABLE                         R24 K74 [{["Disabled"], ["ErrorText"], ["MaxLength"] = 50, ["OnTextChanged"], ["Text"]}]
      614 GETTABLEKS                       R26 R0 K53 ["Name"]
      616 JUMPIFEQKNIL                     R26 ; [+2]
      618 LOADB                            R25 0 +1
      619 LOADB                            R25 1
      620 SETTABLEKS                       R25 R24 K68 ["Disabled"]
      622 SETTABLEKS                       R11 R24 K69 ["ErrorText"]
      624 GETTABLEKS                       R25 R0 K75 ["NameChanged"]
      626 SETTABLEKS                       R25 R24 K72 ["OnTextChanged"]
      628 GETTABLEKS                       R26 R0 K53 ["Name"]
      630 ORK                              R25 R26 K76 [""]
      631 SETTABLEKS                       R25 R24 K73 ["Text"]
      633 CALL                             R22 2 1
      634 SETTABLEKS                       R22 R21 K66 ["TextBox"]
      636 CALL                             R18 3 1
      637 SETTABLEKS                       R18 R17 K53 ["Name"]
      639 GETUPVAL                         R18 1
      640 GETTABLEKS                       R18 R18 K3 ["createElement"]
      642 GETUPVAL                         R19 18
      643 DUPTABLE                         R20 K63 [{"LayoutOrder", "Title"}]
      644 GETUPVAL                         R21 19
      645 NAMECALL                         R21 R21 K64 ["getNextOrder"]
      647 CALL                             R21 1 1
      648 SETTABLEKS                       R21 R20 K61 ["LayoutOrder"]
      650 GETUPVAL                         R21 5
      651 LOADK                            R23 K27 ["General"]
      652 LOADK                            R24 K77 ["TitleDescription"]
      653 NAMECALL                         R21 R21 K32 ["getText"]
      655 CALL                             R21 3 1
      656 SETTABLEKS                       R21 R20 K62 ["Title"]
      658 DUPTABLE                         R21 K67 [{"TextBox"}]
      659 GETUPVAL                         R22 1
      660 GETTABLEKS                       R22 R22 K3 ["createElement"]
      662 GETUPVAL                         R23 20
      663 DUPTABLE                         R24 K83 [{["Disabled"], ["ErrorText"], ["MaxLength"] = 1000, ["MultiLine"] = True, ["OnTextChanged"], ["Height"] = 130, ["Text"]}]
      664 GETTABLEKS                       R26 R0 K54 ["Description"]
      666 JUMPIFEQKNIL                     R26 ; [+2]
      668 LOADB                            R25 0 +1
      669 LOADB                            R25 1
      670 SETTABLEKS                       R25 R24 K68 ["Disabled"]
      672 SETTABLEKS                       R12 R24 K69 ["ErrorText"]
      674 GETTABLEKS                       R25 R0 K84 ["DescriptionChanged"]
      676 SETTABLEKS                       R25 R24 K72 ["OnTextChanged"]
      678 GETTABLEKS                       R26 R0 K54 ["Description"]
      680 ORK                              R25 R26 K76 [""]
      681 SETTABLEKS                       R25 R24 K73 ["Text"]
      683 CALL                             R22 2 1
      684 SETTABLEKS                       R22 R21 K66 ["TextBox"]
      686 CALL                             R18 3 1
      687 SETTABLEKS                       R18 R17 K54 ["Description"]
      689 GETUPVAL                         R18 1
      690 GETTABLEKS                       R18 R18 K3 ["createElement"]
      692 GETUPVAL                         R19 21
      693 DUPTABLE                         R20 K85 [{"LayoutOrder"}]
      694 GETUPVAL                         R21 19
      695 NAMECALL                         R21 R21 K64 ["getNextOrder"]
      697 CALL                             R21 1 1
      698 SETTABLEKS                       R21 R20 K61 ["LayoutOrder"]
      700 CALL                             R18 2 1
      701 SETTABLEKS                       R18 R17 K55 ["Separator"]
      703 GETUPVAL                         R19 28
      704 JUMPIFNOT                        R19 ; [+21]
      705 GETUPVAL                         R18 1
      706 GETTABLEKS                       R18 R18 K3 ["createElement"]
      708 GETUPVAL                         R19 29
      709 DUPTABLE                         R20 K105 [{"LayoutOrder", "GameGuideline", "GameId"}]
      710 GETUPVAL                         R21 19
      711 NAMECALL                         R21 R21 K64 ["getNextOrder"]
      713 CALL                             R21 1 1
      714 SETTABLEKS                       R21 R20 K61 ["LayoutOrder"]
      716 GETTABLEKS                       R21 R0 K59 ["Guidelines"]
      718 SETTABLEKS                       R21 R20 K103 ["GameGuideline"]
      720 GETTABLEKS                       R21 R0 K104 ["GameId"]
      722 SETTABLEKS                       R21 R20 K104 ["GameId"]
      724 CALL                             R18 2 1
      725 JUMP                             ; [+1]
      726 LOADNIL                          R18
      727 SETTABLEKS                       R18 R17 K59 ["Guidelines"]
      729 GETUPVAL                         R19 28
      730 JUMPIFNOT                        R19 ; [+13]
      731 GETUPVAL                         R18 1
      732 GETTABLEKS                       R18 R18 K3 ["createElement"]
      734 GETUPVAL                         R19 21
      735 DUPTABLE                         R20 K85 [{"LayoutOrder"}]
      736 GETUPVAL                         R21 19
      737 NAMECALL                         R21 R21 K64 ["getNextOrder"]
      739 CALL                             R21 1 1
      740 SETTABLEKS                       R21 R20 K61 ["LayoutOrder"]
      742 CALL                             R18 2 1
      743 JUMP                             ; [+1]
      744 LOADNIL                          R18
      745 SETTABLEKS                       R18 R17 K58 ["Separator2"]
      747 GETUPVAL                         R18 1
      748 GETTABLEKS                       R18 R18 K3 ["createElement"]
      750 GETUPVAL                         R19 30
      751 DUPTABLE                         R20 K121 [{["Title"], ["LayoutOrder"], ["Enabled"], ["Icon"], ["TutorialEnabled"] = True, ["AddIcon"], ["ErrorMessage"]}]
      752 GETUPVAL                         R22 8
      753 CALL                             R22 0 1
      754 JUMPIFNOT                        R22 ; [+7]
      755 GETUPVAL                         R21 5
      756 LOADK                            R23 K27 ["General"]
      757 LOADK                            R24 K122 ["TitleExperienceIcon"]
      758 NAMECALL                         R21 R21 K32 ["getText"]
      760 CALL                             R21 3 1
      761 JUMP                             ; [+6]
      762 GETUPVAL                         R21 5
      763 LOADK                            R23 K27 ["General"]
      764 LOADK                            R24 K123 ["TitleGameIcon"]
      765 NAMECALL                         R21 R21 K32 ["getText"]
      767 CALL                             R21 3 1
      768 SETTABLEKS                       R21 R20 K62 ["Title"]
      770 GETUPVAL                         R21 19
      771 NAMECALL                         R21 R21 K64 ["getNextOrder"]
      773 CALL                             R21 1 1
      774 SETTABLEKS                       R21 R20 K61 ["LayoutOrder"]
      776 GETTABLEKS                       R22 R0 K124 ["GameIcon"]
      778 JUMPIFNOTEQKNIL                  R22 ; [+2]
      780 LOADB                            R21 0 +1
      781 LOADB                            R21 1
      782 SETTABLEKS                       R21 R20 K117 ["Enabled"]
      784 GETTABLEKS                       R21 R0 K124 ["GameIcon"]
      786 SETTABLEKS                       R21 R20 K106 ["Icon"]
      788 GETUPVAL                         R21 0
      789 GETTABLEKS                       R21 R21 K125 ["addIcons"]
      791 SETTABLEKS                       R21 R20 K119 ["AddIcon"]
      793 SETTABLEKS                       R13 R20 K120 ["ErrorMessage"]
      795 CALL                             R18 2 1
      796 SETTABLEKS                       R18 R17 K106 ["Icon"]
      798 GETUPVAL                         R18 1
      799 GETTABLEKS                       R18 R18 K3 ["createElement"]
      801 GETUPVAL                         R19 21
      802 DUPTABLE                         R20 K85 [{"LayoutOrder"}]
      803 GETUPVAL                         R21 19
      804 NAMECALL                         R21 R21 K64 ["getNextOrder"]
      806 CALL                             R21 1 1
      807 SETTABLEKS                       R21 R20 K61 ["LayoutOrder"]
      809 CALL                             R18 2 1
      810 SETTABLEKS                       R18 R17 K107 ["Separator3"]
      812 GETUPVAL                         R18 1
      813 GETTABLEKS                       R18 R18 K3 ["createElement"]
      815 GETUPVAL                         R19 31
      816 DUPTABLE                         R20 K132 [{"LayoutOrder", "Enabled", "Thumbnails", "Order", "Notes", "IsVideoAllowed", "AddThumbnail", "ErrorMessage", "ThumbnailsChanged", "ThumbnailOrderChanged", "AltTextError"}]
      817 GETUPVAL                         R21 19
      818 NAMECALL                         R21 R21 K64 ["getNextOrder"]
      820 CALL                             R21 1 1
      821 SETTABLEKS                       R21 R20 K61 ["LayoutOrder"]
      823 GETTABLEKS                       R22 R0 K108 ["Thumbnails"]
      825 JUMPIFNOTEQKNIL                  R22 ; [+2]
      827 LOADB                            R21 0 +1
      828 LOADB                            R21 1
      829 SETTABLEKS                       R21 R20 K117 ["Enabled"]
      831 GETTABLEKS                       R21 R0 K108 ["Thumbnails"]
      833 SETTABLEKS                       R21 R20 K108 ["Thumbnails"]
      835 GETTABLEKS                       R21 R0 K133 ["ThumbnailOrder"]
      837 SETTABLEKS                       R21 R20 K126 ["Order"]
      839 SETTABLEKS                       R10 R20 K127 ["Notes"]
      841 SETTABLEKS                       R9 R20 K128 ["IsVideoAllowed"]
      843 GETUPVAL                         R21 0
      844 GETTABLEKS                       R21 R21 K134 ["addThumbnails"]
      846 SETTABLEKS                       R21 R20 K129 ["AddThumbnail"]
      848 SETTABLEKS                       R14 R20 K120 ["ErrorMessage"]
      850 GETTABLEKS                       R21 R0 K130 ["ThumbnailsChanged"]
      852 SETTABLEKS                       R21 R20 K130 ["ThumbnailsChanged"]
      854 GETTABLEKS                       R21 R0 K131 ["ThumbnailOrderChanged"]
      856 SETTABLEKS                       R21 R20 K131 ["ThumbnailOrderChanged"]
      858 DUPTABLE                         R21 K136 [{"ThumbnailId", "ErrorMessage"}]
      859 GETTABLEKS                       R23 R0 K49 ["AltTextError"]
      861 JUMPIFNOT                        R23 ; [+5]
      862 GETTABLEKS                       R22 R0 K49 ["AltTextError"]
      864 GETTABLEKS                       R22 R22 K135 ["ThumbnailId"]
      866 JUMP                             ; [+1]
      867 LOADNIL                          R22
      868 SETTABLEKS                       R22 R21 K135 ["ThumbnailId"]
      870 SETTABLEKS                       R15 R21 K120 ["ErrorMessage"]
      872 SETTABLEKS                       R21 R20 K49 ["AltTextError"]
      874 CALL                             R18 2 1
      875 SETTABLEKS                       R18 R17 K108 ["Thumbnails"]
      877 GETUPVAL                         R18 1
      878 GETTABLEKS                       R18 R18 K3 ["createElement"]
      880 GETUPVAL                         R19 21
      881 DUPTABLE                         R20 K85 [{"LayoutOrder"}]
      882 GETUPVAL                         R21 19
      883 NAMECALL                         R21 R21 K64 ["getNextOrder"]
      885 CALL                             R21 1 1
      886 SETTABLEKS                       R21 R20 K61 ["LayoutOrder"]
      888 CALL                             R18 2 1
      889 SETTABLEKS                       R18 R17 K109 ["Separator4"]
      891 GETUPVAL                         R18 1
      892 GETTABLEKS                       R18 R18 K3 ["createElement"]
      894 GETUPVAL                         R19 18
      895 DUPTABLE                         R20 K63 [{"LayoutOrder", "Title"}]
      896 GETUPVAL                         R21 19
      897 NAMECALL                         R21 R21 K64 ["getNextOrder"]
      899 CALL                             R21 1 1
      900 SETTABLEKS                       R21 R20 K61 ["LayoutOrder"]
      902 GETUPVAL                         R21 5
      903 LOADK                            R23 K27 ["General"]
      904 LOADK                            R24 K137 ["TitleGenre"]
      905 NAMECALL                         R21 R21 K32 ["getText"]
      907 CALL                             R21 3 1
      908 SETTABLEKS                       R21 R20 K62 ["Title"]
      910 DUPTABLE                         R21 K139 [{"ExperienceGenre", "GenreHelperText"}]
      911 GETUPVAL                         R22 1
      912 GETTABLEKS                       R22 R22 K3 ["createElement"]
      914 GETUPVAL                         R23 32
      915 DUPTABLE                         R24 K145 [{"Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize", "TextXAlignment"}]
      916 GETUPVAL                         R25 33
      917 GETTABLEKS                       R25 R25 K146 ["fontStyle"]
      919 GETTABLEKS                       R25 R25 K147 ["Normal"]
      921 GETTABLEKS                       R25 R25 K140 ["Font"]
      923 SETTABLEKS                       R25 R24 K140 ["Font"]
      925 GETUPVAL                         R25 19
      926 NAMECALL                         R25 R25 K64 ["getNextOrder"]
      928 CALL                             R25 1 1
      929 SETTABLEKS                       R25 R24 K61 ["LayoutOrder"]
      931 GETIMPORT                        R25 K150 [UDim2.new]
      933 LOADN                            R26 0
      934 GETUPVAL                         R27 34
      935 MOVE                             R28 R6
      936 GETUPVAL                         R29 33
      937 GETTABLEKS                       R29 R29 K146 ["fontStyle"]
      939 GETTABLEKS                       R29 R29 K147 ["Normal"]
      941 GETTABLEKS                       R29 R29 K143 ["TextSize"]
      943 GETUPVAL                         R30 33
      944 GETTABLEKS                       R30 R30 K146 ["fontStyle"]
      946 GETTABLEKS                       R30 R30 K147 ["Normal"]
      948 GETTABLEKS                       R30 R30 K140 ["Font"]
      950 CALL                             R27 3 1
      951 GETTABLEKS                       R27 R27 K151 ["X"]
      953 LOADN                            R28 0
      954 GETUPVAL                         R29 33
      955 GETTABLEKS                       R29 R29 K146 ["fontStyle"]
      957 GETTABLEKS                       R29 R29 K147 ["Normal"]
      959 GETTABLEKS                       R29 R29 K143 ["TextSize"]
      961 CALL                             R25 4 1
      962 SETTABLEKS                       R25 R24 K141 ["Size"]
      964 SETTABLEKS                       R6 R24 K73 ["Text"]
      966 GETUPVAL                         R25 33
      967 GETTABLEKS                       R25 R25 K146 ["fontStyle"]
      969 GETTABLEKS                       R25 R25 K147 ["Normal"]
      971 GETTABLEKS                       R25 R25 K142 ["TextColor3"]
      973 SETTABLEKS                       R25 R24 K142 ["TextColor3"]
      975 GETUPVAL                         R25 33
      976 GETTABLEKS                       R25 R25 K146 ["fontStyle"]
      978 GETTABLEKS                       R25 R25 K147 ["Normal"]
      980 GETTABLEKS                       R25 R25 K143 ["TextSize"]
      982 SETTABLEKS                       R25 R24 K143 ["TextSize"]
      984 GETIMPORT                        R25 K153 [Enum.TextXAlignment.Left]
      986 SETTABLEKS                       R25 R24 K144 ["TextXAlignment"]
      988 CALL                             R22 2 1
      989 SETTABLEKS                       R22 R21 K15 ["ExperienceGenre"]
      991 GETUPVAL                         R22 1
      992 GETTABLEKS                       R22 R22 K3 ["createElement"]
      994 GETUPVAL                         R23 35
      995 DUPTABLE                         R24 K159 [{["OnLinkClicked"], ["LayoutOrder"], ["Text"], ["LinkText"], ["LinkPlaceholder"], ["MaxWidth"], ["TextProps"], ["TextWrapped"] = True, ["HorizontalAlignment"]}]
      996 NEWCLOSURE                       R25 P3
      997 CAPTURE                          UPVAL U36
      998 CAPTURE                          VAL R0
      999 SETTABLEKS                       R25 R24 K94 ["OnLinkClicked"]
     1001 GETUPVAL                         R25 19
     1002 NAMECALL                         R25 R25 K64 ["getNextOrder"]
     1004 CALL                             R25 1 1
     1005 SETTABLEKS                       R25 R24 K61 ["LayoutOrder"]
     1007 GETUPVAL                         R25 5
     1008 LOADK                            R27 K160 ["GenreSettings"]
     1009 LOADK                            R28 K161 ["GenreManageMessage"]
     1010 DUPTABLE                         R29 K163 [{"link"}]
     1011 GETUPVAL                         R30 5
     1012 LOADK                            R32 K160 ["GenreSettings"]
     1013 LOADK                            R33 K164 ["GenreClickHereLink"]
     1014 NAMECALL                         R30 R30 K32 ["getText"]
     1016 CALL                             R30 3 1
     1017 SETTABLEKS                       R30 R29 K162 ["link"]
     1019 NAMECALL                         R25 R25 K32 ["getText"]
     1021 CALL                             R25 4 1
     1022 SETTABLEKS                       R25 R24 K73 ["Text"]
     1024 GETUPVAL                         R25 5
     1025 LOADK                            R27 K160 ["GenreSettings"]
     1026 LOADK                            R28 K164 ["GenreClickHereLink"]
     1027 NAMECALL                         R25 R25 K32 ["getText"]
     1029 CALL                             R25 3 1
     1030 SETTABLEKS                       R25 R24 K93 ["LinkText"]
     1032 GETUPVAL                         R25 5
     1033 LOADK                            R27 K160 ["GenreSettings"]
     1034 LOADK                            R28 K164 ["GenreClickHereLink"]
     1035 NAMECALL                         R25 R25 K32 ["getText"]
     1037 CALL                             R25 3 1
     1038 SETTABLEKS                       R25 R24 K154 ["LinkPlaceholder"]
     1040 GETUPVAL                         R25 33
     1041 GETTABLEKS                       R25 R25 K165 ["textWithInlineLink"]
     1043 GETTABLEKS                       R25 R25 K166 ["maxWidth"]
     1045 SETTABLEKS                       R25 R24 K155 ["MaxWidth"]
     1047 GETUPVAL                         R25 37
     1048 GETTABLEKS                       R25 R25 K167 ["Dictionary"]
     1050 GETTABLEKS                       R25 R25 K168 ["join"]
     1052 GETUPVAL                         R26 33
     1053 GETTABLEKS                       R26 R26 K146 ["fontStyle"]
     1055 GETTABLEKS                       R26 R26 K169 ["Smaller"]
     1057 DUPTABLE                         R27 K172 [{["BackgroundTransparency"] = 1, ["TextXAlignment"]}]
     1058 GETIMPORT                        R28 K153 [Enum.TextXAlignment.Left]
     1060 SETTABLEKS                       R28 R27 K144 ["TextXAlignment"]
     1062 CALL                             R25 2 1
     1063 SETTABLEKS                       R25 R24 K156 ["TextProps"]
     1065 GETIMPORT                        R25 K173 [Enum.HorizontalAlignment.Left]
     1067 SETTABLEKS                       R25 R24 K158 ["HorizontalAlignment"]
     1069 CALL                             R22 2 1
     1070 SETTABLEKS                       R22 R21 K138 ["GenreHelperText"]
     1072 CALL                             R18 3 1
     1073 SETTABLEKS                       R18 R17 K110 ["Genre"]
     1075 GETUPVAL                         R18 1
     1076 GETTABLEKS                       R18 R18 K3 ["createElement"]
     1078 GETUPVAL                         R19 21
     1079 DUPTABLE                         R20 K85 [{"LayoutOrder"}]
     1080 GETUPVAL                         R21 19
     1081 NAMECALL                         R21 R21 K64 ["getNextOrder"]
     1083 CALL                             R21 1 1
     1084 SETTABLEKS                       R21 R20 K61 ["LayoutOrder"]
     1086 CALL                             R18 2 1
     1087 SETTABLEKS                       R18 R17 K111 ["Separator5"]
     1089 GETUPVAL                         R18 1
     1090 GETTABLEKS                       R18 R18 K3 ["createElement"]
     1092 GETUPVAL                         R19 18
     1093 DUPTABLE                         R20 K63 [{"LayoutOrder", "Title"}]
     1094 GETUPVAL                         R21 19
     1095 NAMECALL                         R21 R21 K64 ["getNextOrder"]
     1097 CALL                             R21 1 1
     1098 SETTABLEKS                       R21 R20 K61 ["LayoutOrder"]
     1100 GETUPVAL                         R21 5
     1101 LOADK                            R23 K27 ["General"]
     1102 LOADK                            R24 K174 ["TitleCreatorRestriction"]
     1103 NAMECALL                         R21 R21 K32 ["getText"]
     1105 CALL                             R21 3 1
     1106 SETTABLEKS                       R21 R20 K62 ["Title"]
     1108 DUPTABLE                         R21 K176 [{"Padding", "LinkText"}]
     1109 GETUPVAL                         R22 1
     1110 GETTABLEKS                       R22 R22 K3 ["createElement"]
     1112 LOADK                            R23 K177 ["UIPadding"]
     1113 DUPTABLE                         R24 K179 [{"PaddingTop"}]
     1114 GETIMPORT                        R25 K181 [UDim.new]
     1116 LOADN                            R26 0
     1117 LOADN                            R27 4
     1118 CALL                             R25 2 1
     1119 SETTABLEKS                       R25 R24 K178 ["PaddingTop"]
     1121 CALL                             R22 2 1
     1122 SETTABLEKS                       R22 R21 K175 ["Padding"]
     1124 GETUPVAL                         R22 1
     1125 GETTABLEKS                       R22 R22 K3 ["createElement"]
     1127 GETUPVAL                         R23 38
     1128 DUPTABLE                         R24 K183 [{"OnClick", "Text", "TextXAlignment", "TextYAlignment"}]
     1129 GETUPVAL                         R25 39
     1130 GETTABLEKS                       R26 R0 K104 ["GameId"]
     1132 CALL                             R25 1 1
     1133 SETTABLEKS                       R25 R24 K88 ["OnClick"]
     1135 GETUPVAL                         R25 5
     1136 LOADK                            R27 K27 ["General"]
     1137 LOADK                            R28 K184 ["CreatorRestrictionDeepLink"]
     1138 NAMECALL                         R25 R25 K32 ["getText"]
     1140 CALL                             R25 3 1
     1141 SETTABLEKS                       R25 R24 K73 ["Text"]
     1143 GETIMPORT                        R25 K153 [Enum.TextXAlignment.Left]
     1145 SETTABLEKS                       R25 R24 K144 ["TextXAlignment"]
     1147 GETIMPORT                        R25 K186 [Enum.TextYAlignment.Top]
     1149 SETTABLEKS                       R25 R24 K182 ["TextYAlignment"]
     1151 CALL                             R22 2 1
     1152 SETTABLEKS                       R22 R21 K93 ["LinkText"]
     1154 CALL                             R18 3 1
     1155 SETTABLEKS                       R18 R17 K112 ["CreatorRestriction"]
     1157 GETUPVAL                         R18 1
     1158 GETTABLEKS                       R18 R18 K3 ["createElement"]
     1160 GETUPVAL                         R19 21
     1161 DUPTABLE                         R20 K85 [{"LayoutOrder"}]
     1162 GETUPVAL                         R21 19
     1163 NAMECALL                         R21 R21 K64 ["getNextOrder"]
     1165 CALL                             R21 1 1
     1166 SETTABLEKS                       R21 R20 K61 ["LayoutOrder"]
     1168 CALL                             R18 2 1
     1169 SETTABLEKS                       R18 R17 K113 ["Separator6"]
     1171 GETUPVAL                         R18 1
     1172 GETTABLEKS                       R18 R18 K3 ["createElement"]
     1174 GETUPVAL                         R19 40
     1175 DUPTABLE                         R20 K189 [{"Title", "LayoutOrder", "Boxes", "Enabled", "ErrorMessage", "EntryClicked"}]
     1176 GETUPVAL                         R21 5
     1177 LOADK                            R23 K27 ["General"]
     1178 LOADK                            R24 K190 ["TitleDevices"]
     1179 NAMECALL                         R21 R21 K32 ["getText"]
     1181 CALL                             R21 3 1
     1182 SETTABLEKS                       R21 R20 K62 ["Title"]
     1184 GETUPVAL                         R21 19
     1185 NAMECALL                         R21 R21 K64 ["getNextOrder"]
     1187 CALL                             R21 1 1
     1188 SETTABLEKS                       R21 R20 K61 ["LayoutOrder"]
     1190 NEWTABLE                         R21 0 5
     1192 DUPTABLE                         R22 K193 [{["Id"] = "Computer", ["Title"], ["Selected"]}]
     1193 GETUPVAL                         R23 5
     1194 LOADK                            R25 K27 ["General"]
     1195 LOADK                            R26 K194 ["DeviceComputer"]
     1196 NAMECALL                         R23 R23 K32 ["getText"]
     1198 CALL                             R23 3 1
     1199 SETTABLEKS                       R23 R22 K62 ["Title"]
     1201 JUMPIFNOT                        R1 ; [+3]
     1202 GETTABLEKS                       R23 R1 K192 ["Computer"]
     1204 JUMP                             ; [+1]
     1205 LOADB                            R23 0
     1206 SETTABLEKS                       R23 R22 K86 ["Selected"]
     1208 DUPTABLE                         R23 K196 [{["Id"] = "Phone", ["Title"], ["Selected"]}]
     1209 GETUPVAL                         R24 5
     1210 LOADK                            R26 K27 ["General"]
     1211 LOADK                            R27 K197 ["DevicePhone"]
     1212 NAMECALL                         R24 R24 K32 ["getText"]
     1214 CALL                             R24 3 1
     1215 SETTABLEKS                       R24 R23 K62 ["Title"]
     1217 JUMPIFNOT                        R1 ; [+3]
     1218 GETTABLEKS                       R24 R1 K195 ["Phone"]
     1220 JUMP                             ; [+1]
     1221 LOADB                            R24 0
     1222 SETTABLEKS                       R24 R23 K86 ["Selected"]
     1224 DUPTABLE                         R24 K199 [{["Id"] = "Tablet", ["Title"], ["Selected"]}]
     1225 GETUPVAL                         R25 5
     1226 LOADK                            R27 K27 ["General"]
     1227 LOADK                            R28 K200 ["DeviceTablet"]
     1228 NAMECALL                         R25 R25 K32 ["getText"]
     1230 CALL                             R25 3 1
     1231 SETTABLEKS                       R25 R24 K62 ["Title"]
     1233 JUMPIFNOT                        R1 ; [+3]
     1234 GETTABLEKS                       R25 R1 K198 ["Tablet"]
     1236 JUMP                             ; [+1]
     1237 LOADB                            R25 0
     1238 SETTABLEKS                       R25 R24 K86 ["Selected"]
     1240 DUPTABLE                         R25 K202 [{["Id"] = "Console", ["Title"], ["Selected"]}]
     1241 GETUPVAL                         R26 5
     1242 LOADK                            R28 K27 ["General"]
     1243 LOADK                            R29 K203 ["DeviceConsole"]
     1244 NAMECALL                         R26 R26 K32 ["getText"]
     1246 CALL                             R26 3 1
     1247 SETTABLEKS                       R26 R25 K62 ["Title"]
     1249 JUMPIFNOT                        R1 ; [+3]
     1250 GETTABLEKS                       R26 R1 K201 ["Console"]
     1252 JUMP                             ; [+1]
     1253 LOADB                            R26 0
     1254 SETTABLEKS                       R26 R25 K86 ["Selected"]
     1256 DUPTABLE                         R26 K205 [{["Id"] = "VR", ["Title"], ["Selected"]}]
     1257 GETUPVAL                         R27 5
     1258 LOADK                            R29 K27 ["General"]
     1259 LOADK                            R30 K206 ["DeviceVR"]
     1260 NAMECALL                         R27 R27 K32 ["getText"]
     1262 CALL                             R27 3 1
     1263 SETTABLEKS                       R27 R26 K62 ["Title"]
     1265 JUMPIFNOT                        R1 ; [+3]
     1266 GETTABLEKS                       R27 R1 K204 ["VR"]
     1268 JUMP                             ; [+1]
     1269 LOADB                            R27 0
     1270 SETTABLEKS                       R27 R26 K86 ["Selected"]
     1272 SETLIST                          R21 R22 5 [1]
     1274 SETTABLEKS                       R21 R20 K187 ["Boxes"]
     1276 JUMPIFNOTEQKNIL                  R1 ; [+2]
     1278 LOADB                            R21 0 +1
     1279 LOADB                            R21 1
     1280 SETTABLEKS                       R21 R20 K117 ["Enabled"]
     1282 GETUPVAL                         R22 14
     1283 CALL                             R22 0 1
     1284 JUMPIFNOT                        R22 ; [+2]
     1285 MOVE                             R21 R16
     1286 JUMP                             ; [+1]
     1287 LOADNIL                          R21
     1288 SETTABLEKS                       R21 R20 K120 ["ErrorMessage"]
     1290 NEWCLOSURE                       R21 P4
     1291 CAPTURE                          UPVAL U37
     1292 CAPTURE                          VAL R1
     1293 CAPTURE                          VAL R0
     1294 SETTABLEKS                       R21 R20 K188 ["EntryClicked"]
     1296 CALL                             R18 2 1
     1297 SETTABLEKS                       R18 R17 K5 ["Devices"]
     1299 GETUPVAL                         R19 3
     1300 CALL                             R19 0 1
     1301 JUMPIFNOT                        R19 ; [+13]
     1302 GETUPVAL                         R18 1
     1303 GETTABLEKS                       R18 R18 K3 ["createElement"]
     1305 GETUPVAL                         R19 21
     1306 DUPTABLE                         R20 K85 [{"LayoutOrder"}]
     1307 GETUPVAL                         R21 19
     1308 NAMECALL                         R21 R21 K64 ["getNextOrder"]
     1310 CALL                             R21 1 1
     1311 SETTABLEKS                       R21 R20 K61 ["LayoutOrder"]
     1313 CALL                             R18 2 1
     1314 JUMPIF                           R18 ; [+1]
     1315 LOADNIL                          R18
     1316 SETTABLEKS                       R18 R17 K114 ["Separator7"]
     1318 GETUPVAL                         R19 3
     1319 CALL                             R19 0 1
     1320 JUMPIFNOT                        R19 ; [+143]
     1321 GETUPVAL                         R18 1
     1322 GETTABLEKS                       R18 R18 K3 ["createElement"]
     1324 GETUPVAL                         R19 40
     1325 DUPTABLE                         R20 K208 [{"Title", "LayoutOrder", "Boxes", "ShowWarning", "Enabled", "EntryClicked", "Tooltip"}]
     1326 GETUPVAL                         R21 5
     1327 LOADK                            R23 K27 ["General"]
     1328 LOADK                            R24 K209 ["TitleOptInLocations"]
     1329 NAMECALL                         R21 R21 K32 ["getText"]
     1331 CALL                             R21 3 1
     1332 SETTABLEKS                       R21 R20 K62 ["Title"]
     1334 GETUPVAL                         R21 19
     1335 NAMECALL                         R21 R21 K64 ["getNextOrder"]
     1337 CALL                             R21 1 1
     1338 SETTABLEKS                       R21 R20 K61 ["LayoutOrder"]
     1340 GETUPVAL                         R21 0
     1341 GETUPVAL                         R23 19
     1342 NAMECALL                         R21 R21 K210 ["createOptInLocationBoxes"]
     1344 CALL                             R21 2 1
     1345 SETTABLEKS                       R21 R20 K187 ["Boxes"]
     1347 NOT                              R21 R5
     1348 SETTABLEKS                       R21 R20 K99 ["ShowWarning"]
     1350 LOADB                            R21 0
     1351 JUMPIFEQKNIL                     R3 ; [+2]
     1353 MOVE                             R21 R5
     1354 SETTABLEKS                       R21 R20 K117 ["Enabled"]
     1356 NEWCLOSURE                       R21 P5
     1357 CAPTURE                          UPVAL U33
     1358 CAPTURE                          UPVAL U5
     1359 CAPTURE                          UPVAL U1
     1360 CAPTURE                          UPVAL U35
     1361 CAPTURE                          UPVAL U41
     1362 CAPTURE                          UPVAL U42
     1363 CAPTURE                          UPVAL U23
     1364 CAPTURE                          UPVAL U37
     1365 CAPTURE                          REF R4
     1366 CAPTURE                          VAL R2
     1367 CAPTURE                          UPVAL U43
     1368 CAPTURE                          UPVAL U44
     1369 CAPTURE                          UPVAL U45
     1370 CAPTURE                          UPVAL U46
     1371 CAPTURE                          UPVAL U47
     1372 CAPTURE                          UPVAL U48
     1373 CAPTURE                          UPVAL U49
     1374 CAPTURE                          REF R3
     1375 CAPTURE                          UPVAL U4
     1376 CAPTURE                          UPVAL U50
     1377 CAPTURE                          UPVAL U51
     1378 CAPTURE                          VAL R0
     1379 SETTABLEKS                       R21 R20 K188 ["EntryClicked"]
     1381 GETUPVAL                         R21 1
     1382 GETTABLEKS                       R21 R21 K3 ["createElement"]
     1384 GETUPVAL                         R22 52
     1385 DUPTABLE                         R23 K215 [{["Size"], ["Position"], ["Style"] = "TooltipStyle", ["StyleModifier"]}]
     1386 GETIMPORT                        R24 K217 [UDim2.fromOffset]
     1388 GETUPVAL                         R25 33
     1389 GETTABLEKS                       R25 R25 K218 ["tooltipIcon"]
     1391 GETTABLEKS                       R25 R25 K219 ["size"]
     1393 GETUPVAL                         R26 33
     1394 GETTABLEKS                       R26 R26 K218 ["tooltipIcon"]
     1396 GETTABLEKS                       R26 R26 K219 ["size"]
     1398 CALL                             R24 2 1
     1399 SETTABLEKS                       R24 R23 K141 ["Size"]
     1401 GETIMPORT                        R24 K150 [UDim2.new]
     1403 LOADN                            R25 0
     1404 GETUPVAL                         R26 33
     1405 GETTABLEKS                       R26 R26 K218 ["tooltipIcon"]
     1407 GETTABLEKS                       R26 R26 K220 ["paddingX"]
     1409 LOADN                            R27 0
     1410 GETUPVAL                         R28 33
     1411 GETTABLEKS                       R28 R28 K218 ["tooltipIcon"]
     1413 GETTABLEKS                       R28 R28 K221 ["paddingY"]
     1415 CALL                             R24 4 1
     1416 SETTABLEKS                       R24 R23 K211 ["Position"]
     1418 GETUPVAL                         R24 0
     1419 GETTABLEKS                       R24 R24 K222 ["state"]
     1421 GETTABLEKS                       R24 R24 K214 ["StyleModifier"]
     1423 SETTABLEKS                       R24 R23 K214 ["StyleModifier"]
     1425 NEWTABLE                         R24 0 2
     1427 GETUPVAL                         R25 1
     1428 GETTABLEKS                       R25 R25 K3 ["createElement"]
     1430 GETUPVAL                         R26 53
     1431 DUPTABLE                         R27 K223 [{"Text"}]
     1432 GETUPVAL                         R28 5
     1433 GETUPVAL                         R30 4
     1434 LOADK                            R31 K207 ["Tooltip"]
     1435 NAMECALL                         R28 R28 K32 ["getText"]
     1437 CALL                             R28 3 1
     1438 SETTABLEKS                       R28 R27 K73 ["Text"]
     1440 CALL                             R25 2 1
     1441 GETUPVAL                         R26 1
     1442 GETTABLEKS                       R26 R26 K3 ["createElement"]
     1444 GETUPVAL                         R27 54
     1445 DUPTABLE                         R28 K228 [{["Cursor"] = "PointingHand", ["MouseEnter"], ["MouseLeave"]}]
     1446 GETUPVAL                         R29 0
     1447 GETTABLEKS                       R29 R29 K229 ["onMouseEnter"]
     1449 SETTABLEKS                       R29 R28 K226 ["MouseEnter"]
     1451 GETUPVAL                         R29 0
     1452 GETTABLEKS                       R29 R29 K230 ["onMouseLeave"]
     1454 SETTABLEKS                       R29 R28 K227 ["MouseLeave"]
     1456 CALL                             R26 2 -1
     1457 SETLIST                          R24 R25 -1 [1]
     1459 CALL                             R21 3 1
     1460 SETTABLEKS                       R21 R20 K207 ["Tooltip"]
     1462 CALL                             R18 2 1
     1463 JUMPIF                           R18 ; [+1]
     1464 LOADNIL                          R18
     1465 SETTABLEKS                       R18 R17 K115 ["OptInLocations"]
     1467 CLOSEUPVALS                      R3
     1468 RETURN                           R17 1

PROTO_64:
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
       76 CAPTURE                          UPVAL U1
       77 CAPTURE                          REF R4
       78 CAPTURE                          UPVAL U16
       79 CAPTURE                          VAL R3
       80 CAPTURE                          UPVAL U17
       81 CAPTURE                          UPVAL U18
       82 CAPTURE                          UPVAL U19
       83 CAPTURE                          UPVAL U20
       84 CAPTURE                          UPVAL U21
       85 CAPTURE                          REF R6
       86 CAPTURE                          REF R5
       87 CAPTURE                          UPVAL U22
       88 CAPTURE                          UPVAL U23
       89 CAPTURE                          UPVAL U24
       90 CAPTURE                          UPVAL U25
       91 CAPTURE                          UPVAL U26
       92 CAPTURE                          UPVAL U27
       93 CAPTURE                          VAL R2
       94 CAPTURE                          UPVAL U28
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
      115 GETUPVAL                         R8 2
      116 GETTABLEKS                       R8 R8 K13 ["createElement"]
      118 GETUPVAL                         R9 49
      119 DUPTABLE                         R10 K19 [{"SettingsLoadJobs", "SettingsSaveJobs", "Title", "PageId", "CreateChildren"}]
      120 GETUPVAL                         R11 50
      121 SETTABLEKS                       R11 R10 K14 ["SettingsLoadJobs"]
      123 GETUPVAL                         R11 51
      124 SETTABLEKS                       R11 R10 K15 ["SettingsSaveJobs"]
      126 LOADK                            R13 K8 ["General"]
      127 LOADK                            R15 K20 ["Category"]
      128 GETUPVAL                         R16 52
      129 CONCAT                           R14 R15 R16
      130 NAMECALL                         R11 R1 K10 ["getText"]
      132 CALL                             R11 3 1
      133 SETTABLEKS                       R11 R10 K16 ["Title"]
      135 GETUPVAL                         R11 52
      136 SETTABLEKS                       R11 R10 K17 ["PageId"]
      138 SETTABLEKS                       R7 R10 K18 ["CreateChildren"]
      140 CALL                             R8 2 -1
      141 CLOSEUPVALS                      R4
      142 RETURN                           R8 -1

PROTO_65:
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

PROTO_66:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Settings"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_67:
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

PROTO_68:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_69:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_70:
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
       29 LOADK                            R6 K10 ["RemoveQuestionnaireFromGameSettings"]
       30 LOADB                            R7 0
       31 NAMECALL                         R4 R4 K11 ["DefineFastFlag"]
       33 CALL                             R4 3 1
       34 GETIMPORT                        R5 K4 [game]
       36 LOADK                            R7 K12 ["FStringTeamCreateLearnMoreLinkDest"]
       37 LOADK                            R8 K13 ["https://create.roblox.com/docs/projects/collaboration"]
       38 NAMECALL                         R5 R5 K14 ["DefineFastString"]
       40 CALL                             R5 3 1
       41 GETIMPORT                        R6 K16 [require]
       43 GETTABLEKS                       R7 R0 K17 ["Src"]
       45 GETTABLEKS                       R7 R7 K18 ["Flags"]
       47 GETTABLEKS                       R7 R7 K19 ["getFFlagPruneGameSettings"]
       49 CALL                             R6 1 1
       50 CALL                             R6 0 1
       51 GETIMPORT                        R7 K16 [require]
       53 GETTABLEKS                       R8 R0 K17 ["Src"]
       55 GETTABLEKS                       R8 R8 K18 ["Flags"]
       57 GETTABLEKS                       R8 R8 K20 ["getFFlagGameSettingsGameToExperience"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K16 [require]
       62 GETTABLEKS                       R9 R0 K17 ["Src"]
       64 GETTABLEKS                       R9 R9 K18 ["Flags"]
       66 GETTABLEKS                       R9 R9 K21 ["getFFlagGameSettingsAddIARCErrorMessaging"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K4 [game]
       71 LOADK                            R11 K22 ["StudioService"]
       72 NAMECALL                         R9 R9 K23 ["GetService"]
       74 CALL                             R9 2 1
       75 GETIMPORT                        R10 K4 [game]
       77 LOADK                            R12 K24 ["GuiService"]
       78 NAMECALL                         R10 R10 K23 ["GetService"]
       80 CALL                             R10 2 1
       81 GETIMPORT                        R11 K1 [script]
       83 GETTABLEKS                       R11 R11 K25 ["Name"]
       85 DUPTABLE                         R12 K30 [{["Moderated"] = "ErrorNameModerated", ["Empty"] = "ErrorNameEmpty"}]
       86 DUPTABLE                         R13 K33 [{["Moderated"] = "ErrorDescModerated", ["Empty"] = "ErrorFieldEmpty"}]
       87 DUPTABLE                         R14 K38 [{["UploadingTooQuickly"] = "ErrorImageLimit", ["ImageNotRecognized"] = "ErrorImageNotRecognized"}]
       88 DUPTABLE                         R15 K39 [{["Empty"] = "ErrorFieldEmpty"}]
       89 DUPTABLE                         R16 K41 [{["Moderated"] = "ErrorAltTextModerated"}]
       90 GETIMPORT                        R17 K1 [script]
       92 GETTABLEKS                       R17 R17 K2 ["Parent"]
       94 GETIMPORT                        R18 K16 [require]
       96 GETTABLEKS                       R19 R0 K42 ["Packages"]
       98 GETTABLEKS                       R19 R19 K43 ["Roact"]
      100 CALL                             R18 1 1
      101 GETIMPORT                        R19 K16 [require]
      103 GETTABLEKS                       R20 R0 K42 ["Packages"]
      105 GETTABLEKS                       R20 R20 K44 ["RoactRodux"]
      107 CALL                             R19 1 1
      108 GETIMPORT                        R20 K16 [require]
      110 GETTABLEKS                       R21 R0 K42 ["Packages"]
      112 GETTABLEKS                       R21 R21 K45 ["Cryo"]
      114 CALL                             R20 1 1
      115 GETIMPORT                        R21 K16 [require]
      117 GETTABLEKS                       R22 R0 K42 ["Packages"]
      119 GETTABLEKS                       R22 R22 K46 ["Framework"]
      121 CALL                             R21 1 1
      122 GETTABLEKS                       R22 R21 K47 ["ContextServices"]
      124 GETTABLEKS                       R23 R22 K48 ["withContext"]
      126 GETIMPORT                        R24 K16 [require]
      128 GETTABLEKS                       R25 R0 K17 ["Src"]
      130 GETTABLEKS                       R25 R25 K47 ["ContextServices"]
      132 GETTABLEKS                       R25 R25 K49 ["Dialog"]
      134 CALL                             R24 1 1
      135 LOADNIL                          R25
      136 JUMPIFNOT                        R3 ; [+8]
      137 GETIMPORT                        R26 K16 [require]
      139 GETTABLEKS                       R27 R17 K50 ["Components"]
      141 GETTABLEKS                       R27 R27 K51 ["Guidelines"]
      143 CALL                             R26 1 1
      144 MOVE                             R25 R26
      145 GETIMPORT                        R26 K16 [require]
      147 GETTABLEKS                       R27 R0 K17 ["Src"]
      149 GETTABLEKS                       R27 R27 K52 ["Util"]
      151 GETTABLEKS                       R27 R27 K53 ["BrowserUtils"]
      153 CALL                             R26 1 1
      154 GETTABLEKS                       R26 R26 K54 ["OpenExperienceSettings"]
      156 GETIMPORT                        R27 K16 [require]
      158 GETTABLEKS                       R28 R0 K17 ["Src"]
      160 GETTABLEKS                       R28 R28 K52 ["Util"]
      162 GETTABLEKS                       R28 R28 K53 ["BrowserUtils"]
      164 CALL                             R27 1 1
      165 GETTABLEKS                       R27 R27 K55 ["OpenExperienceAccess"]
      167 GETTABLEKS                       R28 R21 K56 ["UI"]
      169 GETTABLEKS                       R29 R28 K57 ["BulletList"]
      171 GETTABLEKS                       R30 R28 K58 ["Separator"]
      173 GETTABLEKS                       R31 R28 K59 ["LinkText"]
      175 GETTABLEKS                       R32 R28 K60 ["Tooltip"]
      177 GETTABLEKS                       R33 R28 K61 ["HoverArea"]
      179 GETTABLEKS                       R34 R28 K62 ["TextInput"]
      181 GETTABLEKS                       R35 R28 K63 ["Image"]
      183 GETTABLEKS                       R36 R28 K64 ["TextLabel"]
      185 GETTABLEKS                       R37 R28 K65 ["TextWithInlineLink"]
      187 GETTABLEKS                       R38 R28 K66 ["TitledFrame"]
      189 GETTABLEKS                       R39 R28 K67 ["MultiImagePicker"]
      191 GETTABLEKS                       R40 R21 K52 ["Util"]
      193 GETTABLEKS                       R41 R40 K68 ["StyleModifier"]
      195 GETTABLEKS                       R42 R40 K69 ["LayoutOrderIterator"]
      197 GETTABLEKS                       R43 R40 K70 ["deepJoin"]
      199 GETIMPORT                        R44 K16 [require]
      201 GETTABLEKS                       R45 R0 K17 ["Src"]
      203 GETTABLEKS                       R45 R45 K50 ["Components"]
      205 GETTABLEKS                       R45 R45 K71 ["CheckBoxSet"]
      207 CALL                             R44 1 1
      208 GETIMPORT                        R45 K16 [require]
      210 GETTABLEKS                       R46 R0 K17 ["Src"]
      212 GETTABLEKS                       R46 R46 K50 ["Components"]
      214 GETTABLEKS                       R46 R46 K72 ["UploadableIcon"]
      216 GETTABLEKS                       R46 R46 K73 ["UploadableIconWidget"]
      218 CALL                             R45 1 1
      219 GETIMPORT                        R46 K16 [require]
      221 GETTABLEKS                       R47 R0 K17 ["Src"]
      223 GETTABLEKS                       R47 R47 K50 ["Components"]
      225 GETTABLEKS                       R47 R47 K74 ["SettingsPages"]
      227 GETTABLEKS                       R47 R47 K75 ["SettingsPage"]
      229 CALL                             R46 1 1
      230 GETIMPORT                        R47 K16 [require]
      232 GETTABLEKS                       R48 R0 K17 ["Src"]
      234 GETTABLEKS                       R48 R48 K50 ["Components"]
      236 GETTABLEKS                       R48 R48 K49 ["Dialog"]
      238 GETTABLEKS                       R48 R48 K76 ["SimpleDialog"]
      240 CALL                             R47 1 1
      241 GETIMPORT                        R48 K16 [require]
      243 GETTABLEKS                       R49 R0 K17 ["Src"]
      245 GETTABLEKS                       R49 R49 K50 ["Components"]
      247 GETTABLEKS                       R49 R49 K74 ["SettingsPages"]
      249 GETTABLEKS                       R49 R49 K77 ["InsufficientPermissionsPage"]
      251 CALL                             R48 1 1
      252 GETIMPORT                        R49 K16 [require]
      254 GETTABLEKS                       R50 R0 K17 ["Src"]
      256 GETTABLEKS                       R50 R50 K50 ["Components"]
      258 GETTABLEKS                       R50 R50 K78 ["ToggleButtonWithTitle"]
      260 CALL                             R49 1 1
      261 GETIMPORT                        R50 K16 [require]
      263 GETTABLEKS                       R51 R0 K17 ["Src"]
      265 GETTABLEKS                       R51 R51 K79 ["Actions"]
      267 GETTABLEKS                       R51 R51 K80 ["AddChange"]
      269 CALL                             R50 1 1
      270 GETIMPORT                        R51 K16 [require]
      272 GETTABLEKS                       R52 R0 K17 ["Src"]
      274 GETTABLEKS                       R52 R52 K79 ["Actions"]
      276 GETTABLEKS                       R52 R52 K81 ["AddErrors"]
      278 CALL                             R51 1 1
      279 GETIMPORT                        R52 K16 [require]
      281 GETTABLEKS                       R53 R0 K17 ["Src"]
      283 GETTABLEKS                       R53 R53 K79 ["Actions"]
      285 GETTABLEKS                       R53 R53 K82 ["DiscardError"]
      287 CALL                             R52 1 1
      288 GETIMPORT                        R53 K16 [require]
      290 GETTABLEKS                       R54 R0 K17 ["Src"]
      292 GETTABLEKS                       R54 R54 K79 ["Actions"]
      294 GETTABLEKS                       R54 R54 K83 ["SetCreatorId"]
      296 CALL                             R53 1 1
      297 GETIMPORT                        R54 K16 [require]
      299 GETTABLEKS                       R55 R0 K17 ["Src"]
      301 GETTABLEKS                       R55 R55 K79 ["Actions"]
      303 GETTABLEKS                       R55 R55 K84 ["SetCreatorType"]
      305 CALL                             R54 1 1
      306 GETIMPORT                        R55 K16 [require]
      308 GETTABLEKS                       R56 R0 K17 ["Src"]
      310 GETTABLEKS                       R56 R56 K52 ["Util"]
      312 GETTABLEKS                       R56 R56 K85 ["FileUtils"]
      314 CALL                             R55 1 1
      315 GETIMPORT                        R56 K16 [require]
      317 GETTABLEKS                       R57 R0 K17 ["Src"]
      319 GETTABLEKS                       R57 R57 K52 ["Util"]
      321 GETTABLEKS                       R57 R57 K86 ["DEPRECATED_Constants"]
      323 CALL                             R56 1 1
      324 GETIMPORT                        R57 K16 [require]
      326 GETTABLEKS                       R58 R0 K17 ["Src"]
      328 GETTABLEKS                       R58 R58 K52 ["Util"]
      330 GETTABLEKS                       R58 R58 K87 ["GameSettingsUtilities"]
      332 CALL                             R57 1 1
      333 GETTABLEKS                       R58 R57 K88 ["shouldShowDevPublishLocations"]
      335 GETTABLEKS                       R59 R57 K89 ["getPlayerAppDownloadLink"]
      337 GETTABLEKS                       R60 R57 K90 ["getOptInLocationsRequirementsLink"]
      339 GETTABLEKS                       R61 R57 K91 ["getSocialMediaReferencesAllowed"]
      341 GETTABLEKS                       R62 R57 K92 ["sendAnalyticsToKibana"]
      343 GETTABLEKS                       R63 R57 K93 ["calculateTextSize"]
      345 GETIMPORT                        R64 K16 [require]
      347 GETTABLEKS                       R65 R0 K17 ["Src"]
      349 GETTABLEKS                       R65 R65 K52 ["Util"]
      351 GETTABLEKS                       R65 R65 K94 ["KeyProvider"]
      353 CALL                             R64 1 1
      354 GETTABLEKS                       R65 R64 K95 ["getOptInLocationsKeyName"]
      356 CALL                             R65 0 1
      357 GETTABLEKS                       R66 R64 K96 ["getChinaKeyName"]
      359 CALL                             R66 0 1
      360 GETTABLEKS                       R67 R64 K97 ["getPlayerAcceptanceKeyName"]
      362 CALL                             R67 0 1
      363 GETTABLEKS                       R68 R64 K98 ["getApprovedKeyName"]
      365 CALL                             R68 0 1
      366 GETTABLEKS                       R69 R64 K99 ["getInReviewKeyName"]
      368 CALL                             R69 0 1
      369 GETTABLEKS                       R70 R64 K100 ["getRejectedKeyName"]
      371 CALL                             R70 0 1
      372 GETTABLEKS                       R71 R64 K101 ["getLuobuStudioDevPublishKeyName"]
      374 CALL                             R71 0 1
      375 GETTABLEKS                       R72 R64 K102 ["getCheckboxToggleKeyName"]
      377 CALL                             R72 0 1
      378 GETTABLEKS                       R73 R64 K103 ["getSelectedKeyName"]
      380 CALL                             R73 0 1
      381 GETTABLEKS                       R74 R64 K104 ["getTermsOfUseDialogKeyName"]
      383 CALL                             R74 0 1
      384 GETTABLEKS                       R75 R64 K105 ["getButtonClickedKeyName"]
      386 CALL                             R75 0 1
      387 GETTABLEKS                       R76 R64 K106 ["getTeamCreateEnabledKeyName"]
      389 CALL                             R76 0 1
      390 JUMPIFNOT                        R6 ; [+4]
      391 GETTABLEKS                       R77 R64 K107 ["getScriptCollaborationEnabledKeyName"]
      393 CALL                             R77 0 1
      394 JUMP                             ; [+1]
      395 LOADNIL                          R77
      396 GETTABLEKS                       R78 R64 K108 ["getScriptCollaborationEnabledOnServerKeyName"]
      398 MOVE                             R79 R78
      399 CALL                             R79 0 1
      400 DUPCLOSURE                       R80 K109 [PROTO_17]
      401 CAPTURE                          VAL R6
      402 CAPTURE                          VAL R3
      403 CAPTURE                          VAL R53
      404 CAPTURE                          VAL R54
      405 CAPTURE                          VAL R58
      406 CAPTURE                          VAL R65
      407 CAPTURE                          VAL R67
      408 CAPTURE                          VAL R77
      409 CAPTURE                          VAL R79
      410 CAPTURE                          VAL R76
      411 DUPCLOSURE                       R81 K110 [PROTO_36]
      412 CAPTURE                          VAL R6
      413 CAPTURE                          VAL R51
      414 CAPTURE                          VAL R2
      415 CAPTURE                          VAL R20
      416 CAPTURE                          VAL R50
      417 CAPTURE                          VAL R58
      418 CAPTURE                          VAL R65
      419 DUPCLOSURE                       R82 K111 [PROTO_37]
      420 CAPTURE                          VAL R3
      421 CAPTURE                          VAL R58
      422 CAPTURE                          VAL R65
      423 CAPTURE                          VAL R67
      424 CAPTURE                          VAL R6
      425 CAPTURE                          VAL R77
      426 CAPTURE                          VAL R76
      427 DUPCLOSURE                       R83 K112 [PROTO_45]
      428 CAPTURE                          VAL R52
      429 CAPTURE                          VAL R50
      430 CAPTURE                          VAL R20
      431 CAPTURE                          VAL R56
      432 CAPTURE                          VAL R51
      433 CAPTURE                          VAL R8
      434 CAPTURE                          VAL R58
      435 CAPTURE                          VAL R65
      436 CAPTURE                          VAL R6
      437 CAPTURE                          VAL R77
      438 CAPTURE                          VAL R76
      439 GETTABLEKS                       R84 R18 K113 ["PureComponent"]
      441 GETIMPORT                        R86 K1 [script]
      443 GETTABLEKS                       R86 R86 K25 ["Name"]
      445 NAMECALL                         R84 R84 K114 ["extend"]
      447 CALL                             R84 2 1
      448 DUPCLOSURE                       R85 K115 [PROTO_46]
      449 CAPTURE                          VAL R9
      450 SETTABLEKS                       R85 R84 K116 ["hasPermissionToEdit"]
      452 DUPCLOSURE                       R85 K117 [PROTO_47]
      453 DUPCLOSURE                       R86 K118 [PROTO_55]
      454 CAPTURE                          VAL R55
      455 CAPTURE                          VAL R65
      456 CAPTURE                          VAL R68
      457 CAPTURE                          VAL R69
      458 CAPTURE                          VAL R70
      459 CAPTURE                          VAL R41
      460 CAPTURE                          VAL R18
      461 CAPTURE                          VAL R60
      462 CAPTURE                          VAL R66
      463 CAPTURE                          VAL R10
      464 CAPTURE                          VAL R63
      465 CAPTURE                          VAL R58
      466 CAPTURE                          VAL R42
      467 CAPTURE                          VAL R36
      468 CAPTURE                          VAL R31
      469 CAPTURE                          VAL R35
      470 SETTABLEKS                       R86 R84 K119 ["init"]
      472 NEWCLOSURE                       R86 P7
      473 CAPTURE                          VAL R42
      474 CAPTURE                          VAL R6
      475 CAPTURE                          VAL R18
      476 CAPTURE                          VAL R48
      477 CAPTURE                          VAL R58
      478 CAPTURE                          VAL R65
      479 CAPTURE                          VAL R61
      480 CAPTURE                          VAL R29
      481 CAPTURE                          VAL R7
      482 CAPTURE                          VAL R56
      483 CAPTURE                          VAL R12
      484 CAPTURE                          VAL R13
      485 CAPTURE                          VAL R14
      486 CAPTURE                          VAL R16
      487 CAPTURE                          VAL R8
      488 CAPTURE                          VAL R15
      489 CAPTURE                          VAL R38
      490 CAPTURE                          VAL R34
      491 CAPTURE                          VAL R30
      492 CAPTURE                          VAL R49
      493 CAPTURE                          VAL R10
      494 CAPTURE                          VAL R5
      495 CAPTURE                          VAL R4
      496 CAPTURE                          VAL R3
      497 CAPTURE                          REF R25
      498 CAPTURE                          VAL R45
      499 CAPTURE                          VAL R39
      500 CAPTURE                          VAL R36
      501 CAPTURE                          VAL R63
      502 CAPTURE                          VAL R37
      503 CAPTURE                          VAL R26
      504 CAPTURE                          VAL R20
      505 CAPTURE                          VAL R31
      506 CAPTURE                          VAL R27
      507 CAPTURE                          VAL R44
      508 CAPTURE                          VAL R59
      509 CAPTURE                          VAL R66
      510 CAPTURE                          VAL R47
      511 CAPTURE                          VAL R75
      512 CAPTURE                          VAL R62
      513 CAPTURE                          VAL R71
      514 CAPTURE                          VAL R1
      515 CAPTURE                          VAL R74
      516 CAPTURE                          VAL R43
      517 CAPTURE                          VAL R73
      518 CAPTURE                          VAL R72
      519 CAPTURE                          VAL R35
      520 CAPTURE                          VAL R32
      521 CAPTURE                          VAL R33
      522 CAPTURE                          VAL R46
      523 CAPTURE                          VAL R80
      524 CAPTURE                          VAL R81
      525 CAPTURE                          VAL R11
      526 SETTABLEKS                       R86 R84 K120 ["render"]
      528 DUPCLOSURE                       R86 K121 [PROTO_65]
      529 SETGLOBAL                        R86 K122 ["GetExperienceGenreString"]
      531 MOVE                             R86 R23
      532 DUPTABLE                         R87 K127 [{"Localization", "Stylizer", "Dialog", "Mouse", "Plugin"}]
      533 GETTABLEKS                       R88 R22 K123 ["Localization"]
      535 SETTABLEKS                       R88 R87 K123 ["Localization"]
      537 GETTABLEKS                       R88 R22 K124 ["Stylizer"]
      539 SETTABLEKS                       R88 R87 K124 ["Stylizer"]
      541 SETTABLEKS                       R24 R87 K49 ["Dialog"]
      543 GETTABLEKS                       R88 R22 K125 ["Mouse"]
      545 SETTABLEKS                       R88 R87 K125 ["Mouse"]
      547 JUMPIFNOT                        R6 ; [+3]
      548 GETTABLEKS                       R88 R22 K126 ["Plugin"]
      550 JUMP                             ; [+1]
      551 LOADNIL                          R88
      552 SETTABLEKS                       R88 R87 K126 ["Plugin"]
      554 CALL                             R86 1 1
      555 MOVE                             R87 R84
      556 CALL                             R86 1 1
      557 MOVE                             R84 R86
      558 GETIMPORT                        R86 K16 [require]
      560 GETTABLEKS                       R87 R0 K17 ["Src"]
      562 GETTABLEKS                       R87 R87 K128 ["Networking"]
      564 GETTABLEKS                       R87 R87 K129 ["settingFromState"]
      566 CALL                             R86 1 1
      567 GETTABLEKS                       R87 R19 K130 ["connect"]
      569 DUPCLOSURE                       R88 K131 [PROTO_67]
      570 CAPTURE                          VAL R86
      571 CAPTURE                          VAL R82
      572 DUPCLOSURE                       R89 K132 [PROTO_70]
      573 CAPTURE                          VAL R50
      574 CAPTURE                          VAL R83
      575 CALL                             R87 2 1
      576 MOVE                             R88 R84
      577 CALL                             R87 1 1
      578 MOVE                             R84 R87
      579 SETTABLEKS                       R11 R84 K133 ["LocalizationId"]
      581 CLOSEUPVALS                      R25
      582 RETURN                           R84 1
