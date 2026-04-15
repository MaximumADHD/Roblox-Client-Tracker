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
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R4 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R4 K2 ["gameId"]
        7 GETTABLEKS                       R4 R1 K3 ["gameInfoController"]
        9 GETTABLEKS                       R5 R1 K4 ["gameMetadataController"]
       11 GETTABLEKS                       R6 R1 K5 ["policyInfoController"]
       13 GETTABLEKS                       R7 R1 K6 ["placesController"]
       15 NEWTABLE                         R8 0 14
       17 NEWCLOSURE                       R9 P0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          VAL R3
       20 NEWCLOSURE                       R10 P1
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R3
       23 NEWCLOSURE                       R11 P2
       24 CAPTURE                          VAL R4
       25 CAPTURE                          VAL R3
       26 NEWCLOSURE                       R12 P3
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R3
       30 NEWCLOSURE                       R13 P4
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R3
       33 NEWCLOSURE                       R14 P5
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R3
       37 NEWCLOSURE                       R15 P6
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R3
       40 NEWCLOSURE                       R16 P7
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 NEWCLOSURE                       R17 P8
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R3
       46 NEWCLOSURE                       R18 P9
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R0
       50 CAPTURE                          UPVAL U2
       51 NEWCLOSURE                       R19 P10
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R0
       55 CAPTURE                          UPVAL U3
       56 NEWCLOSURE                       R20 P11
       57 CAPTURE                          UPVAL U4
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R3
       60 CAPTURE                          UPVAL U5
       61 NEWCLOSURE                       R21 P12
       62 CAPTURE                          UPVAL U4
       63 CAPTURE                          UPVAL U6
       64 CAPTURE                          VAL R6
       65 NEWCLOSURE                       R22 P13
       66 CAPTURE                          UPVAL U4
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R7
       70 SETLIST                          R8 R9 14 [1]
       72 RETURN                           R8 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["setName"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Settings"]
        3 GETTABLEKS                       R1 R2 K1 ["Changed"]
        5 GETTABLEKS                       R0 R1 K2 ["name"]
        7 JUMPIFEQKNIL                     R0 ; [+40]
        9 GETIMPORT                        R1 K4 [pcall]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 CALL                             R1 1 2
       16 JUMPIF                           R1 ; [+31]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K5 ["NameModerated"]
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

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["setDescription"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Settings"]
        3 GETTABLEKS                       R1 R2 K1 ["Changed"]
        5 GETTABLEKS                       R0 R1 K2 ["description"]
        7 JUMPIFEQKNIL                     R0 ; [+40]
        9 GETIMPORT                        R1 K4 [pcall]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 CALL                             R1 1 2
       16 JUMPIF                           R1 ; [+31]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K5 ["DescriptionModerated"]
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

PROTO_19:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Settings"]
        3 GETTABLEKS                       R1 R2 K1 ["Changed"]
        5 GETTABLEKS                       R0 R1 K2 ["genre"]
        7 JUMPIFEQKNIL                     R0 ; [+7]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 NAMECALL                         R1 R1 K3 ["setGenre"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Settings"]
        3 GETTABLEKS                       R1 R2 K1 ["Changed"]
        5 GETTABLEKS                       R0 R1 K2 ["playableDevices"]
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

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["removeThumbnails"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_22:
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

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["addThumbnails"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_24:
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
       16 GETUPVAL                         R10 3
       17 GETTABLEKS                       R9 R10 K5 ["List"]
       19 GETTABLEKS                       R8 R9 K6 ["find"]
       21 GETUPVAL                         R9 4
       22 MOVE                             R10 R7
       23 CALL                             R8 2 1
       24 GETUPVAL                         R11 3
       25 GETTABLEKS                       R10 R11 K7 ["Dictionary"]
       27 GETTABLEKS                       R9 R10 K8 ["join"]
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

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["updateThumbnailAltText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_26:
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
       27 GETUPVAL                         R7 5
       28 GETTABLEKS                       R6 R7 K8 ["Settings"]
       30 GETTABLEKS                       R5 R6 K9 ["Changed"]
       32 GETTABLEKS                       R4 R5 K10 ["thumbnails"]
       34 CALL                             R3 1 1
       35 SETUPVAL                         R3 4
       36 GETUPVAL                         R4 4
       37 GETUPVAL                         R5 0
       38 GETTABLE                         R3 R4 R5
       39 GETTABLEKS                       R4 R2 K1 ["MediaAssetAltText"]
       41 SETTABLEKS                       R4 R3 K11 ["altText"]
       43 JUMP                             ; [+23]
       44 GETUPVAL                         R4 2
       45 GETTABLEKS                       R3 R4 K12 ["AltTextModerated"]
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

PROTO_27:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Settings"]
        3 GETTABLEKS                       R2 R3 K1 ["Current"]
        5 GETTABLEKS                       R1 R2 K2 ["thumbnails"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["Settings"]
       10 GETTABLEKS                       R3 R4 K3 ["Changed"]
       12 GETTABLEKS                       R2 R3 K2 ["thumbnails"]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K0 ["Settings"]
       17 GETTABLEKS                       R4 R5 K1 ["Current"]
       19 GETTABLEKS                       R3 R4 K4 ["thumbnailOrder"]
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R6 R7 K0 ["Settings"]
       24 GETTABLEKS                       R5 R6 K3 ["Changed"]
       26 GETTABLEKS                       R4 R5 K4 ["thumbnailOrder"]
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
       86 GETTABLE                         R15 R1 R12
       87 GETTABLEKS                       R14 R15 K13 ["altText"]
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
      190 GETUPVAL                         R13 3
      191 GETTABLEKS                       R12 R13 K22 ["Dictionary"]
      193 GETTABLEKS                       R11 R12 K23 ["join"]
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

PROTO_28:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Settings"]
        3 GETTABLEKS                       R1 R2 K1 ["Changed"]
        5 GETTABLEKS                       R0 R1 K2 ["gameIcon"]
        7 JUMPIFEQKNIL                     R0 ; [+7]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 NAMECALL                         R1 R1 K3 ["setIcon"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+45]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["Settings"]
        6 GETTABLEKS                       R1 R2 K1 ["Changed"]
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

PROTO_30:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R4 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R4 K2 ["gameId"]
        7 GETTABLEKS                       R4 R1 K3 ["gameInfoController"]
        9 GETTABLEKS                       R5 R1 K4 ["localization"]
       11 NEWTABLE                         R6 0 7
       13 NEWCLOSURE                       R7 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R4
       16 CAPTURE                          VAL R3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R5
       21 NEWCLOSURE                       R8 P1
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R4
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          VAL R5
       29 NEWCLOSURE                       R9 P2
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R3
       33 NEWCLOSURE                       R10 P3
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R3
       37 NEWCLOSURE                       R11 P4
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R3
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          UPVAL U3
       45 NEWCLOSURE                       R12 P5
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R3
       49 NEWCLOSURE                       R13 P6
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          VAL R2
       52 CAPTURE                          UPVAL U5
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R3
       55 SETLIST                          R6 R7 7 [1]
       57 RETURN                           R6 1

PROTO_31:
        0 GETTABLEKS                       R3 R1 K0 ["Settings"]
        2 GETTABLEKS                       R2 R3 K1 ["Errors"]
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
      117 GETTABLEKS                       R6 R1 K0 ["Settings"]
      119 GETTABLEKS                       R5 R6 K37 ["Current"]
      121 GETTABLEKS                       R4 R5 K38 ["isActive"]
      123 SETTABLEKS                       R4 R3 K21 ["IsCurrentlyActive"]
      125 GETTABLEKS                       R5 R1 K39 ["GameOwnerMetadata"]
      127 GETTABLEKS                       R4 R5 K40 ["creatorId"]
      129 SETTABLEKS                       R4 R3 K22 ["OwnerId"]
      131 GETTABLEKS                       R5 R1 K39 ["GameOwnerMetadata"]
      133 GETTABLEKS                       R4 R5 K41 ["creatorType"]
      135 SETTABLEKS                       R4 R3 K23 ["OwnerType"]
      137 RETURN                           R3 1

PROTO_32:
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
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R3 R4 K2 ["Dictionary"]
       14 GETTABLEKS                       R2 R3 K3 ["keys"]
       16 MOVE                             R3 R0
       17 CALL                             R2 1 1
       18 LENGTH                           R1 R2
       19 GETUPVAL                         R3 4
       20 GETTABLEKS                       R2 R3 K4 ["MAX_THUMBNAILS"]
       22 JUMPIFNOTLT                      R2 R1 ; [+9]
       24 GETUPVAL                         R1 0
       25 GETUPVAL                         R2 5
       26 DUPTABLE                         R3 K5 [{"thumbnails"}]
       27 LOADK                            R4 K6 ["TooMany"]
       28 SETTABLEKS                       R4 R3 K1 ["thumbnails"]
       30 CALL                             R2 1 -1
       31 CALL                             R1 -1 0
       32 RETURN                           R0 0

PROTO_33:
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

PROTO_34:
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

PROTO_35:
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

PROTO_36:
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

PROTO_37:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["Dictionary"]
        3 GETTABLEKS                       R3 R4 K1 ["join"]
        5 MOVE                             R4 R1
        6 NEWTABLE                         R5 0 0
        8 CALL                             R3 2 1
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K2 ["List"]
       12 GETTABLEKS                       R4 R5 K1 ["join"]
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
       54 GETUPVAL                         R7 3
       55 GETTABLEKS                       R6 R7 K14 ["MAX_THUMBNAILS"]
       57 JUMPIFNOTLT                      R6 R5 ; [+9]
       59 GETUPVAL                         R5 1
       60 GETUPVAL                         R6 4
       61 DUPTABLE                         R7 K15 [{"thumbnails"}]
       62 LOADK                            R8 K16 ["TooMany"]
       63 SETTABLEKS                       R8 R7 K12 ["thumbnails"]
       65 CALL                             R6 1 -1
       66 CALL                             R5 -1 0
       67 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["thumbnailOrder"]
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 LENGTH                           R1 R0
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R2 R3 K1 ["MAX_THUMBNAILS"]
       10 JUMPIFNOTLT                      R2 R1 ; [+9]
       12 GETUPVAL                         R1 0
       13 GETUPVAL                         R2 3
       14 DUPTABLE                         R3 K3 [{"thumbnails"}]
       15 LOADK                            R4 K4 ["TooMany"]
       16 SETTABLEKS                       R4 R3 K2 ["thumbnails"]
       18 CALL                             R2 1 -1
       19 CALL                             R1 -1 0
       20 RETURN                           R0 0

PROTO_39:
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
       62 RETURN                           R2 1

PROTO_40:
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

PROTO_41:
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

PROTO_42:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["PromptForGameIcon"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R3 R0 K2 ["Localization"]
        9 CALL                             R1 2 1
       10 JUMPIFNOT                        R1 ; [+7]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K0 ["props"]
       14 GETTABLEKS                       R2 R3 K3 ["GameIconChanged"]
       16 MOVE                             R3 R1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["PromptForThumbnails"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R3 R0 K2 ["Localization"]
        9 GETTABLEKS                       R5 R0 K3 ["Dialog"]
       11 GETTABLEKS                       R4 R5 K4 ["showDialog"]
       13 CALL                             R1 3 1
       14 JUMPIFNOT                        R1 ; [+11]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K0 ["props"]
       18 GETTABLEKS                       R2 R3 K5 ["AddThumbnails"]
       20 MOVE                             R3 R1
       21 GETTABLEKS                       R4 R0 K6 ["Thumbnails"]
       23 GETTABLEKS                       R5 R0 K7 ["ThumbnailOrder"]
       25 CALL                             R2 3 0
       26 RETURN                           R0 0

PROTO_44:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R4 K1 ["Stylizer"]
        4 GETTABLEKS                       R5 R0 K0 ["props"]
        6 GETTABLEKS                       R4 R5 K2 ["Localization"]
        8 GETUPVAL                         R7 0
        9 LOADK                            R8 K3 ["Status"]
       10 NAMECALL                         R5 R4 K4 ["getText"]
       12 CALL                             R5 3 1
       13 GETTABLEKS                       R8 R3 K5 ["fontStyle"]
       15 GETTABLEKS                       R7 R8 K6 ["Subtitle"]
       17 GETTABLEKS                       R6 R7 K7 ["TextColor3"]
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
       48 GETTABLEKS                       R9 R3 K5 ["fontStyle"]
       50 GETTABLEKS                       R8 R9 K8 ["Error"]
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

PROTO_45:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["state"]
        3 GETTABLEKS                       R0 R1 K1 ["StyleModifier"]
        5 JUMPIFNOTEQKNIL                  R0 ; [+11]
        7 GETUPVAL                         R0 0
        8 DUPTABLE                         R2 K2 [{"StyleModifier"}]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K3 ["Hover"]
       12 SETTABLEKS                       R3 R2 K1 ["StyleModifier"]
       14 NAMECALL                         R0 R0 K4 ["setState"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["state"]
        3 GETTABLEKS                       R0 R1 K1 ["StyleModifier"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["Hover"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+11]
       10 GETUPVAL                         R0 0
       11 DUPTABLE                         R2 K3 [{"StyleModifier"}]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K4 ["None"]
       15 SETTABLEKS                       R3 R2 K1 ["StyleModifier"]
       17 NAMECALL                         R0 R0 K5 ["setState"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["PublishedVersions"]
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

PROTO_48:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R0 K0 ["props"]
        4 GETTABLEKS                       R3 R4 K1 ["Localization"]
        6 GETTABLEKS                       R5 R0 K0 ["props"]
        8 GETTABLEKS                       R4 R5 K2 ["Stylizer"]
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
       56 GETUPVAL                         R19 3
       57 GETTABLEKS                       R18 R19 K15 ["new"]
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
       76 GETUPVAL                         R23 4
       77 GETTABLEKS                       R22 R23 K23 ["createElement"]
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
       94 GETTABLEKS                       R30 R4 K33 ["requirementsLink"]
       96 GETTABLEKS                       R29 R30 K34 ["paddingY"]
       98 CALL                             R25 4 1
       99 SETTABLEKS                       R25 R24 K27 ["Position"]
      101 GETIMPORT                        R25 K32 [UDim2.new]
      103 LOADN                            R26 1
      104 GETTABLEKS                       R28 R4 K35 ["extraOptInInfo"]
      106 GETTABLEKS                       R27 R28 K36 ["length"]
      108 LOADN                            R28 0
      109 GETTABLEKS                       R30 R4 K35 ["extraOptInInfo"]
      111 GETTABLEKS                       R29 R30 K37 ["height"]
      113 CALL                             R25 4 1
      114 SETTABLEKS                       R25 R24 K28 ["Size"]
      116 DUPTABLE                         R25 K41 [{"UILayout", "StatusRequirements", "Warning"}]
      117 GETUPVAL                         R27 4
      118 GETTABLEKS                       R26 R27 K23 ["createElement"]
      120 LOADK                            R27 K42 ["UIListLayout"]
      121 DUPTABLE                         R28 K47 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
      122 GETIMPORT                        R29 K50 [Enum.FillDirection.Vertical]
      124 SETTABLEKS                       R29 R28 K43 ["FillDirection"]
      126 GETIMPORT                        R29 K52 [UDim.new]
      128 LOADN                            R30 0
      129 GETTABLEKS                       R32 R4 K35 ["extraOptInInfo"]
      131 GETTABLEKS                       R31 R32 K53 ["padding"]
      133 CALL                             R29 2 1
      134 SETTABLEKS                       R29 R28 K44 ["Padding"]
      136 GETIMPORT                        R29 K54 [Enum.SortOrder.LayoutOrder]
      138 SETTABLEKS                       R29 R28 K45 ["SortOrder"]
      140 GETIMPORT                        R29 K56 [Enum.VerticalAlignment.Top]
      142 SETTABLEKS                       R29 R28 K46 ["VerticalAlignment"]
      144 CALL                             R26 2 1
      145 SETTABLEKS                       R26 R25 K38 ["UILayout"]
      147 GETUPVAL                         R27 4
      148 GETTABLEKS                       R26 R27 K23 ["createElement"]
      150 LOADK                            R27 K24 ["Frame"]
      151 DUPTABLE                         R28 K58 [{"BorderSizePixel", "LayoutOrder"}]
      152 LOADN                            R29 0
      153 SETTABLEKS                       R29 R28 K57 ["BorderSizePixel"]
      155 NAMECALL                         R29 R1 K30 ["getNextOrder"]
      157 CALL                             R29 1 1
      158 SETTABLEKS                       R29 R28 K26 ["LayoutOrder"]
      160 DUPTABLE                         R29 K61 [{"UILayout", "ModerationStatus", "RequirementsFrame"}]
      161 GETUPVAL                         R31 4
      162 GETTABLEKS                       R30 R31 K23 ["createElement"]
      164 LOADK                            R31 K42 ["UIListLayout"]
      165 DUPTABLE                         R32 K47 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
      166 GETIMPORT                        R33 K63 [Enum.FillDirection.Horizontal]
      168 SETTABLEKS                       R33 R32 K43 ["FillDirection"]
      170 GETIMPORT                        R33 K52 [UDim.new]
      172 LOADN                            R34 0
      173 GETTABLEKS                       R36 R4 K33 ["requirementsLink"]
      175 GETTABLEKS                       R35 R36 K64 ["paddingX"]
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
      194 GETUPVAL                         R31 4
      195 GETTABLEKS                       R30 R31 K23 ["createElement"]
      197 LOADK                            R31 K66 ["TextLabel"]
      198 DUPTABLE                         R32 K72 [{"BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize", "TextXAlignment"}]
      199 LOADN                            R33 1
      200 SETTABLEKS                       R33 R32 K25 ["BackgroundTransparency"]
      202 GETTABLEKS                       R35 R4 K73 ["fontStyle"]
      204 GETTABLEKS                       R34 R35 K74 ["Subtext"]
      206 GETTABLEKS                       R33 R34 K67 ["Font"]
      208 SETTABLEKS                       R33 R32 K67 ["Font"]
      210 LOADN                            R33 255
      211 SETTABLEKS                       R33 R32 K26 ["LayoutOrder"]
      213 GETIMPORT                        R33 K32 [UDim2.new]
      215 LOADN                            R34 0
      216 GETUPVAL                         R36 1
      217 GETTABLEKS                       R37 R17 K75 ["statusText"]
      219 GETTABLEKS                       R40 R4 K73 ["fontStyle"]
      221 GETTABLEKS                       R39 R40 K74 ["Subtext"]
      223 GETTABLEKS                       R38 R39 K70 ["TextSize"]
      225 GETTABLEKS                       R41 R4 K73 ["fontStyle"]
      227 GETTABLEKS                       R40 R41 K74 ["Subtext"]
      229 GETTABLEKS                       R39 R40 K67 ["Font"]
      231 CALL                             R36 3 1
      232 GETTABLEKS                       R35 R36 K76 ["X"]
      234 LOADN                            R36 0
      235 GETTABLEKS                       R39 R4 K73 ["fontStyle"]
      237 GETTABLEKS                       R38 R39 K74 ["Subtext"]
      239 GETTABLEKS                       R37 R38 K70 ["TextSize"]
      241 CALL                             R33 4 1
      242 SETTABLEKS                       R33 R32 K28 ["Size"]
      244 GETTABLEKS                       R33 R17 K75 ["statusText"]
      246 SETTABLEKS                       R33 R32 K68 ["Text"]
      248 GETTABLEKS                       R33 R17 K77 ["textColor"]
      250 SETTABLEKS                       R33 R32 K69 ["TextColor3"]
      252 GETTABLEKS                       R35 R4 K73 ["fontStyle"]
      254 GETTABLEKS                       R34 R35 K74 ["Subtext"]
      256 GETTABLEKS                       R33 R34 K70 ["TextSize"]
      258 SETTABLEKS                       R33 R32 K70 ["TextSize"]
      260 GETIMPORT                        R33 K79 [Enum.TextXAlignment.Left]
      262 SETTABLEKS                       R33 R32 K71 ["TextXAlignment"]
      264 CALL                             R30 2 1
      265 JUMPIF                           R30 ; [+1]
      266 LOADNIL                          R30
      267 SETTABLEKS                       R30 R29 K59 ["ModerationStatus"]
      269 GETUPVAL                         R31 4
      270 GETTABLEKS                       R30 R31 K23 ["createElement"]
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
      288 GETTABLEKS                       R36 R4 K33 ["requirementsLink"]
      290 GETTABLEKS                       R35 R36 K36 ["length"]
      292 LOADN                            R36 0
      293 GETTABLEKS                       R38 R4 K33 ["requirementsLink"]
      295 GETTABLEKS                       R37 R38 K37 ["height"]
      297 CALL                             R33 4 1
      298 SETTABLEKS                       R33 R32 K28 ["Size"]
      300 DUPTABLE                         R33 K82 [{"LinkTextLabel", "RequirementsLinkText"}]
      301 GETUPVAL                         R35 4
      302 GETTABLEKS                       R34 R35 K23 ["createElement"]
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
      354 GETUPVAL                         R35 4
      355 GETTABLEKS                       R34 R35 K23 ["createElement"]
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
      394 GETUPVAL                         R27 4
      395 GETTABLEKS                       R26 R27 K23 ["createElement"]
      397 LOADK                            R27 K24 ["Frame"]
      398 DUPTABLE                         R28 K58 [{"BorderSizePixel", "LayoutOrder"}]
      399 LOADN                            R29 0
      400 SETTABLEKS                       R29 R28 K57 ["BorderSizePixel"]
      402 NAMECALL                         R29 R1 K30 ["getNextOrder"]
      404 CALL                             R29 1 1
      405 SETTABLEKS                       R29 R28 K26 ["LayoutOrder"]
      407 DUPTABLE                         R29 K96 [{"UILayout", "Image", "Text"}]
      408 GETUPVAL                         R31 4
      409 GETTABLEKS                       R30 R31 K23 ["createElement"]
      411 LOADK                            R31 K42 ["UIListLayout"]
      412 DUPTABLE                         R32 K47 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
      413 GETIMPORT                        R33 K63 [Enum.FillDirection.Horizontal]
      415 SETTABLEKS                       R33 R32 K43 ["FillDirection"]
      417 GETIMPORT                        R33 K52 [UDim.new]
      419 LOADN                            R34 0
      420 GETTABLEKS                       R36 R4 K97 ["optInWarning"]
      422 GETTABLEKS                       R35 R36 K53 ["padding"]
      424 CALL                             R33 2 1
      425 SETTABLEKS                       R33 R32 K44 ["Padding"]
      427 GETIMPORT                        R33 K54 [Enum.SortOrder.LayoutOrder]
      429 SETTABLEKS                       R33 R32 K45 ["SortOrder"]
      431 GETIMPORT                        R33 K56 [Enum.VerticalAlignment.Top]
      433 SETTABLEKS                       R33 R32 K46 ["VerticalAlignment"]
      435 CALL                             R30 2 1
      436 SETTABLEKS                       R30 R29 K38 ["UILayout"]
      438 GETUPVAL                         R31 4
      439 GETTABLEKS                       R30 R31 K23 ["createElement"]
      441 GETUPVAL                         R31 7
      442 DUPTABLE                         R32 K98 [{"LayoutOrder", "Size", "Style"}]
      443 NAMECALL                         R33 R18 K30 ["getNextOrder"]
      445 CALL                             R33 1 1
      446 SETTABLEKS                       R33 R32 K26 ["LayoutOrder"]
      448 GETIMPORT                        R33 K100 [UDim2.fromOffset]
      450 GETTABLEKS                       R35 R4 K97 ["optInWarning"]
      452 GETTABLEKS                       R34 R35 K101 ["size"]
      454 GETTABLEKS                       R36 R4 K97 ["optInWarning"]
      456 GETTABLEKS                       R35 R36 K101 ["size"]
      458 CALL                             R33 2 1
      459 SETTABLEKS                       R33 R32 K28 ["Size"]
      461 LOADK                            R33 K102 ["WarningStyle"]
      462 SETTABLEKS                       R33 R32 K83 ["Style"]
      464 CALL                             R30 2 1
      465 SETTABLEKS                       R30 R29 K95 ["Image"]
      467 GETUPVAL                         R31 4
      468 GETTABLEKS                       R30 R31 K23 ["createElement"]
      470 LOADK                            R31 K66 ["TextLabel"]
      471 DUPTABLE                         R32 K103 [{"BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextTransparency", "TextSize", "TextXAlignment"}]
      472 LOADN                            R33 1
      473 SETTABLEKS                       R33 R32 K25 ["BackgroundTransparency"]
      475 GETTABLEKS                       R35 R4 K73 ["fontStyle"]
      477 GETTABLEKS                       R34 R35 K104 ["Smaller"]
      479 GETTABLEKS                       R33 R34 K67 ["Font"]
      481 SETTABLEKS                       R33 R32 K67 ["Font"]
      483 NAMECALL                         R33 R18 K30 ["getNextOrder"]
      485 CALL                             R33 1 1
      486 SETTABLEKS                       R33 R32 K26 ["LayoutOrder"]
      488 GETIMPORT                        R33 K32 [UDim2.new]
      490 LOADN                            R34 0
      491 GETUPVAL                         R36 1
      492 GETUPVAL                         R39 0
      493 LOADK                            R40 K105 ["SavedGameWarning"]
      494 NAMECALL                         R37 R3 K8 ["getText"]
      496 CALL                             R37 3 1
      497 GETTABLEKS                       R40 R4 K73 ["fontStyle"]
      499 GETTABLEKS                       R39 R40 K104 ["Smaller"]
      501 GETTABLEKS                       R38 R39 K70 ["TextSize"]
      503 GETTABLEKS                       R41 R4 K73 ["fontStyle"]
      505 GETTABLEKS                       R40 R41 K104 ["Smaller"]
      507 GETTABLEKS                       R39 R40 K67 ["Font"]
      509 CALL                             R36 3 1
      510 GETTABLEKS                       R35 R36 K76 ["X"]
      512 LOADN                            R36 0
      513 GETTABLEKS                       R39 R4 K73 ["fontStyle"]
      515 GETTABLEKS                       R38 R39 K104 ["Smaller"]
      517 GETTABLEKS                       R37 R38 K70 ["TextSize"]
      519 CALL                             R33 4 1
      520 SETTABLEKS                       R33 R32 K28 ["Size"]
      522 GETUPVAL                         R35 0
      523 LOADK                            R36 K105 ["SavedGameWarning"]
      524 NAMECALL                         R33 R3 K8 ["getText"]
      526 CALL                             R33 3 1
      527 SETTABLEKS                       R33 R32 K68 ["Text"]
      529 GETTABLEKS                       R35 R4 K73 ["fontStyle"]
      531 GETTABLEKS                       R34 R35 K106 ["Header"]
      533 GETTABLEKS                       R33 R34 K69 ["TextColor3"]
      535 SETTABLEKS                       R33 R32 K69 ["TextColor3"]
      537 GETTABLEKS                       R34 R4 K97 ["optInWarning"]
      539 GETTABLEKS                       R33 R34 K107 ["transparency"]
      541 SETTABLEKS                       R33 R32 K84 ["TextTransparency"]
      543 GETTABLEKS                       R35 R4 K73 ["fontStyle"]
      545 GETTABLEKS                       R34 R35 K104 ["Smaller"]
      547 GETTABLEKS                       R33 R34 K70 ["TextSize"]
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

PROTO_49:
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
       14 DUPCLOSURE                       R1 K3 [PROTO_44]
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
       39 DUPCLOSURE                       R1 K8 [PROTO_48]
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

PROTO_50:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["GameId"]
        4 CALL                             R0 1 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R2 K1 ["join"]
        5 GETUPVAL                         R2 1
        6 NEWTABLE                         R3 1 0
        8 GETTABLEKS                       R4 R0 K2 ["Id"]
       10 GETTABLEKS                       R6 R0 K3 ["Selected"]
       12 JUMPIFNOT                        R6 ; [+4]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K4 ["None"]
       16 JUMPIF                           R5 ; [+3]
       17 GETTABLEKS                       R6 R0 K3 ["Selected"]
       19 NOT                              R5 R6
       20 SETTABLE                         R5 R3 R4
       21 CALL                             R1 2 1
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R2 R3 K5 ["DevicesChanged"]
       25 MOVE                             R3 R1
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 2
        4 MOVE                             R3 R0
        5 NAMECALL                         R1 R1 K0 ["OpenBrowserWindow"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_54:
        0 DUPTABLE                         R1 K5 [{"Size", "Title", "Header", "Buttons", "Body"}]
        1 GETIMPORT                        R2 K8 [Vector2.new]
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R5 R6 K9 ["dialog"]
        6 GETTABLEKS                       R4 R5 K10 ["size"]
        8 GETTABLEKS                       R3 R4 K11 ["width"]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K9 ["dialog"]
       13 GETTABLEKS                       R5 R6 K10 ["size"]
       15 GETTABLEKS                       R4 R5 K12 ["height"]
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
       43 GETUPVAL                         R3 2
       44 GETTABLEKS                       R2 R3 K18 ["createElement"]
       46 GETUPVAL                         R3 3
       47 DUPTABLE                         R4 K25 [{"OnLinkClicked", "Text", "LinkText", "LinkPlaceholder", "MaxWidth", "TextProps"}]
       48 DUPCLOSURE                       R5 K26 [PROTO_53]
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
       73 GETUPVAL                         R7 0
       74 GETTABLEKS                       R6 R7 K30 ["textWithInlineLink"]
       76 GETTABLEKS                       R5 R6 K31 ["maxWidth"]
       78 SETTABLEKS                       R5 R4 K23 ["MaxWidth"]
       80 GETUPVAL                         R7 7
       81 GETTABLEKS                       R6 R7 K32 ["Dictionary"]
       83 GETTABLEKS                       R5 R6 K33 ["join"]
       85 GETUPVAL                         R8 0
       86 GETTABLEKS                       R7 R8 K34 ["fontStyle"]
       88 GETTABLEKS                       R6 R7 K35 ["Normal"]
       90 DUPTABLE                         R7 K37 [{"BackgroundTransparency"}]
       91 LOADN                            R8 1
       92 SETTABLEKS                       R8 R7 K36 ["BackgroundTransparency"]
       94 CALL                             R5 2 1
       95 SETTABLEKS                       R5 R4 K24 ["TextProps"]
       97 CALL                             R2 2 1
       98 SETTABLEKS                       R2 R1 K4 ["Body"]
      100 GETUPVAL                         R2 8
      101 JUMPIF                           R2 ; [+21]
      102 GETUPVAL                         R3 9
      103 GETTABLEKS                       R2 R3 K38 ["showDialog"]
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
      154 GETUPVAL                         R5 21
      155 GETTABLEKS                       R4 R5 K44 ["OptInLocationsChanged"]
      157 MOVE                             R5 R2
      158 CALL                             R4 1 0
      159 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["hasPermissionToEdit"]
        3 CALL                             R0 1 1
        4 JUMPIF                           R0 ; [+9]
        5 DUPTABLE                         R0 K2 [{"InsufficientPermission"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K3 ["createElement"]
        9 GETUPVAL                         R2 2
       10 CALL                             R1 1 1
       11 SETTABLEKS                       R1 R0 K1 ["InsufficientPermission"]
       13 RETURN                           R0 1
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R0 R1 K4 ["props"]
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
      280 GETUPVAL                         R10 1
      281 GETTABLEKS                       R9 R10 K3 ["createElement"]
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
      299 GETUPVAL                         R19 10
      300 GETTABLEKS                       R18 R19 K64 ["MAX_THUMBNAILS"]
      302 SETTABLEKS                       R18 R17 K62 ["maxThumbnails"]
      304 NAMECALL                         R13 R13 K16 ["getText"]
      306 CALL                             R13 4 1
      307 JUMP                             ; [+41]
      308 GETUPVAL                         R13 5
      309 LOADK                            R15 K14 ["General"]
      310 LOADK                            R16 K65 ["ThumbnailsLimit"]
      311 DUPTABLE                         R17 K63 [{"maxThumbnails"}]
      312 GETUPVAL                         R19 10
      313 GETTABLEKS                       R18 R19 K64 ["MAX_THUMBNAILS"]
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
      328 GETUPVAL                         R19 10
      329 GETTABLEKS                       R18 R19 K64 ["MAX_THUMBNAILS"]
      331 SETTABLEKS                       R18 R17 K62 ["maxThumbnails"]
      333 NAMECALL                         R13 R13 K16 ["getText"]
      335 CALL                             R13 4 1
      336 JUMP                             ; [+12]
      337 GETUPVAL                         R13 5
      338 LOADK                            R15 K14 ["General"]
      339 LOADK                            R16 K67 ["ThumbnailsLimitLuobu"]
      340 DUPTABLE                         R17 K63 [{"maxThumbnails"}]
      341 GETUPVAL                         R19 10
      342 GETTABLEKS                       R18 R19 K64 ["MAX_THUMBNAILS"]
      344 SETTABLEKS                       R18 R17 K62 ["maxThumbnails"]
      346 NAMECALL                         R13 R13 K16 ["getText"]
      348 CALL                             R13 4 1
      349 GETUPVAL                         R14 5
      350 LOADK                            R16 K14 ["General"]
      351 LOADK                            R17 K68 ["ThumbnailsHint"]
      352 DUPTABLE                         R18 K70 [{"fileTypes"}]
      353 GETIMPORT                        R19 K73 [table.concat]
      355 GETUPVAL                         R21 10
      356 GETTABLEKS                       R20 R21 K74 ["IMAGE_TYPES"]
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
      456 GETTABLEKS                       R16 R0 K81 ["AltTextError"]
      458 GETTABLEKS                       R15 R16 K82 ["Error"]
      460 JUMPIFNOT                        R15 ; [+19]
      461 GETUPVAL                         R16 14
      462 GETTABLEKS                       R18 R0 K81 ["AltTextError"]
      464 GETTABLEKS                       R17 R18 K82 ["Error"]
      466 GETTABLE                         R15 R16 R17
      467 JUMPIFNOT                        R15 ; [+12]
      468 GETUPVAL                         R15 5
      469 LOADK                            R17 K14 ["General"]
      470 GETUPVAL                         R19 14
      471 GETTABLEKS                       R21 R0 K81 ["AltTextError"]
      473 GETTABLEKS                       R20 R21 K82 ["Error"]
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
      502 DUPTABLE                         R16 K99 [{"Name", "Description", "Separator", "Guidelines", "Separator2", "Icon", "Separator3", "Thumbnails", "Separator4", "Genre", "Separator5", "CreatorRestriction", "Separator6", "Devices", "Separator7", "OptInLocations"}]
      503 GETUPVAL                         R18 1
      504 GETTABLEKS                       R17 R18 K3 ["createElement"]
      506 GETUPVAL                         R18 17
      507 DUPTABLE                         R19 K102 [{"LayoutOrder", "Title"}]
      508 GETUPVAL                         R20 18
      509 NAMECALL                         R20 R20 K103 ["getNextOrder"]
      511 CALL                             R20 1 1
      512 SETTABLEKS                       R20 R19 K100 ["LayoutOrder"]
      514 GETUPVAL                         R20 5
      515 LOADK                            R22 K14 ["General"]
      516 LOADK                            R23 K104 ["TitleName"]
      517 NAMECALL                         R20 R20 K16 ["getText"]
      519 CALL                             R20 3 1
      520 SETTABLEKS                       R20 R19 K101 ["Title"]
      522 DUPTABLE                         R20 K106 [{"TextBox"}]
      523 GETUPVAL                         R22 1
      524 GETTABLEKS                       R21 R22 K3 ["createElement"]
      526 GETUPVAL                         R22 19
      527 DUPTABLE                         R23 K112 [{"Disabled", "ErrorText", "MaxLength", "OnTextChanged", "Text"}]
      528 GETTABLEKS                       R25 R0 K84 ["Name"]
      530 JUMPIFEQKNIL                     R25 ; [+2]
      532 LOADB                            R24 0 +1
      533 LOADB                            R24 1
      534 SETTABLEKS                       R24 R23 K107 ["Disabled"]
      536 SETTABLEKS                       R10 R23 K108 ["ErrorText"]
      538 LOADN                            R24 50
      539 SETTABLEKS                       R24 R23 K109 ["MaxLength"]
      541 GETTABLEKS                       R24 R0 K113 ["NameChanged"]
      543 SETTABLEKS                       R24 R23 K110 ["OnTextChanged"]
      545 GETTABLEKS                       R25 R0 K84 ["Name"]
      547 ORK                              R24 R25 K114 [""]
      548 SETTABLEKS                       R24 R23 K111 ["Text"]
      550 CALL                             R21 2 1
      551 SETTABLEKS                       R21 R20 K105 ["TextBox"]
      553 CALL                             R17 3 1
      554 SETTABLEKS                       R17 R16 K84 ["Name"]
      556 GETUPVAL                         R18 1
      557 GETTABLEKS                       R17 R18 K3 ["createElement"]
      559 GETUPVAL                         R18 17
      560 DUPTABLE                         R19 K102 [{"LayoutOrder", "Title"}]
      561 GETUPVAL                         R20 18
      562 NAMECALL                         R20 R20 K103 ["getNextOrder"]
      564 CALL                             R20 1 1
      565 SETTABLEKS                       R20 R19 K100 ["LayoutOrder"]
      567 GETUPVAL                         R20 5
      568 LOADK                            R22 K14 ["General"]
      569 LOADK                            R23 K115 ["TitleDescription"]
      570 NAMECALL                         R20 R20 K16 ["getText"]
      572 CALL                             R20 3 1
      573 SETTABLEKS                       R20 R19 K101 ["Title"]
      575 DUPTABLE                         R20 K106 [{"TextBox"}]
      576 GETUPVAL                         R22 1
      577 GETTABLEKS                       R21 R22 K3 ["createElement"]
      579 GETUPVAL                         R22 19
      580 DUPTABLE                         R23 K118 [{"Disabled", "ErrorText", "MaxLength", "MultiLine", "OnTextChanged", "Height", "Text"}]
      581 GETTABLEKS                       R25 R0 K85 ["Description"]
      583 JUMPIFEQKNIL                     R25 ; [+2]
      585 LOADB                            R24 0 +1
      586 LOADB                            R24 1
      587 SETTABLEKS                       R24 R23 K107 ["Disabled"]
      589 SETTABLEKS                       R11 R23 K108 ["ErrorText"]
      591 LOADN                            R24 232
      592 SETTABLEKS                       R24 R23 K109 ["MaxLength"]
      594 LOADB                            R24 1
      595 SETTABLEKS                       R24 R23 K116 ["MultiLine"]
      597 GETTABLEKS                       R24 R0 K119 ["DescriptionChanged"]
      599 SETTABLEKS                       R24 R23 K110 ["OnTextChanged"]
      601 LOADN                            R24 130
      602 SETTABLEKS                       R24 R23 K117 ["Height"]
      604 GETTABLEKS                       R25 R0 K85 ["Description"]
      606 ORK                              R24 R25 K114 [""]
      607 SETTABLEKS                       R24 R23 K111 ["Text"]
      609 CALL                             R21 2 1
      610 SETTABLEKS                       R21 R20 K105 ["TextBox"]
      612 CALL                             R17 3 1
      613 SETTABLEKS                       R17 R16 K85 ["Description"]
      615 GETUPVAL                         R18 1
      616 GETTABLEKS                       R17 R18 K3 ["createElement"]
      618 GETUPVAL                         R18 20
      619 DUPTABLE                         R19 K120 [{"LayoutOrder"}]
      620 GETUPVAL                         R20 18
      621 NAMECALL                         R20 R20 K103 ["getNextOrder"]
      623 CALL                             R20 1 1
      624 SETTABLEKS                       R20 R19 K100 ["LayoutOrder"]
      626 CALL                             R17 2 1
      627 SETTABLEKS                       R17 R16 K86 ["Separator"]
      629 GETUPVAL                         R18 21
      630 JUMPIFNOT                        R18 ; [+21]
      631 GETUPVAL                         R18 1
      632 GETTABLEKS                       R17 R18 K3 ["createElement"]
      634 GETUPVAL                         R18 22
      635 DUPTABLE                         R19 K123 [{"LayoutOrder", "GameGuideline", "GameId"}]
      636 GETUPVAL                         R20 18
      637 NAMECALL                         R20 R20 K103 ["getNextOrder"]
      639 CALL                             R20 1 1
      640 SETTABLEKS                       R20 R19 K100 ["LayoutOrder"]
      642 GETTABLEKS                       R20 R0 K87 ["Guidelines"]
      644 SETTABLEKS                       R20 R19 K121 ["GameGuideline"]
      646 GETTABLEKS                       R20 R0 K122 ["GameId"]
      648 SETTABLEKS                       R20 R19 K122 ["GameId"]
      650 CALL                             R17 2 1
      651 JUMP                             ; [+1]
      652 LOADNIL                          R17
      653 SETTABLEKS                       R17 R16 K87 ["Guidelines"]
      655 GETUPVAL                         R18 21
      656 JUMPIFNOT                        R18 ; [+13]
      657 GETUPVAL                         R18 1
      658 GETTABLEKS                       R17 R18 K3 ["createElement"]
      660 GETUPVAL                         R18 20
      661 DUPTABLE                         R19 K120 [{"LayoutOrder"}]
      662 GETUPVAL                         R20 18
      663 NAMECALL                         R20 R20 K103 ["getNextOrder"]
      665 CALL                             R20 1 1
      666 SETTABLEKS                       R20 R19 K100 ["LayoutOrder"]
      668 CALL                             R17 2 1
      669 JUMP                             ; [+1]
      670 LOADNIL                          R17
      671 SETTABLEKS                       R17 R16 K88 ["Separator2"]
      673 GETUPVAL                         R18 1
      674 GETTABLEKS                       R17 R18 K3 ["createElement"]
      676 GETUPVAL                         R18 23
      677 DUPTABLE                         R19 K128 [{"Title", "LayoutOrder", "Enabled", "Icon", "TutorialEnabled", "AddIcon", "ErrorMessage"}]
      678 GETUPVAL                         R21 9
      679 CALL                             R21 0 1
      680 JUMPIFNOT                        R21 ; [+7]
      681 GETUPVAL                         R20 5
      682 LOADK                            R22 K14 ["General"]
      683 LOADK                            R23 K129 ["TitleExperienceIcon"]
      684 NAMECALL                         R20 R20 K16 ["getText"]
      686 CALL                             R20 3 1
      687 JUMP                             ; [+6]
      688 GETUPVAL                         R20 5
      689 LOADK                            R22 K14 ["General"]
      690 LOADK                            R23 K130 ["TitleGameIcon"]
      691 NAMECALL                         R20 R20 K16 ["getText"]
      693 CALL                             R20 3 1
      694 SETTABLEKS                       R20 R19 K101 ["Title"]
      696 GETUPVAL                         R20 18
      697 NAMECALL                         R20 R20 K103 ["getNextOrder"]
      699 CALL                             R20 1 1
      700 SETTABLEKS                       R20 R19 K100 ["LayoutOrder"]
      702 GETTABLEKS                       R21 R0 K131 ["GameIcon"]
      704 JUMPIFNOTEQKNIL                  R21 ; [+2]
      706 LOADB                            R20 0 +1
      707 LOADB                            R20 1
      708 SETTABLEKS                       R20 R19 K124 ["Enabled"]
      710 GETTABLEKS                       R20 R0 K131 ["GameIcon"]
      712 SETTABLEKS                       R20 R19 K89 ["Icon"]
      714 LOADB                            R20 1
      715 SETTABLEKS                       R20 R19 K125 ["TutorialEnabled"]
      717 GETUPVAL                         R21 0
      718 GETTABLEKS                       R20 R21 K132 ["addIcons"]
      720 SETTABLEKS                       R20 R19 K126 ["AddIcon"]
      722 SETTABLEKS                       R12 R19 K127 ["ErrorMessage"]
      724 CALL                             R17 2 1
      725 SETTABLEKS                       R17 R16 K89 ["Icon"]
      727 GETUPVAL                         R18 1
      728 GETTABLEKS                       R17 R18 K3 ["createElement"]
      730 GETUPVAL                         R18 20
      731 DUPTABLE                         R19 K120 [{"LayoutOrder"}]
      732 GETUPVAL                         R20 18
      733 NAMECALL                         R20 R20 K103 ["getNextOrder"]
      735 CALL                             R20 1 1
      736 SETTABLEKS                       R20 R19 K100 ["LayoutOrder"]
      738 CALL                             R17 2 1
      739 SETTABLEKS                       R17 R16 K90 ["Separator3"]
      741 GETUPVAL                         R18 1
      742 GETTABLEKS                       R17 R18 K3 ["createElement"]
      744 GETUPVAL                         R18 24
      745 DUPTABLE                         R19 K139 [{"LayoutOrder", "Enabled", "Thumbnails", "Order", "Notes", "IsVideoAllowed", "AddThumbnail", "ErrorMessage", "ThumbnailsChanged", "ThumbnailOrderChanged", "AltTextError"}]
      746 GETUPVAL                         R20 18
      747 NAMECALL                         R20 R20 K103 ["getNextOrder"]
      749 CALL                             R20 1 1
      750 SETTABLEKS                       R20 R19 K100 ["LayoutOrder"]
      752 GETTABLEKS                       R21 R0 K91 ["Thumbnails"]
      754 JUMPIFNOTEQKNIL                  R21 ; [+2]
      756 LOADB                            R20 0 +1
      757 LOADB                            R20 1
      758 SETTABLEKS                       R20 R19 K124 ["Enabled"]
      760 GETTABLEKS                       R20 R0 K91 ["Thumbnails"]
      762 SETTABLEKS                       R20 R19 K91 ["Thumbnails"]
      764 GETTABLEKS                       R20 R0 K140 ["ThumbnailOrder"]
      766 SETTABLEKS                       R20 R19 K133 ["Order"]
      768 SETTABLEKS                       R9 R19 K134 ["Notes"]
      770 SETTABLEKS                       R8 R19 K135 ["IsVideoAllowed"]
      772 GETUPVAL                         R21 0
      773 GETTABLEKS                       R20 R21 K141 ["addThumbnails"]
      775 SETTABLEKS                       R20 R19 K136 ["AddThumbnail"]
      777 SETTABLEKS                       R13 R19 K127 ["ErrorMessage"]
      779 GETTABLEKS                       R20 R0 K137 ["ThumbnailsChanged"]
      781 SETTABLEKS                       R20 R19 K137 ["ThumbnailsChanged"]
      783 GETTABLEKS                       R20 R0 K138 ["ThumbnailOrderChanged"]
      785 SETTABLEKS                       R20 R19 K138 ["ThumbnailOrderChanged"]
      787 DUPTABLE                         R20 K143 [{"ThumbnailId", "ErrorMessage"}]
      788 GETTABLEKS                       R22 R0 K81 ["AltTextError"]
      790 JUMPIFNOT                        R22 ; [+5]
      791 GETTABLEKS                       R22 R0 K81 ["AltTextError"]
      793 GETTABLEKS                       R21 R22 K142 ["ThumbnailId"]
      795 JUMP                             ; [+1]
      796 LOADNIL                          R21
      797 SETTABLEKS                       R21 R20 K142 ["ThumbnailId"]
      799 SETTABLEKS                       R14 R20 K127 ["ErrorMessage"]
      801 SETTABLEKS                       R20 R19 K81 ["AltTextError"]
      803 CALL                             R17 2 1
      804 SETTABLEKS                       R17 R16 K91 ["Thumbnails"]
      806 GETUPVAL                         R18 1
      807 GETTABLEKS                       R17 R18 K3 ["createElement"]
      809 GETUPVAL                         R18 20
      810 DUPTABLE                         R19 K120 [{"LayoutOrder"}]
      811 GETUPVAL                         R20 18
      812 NAMECALL                         R20 R20 K103 ["getNextOrder"]
      814 CALL                             R20 1 1
      815 SETTABLEKS                       R20 R19 K100 ["LayoutOrder"]
      817 CALL                             R17 2 1
      818 SETTABLEKS                       R17 R16 K92 ["Separator4"]
      820 GETUPVAL                         R18 6
      821 JUMPIFNOT                        R18 ; [+189]
      822 GETUPVAL                         R18 1
      823 GETTABLEKS                       R17 R18 K3 ["createElement"]
      825 GETUPVAL                         R18 17
      826 DUPTABLE                         R19 K102 [{"LayoutOrder", "Title"}]
      827 GETUPVAL                         R20 18
      828 NAMECALL                         R20 R20 K103 ["getNextOrder"]
      830 CALL                             R20 1 1
      831 SETTABLEKS                       R20 R19 K100 ["LayoutOrder"]
      833 GETUPVAL                         R20 5
      834 LOADK                            R22 K14 ["General"]
      835 LOADK                            R23 K144 ["TitleGenre"]
      836 NAMECALL                         R20 R20 K16 ["getText"]
      838 CALL                             R20 3 1
      839 SETTABLEKS                       R20 R19 K101 ["Title"]
      841 DUPTABLE                         R20 K146 [{"ExperienceGenre", "GenreHelperText"}]
      842 GETUPVAL                         R22 1
      843 GETTABLEKS                       R21 R22 K3 ["createElement"]
      845 GETUPVAL                         R22 25
      846 DUPTABLE                         R23 K152 [{"Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize", "TextXAlignment"}]
      847 GETUPVAL                         R27 26
      848 GETTABLEKS                       R26 R27 K153 ["fontStyle"]
      850 GETTABLEKS                       R25 R26 K154 ["Normal"]
      852 GETTABLEKS                       R24 R25 K147 ["Font"]
      854 SETTABLEKS                       R24 R23 K147 ["Font"]
      856 GETUPVAL                         R24 18
      857 NAMECALL                         R24 R24 K103 ["getNextOrder"]
      859 CALL                             R24 1 1
      860 SETTABLEKS                       R24 R23 K100 ["LayoutOrder"]
      862 GETIMPORT                        R24 K157 [UDim2.new]
      864 LOADN                            R25 0
      865 GETUPVAL                         R27 27
      866 MOVE                             R28 R7
      867 GETUPVAL                         R32 26
      868 GETTABLEKS                       R31 R32 K153 ["fontStyle"]
      870 GETTABLEKS                       R30 R31 K154 ["Normal"]
      872 GETTABLEKS                       R29 R30 K150 ["TextSize"]
      874 GETUPVAL                         R33 26
      875 GETTABLEKS                       R32 R33 K153 ["fontStyle"]
      877 GETTABLEKS                       R31 R32 K154 ["Normal"]
      879 GETTABLEKS                       R30 R31 K147 ["Font"]
      881 CALL                             R27 3 1
      882 GETTABLEKS                       R26 R27 K158 ["X"]
      884 LOADN                            R27 0
      885 GETUPVAL                         R31 26
      886 GETTABLEKS                       R30 R31 K153 ["fontStyle"]
      888 GETTABLEKS                       R29 R30 K154 ["Normal"]
      890 GETTABLEKS                       R28 R29 K150 ["TextSize"]
      892 CALL                             R24 4 1
      893 SETTABLEKS                       R24 R23 K148 ["Size"]
      895 SETTABLEKS                       R7 R23 K111 ["Text"]
      897 GETUPVAL                         R27 26
      898 GETTABLEKS                       R26 R27 K153 ["fontStyle"]
      900 GETTABLEKS                       R25 R26 K154 ["Normal"]
      902 GETTABLEKS                       R24 R25 K149 ["TextColor3"]
      904 SETTABLEKS                       R24 R23 K149 ["TextColor3"]
      906 GETUPVAL                         R27 26
      907 GETTABLEKS                       R26 R27 K153 ["fontStyle"]
      909 GETTABLEKS                       R25 R26 K154 ["Normal"]
      911 GETTABLEKS                       R24 R25 K150 ["TextSize"]
      913 SETTABLEKS                       R24 R23 K150 ["TextSize"]
      915 GETIMPORT                        R24 K160 [Enum.TextXAlignment.Left]
      917 SETTABLEKS                       R24 R23 K151 ["TextXAlignment"]
      919 CALL                             R21 2 1
      920 SETTABLEKS                       R21 R20 K49 ["ExperienceGenre"]
      922 GETUPVAL                         R22 1
      923 GETTABLEKS                       R21 R22 K3 ["createElement"]
      925 GETUPVAL                         R22 28
      926 DUPTABLE                         R23 K168 [{"OnLinkClicked", "LayoutOrder", "Text", "LinkText", "LinkPlaceholder", "MaxWidth", "TextProps", "TextWrapped", "HorizontalAlignment"}]
      927 NEWCLOSURE                       R24 P0
      928 CAPTURE                          UPVAL U29
      929 CAPTURE                          VAL R0
      930 SETTABLEKS                       R24 R23 K161 ["OnLinkClicked"]
      932 GETUPVAL                         R24 18
      933 NAMECALL                         R24 R24 K103 ["getNextOrder"]
      935 CALL                             R24 1 1
      936 SETTABLEKS                       R24 R23 K100 ["LayoutOrder"]
      938 GETUPVAL                         R24 5
      939 LOADK                            R26 K169 ["GenreSettings"]
      940 LOADK                            R27 K170 ["GenreManageMessage"]
      941 DUPTABLE                         R28 K172 [{"link"}]
      942 GETUPVAL                         R29 5
      943 LOADK                            R31 K169 ["GenreSettings"]
      944 LOADK                            R32 K173 ["GenreClickHereLink"]
      945 NAMECALL                         R29 R29 K16 ["getText"]
      947 CALL                             R29 3 1
      948 SETTABLEKS                       R29 R28 K171 ["link"]
      950 NAMECALL                         R24 R24 K16 ["getText"]
      952 CALL                             R24 4 1
      953 SETTABLEKS                       R24 R23 K111 ["Text"]
      955 GETUPVAL                         R24 5
      956 LOADK                            R26 K169 ["GenreSettings"]
      957 LOADK                            R27 K173 ["GenreClickHereLink"]
      958 NAMECALL                         R24 R24 K16 ["getText"]
      960 CALL                             R24 3 1
      961 SETTABLEKS                       R24 R23 K162 ["LinkText"]
      963 GETUPVAL                         R24 5
      964 LOADK                            R26 K169 ["GenreSettings"]
      965 LOADK                            R27 K173 ["GenreClickHereLink"]
      966 NAMECALL                         R24 R24 K16 ["getText"]
      968 CALL                             R24 3 1
      969 SETTABLEKS                       R24 R23 K163 ["LinkPlaceholder"]
      971 GETUPVAL                         R26 26
      972 GETTABLEKS                       R25 R26 K174 ["textWithInlineLink"]
      974 GETTABLEKS                       R24 R25 K175 ["maxWidth"]
      976 SETTABLEKS                       R24 R23 K164 ["MaxWidth"]
      978 GETUPVAL                         R26 30
      979 GETTABLEKS                       R25 R26 K176 ["Dictionary"]
      981 GETTABLEKS                       R24 R25 K177 ["join"]
      983 GETUPVAL                         R27 26
      984 GETTABLEKS                       R26 R27 K153 ["fontStyle"]
      986 GETTABLEKS                       R25 R26 K178 ["Smaller"]
      988 DUPTABLE                         R26 K180 [{"BackgroundTransparency", "TextXAlignment"}]
      989 LOADN                            R27 1
      990 SETTABLEKS                       R27 R26 K179 ["BackgroundTransparency"]
      992 GETIMPORT                        R27 K160 [Enum.TextXAlignment.Left]
      994 SETTABLEKS                       R27 R26 K151 ["TextXAlignment"]
      996 CALL                             R24 2 1
      997 SETTABLEKS                       R24 R23 K165 ["TextProps"]
      999 LOADB                            R24 1
     1000 SETTABLEKS                       R24 R23 K166 ["TextWrapped"]
     1002 GETIMPORT                        R24 K181 [Enum.HorizontalAlignment.Left]
     1004 SETTABLEKS                       R24 R23 K167 ["HorizontalAlignment"]
     1006 CALL                             R21 2 1
     1007 SETTABLEKS                       R21 R20 K145 ["GenreHelperText"]
     1009 CALL                             R17 3 1
     1010 JUMP                             ; [+88]
     1011 GETUPVAL                         R18 1
     1012 GETTABLEKS                       R17 R18 K3 ["createElement"]
     1014 GETUPVAL                         R18 17
     1015 DUPTABLE                         R19 K102 [{"LayoutOrder", "Title"}]
     1016 GETUPVAL                         R20 18
     1017 NAMECALL                         R20 R20 K103 ["getNextOrder"]
     1019 CALL                             R20 1 1
     1020 SETTABLEKS                       R20 R19 K100 ["LayoutOrder"]
     1022 GETUPVAL                         R20 5
     1023 LOADK                            R22 K14 ["General"]
     1024 LOADK                            R23 K144 ["TitleGenre"]
     1025 NAMECALL                         R20 R20 K16 ["getText"]
     1027 CALL                             R20 3 1
     1028 SETTABLEKS                       R20 R19 K101 ["Title"]
     1030 DUPTABLE                         R20 K183 [{"Body"}]
     1031 GETUPVAL                         R22 1
     1032 GETTABLEKS                       R21 R22 K3 ["createElement"]
     1034 GETUPVAL                         R22 28
     1035 DUPTABLE                         R23 K184 [{"OnLinkClicked", "Text", "LinkText", "LinkPlaceholder", "MaxWidth", "TextProps", "TextWrapped", "HorizontalAlignment"}]
     1036 DUPCLOSURE                       R24 K185 [PROTO_51]
     1037 CAPTURE                          UPVAL U31
     1038 CAPTURE                          UPVAL U32
     1039 SETTABLEKS                       R24 R23 K161 ["OnLinkClicked"]
     1041 GETUPVAL                         R24 5
     1042 LOADK                            R26 K14 ["General"]
     1043 LOADK                            R27 K186 ["GenreReplacementMessage"]
     1044 NAMECALL                         R24 R24 K16 ["getText"]
     1046 CALL                             R24 3 1
     1047 SETTABLEKS                       R24 R23 K111 ["Text"]
     1049 GETUPVAL                         R24 5
     1050 LOADK                            R26 K14 ["General"]
     1051 LOADK                            R27 K187 ["GenreOverhaulMessageLink"]
     1052 NAMECALL                         R24 R24 K16 ["getText"]
     1054 CALL                             R24 3 1
     1055 SETTABLEKS                       R24 R23 K162 ["LinkText"]
     1057 LOADK                            R24 K188 ["[link]"]
     1058 SETTABLEKS                       R24 R23 K163 ["LinkPlaceholder"]
     1060 GETUPVAL                         R26 26
     1061 GETTABLEKS                       R25 R26 K174 ["textWithInlineLink"]
     1063 GETTABLEKS                       R24 R25 K175 ["maxWidth"]
     1065 SETTABLEKS                       R24 R23 K164 ["MaxWidth"]
     1067 GETUPVAL                         R26 30
     1068 GETTABLEKS                       R25 R26 K176 ["Dictionary"]
     1070 GETTABLEKS                       R24 R25 K177 ["join"]
     1072 GETUPVAL                         R27 26
     1073 GETTABLEKS                       R26 R27 K153 ["fontStyle"]
     1075 GETTABLEKS                       R25 R26 K178 ["Smaller"]
     1077 DUPTABLE                         R26 K180 [{"BackgroundTransparency", "TextXAlignment"}]
     1078 LOADN                            R27 1
     1079 SETTABLEKS                       R27 R26 K179 ["BackgroundTransparency"]
     1081 GETIMPORT                        R27 K160 [Enum.TextXAlignment.Left]
     1083 SETTABLEKS                       R27 R26 K151 ["TextXAlignment"]
     1085 CALL                             R24 2 1
     1086 SETTABLEKS                       R24 R23 K165 ["TextProps"]
     1088 LOADB                            R24 1
     1089 SETTABLEKS                       R24 R23 K166 ["TextWrapped"]
     1091 GETIMPORT                        R24 K181 [Enum.HorizontalAlignment.Left]
     1093 SETTABLEKS                       R24 R23 K167 ["HorizontalAlignment"]
     1095 CALL                             R21 2 1
     1096 SETTABLEKS                       R21 R20 K182 ["Body"]
     1098 CALL                             R17 3 1
     1099 SETTABLEKS                       R17 R16 K93 ["Genre"]
     1101 GETUPVAL                         R18 1
     1102 GETTABLEKS                       R17 R18 K3 ["createElement"]
     1104 GETUPVAL                         R18 20
     1105 DUPTABLE                         R19 K120 [{"LayoutOrder"}]
     1106 GETUPVAL                         R20 18
     1107 NAMECALL                         R20 R20 K103 ["getNextOrder"]
     1109 CALL                             R20 1 1
     1110 SETTABLEKS                       R20 R19 K100 ["LayoutOrder"]
     1112 CALL                             R17 2 1
     1113 SETTABLEKS                       R17 R16 K94 ["Separator5"]
     1115 GETUPVAL                         R18 33
     1116 JUMPIFNOT                        R18 ; [+67]
     1117 GETUPVAL                         R18 1
     1118 GETTABLEKS                       R17 R18 K3 ["createElement"]
     1120 GETUPVAL                         R18 17
     1121 DUPTABLE                         R19 K102 [{"LayoutOrder", "Title"}]
     1122 GETUPVAL                         R20 18
     1123 NAMECALL                         R20 R20 K103 ["getNextOrder"]
     1125 CALL                             R20 1 1
     1126 SETTABLEKS                       R20 R19 K100 ["LayoutOrder"]
     1128 GETUPVAL                         R20 5
     1129 LOADK                            R22 K14 ["General"]
     1130 LOADK                            R23 K189 ["TitleCreatorRestriction"]
     1131 NAMECALL                         R20 R20 K16 ["getText"]
     1133 CALL                             R20 3 1
     1134 SETTABLEKS                       R20 R19 K101 ["Title"]
     1136 DUPTABLE                         R20 K191 [{"Padding", "LinkText"}]
     1137 GETUPVAL                         R22 1
     1138 GETTABLEKS                       R21 R22 K3 ["createElement"]
     1140 LOADK                            R22 K192 ["UIPadding"]
     1141 DUPTABLE                         R23 K194 [{"PaddingTop"}]
     1142 GETIMPORT                        R24 K196 [UDim.new]
     1144 LOADN                            R25 0
     1145 LOADN                            R26 4
     1146 CALL                             R24 2 1
     1147 SETTABLEKS                       R24 R23 K193 ["PaddingTop"]
     1149 CALL                             R21 2 1
     1150 SETTABLEKS                       R21 R20 K190 ["Padding"]
     1152 GETUPVAL                         R22 1
     1153 GETTABLEKS                       R21 R22 K3 ["createElement"]
     1155 GETUPVAL                         R22 34
     1156 DUPTABLE                         R23 K199 [{"OnClick", "Text", "TextXAlignment", "TextYAlignment"}]
     1157 GETUPVAL                         R24 35
     1158 GETTABLEKS                       R25 R0 K122 ["GameId"]
     1160 CALL                             R24 1 1
     1161 SETTABLEKS                       R24 R23 K197 ["OnClick"]
     1163 GETUPVAL                         R24 5
     1164 LOADK                            R26 K14 ["General"]
     1165 LOADK                            R27 K200 ["CreatorRestrictionDeepLink"]
     1166 NAMECALL                         R24 R24 K16 ["getText"]
     1168 CALL                             R24 3 1
     1169 SETTABLEKS                       R24 R23 K111 ["Text"]
     1171 GETIMPORT                        R24 K160 [Enum.TextXAlignment.Left]
     1173 SETTABLEKS                       R24 R23 K151 ["TextXAlignment"]
     1175 GETIMPORT                        R24 K202 [Enum.TextYAlignment.Top]
     1177 SETTABLEKS                       R24 R23 K198 ["TextYAlignment"]
     1179 CALL                             R21 2 1
     1180 SETTABLEKS                       R21 R20 K162 ["LinkText"]
     1182 CALL                             R17 3 1
     1183 JUMP                             ; [+1]
     1184 LOADNIL                          R17
     1185 SETTABLEKS                       R17 R16 K95 ["CreatorRestriction"]
     1187 GETUPVAL                         R18 33
     1188 JUMPIFNOT                        R18 ; [+13]
     1189 GETUPVAL                         R18 1
     1190 GETTABLEKS                       R17 R18 K3 ["createElement"]
     1192 GETUPVAL                         R18 20
     1193 DUPTABLE                         R19 K120 [{"LayoutOrder"}]
     1194 GETUPVAL                         R20 18
     1195 NAMECALL                         R20 R20 K103 ["getNextOrder"]
     1197 CALL                             R20 1 1
     1198 SETTABLEKS                       R20 R19 K100 ["LayoutOrder"]
     1200 CALL                             R17 2 1
     1201 JUMP                             ; [+1]
     1202 LOADNIL                          R17
     1203 SETTABLEKS                       R17 R16 K96 ["Separator6"]
     1205 GETUPVAL                         R18 1
     1206 GETTABLEKS                       R17 R18 K3 ["createElement"]
     1208 GETUPVAL                         R18 36
     1209 DUPTABLE                         R19 K205 [{"Title", "LayoutOrder", "Boxes", "Enabled", "ErrorMessage", "EntryClicked"}]
     1210 GETUPVAL                         R20 5
     1211 LOADK                            R22 K14 ["General"]
     1212 LOADK                            R23 K206 ["TitleDevices"]
     1213 NAMECALL                         R20 R20 K16 ["getText"]
     1215 CALL                             R20 3 1
     1216 SETTABLEKS                       R20 R19 K101 ["Title"]
     1218 GETUPVAL                         R20 18
     1219 NAMECALL                         R20 R20 K103 ["getNextOrder"]
     1221 CALL                             R20 1 1
     1222 SETTABLEKS                       R20 R19 K100 ["LayoutOrder"]
     1224 NEWTABLE                         R20 0 5
     1226 DUPTABLE                         R21 K208 [{"Id", "Title", "Selected"}]
     1227 LOADK                            R22 K209 ["Computer"]
     1228 SETTABLEKS                       R22 R21 K13 ["Id"]
     1230 GETUPVAL                         R22 5
     1231 LOADK                            R24 K14 ["General"]
     1232 LOADK                            R25 K210 ["DeviceComputer"]
     1233 NAMECALL                         R22 R22 K16 ["getText"]
     1235 CALL                             R22 3 1
     1236 SETTABLEKS                       R22 R21 K101 ["Title"]
     1238 JUMPIFNOT                        R1 ; [+3]
     1239 GETTABLEKS                       R22 R1 K209 ["Computer"]
     1241 JUMP                             ; [+1]
     1242 LOADB                            R22 0
     1243 SETTABLEKS                       R22 R21 K207 ["Selected"]
     1245 DUPTABLE                         R22 K208 [{"Id", "Title", "Selected"}]
     1246 LOADK                            R23 K211 ["Phone"]
     1247 SETTABLEKS                       R23 R22 K13 ["Id"]
     1249 GETUPVAL                         R23 5
     1250 LOADK                            R25 K14 ["General"]
     1251 LOADK                            R26 K212 ["DevicePhone"]
     1252 NAMECALL                         R23 R23 K16 ["getText"]
     1254 CALL                             R23 3 1
     1255 SETTABLEKS                       R23 R22 K101 ["Title"]
     1257 JUMPIFNOT                        R1 ; [+3]
     1258 GETTABLEKS                       R23 R1 K211 ["Phone"]
     1260 JUMP                             ; [+1]
     1261 LOADB                            R23 0
     1262 SETTABLEKS                       R23 R22 K207 ["Selected"]
     1264 DUPTABLE                         R23 K208 [{"Id", "Title", "Selected"}]
     1265 LOADK                            R24 K213 ["Tablet"]
     1266 SETTABLEKS                       R24 R23 K13 ["Id"]
     1268 GETUPVAL                         R24 5
     1269 LOADK                            R26 K14 ["General"]
     1270 LOADK                            R27 K214 ["DeviceTablet"]
     1271 NAMECALL                         R24 R24 K16 ["getText"]
     1273 CALL                             R24 3 1
     1274 SETTABLEKS                       R24 R23 K101 ["Title"]
     1276 JUMPIFNOT                        R1 ; [+3]
     1277 GETTABLEKS                       R24 R1 K213 ["Tablet"]
     1279 JUMP                             ; [+1]
     1280 LOADB                            R24 0
     1281 SETTABLEKS                       R24 R23 K207 ["Selected"]
     1283 DUPTABLE                         R24 K208 [{"Id", "Title", "Selected"}]
     1284 LOADK                            R25 K215 ["Console"]
     1285 SETTABLEKS                       R25 R24 K13 ["Id"]
     1287 GETUPVAL                         R25 5
     1288 LOADK                            R27 K14 ["General"]
     1289 LOADK                            R28 K216 ["DeviceConsole"]
     1290 NAMECALL                         R25 R25 K16 ["getText"]
     1292 CALL                             R25 3 1
     1293 SETTABLEKS                       R25 R24 K101 ["Title"]
     1295 JUMPIFNOT                        R1 ; [+3]
     1296 GETTABLEKS                       R25 R1 K215 ["Console"]
     1298 JUMP                             ; [+1]
     1299 LOADB                            R25 0
     1300 SETTABLEKS                       R25 R24 K207 ["Selected"]
     1302 DUPTABLE                         R25 K208 [{"Id", "Title", "Selected"}]
     1303 LOADK                            R26 K217 ["VR"]
     1304 SETTABLEKS                       R26 R25 K13 ["Id"]
     1306 GETUPVAL                         R26 5
     1307 LOADK                            R28 K14 ["General"]
     1308 LOADK                            R29 K218 ["DeviceVR"]
     1309 NAMECALL                         R26 R26 K16 ["getText"]
     1311 CALL                             R26 3 1
     1312 SETTABLEKS                       R26 R25 K101 ["Title"]
     1314 JUMPIFNOT                        R1 ; [+3]
     1315 GETTABLEKS                       R26 R1 K217 ["VR"]
     1317 JUMP                             ; [+1]
     1318 LOADB                            R26 0
     1319 SETTABLEKS                       R26 R25 K207 ["Selected"]
     1321 SETLIST                          R20 R21 5 [1]
     1323 SETTABLEKS                       R20 R19 K203 ["Boxes"]
     1325 JUMPIFNOTEQKNIL                  R1 ; [+2]
     1327 LOADB                            R20 0 +1
     1328 LOADB                            R20 1
     1329 SETTABLEKS                       R20 R19 K124 ["Enabled"]
     1331 GETUPVAL                         R21 15
     1332 CALL                             R21 0 1
     1333 JUMPIFNOT                        R21 ; [+2]
     1334 MOVE                             R20 R15
     1335 JUMP                             ; [+1]
     1336 LOADNIL                          R20
     1337 SETTABLEKS                       R20 R19 K127 ["ErrorMessage"]
     1339 NEWCLOSURE                       R20 P2
     1340 CAPTURE                          UPVAL U30
     1341 CAPTURE                          VAL R1
     1342 CAPTURE                          VAL R0
     1343 SETTABLEKS                       R20 R19 K204 ["EntryClicked"]
     1345 CALL                             R17 2 1
     1346 SETTABLEKS                       R17 R16 K5 ["Devices"]
     1348 GETUPVAL                         R18 3
     1349 CALL                             R18 0 1
     1350 JUMPIFNOT                        R18 ; [+13]
     1351 GETUPVAL                         R18 1
     1352 GETTABLEKS                       R17 R18 K3 ["createElement"]
     1354 GETUPVAL                         R18 20
     1355 DUPTABLE                         R19 K120 [{"LayoutOrder"}]
     1356 GETUPVAL                         R20 18
     1357 NAMECALL                         R20 R20 K103 ["getNextOrder"]
     1359 CALL                             R20 1 1
     1360 SETTABLEKS                       R20 R19 K100 ["LayoutOrder"]
     1362 CALL                             R17 2 1
     1363 JUMPIF                           R17 ; [+1]
     1364 LOADNIL                          R17
     1365 SETTABLEKS                       R17 R16 K97 ["Separator7"]
     1367 GETUPVAL                         R18 3
     1368 CALL                             R18 0 1
     1369 JUMPIFNOT                        R18 ; [+149]
     1370 GETUPVAL                         R18 1
     1371 GETTABLEKS                       R17 R18 K3 ["createElement"]
     1373 GETUPVAL                         R18 36
     1374 DUPTABLE                         R19 K221 [{"Title", "LayoutOrder", "Boxes", "ShowWarning", "Enabled", "EntryClicked", "Tooltip"}]
     1375 GETUPVAL                         R20 5
     1376 LOADK                            R22 K14 ["General"]
     1377 LOADK                            R23 K222 ["TitleOptInLocations"]
     1378 NAMECALL                         R20 R20 K16 ["getText"]
     1380 CALL                             R20 3 1
     1381 SETTABLEKS                       R20 R19 K101 ["Title"]
     1383 GETUPVAL                         R20 18
     1384 NAMECALL                         R20 R20 K103 ["getNextOrder"]
     1386 CALL                             R20 1 1
     1387 SETTABLEKS                       R20 R19 K100 ["LayoutOrder"]
     1389 GETUPVAL                         R20 0
     1390 GETUPVAL                         R22 18
     1391 NAMECALL                         R20 R20 K223 ["createOptInLocationBoxes"]
     1393 CALL                             R20 2 1
     1394 SETTABLEKS                       R20 R19 K203 ["Boxes"]
     1396 NOT                              R20 R5
     1397 SETTABLEKS                       R20 R19 K219 ["ShowWarning"]
     1399 LOADB                            R20 0
     1400 JUMPIFEQKNIL                     R3 ; [+2]
     1402 MOVE                             R20 R5
     1403 SETTABLEKS                       R20 R19 K124 ["Enabled"]
     1405 NEWCLOSURE                       R20 P3
     1406 CAPTURE                          UPVAL U26
     1407 CAPTURE                          UPVAL U5
     1408 CAPTURE                          UPVAL U1
     1409 CAPTURE                          UPVAL U28
     1410 CAPTURE                          UPVAL U37
     1411 CAPTURE                          UPVAL U38
     1412 CAPTURE                          UPVAL U31
     1413 CAPTURE                          UPVAL U30
     1414 CAPTURE                          REF R4
     1415 CAPTURE                          VAL R2
     1416 CAPTURE                          UPVAL U39
     1417 CAPTURE                          UPVAL U40
     1418 CAPTURE                          UPVAL U41
     1419 CAPTURE                          UPVAL U42
     1420 CAPTURE                          UPVAL U43
     1421 CAPTURE                          UPVAL U44
     1422 CAPTURE                          UPVAL U45
     1423 CAPTURE                          REF R3
     1424 CAPTURE                          UPVAL U4
     1425 CAPTURE                          UPVAL U46
     1426 CAPTURE                          UPVAL U47
     1427 CAPTURE                          VAL R0
     1428 SETTABLEKS                       R20 R19 K204 ["EntryClicked"]
     1430 GETUPVAL                         R21 1
     1431 GETTABLEKS                       R20 R21 K3 ["createElement"]
     1433 GETUPVAL                         R21 48
     1434 DUPTABLE                         R22 K227 [{"Size", "Position", "Style", "StyleModifier"}]
     1435 GETIMPORT                        R23 K229 [UDim2.fromOffset]
     1437 GETUPVAL                         R26 26
     1438 GETTABLEKS                       R25 R26 K230 ["tooltipIcon"]
     1440 GETTABLEKS                       R24 R25 K231 ["size"]
     1442 GETUPVAL                         R27 26
     1443 GETTABLEKS                       R26 R27 K230 ["tooltipIcon"]
     1445 GETTABLEKS                       R25 R26 K231 ["size"]
     1447 CALL                             R23 2 1
     1448 SETTABLEKS                       R23 R22 K148 ["Size"]
     1450 GETIMPORT                        R23 K157 [UDim2.new]
     1452 LOADN                            R24 0
     1453 GETUPVAL                         R27 26
     1454 GETTABLEKS                       R26 R27 K230 ["tooltipIcon"]
     1456 GETTABLEKS                       R25 R26 K232 ["paddingX"]
     1458 LOADN                            R26 0
     1459 GETUPVAL                         R29 26
     1460 GETTABLEKS                       R28 R29 K230 ["tooltipIcon"]
     1462 GETTABLEKS                       R27 R28 K233 ["paddingY"]
     1464 CALL                             R23 4 1
     1465 SETTABLEKS                       R23 R22 K224 ["Position"]
     1467 LOADK                            R23 K234 ["TooltipStyle"]
     1468 SETTABLEKS                       R23 R22 K225 ["Style"]
     1470 GETUPVAL                         R25 0
     1471 GETTABLEKS                       R24 R25 K235 ["state"]
     1473 GETTABLEKS                       R23 R24 K226 ["StyleModifier"]
     1475 SETTABLEKS                       R23 R22 K226 ["StyleModifier"]
     1477 NEWTABLE                         R23 0 2
     1479 GETUPVAL                         R25 1
     1480 GETTABLEKS                       R24 R25 K3 ["createElement"]
     1482 GETUPVAL                         R25 49
     1483 DUPTABLE                         R26 K236 [{"Text"}]
     1484 GETUPVAL                         R27 5
     1485 GETUPVAL                         R29 4
     1486 LOADK                            R30 K220 ["Tooltip"]
     1487 NAMECALL                         R27 R27 K16 ["getText"]
     1489 CALL                             R27 3 1
     1490 SETTABLEKS                       R27 R26 K111 ["Text"]
     1492 CALL                             R24 2 1
     1493 GETUPVAL                         R26 1
     1494 GETTABLEKS                       R25 R26 K3 ["createElement"]
     1496 GETUPVAL                         R26 50
     1497 DUPTABLE                         R27 K240 [{"Cursor", "MouseEnter", "MouseLeave"}]
     1498 LOADK                            R28 K241 ["PointingHand"]
     1499 SETTABLEKS                       R28 R27 K237 ["Cursor"]
     1501 GETUPVAL                         R29 0
     1502 GETTABLEKS                       R28 R29 K242 ["onMouseEnter"]
     1504 SETTABLEKS                       R28 R27 K238 ["MouseEnter"]
     1506 GETUPVAL                         R29 0
     1507 GETTABLEKS                       R28 R29 K243 ["onMouseLeave"]
     1509 SETTABLEKS                       R28 R27 K239 ["MouseLeave"]
     1511 CALL                             R25 2 -1
     1512 SETLIST                          R23 R24 -1 [1]
     1514 CALL                             R20 3 1
     1515 SETTABLEKS                       R20 R19 K220 ["Tooltip"]
     1517 CALL                             R17 2 1
     1518 JUMPIF                           R17 ; [+1]
     1519 LOADNIL                          R17
     1520 SETTABLEKS                       R17 R16 K98 ["OptInLocations"]
     1522 CLOSEUPVALS                      R3
     1523 RETURN                           R16 1

PROTO_56:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Localization"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R3 K2 ["Stylizer"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K3 ["new"]
       11 CALL                             R3 0 1
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          UPVAL U7
       22 CAPTURE                          UPVAL U8
       23 CAPTURE                          UPVAL U9
       24 CAPTURE                          UPVAL U10
       25 CAPTURE                          UPVAL U11
       26 CAPTURE                          UPVAL U12
       27 CAPTURE                          UPVAL U13
       28 CAPTURE                          UPVAL U14
       29 CAPTURE                          UPVAL U15
       30 CAPTURE                          UPVAL U16
       31 CAPTURE                          VAL R3
       32 CAPTURE                          UPVAL U17
       33 CAPTURE                          UPVAL U18
       34 CAPTURE                          UPVAL U19
       35 CAPTURE                          UPVAL U20
       36 CAPTURE                          UPVAL U21
       37 CAPTURE                          UPVAL U22
       38 CAPTURE                          UPVAL U23
       39 CAPTURE                          VAL R2
       40 CAPTURE                          UPVAL U24
       41 CAPTURE                          UPVAL U25
       42 CAPTURE                          UPVAL U26
       43 CAPTURE                          UPVAL U27
       44 CAPTURE                          UPVAL U28
       45 CAPTURE                          UPVAL U29
       46 CAPTURE                          UPVAL U30
       47 CAPTURE                          UPVAL U31
       48 CAPTURE                          UPVAL U32
       49 CAPTURE                          UPVAL U33
       50 CAPTURE                          UPVAL U34
       51 CAPTURE                          UPVAL U35
       52 CAPTURE                          UPVAL U36
       53 CAPTURE                          UPVAL U37
       54 CAPTURE                          UPVAL U38
       55 CAPTURE                          UPVAL U39
       56 CAPTURE                          UPVAL U40
       57 CAPTURE                          UPVAL U41
       58 CAPTURE                          UPVAL U42
       59 CAPTURE                          UPVAL U43
       60 CAPTURE                          UPVAL U44
       61 CAPTURE                          UPVAL U45
       62 CAPTURE                          UPVAL U46
       63 CAPTURE                          UPVAL U47
       64 GETUPVAL                         R6 1
       65 GETTABLEKS                       R5 R6 K4 ["createElement"]
       67 GETUPVAL                         R6 48
       68 DUPTABLE                         R7 K10 [{"SettingsLoadJobs", "SettingsSaveJobs", "Title", "PageId", "CreateChildren"}]
       69 GETUPVAL                         R8 49
       70 SETTABLEKS                       R8 R7 K5 ["SettingsLoadJobs"]
       72 GETUPVAL                         R8 50
       73 SETTABLEKS                       R8 R7 K6 ["SettingsSaveJobs"]
       75 LOADK                            R10 K11 ["General"]
       76 LOADK                            R12 K12 ["Category"]
       77 GETUPVAL                         R13 51
       78 CONCAT                           R11 R12 R13
       79 NAMECALL                         R8 R1 K13 ["getText"]
       81 CALL                             R8 3 1
       82 SETTABLEKS                       R8 R7 K7 ["Title"]
       84 GETUPVAL                         R8 51
       85 SETTABLEKS                       R8 R7 K8 ["PageId"]
       87 SETTABLEKS                       R4 R7 K9 ["CreateChildren"]
       89 CALL                             R5 2 -1
       90 RETURN                           R5 -1

PROTO_57:
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

PROTO_58:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Settings"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_59:
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

PROTO_60:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_61:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_62:
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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
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
       41 LOADK                            R8 K13 ["CreatorRestrictions"]
       42 LOADB                            R9 0
       43 NAMECALL                         R6 R6 K14 ["DefineFastFlag"]
       45 CALL                             R6 3 0
       46 GETIMPORT                        R6 K4 [game]
       48 LOADK                            R8 K13 ["CreatorRestrictions"]
       49 NAMECALL                         R6 R6 K8 ["GetFastFlag"]
       51 CALL                             R6 2 1
       52 GETIMPORT                        R7 K16 [require]
       54 GETTABLEKS                       R10 R0 K17 ["Src"]
       56 GETTABLEKS                       R9 R10 K18 ["Flags"]
       58 GETTABLEKS                       R8 R9 K19 ["getFFlagGameSettingsGameToExperience"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K16 [require]
       63 GETTABLEKS                       R11 R0 K17 ["Src"]
       65 GETTABLEKS                       R10 R11 K18 ["Flags"]
       67 GETTABLEKS                       R9 R10 K20 ["getFFlagGameSettingsAddIARCErrorMessaging"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K4 [game]
       72 LOADK                            R11 K21 ["StudioService"]
       73 NAMECALL                         R9 R9 K22 ["GetService"]
       75 CALL                             R9 2 1
       76 GETIMPORT                        R10 K4 [game]
       78 LOADK                            R12 K23 ["GuiService"]
       79 NAMECALL                         R10 R10 K22 ["GetService"]
       81 CALL                             R10 2 1
       82 GETIMPORT                        R11 K4 [game]
       84 LOADK                            R13 K24 ["TeamCreateService"]
       85 NAMECALL                         R11 R11 K22 ["GetService"]
       87 CALL                             R11 2 1
       88 GETIMPORT                        R13 K1 [script]
       90 GETTABLEKS                       R12 R13 K25 ["Name"]
       92 DUPTABLE                         R13 K28 [{"Moderated", "Empty"}]
       93 LOADK                            R14 K29 ["ErrorNameModerated"]
       94 SETTABLEKS                       R14 R13 K26 ["Moderated"]
       96 LOADK                            R14 K30 ["ErrorNameEmpty"]
       97 SETTABLEKS                       R14 R13 K27 ["Empty"]
       99 DUPTABLE                         R14 K28 [{"Moderated", "Empty"}]
      100 LOADK                            R15 K31 ["ErrorDescModerated"]
      101 SETTABLEKS                       R15 R14 K26 ["Moderated"]
      103 LOADK                            R15 K32 ["ErrorFieldEmpty"]
      104 SETTABLEKS                       R15 R14 K27 ["Empty"]
      106 DUPTABLE                         R15 K35 [{"UploadingTooQuickly", "ImageNotRecognized"}]
      107 LOADK                            R16 K36 ["ErrorImageLimit"]
      108 SETTABLEKS                       R16 R15 K33 ["UploadingTooQuickly"]
      110 LOADK                            R16 K37 ["ErrorImageNotRecognized"]
      111 SETTABLEKS                       R16 R15 K34 ["ImageNotRecognized"]
      113 DUPTABLE                         R16 K38 [{"Empty"}]
      114 LOADK                            R17 K32 ["ErrorFieldEmpty"]
      115 SETTABLEKS                       R17 R16 K27 ["Empty"]
      117 DUPTABLE                         R17 K39 [{"Moderated"}]
      118 LOADK                            R18 K40 ["ErrorAltTextModerated"]
      119 SETTABLEKS                       R18 R17 K26 ["Moderated"]
      121 GETIMPORT                        R19 K1 [script]
      123 GETTABLEKS                       R18 R19 K2 ["Parent"]
      125 GETIMPORT                        R19 K16 [require]
      127 GETTABLEKS                       R21 R0 K41 ["Packages"]
      129 GETTABLEKS                       R20 R21 K42 ["Roact"]
      131 CALL                             R19 1 1
      132 GETIMPORT                        R20 K16 [require]
      134 GETTABLEKS                       R22 R0 K41 ["Packages"]
      136 GETTABLEKS                       R21 R22 K43 ["RoactRodux"]
      138 CALL                             R20 1 1
      139 GETIMPORT                        R21 K16 [require]
      141 GETTABLEKS                       R23 R0 K41 ["Packages"]
      143 GETTABLEKS                       R22 R23 K44 ["Cryo"]
      145 CALL                             R21 1 1
      146 GETIMPORT                        R22 K16 [require]
      148 GETTABLEKS                       R24 R0 K41 ["Packages"]
      150 GETTABLEKS                       R23 R24 K45 ["Framework"]
      152 CALL                             R22 1 1
      153 GETTABLEKS                       R23 R22 K46 ["ContextServices"]
      155 GETTABLEKS                       R24 R23 K47 ["withContext"]
      157 GETIMPORT                        R25 K16 [require]
      159 GETTABLEKS                       R28 R0 K17 ["Src"]
      161 GETTABLEKS                       R27 R28 K46 ["ContextServices"]
      163 GETTABLEKS                       R26 R27 K48 ["Dialog"]
      165 CALL                             R25 1 1
      166 LOADNIL                          R26
      167 JUMPIFNOT                        R3 ; [+8]
      168 GETIMPORT                        R27 K16 [require]
      170 GETTABLEKS                       R29 R18 K49 ["Components"]
      172 GETTABLEKS                       R28 R29 K50 ["Guidelines"]
      174 CALL                             R27 1 1
      175 MOVE                             R26 R27
      176 GETIMPORT                        R28 K16 [require]
      178 GETTABLEKS                       R31 R0 K17 ["Src"]
      180 GETTABLEKS                       R30 R31 K51 ["Util"]
      182 GETTABLEKS                       R29 R30 K52 ["BrowserUtils"]
      184 CALL                             R28 1 1
      185 GETTABLEKS                       R27 R28 K53 ["OpenExperienceSettings"]
      187 GETIMPORT                        R29 K16 [require]
      189 GETTABLEKS                       R32 R0 K17 ["Src"]
      191 GETTABLEKS                       R31 R32 K51 ["Util"]
      193 GETTABLEKS                       R30 R31 K52 ["BrowserUtils"]
      195 CALL                             R29 1 1
      196 GETTABLEKS                       R28 R29 K54 ["OpenExperienceAccess"]
      198 GETTABLEKS                       R29 R22 K55 ["UI"]
      200 GETTABLEKS                       R30 R29 K56 ["BulletList"]
      202 GETTABLEKS                       R31 R29 K57 ["Separator"]
      204 GETTABLEKS                       R32 R29 K58 ["LinkText"]
      206 GETTABLEKS                       R33 R29 K59 ["Tooltip"]
      208 GETTABLEKS                       R34 R29 K60 ["HoverArea"]
      210 GETTABLEKS                       R35 R29 K61 ["SelectInput"]
      212 GETTABLEKS                       R36 R29 K62 ["TextInput"]
      214 GETTABLEKS                       R37 R29 K63 ["Image"]
      216 GETTABLEKS                       R38 R29 K64 ["TextLabel"]
      218 GETTABLEKS                       R39 R29 K65 ["TextWithInlineLink"]
      220 GETTABLEKS                       R40 R29 K66 ["TitledFrame"]
      222 GETTABLEKS                       R41 R29 K67 ["Pane"]
      224 GETTABLEKS                       R42 R29 K68 ["MultiImagePicker"]
      226 GETTABLEKS                       R43 R22 K51 ["Util"]
      228 GETTABLEKS                       R44 R43 K69 ["StyleModifier"]
      230 GETTABLEKS                       R45 R43 K70 ["LayoutOrderIterator"]
      232 GETTABLEKS                       R46 R43 K71 ["deepJoin"]
      234 GETIMPORT                        R47 K16 [require]
      236 GETTABLEKS                       R50 R0 K17 ["Src"]
      238 GETTABLEKS                       R49 R50 K49 ["Components"]
      240 GETTABLEKS                       R48 R49 K72 ["CheckBoxSet"]
      242 CALL                             R47 1 1
      243 GETIMPORT                        R48 K16 [require]
      245 GETTABLEKS                       R52 R0 K17 ["Src"]
      247 GETTABLEKS                       R51 R52 K49 ["Components"]
      249 GETTABLEKS                       R50 R51 K73 ["UploadableIcon"]
      251 GETTABLEKS                       R49 R50 K74 ["UploadableIconWidget"]
      253 CALL                             R48 1 1
      254 GETIMPORT                        R49 K16 [require]
      256 GETTABLEKS                       R53 R0 K17 ["Src"]
      258 GETTABLEKS                       R52 R53 K49 ["Components"]
      260 GETTABLEKS                       R51 R52 K75 ["SettingsPages"]
      262 GETTABLEKS                       R50 R51 K76 ["SettingsPage"]
      264 CALL                             R49 1 1
      265 GETIMPORT                        R50 K16 [require]
      267 GETTABLEKS                       R54 R0 K17 ["Src"]
      269 GETTABLEKS                       R53 R54 K49 ["Components"]
      271 GETTABLEKS                       R52 R53 K48 ["Dialog"]
      273 GETTABLEKS                       R51 R52 K77 ["SimpleDialog"]
      275 CALL                             R50 1 1
      276 GETIMPORT                        R51 K16 [require]
      278 GETTABLEKS                       R55 R0 K17 ["Src"]
      280 GETTABLEKS                       R54 R55 K49 ["Components"]
      282 GETTABLEKS                       R53 R54 K75 ["SettingsPages"]
      284 GETTABLEKS                       R52 R53 K78 ["InsufficientPermissionsPage"]
      286 CALL                             R51 1 1
      287 GETIMPORT                        R52 K16 [require]
      289 GETTABLEKS                       R55 R0 K17 ["Src"]
      291 GETTABLEKS                       R54 R55 K79 ["Actions"]
      293 GETTABLEKS                       R53 R54 K80 ["AddChange"]
      295 CALL                             R52 1 1
      296 GETIMPORT                        R53 K16 [require]
      298 GETTABLEKS                       R56 R0 K17 ["Src"]
      300 GETTABLEKS                       R55 R56 K79 ["Actions"]
      302 GETTABLEKS                       R54 R55 K81 ["AddErrors"]
      304 CALL                             R53 1 1
      305 GETIMPORT                        R54 K16 [require]
      307 GETTABLEKS                       R57 R0 K17 ["Src"]
      309 GETTABLEKS                       R56 R57 K79 ["Actions"]
      311 GETTABLEKS                       R55 R56 K82 ["DiscardError"]
      313 CALL                             R54 1 1
      314 GETIMPORT                        R55 K16 [require]
      316 GETTABLEKS                       R58 R0 K17 ["Src"]
      318 GETTABLEKS                       R57 R58 K79 ["Actions"]
      320 GETTABLEKS                       R56 R57 K83 ["SetCreatorId"]
      322 CALL                             R55 1 1
      323 GETIMPORT                        R56 K16 [require]
      325 GETTABLEKS                       R59 R0 K17 ["Src"]
      327 GETTABLEKS                       R58 R59 K79 ["Actions"]
      329 GETTABLEKS                       R57 R58 K84 ["SetCreatorType"]
      331 CALL                             R56 1 1
      332 GETIMPORT                        R57 K16 [require]
      334 GETTABLEKS                       R60 R0 K17 ["Src"]
      336 GETTABLEKS                       R59 R60 K51 ["Util"]
      338 GETTABLEKS                       R58 R59 K85 ["FileUtils"]
      340 CALL                             R57 1 1
      341 GETIMPORT                        R58 K16 [require]
      343 GETTABLEKS                       R61 R0 K17 ["Src"]
      345 GETTABLEKS                       R60 R61 K51 ["Util"]
      347 GETTABLEKS                       R59 R60 K86 ["DEPRECATED_Constants"]
      349 CALL                             R58 1 1
      350 GETIMPORT                        R59 K16 [require]
      352 GETTABLEKS                       R62 R0 K17 ["Src"]
      354 GETTABLEKS                       R61 R62 K51 ["Util"]
      356 GETTABLEKS                       R60 R61 K87 ["GameSettingsUtilities"]
      358 CALL                             R59 1 1
      359 GETTABLEKS                       R60 R59 K88 ["shouldShowDevPublishLocations"]
      361 GETTABLEKS                       R61 R59 K89 ["getPlayerAppDownloadLink"]
      363 GETTABLEKS                       R62 R59 K90 ["getOptInLocationsRequirementsLink"]
      365 GETTABLEKS                       R63 R59 K91 ["getSocialMediaReferencesAllowed"]
      367 GETTABLEKS                       R64 R59 K92 ["sendAnalyticsToKibana"]
      369 GETTABLEKS                       R65 R59 K93 ["calculateTextSize"]
      371 GETIMPORT                        R66 K16 [require]
      373 GETTABLEKS                       R69 R0 K17 ["Src"]
      375 GETTABLEKS                       R68 R69 K51 ["Util"]
      377 GETTABLEKS                       R67 R68 K94 ["KeyProvider"]
      379 CALL                             R66 1 1
      380 GETTABLEKS                       R67 R66 K95 ["getOptInLocationsKeyName"]
      382 CALL                             R67 0 1
      383 GETTABLEKS                       R68 R66 K96 ["getChinaKeyName"]
      385 CALL                             R68 0 1
      386 GETTABLEKS                       R69 R66 K97 ["getPlayerAcceptanceKeyName"]
      388 CALL                             R69 0 1
      389 GETTABLEKS                       R70 R66 K98 ["getApprovedKeyName"]
      391 CALL                             R70 0 1
      392 GETTABLEKS                       R71 R66 K99 ["getInReviewKeyName"]
      394 CALL                             R71 0 1
      395 GETTABLEKS                       R72 R66 K100 ["getRejectedKeyName"]
      397 CALL                             R72 0 1
      398 GETTABLEKS                       R73 R66 K101 ["getLuobuStudioDevPublishKeyName"]
      400 CALL                             R73 0 1
      401 GETTABLEKS                       R74 R66 K102 ["getCheckboxToggleKeyName"]
      403 CALL                             R74 0 1
      404 GETTABLEKS                       R75 R66 K103 ["getSelectedKeyName"]
      406 CALL                             R75 0 1
      407 GETTABLEKS                       R76 R66 K104 ["getTermsOfUseDialogKeyName"]
      409 CALL                             R76 0 1
      410 GETTABLEKS                       R77 R66 K105 ["getButtonClickedKeyName"]
      412 CALL                             R77 0 1
      413 DUPCLOSURE                       R78 K106 [PROTO_14]
      414 CAPTURE                          VAL R3
      415 CAPTURE                          VAL R5
      416 CAPTURE                          VAL R55
      417 CAPTURE                          VAL R56
      418 CAPTURE                          VAL R60
      419 CAPTURE                          VAL R67
      420 CAPTURE                          VAL R69
      421 DUPCLOSURE                       R79 K107 [PROTO_30]
      422 CAPTURE                          VAL R53
      423 CAPTURE                          VAL R2
      424 CAPTURE                          VAL R21
      425 CAPTURE                          VAL R52
      426 CAPTURE                          VAL R60
      427 CAPTURE                          VAL R67
      428 DUPCLOSURE                       R80 K108 [PROTO_31]
      429 CAPTURE                          VAL R3
      430 CAPTURE                          VAL R60
      431 CAPTURE                          VAL R67
      432 CAPTURE                          VAL R69
      433 DUPCLOSURE                       R81 K109 [PROTO_39]
      434 CAPTURE                          VAL R54
      435 CAPTURE                          VAL R52
      436 CAPTURE                          VAL R21
      437 CAPTURE                          VAL R58
      438 CAPTURE                          VAL R53
      439 CAPTURE                          VAL R8
      440 CAPTURE                          VAL R60
      441 CAPTURE                          VAL R67
      442 GETTABLEKS                       R82 R19 K110 ["PureComponent"]
      444 GETIMPORT                        R85 K1 [script]
      446 GETTABLEKS                       R84 R85 K25 ["Name"]
      448 NAMECALL                         R82 R82 K111 ["extend"]
      450 CALL                             R82 2 1
      451 DUPCLOSURE                       R83 K112 [PROTO_40]
      452 CAPTURE                          VAL R9
      453 SETTABLEKS                       R83 R82 K113 ["hasPermissionToEdit"]
      455 DUPCLOSURE                       R83 K114 [PROTO_41]
      456 DUPCLOSURE                       R84 K115 [PROTO_49]
      457 CAPTURE                          VAL R57
      458 CAPTURE                          VAL R67
      459 CAPTURE                          VAL R70
      460 CAPTURE                          VAL R71
      461 CAPTURE                          VAL R72
      462 CAPTURE                          VAL R44
      463 CAPTURE                          VAL R19
      464 CAPTURE                          VAL R62
      465 CAPTURE                          VAL R68
      466 CAPTURE                          VAL R10
      467 CAPTURE                          VAL R65
      468 CAPTURE                          VAL R60
      469 CAPTURE                          VAL R45
      470 CAPTURE                          VAL R38
      471 CAPTURE                          VAL R32
      472 CAPTURE                          VAL R37
      473 SETTABLEKS                       R84 R82 K116 ["init"]
      475 NEWCLOSURE                       R84 P7
      476 CAPTURE                          VAL R45
      477 CAPTURE                          VAL R19
      478 CAPTURE                          VAL R51
      479 CAPTURE                          VAL R60
      480 CAPTURE                          VAL R67
      481 CAPTURE                          VAL R5
      482 CAPTURE                          VAL R63
      483 CAPTURE                          VAL R30
      484 CAPTURE                          VAL R7
      485 CAPTURE                          VAL R58
      486 CAPTURE                          VAL R13
      487 CAPTURE                          VAL R14
      488 CAPTURE                          VAL R15
      489 CAPTURE                          VAL R17
      490 CAPTURE                          VAL R8
      491 CAPTURE                          VAL R16
      492 CAPTURE                          VAL R40
      493 CAPTURE                          VAL R36
      494 CAPTURE                          VAL R31
      495 CAPTURE                          VAL R3
      496 CAPTURE                          REF R26
      497 CAPTURE                          VAL R48
      498 CAPTURE                          VAL R42
      499 CAPTURE                          VAL R38
      500 CAPTURE                          VAL R65
      501 CAPTURE                          VAL R39
      502 CAPTURE                          VAL R27
      503 CAPTURE                          VAL R21
      504 CAPTURE                          VAL R10
      505 CAPTURE                          VAL R4
      506 CAPTURE                          VAL R6
      507 CAPTURE                          VAL R32
      508 CAPTURE                          VAL R28
      509 CAPTURE                          VAL R47
      510 CAPTURE                          VAL R61
      511 CAPTURE                          VAL R68
      512 CAPTURE                          VAL R50
      513 CAPTURE                          VAL R77
      514 CAPTURE                          VAL R64
      515 CAPTURE                          VAL R73
      516 CAPTURE                          VAL R1
      517 CAPTURE                          VAL R76
      518 CAPTURE                          VAL R46
      519 CAPTURE                          VAL R75
      520 CAPTURE                          VAL R74
      521 CAPTURE                          VAL R37
      522 CAPTURE                          VAL R33
      523 CAPTURE                          VAL R34
      524 CAPTURE                          VAL R49
      525 CAPTURE                          VAL R78
      526 CAPTURE                          VAL R79
      527 CAPTURE                          VAL R12
      528 SETTABLEKS                       R84 R82 K117 ["render"]
      530 DUPCLOSURE                       R84 K118 [PROTO_57]
      531 SETGLOBAL                        R84 K119 ["GetExperienceGenreString"]
      533 MOVE                             R84 R24
      534 DUPTABLE                         R85 K123 [{"Localization", "Stylizer", "Dialog", "Mouse"}]
      535 GETTABLEKS                       R86 R23 K120 ["Localization"]
      537 SETTABLEKS                       R86 R85 K120 ["Localization"]
      539 GETTABLEKS                       R86 R23 K121 ["Stylizer"]
      541 SETTABLEKS                       R86 R85 K121 ["Stylizer"]
      543 SETTABLEKS                       R25 R85 K48 ["Dialog"]
      545 GETTABLEKS                       R86 R23 K122 ["Mouse"]
      547 SETTABLEKS                       R86 R85 K122 ["Mouse"]
      549 CALL                             R84 1 1
      550 MOVE                             R85 R82
      551 CALL                             R84 1 1
      552 MOVE                             R82 R84
      553 GETIMPORT                        R84 K16 [require]
      555 GETTABLEKS                       R87 R0 K17 ["Src"]
      557 GETTABLEKS                       R86 R87 K124 ["Networking"]
      559 GETTABLEKS                       R85 R86 K125 ["settingFromState"]
      561 CALL                             R84 1 1
      562 GETTABLEKS                       R85 R20 K126 ["connect"]
      564 DUPCLOSURE                       R86 K127 [PROTO_59]
      565 CAPTURE                          VAL R84
      566 CAPTURE                          VAL R80
      567 DUPCLOSURE                       R87 K128 [PROTO_62]
      568 CAPTURE                          VAL R52
      569 CAPTURE                          VAL R81
      570 CALL                             R85 2 1
      571 MOVE                             R86 R82
      572 CALL                             R85 1 1
      573 MOVE                             R82 R85
      574 SETTABLEKS                       R12 R82 K129 ["LocalizationId"]
      576 CLOSEUPVALS                      R26
      577 RETURN                           R82 1
