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
        2 JUMPIFNOT                        R1 ; [+57]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R1 R1 K0 ["getOptInLocations"]
        7 CALL                             R1 2 1
        8 NEWTABLE                         R2 0 0
       10 JUMPIFEQKNIL                     R1 ; [+7]
       12 GETIMPORT                        R3 K2 [next]
       14 MOVE                             R4 R1
       15 CALL                             R3 1 1
       16 JUMPIFNOTEQKNIL                  R3 ; [+13]
       18 DUPTABLE                         R3 K4 [{"China"}]
       19 DUPTABLE                         R4 K7 [{"status", "selected"}]
       20 LOADK                            R5 K8 ["Unknown"]
       21 SETTABLEKS                       R5 R4 K5 ["status"]
       23 LOADB                            R5 0
       24 SETTABLEKS                       R5 R4 K6 ["selected"]
       26 SETTABLEKS                       R4 R3 K3 ["China"]
       28 MOVE                             R2 R3
       29 JUMP                             ; [+28]
       30 GETIMPORT                        R3 K10 [pairs]
       32 MOVE                             R4 R1
       33 CALL                             R3 1 3
       34 FORGPREP_NEXT                    R3
       35 GETTABLEKS                       R8 R7 K11 ["region"]
       37 DUPTABLE                         R9 K7 [{"status", "selected"}]
       38 GETTABLEKS                       R10 R7 K5 ["status"]
       40 SETTABLEKS                       R10 R9 K5 ["status"]
       42 LOADB                            R10 0
       43 GETTABLEKS                       R11 R7 K5 ["status"]
       45 JUMPIFEQKS                       R11 K12 ["Removed"] ; [+7]
       47 GETTABLEKS                       R11 R7 K5 ["status"]
       49 JUMPIFNOTEQKS                    R11 K8 ["Unknown"] ; [+2]
       51 LOADB                            R10 0 +1
       52 LOADB                            R10 1
       53 SETTABLEKS                       R10 R9 K6 ["selected"]
       55 SETTABLE                         R9 R2 R8
       56 FORGLOOP                         R3 2 ; [-22]
       58 GETUPVAL                         R3 3
       59 SETTABLE                         R2 R0 R3
       60 RETURN                           R0 0

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
        7 JUMPIFEQKNIL                     R0 ; [+40]
        9 GETIMPORT                        R1 K4 [pcall]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 CALL                             R1 1 2
       16 JUMPIF                           R1 ; [+31]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K5 ["NameModerated"]
       20 JUMPIFNOTEQ                      R2 R3 ; [+11]
       22 GETUPVAL                         R3 3
       23 GETUPVAL                         R5 4
       24 DUPTABLE                         R6 K6 [{"name"}]
       25 LOADK                            R7 K7 ["Moderated"]
       26 SETTABLEKS                       R7 R6 K2 ["name"]
       28 CALL                             R5 1 -1
       29 NAMECALL                         R3 R3 K8 ["dispatch"]
       31 CALL                             R3 -1 0
       32 GETUPVAL                         R3 5
       33 JUMPIFNOT                        R3 ; [+10]
       34 GETIMPORT                        R3 K10 [error]
       36 GETUPVAL                         R4 6
       37 LOADK                            R6 K11 ["General"]
       38 LOADK                            R7 K12 ["GameNameWasModerated"]
       39 NAMECALL                         R4 R4 K13 ["getText"]
       41 CALL                             R4 3 -1
       42 CALL                             R3 -1 0
       43 RETURN                           R0 0
       44 GETIMPORT                        R3 K10 [error]
       46 LOADK                            R4 K14 ["Game name was moderated"]
       47 CALL                             R3 1 0
       48 RETURN                           R0 0

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
        7 JUMPIFEQKNIL                     R0 ; [+40]
        9 GETIMPORT                        R1 K4 [pcall]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 CALL                             R1 1 2
       16 JUMPIF                           R1 ; [+31]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K5 ["DescriptionModerated"]
       20 JUMPIFNOTEQ                      R2 R3 ; [+11]
       22 GETUPVAL                         R3 3
       23 GETUPVAL                         R5 4
       24 DUPTABLE                         R6 K6 [{"description"}]
       25 LOADK                            R7 K7 ["Moderated"]
       26 SETTABLEKS                       R7 R6 K2 ["description"]
       28 CALL                             R5 1 -1
       29 NAMECALL                         R3 R3 K8 ["dispatch"]
       31 CALL                             R3 -1 0
       32 GETUPVAL                         R3 5
       33 JUMPIFNOT                        R3 ; [+10]
       34 GETIMPORT                        R3 K10 [error]
       36 GETUPVAL                         R4 6
       37 LOADK                            R6 K11 ["General"]
       38 LOADK                            R7 K12 ["GameDescriptionWasModerated"]
       39 NAMECALL                         R4 R4 K13 ["getText"]
       41 CALL                             R4 3 -1
       42 CALL                             R3 -1 0
       43 RETURN                           R0 0
       44 GETIMPORT                        R3 K10 [error]
       46 LOADK                            R4 K14 ["Game description was moderated"]
       47 CALL                             R3 1 0
       48 RETURN                           R0 0

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
       15 JUMPIFEQKNIL                     R2 ; [+51]
       17 GETTABLEKS                       R3 R2 K1 ["MediaAssetAltText"]
       19 GETUPVAL                         R4 1
       20 JUMPIFEQ                         R3 R4 ; [+46]
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
       43 JUMP                             ; [+23]
       44 GETUPVAL                         R3 2
       45 GETTABLEKS                       R3 R3 K12 ["AltTextModerated"]
       47 JUMPIFNOTEQ                      R2 R3 ; [+19]
       49 GETUPVAL                         R3 6
       50 GETUPVAL                         R5 7
       51 DUPTABLE                         R6 K13 [{"altText"}]
       52 DUPTABLE                         R7 K16 [{"ThumbnailId", "Error"}]
       53 GETUPVAL                         R8 0
       54 SETTABLEKS                       R8 R7 K14 ["ThumbnailId"]
       56 LOADK                            R8 K17 ["Moderated"]
       57 SETTABLEKS                       R8 R7 K15 ["Error"]
       59 SETTABLEKS                       R7 R6 K11 ["altText"]
       61 CALL                             R5 1 -1
       62 NAMECALL                         R3 R3 K18 ["dispatch"]
       64 CALL                             R3 -1 0
       65 LOADK                            R3 K19 ["Thumbnail alt text was moderated"]
       66 SETUPVAL                         R3 8
       67 GETUPVAL                         R4 9
       68 SUBK                             R3 R4 K20 [1]
       69 SETUPVAL                         R3 9
       70 RETURN                           R0 0

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
       22 JUMPIFNOTLT                      R2 R1 ; [+9]
       24 GETUPVAL                         R1 0
       25 GETUPVAL                         R2 5
       26 DUPTABLE                         R3 K5 [{"thumbnails"}]
       27 LOADK                            R4 K6 ["TooMany"]
       28 SETTABLEKS                       R4 R3 K1 ["thumbnails"]
       30 CALL                             R2 1 -1
       31 CALL                             R1 -1 0
       32 RETURN                           R0 0

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
       22 JUMPIFNOTEQKN                    R2 K4 [0] ; [+10]
       24 GETUPVAL                         R2 0
       25 GETUPVAL                         R3 2
       26 DUPTABLE                         R4 K11 [{"name"}]
       27 LOADK                            R5 K12 ["Empty"]
       28 SETTABLEKS                       R5 R4 K0 ["name"]
       30 CALL                             R3 1 -1
       31 CALL                             R2 -1 0
       32 RETURN                           R0 0
       33 LOADN                            R2 50
       34 JUMPIFNOTLT                      R2 R1 ; [+9]
       36 GETUPVAL                         R2 0
       37 GETUPVAL                         R3 2
       38 DUPTABLE                         R4 K11 [{"name"}]
       39 LOADK                            R5 K13 ["TooLong"]
       40 SETTABLEKS                       R5 R4 K0 ["name"]
       42 CALL                             R3 1 -1
       43 CALL                             R2 -1 0
       44 RETURN                           R0 0

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
       12 JUMPIFNOT                        R2 ; [+23]
       13 JUMPIFEQKN                       R1 K4 [0] ; [+13]
       15 GETIMPORT                        R3 K7 [string.gsub]
       17 MOVE                             R4 R0
       18 LOADK                            R5 K8 [" "]
       19 LOADK                            R6 K9 [""]
       20 CALL                             R3 3 1
       21 FASTCALL1                        STRING_LEN R3 ; [+2]
       22 GETIMPORT                        R2 K10 [string.len]
       24 CALL                             R2 1 1
       25 JUMPIFNOTEQKN                    R2 K4 [0] ; [+10]
       27 GETUPVAL                         R2 0
       28 GETUPVAL                         R3 3
       29 DUPTABLE                         R4 K11 [{"description"}]
       30 LOADK                            R5 K12 ["Empty"]
       31 SETTABLEKS                       R5 R4 K0 ["description"]
       33 CALL                             R3 1 -1
       34 CALL                             R2 -1 0
       35 RETURN                           R0 0
       36 LOADN                            R2 232
       37 JUMPIFNOTLT                      R2 R1 ; [+9]
       39 GETUPVAL                         R2 0
       40 GETUPVAL                         R3 3
       41 DUPTABLE                         R4 K11 [{"description"}]
       42 LOADK                            R5 K13 ["TooLong"]
       43 SETTABLEKS                       R5 R4 K0 ["description"]
       45 CALL                             R3 1 -1
       46 CALL                             R2 -1 0
       47 RETURN                           R0 0

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
       17 JUMPIFNOT                        R1 ; [+8]
       18 GETUPVAL                         R1 0
       19 GETUPVAL                         R2 3
       20 DUPTABLE                         R3 K3 [{"playableDevices"}]
       21 LOADK                            R4 K4 ["Empty"]
       22 SETTABLEKS                       R4 R3 K0 ["playableDevices"]
       24 CALL                             R2 1 -1
       25 CALL                             R1 -1 0
       26 RETURN                           R0 0

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
       57 JUMPIFNOTLT                      R6 R5 ; [+9]
       59 GETUPVAL                         R5 1
       60 GETUPVAL                         R6 4
       61 DUPTABLE                         R7 K15 [{"thumbnails"}]
       62 LOADK                            R8 K16 ["TooMany"]
       63 SETTABLEKS                       R8 R7 K12 ["thumbnails"]
       65 CALL                             R6 1 -1
       66 CALL                             R5 -1 0
       67 RETURN                           R0 0

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
       10 JUMPIFNOTLT                      R2 R1 ; [+9]
       12 GETUPVAL                         R1 0
       13 GETUPVAL                         R2 3
       14 DUPTABLE                         R3 K3 [{"thumbnails"}]
       15 LOADK                            R4 K4 ["TooMany"]
       16 SETTABLEKS                       R4 R3 K2 ["thumbnails"]
       18 CALL                             R2 1 -1
       19 CALL                             R1 -1 0
       20 RETURN                           R0 0

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
       80 DUPTABLE                         R24 K29 [{"BackgroundTransparency", "LayoutOrder", "Position", "Size"}]
       81 LOADN                            R25 1
       82 SETTABLEKS                       R25 R24 K25 ["BackgroundTransparency"]
       84 NAMECALL                         R25 R1 K30 ["getNextOrder"]
       86 CALL                             R25 1 1
       87 SETTABLEKS                       R25 R24 K26 ["LayoutOrder"]
       89 GETIMPORT                        R25 K32 [UDim2.new]
       91 LOADN                            R26 0
       92 LOADN                            R27 0
       93 LOADN                            R28 0
       94 GETTABLEKS                       R29 R4 K33 ["requirementsLink"]
       96 GETTABLEKS                       R29 R29 K34 ["paddingY"]
       98 CALL                             R25 4 1
       99 SETTABLEKS                       R25 R24 K27 ["Position"]
      101 GETIMPORT                        R25 K32 [UDim2.new]
      103 LOADN                            R26 1
      104 GETTABLEKS                       R27 R4 K35 ["extraOptInInfo"]
      106 GETTABLEKS                       R27 R27 K36 ["length"]
      108 LOADN                            R28 0
      109 GETTABLEKS                       R29 R4 K35 ["extraOptInInfo"]
      111 GETTABLEKS                       R29 R29 K37 ["height"]
      113 CALL                             R25 4 1
      114 SETTABLEKS                       R25 R24 K28 ["Size"]
      116 DUPTABLE                         R25 K41 [{"UILayout", "StatusRequirements", "Warning"}]
      117 GETUPVAL                         R26 4
      118 GETTABLEKS                       R26 R26 K23 ["createElement"]
      120 LOADK                            R27 K42 ["UIListLayout"]
      121 DUPTABLE                         R28 K47 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
      122 GETIMPORT                        R29 K50 [Enum.FillDirection.Vertical]
      124 SETTABLEKS                       R29 R28 K43 ["FillDirection"]
      126 GETIMPORT                        R29 K52 [UDim.new]
      128 LOADN                            R30 0
      129 GETTABLEKS                       R31 R4 K35 ["extraOptInInfo"]
      131 GETTABLEKS                       R31 R31 K53 ["padding"]
      133 CALL                             R29 2 1
      134 SETTABLEKS                       R29 R28 K44 ["Padding"]
      136 GETIMPORT                        R29 K54 [Enum.SortOrder.LayoutOrder]
      138 SETTABLEKS                       R29 R28 K45 ["SortOrder"]
      140 GETIMPORT                        R29 K56 [Enum.VerticalAlignment.Top]
      142 SETTABLEKS                       R29 R28 K46 ["VerticalAlignment"]
      144 CALL                             R26 2 1
      145 SETTABLEKS                       R26 R25 K38 ["UILayout"]
      147 GETUPVAL                         R26 4
      148 GETTABLEKS                       R26 R26 K23 ["createElement"]
      150 LOADK                            R27 K24 ["Frame"]
      151 DUPTABLE                         R28 K58 [{"BorderSizePixel", "LayoutOrder"}]
      152 LOADN                            R29 0
      153 SETTABLEKS                       R29 R28 K57 ["BorderSizePixel"]
      155 NAMECALL                         R29 R1 K30 ["getNextOrder"]
      157 CALL                             R29 1 1
      158 SETTABLEKS                       R29 R28 K26 ["LayoutOrder"]
      160 DUPTABLE                         R29 K61 [{"UILayout", "ModerationStatus", "RequirementsFrame"}]
      161 GETUPVAL                         R30 4
      162 GETTABLEKS                       R30 R30 K23 ["createElement"]
      164 LOADK                            R31 K42 ["UIListLayout"]
      165 DUPTABLE                         R32 K47 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
      166 GETIMPORT                        R33 K63 [Enum.FillDirection.Horizontal]
      168 SETTABLEKS                       R33 R32 K43 ["FillDirection"]
      170 GETIMPORT                        R33 K52 [UDim.new]
      172 LOADN                            R34 0
      173 GETTABLEKS                       R35 R4 K33 ["requirementsLink"]
      175 GETTABLEKS                       R35 R35 K64 ["paddingX"]
      177 CALL                             R33 2 1
      178 SETTABLEKS                       R33 R32 K44 ["Padding"]
      180 GETIMPORT                        R33 K54 [Enum.SortOrder.LayoutOrder]
      182 SETTABLEKS                       R33 R32 K45 ["SortOrder"]
      184 GETIMPORT                        R33 K56 [Enum.VerticalAlignment.Top]
      186 SETTABLEKS                       R33 R32 K46 ["VerticalAlignment"]
      188 CALL                             R30 2 1
      189 SETTABLEKS                       R30 R29 K38 ["UILayout"]
      191 GETTABLEKS                       R31 R17 K65 ["show"]
      193 JUMPIFNOT                        R31 ; [+72]
      194 GETUPVAL                         R30 4
      195 GETTABLEKS                       R30 R30 K23 ["createElement"]
      197 LOADK                            R31 K66 ["TextLabel"]
      198 DUPTABLE                         R32 K72 [{"BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize", "TextXAlignment"}]
      199 LOADN                            R33 1
      200 SETTABLEKS                       R33 R32 K25 ["BackgroundTransparency"]
      202 GETTABLEKS                       R33 R4 K73 ["fontStyle"]
      204 GETTABLEKS                       R33 R33 K74 ["Subtext"]
      206 GETTABLEKS                       R33 R33 K67 ["Font"]
      208 SETTABLEKS                       R33 R32 K67 ["Font"]
      210 LOADN                            R33 255
      211 SETTABLEKS                       R33 R32 K26 ["LayoutOrder"]
      213 GETIMPORT                        R33 K32 [UDim2.new]
      215 LOADN                            R34 0
      216 GETUPVAL                         R35 1
      217 GETTABLEKS                       R36 R17 K75 ["statusText"]
      219 GETTABLEKS                       R37 R4 K73 ["fontStyle"]
      221 GETTABLEKS                       R37 R37 K74 ["Subtext"]
      223 GETTABLEKS                       R37 R37 K70 ["TextSize"]
      225 GETTABLEKS                       R38 R4 K73 ["fontStyle"]
      227 GETTABLEKS                       R38 R38 K74 ["Subtext"]
      229 GETTABLEKS                       R38 R38 K67 ["Font"]
      231 CALL                             R35 3 1
      232 GETTABLEKS                       R35 R35 K76 ["X"]
      234 LOADN                            R36 0
      235 GETTABLEKS                       R37 R4 K73 ["fontStyle"]
      237 GETTABLEKS                       R37 R37 K74 ["Subtext"]
      239 GETTABLEKS                       R37 R37 K70 ["TextSize"]
      241 CALL                             R33 4 1
      242 SETTABLEKS                       R33 R32 K28 ["Size"]
      244 GETTABLEKS                       R33 R17 K75 ["statusText"]
      246 SETTABLEKS                       R33 R32 K68 ["Text"]
      248 GETTABLEKS                       R33 R17 K77 ["textColor"]
      250 SETTABLEKS                       R33 R32 K69 ["TextColor3"]
      252 GETTABLEKS                       R33 R4 K73 ["fontStyle"]
      254 GETTABLEKS                       R33 R33 K74 ["Subtext"]
      256 GETTABLEKS                       R33 R33 K70 ["TextSize"]
      258 SETTABLEKS                       R33 R32 K70 ["TextSize"]
      260 GETIMPORT                        R33 K79 [Enum.TextXAlignment.Left]
      262 SETTABLEKS                       R33 R32 K71 ["TextXAlignment"]
      264 CALL                             R30 2 1
      265 JUMPIF                           R30 ; [+1]
      266 LOADNIL                          R30
      267 SETTABLEKS                       R30 R29 K59 ["ModerationStatus"]
      269 GETUPVAL                         R30 4
      270 GETTABLEKS                       R30 R30 K23 ["createElement"]
      272 LOADK                            R31 K24 ["Frame"]
      273 DUPTABLE                         R32 K80 [{"BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Size"}]
      274 LOADN                            R33 1
      275 SETTABLEKS                       R33 R32 K25 ["BackgroundTransparency"]
      277 LOADN                            R33 0
      278 SETTABLEKS                       R33 R32 K57 ["BorderSizePixel"]
      280 NAMECALL                         R33 R1 K30 ["getNextOrder"]
      282 CALL                             R33 1 1
      283 SETTABLEKS                       R33 R32 K26 ["LayoutOrder"]
      285 GETIMPORT                        R33 K32 [UDim2.new]
      287 LOADN                            R34 0
      288 GETTABLEKS                       R35 R4 K33 ["requirementsLink"]
      290 GETTABLEKS                       R35 R35 K36 ["length"]
      292 LOADN                            R36 0
      293 GETTABLEKS                       R37 R4 K33 ["requirementsLink"]
      295 GETTABLEKS                       R37 R37 K37 ["height"]
      297 CALL                             R33 4 1
      298 SETTABLEKS                       R33 R32 K28 ["Size"]
      300 DUPTABLE                         R33 K82 [{"LinkTextLabel", "RequirementsLinkText"}]
      301 GETUPVAL                         R34 4
      302 GETTABLEKS                       R34 R34 K23 ["createElement"]
      304 GETUPVAL                         R35 5
      305 DUPTABLE                         R36 K86 [{"Position", "Size", "Style", "Text", "TextTransparency", "TextXAlignment", "TextYAlignment"}]
      306 GETIMPORT                        R37 K32 [UDim2.new]
      308 LOADN                            R38 0
      309 GETTABLEKS                       R39 R7 K76 ["X"]
      311 LOADN                            R40 0
      312 LOADN                            R41 0
      313 CALL                             R37 4 1
      314 SETTABLEKS                       R37 R36 K27 ["Position"]
      316 GETIMPORT                        R37 K32 [UDim2.new]
      318 LOADN                            R38 1
      319 GETTABLEKS                       R40 R7 K76 ["X"]
      321 MINUS                            R39 R40
      322 LOADN                            R40 1
      323 LOADN                            R41 0
      324 CALL                             R37 4 1
      325 SETTABLEKS                       R37 R36 K28 ["Size"]
      327 LOADK                            R37 K87 ["Body"]
      328 SETTABLEKS                       R37 R36 K83 ["Style"]
      330 GETUPVAL                         R39 0
      331 LOADK                            R40 K88 ["ChinaRequirements"]
      332 NAMECALL                         R37 R3 K8 ["getText"]
      334 CALL                             R37 3 1
      335 SETTABLEKS                       R37 R36 K68 ["Text"]
      337 JUMPIF                           R6 ; [+2]
      338 LOADK                            R37 K89 [0.5]
      339 JUMP                             ; [+1]
      340 LOADNIL                          R37
      341 SETTABLEKS                       R37 R36 K84 ["TextTransparency"]
      343 GETIMPORT                        R37 K79 [Enum.TextXAlignment.Left]
      345 SETTABLEKS                       R37 R36 K71 ["TextXAlignment"]
      347 GETIMPORT                        R37 K90 [Enum.TextYAlignment.Top]
      349 SETTABLEKS                       R37 R36 K85 ["TextYAlignment"]
      351 CALL                             R34 2 1
      352 SETTABLEKS                       R34 R33 K81 ["LinkTextLabel"]
      354 GETUPVAL                         R34 4
      355 GETTABLEKS                       R34 R34 K23 ["createElement"]
      357 GETUPVAL                         R35 6
      358 DUPTABLE                         R36 K92 [{"OnClick", "Size", "Style", "Text"}]
      359 GETTABLEKS                       R37 R0 K93 ["getOptInLocationsRequirementsLink"]
      361 SETTABLEKS                       R37 R36 K91 ["OnClick"]
      363 GETIMPORT                        R37 K32 [UDim2.new]
      365 LOADN                            R38 0
      366 GETTABLEKS                       R39 R7 K76 ["X"]
      368 LOADN                            R40 0
      369 GETTABLEKS                       R41 R7 K94 ["Y"]
      371 CALL                             R37 4 1
      372 SETTABLEKS                       R37 R36 K28 ["Size"]
      374 LOADK                            R37 K87 ["Body"]
      375 SETTABLEKS                       R37 R36 K83 ["Style"]
      377 GETUPVAL                         R39 0
      378 LOADK                            R40 K7 ["RequirementsLinkText"]
      379 NAMECALL                         R37 R3 K8 ["getText"]
      381 CALL                             R37 3 1
      382 SETTABLEKS                       R37 R36 K68 ["Text"]
      384 CALL                             R34 2 1
      385 SETTABLEKS                       R34 R33 K7 ["RequirementsLinkText"]
      387 CALL                             R30 3 1
      388 SETTABLEKS                       R30 R29 K60 ["RequirementsFrame"]
      390 CALL                             R26 3 1
      391 SETTABLEKS                       R26 R25 K39 ["StatusRequirements"]
      393 JUMPIFNOT                        R9 ; [+166]
      394 GETUPVAL                         R26 4
      395 GETTABLEKS                       R26 R26 K23 ["createElement"]
      397 LOADK                            R27 K24 ["Frame"]
      398 DUPTABLE                         R28 K58 [{"BorderSizePixel", "LayoutOrder"}]
      399 LOADN                            R29 0
      400 SETTABLEKS                       R29 R28 K57 ["BorderSizePixel"]
      402 NAMECALL                         R29 R1 K30 ["getNextOrder"]
      404 CALL                             R29 1 1
      405 SETTABLEKS                       R29 R28 K26 ["LayoutOrder"]
      407 DUPTABLE                         R29 K96 [{"UILayout", "Image", "Text"}]
      408 GETUPVAL                         R30 4
      409 GETTABLEKS                       R30 R30 K23 ["createElement"]
      411 LOADK                            R31 K42 ["UIListLayout"]
      412 DUPTABLE                         R32 K47 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
      413 GETIMPORT                        R33 K63 [Enum.FillDirection.Horizontal]
      415 SETTABLEKS                       R33 R32 K43 ["FillDirection"]
      417 GETIMPORT                        R33 K52 [UDim.new]
      419 LOADN                            R34 0
      420 GETTABLEKS                       R35 R4 K97 ["optInWarning"]
      422 GETTABLEKS                       R35 R35 K53 ["padding"]
      424 CALL                             R33 2 1
      425 SETTABLEKS                       R33 R32 K44 ["Padding"]
      427 GETIMPORT                        R33 K54 [Enum.SortOrder.LayoutOrder]
      429 SETTABLEKS                       R33 R32 K45 ["SortOrder"]
      431 GETIMPORT                        R33 K56 [Enum.VerticalAlignment.Top]
      433 SETTABLEKS                       R33 R32 K46 ["VerticalAlignment"]
      435 CALL                             R30 2 1
      436 SETTABLEKS                       R30 R29 K38 ["UILayout"]
      438 GETUPVAL                         R30 4
      439 GETTABLEKS                       R30 R30 K23 ["createElement"]
      441 GETUPVAL                         R31 7
      442 DUPTABLE                         R32 K98 [{"LayoutOrder", "Size", "Style"}]
      443 NAMECALL                         R33 R18 K30 ["getNextOrder"]
      445 CALL                             R33 1 1
      446 SETTABLEKS                       R33 R32 K26 ["LayoutOrder"]
      448 GETIMPORT                        R33 K100 [UDim2.fromOffset]
      450 GETTABLEKS                       R34 R4 K97 ["optInWarning"]
      452 GETTABLEKS                       R34 R34 K101 ["size"]
      454 GETTABLEKS                       R35 R4 K97 ["optInWarning"]
      456 GETTABLEKS                       R35 R35 K101 ["size"]
      458 CALL                             R33 2 1
      459 SETTABLEKS                       R33 R32 K28 ["Size"]
      461 LOADK                            R33 K102 ["WarningStyle"]
      462 SETTABLEKS                       R33 R32 K83 ["Style"]
      464 CALL                             R30 2 1
      465 SETTABLEKS                       R30 R29 K95 ["Image"]
      467 GETUPVAL                         R30 4
      468 GETTABLEKS                       R30 R30 K23 ["createElement"]
      470 LOADK                            R31 K66 ["TextLabel"]
      471 DUPTABLE                         R32 K103 [{"BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextTransparency", "TextSize", "TextXAlignment"}]
      472 LOADN                            R33 1
      473 SETTABLEKS                       R33 R32 K25 ["BackgroundTransparency"]
      475 GETTABLEKS                       R33 R4 K73 ["fontStyle"]
      477 GETTABLEKS                       R33 R33 K104 ["Smaller"]
      479 GETTABLEKS                       R33 R33 K67 ["Font"]
      481 SETTABLEKS                       R33 R32 K67 ["Font"]
      483 NAMECALL                         R33 R18 K30 ["getNextOrder"]
      485 CALL                             R33 1 1
      486 SETTABLEKS                       R33 R32 K26 ["LayoutOrder"]
      488 GETIMPORT                        R33 K32 [UDim2.new]
      490 LOADN                            R34 0
      491 GETUPVAL                         R35 1
      492 GETUPVAL                         R38 0
      493 LOADK                            R39 K105 ["SavedGameWarning"]
      494 NAMECALL                         R36 R3 K8 ["getText"]
      496 CALL                             R36 3 1
      497 GETTABLEKS                       R37 R4 K73 ["fontStyle"]
      499 GETTABLEKS                       R37 R37 K104 ["Smaller"]
      501 GETTABLEKS                       R37 R37 K70 ["TextSize"]
      503 GETTABLEKS                       R38 R4 K73 ["fontStyle"]
      505 GETTABLEKS                       R38 R38 K104 ["Smaller"]
      507 GETTABLEKS                       R38 R38 K67 ["Font"]
      509 CALL                             R35 3 1
      510 GETTABLEKS                       R35 R35 K76 ["X"]
      512 LOADN                            R36 0
      513 GETTABLEKS                       R37 R4 K73 ["fontStyle"]
      515 GETTABLEKS                       R37 R37 K104 ["Smaller"]
      517 GETTABLEKS                       R37 R37 K70 ["TextSize"]
      519 CALL                             R33 4 1
      520 SETTABLEKS                       R33 R32 K28 ["Size"]
      522 GETUPVAL                         R35 0
      523 LOADK                            R36 K105 ["SavedGameWarning"]
      524 NAMECALL                         R33 R3 K8 ["getText"]
      526 CALL                             R33 3 1
      527 SETTABLEKS                       R33 R32 K68 ["Text"]
      529 GETTABLEKS                       R33 R4 K73 ["fontStyle"]
      531 GETTABLEKS                       R33 R33 K106 ["Header"]
      533 GETTABLEKS                       R33 R33 K69 ["TextColor3"]
      535 SETTABLEKS                       R33 R32 K69 ["TextColor3"]
      537 GETTABLEKS                       R33 R4 K97 ["optInWarning"]
      539 GETTABLEKS                       R33 R33 K107 ["transparency"]
      541 SETTABLEKS                       R33 R32 K84 ["TextTransparency"]
      543 GETTABLEKS                       R33 R4 K73 ["fontStyle"]
      545 GETTABLEKS                       R33 R33 K104 ["Smaller"]
      547 GETTABLEKS                       R33 R33 K70 ["TextSize"]
      549 SETTABLEKS                       R33 R32 K70 ["TextSize"]
      551 GETIMPORT                        R33 K79 [Enum.TextXAlignment.Left]
      553 SETTABLEKS                       R33 R32 K71 ["TextXAlignment"]
      555 CALL                             R30 2 1
      556 SETTABLEKS                       R30 R29 K68 ["Text"]
      558 CALL                             R26 3 1
      559 JUMPIF                           R26 ; [+1]
      560 LOADNIL                          R26
      561 SETTABLEKS                       R26 R25 K40 ["Warning"]
      563 CALL                             R22 3 1
      564 SETTABLEKS                       R22 R21 K19 ["LinkTextFrame"]
      566 FASTCALL2                        TABLE_INSERT R8 R21 ; [+4]
      568 MOVE                             R20 R8
      569 GETIMPORT                        R19 K110 [table.insert]
      571 CALL                             R19 2 0
      572 LOADB                            R9 0
      573 FORGLOOP                         R10 2 ; [-530]
      575 RETURN                           R8 1

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
        0 DUPTABLE                         R1 K5 [{"Size", "Title", "Header", "Buttons", "Body"}]
        1 GETIMPORT                        R2 K8 [Vector2.new]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K9 ["dialog"]
        6 GETTABLEKS                       R3 R3 K10 ["size"]
        8 GETTABLEKS                       R3 R3 K11 ["width"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K9 ["dialog"]
       13 GETTABLEKS                       R4 R4 K10 ["size"]
       15 GETTABLEKS                       R4 R4 K12 ["height"]
       17 CALL                             R2 2 1
       18 SETTABLEKS                       R2 R1 K0 ["Size"]
       20 LOADK                            R2 K13 [""]
       21 SETTABLEKS                       R2 R1 K1 ["Title"]
       23 GETUPVAL                         R2 1
       24 LOADK                            R4 K14 ["General"]
       25 LOADK                            R5 K15 ["TermsDialogHeader"]
       26 NAMECALL                         R2 R2 K16 ["getText"]
       28 CALL                             R2 3 1
       29 SETTABLEKS                       R2 R1 K2 ["Header"]
       31 NEWTABLE                         R2 0 1
       33 GETUPVAL                         R3 1
       34 LOADK                            R5 K14 ["General"]
       35 LOADK                            R6 K17 ["ReplyOK"]
       36 NAMECALL                         R3 R3 K16 ["getText"]
       38 CALL                             R3 3 -1
       39 SETLIST                          R2 R3 -1 [1]
       41 SETTABLEKS                       R2 R1 K3 ["Buttons"]
       43 GETUPVAL                         R2 2
       44 GETTABLEKS                       R2 R2 K18 ["createElement"]
       46 GETUPVAL                         R3 3
       47 DUPTABLE                         R4 K25 [{"OnLinkClicked", "Text", "LinkText", "LinkPlaceholder", "MaxWidth", "TextProps"}]
       48 DUPCLOSURE                       R5 K26 [PROTO_62]
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          UPVAL U6
       52 SETTABLEKS                       R5 R4 K19 ["OnLinkClicked"]
       54 GETUPVAL                         R5 1
       55 LOADK                            R7 K14 ["General"]
       56 LOADK                            R8 K27 ["TermsDialogBody"]
       57 NAMECALL                         R5 R5 K16 ["getText"]
       59 CALL                             R5 3 1
       60 SETTABLEKS                       R5 R4 K20 ["Text"]
       62 GETUPVAL                         R5 1
       63 LOADK                            R7 K14 ["General"]
       64 LOADK                            R8 K28 ["TermsDialogBodyLink"]
       65 NAMECALL                         R5 R5 K16 ["getText"]
       67 CALL                             R5 3 1
       68 SETTABLEKS                       R5 R4 K21 ["LinkText"]
       70 LOADK                            R5 K29 ["[link]"]
       71 SETTABLEKS                       R5 R4 K22 ["LinkPlaceholder"]
       73 GETUPVAL                         R5 0
       74 GETTABLEKS                       R5 R5 K30 ["textWithInlineLink"]
       76 GETTABLEKS                       R5 R5 K31 ["maxWidth"]
       78 SETTABLEKS                       R5 R4 K23 ["MaxWidth"]
       80 GETUPVAL                         R5 7
       81 GETTABLEKS                       R5 R5 K32 ["Dictionary"]
       83 GETTABLEKS                       R5 R5 K33 ["join"]
       85 GETUPVAL                         R6 0
       86 GETTABLEKS                       R6 R6 K34 ["fontStyle"]
       88 GETTABLEKS                       R6 R6 K35 ["Normal"]
       90 DUPTABLE                         R7 K37 [{"BackgroundTransparency"}]
       91 LOADN                            R8 1
       92 SETTABLEKS                       R8 R7 K36 ["BackgroundTransparency"]
       94 CALL                             R5 2 1
       95 SETTABLEKS                       R5 R4 K24 ["TextProps"]
       97 CALL                             R2 2 1
       98 SETTABLEKS                       R2 R1 K4 ["Body"]
      100 GETUPVAL                         R2 8
      101 JUMPIF                           R2 ; [+21]
      102 GETUPVAL                         R2 9
      103 GETTABLEKS                       R2 R2 K38 ["showDialog"]
      105 GETUPVAL                         R3 10
      106 MOVE                             R4 R1
      107 CALL                             R2 2 1
      108 NAMECALL                         R2 R2 K39 ["await"]
      110 CALL                             R2 1 0
      111 NEWTABLE                         R2 1 0
      113 GETUPVAL                         R3 11
      114 LOADB                            R4 1
      115 SETTABLE                         R4 R2 R3
      116 GETUPVAL                         R3 12
      117 GETUPVAL                         R4 13
      118 GETUPVAL                         R5 14
      119 GETUPVAL                         R6 15
      120 MOVE                             R7 R2
      121 CALL                             R3 4 0
      122 RETURN                           R0 0
      123 GETUPVAL                         R2 16
      124 GETUPVAL                         R3 17
      125 NEWTABLE                         R4 1 0
      127 GETTABLEKS                       R5 R0 K40 ["Id"]
      129 DUPTABLE                         R6 K42 [{"selected"}]
      130 GETTABLEKS                       R8 R0 K43 ["Selected"]
      132 NOT                              R7 R8
      133 SETTABLEKS                       R7 R6 K41 ["selected"]
      135 SETTABLE                         R6 R4 R5
      136 CALL                             R2 2 1
      137 NEWTABLE                         R3 2 0
      139 GETUPVAL                         R4 18
      140 GETTABLEKS                       R5 R0 K40 ["Id"]
      142 SETTABLE                         R5 R3 R4
      143 GETUPVAL                         R4 19
      144 GETTABLEKS                       R6 R0 K43 ["Selected"]
      146 NOT                              R5 R6
      147 SETTABLE                         R5 R3 R4
      148 GETUPVAL                         R4 12
      149 GETUPVAL                         R5 13
      150 GETUPVAL                         R6 14
      151 GETUPVAL                         R7 20
      152 MOVE                             R8 R3
      153 CALL                             R4 4 0
      154 GETUPVAL                         R4 21
      155 GETTABLEKS                       R4 R4 K44 ["OptInLocationsChanged"]
      157 MOVE                             R5 R2
      158 CALL                             R4 1 0
      159 RETURN                           R0 0

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
      503 JUMPIFNOT                        R16 ; [+299]
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
      541 DUPTABLE                         R24 K105 [{"Disabled", "ErrorText", "MaxLength", "OnTextChanged", "Text"}]
      542 GETTABLEKS                       R26 R0 K85 ["Name"]
      544 JUMPIFEQKNIL                     R26 ; [+2]
      546 LOADB                            R25 0 +1
      547 LOADB                            R25 1
      548 SETTABLEKS                       R25 R24 K100 ["Disabled"]
      550 SETTABLEKS                       R10 R24 K101 ["ErrorText"]
      552 LOADN                            R25 50
      553 SETTABLEKS                       R25 R24 K102 ["MaxLength"]
      555 GETTABLEKS                       R25 R0 K106 ["NameChanged"]
      557 SETTABLEKS                       R25 R24 K103 ["OnTextChanged"]
      559 GETTABLEKS                       R26 R0 K85 ["Name"]
      561 ORK                              R25 R26 K107 [""]
      562 SETTABLEKS                       R25 R24 K104 ["Text"]
      564 CALL                             R22 2 1
      565 SETTABLEKS                       R22 R21 K98 ["TextBox"]
      567 CALL                             R18 3 1
      568 SETTABLEKS                       R18 R17 K85 ["Name"]
      570 GETUPVAL                         R18 1
      571 GETTABLEKS                       R18 R18 K3 ["createElement"]
      573 GETUPVAL                         R19 19
      574 DUPTABLE                         R20 K95 [{"LayoutOrder", "Title"}]
      575 GETUPVAL                         R21 20
      576 NAMECALL                         R21 R21 K96 ["getNextOrder"]
      578 CALL                             R21 1 1
      579 SETTABLEKS                       R21 R20 K93 ["LayoutOrder"]
      581 GETUPVAL                         R21 5
      582 LOADK                            R23 K14 ["General"]
      583 LOADK                            R24 K108 ["TitleDescription"]
      584 NAMECALL                         R21 R21 K16 ["getText"]
      586 CALL                             R21 3 1
      587 SETTABLEKS                       R21 R20 K94 ["Title"]
      589 DUPTABLE                         R21 K99 [{"TextBox"}]
      590 GETUPVAL                         R22 1
      591 GETTABLEKS                       R22 R22 K3 ["createElement"]
      593 GETUPVAL                         R23 21
      594 DUPTABLE                         R24 K111 [{"Disabled", "ErrorText", "MaxLength", "MultiLine", "OnTextChanged", "Height", "Text"}]
      595 GETTABLEKS                       R26 R0 K86 ["Description"]
      597 JUMPIFEQKNIL                     R26 ; [+2]
      599 LOADB                            R25 0 +1
      600 LOADB                            R25 1
      601 SETTABLEKS                       R25 R24 K100 ["Disabled"]
      603 SETTABLEKS                       R11 R24 K101 ["ErrorText"]
      605 LOADN                            R25 232
      606 SETTABLEKS                       R25 R24 K102 ["MaxLength"]
      608 LOADB                            R25 1
      609 SETTABLEKS                       R25 R24 K109 ["MultiLine"]
      611 GETTABLEKS                       R25 R0 K112 ["DescriptionChanged"]
      613 SETTABLEKS                       R25 R24 K103 ["OnTextChanged"]
      615 LOADN                            R25 130
      616 SETTABLEKS                       R25 R24 K110 ["Height"]
      618 GETTABLEKS                       R26 R0 K86 ["Description"]
      620 ORK                              R25 R26 K107 [""]
      621 SETTABLEKS                       R25 R24 K104 ["Text"]
      623 CALL                             R22 2 1
      624 SETTABLEKS                       R22 R21 K98 ["TextBox"]
      626 CALL                             R18 3 1
      627 SETTABLEKS                       R18 R17 K86 ["Description"]
      629 GETUPVAL                         R18 1
      630 GETTABLEKS                       R18 R18 K3 ["createElement"]
      632 GETUPVAL                         R19 22
      633 DUPTABLE                         R20 K113 [{"LayoutOrder"}]
      634 GETUPVAL                         R21 20
      635 NAMECALL                         R21 R21 K96 ["getNextOrder"]
      637 CALL                             R21 1 1
      638 SETTABLEKS                       R21 R20 K93 ["LayoutOrder"]
      640 CALL                             R18 2 1
      641 SETTABLEKS                       R18 R17 K87 ["Separator"]
      643 GETUPVAL                         R18 1
      644 GETTABLEKS                       R18 R18 K3 ["createElement"]
      646 GETUPVAL                         R19 23
      647 DUPTABLE                         R20 K118 [{"Title", "LayoutOrder", "Selected", "WarningTooltipText", "OnClick", "LinkProps"}]
      648 GETUPVAL                         R21 5
      649 LOADK                            R23 K14 ["General"]
      650 LOADK                            R24 K119 ["TitleEnableTeamCreate"]
      651 NAMECALL                         R21 R21 K16 ["getText"]
      653 CALL                             R21 3 1
      654 SETTABLEKS                       R21 R20 K94 ["Title"]
      656 GETUPVAL                         R21 20
      657 NAMECALL                         R21 R21 K96 ["getNextOrder"]
      659 CALL                             R21 1 1
      660 SETTABLEKS                       R21 R20 K93 ["LayoutOrder"]
      662 GETTABLEKS                       R22 R0 K84 ["PendingTeamCreateEnabled"]
      664 JUMPIFEQKNIL                     R22 ; [+4]
      666 GETTABLEKS                       R21 R0 K84 ["PendingTeamCreateEnabled"]
      668 JUMP                             ; [+1]
      669 GETUPVAL                         R21 18
      670 SETTABLEKS                       R21 R20 K114 ["Selected"]
      672 JUMPIFNOT                        R16 ; [+7]
      673 GETUPVAL                         R21 5
      674 LOADK                            R23 K14 ["General"]
      675 LOADK                            R24 K120 ["TeamCreateChangeWarningTooltip"]
      676 NAMECALL                         R21 R21 K16 ["getText"]
      678 CALL                             R21 3 1
      679 JUMP                             ; [+1]
      680 LOADNIL                          R21
      681 SETTABLEKS                       R21 R20 K115 ["WarningTooltipText"]
      683 NEWCLOSURE                       R21 P0
      684 CAPTURE                          VAL R0
      685 CAPTURE                          UPVAL U18
      686 SETTABLEKS                       R21 R20 K116 ["OnClick"]
      688 DUPTABLE                         R21 K123 [{"Text", "LinkText", "OnLinkClicked"}]
      689 GETUPVAL                         R22 5
      690 LOADK                            R24 K14 ["General"]
      691 LOADK                            R25 K124 ["EnableTeamCreateDescription"]
      692 NAMECALL                         R22 R22 K16 ["getText"]
      694 CALL                             R22 3 1
      695 SETTABLEKS                       R22 R21 K104 ["Text"]
      697 GETUPVAL                         R22 5
      698 LOADK                            R24 K14 ["General"]
      699 LOADK                            R25 K125 ["LearnMoreLink"]
      700 NAMECALL                         R22 R22 K16 ["getText"]
      702 CALL                             R22 3 1
      703 SETTABLEKS                       R22 R21 K121 ["LinkText"]
      705 DUPCLOSURE                       R22 K126 [PROTO_57]
      706 CAPTURE                          UPVAL U24
      707 CAPTURE                          UPVAL U25
      708 SETTABLEKS                       R22 R21 K122 ["OnLinkClicked"]
      710 SETTABLEKS                       R21 R20 K117 ["LinkProps"]
      712 CALL                             R18 2 1
      713 SETTABLEKS                       R18 R17 K88 ["EnableTeamCreate"]
      715 GETUPVAL                         R18 1
      716 GETTABLEKS                       R18 R18 K3 ["createElement"]
      718 GETUPVAL                         R19 23
      719 DUPTABLE                         R20 K128 [{"Title", "Description", "LayoutOrder", "Disabled", "Selected", "ShowWarning", "OnClick"}]
      720 GETUPVAL                         R21 5
      721 LOADK                            R23 K14 ["General"]
      722 LOADK                            R24 K129 ["TitleScriptDraftsMode"]
      723 NAMECALL                         R21 R21 K16 ["getText"]
      725 CALL                             R21 3 1
      726 SETTABLEKS                       R21 R20 K94 ["Title"]
      728 GETUPVAL                         R21 26
      729 SETTABLEKS                       R21 R20 K86 ["Description"]
      731 GETUPVAL                         R21 20
      732 NAMECALL                         R21 R21 K96 ["getNextOrder"]
      734 CALL                             R21 1 1
      735 SETTABLEKS                       R21 R20 K93 ["LayoutOrder"]
      737 GETUPVAL                         R22 18
      738 NOT                              R21 R22
      739 SETTABLEKS                       R21 R20 K100 ["Disabled"]
      741 GETTABLEKS                       R21 R0 K130 ["ScriptCollabEnabled"]
      743 SETTABLEKS                       R21 R20 K114 ["Selected"]
      745 GETUPVAL                         R21 27
      746 SETTABLEKS                       R21 R20 K127 ["ShowWarning"]
      748 NEWCLOSURE                       R21 P2
      749 CAPTURE                          VAL R0
      750 SETTABLEKS                       R21 R20 K116 ["OnClick"]
      752 CALL                             R18 2 1
      753 SETTABLEKS                       R18 R17 K89 ["EnableScriptCollab"]
      755 GETUPVAL                         R19 28
      756 JUMPIF                           R19 ; [+13]
      757 GETUPVAL                         R18 1
      758 GETTABLEKS                       R18 R18 K3 ["createElement"]
      760 GETUPVAL                         R19 22
      761 DUPTABLE                         R20 K113 [{"LayoutOrder"}]
      762 GETUPVAL                         R21 20
      763 NAMECALL                         R21 R21 K96 ["getNextOrder"]
      765 CALL                             R21 1 1
      766 SETTABLEKS                       R21 R20 K93 ["LayoutOrder"]
      768 CALL                             R18 2 1
      769 JUMP                             ; [+1]
      770 LOADNIL                          R18
      771 SETTABLEKS                       R18 R17 K90 ["Separator2"]
      773 GETUPVAL                         R19 28
      774 JUMPIF                           R19 ; [+23]
      775 GETUPVAL                         R19 29
      776 JUMPIFNOT                        R19 ; [+21]
      777 GETUPVAL                         R18 1
      778 GETTABLEKS                       R18 R18 K3 ["createElement"]
      780 GETUPVAL                         R19 30
      781 DUPTABLE                         R20 K133 [{"LayoutOrder", "GameGuideline", "GameId"}]
      782 GETUPVAL                         R21 20
      783 NAMECALL                         R21 R21 K96 ["getNextOrder"]
      785 CALL                             R21 1 1
      786 SETTABLEKS                       R21 R20 K93 ["LayoutOrder"]
      788 GETTABLEKS                       R21 R0 K91 ["Guidelines"]
      790 SETTABLEKS                       R21 R20 K131 ["GameGuideline"]
      792 GETTABLEKS                       R21 R0 K132 ["GameId"]
      794 SETTABLEKS                       R21 R20 K132 ["GameId"]
      796 CALL                             R18 2 1
      797 JUMP                             ; [+1]
      798 LOADNIL                          R18
      799 SETTABLEKS                       R18 R17 K91 ["Guidelines"]
      801 CLOSEUPVALS                      R3
      802 RETURN                           R17 1
      803 DUPTABLE                         R16 K144 [{"Name", "Description", "Separator", "Guidelines", "Separator2", "Icon", "Separator3", "Thumbnails", "Separator4", "Genre", "Separator5", "CreatorRestriction", "Separator6", "Devices", "Separator7", "OptInLocations"}]
      804 GETUPVAL                         R17 1
      805 GETTABLEKS                       R17 R17 K3 ["createElement"]
      807 GETUPVAL                         R18 19
      808 DUPTABLE                         R19 K95 [{"LayoutOrder", "Title"}]
      809 GETUPVAL                         R20 20
      810 NAMECALL                         R20 R20 K96 ["getNextOrder"]
      812 CALL                             R20 1 1
      813 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
      815 GETUPVAL                         R20 5
      816 LOADK                            R22 K14 ["General"]
      817 LOADK                            R23 K97 ["TitleName"]
      818 NAMECALL                         R20 R20 K16 ["getText"]
      820 CALL                             R20 3 1
      821 SETTABLEKS                       R20 R19 K94 ["Title"]
      823 DUPTABLE                         R20 K99 [{"TextBox"}]
      824 GETUPVAL                         R21 1
      825 GETTABLEKS                       R21 R21 K3 ["createElement"]
      827 GETUPVAL                         R22 21
      828 DUPTABLE                         R23 K105 [{"Disabled", "ErrorText", "MaxLength", "OnTextChanged", "Text"}]
      829 GETTABLEKS                       R25 R0 K85 ["Name"]
      831 JUMPIFEQKNIL                     R25 ; [+2]
      833 LOADB                            R24 0 +1
      834 LOADB                            R24 1
      835 SETTABLEKS                       R24 R23 K100 ["Disabled"]
      837 SETTABLEKS                       R10 R23 K101 ["ErrorText"]
      839 LOADN                            R24 50
      840 SETTABLEKS                       R24 R23 K102 ["MaxLength"]
      842 GETTABLEKS                       R24 R0 K106 ["NameChanged"]
      844 SETTABLEKS                       R24 R23 K103 ["OnTextChanged"]
      846 GETTABLEKS                       R25 R0 K85 ["Name"]
      848 ORK                              R24 R25 K107 [""]
      849 SETTABLEKS                       R24 R23 K104 ["Text"]
      851 CALL                             R21 2 1
      852 SETTABLEKS                       R21 R20 K98 ["TextBox"]
      854 CALL                             R17 3 1
      855 SETTABLEKS                       R17 R16 K85 ["Name"]
      857 GETUPVAL                         R17 1
      858 GETTABLEKS                       R17 R17 K3 ["createElement"]
      860 GETUPVAL                         R18 19
      861 DUPTABLE                         R19 K95 [{"LayoutOrder", "Title"}]
      862 GETUPVAL                         R20 20
      863 NAMECALL                         R20 R20 K96 ["getNextOrder"]
      865 CALL                             R20 1 1
      866 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
      868 GETUPVAL                         R20 5
      869 LOADK                            R22 K14 ["General"]
      870 LOADK                            R23 K108 ["TitleDescription"]
      871 NAMECALL                         R20 R20 K16 ["getText"]
      873 CALL                             R20 3 1
      874 SETTABLEKS                       R20 R19 K94 ["Title"]
      876 DUPTABLE                         R20 K99 [{"TextBox"}]
      877 GETUPVAL                         R21 1
      878 GETTABLEKS                       R21 R21 K3 ["createElement"]
      880 GETUPVAL                         R22 21
      881 DUPTABLE                         R23 K111 [{"Disabled", "ErrorText", "MaxLength", "MultiLine", "OnTextChanged", "Height", "Text"}]
      882 GETTABLEKS                       R25 R0 K86 ["Description"]
      884 JUMPIFEQKNIL                     R25 ; [+2]
      886 LOADB                            R24 0 +1
      887 LOADB                            R24 1
      888 SETTABLEKS                       R24 R23 K100 ["Disabled"]
      890 SETTABLEKS                       R11 R23 K101 ["ErrorText"]
      892 LOADN                            R24 232
      893 SETTABLEKS                       R24 R23 K102 ["MaxLength"]
      895 LOADB                            R24 1
      896 SETTABLEKS                       R24 R23 K109 ["MultiLine"]
      898 GETTABLEKS                       R24 R0 K112 ["DescriptionChanged"]
      900 SETTABLEKS                       R24 R23 K103 ["OnTextChanged"]
      902 LOADN                            R24 130
      903 SETTABLEKS                       R24 R23 K110 ["Height"]
      905 GETTABLEKS                       R25 R0 K86 ["Description"]
      907 ORK                              R24 R25 K107 [""]
      908 SETTABLEKS                       R24 R23 K104 ["Text"]
      910 CALL                             R21 2 1
      911 SETTABLEKS                       R21 R20 K98 ["TextBox"]
      913 CALL                             R17 3 1
      914 SETTABLEKS                       R17 R16 K86 ["Description"]
      916 GETUPVAL                         R17 1
      917 GETTABLEKS                       R17 R17 K3 ["createElement"]
      919 GETUPVAL                         R18 22
      920 DUPTABLE                         R19 K113 [{"LayoutOrder"}]
      921 GETUPVAL                         R20 20
      922 NAMECALL                         R20 R20 K96 ["getNextOrder"]
      924 CALL                             R20 1 1
      925 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
      927 CALL                             R17 2 1
      928 SETTABLEKS                       R17 R16 K87 ["Separator"]
      930 GETUPVAL                         R18 29
      931 JUMPIFNOT                        R18 ; [+21]
      932 GETUPVAL                         R17 1
      933 GETTABLEKS                       R17 R17 K3 ["createElement"]
      935 GETUPVAL                         R18 30
      936 DUPTABLE                         R19 K133 [{"LayoutOrder", "GameGuideline", "GameId"}]
      937 GETUPVAL                         R20 20
      938 NAMECALL                         R20 R20 K96 ["getNextOrder"]
      940 CALL                             R20 1 1
      941 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
      943 GETTABLEKS                       R20 R0 K91 ["Guidelines"]
      945 SETTABLEKS                       R20 R19 K131 ["GameGuideline"]
      947 GETTABLEKS                       R20 R0 K132 ["GameId"]
      949 SETTABLEKS                       R20 R19 K132 ["GameId"]
      951 CALL                             R17 2 1
      952 JUMP                             ; [+1]
      953 LOADNIL                          R17
      954 SETTABLEKS                       R17 R16 K91 ["Guidelines"]
      956 GETUPVAL                         R18 29
      957 JUMPIFNOT                        R18 ; [+13]
      958 GETUPVAL                         R17 1
      959 GETTABLEKS                       R17 R17 K3 ["createElement"]
      961 GETUPVAL                         R18 22
      962 DUPTABLE                         R19 K113 [{"LayoutOrder"}]
      963 GETUPVAL                         R20 20
      964 NAMECALL                         R20 R20 K96 ["getNextOrder"]
      966 CALL                             R20 1 1
      967 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
      969 CALL                             R17 2 1
      970 JUMP                             ; [+1]
      971 LOADNIL                          R17
      972 SETTABLEKS                       R17 R16 K90 ["Separator2"]
      974 GETUPVAL                         R17 1
      975 GETTABLEKS                       R17 R17 K3 ["createElement"]
      977 GETUPVAL                         R18 31
      978 DUPTABLE                         R19 K149 [{"Title", "LayoutOrder", "Enabled", "Icon", "TutorialEnabled", "AddIcon", "ErrorMessage"}]
      979 GETUPVAL                         R21 9
      980 CALL                             R21 0 1
      981 JUMPIFNOT                        R21 ; [+7]
      982 GETUPVAL                         R20 5
      983 LOADK                            R22 K14 ["General"]
      984 LOADK                            R23 K150 ["TitleExperienceIcon"]
      985 NAMECALL                         R20 R20 K16 ["getText"]
      987 CALL                             R20 3 1
      988 JUMP                             ; [+6]
      989 GETUPVAL                         R20 5
      990 LOADK                            R22 K14 ["General"]
      991 LOADK                            R23 K151 ["TitleGameIcon"]
      992 NAMECALL                         R20 R20 K16 ["getText"]
      994 CALL                             R20 3 1
      995 SETTABLEKS                       R20 R19 K94 ["Title"]
      997 GETUPVAL                         R20 20
      998 NAMECALL                         R20 R20 K96 ["getNextOrder"]
     1000 CALL                             R20 1 1
     1001 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
     1003 GETTABLEKS                       R21 R0 K152 ["GameIcon"]
     1005 JUMPIFNOTEQKNIL                  R21 ; [+2]
     1007 LOADB                            R20 0 +1
     1008 LOADB                            R20 1
     1009 SETTABLEKS                       R20 R19 K145 ["Enabled"]
     1011 GETTABLEKS                       R20 R0 K152 ["GameIcon"]
     1013 SETTABLEKS                       R20 R19 K134 ["Icon"]
     1015 LOADB                            R20 1
     1016 SETTABLEKS                       R20 R19 K146 ["TutorialEnabled"]
     1018 GETUPVAL                         R20 0
     1019 GETTABLEKS                       R20 R20 K153 ["addIcons"]
     1021 SETTABLEKS                       R20 R19 K147 ["AddIcon"]
     1023 SETTABLEKS                       R12 R19 K148 ["ErrorMessage"]
     1025 CALL                             R17 2 1
     1026 SETTABLEKS                       R17 R16 K134 ["Icon"]
     1028 GETUPVAL                         R17 1
     1029 GETTABLEKS                       R17 R17 K3 ["createElement"]
     1031 GETUPVAL                         R18 22
     1032 DUPTABLE                         R19 K113 [{"LayoutOrder"}]
     1033 GETUPVAL                         R20 20
     1034 NAMECALL                         R20 R20 K96 ["getNextOrder"]
     1036 CALL                             R20 1 1
     1037 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
     1039 CALL                             R17 2 1
     1040 SETTABLEKS                       R17 R16 K135 ["Separator3"]
     1042 GETUPVAL                         R17 1
     1043 GETTABLEKS                       R17 R17 K3 ["createElement"]
     1045 GETUPVAL                         R18 32
     1046 DUPTABLE                         R19 K160 [{"LayoutOrder", "Enabled", "Thumbnails", "Order", "Notes", "IsVideoAllowed", "AddThumbnail", "ErrorMessage", "ThumbnailsChanged", "ThumbnailOrderChanged", "AltTextError"}]
     1047 GETUPVAL                         R20 20
     1048 NAMECALL                         R20 R20 K96 ["getNextOrder"]
     1050 CALL                             R20 1 1
     1051 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
     1053 GETTABLEKS                       R21 R0 K136 ["Thumbnails"]
     1055 JUMPIFNOTEQKNIL                  R21 ; [+2]
     1057 LOADB                            R20 0 +1
     1058 LOADB                            R20 1
     1059 SETTABLEKS                       R20 R19 K145 ["Enabled"]
     1061 GETTABLEKS                       R20 R0 K136 ["Thumbnails"]
     1063 SETTABLEKS                       R20 R19 K136 ["Thumbnails"]
     1065 GETTABLEKS                       R20 R0 K161 ["ThumbnailOrder"]
     1067 SETTABLEKS                       R20 R19 K154 ["Order"]
     1069 SETTABLEKS                       R9 R19 K155 ["Notes"]
     1071 SETTABLEKS                       R8 R19 K156 ["IsVideoAllowed"]
     1073 GETUPVAL                         R20 0
     1074 GETTABLEKS                       R20 R20 K162 ["addThumbnails"]
     1076 SETTABLEKS                       R20 R19 K157 ["AddThumbnail"]
     1078 SETTABLEKS                       R13 R19 K148 ["ErrorMessage"]
     1080 GETTABLEKS                       R20 R0 K158 ["ThumbnailsChanged"]
     1082 SETTABLEKS                       R20 R19 K158 ["ThumbnailsChanged"]
     1084 GETTABLEKS                       R20 R0 K159 ["ThumbnailOrderChanged"]
     1086 SETTABLEKS                       R20 R19 K159 ["ThumbnailOrderChanged"]
     1088 DUPTABLE                         R20 K164 [{"ThumbnailId", "ErrorMessage"}]
     1089 GETTABLEKS                       R22 R0 K81 ["AltTextError"]
     1091 JUMPIFNOT                        R22 ; [+5]
     1092 GETTABLEKS                       R21 R0 K81 ["AltTextError"]
     1094 GETTABLEKS                       R21 R21 K163 ["ThumbnailId"]
     1096 JUMP                             ; [+1]
     1097 LOADNIL                          R21
     1098 SETTABLEKS                       R21 R20 K163 ["ThumbnailId"]
     1100 SETTABLEKS                       R14 R20 K148 ["ErrorMessage"]
     1102 SETTABLEKS                       R20 R19 K81 ["AltTextError"]
     1104 CALL                             R17 2 1
     1105 SETTABLEKS                       R17 R16 K136 ["Thumbnails"]
     1107 GETUPVAL                         R17 1
     1108 GETTABLEKS                       R17 R17 K3 ["createElement"]
     1110 GETUPVAL                         R18 22
     1111 DUPTABLE                         R19 K113 [{"LayoutOrder"}]
     1112 GETUPVAL                         R20 20
     1113 NAMECALL                         R20 R20 K96 ["getNextOrder"]
     1115 CALL                             R20 1 1
     1116 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
     1118 CALL                             R17 2 1
     1119 SETTABLEKS                       R17 R16 K137 ["Separator4"]
     1121 GETUPVAL                         R18 6
     1122 JUMPIFNOT                        R18 ; [+189]
     1123 GETUPVAL                         R17 1
     1124 GETTABLEKS                       R17 R17 K3 ["createElement"]
     1126 GETUPVAL                         R18 19
     1127 DUPTABLE                         R19 K95 [{"LayoutOrder", "Title"}]
     1128 GETUPVAL                         R20 20
     1129 NAMECALL                         R20 R20 K96 ["getNextOrder"]
     1131 CALL                             R20 1 1
     1132 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
     1134 GETUPVAL                         R20 5
     1135 LOADK                            R22 K14 ["General"]
     1136 LOADK                            R23 K165 ["TitleGenre"]
     1137 NAMECALL                         R20 R20 K16 ["getText"]
     1139 CALL                             R20 3 1
     1140 SETTABLEKS                       R20 R19 K94 ["Title"]
     1142 DUPTABLE                         R20 K167 [{"ExperienceGenre", "GenreHelperText"}]
     1143 GETUPVAL                         R21 1
     1144 GETTABLEKS                       R21 R21 K3 ["createElement"]
     1146 GETUPVAL                         R22 33
     1147 DUPTABLE                         R23 K173 [{"Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize", "TextXAlignment"}]
     1148 GETUPVAL                         R24 34
     1149 GETTABLEKS                       R24 R24 K174 ["fontStyle"]
     1151 GETTABLEKS                       R24 R24 K175 ["Normal"]
     1153 GETTABLEKS                       R24 R24 K168 ["Font"]
     1155 SETTABLEKS                       R24 R23 K168 ["Font"]
     1157 GETUPVAL                         R24 20
     1158 NAMECALL                         R24 R24 K96 ["getNextOrder"]
     1160 CALL                             R24 1 1
     1161 SETTABLEKS                       R24 R23 K93 ["LayoutOrder"]
     1163 GETIMPORT                        R24 K178 [UDim2.new]
     1165 LOADN                            R25 0
     1166 GETUPVAL                         R26 35
     1167 MOVE                             R27 R7
     1168 GETUPVAL                         R28 34
     1169 GETTABLEKS                       R28 R28 K174 ["fontStyle"]
     1171 GETTABLEKS                       R28 R28 K175 ["Normal"]
     1173 GETTABLEKS                       R28 R28 K171 ["TextSize"]
     1175 GETUPVAL                         R29 34
     1176 GETTABLEKS                       R29 R29 K174 ["fontStyle"]
     1178 GETTABLEKS                       R29 R29 K175 ["Normal"]
     1180 GETTABLEKS                       R29 R29 K168 ["Font"]
     1182 CALL                             R26 3 1
     1183 GETTABLEKS                       R26 R26 K179 ["X"]
     1185 LOADN                            R27 0
     1186 GETUPVAL                         R28 34
     1187 GETTABLEKS                       R28 R28 K174 ["fontStyle"]
     1189 GETTABLEKS                       R28 R28 K175 ["Normal"]
     1191 GETTABLEKS                       R28 R28 K171 ["TextSize"]
     1193 CALL                             R24 4 1
     1194 SETTABLEKS                       R24 R23 K169 ["Size"]
     1196 SETTABLEKS                       R7 R23 K104 ["Text"]
     1198 GETUPVAL                         R24 34
     1199 GETTABLEKS                       R24 R24 K174 ["fontStyle"]
     1201 GETTABLEKS                       R24 R24 K175 ["Normal"]
     1203 GETTABLEKS                       R24 R24 K170 ["TextColor3"]
     1205 SETTABLEKS                       R24 R23 K170 ["TextColor3"]
     1207 GETUPVAL                         R24 34
     1208 GETTABLEKS                       R24 R24 K174 ["fontStyle"]
     1210 GETTABLEKS                       R24 R24 K175 ["Normal"]
     1212 GETTABLEKS                       R24 R24 K171 ["TextSize"]
     1214 SETTABLEKS                       R24 R23 K171 ["TextSize"]
     1216 GETIMPORT                        R24 K181 [Enum.TextXAlignment.Left]
     1218 SETTABLEKS                       R24 R23 K172 ["TextXAlignment"]
     1220 CALL                             R21 2 1
     1221 SETTABLEKS                       R21 R20 K49 ["ExperienceGenre"]
     1223 GETUPVAL                         R21 1
     1224 GETTABLEKS                       R21 R21 K3 ["createElement"]
     1226 GETUPVAL                         R22 36
     1227 DUPTABLE                         R23 K187 [{"OnLinkClicked", "LayoutOrder", "Text", "LinkText", "LinkPlaceholder", "MaxWidth", "TextProps", "TextWrapped", "HorizontalAlignment"}]
     1228 NEWCLOSURE                       R24 P3
     1229 CAPTURE                          UPVAL U37
     1230 CAPTURE                          VAL R0
     1231 SETTABLEKS                       R24 R23 K122 ["OnLinkClicked"]
     1233 GETUPVAL                         R24 20
     1234 NAMECALL                         R24 R24 K96 ["getNextOrder"]
     1236 CALL                             R24 1 1
     1237 SETTABLEKS                       R24 R23 K93 ["LayoutOrder"]
     1239 GETUPVAL                         R24 5
     1240 LOADK                            R26 K188 ["GenreSettings"]
     1241 LOADK                            R27 K189 ["GenreManageMessage"]
     1242 DUPTABLE                         R28 K191 [{"link"}]
     1243 GETUPVAL                         R29 5
     1244 LOADK                            R31 K188 ["GenreSettings"]
     1245 LOADK                            R32 K192 ["GenreClickHereLink"]
     1246 NAMECALL                         R29 R29 K16 ["getText"]
     1248 CALL                             R29 3 1
     1249 SETTABLEKS                       R29 R28 K190 ["link"]
     1251 NAMECALL                         R24 R24 K16 ["getText"]
     1253 CALL                             R24 4 1
     1254 SETTABLEKS                       R24 R23 K104 ["Text"]
     1256 GETUPVAL                         R24 5
     1257 LOADK                            R26 K188 ["GenreSettings"]
     1258 LOADK                            R27 K192 ["GenreClickHereLink"]
     1259 NAMECALL                         R24 R24 K16 ["getText"]
     1261 CALL                             R24 3 1
     1262 SETTABLEKS                       R24 R23 K121 ["LinkText"]
     1264 GETUPVAL                         R24 5
     1265 LOADK                            R26 K188 ["GenreSettings"]
     1266 LOADK                            R27 K192 ["GenreClickHereLink"]
     1267 NAMECALL                         R24 R24 K16 ["getText"]
     1269 CALL                             R24 3 1
     1270 SETTABLEKS                       R24 R23 K182 ["LinkPlaceholder"]
     1272 GETUPVAL                         R24 34
     1273 GETTABLEKS                       R24 R24 K193 ["textWithInlineLink"]
     1275 GETTABLEKS                       R24 R24 K194 ["maxWidth"]
     1277 SETTABLEKS                       R24 R23 K183 ["MaxWidth"]
     1279 GETUPVAL                         R24 38
     1280 GETTABLEKS                       R24 R24 K195 ["Dictionary"]
     1282 GETTABLEKS                       R24 R24 K196 ["join"]
     1284 GETUPVAL                         R25 34
     1285 GETTABLEKS                       R25 R25 K174 ["fontStyle"]
     1287 GETTABLEKS                       R25 R25 K197 ["Smaller"]
     1289 DUPTABLE                         R26 K199 [{"BackgroundTransparency", "TextXAlignment"}]
     1290 LOADN                            R27 1
     1291 SETTABLEKS                       R27 R26 K198 ["BackgroundTransparency"]
     1293 GETIMPORT                        R27 K181 [Enum.TextXAlignment.Left]
     1295 SETTABLEKS                       R27 R26 K172 ["TextXAlignment"]
     1297 CALL                             R24 2 1
     1298 SETTABLEKS                       R24 R23 K184 ["TextProps"]
     1300 LOADB                            R24 1
     1301 SETTABLEKS                       R24 R23 K185 ["TextWrapped"]
     1303 GETIMPORT                        R24 K200 [Enum.HorizontalAlignment.Left]
     1305 SETTABLEKS                       R24 R23 K186 ["HorizontalAlignment"]
     1307 CALL                             R21 2 1
     1308 SETTABLEKS                       R21 R20 K166 ["GenreHelperText"]
     1310 CALL                             R17 3 1
     1311 JUMP                             ; [+88]
     1312 GETUPVAL                         R17 1
     1313 GETTABLEKS                       R17 R17 K3 ["createElement"]
     1315 GETUPVAL                         R18 19
     1316 DUPTABLE                         R19 K95 [{"LayoutOrder", "Title"}]
     1317 GETUPVAL                         R20 20
     1318 NAMECALL                         R20 R20 K96 ["getNextOrder"]
     1320 CALL                             R20 1 1
     1321 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
     1323 GETUPVAL                         R20 5
     1324 LOADK                            R22 K14 ["General"]
     1325 LOADK                            R23 K165 ["TitleGenre"]
     1326 NAMECALL                         R20 R20 K16 ["getText"]
     1328 CALL                             R20 3 1
     1329 SETTABLEKS                       R20 R19 K94 ["Title"]
     1331 DUPTABLE                         R20 K202 [{"Body"}]
     1332 GETUPVAL                         R21 1
     1333 GETTABLEKS                       R21 R21 K3 ["createElement"]
     1335 GETUPVAL                         R22 36
     1336 DUPTABLE                         R23 K203 [{"OnLinkClicked", "Text", "LinkText", "LinkPlaceholder", "MaxWidth", "TextProps", "TextWrapped", "HorizontalAlignment"}]
     1337 DUPCLOSURE                       R24 K204 [PROTO_60]
     1338 CAPTURE                          UPVAL U24
     1339 CAPTURE                          UPVAL U39
     1340 SETTABLEKS                       R24 R23 K122 ["OnLinkClicked"]
     1342 GETUPVAL                         R24 5
     1343 LOADK                            R26 K14 ["General"]
     1344 LOADK                            R27 K205 ["GenreReplacementMessage"]
     1345 NAMECALL                         R24 R24 K16 ["getText"]
     1347 CALL                             R24 3 1
     1348 SETTABLEKS                       R24 R23 K104 ["Text"]
     1350 GETUPVAL                         R24 5
     1351 LOADK                            R26 K14 ["General"]
     1352 LOADK                            R27 K206 ["GenreOverhaulMessageLink"]
     1353 NAMECALL                         R24 R24 K16 ["getText"]
     1355 CALL                             R24 3 1
     1356 SETTABLEKS                       R24 R23 K121 ["LinkText"]
     1358 LOADK                            R24 K207 ["[link]"]
     1359 SETTABLEKS                       R24 R23 K182 ["LinkPlaceholder"]
     1361 GETUPVAL                         R24 34
     1362 GETTABLEKS                       R24 R24 K193 ["textWithInlineLink"]
     1364 GETTABLEKS                       R24 R24 K194 ["maxWidth"]
     1366 SETTABLEKS                       R24 R23 K183 ["MaxWidth"]
     1368 GETUPVAL                         R24 38
     1369 GETTABLEKS                       R24 R24 K195 ["Dictionary"]
     1371 GETTABLEKS                       R24 R24 K196 ["join"]
     1373 GETUPVAL                         R25 34
     1374 GETTABLEKS                       R25 R25 K174 ["fontStyle"]
     1376 GETTABLEKS                       R25 R25 K197 ["Smaller"]
     1378 DUPTABLE                         R26 K199 [{"BackgroundTransparency", "TextXAlignment"}]
     1379 LOADN                            R27 1
     1380 SETTABLEKS                       R27 R26 K198 ["BackgroundTransparency"]
     1382 GETIMPORT                        R27 K181 [Enum.TextXAlignment.Left]
     1384 SETTABLEKS                       R27 R26 K172 ["TextXAlignment"]
     1386 CALL                             R24 2 1
     1387 SETTABLEKS                       R24 R23 K184 ["TextProps"]
     1389 LOADB                            R24 1
     1390 SETTABLEKS                       R24 R23 K185 ["TextWrapped"]
     1392 GETIMPORT                        R24 K200 [Enum.HorizontalAlignment.Left]
     1394 SETTABLEKS                       R24 R23 K186 ["HorizontalAlignment"]
     1396 CALL                             R21 2 1
     1397 SETTABLEKS                       R21 R20 K201 ["Body"]
     1399 CALL                             R17 3 1
     1400 SETTABLEKS                       R17 R16 K138 ["Genre"]
     1402 GETUPVAL                         R17 1
     1403 GETTABLEKS                       R17 R17 K3 ["createElement"]
     1405 GETUPVAL                         R18 22
     1406 DUPTABLE                         R19 K113 [{"LayoutOrder"}]
     1407 GETUPVAL                         R20 20
     1408 NAMECALL                         R20 R20 K96 ["getNextOrder"]
     1410 CALL                             R20 1 1
     1411 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
     1413 CALL                             R17 2 1
     1414 SETTABLEKS                       R17 R16 K139 ["Separator5"]
     1416 GETUPVAL                         R17 1
     1417 GETTABLEKS                       R17 R17 K3 ["createElement"]
     1419 GETUPVAL                         R18 19
     1420 DUPTABLE                         R19 K95 [{"LayoutOrder", "Title"}]
     1421 GETUPVAL                         R20 20
     1422 NAMECALL                         R20 R20 K96 ["getNextOrder"]
     1424 CALL                             R20 1 1
     1425 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
     1427 GETUPVAL                         R20 5
     1428 LOADK                            R22 K14 ["General"]
     1429 LOADK                            R23 K208 ["TitleCreatorRestriction"]
     1430 NAMECALL                         R20 R20 K16 ["getText"]
     1432 CALL                             R20 3 1
     1433 SETTABLEKS                       R20 R19 K94 ["Title"]
     1435 DUPTABLE                         R20 K210 [{"Padding", "LinkText"}]
     1436 GETUPVAL                         R21 1
     1437 GETTABLEKS                       R21 R21 K3 ["createElement"]
     1439 LOADK                            R22 K211 ["UIPadding"]
     1440 DUPTABLE                         R23 K213 [{"PaddingTop"}]
     1441 GETIMPORT                        R24 K215 [UDim.new]
     1443 LOADN                            R25 0
     1444 LOADN                            R26 4
     1445 CALL                             R24 2 1
     1446 SETTABLEKS                       R24 R23 K212 ["PaddingTop"]
     1448 CALL                             R21 2 1
     1449 SETTABLEKS                       R21 R20 K209 ["Padding"]
     1451 GETUPVAL                         R21 1
     1452 GETTABLEKS                       R21 R21 K3 ["createElement"]
     1454 GETUPVAL                         R22 40
     1455 DUPTABLE                         R23 K217 [{"OnClick", "Text", "TextXAlignment", "TextYAlignment"}]
     1456 GETUPVAL                         R24 41
     1457 GETTABLEKS                       R25 R0 K132 ["GameId"]
     1459 CALL                             R24 1 1
     1460 SETTABLEKS                       R24 R23 K116 ["OnClick"]
     1462 GETUPVAL                         R24 5
     1463 LOADK                            R26 K14 ["General"]
     1464 LOADK                            R27 K218 ["CreatorRestrictionDeepLink"]
     1465 NAMECALL                         R24 R24 K16 ["getText"]
     1467 CALL                             R24 3 1
     1468 SETTABLEKS                       R24 R23 K104 ["Text"]
     1470 GETIMPORT                        R24 K181 [Enum.TextXAlignment.Left]
     1472 SETTABLEKS                       R24 R23 K172 ["TextXAlignment"]
     1474 GETIMPORT                        R24 K220 [Enum.TextYAlignment.Top]
     1476 SETTABLEKS                       R24 R23 K216 ["TextYAlignment"]
     1478 CALL                             R21 2 1
     1479 SETTABLEKS                       R21 R20 K121 ["LinkText"]
     1481 CALL                             R17 3 1
     1482 SETTABLEKS                       R17 R16 K140 ["CreatorRestriction"]
     1484 GETUPVAL                         R17 1
     1485 GETTABLEKS                       R17 R17 K3 ["createElement"]
     1487 GETUPVAL                         R18 22
     1488 DUPTABLE                         R19 K113 [{"LayoutOrder"}]
     1489 GETUPVAL                         R20 20
     1490 NAMECALL                         R20 R20 K96 ["getNextOrder"]
     1492 CALL                             R20 1 1
     1493 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
     1495 CALL                             R17 2 1
     1496 SETTABLEKS                       R17 R16 K141 ["Separator6"]
     1498 GETUPVAL                         R17 1
     1499 GETTABLEKS                       R17 R17 K3 ["createElement"]
     1501 GETUPVAL                         R18 42
     1502 DUPTABLE                         R19 K223 [{"Title", "LayoutOrder", "Boxes", "Enabled", "ErrorMessage", "EntryClicked"}]
     1503 GETUPVAL                         R20 5
     1504 LOADK                            R22 K14 ["General"]
     1505 LOADK                            R23 K224 ["TitleDevices"]
     1506 NAMECALL                         R20 R20 K16 ["getText"]
     1508 CALL                             R20 3 1
     1509 SETTABLEKS                       R20 R19 K94 ["Title"]
     1511 GETUPVAL                         R20 20
     1512 NAMECALL                         R20 R20 K96 ["getNextOrder"]
     1514 CALL                             R20 1 1
     1515 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
     1517 NEWTABLE                         R20 0 5
     1519 DUPTABLE                         R21 K225 [{"Id", "Title", "Selected"}]
     1520 LOADK                            R22 K226 ["Computer"]
     1521 SETTABLEKS                       R22 R21 K13 ["Id"]
     1523 GETUPVAL                         R22 5
     1524 LOADK                            R24 K14 ["General"]
     1525 LOADK                            R25 K227 ["DeviceComputer"]
     1526 NAMECALL                         R22 R22 K16 ["getText"]
     1528 CALL                             R22 3 1
     1529 SETTABLEKS                       R22 R21 K94 ["Title"]
     1531 JUMPIFNOT                        R1 ; [+3]
     1532 GETTABLEKS                       R22 R1 K226 ["Computer"]
     1534 JUMP                             ; [+1]
     1535 LOADB                            R22 0
     1536 SETTABLEKS                       R22 R21 K114 ["Selected"]
     1538 DUPTABLE                         R22 K225 [{"Id", "Title", "Selected"}]
     1539 LOADK                            R23 K228 ["Phone"]
     1540 SETTABLEKS                       R23 R22 K13 ["Id"]
     1542 GETUPVAL                         R23 5
     1543 LOADK                            R25 K14 ["General"]
     1544 LOADK                            R26 K229 ["DevicePhone"]
     1545 NAMECALL                         R23 R23 K16 ["getText"]
     1547 CALL                             R23 3 1
     1548 SETTABLEKS                       R23 R22 K94 ["Title"]
     1550 JUMPIFNOT                        R1 ; [+3]
     1551 GETTABLEKS                       R23 R1 K228 ["Phone"]
     1553 JUMP                             ; [+1]
     1554 LOADB                            R23 0
     1555 SETTABLEKS                       R23 R22 K114 ["Selected"]
     1557 DUPTABLE                         R23 K225 [{"Id", "Title", "Selected"}]
     1558 LOADK                            R24 K230 ["Tablet"]
     1559 SETTABLEKS                       R24 R23 K13 ["Id"]
     1561 GETUPVAL                         R24 5
     1562 LOADK                            R26 K14 ["General"]
     1563 LOADK                            R27 K231 ["DeviceTablet"]
     1564 NAMECALL                         R24 R24 K16 ["getText"]
     1566 CALL                             R24 3 1
     1567 SETTABLEKS                       R24 R23 K94 ["Title"]
     1569 JUMPIFNOT                        R1 ; [+3]
     1570 GETTABLEKS                       R24 R1 K230 ["Tablet"]
     1572 JUMP                             ; [+1]
     1573 LOADB                            R24 0
     1574 SETTABLEKS                       R24 R23 K114 ["Selected"]
     1576 DUPTABLE                         R24 K225 [{"Id", "Title", "Selected"}]
     1577 LOADK                            R25 K232 ["Console"]
     1578 SETTABLEKS                       R25 R24 K13 ["Id"]
     1580 GETUPVAL                         R25 5
     1581 LOADK                            R27 K14 ["General"]
     1582 LOADK                            R28 K233 ["DeviceConsole"]
     1583 NAMECALL                         R25 R25 K16 ["getText"]
     1585 CALL                             R25 3 1
     1586 SETTABLEKS                       R25 R24 K94 ["Title"]
     1588 JUMPIFNOT                        R1 ; [+3]
     1589 GETTABLEKS                       R25 R1 K232 ["Console"]
     1591 JUMP                             ; [+1]
     1592 LOADB                            R25 0
     1593 SETTABLEKS                       R25 R24 K114 ["Selected"]
     1595 DUPTABLE                         R25 K225 [{"Id", "Title", "Selected"}]
     1596 LOADK                            R26 K234 ["VR"]
     1597 SETTABLEKS                       R26 R25 K13 ["Id"]
     1599 GETUPVAL                         R26 5
     1600 LOADK                            R28 K14 ["General"]
     1601 LOADK                            R29 K235 ["DeviceVR"]
     1602 NAMECALL                         R26 R26 K16 ["getText"]
     1604 CALL                             R26 3 1
     1605 SETTABLEKS                       R26 R25 K94 ["Title"]
     1607 JUMPIFNOT                        R1 ; [+3]
     1608 GETTABLEKS                       R26 R1 K234 ["VR"]
     1610 JUMP                             ; [+1]
     1611 LOADB                            R26 0
     1612 SETTABLEKS                       R26 R25 K114 ["Selected"]
     1614 SETLIST                          R20 R21 5 [1]
     1616 SETTABLEKS                       R20 R19 K221 ["Boxes"]
     1618 JUMPIFNOTEQKNIL                  R1 ; [+2]
     1620 LOADB                            R20 0 +1
     1621 LOADB                            R20 1
     1622 SETTABLEKS                       R20 R19 K145 ["Enabled"]
     1624 GETUPVAL                         R21 15
     1625 CALL                             R21 0 1
     1626 JUMPIFNOT                        R21 ; [+2]
     1627 MOVE                             R20 R15
     1628 JUMP                             ; [+1]
     1629 LOADNIL                          R20
     1630 SETTABLEKS                       R20 R19 K148 ["ErrorMessage"]
     1632 NEWCLOSURE                       R20 P5
     1633 CAPTURE                          UPVAL U38
     1634 CAPTURE                          VAL R1
     1635 CAPTURE                          VAL R0
     1636 SETTABLEKS                       R20 R19 K222 ["EntryClicked"]
     1638 CALL                             R17 2 1
     1639 SETTABLEKS                       R17 R16 K5 ["Devices"]
     1641 GETUPVAL                         R18 3
     1642 CALL                             R18 0 1
     1643 JUMPIFNOT                        R18 ; [+13]
     1644 GETUPVAL                         R17 1
     1645 GETTABLEKS                       R17 R17 K3 ["createElement"]
     1647 GETUPVAL                         R18 22
     1648 DUPTABLE                         R19 K113 [{"LayoutOrder"}]
     1649 GETUPVAL                         R20 20
     1650 NAMECALL                         R20 R20 K96 ["getNextOrder"]
     1652 CALL                             R20 1 1
     1653 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
     1655 CALL                             R17 2 1
     1656 JUMPIF                           R17 ; [+1]
     1657 LOADNIL                          R17
     1658 SETTABLEKS                       R17 R16 K142 ["Separator7"]
     1660 GETUPVAL                         R18 3
     1661 CALL                             R18 0 1
     1662 JUMPIFNOT                        R18 ; [+149]
     1663 GETUPVAL                         R17 1
     1664 GETTABLEKS                       R17 R17 K3 ["createElement"]
     1666 GETUPVAL                         R18 42
     1667 DUPTABLE                         R19 K237 [{"Title", "LayoutOrder", "Boxes", "ShowWarning", "Enabled", "EntryClicked", "Tooltip"}]
     1668 GETUPVAL                         R20 5
     1669 LOADK                            R22 K14 ["General"]
     1670 LOADK                            R23 K238 ["TitleOptInLocations"]
     1671 NAMECALL                         R20 R20 K16 ["getText"]
     1673 CALL                             R20 3 1
     1674 SETTABLEKS                       R20 R19 K94 ["Title"]
     1676 GETUPVAL                         R20 20
     1677 NAMECALL                         R20 R20 K96 ["getNextOrder"]
     1679 CALL                             R20 1 1
     1680 SETTABLEKS                       R20 R19 K93 ["LayoutOrder"]
     1682 GETUPVAL                         R20 0
     1683 GETUPVAL                         R22 20
     1684 NAMECALL                         R20 R20 K239 ["createOptInLocationBoxes"]
     1686 CALL                             R20 2 1
     1687 SETTABLEKS                       R20 R19 K221 ["Boxes"]
     1689 NOT                              R20 R5
     1690 SETTABLEKS                       R20 R19 K127 ["ShowWarning"]
     1692 LOADB                            R20 0
     1693 JUMPIFEQKNIL                     R3 ; [+2]
     1695 MOVE                             R20 R5
     1696 SETTABLEKS                       R20 R19 K145 ["Enabled"]
     1698 NEWCLOSURE                       R20 P6
     1699 CAPTURE                          UPVAL U34
     1700 CAPTURE                          UPVAL U5
     1701 CAPTURE                          UPVAL U1
     1702 CAPTURE                          UPVAL U36
     1703 CAPTURE                          UPVAL U43
     1704 CAPTURE                          UPVAL U44
     1705 CAPTURE                          UPVAL U24
     1706 CAPTURE                          UPVAL U38
     1707 CAPTURE                          REF R4
     1708 CAPTURE                          VAL R2
     1709 CAPTURE                          UPVAL U45
     1710 CAPTURE                          UPVAL U46
     1711 CAPTURE                          UPVAL U47
     1712 CAPTURE                          UPVAL U48
     1713 CAPTURE                          UPVAL U49
     1714 CAPTURE                          UPVAL U50
     1715 CAPTURE                          UPVAL U51
     1716 CAPTURE                          REF R3
     1717 CAPTURE                          UPVAL U4
     1718 CAPTURE                          UPVAL U52
     1719 CAPTURE                          UPVAL U53
     1720 CAPTURE                          VAL R0
     1721 SETTABLEKS                       R20 R19 K222 ["EntryClicked"]
     1723 GETUPVAL                         R20 1
     1724 GETTABLEKS                       R20 R20 K3 ["createElement"]
     1726 GETUPVAL                         R21 54
     1727 DUPTABLE                         R22 K243 [{"Size", "Position", "Style", "StyleModifier"}]
     1728 GETIMPORT                        R23 K245 [UDim2.fromOffset]
     1730 GETUPVAL                         R24 34
     1731 GETTABLEKS                       R24 R24 K246 ["tooltipIcon"]
     1733 GETTABLEKS                       R24 R24 K247 ["size"]
     1735 GETUPVAL                         R25 34
     1736 GETTABLEKS                       R25 R25 K246 ["tooltipIcon"]
     1738 GETTABLEKS                       R25 R25 K247 ["size"]
     1740 CALL                             R23 2 1
     1741 SETTABLEKS                       R23 R22 K169 ["Size"]
     1743 GETIMPORT                        R23 K178 [UDim2.new]
     1745 LOADN                            R24 0
     1746 GETUPVAL                         R25 34
     1747 GETTABLEKS                       R25 R25 K246 ["tooltipIcon"]
     1749 GETTABLEKS                       R25 R25 K248 ["paddingX"]
     1751 LOADN                            R26 0
     1752 GETUPVAL                         R27 34
     1753 GETTABLEKS                       R27 R27 K246 ["tooltipIcon"]
     1755 GETTABLEKS                       R27 R27 K249 ["paddingY"]
     1757 CALL                             R23 4 1
     1758 SETTABLEKS                       R23 R22 K240 ["Position"]
     1760 LOADK                            R23 K250 ["TooltipStyle"]
     1761 SETTABLEKS                       R23 R22 K241 ["Style"]
     1763 GETUPVAL                         R23 0
     1764 GETTABLEKS                       R23 R23 K251 ["state"]
     1766 GETTABLEKS                       R23 R23 K242 ["StyleModifier"]
     1768 SETTABLEKS                       R23 R22 K242 ["StyleModifier"]
     1770 NEWTABLE                         R23 0 2
     1772 GETUPVAL                         R24 1
     1773 GETTABLEKS                       R24 R24 K3 ["createElement"]
     1775 GETUPVAL                         R25 55
     1776 DUPTABLE                         R26 K252 [{"Text"}]
     1777 GETUPVAL                         R27 5
     1778 GETUPVAL                         R29 4
     1779 LOADK                            R30 K236 ["Tooltip"]
     1780 NAMECALL                         R27 R27 K16 ["getText"]
     1782 CALL                             R27 3 1
     1783 SETTABLEKS                       R27 R26 K104 ["Text"]
     1785 CALL                             R24 2 1
     1786 GETUPVAL                         R25 1
     1787 GETTABLEKS                       R25 R25 K3 ["createElement"]
     1789 GETUPVAL                         R26 56
     1790 DUPTABLE                         R27 K256 [{"Cursor", "MouseEnter", "MouseLeave"}]
     1791 LOADK                            R28 K1 ["InsufficientPermission"]
     1792 SETTABLEKS                       R28 R27 K253 ["Cursor"]
     1794 GETUPVAL                         R28 0
     1795 GETTABLEKS                       R28 R28 K258 ["onMouseEnter"]
     1797 SETTABLEKS                       R28 R27 K254 ["MouseEnter"]
     1799 GETUPVAL                         R28 0
     1800 GETTABLEKS                       R28 R28 K259 ["onMouseLeave"]
     1802 SETTABLEKS                       R28 R27 K255 ["MouseLeave"]
     1804 CALL                             R25 2 -1
     1805 SETLIST                          R23 R24 -1 [1]
     1807 CALL                             R20 3 1
     1808 SETTABLEKS                       R20 R19 K236 ["Tooltip"]
     1810 CALL                             R17 2 1
     1811 JUMPIF                           R17 ; [+1]
     1812 LOADNIL                          R17
     1813 SETTABLEKS                       R17 R16 K143 ["OptInLocations"]
     1815 CLOSEUPVALS                      R3
     1816 RETURN                           R16 1

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
        2 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
        3 LOADK                            R4 K3 ["na"]
        4 SETTABLEKS                       R4 R3 K0 ["genre"]
        6 LOADNIL                          R4
        7 SETTABLEKS                       R4 R3 K1 ["subGenre"]
        9 SETTABLEKS                       R3 R2 K3 ["na"]
       11 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
       12 LOADK                            R4 K4 ["education"]
       13 SETTABLEKS                       R4 R3 K0 ["genre"]
       15 LOADNIL                          R4
       16 SETTABLEKS                       R4 R3 K1 ["subGenre"]
       18 SETTABLEKS                       R3 R2 K4 ["education"]
       20 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
       21 LOADK                            R4 K5 ["entertainment"]
       22 SETTABLEKS                       R4 R3 K0 ["genre"]
       24 LOADNIL                          R4
       25 SETTABLEKS                       R4 R3 K1 ["subGenre"]
       27 SETTABLEKS                       R3 R2 K5 ["entertainment"]
       29 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
       30 LOADK                            R4 K5 ["entertainment"]
       31 SETTABLEKS                       R4 R3 K0 ["genre"]
       33 LOADK                            R4 K6 ["music_and_audio"]
       34 SETTABLEKS                       R4 R3 K1 ["subGenre"]
       36 SETTABLEKS                       R3 R2 K6 ["music_and_audio"]
       38 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
       39 LOADK                            R4 K5 ["entertainment"]
       40 SETTABLEKS                       R4 R3 K0 ["genre"]
       42 LOADK                            R4 K7 ["showcase_and_hub"]
       43 SETTABLEKS                       R4 R3 K1 ["subGenre"]
       45 SETTABLEKS                       R3 R2 K7 ["showcase_and_hub"]
       47 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
       48 LOADK                            R4 K5 ["entertainment"]
       49 SETTABLEKS                       R4 R3 K0 ["genre"]
       51 LOADK                            R4 K8 ["video"]
       52 SETTABLEKS                       R4 R3 K1 ["subGenre"]
       54 SETTABLEKS                       R3 R2 K8 ["video"]
       56 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
       57 LOADK                            R4 K5 ["entertainment"]
       58 SETTABLEKS                       R4 R3 K0 ["genre"]
       60 LOADK                            R4 K9 ["other_entertainment"]
       61 SETTABLEKS                       R4 R3 K1 ["subGenre"]
       63 SETTABLEKS                       R3 R2 K9 ["other_entertainment"]
       65 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
       66 LOADK                            R4 K10 ["game"]
       67 SETTABLEKS                       R4 R3 K0 ["genre"]
       69 LOADNIL                          R4
       70 SETTABLEKS                       R4 R3 K1 ["subGenre"]
       72 SETTABLEKS                       R3 R2 K10 ["game"]
       74 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
       75 LOADK                            R4 K11 ["action"]
       76 SETTABLEKS                       R4 R3 K0 ["genre"]
       78 LOADNIL                          R4
       79 SETTABLEKS                       R4 R3 K1 ["subGenre"]
       81 SETTABLEKS                       R3 R2 K11 ["action"]
       83 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
       84 LOADK                            R4 K11 ["action"]
       85 SETTABLEKS                       R4 R3 K0 ["genre"]
       87 LOADK                            R4 K12 ["battlegrounds_and_fighting"]
       88 SETTABLEKS                       R4 R3 K1 ["subGenre"]
       90 SETTABLEKS                       R3 R2 K12 ["battlegrounds_and_fighting"]
       92 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
       93 LOADK                            R4 K11 ["action"]
       94 SETTABLEKS                       R4 R3 K0 ["genre"]
       96 LOADK                            R4 K13 ["open_world_action"]
       97 SETTABLEKS                       R4 R3 K1 ["subGenre"]
       99 SETTABLEKS                       R3 R2 K13 ["open_world_action"]
      101 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      102 LOADK                            R4 K11 ["action"]
      103 SETTABLEKS                       R4 R3 K0 ["genre"]
      105 LOADK                            R4 K14 ["other_action"]
      106 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      108 SETTABLEKS                       R3 R2 K14 ["other_action"]
      110 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      111 LOADK                            R4 K11 ["action"]
      112 SETTABLEKS                       R4 R3 K0 ["genre"]
      114 LOADK                            R4 K15 ["music_and_rhythm"]
      115 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      117 SETTABLEKS                       R3 R2 K15 ["music_and_rhythm"]
      119 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      120 LOADK                            R4 K16 ["adventure"]
      121 SETTABLEKS                       R4 R3 K0 ["genre"]
      123 LOADNIL                          R4
      124 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      126 SETTABLEKS                       R3 R2 K16 ["adventure"]
      128 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      129 LOADK                            R4 K16 ["adventure"]
      130 SETTABLEKS                       R4 R3 K0 ["genre"]
      132 LOADK                            R4 K17 ["exploration"]
      133 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      135 SETTABLEKS                       R3 R2 K17 ["exploration"]
      137 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      138 LOADK                            R4 K16 ["adventure"]
      139 SETTABLEKS                       R4 R3 K0 ["genre"]
      141 LOADK                            R4 K18 ["scavenger_hunt"]
      142 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      144 SETTABLEKS                       R3 R2 K18 ["scavenger_hunt"]
      146 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      147 LOADK                            R4 K16 ["adventure"]
      148 SETTABLEKS                       R4 R3 K0 ["genre"]
      150 LOADK                            R4 K19 ["story"]
      151 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      153 SETTABLEKS                       R3 R2 K19 ["story"]
      155 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      156 LOADK                            R4 K16 ["adventure"]
      157 SETTABLEKS                       R4 R3 K0 ["genre"]
      159 LOADK                            R4 K20 ["other_adventure"]
      160 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      162 SETTABLEKS                       R3 R2 K20 ["other_adventure"]
      164 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      165 LOADK                            R4 K21 ["roleplay_and_avatar_sim"]
      166 SETTABLEKS                       R4 R3 K0 ["genre"]
      168 LOADNIL                          R4
      169 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      171 SETTABLEKS                       R3 R2 K21 ["roleplay_and_avatar_sim"]
      173 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      174 LOADK                            R4 K21 ["roleplay_and_avatar_sim"]
      175 SETTABLEKS                       R4 R3 K0 ["genre"]
      177 LOADK                            R4 K22 ["animal_sim"]
      178 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      180 SETTABLEKS                       R3 R2 K22 ["animal_sim"]
      182 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      183 LOADK                            R4 K21 ["roleplay_and_avatar_sim"]
      184 SETTABLEKS                       R4 R3 K0 ["genre"]
      186 LOADK                            R4 K23 ["dress_up"]
      187 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      189 SETTABLEKS                       R3 R2 K23 ["dress_up"]
      191 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      192 LOADK                            R4 K21 ["roleplay_and_avatar_sim"]
      193 SETTABLEKS                       R4 R3 K0 ["genre"]
      195 LOADK                            R4 K24 ["pet_care"]
      196 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      198 SETTABLEKS                       R3 R2 K24 ["pet_care"]
      200 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      201 LOADK                            R4 K21 ["roleplay_and_avatar_sim"]
      202 SETTABLEKS                       R4 R3 K0 ["genre"]
      204 LOADK                            R4 K25 ["life"]
      205 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      207 SETTABLEKS                       R3 R2 K25 ["life"]
      209 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      210 LOADK                            R4 K21 ["roleplay_and_avatar_sim"]
      211 SETTABLEKS                       R4 R3 K0 ["genre"]
      213 LOADK                            R4 K26 ["morph_roleplay"]
      214 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      216 SETTABLEKS                       R3 R2 K26 ["morph_roleplay"]
      218 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      219 LOADK                            R4 K21 ["roleplay_and_avatar_sim"]
      220 SETTABLEKS                       R4 R3 K0 ["genre"]
      222 LOADK                            R4 K27 ["other_roleplay_and_avatar_sim"]
      223 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      225 SETTABLEKS                       R3 R2 K27 ["other_roleplay_and_avatar_sim"]
      227 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      228 LOADK                            R4 K28 ["obby_and_platformer"]
      229 SETTABLEKS                       R4 R3 K0 ["genre"]
      231 LOADNIL                          R4
      232 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      234 SETTABLEKS                       R3 R2 K28 ["obby_and_platformer"]
      236 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      237 LOADK                            R4 K28 ["obby_and_platformer"]
      238 SETTABLEKS                       R4 R3 K0 ["genre"]
      240 LOADK                            R4 K29 ["classic_obby"]
      241 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      243 SETTABLEKS                       R3 R2 K29 ["classic_obby"]
      245 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      246 LOADK                            R4 K28 ["obby_and_platformer"]
      247 SETTABLEKS                       R4 R3 K0 ["genre"]
      249 LOADK                            R4 K30 ["runner"]
      250 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      252 SETTABLEKS                       R3 R2 K30 ["runner"]
      254 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      255 LOADK                            R4 K28 ["obby_and_platformer"]
      256 SETTABLEKS                       R4 R3 K0 ["genre"]
      258 LOADK                            R4 K31 ["tower_obby"]
      259 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      261 SETTABLEKS                       R3 R2 K31 ["tower_obby"]
      263 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      264 LOADK                            R4 K28 ["obby_and_platformer"]
      265 SETTABLEKS                       R4 R3 K0 ["genre"]
      267 LOADK                            R4 K32 ["other_obby_and_platformer"]
      268 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      270 SETTABLEKS                       R3 R2 K32 ["other_obby_and_platformer"]
      272 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      273 LOADK                            R4 K33 ["party_and_casual"]
      274 SETTABLEKS                       R4 R3 K0 ["genre"]
      276 LOADNIL                          R4
      277 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      279 SETTABLEKS                       R3 R2 K33 ["party_and_casual"]
      281 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      282 LOADK                            R4 K33 ["party_and_casual"]
      283 SETTABLEKS                       R4 R3 K0 ["genre"]
      285 LOADK                            R4 K34 ["childhood_game"]
      286 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      288 SETTABLEKS                       R3 R2 K34 ["childhood_game"]
      290 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      291 LOADK                            R4 K33 ["party_and_casual"]
      292 SETTABLEKS                       R4 R3 K0 ["genre"]
      294 LOADK                            R4 K35 ["minigame"]
      295 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      297 SETTABLEKS                       R3 R2 K35 ["minigame"]
      299 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      300 LOADK                            R4 K33 ["party_and_casual"]
      301 SETTABLEKS                       R4 R3 K0 ["genre"]
      303 LOADK                            R4 K36 ["quiz"]
      304 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      306 SETTABLEKS                       R3 R2 K36 ["quiz"]
      308 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      309 LOADK                            R4 K33 ["party_and_casual"]
      310 SETTABLEKS                       R4 R3 K0 ["genre"]
      312 LOADK                            R4 K37 ["coloring_and_drawing"]
      313 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      315 SETTABLEKS                       R3 R2 K37 ["coloring_and_drawing"]
      317 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      318 LOADK                            R4 K33 ["party_and_casual"]
      319 SETTABLEKS                       R4 R3 K0 ["genre"]
      321 LOADK                            R4 K38 ["other_party_and_casual"]
      322 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      324 SETTABLEKS                       R3 R2 K38 ["other_party_and_casual"]
      326 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      327 LOADK                            R4 K39 ["puzzle"]
      328 SETTABLEKS                       R4 R3 K0 ["genre"]
      330 LOADNIL                          R4
      331 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      333 SETTABLEKS                       R3 R2 K39 ["puzzle"]
      335 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      336 LOADK                            R4 K39 ["puzzle"]
      337 SETTABLEKS                       R4 R3 K0 ["genre"]
      339 LOADK                            R4 K40 ["escape_room"]
      340 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      342 SETTABLEKS                       R3 R2 K40 ["escape_room"]
      344 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      345 LOADK                            R4 K39 ["puzzle"]
      346 SETTABLEKS                       R4 R3 K0 ["genre"]
      348 LOADK                            R4 K41 ["match_and_merge"]
      349 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      351 SETTABLEKS                       R3 R2 K41 ["match_and_merge"]
      353 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      354 LOADK                            R4 K39 ["puzzle"]
      355 SETTABLEKS                       R4 R3 K0 ["genre"]
      357 LOADK                            R4 K42 ["word"]
      358 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      360 SETTABLEKS                       R3 R2 K42 ["word"]
      362 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      363 LOADK                            R4 K39 ["puzzle"]
      364 SETTABLEKS                       R4 R3 K0 ["genre"]
      366 LOADK                            R4 K43 ["other_puzzle"]
      367 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      369 SETTABLEKS                       R3 R2 K43 ["other_puzzle"]
      371 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      372 LOADK                            R4 K44 ["rpg"]
      373 SETTABLEKS                       R4 R3 K0 ["genre"]
      375 LOADNIL                          R4
      376 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      378 SETTABLEKS                       R3 R2 K44 ["rpg"]
      380 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      381 LOADK                            R4 K44 ["rpg"]
      382 SETTABLEKS                       R4 R3 K0 ["genre"]
      384 LOADK                            R4 K45 ["action_rpg"]
      385 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      387 SETTABLEKS                       R3 R2 K45 ["action_rpg"]
      389 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      390 LOADK                            R4 K44 ["rpg"]
      391 SETTABLEKS                       R4 R3 K0 ["genre"]
      393 LOADK                            R4 K46 ["turn_based_rpg"]
      394 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      396 SETTABLEKS                       R3 R2 K46 ["turn_based_rpg"]
      398 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      399 LOADK                            R4 K44 ["rpg"]
      400 SETTABLEKS                       R4 R3 K0 ["genre"]
      402 LOADK                            R4 K47 ["open_world_and_survival_rpg"]
      403 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      405 SETTABLEKS                       R3 R2 K47 ["open_world_and_survival_rpg"]
      407 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      408 LOADK                            R4 K44 ["rpg"]
      409 SETTABLEKS                       R4 R3 K0 ["genre"]
      411 LOADK                            R4 K48 ["other_rpg"]
      412 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      414 SETTABLEKS                       R3 R2 K48 ["other_rpg"]
      416 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      417 LOADK                            R4 K49 ["shooter"]
      418 SETTABLEKS                       R4 R3 K0 ["genre"]
      420 LOADNIL                          R4
      421 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      423 SETTABLEKS                       R3 R2 K49 ["shooter"]
      425 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      426 LOADK                            R4 K49 ["shooter"]
      427 SETTABLEKS                       R4 R3 K0 ["genre"]
      429 LOADK                            R4 K50 ["battle_royale_shooter"]
      430 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      432 SETTABLEKS                       R3 R2 K50 ["battle_royale_shooter"]
      434 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      435 LOADK                            R4 K49 ["shooter"]
      436 SETTABLEKS                       R4 R3 K0 ["genre"]
      438 LOADK                            R4 K51 ["pve_shooter"]
      439 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      441 SETTABLEKS                       R3 R2 K51 ["pve_shooter"]
      443 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      444 LOADK                            R4 K49 ["shooter"]
      445 SETTABLEKS                       R4 R3 K0 ["genre"]
      447 LOADK                            R4 K52 ["deathmatch_shooter"]
      448 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      450 SETTABLEKS                       R3 R2 K52 ["deathmatch_shooter"]
      452 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      453 LOADK                            R4 K49 ["shooter"]
      454 SETTABLEKS                       R4 R3 K0 ["genre"]
      456 LOADK                            R4 K53 ["other_shooter"]
      457 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      459 SETTABLEKS                       R3 R2 K53 ["other_shooter"]
      461 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      462 LOADK                            R4 K54 ["simulation"]
      463 SETTABLEKS                       R4 R3 K0 ["genre"]
      465 LOADNIL                          R4
      466 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      468 SETTABLEKS                       R3 R2 K54 ["simulation"]
      470 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      471 LOADK                            R4 K54 ["simulation"]
      472 SETTABLEKS                       R4 R3 K0 ["genre"]
      474 LOADK                            R4 K55 ["vehicle_sim"]
      475 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      477 SETTABLEKS                       R3 R2 K55 ["vehicle_sim"]
      479 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      480 LOADK                            R4 K54 ["simulation"]
      481 SETTABLEKS                       R4 R3 K0 ["genre"]
      483 LOADK                            R4 K56 ["physics_sim"]
      484 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      486 SETTABLEKS                       R3 R2 K56 ["physics_sim"]
      488 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      489 LOADK                            R4 K54 ["simulation"]
      490 SETTABLEKS                       R4 R3 K0 ["genre"]
      492 LOADK                            R4 K57 ["incremental_simulator"]
      493 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      495 SETTABLEKS                       R3 R2 K57 ["incremental_simulator"]
      497 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      498 LOADK                            R4 K54 ["simulation"]
      499 SETTABLEKS                       R4 R3 K0 ["genre"]
      501 LOADK                            R4 K58 ["idle"]
      502 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      504 SETTABLEKS                       R3 R2 K58 ["idle"]
      506 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      507 LOADK                            R4 K54 ["simulation"]
      508 SETTABLEKS                       R4 R3 K0 ["genre"]
      510 LOADK                            R4 K59 ["tycoon"]
      511 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      513 SETTABLEKS                       R3 R2 K59 ["tycoon"]
      515 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      516 LOADK                            R4 K54 ["simulation"]
      517 SETTABLEKS                       R4 R3 K0 ["genre"]
      519 LOADK                            R4 K60 ["sandbox"]
      520 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      522 SETTABLEKS                       R3 R2 K60 ["sandbox"]
      524 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      525 LOADK                            R4 K54 ["simulation"]
      526 SETTABLEKS                       R4 R3 K0 ["genre"]
      528 LOADK                            R4 K61 ["other_simulation"]
      529 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      531 SETTABLEKS                       R3 R2 K61 ["other_simulation"]
      533 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      534 LOADK                            R4 K62 ["sports_and_racing"]
      535 SETTABLEKS                       R4 R3 K0 ["genre"]
      537 LOADNIL                          R4
      538 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      540 SETTABLEKS                       R3 R2 K62 ["sports_and_racing"]
      542 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      543 LOADK                            R4 K62 ["sports_and_racing"]
      544 SETTABLEKS                       R4 R3 K0 ["genre"]
      546 LOADK                            R4 K63 ["sports"]
      547 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      549 SETTABLEKS                       R3 R2 K63 ["sports"]
      551 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      552 LOADK                            R4 K62 ["sports_and_racing"]
      553 SETTABLEKS                       R4 R3 K0 ["genre"]
      555 LOADK                            R4 K64 ["racing"]
      556 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      558 SETTABLEKS                       R3 R2 K64 ["racing"]
      560 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      561 LOADK                            R4 K62 ["sports_and_racing"]
      562 SETTABLEKS                       R4 R3 K0 ["genre"]
      564 LOADK                            R4 K65 ["other_sports_and_racing"]
      565 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      567 SETTABLEKS                       R3 R2 K65 ["other_sports_and_racing"]
      569 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      570 LOADK                            R4 K66 ["strategy"]
      571 SETTABLEKS                       R4 R3 K0 ["genre"]
      573 LOADNIL                          R4
      574 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      576 SETTABLEKS                       R3 R2 K66 ["strategy"]
      578 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      579 LOADK                            R4 K66 ["strategy"]
      580 SETTABLEKS                       R4 R3 K0 ["genre"]
      582 LOADK                            R4 K67 ["board_and_card_games"]
      583 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      585 SETTABLEKS                       R3 R2 K67 ["board_and_card_games"]
      587 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      588 LOADK                            R4 K66 ["strategy"]
      589 SETTABLEKS                       R4 R3 K0 ["genre"]
      591 LOADK                            R4 K68 ["tower_defense"]
      592 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      594 SETTABLEKS                       R3 R2 K68 ["tower_defense"]
      596 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      597 LOADK                            R4 K66 ["strategy"]
      598 SETTABLEKS                       R4 R3 K0 ["genre"]
      600 LOADK                            R4 K69 ["other_strategy"]
      601 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      603 SETTABLEKS                       R3 R2 K69 ["other_strategy"]
      605 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      606 LOADK                            R4 K70 ["survival"]
      607 SETTABLEKS                       R4 R3 K0 ["genre"]
      609 LOADNIL                          R4
      610 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      612 SETTABLEKS                       R3 R2 K70 ["survival"]
      614 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      615 LOADK                            R4 K70 ["survival"]
      616 SETTABLEKS                       R4 R3 K0 ["genre"]
      618 LOADK                            R4 K71 ["escape"]
      619 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      621 SETTABLEKS                       R3 R2 K71 ["escape"]
      623 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      624 LOADK                            R4 K70 ["survival"]
      625 SETTABLEKS                       R4 R3 K0 ["genre"]
      627 LOADK                            R4 K72 ["one_vs_all"]
      628 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      630 SETTABLEKS                       R3 R2 K72 ["one_vs_all"]
      632 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      633 LOADK                            R4 K70 ["survival"]
      634 SETTABLEKS                       R4 R3 K0 ["genre"]
      636 LOADK                            R4 K73 ["other_survival"]
      637 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      639 SETTABLEKS                       R3 R2 K73 ["other_survival"]
      641 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      642 LOADK                            R4 K74 ["shopping"]
      643 SETTABLEKS                       R4 R3 K0 ["genre"]
      645 LOADNIL                          R4
      646 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      648 SETTABLEKS                       R3 R2 K74 ["shopping"]
      650 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      651 LOADK                            R4 K74 ["shopping"]
      652 SETTABLEKS                       R4 R3 K0 ["genre"]
      654 LOADK                            R4 K75 ["avatar_shopping"]
      655 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      657 SETTABLEKS                       R3 R2 K75 ["avatar_shopping"]
      659 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      660 LOADK                            R4 K74 ["shopping"]
      661 SETTABLEKS                       R4 R3 K0 ["genre"]
      663 LOADK                            R4 K76 ["other_shopping"]
      664 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      666 SETTABLEKS                       R3 R2 K76 ["other_shopping"]
      668 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      669 LOADK                            R4 K77 ["social"]
      670 SETTABLEKS                       R4 R3 K0 ["genre"]
      672 LOADNIL                          R4
      673 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      675 SETTABLEKS                       R3 R2 K77 ["social"]
      677 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      678 LOADK                            R4 K77 ["social"]
      679 SETTABLEKS                       R4 R3 K0 ["genre"]
      681 LOADK                            R4 K78 ["content_sharing"]
      682 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      684 SETTABLEKS                       R3 R2 K78 ["content_sharing"]
      686 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      687 LOADK                            R4 K77 ["social"]
      688 SETTABLEKS                       R4 R3 K0 ["genre"]
      690 LOADK                            R4 K79 ["communication"]
      691 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      693 SETTABLEKS                       R3 R2 K79 ["communication"]
      695 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      696 LOADK                            R4 K77 ["social"]
      697 SETTABLEKS                       R4 R3 K0 ["genre"]
      699 LOADK                            R4 K80 ["hangout"]
      700 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      702 SETTABLEKS                       R3 R2 K80 ["hangout"]
      704 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      705 LOADK                            R4 K77 ["social"]
      706 SETTABLEKS                       R4 R3 K0 ["genre"]
      708 LOADK                            R4 K81 ["other_social"]
      709 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      711 SETTABLEKS                       R3 R2 K81 ["other_social"]
      713 DUPTABLE                         R3 K2 [{"genre", "subGenre"}]
      714 LOADK                            R4 K82 ["utility_and_other"]
      715 SETTABLEKS                       R4 R3 K0 ["genre"]
      717 LOADNIL                          R4
      718 SETTABLEKS                       R4 R3 K1 ["subGenre"]
      720 SETTABLEKS                       R3 R2 K82 ["utility_and_other"]
      722 NEWTABLE                         R3 128 0
      724 LOADK                            R6 K83 ["Genre"]
      725 LOADK                            R7 K84 ["Label.NA"]
      726 NAMECALL                         R4 R0 K85 ["getText"]
      728 CALL                             R4 3 1
      729 SETTABLEKS                       R4 R3 K3 ["na"]
      731 LOADK                            R6 K83 ["Genre"]
      732 LOADK                            R7 K86 ["Label.Education"]
      733 NAMECALL                         R4 R0 K85 ["getText"]
      735 CALL                             R4 3 1
      736 SETTABLEKS                       R4 R3 K4 ["education"]
      738 LOADK                            R6 K83 ["Genre"]
      739 LOADK                            R7 K87 ["Label.Entertainment"]
      740 NAMECALL                         R4 R0 K85 ["getText"]
      742 CALL                             R4 3 1
      743 SETTABLEKS                       R4 R3 K5 ["entertainment"]
      745 LOADK                            R6 K83 ["Genre"]
      746 LOADK                            R7 K88 ["Label.MusicAndAudio"]
      747 NAMECALL                         R4 R0 K85 ["getText"]
      749 CALL                             R4 3 1
      750 SETTABLEKS                       R4 R3 K6 ["music_and_audio"]
      752 LOADK                            R6 K83 ["Genre"]
      753 LOADK                            R7 K89 ["Label.ShowcaseAndHub"]
      754 NAMECALL                         R4 R0 K85 ["getText"]
      756 CALL                             R4 3 1
      757 SETTABLEKS                       R4 R3 K7 ["showcase_and_hub"]
      759 LOADK                            R6 K83 ["Genre"]
      760 LOADK                            R7 K90 ["Label.Video"]
      761 NAMECALL                         R4 R0 K85 ["getText"]
      763 CALL                             R4 3 1
      764 SETTABLEKS                       R4 R3 K8 ["video"]
      766 LOADK                            R6 K83 ["Genre"]
      767 LOADK                            R7 K91 ["Label.OtherEntertainment"]
      768 NAMECALL                         R4 R0 K85 ["getText"]
      770 CALL                             R4 3 1
      771 SETTABLEKS                       R4 R3 K9 ["other_entertainment"]
      773 LOADK                            R6 K83 ["Genre"]
      774 LOADK                            R7 K92 ["Label.Game"]
      775 NAMECALL                         R4 R0 K85 ["getText"]
      777 CALL                             R4 3 1
      778 SETTABLEKS                       R4 R3 K10 ["game"]
      780 LOADK                            R6 K83 ["Genre"]
      781 LOADK                            R7 K93 ["Label.Action"]
      782 NAMECALL                         R4 R0 K85 ["getText"]
      784 CALL                             R4 3 1
      785 SETTABLEKS                       R4 R3 K11 ["action"]
      787 LOADK                            R6 K83 ["Genre"]
      788 LOADK                            R7 K94 ["Label.BattlegroundsAndFighting"]
      789 NAMECALL                         R4 R0 K85 ["getText"]
      791 CALL                             R4 3 1
      792 SETTABLEKS                       R4 R3 K12 ["battlegrounds_and_fighting"]
      794 LOADK                            R6 K83 ["Genre"]
      795 LOADK                            R7 K95 ["Label.OpenWorldAction"]
      796 NAMECALL                         R4 R0 K85 ["getText"]
      798 CALL                             R4 3 1
      799 SETTABLEKS                       R4 R3 K13 ["open_world_action"]
      801 LOADK                            R6 K83 ["Genre"]
      802 LOADK                            R7 K96 ["Label.OtherAction"]
      803 NAMECALL                         R4 R0 K85 ["getText"]
      805 CALL                             R4 3 1
      806 SETTABLEKS                       R4 R3 K14 ["other_action"]
      808 LOADK                            R6 K83 ["Genre"]
      809 LOADK                            R7 K97 ["Label.MusicAndRhythm"]
      810 NAMECALL                         R4 R0 K85 ["getText"]
      812 CALL                             R4 3 1
      813 SETTABLEKS                       R4 R3 K15 ["music_and_rhythm"]
      815 LOADK                            R6 K83 ["Genre"]
      816 LOADK                            R7 K98 ["Label.Adventure"]
      817 NAMECALL                         R4 R0 K85 ["getText"]
      819 CALL                             R4 3 1
      820 SETTABLEKS                       R4 R3 K16 ["adventure"]
      822 LOADK                            R6 K83 ["Genre"]
      823 LOADK                            R7 K99 ["Label.Exploration"]
      824 NAMECALL                         R4 R0 K85 ["getText"]
      826 CALL                             R4 3 1
      827 SETTABLEKS                       R4 R3 K17 ["exploration"]
      829 LOADK                            R6 K83 ["Genre"]
      830 LOADK                            R7 K100 ["Label.ScavengerHunt"]
      831 NAMECALL                         R4 R0 K85 ["getText"]
      833 CALL                             R4 3 1
      834 SETTABLEKS                       R4 R3 K18 ["scavenger_hunt"]
      836 LOADK                            R6 K83 ["Genre"]
      837 LOADK                            R7 K101 ["Label.Story"]
      838 NAMECALL                         R4 R0 K85 ["getText"]
      840 CALL                             R4 3 1
      841 SETTABLEKS                       R4 R3 K19 ["story"]
      843 LOADK                            R6 K83 ["Genre"]
      844 LOADK                            R7 K102 ["Label.OtherAdventure"]
      845 NAMECALL                         R4 R0 K85 ["getText"]
      847 CALL                             R4 3 1
      848 SETTABLEKS                       R4 R3 K20 ["other_adventure"]
      850 LOADK                            R6 K83 ["Genre"]
      851 LOADK                            R7 K103 ["Label.RoleplayAndAvatarSim"]
      852 NAMECALL                         R4 R0 K85 ["getText"]
      854 CALL                             R4 3 1
      855 SETTABLEKS                       R4 R3 K21 ["roleplay_and_avatar_sim"]
      857 LOADK                            R6 K83 ["Genre"]
      858 LOADK                            R7 K104 ["Label.AnimalSim"]
      859 NAMECALL                         R4 R0 K85 ["getText"]
      861 CALL                             R4 3 1
      862 SETTABLEKS                       R4 R3 K22 ["animal_sim"]
      864 LOADK                            R6 K83 ["Genre"]
      865 LOADK                            R7 K105 ["Label.DressUp"]
      866 NAMECALL                         R4 R0 K85 ["getText"]
      868 CALL                             R4 3 1
      869 SETTABLEKS                       R4 R3 K23 ["dress_up"]
      871 LOADK                            R6 K83 ["Genre"]
      872 LOADK                            R7 K106 ["Label.PetCare"]
      873 NAMECALL                         R4 R0 K85 ["getText"]
      875 CALL                             R4 3 1
      876 SETTABLEKS                       R4 R3 K24 ["pet_care"]
      878 LOADK                            R6 K83 ["Genre"]
      879 LOADK                            R7 K107 ["Label.Life"]
      880 NAMECALL                         R4 R0 K85 ["getText"]
      882 CALL                             R4 3 1
      883 SETTABLEKS                       R4 R3 K25 ["life"]
      885 LOADK                            R6 K83 ["Genre"]
      886 LOADK                            R7 K108 ["Label.MorphRoleplay"]
      887 NAMECALL                         R4 R0 K85 ["getText"]
      889 CALL                             R4 3 1
      890 SETTABLEKS                       R4 R3 K26 ["morph_roleplay"]
      892 LOADK                            R6 K83 ["Genre"]
      893 LOADK                            R7 K109 ["Label.OtherRoleplayAndAvatarSim"]
      894 NAMECALL                         R4 R0 K85 ["getText"]
      896 CALL                             R4 3 1
      897 SETTABLEKS                       R4 R3 K27 ["other_roleplay_and_avatar_sim"]
      899 LOADK                            R6 K83 ["Genre"]
      900 LOADK                            R7 K110 ["Label.ObbyAndPlatformer"]
      901 NAMECALL                         R4 R0 K85 ["getText"]
      903 CALL                             R4 3 1
      904 SETTABLEKS                       R4 R3 K28 ["obby_and_platformer"]
      906 LOADK                            R6 K83 ["Genre"]
      907 LOADK                            R7 K111 ["Label.ClassicObby"]
      908 NAMECALL                         R4 R0 K85 ["getText"]
      910 CALL                             R4 3 1
      911 SETTABLEKS                       R4 R3 K29 ["classic_obby"]
      913 LOADK                            R6 K83 ["Genre"]
      914 LOADK                            R7 K112 ["Label.Runner"]
      915 NAMECALL                         R4 R0 K85 ["getText"]
      917 CALL                             R4 3 1
      918 SETTABLEKS                       R4 R3 K30 ["runner"]
      920 LOADK                            R6 K83 ["Genre"]
      921 LOADK                            R7 K113 ["Label.TowerObby"]
      922 NAMECALL                         R4 R0 K85 ["getText"]
      924 CALL                             R4 3 1
      925 SETTABLEKS                       R4 R3 K31 ["tower_obby"]
      927 LOADK                            R6 K83 ["Genre"]
      928 LOADK                            R7 K114 ["Label.OtherObbyAndPlatformer"]
      929 NAMECALL                         R4 R0 K85 ["getText"]
      931 CALL                             R4 3 1
      932 SETTABLEKS                       R4 R3 K32 ["other_obby_and_platformer"]
      934 LOADK                            R6 K83 ["Genre"]
      935 LOADK                            R7 K115 ["Label.PartyAndCasual"]
      936 NAMECALL                         R4 R0 K85 ["getText"]
      938 CALL                             R4 3 1
      939 SETTABLEKS                       R4 R3 K33 ["party_and_casual"]
      941 LOADK                            R6 K83 ["Genre"]
      942 LOADK                            R7 K116 ["Label.ChildhoodGame"]
      943 NAMECALL                         R4 R0 K85 ["getText"]
      945 CALL                             R4 3 1
      946 SETTABLEKS                       R4 R3 K34 ["childhood_game"]
      948 LOADK                            R6 K83 ["Genre"]
      949 LOADK                            R7 K117 ["Label.Minigame"]
      950 NAMECALL                         R4 R0 K85 ["getText"]
      952 CALL                             R4 3 1
      953 SETTABLEKS                       R4 R3 K35 ["minigame"]
      955 LOADK                            R6 K83 ["Genre"]
      956 LOADK                            R7 K118 ["Label.Quiz"]
      957 NAMECALL                         R4 R0 K85 ["getText"]
      959 CALL                             R4 3 1
      960 SETTABLEKS                       R4 R3 K36 ["quiz"]
      962 LOADK                            R6 K83 ["Genre"]
      963 LOADK                            R7 K119 ["Label.ColoringAndDrawing"]
      964 NAMECALL                         R4 R0 K85 ["getText"]
      966 CALL                             R4 3 1
      967 SETTABLEKS                       R4 R3 K37 ["coloring_and_drawing"]
      969 LOADK                            R6 K83 ["Genre"]
      970 LOADK                            R7 K120 ["Label.OtherPartyAndCasual"]
      971 NAMECALL                         R4 R0 K85 ["getText"]
      973 CALL                             R4 3 1
      974 SETTABLEKS                       R4 R3 K38 ["other_party_and_casual"]
      976 LOADK                            R6 K83 ["Genre"]
      977 LOADK                            R7 K121 ["Label.Puzzle"]
      978 NAMECALL                         R4 R0 K85 ["getText"]
      980 CALL                             R4 3 1
      981 SETTABLEKS                       R4 R3 K39 ["puzzle"]
      983 LOADK                            R6 K83 ["Genre"]
      984 LOADK                            R7 K122 ["Label.EscapeRoom"]
      985 NAMECALL                         R4 R0 K85 ["getText"]
      987 CALL                             R4 3 1
      988 SETTABLEKS                       R4 R3 K40 ["escape_room"]
      990 LOADK                            R6 K83 ["Genre"]
      991 LOADK                            R7 K123 ["Label.MatchAndMerge"]
      992 NAMECALL                         R4 R0 K85 ["getText"]
      994 CALL                             R4 3 1
      995 SETTABLEKS                       R4 R3 K41 ["match_and_merge"]
      997 LOADK                            R6 K83 ["Genre"]
      998 LOADK                            R7 K124 ["Label.Word"]
      999 NAMECALL                         R4 R0 K85 ["getText"]
     1001 CALL                             R4 3 1
     1002 SETTABLEKS                       R4 R3 K42 ["word"]
     1004 LOADK                            R6 K83 ["Genre"]
     1005 LOADK                            R7 K125 ["Label.OtherPuzzle"]
     1006 NAMECALL                         R4 R0 K85 ["getText"]
     1008 CALL                             R4 3 1
     1009 SETTABLEKS                       R4 R3 K43 ["other_puzzle"]
     1011 LOADK                            R6 K83 ["Genre"]
     1012 LOADK                            R7 K126 ["Label.Rpg"]
     1013 NAMECALL                         R4 R0 K85 ["getText"]
     1015 CALL                             R4 3 1
     1016 SETTABLEKS                       R4 R3 K44 ["rpg"]
     1018 LOADK                            R6 K83 ["Genre"]
     1019 LOADK                            R7 K127 ["Label.ActionRpg"]
     1020 NAMECALL                         R4 R0 K85 ["getText"]
     1022 CALL                             R4 3 1
     1023 SETTABLEKS                       R4 R3 K45 ["action_rpg"]
     1025 LOADK                            R6 K83 ["Genre"]
     1026 LOADK                            R7 K128 ["Label.TurnBasedRpg"]
     1027 NAMECALL                         R4 R0 K85 ["getText"]
     1029 CALL                             R4 3 1
     1030 SETTABLEKS                       R4 R3 K46 ["turn_based_rpg"]
     1032 LOADK                            R6 K83 ["Genre"]
     1033 LOADK                            R7 K129 ["Label.OpenWorldAndSurvivalRpg"]
     1034 NAMECALL                         R4 R0 K85 ["getText"]
     1036 CALL                             R4 3 1
     1037 SETTABLEKS                       R4 R3 K47 ["open_world_and_survival_rpg"]
     1039 LOADK                            R6 K83 ["Genre"]
     1040 LOADK                            R7 K130 ["Label.OtherRpg"]
     1041 NAMECALL                         R4 R0 K85 ["getText"]
     1043 CALL                             R4 3 1
     1044 SETTABLEKS                       R4 R3 K48 ["other_rpg"]
     1046 LOADK                            R6 K83 ["Genre"]
     1047 LOADK                            R7 K131 ["Label.Shooter"]
     1048 NAMECALL                         R4 R0 K85 ["getText"]
     1050 CALL                             R4 3 1
     1051 SETTABLEKS                       R4 R3 K49 ["shooter"]
     1053 LOADK                            R6 K83 ["Genre"]
     1054 LOADK                            R7 K132 ["Label.BattleRoyaleShooter"]
     1055 NAMECALL                         R4 R0 K85 ["getText"]
     1057 CALL                             R4 3 1
     1058 SETTABLEKS                       R4 R3 K50 ["battle_royale_shooter"]
     1060 LOADK                            R6 K83 ["Genre"]
     1061 LOADK                            R7 K133 ["Label.PveShooter"]
     1062 NAMECALL                         R4 R0 K85 ["getText"]
     1064 CALL                             R4 3 1
     1065 SETTABLEKS                       R4 R3 K51 ["pve_shooter"]
     1067 LOADK                            R6 K83 ["Genre"]
     1068 LOADK                            R7 K134 ["Label.DeathmatchShooter"]
     1069 NAMECALL                         R4 R0 K85 ["getText"]
     1071 CALL                             R4 3 1
     1072 SETTABLEKS                       R4 R3 K52 ["deathmatch_shooter"]
     1074 LOADK                            R6 K83 ["Genre"]
     1075 LOADK                            R7 K135 ["Label.OtherShooter"]
     1076 NAMECALL                         R4 R0 K85 ["getText"]
     1078 CALL                             R4 3 1
     1079 SETTABLEKS                       R4 R3 K53 ["other_shooter"]
     1081 LOADK                            R6 K83 ["Genre"]
     1082 LOADK                            R7 K136 ["Label.Simulation"]
     1083 NAMECALL                         R4 R0 K85 ["getText"]
     1085 CALL                             R4 3 1
     1086 SETTABLEKS                       R4 R3 K54 ["simulation"]
     1088 LOADK                            R6 K83 ["Genre"]
     1089 LOADK                            R7 K137 ["Label.VehicleSim"]
     1090 NAMECALL                         R4 R0 K85 ["getText"]
     1092 CALL                             R4 3 1
     1093 SETTABLEKS                       R4 R3 K55 ["vehicle_sim"]
     1095 LOADK                            R6 K83 ["Genre"]
     1096 LOADK                            R7 K138 ["Label.PhysicsSim"]
     1097 NAMECALL                         R4 R0 K85 ["getText"]
     1099 CALL                             R4 3 1
     1100 SETTABLEKS                       R4 R3 K56 ["physics_sim"]
     1102 LOADK                            R6 K83 ["Genre"]
     1103 LOADK                            R7 K139 ["Label.IncrementalSimulator"]
     1104 NAMECALL                         R4 R0 K85 ["getText"]
     1106 CALL                             R4 3 1
     1107 SETTABLEKS                       R4 R3 K57 ["incremental_simulator"]
     1109 LOADK                            R6 K83 ["Genre"]
     1110 LOADK                            R7 K140 ["Label.Idle"]
     1111 NAMECALL                         R4 R0 K85 ["getText"]
     1113 CALL                             R4 3 1
     1114 SETTABLEKS                       R4 R3 K58 ["idle"]
     1116 LOADK                            R6 K83 ["Genre"]
     1117 LOADK                            R7 K141 ["Label.Tycoon"]
     1118 NAMECALL                         R4 R0 K85 ["getText"]
     1120 CALL                             R4 3 1
     1121 SETTABLEKS                       R4 R3 K59 ["tycoon"]
     1123 LOADK                            R6 K83 ["Genre"]
     1124 LOADK                            R7 K142 ["Label.Sandbox"]
     1125 NAMECALL                         R4 R0 K85 ["getText"]
     1127 CALL                             R4 3 1
     1128 SETTABLEKS                       R4 R3 K60 ["sandbox"]
     1130 LOADK                            R6 K83 ["Genre"]
     1131 LOADK                            R7 K143 ["Label.OtherSimulation"]
     1132 NAMECALL                         R4 R0 K85 ["getText"]
     1134 CALL                             R4 3 1
     1135 SETTABLEKS                       R4 R3 K61 ["other_simulation"]
     1137 LOADK                            R6 K83 ["Genre"]
     1138 LOADK                            R7 K144 ["Label.SportsAndRacing"]
     1139 NAMECALL                         R4 R0 K85 ["getText"]
     1141 CALL                             R4 3 1
     1142 SETTABLEKS                       R4 R3 K62 ["sports_and_racing"]
     1144 LOADK                            R6 K83 ["Genre"]
     1145 LOADK                            R7 K145 ["Label.Sports"]
     1146 NAMECALL                         R4 R0 K85 ["getText"]
     1148 CALL                             R4 3 1
     1149 SETTABLEKS                       R4 R3 K63 ["sports"]
     1151 LOADK                            R6 K83 ["Genre"]
     1152 LOADK                            R7 K146 ["Label.Racing"]
     1153 NAMECALL                         R4 R0 K85 ["getText"]
     1155 CALL                             R4 3 1
     1156 SETTABLEKS                       R4 R3 K64 ["racing"]
     1158 LOADK                            R6 K83 ["Genre"]
     1159 LOADK                            R7 K147 ["Label.OtherSportsAndRacing"]
     1160 NAMECALL                         R4 R0 K85 ["getText"]
     1162 CALL                             R4 3 1
     1163 SETTABLEKS                       R4 R3 K65 ["other_sports_and_racing"]
     1165 LOADK                            R6 K83 ["Genre"]
     1166 LOADK                            R7 K148 ["Label.Strategy"]
     1167 NAMECALL                         R4 R0 K85 ["getText"]
     1169 CALL                             R4 3 1
     1170 SETTABLEKS                       R4 R3 K66 ["strategy"]
     1172 LOADK                            R6 K83 ["Genre"]
     1173 LOADK                            R7 K149 ["Label.BoardAndCardGames"]
     1174 NAMECALL                         R4 R0 K85 ["getText"]
     1176 CALL                             R4 3 1
     1177 SETTABLEKS                       R4 R3 K67 ["board_and_card_games"]
     1179 LOADK                            R6 K83 ["Genre"]
     1180 LOADK                            R7 K150 ["Label.TowerDefense"]
     1181 NAMECALL                         R4 R0 K85 ["getText"]
     1183 CALL                             R4 3 1
     1184 SETTABLEKS                       R4 R3 K68 ["tower_defense"]
     1186 LOADK                            R6 K83 ["Genre"]
     1187 LOADK                            R7 K151 ["Label.OtherStrategy"]
     1188 NAMECALL                         R4 R0 K85 ["getText"]
     1190 CALL                             R4 3 1
     1191 SETTABLEKS                       R4 R3 K69 ["other_strategy"]
     1193 LOADK                            R6 K83 ["Genre"]
     1194 LOADK                            R7 K152 ["Label.Survival"]
     1195 NAMECALL                         R4 R0 K85 ["getText"]
     1197 CALL                             R4 3 1
     1198 SETTABLEKS                       R4 R3 K70 ["survival"]
     1200 LOADK                            R6 K83 ["Genre"]
     1201 LOADK                            R7 K153 ["Label.Escape"]
     1202 NAMECALL                         R4 R0 K85 ["getText"]
     1204 CALL                             R4 3 1
     1205 SETTABLEKS                       R4 R3 K71 ["escape"]
     1207 LOADK                            R6 K83 ["Genre"]
     1208 LOADK                            R7 K154 ["Label.OneVsAll"]
     1209 NAMECALL                         R4 R0 K85 ["getText"]
     1211 CALL                             R4 3 1
     1212 SETTABLEKS                       R4 R3 K72 ["one_vs_all"]
     1214 LOADK                            R6 K83 ["Genre"]
     1215 LOADK                            R7 K155 ["Label.OtherSurvival"]
     1216 NAMECALL                         R4 R0 K85 ["getText"]
     1218 CALL                             R4 3 1
     1219 SETTABLEKS                       R4 R3 K73 ["other_survival"]
     1221 LOADK                            R6 K83 ["Genre"]
     1222 LOADK                            R7 K156 ["Label.Shopping"]
     1223 NAMECALL                         R4 R0 K85 ["getText"]
     1225 CALL                             R4 3 1
     1226 SETTABLEKS                       R4 R3 K74 ["shopping"]
     1228 LOADK                            R6 K83 ["Genre"]
     1229 LOADK                            R7 K157 ["Label.AvatarShopping"]
     1230 NAMECALL                         R4 R0 K85 ["getText"]
     1232 CALL                             R4 3 1
     1233 SETTABLEKS                       R4 R3 K75 ["avatar_shopping"]
     1235 LOADK                            R6 K83 ["Genre"]
     1236 LOADK                            R7 K158 ["Label.OtherShopping"]
     1237 NAMECALL                         R4 R0 K85 ["getText"]
     1239 CALL                             R4 3 1
     1240 SETTABLEKS                       R4 R3 K76 ["other_shopping"]
     1242 LOADK                            R6 K83 ["Genre"]
     1243 LOADK                            R7 K159 ["Label.Social"]
     1244 NAMECALL                         R4 R0 K85 ["getText"]
     1246 CALL                             R4 3 1
     1247 SETTABLEKS                       R4 R3 K77 ["social"]
     1249 LOADK                            R6 K83 ["Genre"]
     1250 LOADK                            R7 K160 ["Label.ContentSharing"]
     1251 NAMECALL                         R4 R0 K85 ["getText"]
     1253 CALL                             R4 3 1
     1254 SETTABLEKS                       R4 R3 K78 ["content_sharing"]
     1256 LOADK                            R6 K83 ["Genre"]
     1257 LOADK                            R7 K161 ["Label.Communication"]
     1258 NAMECALL                         R4 R0 K85 ["getText"]
     1260 CALL                             R4 3 1
     1261 SETTABLEKS                       R4 R3 K79 ["communication"]
     1263 LOADK                            R6 K83 ["Genre"]
     1264 LOADK                            R7 K162 ["Label.Hangout"]
     1265 NAMECALL                         R4 R0 K85 ["getText"]
     1267 CALL                             R4 3 1
     1268 SETTABLEKS                       R4 R3 K80 ["hangout"]
     1270 LOADK                            R6 K83 ["Genre"]
     1271 LOADK                            R7 K163 ["Label.OtherSocial"]
     1272 NAMECALL                         R4 R0 K85 ["getText"]
     1274 CALL                             R4 3 1
     1275 SETTABLEKS                       R4 R3 K81 ["other_social"]
     1277 LOADK                            R6 K83 ["Genre"]
     1278 LOADK                            R7 K164 ["Label.UtilityAndOther"]
     1279 NAMECALL                         R4 R0 K85 ["getText"]
     1281 CALL                             R4 3 1
     1282 SETTABLEKS                       R4 R3 K82 ["utility_and_other"]
     1284 ORK                              R5 R1 K3 ["na"]
     1285 GETTABLE                         R4 R2 R5
     1286 JUMPIF                           R4 ; [+7]
     1287 DUPTABLE                         R4 K2 [{"genre", "subGenre"}]
     1288 LOADK                            R5 K3 ["na"]
     1289 SETTABLEKS                       R5 R4 K0 ["genre"]
     1291 LOADNIL                          R5
     1292 SETTABLEKS                       R5 R4 K1 ["subGenre"]
     1294 GETTABLEKS                       R8 R4 K0 ["genre"]
     1296 ORK                              R7 R8 K3 ["na"]
     1297 GETTABLE                         R6 R3 R7
     1298 ORK                              R5 R6 K165 [""]
     1299 GETTABLEKS                       R9 R4 K1 ["subGenre"]
     1301 ORK                              R8 R9 K3 ["na"]
     1302 GETTABLE                         R7 R3 R8
     1303 ORK                              R6 R7 K165 [""]
     1304 GETTABLEKS                       R8 R4 K1 ["subGenre"]
     1306 JUMPIFNOT                        R8 ; [+5]
     1307 MOVE                             R8 R5
     1308 LOADK                            R9 K166 [" > "]
     1309 MOVE                             R10 R6
     1310 CONCAT                           R7 R8 R10
     1311 JUMPIF                           R7 ; [+1]
     1312 MOVE                             R7 R5
     1313 RETURN                           R7 1

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
      103 DUPTABLE                         R15 K32 [{"Moderated", "Empty"}]
      104 LOADK                            R16 K33 ["ErrorNameModerated"]
      105 SETTABLEKS                       R16 R15 K30 ["Moderated"]
      107 LOADK                            R16 K34 ["ErrorNameEmpty"]
      108 SETTABLEKS                       R16 R15 K31 ["Empty"]
      110 DUPTABLE                         R16 K32 [{"Moderated", "Empty"}]
      111 LOADK                            R17 K35 ["ErrorDescModerated"]
      112 SETTABLEKS                       R17 R16 K30 ["Moderated"]
      114 LOADK                            R17 K36 ["ErrorFieldEmpty"]
      115 SETTABLEKS                       R17 R16 K31 ["Empty"]
      117 DUPTABLE                         R17 K39 [{"UploadingTooQuickly", "ImageNotRecognized"}]
      118 LOADK                            R18 K40 ["ErrorImageLimit"]
      119 SETTABLEKS                       R18 R17 K37 ["UploadingTooQuickly"]
      121 LOADK                            R18 K41 ["ErrorImageNotRecognized"]
      122 SETTABLEKS                       R18 R17 K38 ["ImageNotRecognized"]
      124 DUPTABLE                         R18 K42 [{"Empty"}]
      125 LOADK                            R19 K36 ["ErrorFieldEmpty"]
      126 SETTABLEKS                       R19 R18 K31 ["Empty"]
      128 DUPTABLE                         R19 K43 [{"Moderated"}]
      129 LOADK                            R20 K44 ["ErrorAltTextModerated"]
      130 SETTABLEKS                       R20 R19 K30 ["Moderated"]
      132 GETIMPORT                        R20 K1 [script]
      134 GETTABLEKS                       R20 R20 K2 ["Parent"]
      136 GETIMPORT                        R21 K19 [require]
      138 GETTABLEKS                       R22 R0 K45 ["Packages"]
      140 GETTABLEKS                       R22 R22 K46 ["Roact"]
      142 CALL                             R21 1 1
      143 GETIMPORT                        R22 K19 [require]
      145 GETTABLEKS                       R23 R0 K45 ["Packages"]
      147 GETTABLEKS                       R23 R23 K47 ["RoactRodux"]
      149 CALL                             R22 1 1
      150 GETIMPORT                        R23 K19 [require]
      152 GETTABLEKS                       R24 R0 K45 ["Packages"]
      154 GETTABLEKS                       R24 R24 K48 ["Cryo"]
      156 CALL                             R23 1 1
      157 GETIMPORT                        R24 K19 [require]
      159 GETTABLEKS                       R25 R0 K45 ["Packages"]
      161 GETTABLEKS                       R25 R25 K49 ["Framework"]
      163 CALL                             R24 1 1
      164 GETTABLEKS                       R25 R24 K50 ["ContextServices"]
      166 GETTABLEKS                       R26 R25 K51 ["withContext"]
      168 GETIMPORT                        R27 K19 [require]
      170 GETTABLEKS                       R28 R0 K20 ["Src"]
      172 GETTABLEKS                       R28 R28 K50 ["ContextServices"]
      174 GETTABLEKS                       R28 R28 K52 ["Dialog"]
      176 CALL                             R27 1 1
      177 LOADNIL                          R28
      178 JUMPIFNOT                        R3 ; [+8]
      179 GETIMPORT                        R29 K19 [require]
      181 GETTABLEKS                       R30 R20 K53 ["Components"]
      183 GETTABLEKS                       R30 R30 K54 ["Guidelines"]
      185 CALL                             R29 1 1
      186 MOVE                             R28 R29
      187 GETIMPORT                        R29 K19 [require]
      189 GETTABLEKS                       R30 R0 K20 ["Src"]
      191 GETTABLEKS                       R30 R30 K55 ["Util"]
      193 GETTABLEKS                       R30 R30 K56 ["BrowserUtils"]
      195 CALL                             R29 1 1
      196 GETTABLEKS                       R29 R29 K57 ["OpenExperienceSettings"]
      198 GETIMPORT                        R30 K19 [require]
      200 GETTABLEKS                       R31 R0 K20 ["Src"]
      202 GETTABLEKS                       R31 R31 K55 ["Util"]
      204 GETTABLEKS                       R31 R31 K56 ["BrowserUtils"]
      206 CALL                             R30 1 1
      207 GETTABLEKS                       R30 R30 K58 ["OpenExperienceAccess"]
      209 GETTABLEKS                       R31 R24 K59 ["UI"]
      211 GETTABLEKS                       R32 R31 K60 ["BulletList"]
      213 GETTABLEKS                       R33 R31 K61 ["Separator"]
      215 GETTABLEKS                       R34 R31 K62 ["LinkText"]
      217 GETTABLEKS                       R35 R31 K63 ["Tooltip"]
      219 GETTABLEKS                       R36 R31 K64 ["HoverArea"]
      221 GETTABLEKS                       R37 R31 K65 ["SelectInput"]
      223 GETTABLEKS                       R38 R31 K66 ["TextInput"]
      225 GETTABLEKS                       R39 R31 K67 ["Image"]
      227 GETTABLEKS                       R40 R31 K68 ["TextLabel"]
      229 GETTABLEKS                       R41 R31 K69 ["TextWithInlineLink"]
      231 GETTABLEKS                       R42 R31 K70 ["TitledFrame"]
      233 GETTABLEKS                       R43 R31 K71 ["Pane"]
      235 GETTABLEKS                       R44 R31 K72 ["MultiImagePicker"]
      237 GETTABLEKS                       R45 R24 K55 ["Util"]
      239 GETTABLEKS                       R46 R45 K73 ["StyleModifier"]
      241 GETTABLEKS                       R47 R45 K74 ["LayoutOrderIterator"]
      243 GETTABLEKS                       R48 R45 K75 ["deepJoin"]
      245 GETIMPORT                        R49 K19 [require]
      247 GETTABLEKS                       R50 R0 K20 ["Src"]
      249 GETTABLEKS                       R50 R50 K53 ["Components"]
      251 GETTABLEKS                       R50 R50 K76 ["CheckBoxSet"]
      253 CALL                             R49 1 1
      254 GETIMPORT                        R50 K19 [require]
      256 GETTABLEKS                       R51 R0 K20 ["Src"]
      258 GETTABLEKS                       R51 R51 K53 ["Components"]
      260 GETTABLEKS                       R51 R51 K77 ["UploadableIcon"]
      262 GETTABLEKS                       R51 R51 K78 ["UploadableIconWidget"]
      264 CALL                             R50 1 1
      265 GETIMPORT                        R51 K19 [require]
      267 GETTABLEKS                       R52 R0 K20 ["Src"]
      269 GETTABLEKS                       R52 R52 K53 ["Components"]
      271 GETTABLEKS                       R52 R52 K79 ["SettingsPages"]
      273 GETTABLEKS                       R52 R52 K80 ["SettingsPage"]
      275 CALL                             R51 1 1
      276 GETIMPORT                        R52 K19 [require]
      278 GETTABLEKS                       R53 R0 K20 ["Src"]
      280 GETTABLEKS                       R53 R53 K53 ["Components"]
      282 GETTABLEKS                       R53 R53 K52 ["Dialog"]
      284 GETTABLEKS                       R53 R53 K81 ["SimpleDialog"]
      286 CALL                             R52 1 1
      287 GETIMPORT                        R53 K19 [require]
      289 GETTABLEKS                       R54 R0 K20 ["Src"]
      291 GETTABLEKS                       R54 R54 K53 ["Components"]
      293 GETTABLEKS                       R54 R54 K79 ["SettingsPages"]
      295 GETTABLEKS                       R54 R54 K82 ["InsufficientPermissionsPage"]
      297 CALL                             R53 1 1
      298 GETIMPORT                        R54 K19 [require]
      300 GETTABLEKS                       R55 R0 K20 ["Src"]
      302 GETTABLEKS                       R55 R55 K53 ["Components"]
      304 GETTABLEKS                       R55 R55 K83 ["ToggleButtonWithTitle"]
      306 CALL                             R54 1 1
      307 GETIMPORT                        R55 K19 [require]
      309 GETTABLEKS                       R56 R0 K20 ["Src"]
      311 GETTABLEKS                       R56 R56 K84 ["Actions"]
      313 GETTABLEKS                       R56 R56 K85 ["AddChange"]
      315 CALL                             R55 1 1
      316 GETIMPORT                        R56 K19 [require]
      318 GETTABLEKS                       R57 R0 K20 ["Src"]
      320 GETTABLEKS                       R57 R57 K84 ["Actions"]
      322 GETTABLEKS                       R57 R57 K86 ["AddErrors"]
      324 CALL                             R56 1 1
      325 GETIMPORT                        R57 K19 [require]
      327 GETTABLEKS                       R58 R0 K20 ["Src"]
      329 GETTABLEKS                       R58 R58 K84 ["Actions"]
      331 GETTABLEKS                       R58 R58 K87 ["DiscardError"]
      333 CALL                             R57 1 1
      334 GETIMPORT                        R58 K19 [require]
      336 GETTABLEKS                       R59 R0 K20 ["Src"]
      338 GETTABLEKS                       R59 R59 K84 ["Actions"]
      340 GETTABLEKS                       R59 R59 K88 ["SetCreatorId"]
      342 CALL                             R58 1 1
      343 GETIMPORT                        R59 K19 [require]
      345 GETTABLEKS                       R60 R0 K20 ["Src"]
      347 GETTABLEKS                       R60 R60 K84 ["Actions"]
      349 GETTABLEKS                       R60 R60 K89 ["SetCreatorType"]
      351 CALL                             R59 1 1
      352 GETIMPORT                        R60 K19 [require]
      354 GETTABLEKS                       R61 R0 K20 ["Src"]
      356 GETTABLEKS                       R61 R61 K55 ["Util"]
      358 GETTABLEKS                       R61 R61 K90 ["FileUtils"]
      360 CALL                             R60 1 1
      361 GETIMPORT                        R61 K19 [require]
      363 GETTABLEKS                       R62 R0 K20 ["Src"]
      365 GETTABLEKS                       R62 R62 K55 ["Util"]
      367 GETTABLEKS                       R62 R62 K91 ["DEPRECATED_Constants"]
      369 CALL                             R61 1 1
      370 GETIMPORT                        R62 K19 [require]
      372 GETTABLEKS                       R63 R0 K20 ["Src"]
      374 GETTABLEKS                       R63 R63 K55 ["Util"]
      376 GETTABLEKS                       R63 R63 K92 ["GameSettingsUtilities"]
      378 CALL                             R62 1 1
      379 GETTABLEKS                       R63 R62 K93 ["shouldShowDevPublishLocations"]
      381 GETTABLEKS                       R64 R62 K94 ["getPlayerAppDownloadLink"]
      383 GETTABLEKS                       R65 R62 K95 ["getOptInLocationsRequirementsLink"]
      385 GETTABLEKS                       R66 R62 K96 ["getSocialMediaReferencesAllowed"]
      387 GETTABLEKS                       R67 R62 K97 ["sendAnalyticsToKibana"]
      389 GETTABLEKS                       R68 R62 K98 ["calculateTextSize"]
      391 GETIMPORT                        R69 K19 [require]
      393 GETTABLEKS                       R70 R0 K20 ["Src"]
      395 GETTABLEKS                       R70 R70 K55 ["Util"]
      397 GETTABLEKS                       R70 R70 K99 ["KeyProvider"]
      399 CALL                             R69 1 1
      400 GETTABLEKS                       R70 R69 K100 ["getOptInLocationsKeyName"]
      402 CALL                             R70 0 1
      403 GETTABLEKS                       R71 R69 K101 ["getChinaKeyName"]
      405 CALL                             R71 0 1
      406 GETTABLEKS                       R72 R69 K102 ["getPlayerAcceptanceKeyName"]
      408 CALL                             R72 0 1
      409 GETTABLEKS                       R73 R69 K103 ["getApprovedKeyName"]
      411 CALL                             R73 0 1
      412 GETTABLEKS                       R74 R69 K104 ["getInReviewKeyName"]
      414 CALL                             R74 0 1
      415 GETTABLEKS                       R75 R69 K105 ["getRejectedKeyName"]
      417 CALL                             R75 0 1
      418 GETTABLEKS                       R76 R69 K106 ["getLuobuStudioDevPublishKeyName"]
      420 CALL                             R76 0 1
      421 GETTABLEKS                       R77 R69 K107 ["getCheckboxToggleKeyName"]
      423 CALL                             R77 0 1
      424 GETTABLEKS                       R78 R69 K108 ["getSelectedKeyName"]
      426 CALL                             R78 0 1
      427 GETTABLEKS                       R79 R69 K109 ["getTermsOfUseDialogKeyName"]
      429 CALL                             R79 0 1
      430 GETTABLEKS                       R80 R69 K110 ["getButtonClickedKeyName"]
      432 CALL                             R80 0 1
      433 GETTABLEKS                       R81 R69 K111 ["getTeamCreateEnabledKeyName"]
      435 CALL                             R81 0 1
      436 JUMPIFNOT                        R8 ; [+4]
      437 GETTABLEKS                       R82 R69 K112 ["getScriptCollaborationEnabledKeyName"]
      439 CALL                             R82 0 1
      440 JUMP                             ; [+1]
      441 LOADNIL                          R82
      442 GETTABLEKS                       R83 R69 K113 ["getScriptCollaborationEnabledOnServerKeyName"]
      444 MOVE                             R84 R83
      445 CALL                             R84 0 1
      446 DUPCLOSURE                       R85 K114 [PROTO_17]
      447 CAPTURE                          VAL R8
      448 CAPTURE                          VAL R3
      449 CAPTURE                          VAL R5
      450 CAPTURE                          VAL R58
      451 CAPTURE                          VAL R59
      452 CAPTURE                          VAL R63
      453 CAPTURE                          VAL R70
      454 CAPTURE                          VAL R72
      455 CAPTURE                          VAL R82
      456 CAPTURE                          VAL R84
      457 CAPTURE                          VAL R81
      458 DUPCLOSURE                       R86 K115 [PROTO_36]
      459 CAPTURE                          VAL R8
      460 CAPTURE                          VAL R56
      461 CAPTURE                          VAL R2
      462 CAPTURE                          VAL R23
      463 CAPTURE                          VAL R55
      464 CAPTURE                          VAL R63
      465 CAPTURE                          VAL R70
      466 DUPCLOSURE                       R87 K116 [PROTO_37]
      467 CAPTURE                          VAL R3
      468 CAPTURE                          VAL R63
      469 CAPTURE                          VAL R70
      470 CAPTURE                          VAL R72
      471 CAPTURE                          VAL R8
      472 CAPTURE                          VAL R82
      473 CAPTURE                          VAL R81
      474 DUPCLOSURE                       R88 K117 [PROTO_45]
      475 CAPTURE                          VAL R57
      476 CAPTURE                          VAL R55
      477 CAPTURE                          VAL R23
      478 CAPTURE                          VAL R61
      479 CAPTURE                          VAL R56
      480 CAPTURE                          VAL R10
      481 CAPTURE                          VAL R63
      482 CAPTURE                          VAL R70
      483 CAPTURE                          VAL R8
      484 CAPTURE                          VAL R82
      485 CAPTURE                          VAL R81
      486 GETTABLEKS                       R89 R21 K118 ["PureComponent"]
      488 GETIMPORT                        R91 K1 [script]
      490 GETTABLEKS                       R91 R91 K29 ["Name"]
      492 NAMECALL                         R89 R89 K119 ["extend"]
      494 CALL                             R89 2 1
      495 DUPCLOSURE                       R90 K120 [PROTO_46]
      496 CAPTURE                          VAL R11
      497 SETTABLEKS                       R90 R89 K121 ["hasPermissionToEdit"]
      499 DUPCLOSURE                       R90 K122 [PROTO_47]
      500 DUPCLOSURE                       R91 K123 [PROTO_55]
      501 CAPTURE                          VAL R60
      502 CAPTURE                          VAL R70
      503 CAPTURE                          VAL R73
      504 CAPTURE                          VAL R74
      505 CAPTURE                          VAL R75
      506 CAPTURE                          VAL R46
      507 CAPTURE                          VAL R21
      508 CAPTURE                          VAL R65
      509 CAPTURE                          VAL R71
      510 CAPTURE                          VAL R12
      511 CAPTURE                          VAL R68
      512 CAPTURE                          VAL R63
      513 CAPTURE                          VAL R47
      514 CAPTURE                          VAL R40
      515 CAPTURE                          VAL R34
      516 CAPTURE                          VAL R39
      517 SETTABLEKS                       R91 R89 K124 ["init"]
      519 NEWCLOSURE                       R91 P7
      520 CAPTURE                          VAL R47
      521 CAPTURE                          VAL R8
      522 CAPTURE                          VAL R21
      523 CAPTURE                          VAL R53
      524 CAPTURE                          VAL R63
      525 CAPTURE                          VAL R70
      526 CAPTURE                          VAL R5
      527 CAPTURE                          VAL R66
      528 CAPTURE                          VAL R32
      529 CAPTURE                          VAL R9
      530 CAPTURE                          VAL R61
      531 CAPTURE                          VAL R15
      532 CAPTURE                          VAL R16
      533 CAPTURE                          VAL R17
      534 CAPTURE                          VAL R19
      535 CAPTURE                          VAL R10
      536 CAPTURE                          VAL R18
      537 CAPTURE                          VAL R42
      538 CAPTURE                          VAL R38
      539 CAPTURE                          VAL R33
      540 CAPTURE                          VAL R54
      541 CAPTURE                          VAL R12
      542 CAPTURE                          VAL R7
      543 CAPTURE                          VAL R6
      544 CAPTURE                          VAL R3
      545 CAPTURE                          REF R28
      546 CAPTURE                          VAL R50
      547 CAPTURE                          VAL R44
      548 CAPTURE                          VAL R40
      549 CAPTURE                          VAL R68
      550 CAPTURE                          VAL R41
      551 CAPTURE                          VAL R29
      552 CAPTURE                          VAL R23
      553 CAPTURE                          VAL R4
      554 CAPTURE                          VAL R34
      555 CAPTURE                          VAL R30
      556 CAPTURE                          VAL R49
      557 CAPTURE                          VAL R64
      558 CAPTURE                          VAL R71
      559 CAPTURE                          VAL R52
      560 CAPTURE                          VAL R80
      561 CAPTURE                          VAL R67
      562 CAPTURE                          VAL R76
      563 CAPTURE                          VAL R1
      564 CAPTURE                          VAL R79
      565 CAPTURE                          VAL R48
      566 CAPTURE                          VAL R78
      567 CAPTURE                          VAL R77
      568 CAPTURE                          VAL R39
      569 CAPTURE                          VAL R35
      570 CAPTURE                          VAL R36
      571 CAPTURE                          VAL R51
      572 CAPTURE                          VAL R85
      573 CAPTURE                          VAL R86
      574 CAPTURE                          VAL R14
      575 SETTABLEKS                       R91 R89 K125 ["render"]
      577 DUPCLOSURE                       R91 K126 [PROTO_66]
      578 SETGLOBAL                        R91 K127 ["GetExperienceGenreString"]
      580 MOVE                             R91 R26
      581 DUPTABLE                         R92 K132 [{"Localization", "Stylizer", "Dialog", "Mouse", "Plugin"}]
      582 GETTABLEKS                       R93 R25 K128 ["Localization"]
      584 SETTABLEKS                       R93 R92 K128 ["Localization"]
      586 GETTABLEKS                       R93 R25 K129 ["Stylizer"]
      588 SETTABLEKS                       R93 R92 K129 ["Stylizer"]
      590 SETTABLEKS                       R27 R92 K52 ["Dialog"]
      592 GETTABLEKS                       R93 R25 K130 ["Mouse"]
      594 SETTABLEKS                       R93 R92 K130 ["Mouse"]
      596 JUMPIFNOT                        R8 ; [+3]
      597 GETTABLEKS                       R93 R25 K131 ["Plugin"]
      599 JUMP                             ; [+1]
      600 LOADNIL                          R93
      601 SETTABLEKS                       R93 R92 K131 ["Plugin"]
      603 CALL                             R91 1 1
      604 MOVE                             R92 R89
      605 CALL                             R91 1 1
      606 MOVE                             R89 R91
      607 GETIMPORT                        R91 K19 [require]
      609 GETTABLEKS                       R92 R0 K20 ["Src"]
      611 GETTABLEKS                       R92 R92 K133 ["Networking"]
      613 GETTABLEKS                       R92 R92 K134 ["settingFromState"]
      615 CALL                             R91 1 1
      616 GETTABLEKS                       R92 R22 K135 ["connect"]
      618 DUPCLOSURE                       R93 K136 [PROTO_68]
      619 CAPTURE                          VAL R91
      620 CAPTURE                          VAL R87
      621 DUPCLOSURE                       R94 K137 [PROTO_71]
      622 CAPTURE                          VAL R55
      623 CAPTURE                          VAL R88
      624 CALL                             R92 2 1
      625 MOVE                             R93 R89
      626 CALL                             R92 1 1
      627 MOVE                             R89 R92
      628 SETTABLEKS                       R14 R89 K138 ["LocalizationId"]
      630 CLOSEUPVALS                      R28
      631 RETURN                           R89 1
