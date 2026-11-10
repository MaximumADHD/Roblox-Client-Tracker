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
        1 GETIMPORT                        R3 K1 [game]
        3 NAMECALL                         R1 R1 K2 ["getScriptCollaborationEnabled"]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 1
        7 SETTABLE                         R1 R0 R2
        8 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R3 K1 [game]
        3 NAMECALL                         R1 R1 K2 ["getScriptCollaborationEnabledOnServer"]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 1
        7 SETTABLE                         R1 R0 R2
        8 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getIsTeamCreateEnabled"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 SETTABLE                         R1 R0 R2
        6 RETURN                           R0 0

PROTO_17:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R3 K2 ["gameId"]
        7 GETTABLEKS                       R4 R1 K3 ["gameInfoController"]
        9 GETTABLEKS                       R5 R1 K4 ["gameOptionsController"]
       11 GETTABLEKS                       R6 R1 K5 ["gameMetadataController"]
       13 GETTABLEKS                       R7 R1 K6 ["policyInfoController"]
       15 GETTABLEKS                       R8 R1 K7 ["placesController"]
       17 NEWTABLE                         R9 0 17
       19 NEWCLOSURE                       R10 P0
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R3
       22 NEWCLOSURE                       R11 P1
       23 CAPTURE                          VAL R4
       24 CAPTURE                          VAL R3
       25 NEWCLOSURE                       R12 P2
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R3
       28 NEWCLOSURE                       R13 P3
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R3
       32 NEWCLOSURE                       R14 P4
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R3
       35 NEWCLOSURE                       R15 P5
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R3
       38 NEWCLOSURE                       R16 P6
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R3
       41 NEWCLOSURE                       R17 P7
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R3
       44 NEWCLOSURE                       R18 P8
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R3
       47 NEWCLOSURE                       R19 P9
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U1
       52 NEWCLOSURE                       R20 P10
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U2
       57 NEWCLOSURE                       R21 P11
       58 CAPTURE                          UPVAL U3
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R3
       61 CAPTURE                          UPVAL U4
       62 NEWCLOSURE                       R22 P12
       63 CAPTURE                          UPVAL U3
       64 CAPTURE                          UPVAL U5
       65 CAPTURE                          VAL R7
       66 NEWCLOSURE                       R23 P13
       67 CAPTURE                          UPVAL U3
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R8
       71 NEWCLOSURE                       R24 P14
       72 CAPTURE                          VAL R5
       73 CAPTURE                          UPVAL U6
       74 NEWCLOSURE                       R25 P15
       75 CAPTURE                          VAL R5
       76 CAPTURE                          UPVAL U7
       77 SETLIST                          R9 R10 16 [1]
       79 NEWCLOSURE                       R10 P16
       80 CAPTURE                          VAL R5
       81 CAPTURE                          UPVAL U8
       82 SETLIST                          R9 R10 1 [17]
       84 RETURN                           R9 1

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
        1 GETTABLEKS                       R0 R0 K0 ["Settings"]
        3 GETTABLEKS                       R0 R0 K1 ["Changed"]
        5 GETTABLEKS                       R0 R0 K2 ["ScriptCollabEnabled"]
        7 JUMPIFEQKNIL                     R0 ; [+8]
        9 GETUPVAL                         R1 1
       10 GETIMPORT                        R3 K4 [game]
       12 MOVE                             R4 R0
       13 NAMECALL                         R1 R1 K5 ["setScriptCollaborationEnabled"]
       15 CALL                             R1 3 0
       16 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["setIsTeamCreateEnabled"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Settings"]
        3 GETTABLEKS                       R0 R0 K1 ["Changed"]
        5 GETTABLEKS                       R0 R0 K2 ["TeamCreateEnabled"]
        7 JUMPIFEQKNIL                     R0 ; [+8]
        9 GETIMPORT                        R1 K5 [task.delay]
       11 LOADN                            R2 1
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R0
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_36:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R3 K2 ["gameId"]
        7 GETTABLEKS                       R4 R1 K3 ["gameInfoController"]
        9 GETTABLEKS                       R5 R1 K4 ["gameOptionsController"]
       11 GETTABLEKS                       R6 R1 K5 ["localization"]
       13 NEWTABLE                         R7 0 9
       15 NEWCLOSURE                       R8 P0
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R4
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R6
       23 NEWCLOSURE                       R9 P1
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          VAL R6
       31 NEWCLOSURE                       R10 P2
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R3
       35 NEWCLOSURE                       R11 P3
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R3
       39 NEWCLOSURE                       R12 P4
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          UPVAL U3
       47 NEWCLOSURE                       R13 P5
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R3
       51 NEWCLOSURE                       R14 P6
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          VAL R2
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R3
       57 NEWCLOSURE                       R15 P7
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R5
       60 NEWCLOSURE                       R16 P8
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R5
       63 SETLIST                          R7 R8 9 [1]
       65 RETURN                           R7 1

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
      137 MOVE                             R4 R0
      138 GETUPVAL                         R5 4
      139 CALL                             R4 1 1
      140 SETTABLEKS                       R4 R3 K42 ["ScriptCollabEnabled"]
      142 GETTABLEKS                       R4 R1 K0 ["Settings"]
      144 GETTABLEKS                       R4 R4 K37 ["Current"]
      146 GETTABLEKS                       R4 R4 K42 ["ScriptCollabEnabled"]
      148 SETTABLEKS                       R4 R3 K43 ["CurrentScriptCollabEnabled"]
      150 GETTABLEKS                       R5 R1 K0 ["Settings"]
      152 GETTABLEKS                       R5 R5 K37 ["Current"]
      154 GETTABLEKS                       R5 R5 K45 ["TeamCreateEnabled"]
      156 ORK                              R4 R5 K44 []
      157 SETTABLEKS                       R4 R3 K45 ["TeamCreateEnabled"]
      159 MOVE                             R4 R0
      160 GETUPVAL                         R5 5
      161 CALL                             R4 1 1
      162 SETTABLEKS                       R4 R3 K46 ["PendingTeamCreateEnabled"]
      164 GETTABLEKS                       R4 R1 K0 ["Settings"]
      166 GETTABLEKS                       R4 R4 K37 ["Current"]
      168 GETTABLEKS                       R4 R4 K47 ["ScriptCollaborationEnabledOnServer"]
      170 SETTABLEKS                       R4 R3 K48 ["ScriptCollabEnabledOnServer"]
      172 RETURN                           R3 1

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
       62 MOVE                             R3 R0
       63 GETUPVAL                         R4 8
       64 CALL                             R3 1 1
       65 SETTABLEKS                       R3 R2 K12 ["ScriptCollabEnabledChanged"]
       67 MOVE                             R3 R0
       68 GETUPVAL                         R4 9
       69 CALL                             R3 1 1
       70 SETTABLEKS                       R3 R2 K13 ["TeamCreateEnabledChanged"]
       72 RETURN                           R2 1

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
       17 GETUPVAL                         R1 3
       18 CALL                             R1 0 1
       19 JUMPIFNOT                        R1 ; [0]
       20 GETIMPORT                        R1 K6 [pcall]
       22 GETGLOBAL                        R2 K7 ["GetExperienceGenreString"]
       24 GETUPVAL                         R3 4
       25 GETTABLEKS                       R4 R0 K8 ["ExperienceGenre"]
       27 CALL                             R1 3 2
       28 JUMPIFNOT                        R1 ; [+1]
       29 JUMP                             ; [+10]
       30 GETIMPORT                        R3 K10 [warn]
       32 LOADK                            R5 K11 ["Error calling GetExperienceGenreString: "]
       33 FASTCALL1                        TOSTRING R2 ; [+3]
       34 MOVE                             R7 R2
       35 GETIMPORT                        R6 K13 [tostring]
       37 CALL                             R6 1 1
       38 CONCAT                           R4 R5 R6
       39 CALL                             R3 1 0
       40 LOADNIL                          R3
       41 GETTABLEKS                       R4 R0 K14 ["NameError"]
       43 JUMPIFNOT                        R4 ; [+15]
       44 GETUPVAL                         R5 5
       45 GETTABLEKS                       R6 R0 K14 ["NameError"]
       47 GETTABLE                         R4 R5 R6
       48 JUMPIFNOT                        R4 ; [+10]
       49 GETUPVAL                         R4 4
       50 LOADK                            R6 K15 ["General"]
       51 GETUPVAL                         R8 5
       52 GETTABLEKS                       R9 R0 K14 ["NameError"]
       54 GETTABLE                         R7 R8 R9
       55 NAMECALL                         R4 R4 K16 ["getText"]
       57 CALL                             R4 3 1
       58 MOVE                             R3 R4
       59 LOADNIL                          R4
       60 GETTABLEKS                       R5 R0 K17 ["DescriptionError"]
       62 JUMPIFNOT                        R5 ; [+15]
       63 GETUPVAL                         R6 6
       64 GETTABLEKS                       R7 R0 K17 ["DescriptionError"]
       66 GETTABLE                         R5 R6 R7
       67 JUMPIFNOT                        R5 ; [+10]
       68 GETUPVAL                         R5 4
       69 LOADK                            R7 K15 ["General"]
       70 GETUPVAL                         R9 6
       71 GETTABLEKS                       R10 R0 K17 ["DescriptionError"]
       73 GETTABLE                         R8 R9 R10
       74 NAMECALL                         R5 R5 K16 ["getText"]
       76 CALL                             R5 3 1
       77 MOVE                             R4 R5
       78 GETTABLEKS                       R5 R0 K18 ["GameIconError"]
       80 JUMPIFNOT                        R5 ; [+5]
       81 GETUPVAL                         R6 7
       82 GETTABLEKS                       R7 R0 K18 ["GameIconError"]
       84 GETTABLE                         R5 R6 R7
       85 JUMPIFNOT                        R5 ; [0]
       86 GETTABLEKS                       R5 R0 K19 ["ThumbnailsError"]
       88 JUMPIFNOT                        R5 ; [+5]
       89 GETUPVAL                         R6 7
       90 GETTABLEKS                       R7 R0 K19 ["ThumbnailsError"]
       92 GETTABLE                         R5 R6 R7
       93 JUMPIFNOT                        R5 ; [0]
       94 GETTABLEKS                       R5 R0 K20 ["AltTextError"]
       96 JUMPIFNOT                        R5 ; [+12]
       97 GETTABLEKS                       R5 R0 K20 ["AltTextError"]
       99 GETTABLEKS                       R5 R5 K21 ["Error"]
      101 JUMPIFNOT                        R5 ; [+7]
      102 GETUPVAL                         R6 8
      103 GETTABLEKS                       R7 R0 K20 ["AltTextError"]
      105 GETTABLEKS                       R7 R7 K21 ["Error"]
      107 GETTABLE                         R5 R6 R7
      108 JUMPIFNOT                        R5 ; [0]
      109 GETUPVAL                         R5 9
      110 CALL                             R5 0 1
      111 JUMPIFNOT                        R5 ; [+8]
      112 GETTABLEKS                       R5 R0 K22 ["PlayableDevicesError"]
      114 JUMPIFNOT                        R5 ; [+5]
      115 GETUPVAL                         R6 10
      116 GETTABLEKS                       R7 R0 K22 ["PlayableDevicesError"]
      118 GETTABLE                         R5 R6 R7
      119 JUMPIFNOT                        R5 ; [0]
      120 LOADB                            R5 0
      121 GETTABLEKS                       R6 R0 K23 ["PendingTeamCreateEnabled"]
      123 JUMPIFEQKNIL                     R6 ; [+8]
      125 GETTABLEKS                       R6 R0 K23 ["PendingTeamCreateEnabled"]
      127 GETUPVAL                         R7 11
      128 JUMPIFNOTEQ                      R6 R7 ; [+2]
      130 LOADB                            R5 0 +1
      131 LOADB                            R5 1
      132 DUPTABLE                         R6 K31 [{"Name", "Description", "Separator", "EnableTeamCreate", "EnableScriptCollab", "Separator2", "Guidelines"}]
      133 GETUPVAL                         R7 1
      134 GETTABLEKS                       R7 R7 K3 ["createElement"]
      136 GETUPVAL                         R8 12
      137 DUPTABLE                         R9 K34 [{"LayoutOrder", "Title"}]
      138 GETUPVAL                         R10 13
      139 NAMECALL                         R10 R10 K35 ["getNextOrder"]
      141 CALL                             R10 1 1
      142 SETTABLEKS                       R10 R9 K32 ["LayoutOrder"]
      144 GETUPVAL                         R10 4
      145 LOADK                            R12 K15 ["General"]
      146 LOADK                            R13 K36 ["TitleName"]
      147 NAMECALL                         R10 R10 K16 ["getText"]
      149 CALL                             R10 3 1
      150 SETTABLEKS                       R10 R9 K33 ["Title"]
      152 DUPTABLE                         R10 K38 [{"TextBox"}]
      153 GETUPVAL                         R11 1
      154 GETTABLEKS                       R11 R11 K3 ["createElement"]
      156 GETUPVAL                         R12 14
      157 DUPTABLE                         R13 K45 [{["Disabled"], ["ErrorText"], ["MaxLength"] = 50, ["OnTextChanged"], ["Text"]}]
      158 GETTABLEKS                       R15 R0 K24 ["Name"]
      160 JUMPIFEQKNIL                     R15 ; [+2]
      162 LOADB                            R14 0 +1
      163 LOADB                            R14 1
      164 SETTABLEKS                       R14 R13 K39 ["Disabled"]
      166 SETTABLEKS                       R3 R13 K40 ["ErrorText"]
      168 GETTABLEKS                       R14 R0 K46 ["NameChanged"]
      170 SETTABLEKS                       R14 R13 K43 ["OnTextChanged"]
      172 GETTABLEKS                       R15 R0 K24 ["Name"]
      174 ORK                              R14 R15 K47 [""]
      175 SETTABLEKS                       R14 R13 K44 ["Text"]
      177 CALL                             R11 2 1
      178 SETTABLEKS                       R11 R10 K37 ["TextBox"]
      180 CALL                             R7 3 1
      181 SETTABLEKS                       R7 R6 K24 ["Name"]
      183 GETUPVAL                         R7 1
      184 GETTABLEKS                       R7 R7 K3 ["createElement"]
      186 GETUPVAL                         R8 12
      187 DUPTABLE                         R9 K34 [{"LayoutOrder", "Title"}]
      188 GETUPVAL                         R10 13
      189 NAMECALL                         R10 R10 K35 ["getNextOrder"]
      191 CALL                             R10 1 1
      192 SETTABLEKS                       R10 R9 K32 ["LayoutOrder"]
      194 GETUPVAL                         R10 4
      195 LOADK                            R12 K15 ["General"]
      196 LOADK                            R13 K48 ["TitleDescription"]
      197 NAMECALL                         R10 R10 K16 ["getText"]
      199 CALL                             R10 3 1
      200 SETTABLEKS                       R10 R9 K33 ["Title"]
      202 DUPTABLE                         R10 K38 [{"TextBox"}]
      203 GETUPVAL                         R11 1
      204 GETTABLEKS                       R11 R11 K3 ["createElement"]
      206 GETUPVAL                         R12 14
      207 DUPTABLE                         R13 K54 [{["Disabled"], ["ErrorText"], ["MaxLength"] = 1000, ["MultiLine"] = True, ["OnTextChanged"], ["Height"] = 130, ["Text"]}]
      208 GETTABLEKS                       R15 R0 K25 ["Description"]
      210 JUMPIFEQKNIL                     R15 ; [+2]
      212 LOADB                            R14 0 +1
      213 LOADB                            R14 1
      214 SETTABLEKS                       R14 R13 K39 ["Disabled"]
      216 SETTABLEKS                       R4 R13 K40 ["ErrorText"]
      218 GETTABLEKS                       R14 R0 K55 ["DescriptionChanged"]
      220 SETTABLEKS                       R14 R13 K43 ["OnTextChanged"]
      222 GETTABLEKS                       R15 R0 K25 ["Description"]
      224 ORK                              R14 R15 K47 [""]
      225 SETTABLEKS                       R14 R13 K44 ["Text"]
      227 CALL                             R11 2 1
      228 SETTABLEKS                       R11 R10 K37 ["TextBox"]
      230 CALL                             R7 3 1
      231 SETTABLEKS                       R7 R6 K25 ["Description"]
      233 GETUPVAL                         R7 1
      234 GETTABLEKS                       R7 R7 K3 ["createElement"]
      236 GETUPVAL                         R8 15
      237 DUPTABLE                         R9 K56 [{"LayoutOrder"}]
      238 GETUPVAL                         R10 13
      239 NAMECALL                         R10 R10 K35 ["getNextOrder"]
      241 CALL                             R10 1 1
      242 SETTABLEKS                       R10 R9 K32 ["LayoutOrder"]
      244 CALL                             R7 2 1
      245 SETTABLEKS                       R7 R6 K26 ["Separator"]
      247 GETUPVAL                         R7 1
      248 GETTABLEKS                       R7 R7 K3 ["createElement"]
      250 GETUPVAL                         R8 16
      251 DUPTABLE                         R9 K61 [{"Title", "LayoutOrder", "Selected", "WarningTooltipText", "OnClick", "LinkProps"}]
      252 GETUPVAL                         R10 4
      253 LOADK                            R12 K15 ["General"]
      254 LOADK                            R13 K62 ["TitleEnableTeamCreate"]
      255 NAMECALL                         R10 R10 K16 ["getText"]
      257 CALL                             R10 3 1
      258 SETTABLEKS                       R10 R9 K33 ["Title"]
      260 GETUPVAL                         R10 13
      261 NAMECALL                         R10 R10 K35 ["getNextOrder"]
      263 CALL                             R10 1 1
      264 SETTABLEKS                       R10 R9 K32 ["LayoutOrder"]
      266 GETTABLEKS                       R11 R0 K23 ["PendingTeamCreateEnabled"]
      268 JUMPIFEQKNIL                     R11 ; [+4]
      270 GETTABLEKS                       R10 R0 K23 ["PendingTeamCreateEnabled"]
      272 JUMP                             ; [+1]
      273 GETUPVAL                         R10 11
      274 SETTABLEKS                       R10 R9 K57 ["Selected"]
      276 JUMPIFNOT                        R5 ; [+7]
      277 GETUPVAL                         R10 4
      278 LOADK                            R12 K15 ["General"]
      279 LOADK                            R13 K63 ["TeamCreateChangeWarningTooltip"]
      280 NAMECALL                         R10 R10 K16 ["getText"]
      282 CALL                             R10 3 1
      283 JUMP                             ; [+1]
      284 LOADNIL                          R10
      285 SETTABLEKS                       R10 R9 K58 ["WarningTooltipText"]
      287 NEWCLOSURE                       R10 P0
      288 CAPTURE                          VAL R0
      289 CAPTURE                          UPVAL U11
      290 SETTABLEKS                       R10 R9 K59 ["OnClick"]
      292 DUPTABLE                         R10 K66 [{"Text", "LinkText", "OnLinkClicked"}]
      293 GETUPVAL                         R11 4
      294 LOADK                            R13 K15 ["General"]
      295 LOADK                            R14 K67 ["EnableTeamCreateDescription"]
      296 NAMECALL                         R11 R11 K16 ["getText"]
      298 CALL                             R11 3 1
      299 SETTABLEKS                       R11 R10 K44 ["Text"]
      301 GETUPVAL                         R11 4
      302 LOADK                            R13 K15 ["General"]
      303 LOADK                            R14 K68 ["LearnMoreLink"]
      304 NAMECALL                         R11 R11 K16 ["getText"]
      306 CALL                             R11 3 1
      307 SETTABLEKS                       R11 R10 K64 ["LinkText"]
      309 DUPCLOSURE                       R11 K69 [PROTO_57]
      310 CAPTURE                          UPVAL U17
      311 CAPTURE                          UPVAL U18
      312 SETTABLEKS                       R11 R10 K65 ["OnLinkClicked"]
      314 SETTABLEKS                       R10 R9 K60 ["LinkProps"]
      316 CALL                             R7 2 1
      317 SETTABLEKS                       R7 R6 K27 ["EnableTeamCreate"]
      319 GETUPVAL                         R7 1
      320 GETTABLEKS                       R7 R7 K3 ["createElement"]
      322 GETUPVAL                         R8 16
      323 DUPTABLE                         R9 K71 [{"Title", "Description", "LayoutOrder", "Disabled", "Selected", "ShowWarning", "OnClick"}]
      324 GETUPVAL                         R10 4
      325 LOADK                            R12 K15 ["General"]
      326 LOADK                            R13 K72 ["TitleScriptDraftsMode"]
      327 NAMECALL                         R10 R10 K16 ["getText"]
      329 CALL                             R10 3 1
      330 SETTABLEKS                       R10 R9 K33 ["Title"]
      332 GETUPVAL                         R10 19
      333 SETTABLEKS                       R10 R9 K25 ["Description"]
      335 GETUPVAL                         R10 13
      336 NAMECALL                         R10 R10 K35 ["getNextOrder"]
      338 CALL                             R10 1 1
      339 SETTABLEKS                       R10 R9 K32 ["LayoutOrder"]
      341 GETUPVAL                         R11 11
      342 NOT                              R10 R11
      343 SETTABLEKS                       R10 R9 K39 ["Disabled"]
      345 GETTABLEKS                       R10 R0 K73 ["ScriptCollabEnabled"]
      347 SETTABLEKS                       R10 R9 K57 ["Selected"]
      349 GETUPVAL                         R10 20
      350 SETTABLEKS                       R10 R9 K70 ["ShowWarning"]
      352 NEWCLOSURE                       R10 P2
      353 CAPTURE                          VAL R0
      354 SETTABLEKS                       R10 R9 K59 ["OnClick"]
      356 CALL                             R7 2 1
      357 SETTABLEKS                       R7 R6 K28 ["EnableScriptCollab"]
      359 GETUPVAL                         R8 21
      360 JUMPIF                           R8 ; [+13]
      361 GETUPVAL                         R7 1
      362 GETTABLEKS                       R7 R7 K3 ["createElement"]
      364 GETUPVAL                         R8 15
      365 DUPTABLE                         R9 K56 [{"LayoutOrder"}]
      366 GETUPVAL                         R10 13
      367 NAMECALL                         R10 R10 K35 ["getNextOrder"]
      369 CALL                             R10 1 1
      370 SETTABLEKS                       R10 R9 K32 ["LayoutOrder"]
      372 CALL                             R7 2 1
      373 JUMP                             ; [+1]
      374 LOADNIL                          R7
      375 SETTABLEKS                       R7 R6 K29 ["Separator2"]
      377 GETUPVAL                         R8 21
      378 JUMPIF                           R8 ; [+23]
      379 GETUPVAL                         R8 22
      380 JUMPIFNOT                        R8 ; [+21]
      381 GETUPVAL                         R7 1
      382 GETTABLEKS                       R7 R7 K3 ["createElement"]
      384 GETUPVAL                         R8 23
      385 DUPTABLE                         R9 K76 [{"LayoutOrder", "GameGuideline", "GameId"}]
      386 GETUPVAL                         R10 13
      387 NAMECALL                         R10 R10 K35 ["getNextOrder"]
      389 CALL                             R10 1 1
      390 SETTABLEKS                       R10 R9 K32 ["LayoutOrder"]
      392 GETTABLEKS                       R10 R0 K30 ["Guidelines"]
      394 SETTABLEKS                       R10 R9 K74 ["GameGuideline"]
      396 GETTABLEKS                       R10 R0 K75 ["GameId"]
      398 SETTABLEKS                       R10 R9 K75 ["GameId"]
      400 CALL                             R7 2 1
      401 JUMP                             ; [+1]
      402 LOADNIL                          R7
      403 SETTABLEKS                       R7 R6 K30 ["Guidelines"]
      405 RETURN                           R6 1

PROTO_60:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Localization"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["new"]
        7 CALL                             R2 0 1
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 GETTABLEKS                       R6 R0 K0 ["props"]
       13 GETTABLEKS                       R6 R6 K4 ["TeamCreateEnabled"]
       15 ORK                              R3 R6 K3 [False]
       16 MOVE                             R6 R3
       17 JUMPIFNOT                        R6 ; [+12]
       18 GETTABLEKS                       R7 R0 K0 ["props"]
       20 GETTABLEKS                       R7 R7 K5 ["ScriptCollabEnabledOnServer"]
       22 GETTABLEKS                       R8 R0 K0 ["props"]
       24 GETTABLEKS                       R8 R8 K6 ["ScriptCollabEnabled"]
       26 JUMPIFNOTEQ                      R7 R8 ; [+2]
       28 LOADB                            R6 0 +1
       29 LOADB                            R6 1
       30 MOVE                             R4 R6
       31 JUMPIF                           R3 ; [+7]
       32 LOADK                            R8 K7 ["General"]
       33 LOADK                            R9 K8 ["EnableTeamCreateForDraftsMode"]
       34 NAMECALL                         R6 R1 K9 ["getText"]
       36 CALL                             R6 3 1
       37 MOVE                             R5 R6
       38 JUMP                             ; [+14]
       39 JUMPIFNOT                        R4 ; [+7]
       40 LOADK                            R8 K7 ["General"]
       41 LOADK                            R9 K10 ["ServerRestartWarning"]
       42 NAMECALL                         R6 R1 K9 ["getText"]
       44 CALL                             R6 3 1
       45 MOVE                             R5 R6
       46 JUMP                             ; [+6]
       47 LOADK                            R8 K7 ["General"]
       48 LOADK                            R9 K11 ["ScriptDraftsMode"]
       49 NAMECALL                         R6 R1 K9 ["getText"]
       51 CALL                             R6 3 1
       52 MOVE                             R5 R6
       53 NEWCLOSURE                       R6 P0
       54 CAPTURE                          VAL R0
       55 CAPTURE                          UPVAL U1
       56 CAPTURE                          UPVAL U2
       57 CAPTURE                          UPVAL U3
       58 CAPTURE                          VAL R1
       59 CAPTURE                          UPVAL U4
       60 CAPTURE                          UPVAL U5
       61 CAPTURE                          UPVAL U6
       62 CAPTURE                          UPVAL U7
       63 CAPTURE                          UPVAL U8
       64 CAPTURE                          UPVAL U9
       65 CAPTURE                          REF R3
       66 CAPTURE                          UPVAL U10
       67 CAPTURE                          VAL R2
       68 CAPTURE                          UPVAL U11
       69 CAPTURE                          UPVAL U12
       70 CAPTURE                          UPVAL U13
       71 CAPTURE                          UPVAL U14
       72 CAPTURE                          UPVAL U15
       73 CAPTURE                          REF R5
       74 CAPTURE                          REF R4
       75 CAPTURE                          UPVAL U16
       76 CAPTURE                          UPVAL U17
       77 CAPTURE                          UPVAL U18
       78 GETUPVAL                         R7 1
       79 GETTABLEKS                       R7 R7 K12 ["createElement"]
       81 GETUPVAL                         R8 19
       82 DUPTABLE                         R9 K18 [{"SettingsLoadJobs", "SettingsSaveJobs", "Title", "PageId", "CreateChildren"}]
       83 GETUPVAL                         R10 20
       84 SETTABLEKS                       R10 R9 K13 ["SettingsLoadJobs"]
       86 GETUPVAL                         R10 21
       87 SETTABLEKS                       R10 R9 K14 ["SettingsSaveJobs"]
       89 LOADK                            R12 K7 ["General"]
       90 LOADK                            R14 K19 ["Category"]
       91 GETUPVAL                         R15 22
       92 CONCAT                           R13 R14 R15
       93 NAMECALL                         R10 R1 K9 ["getText"]
       95 CALL                             R10 3 1
       96 SETTABLEKS                       R10 R9 K15 ["Title"]
       98 GETUPVAL                         R10 22
       99 SETTABLEKS                       R10 R9 K16 ["PageId"]
      101 SETTABLEKS                       R6 R9 K17 ["CreateChildren"]
      103 CALL                             R7 2 -1
      104 CLOSEUPVALS                      R3
      105 RETURN                           R7 -1

PROTO_61:
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

PROTO_62:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Settings"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_63:
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

PROTO_64:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_65:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_66:
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
       11 LOADK                            R3 K5 ["TranslateGameModeratedErrors"]
       12 NAMECALL                         R1 R1 K6 ["GetFastFlag"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K4 [game]
       17 LOADK                            R4 K7 ["GameSettingsExperienceGuidelines"]
       18 NAMECALL                         R2 R2 K6 ["GetFastFlag"]
       20 CALL                             R2 2 1
       21 GETIMPORT                        R3 K4 [game]
       23 LOADK                            R5 K8 ["RemoveQuestionnaireFromGameSettings"]
       24 LOADB                            R6 0
       25 NAMECALL                         R3 R3 K9 ["DefineFastFlag"]
       27 CALL                             R3 3 1
       28 GETIMPORT                        R4 K4 [game]
       30 LOADK                            R6 K10 ["FStringTeamCreateLearnMoreLinkDest"]
       31 LOADK                            R7 K11 ["https://create.roblox.com/docs/projects/collaboration"]
       32 NAMECALL                         R4 R4 K12 ["DefineFastString"]
       34 CALL                             R4 3 1
       35 GETIMPORT                        R5 K14 [require]
       37 GETTABLEKS                       R6 R0 K15 ["Src"]
       39 GETTABLEKS                       R6 R6 K16 ["Flags"]
       41 GETTABLEKS                       R6 R6 K17 ["getFFlagGameSettingsAddIARCErrorMessaging"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [game]
       46 LOADK                            R8 K18 ["StudioService"]
       47 NAMECALL                         R6 R6 K19 ["GetService"]
       49 CALL                             R6 2 1
       50 GETIMPORT                        R7 K4 [game]
       52 LOADK                            R9 K20 ["GuiService"]
       53 NAMECALL                         R7 R7 K19 ["GetService"]
       55 CALL                             R7 2 1
       56 GETIMPORT                        R8 K1 [script]
       58 GETTABLEKS                       R8 R8 K21 ["Name"]
       60 DUPTABLE                         R9 K26 [{["Moderated"] = "ErrorNameModerated", ["Empty"] = "ErrorNameEmpty"}]
       61 DUPTABLE                         R10 K29 [{["Moderated"] = "ErrorDescModerated", ["Empty"] = "ErrorFieldEmpty"}]
       62 DUPTABLE                         R11 K34 [{["UploadingTooQuickly"] = "ErrorImageLimit", ["ImageNotRecognized"] = "ErrorImageNotRecognized"}]
       63 DUPTABLE                         R12 K35 [{["Empty"] = "ErrorFieldEmpty"}]
       64 DUPTABLE                         R13 K37 [{["Moderated"] = "ErrorAltTextModerated"}]
       65 GETIMPORT                        R14 K1 [script]
       67 GETTABLEKS                       R14 R14 K2 ["Parent"]
       69 GETIMPORT                        R15 K14 [require]
       71 GETTABLEKS                       R16 R0 K38 ["Packages"]
       73 GETTABLEKS                       R16 R16 K39 ["Roact"]
       75 CALL                             R15 1 1
       76 GETIMPORT                        R16 K14 [require]
       78 GETTABLEKS                       R17 R0 K38 ["Packages"]
       80 GETTABLEKS                       R17 R17 K40 ["RoactRodux"]
       82 CALL                             R16 1 1
       83 GETIMPORT                        R17 K14 [require]
       85 GETTABLEKS                       R18 R0 K38 ["Packages"]
       87 GETTABLEKS                       R18 R18 K41 ["Cryo"]
       89 CALL                             R17 1 1
       90 GETIMPORT                        R18 K14 [require]
       92 GETTABLEKS                       R19 R0 K38 ["Packages"]
       94 GETTABLEKS                       R19 R19 K42 ["Framework"]
       96 CALL                             R18 1 1
       97 GETTABLEKS                       R19 R18 K43 ["ContextServices"]
       99 GETTABLEKS                       R20 R19 K44 ["withContext"]
      101 GETIMPORT                        R21 K14 [require]
      103 GETTABLEKS                       R22 R0 K15 ["Src"]
      105 GETTABLEKS                       R22 R22 K43 ["ContextServices"]
      107 GETTABLEKS                       R22 R22 K45 ["Dialog"]
      109 CALL                             R21 1 1
      110 LOADNIL                          R22
      111 JUMPIFNOT                        R2 ; [+8]
      112 GETIMPORT                        R23 K14 [require]
      114 GETTABLEKS                       R24 R14 K46 ["Components"]
      116 GETTABLEKS                       R24 R24 K47 ["Guidelines"]
      118 CALL                             R23 1 1
      119 MOVE                             R22 R23
      120 GETTABLEKS                       R23 R18 K48 ["UI"]
      122 GETTABLEKS                       R24 R23 K49 ["Separator"]
      124 GETTABLEKS                       R25 R23 K50 ["LinkText"]
      126 GETTABLEKS                       R26 R23 K51 ["TextInput"]
      128 GETTABLEKS                       R27 R23 K52 ["Image"]
      130 GETTABLEKS                       R28 R23 K53 ["TextLabel"]
      132 GETTABLEKS                       R29 R23 K54 ["TitledFrame"]
      134 GETTABLEKS                       R30 R18 K55 ["Util"]
      136 GETTABLEKS                       R31 R30 K56 ["StyleModifier"]
      138 GETTABLEKS                       R32 R30 K57 ["LayoutOrderIterator"]
      140 GETIMPORT                        R33 K14 [require]
      142 GETTABLEKS                       R34 R0 K15 ["Src"]
      144 GETTABLEKS                       R34 R34 K46 ["Components"]
      146 GETTABLEKS                       R34 R34 K58 ["SettingsPages"]
      148 GETTABLEKS                       R34 R34 K59 ["SettingsPage"]
      150 CALL                             R33 1 1
      151 GETIMPORT                        R34 K14 [require]
      153 GETTABLEKS                       R35 R0 K15 ["Src"]
      155 GETTABLEKS                       R35 R35 K46 ["Components"]
      157 GETTABLEKS                       R35 R35 K58 ["SettingsPages"]
      159 GETTABLEKS                       R35 R35 K60 ["InsufficientPermissionsPage"]
      161 CALL                             R34 1 1
      162 GETIMPORT                        R35 K14 [require]
      164 GETTABLEKS                       R36 R0 K15 ["Src"]
      166 GETTABLEKS                       R36 R36 K46 ["Components"]
      168 GETTABLEKS                       R36 R36 K61 ["ToggleButtonWithTitle"]
      170 CALL                             R35 1 1
      171 GETIMPORT                        R36 K14 [require]
      173 GETTABLEKS                       R37 R0 K15 ["Src"]
      175 GETTABLEKS                       R37 R37 K62 ["Actions"]
      177 GETTABLEKS                       R37 R37 K63 ["AddChange"]
      179 CALL                             R36 1 1
      180 GETIMPORT                        R37 K14 [require]
      182 GETTABLEKS                       R38 R0 K15 ["Src"]
      184 GETTABLEKS                       R38 R38 K62 ["Actions"]
      186 GETTABLEKS                       R38 R38 K64 ["AddErrors"]
      188 CALL                             R37 1 1
      189 GETIMPORT                        R38 K14 [require]
      191 GETTABLEKS                       R39 R0 K15 ["Src"]
      193 GETTABLEKS                       R39 R39 K62 ["Actions"]
      195 GETTABLEKS                       R39 R39 K65 ["DiscardError"]
      197 CALL                             R38 1 1
      198 GETIMPORT                        R39 K14 [require]
      200 GETTABLEKS                       R40 R0 K15 ["Src"]
      202 GETTABLEKS                       R40 R40 K62 ["Actions"]
      204 GETTABLEKS                       R40 R40 K66 ["SetCreatorId"]
      206 CALL                             R39 1 1
      207 GETIMPORT                        R40 K14 [require]
      209 GETTABLEKS                       R41 R0 K15 ["Src"]
      211 GETTABLEKS                       R41 R41 K62 ["Actions"]
      213 GETTABLEKS                       R41 R41 K67 ["SetCreatorType"]
      215 CALL                             R40 1 1
      216 GETIMPORT                        R41 K14 [require]
      218 GETTABLEKS                       R42 R0 K15 ["Src"]
      220 GETTABLEKS                       R42 R42 K55 ["Util"]
      222 GETTABLEKS                       R42 R42 K68 ["FileUtils"]
      224 CALL                             R41 1 1
      225 GETIMPORT                        R42 K14 [require]
      227 GETTABLEKS                       R43 R0 K15 ["Src"]
      229 GETTABLEKS                       R43 R43 K55 ["Util"]
      231 GETTABLEKS                       R43 R43 K69 ["DEPRECATED_Constants"]
      233 CALL                             R42 1 1
      234 GETIMPORT                        R43 K14 [require]
      236 GETTABLEKS                       R44 R0 K15 ["Src"]
      238 GETTABLEKS                       R44 R44 K55 ["Util"]
      240 GETTABLEKS                       R44 R44 K70 ["GameSettingsUtilities"]
      242 CALL                             R43 1 1
      243 GETTABLEKS                       R44 R43 K71 ["shouldShowDevPublishLocations"]
      245 GETTABLEKS                       R45 R43 K72 ["getOptInLocationsRequirementsLink"]
      247 GETTABLEKS                       R46 R43 K73 ["calculateTextSize"]
      249 GETIMPORT                        R47 K14 [require]
      251 GETTABLEKS                       R48 R0 K15 ["Src"]
      253 GETTABLEKS                       R48 R48 K55 ["Util"]
      255 GETTABLEKS                       R48 R48 K74 ["KeyProvider"]
      257 CALL                             R47 1 1
      258 GETTABLEKS                       R48 R47 K75 ["getOptInLocationsKeyName"]
      260 CALL                             R48 0 1
      261 GETTABLEKS                       R49 R47 K76 ["getChinaKeyName"]
      263 CALL                             R49 0 1
      264 GETTABLEKS                       R50 R47 K77 ["getPlayerAcceptanceKeyName"]
      266 CALL                             R50 0 1
      267 GETTABLEKS                       R51 R47 K78 ["getApprovedKeyName"]
      269 CALL                             R51 0 1
      270 GETTABLEKS                       R52 R47 K79 ["getInReviewKeyName"]
      272 CALL                             R52 0 1
      273 GETTABLEKS                       R53 R47 K80 ["getRejectedKeyName"]
      275 CALL                             R53 0 1
      276 GETTABLEKS                       R54 R47 K81 ["getTeamCreateEnabledKeyName"]
      278 CALL                             R54 0 1
      279 GETTABLEKS                       R55 R47 K82 ["getScriptCollaborationEnabledKeyName"]
      281 CALL                             R55 0 1
      282 GETTABLEKS                       R56 R47 K83 ["getScriptCollaborationEnabledOnServerKeyName"]
      284 MOVE                             R57 R56
      285 CALL                             R57 0 1
      286 DUPCLOSURE                       R58 K84 [PROTO_17]
      287 CAPTURE                          VAL R2
      288 CAPTURE                          VAL R39
      289 CAPTURE                          VAL R40
      290 CAPTURE                          VAL R44
      291 CAPTURE                          VAL R48
      292 CAPTURE                          VAL R50
      293 CAPTURE                          VAL R55
      294 CAPTURE                          VAL R57
      295 CAPTURE                          VAL R54
      296 DUPCLOSURE                       R59 K85 [PROTO_36]
      297 CAPTURE                          VAL R37
      298 CAPTURE                          VAL R1
      299 CAPTURE                          VAL R17
      300 CAPTURE                          VAL R36
      301 CAPTURE                          VAL R44
      302 CAPTURE                          VAL R48
      303 DUPCLOSURE                       R60 K86 [PROTO_37]
      304 CAPTURE                          VAL R2
      305 CAPTURE                          VAL R44
      306 CAPTURE                          VAL R48
      307 CAPTURE                          VAL R50
      308 CAPTURE                          VAL R55
      309 CAPTURE                          VAL R54
      310 DUPCLOSURE                       R61 K87 [PROTO_45]
      311 CAPTURE                          VAL R38
      312 CAPTURE                          VAL R36
      313 CAPTURE                          VAL R17
      314 CAPTURE                          VAL R42
      315 CAPTURE                          VAL R37
      316 CAPTURE                          VAL R5
      317 CAPTURE                          VAL R44
      318 CAPTURE                          VAL R48
      319 CAPTURE                          VAL R55
      320 CAPTURE                          VAL R54
      321 GETTABLEKS                       R62 R15 K88 ["PureComponent"]
      323 GETIMPORT                        R64 K1 [script]
      325 GETTABLEKS                       R64 R64 K21 ["Name"]
      327 NAMECALL                         R62 R62 K89 ["extend"]
      329 CALL                             R62 2 1
      330 DUPCLOSURE                       R63 K90 [PROTO_46]
      331 CAPTURE                          VAL R6
      332 SETTABLEKS                       R63 R62 K91 ["hasPermissionToEdit"]
      334 DUPCLOSURE                       R63 K92 [PROTO_47]
      335 DUPCLOSURE                       R64 K93 [PROTO_55]
      336 CAPTURE                          VAL R41
      337 CAPTURE                          VAL R48
      338 CAPTURE                          VAL R51
      339 CAPTURE                          VAL R52
      340 CAPTURE                          VAL R53
      341 CAPTURE                          VAL R31
      342 CAPTURE                          VAL R15
      343 CAPTURE                          VAL R45
      344 CAPTURE                          VAL R49
      345 CAPTURE                          VAL R7
      346 CAPTURE                          VAL R46
      347 CAPTURE                          VAL R44
      348 CAPTURE                          VAL R32
      349 CAPTURE                          VAL R28
      350 CAPTURE                          VAL R25
      351 CAPTURE                          VAL R27
      352 SETTABLEKS                       R64 R62 K94 ["init"]
      354 NEWCLOSURE                       R64 P7
      355 CAPTURE                          VAL R32
      356 CAPTURE                          VAL R15
      357 CAPTURE                          VAL R34
      358 CAPTURE                          VAL R44
      359 CAPTURE                          VAL R9
      360 CAPTURE                          VAL R10
      361 CAPTURE                          VAL R11
      362 CAPTURE                          VAL R13
      363 CAPTURE                          VAL R5
      364 CAPTURE                          VAL R12
      365 CAPTURE                          VAL R29
      366 CAPTURE                          VAL R26
      367 CAPTURE                          VAL R24
      368 CAPTURE                          VAL R35
      369 CAPTURE                          VAL R7
      370 CAPTURE                          VAL R4
      371 CAPTURE                          VAL R3
      372 CAPTURE                          VAL R2
      373 CAPTURE                          REF R22
      374 CAPTURE                          VAL R33
      375 CAPTURE                          VAL R58
      376 CAPTURE                          VAL R59
      377 CAPTURE                          VAL R8
      378 SETTABLEKS                       R64 R62 K95 ["render"]
      380 DUPCLOSURE                       R64 K96 [PROTO_61]
      381 SETGLOBAL                        R64 K97 ["GetExperienceGenreString"]
      383 MOVE                             R64 R20
      384 DUPTABLE                         R65 K102 [{"Localization", "Stylizer", "Dialog", "Mouse", "Plugin"}]
      385 GETTABLEKS                       R66 R19 K98 ["Localization"]
      387 SETTABLEKS                       R66 R65 K98 ["Localization"]
      389 GETTABLEKS                       R66 R19 K99 ["Stylizer"]
      391 SETTABLEKS                       R66 R65 K99 ["Stylizer"]
      393 SETTABLEKS                       R21 R65 K45 ["Dialog"]
      395 GETTABLEKS                       R66 R19 K100 ["Mouse"]
      397 SETTABLEKS                       R66 R65 K100 ["Mouse"]
      399 GETTABLEKS                       R66 R19 K101 ["Plugin"]
      401 SETTABLEKS                       R66 R65 K101 ["Plugin"]
      403 CALL                             R64 1 1
      404 MOVE                             R65 R62
      405 CALL                             R64 1 1
      406 MOVE                             R62 R64
      407 GETIMPORT                        R64 K14 [require]
      409 GETTABLEKS                       R65 R0 K15 ["Src"]
      411 GETTABLEKS                       R65 R65 K103 ["Networking"]
      413 GETTABLEKS                       R65 R65 K104 ["settingFromState"]
      415 CALL                             R64 1 1
      416 GETTABLEKS                       R65 R16 K105 ["connect"]
      418 DUPCLOSURE                       R66 K106 [PROTO_63]
      419 CAPTURE                          VAL R64
      420 CAPTURE                          VAL R60
      421 DUPCLOSURE                       R67 K107 [PROTO_66]
      422 CAPTURE                          VAL R36
      423 CAPTURE                          VAL R61
      424 CALL                             R65 2 1
      425 MOVE                             R66 R62
      426 CALL                             R65 1 1
      427 MOVE                             R62 R65
      428 SETTABLEKS                       R8 R62 K108 ["LocalizationId"]
      430 CLOSEUPVALS                      R22
      431 RETURN                           R62 1
