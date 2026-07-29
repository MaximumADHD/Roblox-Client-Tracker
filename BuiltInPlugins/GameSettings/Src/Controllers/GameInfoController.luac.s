PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 SETTABLEKS                       R0 R1 K0 ["__networking"]
        4 GETUPVAL                         R4 0
        5 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K2 [setmetatable]
       10 CALL                             R2 2 1
       11 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["develop"]
        3 LOADK                            R7 K2 ["/v2/universes/"]
        4 MOVE                             R8 R1
        5 LOADK                            R9 K3 ["/configuration"]
        6 CONCAT                           R6 R7 R9
        7 NAMECALL                         R3 R2 K4 ["get"]
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["develop"]
        3 LOADK                            R7 K2 ["/v1/universes/"]
        4 MOVE                             R8 R1
        5 LOADK                            R9 K3 ["/icon"]
        6 CONCAT                           R6 R7 R9
        7 NAMECALL                         R3 R2 K4 ["get"]
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["games"]
        3 LOADK                            R7 K2 ["/v1/games/"]
        4 MOVE                             R8 R1
        5 LOADK                            R9 K3 ["/media"]
        6 CONCAT                           R6 R7 R9
        7 NAMECALL                         R3 R2 K4 ["get"]
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["__networking"]
        2 LOADK                            R6 K1 ["develop"]
        3 LOADK                            R8 K2 ["/v2/universes/"]
        4 MOVE                             R9 R1
        5 LOADK                            R10 K3 ["/configuration"]
        6 CONCAT                           R7 R8 R10
        7 DUPTABLE                         R8 K5 [{"Body"}]
        8 SETTABLEKS                       R2 R8 K4 ["Body"]
       10 NAMECALL                         R4 R3 K6 ["patch"]
       12 CALL                             R4 4 -1
       13 RETURN                           R4 -1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        ASSERT R3 ; [+2]
        2 GETIMPORT                        R2 K1 [assert]
        4 CALL                             R2 1 0
        5 GETTABLEKS                       R2 R0 K2 ["__networking"]
        7 LOADK                            R5 K3 ["apis"]
        8 LOADK                            R6 K4 ["/experience-guidelines-service/v1beta1/multi-age-recommendation"]
        9 DUPTABLE                         R7 K6 [{"Body"}]
       10 DUPTABLE                         R8 K8 [{"universeIds"}]
       11 NEWTABLE                         R9 0 1
       13 MOVE                             R10 R1
       14 SETLIST                          R9 R10 1 [1]
       16 SETTABLEKS                       R9 R8 K7 ["universeIds"]
       18 SETTABLEKS                       R8 R7 K5 ["Body"]
       20 NAMECALL                         R3 R2 K9 ["post"]
       22 CALL                             R3 4 -1
       23 RETURN                           R3 -1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["apis"]
        3 LOADK                            R7 K2 ["/experience-genre-api/v1/Creator/ExperienceGenre"]
        4 LOADK                            R8 K3 ["?universeId="]
        5 MOVE                             R9 R1
        6 LOADK                            R10 K4 ["&genreTaxonomyVersion=1"]
        7 CONCAT                           R6 R7 R10
        8 NAMECALL                         R3 R2 K5 ["get"]
       10 CALL                             R3 3 -1
       11 RETURN                           R3 -1

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["__networking"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["GetAssetPublishRequestInfo"]
        5 MOVE                             R5 R2
        6 CALL                             R4 1 1
        7 LOADNIL                          R5
        8 SETTABLEKS                       R5 R4 K2 ["Method"]
       10 LOADK                            R7 K3 ["publish"]
       11 LOADK                            R9 K4 ["/v1/games/"]
       12 MOVE                             R10 R1
       13 LOADK                            R11 K5 ["/icon"]
       14 CONCAT                           R8 R9 R11
       15 MOVE                             R9 R4
       16 NAMECALL                         R5 R3 K6 ["post"]
       18 CALL                             R5 4 -1
       19 RETURN                           R5 -1

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["__networking"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["GetAssetPublishRequestInfo"]
        5 MOVE                             R5 R2
        6 CALL                             R4 1 1
        7 LOADNIL                          R5
        8 SETTABLEKS                       R5 R4 K2 ["Method"]
       10 LOADK                            R7 K3 ["publish"]
       11 LOADK                            R9 K4 ["/v1/games/"]
       12 MOVE                             R10 R1
       13 LOADK                            R11 K5 ["/thumbnail/image"]
       14 CONCAT                           R8 R9 R11
       15 MOVE                             R9 R4
       16 NAMECALL                         R5 R3 K6 ["post"]
       18 CALL                             R5 4 -1
       19 RETURN                           R5 -1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["__networking"]
        2 LOADK                            R6 K1 ["develop"]
        3 LOADK                            R8 K2 ["/v1/universes/"]
        4 MOVE                             R9 R1
        5 LOADK                            R10 K3 ["/thumbnails/"]
        6 MOVE                             R11 R2
        7 CONCAT                           R7 R8 R11
        8 NAMECALL                         R4 R3 K4 ["delete"]
       10 CALL                             R4 3 -1
       11 RETURN                           R4 -1

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["__networking"]
        2 LOADK                            R6 K1 ["develop"]
        3 LOADK                            R8 K2 ["/v1/universes/"]
        4 MOVE                             R9 R1
        5 LOADK                            R10 K3 ["/thumbnails/order"]
        6 CONCAT                           R7 R8 R10
        7 DUPTABLE                         R8 K5 [{"Body"}]
        8 DUPTABLE                         R9 K7 [{"thumbnailIds"}]
        9 SETTABLEKS                       R2 R9 K6 ["thumbnailIds"]
       11 SETTABLEKS                       R9 R8 K4 ["Body"]
       13 NAMECALL                         R4 R3 K8 ["post"]
       15 CALL                             R4 4 -1
       16 RETURN                           R4 -1

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["__networking"]
        2 LOADK                            R6 K1 ["develop"]
        3 LOADK                            R8 K2 ["/v1/universes/"]
        4 MOVE                             R9 R1
        5 LOADK                            R10 K3 ["/thumbnails/alt-text"]
        6 CONCAT                           R7 R8 R10
        7 DUPTABLE                         R8 K5 [{"Body"}]
        8 SETTABLEKS                       R2 R8 K4 ["Body"]
       10 NAMECALL                         R4 R3 K6 ["post"]
       12 CALL                             R4 4 -1
       13 RETURN                           R4 -1

PROTO_12:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["configurationV2GET"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K2 ["responseBody"]
        9 GETTABLEKS                       R3 R3 K3 ["name"]
       11 RETURN                           R3 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["responseCode"]
        2 JUMPIFNOTEQKN                    R1 K1 [400] ; [+19]
        4 GETIMPORT                        R1 K3 [ipairs]
        6 GETTABLEKS                       R2 R0 K4 ["responseBody"]
        8 GETTABLEKS                       R2 R2 K5 ["errors"]
       10 CALL                             R1 1 3
       11 FORGPREP_INEXT                   R1
       12 GETTABLEKS                       R6 R5 K6 ["code"]
       14 JUMPIFNOTEQKN                    R6 K7 [7] ; [+5]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K8 ["NameModerated"]
       19 SETUPVAL                         R6 0
       20 FORGLOOP                         R1 2 [inext] ; [-9]
       22 RETURN                           R0 0

PROTO_14:
        0 LOADNIL                          R3
        1 MOVE                             R6 R1
        2 DUPTABLE                         R7 K1 [{"name"}]
        3 SETTABLEKS                       R2 R7 K0 ["name"]
        5 NAMECALL                         R4 R0 K2 ["configurationV2PATCH"]
        7 CALL                             R4 3 1
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          REF R3
       10 CAPTURE                          UPVAL U0
       11 NAMECALL                         R4 R4 K3 ["catch"]
       13 CALL                             R4 2 1
       14 NAMECALL                         R4 R4 K4 ["await"]
       16 CALL                             R4 1 0
       17 JUMPIFNOT                        R3 ; [+5]
       18 GETIMPORT                        R4 K6 [error]
       20 MOVE                             R5 R3
       21 CALL                             R4 1 0
       22 JUMP                             ; [+5]
       23 GETUPVAL                         R4 1
       24 MOVE                             R6 R2
       25 NAMECALL                         R4 R4 K7 ["SetUniverseDisplayName"]
       27 CALL                             R4 2 0
       28 CLOSEUPVALS                      R3
       29 RETURN                           R0 0

PROTO_15:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["configurationV2GET"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R4 R2 K3 ["responseBody"]
        9 GETTABLEKS                       R4 R4 K4 ["description"]
       11 ORK                              R3 R4 K2 [""]
       12 RETURN                           R3 1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        ASSERT R3 ; [+2]
        2 GETIMPORT                        R2 K1 [assert]
        4 CALL                             R2 1 0
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R0 K2 ["guidelinesPOST"]
        8 CALL                             R2 2 1
        9 NAMECALL                         R2 R2 K3 ["await"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R4 R2 K4 ["responseBody"]
       14 GETTABLEKS                       R4 R4 K5 ["ageRecommendationDetailsByUniverse"]
       16 GETTABLEN                        R3 R4 1
       17 FASTCALL1                        ASSERT R3 ; [+3]
       18 MOVE                             R5 R3
       19 GETIMPORT                        R4 K1 [assert]
       21 CALL                             R4 1 0
       22 GETTABLEKS                       R6 R3 K6 ["universeId"]
       24 JUMPIFEQ                         R6 R1 ; [+2]
       26 LOADB                            R5 0 +1
       27 LOADB                            R5 1
       28 FASTCALL1                        ASSERT R5 ; [+2]
       29 GETIMPORT                        R4 K1 [assert]
       31 CALL                             R4 1 0
       32 JUMPIFNOT                        R3 ; [+16]
       33 GETTABLEKS                       R4 R3 K7 ["ageRecommendationDetails"]
       35 GETTABLEKS                       R4 R4 K8 ["ageRecommendationSummary"]
       37 GETTABLEKS                       R4 R4 K9 ["ageRecommendation"]
       39 JUMPIFNOT                        R4 ; [+7]
       40 GETTABLEKS                       R5 R4 K10 ["contentMaturity"]
       42 JUMPIFEQKS                       R5 K11 ["unrated"] ; [+4]
       44 GETTABLEKS                       R5 R4 K12 ["displayName"]
       46 RETURN                           R5 1
       47 LOADNIL                          R5
       48 RETURN                           R5 1
       49 LOADNIL                          R4
       50 RETURN                           R4 1

PROTO_17:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["GameInfoController:getExperienceGenre experienced an error: "]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K4 [tostring]
        7 CALL                             R4 1 1
        8 CONCAT                           R2 R3 R4
        9 CALL                             R1 1 0
       10 LOADNIL                          R1
       11 RETURN                           R1 1

PROTO_18:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["experienceGenreGET"]
        3 CALL                             R2 2 1
        4 DUPCLOSURE                       R4 K1 [PROTO_17]
        5 NAMECALL                         R2 R2 K2 ["catch"]
        7 CALL                             R2 2 1
        8 NAMECALL                         R2 R2 K3 ["await"]
       10 CALL                             R2 1 1
       11 JUMPIFNOTEQKNIL                  R2 ; [+3]
       13 LOADNIL                          R3
       14 RETURN                           R3 1
       15 GETTABLEKS                       R4 R2 K4 ["responseBody"]
       17 JUMPIFNOT                        R4 ; [+5]
       18 GETTABLEKS                       R3 R2 K4 ["responseBody"]
       20 GETTABLEKS                       R3 R3 K5 ["genre"]
       22 JUMPIF                           R3 ; [+1]
       23 LOADNIL                          R3
       24 RETURN                           R3 1

PROTO_19:
        0 MOVE                             R5 R1
        1 DUPTABLE                         R6 K1 [{"description"}]
        2 SETTABLEKS                       R2 R6 K0 ["description"]
        4 NAMECALL                         R3 R0 K2 ["configurationV2PATCH"]
        6 CALL                             R3 3 1
        7 NAMECALL                         R3 R3 K3 ["await"]
        9 CALL                             R3 1 0
       10 RETURN                           R0 0

PROTO_20:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["configurationV2GET"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K2 ["responseBody"]
        9 GETTABLEKS                       R3 R3 K3 ["genre"]
       11 RETURN                           R3 1

PROTO_21:
        0 MOVE                             R5 R1
        1 DUPTABLE                         R6 K1 [{"genre"}]
        2 SETTABLEKS                       R2 R6 K0 ["genre"]
        4 NAMECALL                         R3 R0 K2 ["configurationV2PATCH"]
        6 CALL                             R3 3 1
        7 NAMECALL                         R3 R3 K3 ["await"]
        9 CALL                             R3 1 0
       10 RETURN                           R0 0

PROTO_22:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["configurationV2GET"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K2 ["responseBody"]
        9 GETTABLEKS                       R3 R3 K3 ["playableDevices"]
       11 RETURN                           R3 1

PROTO_23:
        0 MOVE                             R5 R1
        1 DUPTABLE                         R6 K1 [{"playableDevices"}]
        2 SETTABLEKS                       R2 R6 K0 ["playableDevices"]
        4 NAMECALL                         R3 R0 K2 ["configurationV2PATCH"]
        6 CALL                             R3 3 1
        7 NAMECALL                         R3 R3 K3 ["await"]
        9 CALL                             R3 1 0
       10 RETURN                           R0 0

PROTO_24:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["thumbnailsV2GET"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K2 ["responseBody"]
        9 GETTABLEKS                       R3 R3 K3 ["data"]
       11 RETURN                           R3 1

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R1 R1 K1 ["targetId"]
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R1 R2 R3
        7 RETURN                           R0 0

PROTO_26:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 GETIMPORT                        R5 K1 [ipairs]
        6 MOVE                             R6 R2
        7 CALL                             R5 1 3
        8 FORGPREP_INEXT                   R5
        9 MOVE                             R11 R3
       10 MOVE                             R14 R1
       11 MOVE                             R15 R9
       12 NAMECALL                         R12 R0 K2 ["thumbnailV1POST"]
       14 CALL                             R12 3 1
       15 NEWCLOSURE                       R14 P0
       16 CAPTURE                          VAL R4
       17 CAPTURE                          VAL R9
       18 NAMECALL                         R12 R12 K3 ["andThen"]
       20 CALL                             R12 2 -1
       21 FASTCALL                         TABLE_INSERT ; [+2]
       22 GETIMPORT                        R10 K6 [table.insert]
       24 CALL                             R10 -1 0
       25 FORGLOOP                         R5 2 [inext] ; [-17]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K7 ["all"]
       30 MOVE                             R6 R3
       31 CALL                             R5 1 1
       32 NAMECALL                         R5 R5 K8 ["await"]
       34 CALL                             R5 1 0
       35 RETURN                           R4 1

PROTO_27:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K1 [ipairs]
        4 MOVE                             R5 R2
        5 CALL                             R4 1 3
        6 FORGPREP_INEXT                   R4
        7 MOVE                             R10 R3
        8 MOVE                             R13 R1
        9 MOVE                             R14 R8
       10 NAMECALL                         R11 R0 K2 ["thumbnailV1DELETE"]
       12 CALL                             R11 3 -1
       13 FASTCALL                         TABLE_INSERT ; [+2]
       14 GETIMPORT                        R9 K5 [table.insert]
       16 CALL                             R9 -1 0
       17 FORGLOOP                         R4 2 [inext] ; [-11]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K6 ["all"]
       22 MOVE                             R5 R3
       23 CALL                             R4 1 1
       24 NAMECALL                         R4 R4 K7 ["await"]
       26 CALL                             R4 1 0
       27 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 SETUPVAL                         R1 0
        3 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["responseCode"]
        2 JUMPIFNOTEQKN                    R1 K1 [400] ; [+19]
        4 GETIMPORT                        R1 K3 [ipairs]
        6 GETTABLEKS                       R2 R0 K4 ["responseBody"]
        8 GETTABLEKS                       R2 R2 K5 ["errors"]
       10 CALL                             R1 1 3
       11 FORGPREP_INEXT                   R1
       12 GETTABLEKS                       R6 R5 K6 ["code"]
       14 JUMPIFNOTEQKN                    R6 K7 [19] ; [+5]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K8 ["AltTextModerated"]
       19 SETUPVAL                         R6 0
       20 FORGLOOP                         R1 2 [inext] ; [-9]
       22 RETURN                           R0 0

PROTO_30:
        0 LOADNIL                          R3
        1 LOADNIL                          R4
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 NAMECALL                         R5 R0 K0 ["thumbnailAltTextV1POST"]
        6 CALL                             R5 3 1
        7 NEWCLOSURE                       R7 P0
        8 CAPTURE                          REF R3
        9 NAMECALL                         R5 R5 K1 ["andThen"]
       11 CALL                             R5 2 1
       12 NEWCLOSURE                       R7 P1
       13 CAPTURE                          REF R4
       14 CAPTURE                          UPVAL U0
       15 NAMECALL                         R5 R5 K2 ["catch"]
       17 CALL                             R5 2 1
       18 NAMECALL                         R5 R5 K3 ["await"]
       20 CALL                             R5 1 0
       21 JUMPIFNOT                        R4 ; [+5]
       22 GETIMPORT                        R5 K5 [error]
       24 MOVE                             R6 R4
       25 CALL                             R5 1 0
       26 JUMP                             ; [+4]
       27 JUMPIFEQKNIL                     R3 ; [+3]
       29 CLOSEUPVALS                      R3
       30 RETURN                           R3 1
       31 LOADNIL                          R5
       32 CLOSEUPVALS                      R3
       33 RETURN                           R5 1

PROTO_31:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 NAMECALL                         R3 R0 K0 ["thumbnailOrderV1POST"]
        4 CALL                             R3 3 1
        5 NAMECALL                         R3 R3 K1 ["await"]
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

PROTO_32:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["iconV1GET"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K2 ["responseBody"]
        9 GETTABLEKS                       R3 R3 K3 ["imageId"]
       11 GETTABLEKS                       R4 R2 K2 ["responseBody"]
       13 GETTABLEKS                       R4 R4 K4 ["isApproved"]
       15 JUMPIFNOT                        R3 ; [+4]
       16 LOADK                            R6 K5 ["rbxassetid://"]
       17 MOVE                             R7 R3
       18 CONCAT                           R5 R6 R7
       19 JUMPIF                           R5 ; [+1]
       20 LOADNIL                          R5
       21 MOVE                             R6 R4
       22 RETURN                           R5 2

PROTO_33:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 NAMECALL                         R3 R0 K0 ["iconV1POST"]
        4 CALL                             R3 3 1
        5 NAMECALL                         R3 R3 K1 ["await"]
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

PROTO_34:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["configurationV2GET"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K2 ["responseBody"]
        9 GETTABLEKS                       R3 R3 K3 ["optInRegions"]
       11 RETURN                           R3 1

PROTO_35:
        0 MOVE                             R6 R1
        1 DUPTABLE                         R7 K2 [{"optInRegions", "optOutRegions"}]
        2 SETTABLEKS                       R2 R7 K0 ["optInRegions"]
        4 SETTABLEKS                       R3 R7 K1 ["optOutRegions"]
        6 NAMECALL                         R4 R0 K3 ["configurationV2PATCH"]
        8 CALL                             R4 3 0
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R1 R1 K7 ["Util"]
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K8 ["Src"]
       22 GETTABLEKS                       R3 R3 K7 ["Util"]
       24 GETTABLEKS                       R3 R3 K9 ["FileUtils"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R1 K10 ["Promise"]
       29 GETTABLEKS                       R4 R1 K11 ["Symbol"]
       31 GETIMPORT                        R5 K13 [game]
       33 LOADK                            R7 K14 ["StudioPublishService"]
       34 NAMECALL                         R5 R5 K15 ["GetService"]
       36 CALL                             R5 2 1
       37 GETIMPORT                        R6 K13 [game]
       39 LOADK                            R8 K16 ["GameSettingsExperienceGuidelines"]
       40 NAMECALL                         R6 R6 K17 ["GetFastFlag"]
       42 CALL                             R6 2 1
       43 NEWTABLE                         R7 64 0
       45 SETTABLEKS                       R7 R7 K18 ["__index"]
       47 GETTABLEKS                       R8 R4 K19 ["named"]
       49 LOADK                            R9 K20 ["NameModerated"]
       50 CALL                             R8 1 1
       51 SETTABLEKS                       R8 R7 K20 ["NameModerated"]
       53 GETTABLEKS                       R8 R4 K19 ["named"]
       55 LOADK                            R9 K21 ["DescriptionModerated"]
       56 CALL                             R8 1 1
       57 SETTABLEKS                       R8 R7 K21 ["DescriptionModerated"]
       59 GETTABLEKS                       R8 R4 K19 ["named"]
       61 LOADK                            R9 K22 ["AltTextModerated"]
       62 CALL                             R8 1 1
       63 SETTABLEKS                       R8 R7 K22 ["AltTextModerated"]
       65 DUPCLOSURE                       R8 K23 [PROTO_0]
       66 CAPTURE                          VAL R7
       67 SETTABLEKS                       R8 R7 K24 ["new"]
       69 DUPCLOSURE                       R8 K25 [PROTO_1]
       70 SETTABLEKS                       R8 R7 K26 ["configurationV2GET"]
       72 DUPCLOSURE                       R8 K27 [PROTO_2]
       73 SETTABLEKS                       R8 R7 K28 ["iconV1GET"]
       75 DUPCLOSURE                       R8 K29 [PROTO_3]
       76 SETTABLEKS                       R8 R7 K30 ["thumbnailsV2GET"]
       78 DUPCLOSURE                       R8 K31 [PROTO_4]
       79 SETTABLEKS                       R8 R7 K32 ["configurationV2PATCH"]
       81 DUPCLOSURE                       R8 K33 [PROTO_5]
       82 CAPTURE                          VAL R6
       83 SETTABLEKS                       R8 R7 K34 ["guidelinesPOST"]
       85 DUPCLOSURE                       R8 K35 [PROTO_6]
       86 SETTABLEKS                       R8 R7 K36 ["experienceGenreGET"]
       88 DUPCLOSURE                       R8 K37 [PROTO_7]
       89 CAPTURE                          VAL R2
       90 SETTABLEKS                       R8 R7 K38 ["iconV1POST"]
       92 DUPCLOSURE                       R8 K39 [PROTO_8]
       93 CAPTURE                          VAL R2
       94 SETTABLEKS                       R8 R7 K40 ["thumbnailV1POST"]
       96 DUPCLOSURE                       R8 K41 [PROTO_9]
       97 SETTABLEKS                       R8 R7 K42 ["thumbnailV1DELETE"]
       99 DUPCLOSURE                       R8 K43 [PROTO_10]
      100 SETTABLEKS                       R8 R7 K44 ["thumbnailOrderV1POST"]
      102 DUPCLOSURE                       R8 K45 [PROTO_11]
      103 SETTABLEKS                       R8 R7 K46 ["thumbnailAltTextV1POST"]
      105 DUPCLOSURE                       R8 K47 [PROTO_12]
      106 SETTABLEKS                       R8 R7 K48 ["getName"]
      108 DUPCLOSURE                       R8 K49 [PROTO_14]
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R5
      111 SETTABLEKS                       R8 R7 K50 ["setName"]
      113 DUPCLOSURE                       R8 K51 [PROTO_15]
      114 SETTABLEKS                       R8 R7 K52 ["getDescription"]
      116 DUPCLOSURE                       R8 K53 [PROTO_16]
      117 CAPTURE                          VAL R6
      118 SETTABLEKS                       R8 R7 K54 ["getGuidelines"]
      120 DUPCLOSURE                       R8 K55 [PROTO_18]
      121 SETTABLEKS                       R8 R7 K56 ["getExperienceGenre"]
      123 DUPCLOSURE                       R8 K57 [PROTO_19]
      124 SETTABLEKS                       R8 R7 K58 ["setDescription"]
      126 DUPCLOSURE                       R8 K59 [PROTO_20]
      127 SETTABLEKS                       R8 R7 K60 ["getGenre"]
      129 DUPCLOSURE                       R8 K61 [PROTO_21]
      130 SETTABLEKS                       R8 R7 K62 ["setGenre"]
      132 DUPCLOSURE                       R8 K63 [PROTO_22]
      133 SETTABLEKS                       R8 R7 K64 ["getSupportedDevices"]
      135 DUPCLOSURE                       R8 K65 [PROTO_23]
      136 SETTABLEKS                       R8 R7 K66 ["setSupportedDevices"]
      138 DUPCLOSURE                       R8 K67 [PROTO_24]
      139 SETTABLEKS                       R8 R7 K68 ["getThumbnails"]
      141 DUPCLOSURE                       R8 K69 [PROTO_26]
      142 CAPTURE                          VAL R3
      143 SETTABLEKS                       R8 R7 K70 ["addThumbnails"]
      145 DUPCLOSURE                       R8 K71 [PROTO_27]
      146 CAPTURE                          VAL R3
      147 SETTABLEKS                       R8 R7 K72 ["removeThumbnails"]
      149 DUPCLOSURE                       R8 K73 [PROTO_30]
      150 CAPTURE                          VAL R7
      151 SETTABLEKS                       R8 R7 K74 ["updateThumbnailAltText"]
      153 DUPCLOSURE                       R8 K75 [PROTO_31]
      154 SETTABLEKS                       R8 R7 K76 ["setThumbnailsOrder"]
      156 DUPCLOSURE                       R8 K77 [PROTO_32]
      157 SETTABLEKS                       R8 R7 K78 ["getIcon"]
      159 DUPCLOSURE                       R8 K79 [PROTO_33]
      160 SETTABLEKS                       R8 R7 K80 ["setIcon"]
      162 DUPCLOSURE                       R8 K81 [PROTO_34]
      163 SETTABLEKS                       R8 R7 K82 ["getOptInLocations"]
      165 DUPCLOSURE                       R8 K83 [PROTO_35]
      166 SETTABLEKS                       R8 R7 K84 ["setOptInLocations"]
      168 RETURN                           R7 1
