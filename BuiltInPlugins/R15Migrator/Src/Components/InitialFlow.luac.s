PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R3 K1 ["Plugin"]
        4 NAMECALL                         R4 R4 K2 ["get"]
        6 CALL                             R4 1 1
        7 GETTABLEKS                       R5 R0 K3 ["isExperiencePublished"]
        9 JUMPIF                           R5 ; [+4]
       10 JUMPIF                           R1 ; [+3]
       11 MOVE                             R5 R2
       12 CALL                             R5 0 0
       13 RETURN                           R0 0
       14 JUMPIFNOT                        R1 ; [+1]
       15 JUMP                             ; [+12]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K4 ["CorrespondingR15Experience"]
       19 MOVE                             R7 R4
       20 GETIMPORT                        R9 K6 [game]
       22 GETTABLEKS                       R8 R9 K7 ["GameId"]
       24 NAMECALL                         R5 R5 K8 ["getSetting"]
       26 CALL                             R5 3 1
       27 MOVE                             R1 R5
       28 JUMPIF                           R1 ; [+3]
       29 MOVE                             R5 R2
       30 CALL                             R5 0 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R5 1
       33 MOVE                             R6 R1
       34 GETTABLEKS                       R7 R3 K9 ["API"]
       36 NAMECALL                         R7 R7 K2 ["get"]
       38 CALL                             R7 1 1
       39 NEWCLOSURE                       R8 P0
       40 CAPTURE                          VAL R2
       41 CALL                             R5 3 0
       42 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R3 0
        1 GETTABLEKS                       R4 R0 K0 ["isExperiencePublished"]
        3 JUMPIFEQKNIL                     R4 ; [+3]
        5 GETTABLEKS                       R3 R0 K1 ["gameName"]
        7 FASTCALL1                        ASSERT R3 ; [+2]
        8 GETIMPORT                        R2 K3 [assert]
       10 CALL                             R2 1 0
       11 GETTABLEKS                       R2 R0 K0 ["isExperiencePublished"]
       13 JUMPIFNOT                        R2 ; [+3]
       14 GETTABLEKS                       R2 R0 K1 ["gameName"]
       16 RETURN                           R2 1
       17 JUMPIFEQKNIL                     R1 ; [+2]
       19 JUMP                             ; [+1]
       20 LOADB                            R1 1
       21 JUMPIFNOT                        R1 ; [+8]
       22 GETIMPORT                        R2 K6 [string.gsub]
       24 GETTABLEKS                       R3 R0 K1 ["gameName"]
       26 LOADK                            R4 K7 ["%.rbxl$"]
       27 LOADK                            R5 K8 [""]
       28 CALL                             R2 3 1
       29 RETURN                           R2 1
       30 GETTABLEKS                       R2 R0 K1 ["gameName"]
       32 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"isGettingInitialData", "convertedExperience"}]
        2 LOADB                            R4 0
        3 SETTABLEKS                       R4 R3 K0 ["isGettingInitialData"]
        5 MOVE                             R4 R0
        6 JUMPIF                           R4 ; [+3]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K3 ["None"]
       10 SETTABLEKS                       R4 R3 K1 ["convertedExperience"]
       12 NAMECALL                         R1 R1 K4 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["name"]
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 LOADB                            R2 1
        7 JUMP                             ; [+1]
        8 LOADB                            R2 0
        9 SETTABLEKS                       R2 R1 K1 ["hasCreatedCopy"]
       11 GETUPVAL                         R1 1
       12 DUPTABLE                         R3 K4 [{"isConverting", "convertedExperience"}]
       13 LOADB                            R4 0
       14 SETTABLEKS                       R4 R3 K2 ["isConverting"]
       16 MOVE                             R4 R0
       17 JUMPIF                           R4 ; [+3]
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R4 R5 K5 ["None"]
       21 SETTABLEKS                       R4 R3 K3 ["convertedExperience"]
       23 NAMECALL                         R1 R1 K6 ["setState"]
       25 CALL                             R1 2 0
       26 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["state"]
        3 GETTABLEKS                       R2 R1 K1 ["convertedExperience"]
        5 GETUPVAL                         R3 1
        6 LOADK                            R5 K2 ["InitialFlow"]
        7 GETUPVAL                         R7 0
        8 NAMECALL                         R7 R7 K3 ["isPublishedR15PlayerChoiceExperience"]
       10 CALL                             R7 1 1
       11 JUMPIFNOT                        R7 ; [+2]
       12 LOADK                            R6 K4 ["CopyR15"]
       13 JUMP                             ; [+1]
       14 LOADK                            R6 K5 ["CopyR6Local"]
       15 DUPTABLE                         R7 K7 [{"experienceName"}]
       16 GETUPVAL                         R8 0
       17 NAMECALL                         R8 R8 K8 ["getGameName"]
       19 CALL                             R8 1 1
       20 SETTABLEKS                       R8 R7 K6 ["experienceName"]
       22 NAMECALL                         R3 R3 K9 ["getText"]
       24 CALL                             R3 4 1
       25 JUMPIFNOT                        R2 ; [+32]
       26 GETIMPORT                        R4 K12 [string.match]
       28 GETTABLEKS                       R5 R2 K13 ["name"]
       30 LOADK                            R7 K14 ["^"]
       31 MOVE                             R8 R3
       32 CONCAT                           R6 R7 R8
       33 CALL                             R4 2 1
       34 JUMPIFNOT                        R4 ; [+23]
       35 GETIMPORT                        R5 K12 [string.match]
       37 GETTABLEKS                       R6 R2 K13 ["name"]
       39 LOADK                            R7 K15 ["%[(%d+)%]$"]
       40 CALL                             R5 2 -1
       41 FASTCALL                         TONUMBER ; [+2]
       42 GETIMPORT                        R4 K17 [tonumber]
       44 CALL                             R4 -1 1
       45 MOVE                             R5 R3
       46 LOADK                            R6 K18 ["_["]
       47 JUMPIFNOT                        R4 ; [+7]
       48 ADDK                             R10 R4 K19 [1]
       49 FASTCALL1                        TOSTRING R10 ; [+2]
       50 GETIMPORT                        R9 K21 [tostring]
       52 CALL                             R9 1 1
       53 MOVE                             R7 R9
       54 JUMP                             ; [+1]
       55 LOADK                            R7 K22 ["2"]
       56 LOADK                            R8 K23 ["]"]
       57 CONCAT                           R3 R5 R8
       58 LOADB                            R4 0
       59 SETTABLEKS                       R4 R0 K24 ["teamCreateEnabled"]
       61 SETTABLEKS                       R3 R0 K13 ["name"]
       63 LOADK                            R4 K25 ["MorphToR15"]
       64 SETTABLEKS                       R4 R0 K26 ["universeAvatarType"]
       66 GETUPVAL                         R4 2
       67 GETUPVAL                         R5 1
       68 GETUPVAL                         R6 3
       69 MOVE                             R7 R0
       70 CALL                             R4 3 1
       71 JUMPIFNOT                        R4 ; [+2]
       72 JUMPIFNOTEQKN                    R4 K27 [0] ; [+15]
       74 GETIMPORT                        R5 K29 [warn]
       76 LOADK                            R6 K30 ["Failed to create new experience"]
       77 CALL                             R5 1 0
       78 GETUPVAL                         R5 0
       79 DUPTABLE                         R7 K32 [{"isConverting"}]
       80 LOADB                            R8 0
       81 SETTABLEKS                       R8 R7 K31 ["isConverting"]
       83 NAMECALL                         R5 R5 K33 ["setState"]
       85 CALL                             R5 2 0
       86 CLOSEUPVALS                      R3
       87 RETURN                           R0 0
       88 GETUPVAL                         R6 0
       89 GETTABLEKS                       R5 R6 K34 ["isExperiencePublished"]
       91 JUMPIFNOT                        R5 ; [+12]
       92 GETUPVAL                         R6 4
       93 GETTABLEKS                       R5 R6 K35 ["CorrespondingR15Experience"]
       95 GETUPVAL                         R7 5
       96 GETIMPORT                        R9 K37 [game]
       98 GETTABLEKS                       R8 R9 K38 ["GameId"]
      100 MOVE                             R9 R4
      101 NAMECALL                         R5 R5 K39 ["setSetting"]
      103 CALL                             R5 4 0
      104 GETUPVAL                         R6 4
      105 GETTABLEKS                       R5 R6 K40 ["IsR15ConvertedExperience"]
      107 GETUPVAL                         R7 5
      108 MOVE                             R8 R4
      109 LOADB                            R9 1
      110 NAMECALL                         R5 R5 K39 ["setSetting"]
      112 CALL                             R5 4 0
      113 GETUPVAL                         R5 0
      114 MOVE                             R7 R4
      115 NEWCLOSURE                       R8 P0
      116 CAPTURE                          REF R3
      117 CAPTURE                          UPVAL U0
      118 CAPTURE                          UPVAL U6
      119 NAMECALL                         R5 R5 K41 ["getR15ConvertedExperienceData"]
      121 CALL                             R5 3 0
      122 CLOSEUPVALS                      R3
      123 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["Unable to retrieve details of current experience"]
        3 GETTABLEKS                       R3 R0 K3 ["responseBody"]
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 0
        7 DUPTABLE                         R3 K5 [{"isConverting"}]
        8 LOADB                            R4 0
        9 SETTABLEKS                       R4 R3 K4 ["isConverting"]
       11 NAMECALL                         R1 R1 K6 ["setState"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isExperiencePublished"]
        3 JUMPIFNOT                        R0 ; [+25]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["Develop"]
        7 GETTABLEKS                       R2 R3 K2 ["V2"]
        9 GETTABLEKS                       R1 R2 K3 ["Universes"]
       11 GETTABLEKS                       R0 R1 K4 ["configuration"]
       13 GETIMPORT                        R2 K6 [game]
       15 GETTABLEKS                       R1 R2 K7 ["GameId"]
       17 CALL                             R0 1 1
       18 NAMECALL                         R0 R0 K8 ["makeRequest"]
       20 CALL                             R0 1 1
       21 NEWCLOSURE                       R2 P0
       22 CAPTURE                          UPVAL U2
       23 NEWCLOSURE                       R3 P1
       24 CAPTURE                          UPVAL U0
       25 NAMECALL                         R0 R0 K9 ["andThen"]
       27 CALL                             R0 3 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R0 2
       30 DUPTABLE                         R1 K15 [{"description", "genre", "name", "playableDevices", "isFriendsOnly"}]
       31 LOADK                            R2 K16 [""]
       32 SETTABLEKS                       R2 R1 K10 ["description"]
       34 LOADK                            R2 K17 ["All"]
       35 SETTABLEKS                       R2 R1 K11 ["genre"]
       37 GETUPVAL                         R2 0
       38 NAMECALL                         R2 R2 K18 ["getGameName"]
       40 CALL                             R2 1 1
       41 SETTABLEKS                       R2 R1 K12 ["name"]
       43 DUPTABLE                         R2 K23 [{"Computer", "Phone", "Tablet", "VR"}]
       44 LOADB                            R3 1
       45 SETTABLEKS                       R3 R2 K19 ["Computer"]
       47 LOADB                            R3 1
       48 SETTABLEKS                       R3 R2 K20 ["Phone"]
       50 LOADB                            R3 1
       51 SETTABLEKS                       R3 R2 K21 ["Tablet"]
       53 LOADB                            R3 1
       54 SETTABLEKS                       R3 R2 K22 ["VR"]
       56 SETTABLEKS                       R2 R1 K13 ["playableDevices"]
       58 LOADB                            R2 0
       59 SETTABLEKS                       R2 R1 K14 ["isFriendsOnly"]
       61 CALL                             R0 1 0
       62 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Localization"]
        5 GETTABLEKS                       R2 R0 K2 ["API"]
        7 NAMECALL                         R2 R2 K3 ["get"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R0 K4 ["Plugin"]
       12 NAMECALL                         R3 R3 K3 ["get"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 0
       16 DUPTABLE                         R6 K6 [{"isConverting"}]
       17 LOADB                            R7 1
       18 SETTABLEKS                       R7 R6 K5 ["isConverting"]
       20 NAMECALL                         R4 R4 K7 ["setState"]
       22 CALL                             R4 2 0
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          VAL R1
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          VAL R2
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          VAL R3
       30 CAPTURE                          UPVAL U3
       31 GETIMPORT                        R5 K10 [task.spawn]
       33 NEWCLOSURE                       R6 P1
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R4
       37 CALL                             R5 1 0
       38 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R0 K1 ["convertedExperience"]
        5 FASTCALL2K                       ASSERT R1 K2 ; [+5]
        7 MOVE                             R3 R1
        8 LOADK                            R4 K2 ["Converted experience should be set"]
        9 GETIMPORT                        R2 K4 [assert]
       11 CALL                             R2 2 0
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K5 ["props"]
       15 GETTABLEKS                       R3 R2 K6 ["Plugin"]
       17 NAMECALL                         R3 R3 K7 ["get"]
       19 CALL                             R3 1 1
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R4 R5 K8 ["InitiallyEnabled"]
       23 MOVE                             R6 R3
       24 GETTABLEKS                       R7 R1 K9 ["experienceId"]
       26 LOADB                            R8 1
       27 NAMECALL                         R4 R4 K10 ["setSetting"]
       29 CALL                             R4 4 0
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R6 R1 K11 ["placeId"]
       33 NAMECALL                         R4 R4 K12 ["OpenPlace"]
       35 CALL                             R4 2 0
       36 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R2 K3 [{"isGettingInitialData", "isConverting", "paneSize"}]
        1 LOADB                            R3 1
        2 SETTABLEKS                       R3 R2 K0 ["isGettingInitialData"]
        4 LOADB                            R3 0
        5 SETTABLEKS                       R3 R2 K1 ["isConverting"]
        7 GETIMPORT                        R3 K6 [Vector2.new]
        9 CALL                             R3 0 1
       10 SETTABLEKS                       R3 R2 K2 ["paneSize"]
       12 SETTABLEKS                       R2 R0 K7 ["state"]
       14 LOADB                            R2 0
       15 SETTABLEKS                       R2 R0 K8 ["hasCreatedCopy"]
       17 LOADB                            R2 0
       18 GETIMPORT                        R4 K10 [game]
       20 GETTABLEKS                       R3 R4 K11 ["GameId"]
       22 JUMPIFEQKN                       R3 K12 [0] ; [+9]
       24 GETIMPORT                        R4 K10 [game]
       26 GETTABLEKS                       R3 R4 K13 ["PlaceId"]
       28 JUMPIFNOTEQKN                    R3 K12 [0] ; [+2]
       30 LOADB                            R2 0 +1
       31 LOADB                            R2 1
       32 SETTABLEKS                       R2 R0 K14 ["isExperiencePublished"]
       34 GETTABLEKS                       R2 R0 K14 ["isExperiencePublished"]
       36 JUMPIFNOT                        R2 ; [+33]
       37 GETUPVAL                         R2 0
       38 GETIMPORT                        R5 K10 [game]
       40 GETTABLEKS                       R4 R5 K13 ["PlaceId"]
       42 NAMECALL                         R2 R2 K15 ["GetProductInfo"]
       44 CALL                             R2 2 1
       45 GETTABLEKS                       R3 R2 K16 ["Name"]
       47 SETTABLEKS                       R3 R0 K17 ["gameName"]
       49 GETUPVAL                         R3 1
       50 GETIMPORT                        R4 K20 [DateTime.fromIsoDate]
       52 GETTABLEKS                       R5 R2 K21 ["Created"]
       54 CALL                             R4 1 1
       55 CALL                             R3 1 1
       56 LOADK                            R5 K22 ["%*/%*/%*"]
       57 GETTABLEKS                       R7 R3 K23 ["month"]
       59 GETTABLEKS                       R8 R3 K24 ["day"]
       61 GETTABLEKS                       R9 R3 K25 ["year"]
       63 NAMECALL                         R5 R5 K26 ["format"]
       65 CALL                             R5 4 1
       66 MOVE                             R4 R5
       67 SETTABLEKS                       R4 R0 K27 ["gameCreatedDate"]
       69 JUMP                             ; [+6]
       70 GETIMPORT                        R3 K10 [game]
       72 GETTABLEKS                       R2 R3 K16 ["Name"]
       74 SETTABLEKS                       R2 R0 K17 ["gameName"]
       76 LOADNIL                          R4
       77 NEWCLOSURE                       R5 P0
       78 CAPTURE                          VAL R0
       79 CAPTURE                          UPVAL U2
       80 NAMECALL                         R2 R0 K28 ["getR15ConvertedExperienceData"]
       82 CALL                             R2 3 0
       83 NEWCLOSURE                       R2 P1
       84 CAPTURE                          VAL R0
       85 CAPTURE                          UPVAL U3
       86 CAPTURE                          UPVAL U4
       87 CAPTURE                          UPVAL U2
       88 SETTABLEKS                       R2 R0 K29 ["createNewExperience"]
       90 NEWCLOSURE                       R2 P2
       91 CAPTURE                          VAL R0
       92 CAPTURE                          UPVAL U4
       93 CAPTURE                          UPVAL U5
       94 SETTABLEKS                       R2 R0 K30 ["openExperience"]
       96 GETUPVAL                         R3 2
       97 GETTABLEKS                       R2 R3 K31 ["createRef"]
       99 CALL                             R2 0 1
      100 SETTABLEKS                       R2 R0 K32 ["ref"]
      102 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"paneSize"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K2 ["AbsoluteSize"]
        5 SETTABLEKS                       R3 R2 K0 ["paneSize"]
        7 NAMECALL                         R0 R0 K3 ["setState"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["ref"]
        2 NAMECALL                         R1 R1 K1 ["getValue"]
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 DUPTABLE                         R4 K3 [{"paneSize"}]
        8 GETTABLEKS                       R5 R1 K4 ["AbsoluteSize"]
       10 SETTABLEKS                       R5 R4 K2 ["paneSize"]
       12 NAMECALL                         R2 R0 K5 ["setState"]
       14 CALL                             R2 2 0
       15 LOADK                            R4 K4 ["AbsoluteSize"]
       16 NAMECALL                         R2 R1 K6 ["GetPropertyChangedSignal"]
       18 CALL                             R2 2 1
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 NAMECALL                         R2 R2 K7 ["Connect"]
       24 CALL                             R2 2 1
       25 SETTABLEKS                       R2 R0 K8 ["onPaneSizeChanged"]
       27 RETURN                           R0 0

PROTO_14:
        0 NAMECALL                         R1 R0 K0 ["initRef"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["onPaneSizeChanged"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["onPaneSizeChanged"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["onPaneSizeChanged"]
       11 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["ref"]
        2 GETTABLEKS                       R1 R2 K1 ["current"]
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETTABLEKS                       R1 R0 K2 ["onPaneSizeChanged"]
        7 JUMPIF                           R1 ; [+3]
        8 NAMECALL                         R1 R0 K3 ["initRef"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 NEWTABLE                         R4 1 1
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K3 ["createElement"]
       11 GETUPVAL                         R6 1
       12 DUPTABLE                         R7 K11 [{"Text", "Size", "BackgroundTransparency", "TextWrapped", "TextProps", "LinkMap", "HorizontalAlignment"}]
       13 LOADK                            R10 K12 ["InitialFlow"]
       14 LOADK                            R11 K13 ["InProgress"]
       15 DUPTABLE                         R12 K15 [{"experienceName"}]
       16 LOADB                            R15 0
       17 NAMECALL                         R13 R0 K16 ["getGameName"]
       19 CALL                             R13 2 1
       20 SETTABLEKS                       R13 R12 K14 ["experienceName"]
       22 NAMECALL                         R8 R3 K17 ["getText"]
       24 CALL                             R8 4 1
       25 SETTABLEKS                       R8 R7 K4 ["Text"]
       27 GETIMPORT                        R8 K20 [UDim2.new]
       29 LOADN                            R9 1
       30 LOADN                            R10 0
       31 LOADN                            R11 0
       32 GETUPVAL                         R13 2
       33 GETTABLEKS                       R12 R13 K21 ["getTextHeight"]
       35 LOADK                            R15 K12 ["InitialFlow"]
       36 LOADK                            R16 K13 ["InProgress"]
       37 DUPTABLE                         R17 K15 [{"experienceName"}]
       38 LOADB                            R20 0
       39 NAMECALL                         R18 R0 K16 ["getGameName"]
       41 CALL                             R18 2 1
       42 SETTABLEKS                       R18 R17 K14 ["experienceName"]
       44 NAMECALL                         R13 R3 K17 ["getText"]
       46 CALL                             R13 4 1
       47 GETTABLEKS                       R14 R2 K22 ["TextSize"]
       49 GETTABLEKS                       R15 R2 K23 ["Font"]
       51 CALL                             R12 3 -1
       52 CALL                             R8 -1 1
       53 SETTABLEKS                       R8 R7 K5 ["Size"]
       55 LOADN                            R8 1
       56 SETTABLEKS                       R8 R7 K6 ["BackgroundTransparency"]
       58 LOADB                            R8 1
       59 SETTABLEKS                       R8 R7 K7 ["TextWrapped"]
       61 DUPTABLE                         R8 K26 [{"TextSize", "Font", "RichText", "TextXAlignment"}]
       62 GETTABLEKS                       R9 R2 K22 ["TextSize"]
       64 SETTABLEKS                       R9 R8 K22 ["TextSize"]
       66 GETTABLEKS                       R9 R2 K23 ["Font"]
       68 SETTABLEKS                       R9 R8 K23 ["Font"]
       70 LOADB                            R9 1
       71 SETTABLEKS                       R9 R8 K24 ["RichText"]
       73 GETIMPORT                        R9 K29 [Enum.TextXAlignment.Left]
       75 SETTABLEKS                       R9 R8 K25 ["TextXAlignment"]
       77 SETTABLEKS                       R8 R7 K8 ["TextProps"]
       79 NEWTABLE                         R8 0 0
       81 SETTABLEKS                       R8 R7 K9 ["LinkMap"]
       83 GETIMPORT                        R8 K30 [Enum.HorizontalAlignment.Left]
       85 SETTABLEKS                       R8 R7 K10 ["HorizontalAlignment"]
       87 CALL                             R5 2 1
       88 SETLIST                          R4 R5 1 [1]
       90 GETUPVAL                         R7 0
       91 GETTABLEKS                       R6 R7 K3 ["createElement"]
       93 GETUPVAL                         R7 3
       94 DUPTABLE                         R8 K34 [{"Padding", "Size", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
       95 DUPTABLE                         R9 K36 [{"Top"}]
       96 GETTABLEKS                       R10 R2 K37 ["LoadingIndicatorPadding"]
       98 SETTABLEKS                       R10 R9 K35 ["Top"]
      100 SETTABLEKS                       R9 R8 K31 ["Padding"]
      102 GETIMPORT                        R9 K20 [UDim2.new]
      104 LOADN                            R10 1
      105 LOADN                            R11 0
      106 LOADN                            R12 0
      107 GETTABLEKS                       R14 R2 K38 ["LoadingIndicatorHeight"]
      109 GETTABLEKS                       R15 R2 K37 ["LoadingIndicatorPadding"]
      111 ADD                              R13 R14 R15
      112 CALL                             R9 4 1
      113 SETTABLEKS                       R9 R8 K5 ["Size"]
      115 GETIMPORT                        R9 K41 [Enum.FillDirection.Vertical]
      117 SETTABLEKS                       R9 R8 K32 ["Layout"]
      119 GETIMPORT                        R9 K43 [Enum.HorizontalAlignment.Center]
      121 SETTABLEKS                       R9 R8 K10 ["HorizontalAlignment"]
      123 GETIMPORT                        R9 K44 [Enum.VerticalAlignment.Top]
      125 SETTABLEKS                       R9 R8 K33 ["VerticalAlignment"]
      127 DUPTABLE                         R9 K46 [{"LoadingIndicator"}]
      128 GETUPVAL                         R11 0
      129 GETTABLEKS                       R10 R11 K3 ["createElement"]
      131 GETUPVAL                         R11 4
      132 CALL                             R10 1 1
      133 SETTABLEKS                       R10 R9 K45 ["LoadingIndicator"]
      135 CALL                             R6 3 1
      136 SETTABLEKS                       R6 R4 K47 ["LoadingIndicatorPane"]
      138 RETURN                           R4 1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R0 K3 ["state"]
        8 GETTABLEKS                       R5 R4 K4 ["convertedExperience"]
       10 FASTCALL2K                       ASSERT R5 K5 ; [+5]
       12 MOVE                             R7 R5
       13 LOADK                            R8 K5 ["Converted experience should be set"]
       14 GETIMPORT                        R6 K7 [assert]
       16 CALL                             R6 2 0
       17 LOADK                            R8 K8 ["InitialFlow"]
       18 LOADK                            R9 K9 ["Confirmation"]
       19 DUPTABLE                         R10 K12 [{"experienceNameR15Font", "date"}]
       20 LOADK                            R12 K13 ["<font color = \"%*\"> %*_R15 </font>"]
       21 GETTABLEKS                       R14 R2 K14 ["ConfirmationExperienceNameColor"]
       23 NAMECALL                         R15 R0 K15 ["getGameName"]
       25 CALL                             R15 1 1
       26 NAMECALL                         R12 R12 K16 ["format"]
       28 CALL                             R12 3 1
       29 MOVE                             R11 R12
       30 SETTABLEKS                       R11 R10 K10 ["experienceNameR15Font"]
       32 GETTABLEKS                       R11 R0 K17 ["gameCreatedDate"]
       34 SETTABLEKS                       R11 R10 K11 ["date"]
       36 NAMECALL                         R6 R3 K18 ["getText"]
       38 CALL                             R6 4 1
       39 GETUPVAL                         R8 0
       40 GETTABLEKS                       R7 R8 K19 ["new"]
       42 CALL                             R7 0 1
       43 DUPTABLE                         R8 K24 [{"CompleteLabel", "ConfirmationLabel", "OpenButtonPane", "CreateNewCopyButtonPane"}]
       44 GETUPVAL                         R10 1
       45 GETTABLEKS                       R9 R10 K25 ["createElement"]
       47 GETUPVAL                         R10 2
       48 DUPTABLE                         R11 K34 [{"LayoutOrder", "Text", "Size", "BackgroundTransparency", "TextWrapped", "TextProps", "LinkMap", "HorizontalAlignment"}]
       49 NAMECALL                         R12 R7 K35 ["getNextOrder"]
       51 CALL                             R12 1 1
       52 SETTABLEKS                       R12 R11 K26 ["LayoutOrder"]
       54 LOADK                            R14 K8 ["InitialFlow"]
       55 LOADK                            R15 K36 ["Ready"]
       56 DUPTABLE                         R16 K38 [{"experienceName"}]
       57 GETTABLEKS                       R17 R5 K39 ["name"]
       59 SETTABLEKS                       R17 R16 K37 ["experienceName"]
       61 NAMECALL                         R12 R3 K18 ["getText"]
       63 CALL                             R12 4 1
       64 SETTABLEKS                       R12 R11 K27 ["Text"]
       66 GETIMPORT                        R12 K41 [UDim2.new]
       68 LOADN                            R13 1
       69 LOADN                            R14 0
       70 LOADN                            R15 0
       71 GETUPVAL                         R17 3
       72 GETTABLEKS                       R16 R17 K42 ["getTextHeight"]
       74 LOADK                            R19 K8 ["InitialFlow"]
       75 LOADK                            R20 K36 ["Ready"]
       76 DUPTABLE                         R21 K38 [{"experienceName"}]
       77 GETTABLEKS                       R22 R5 K39 ["name"]
       79 SETTABLEKS                       R22 R21 K37 ["experienceName"]
       81 NAMECALL                         R17 R3 K18 ["getText"]
       83 CALL                             R17 4 1
       84 GETTABLEKS                       R18 R2 K43 ["TextSize"]
       86 GETTABLEKS                       R19 R2 K44 ["Font"]
       88 CALL                             R16 3 -1
       89 CALL                             R12 -1 1
       90 SETTABLEKS                       R12 R11 K28 ["Size"]
       92 LOADN                            R12 1
       93 SETTABLEKS                       R12 R11 K29 ["BackgroundTransparency"]
       95 LOADB                            R12 1
       96 SETTABLEKS                       R12 R11 K30 ["TextWrapped"]
       98 DUPTABLE                         R12 K47 [{"TextSize", "Font", "RichText", "TextXAlignment"}]
       99 GETTABLEKS                       R13 R2 K48 ["ReadyTextSize"]
      101 SETTABLEKS                       R13 R12 K43 ["TextSize"]
      103 GETTABLEKS                       R13 R2 K44 ["Font"]
      105 SETTABLEKS                       R13 R12 K44 ["Font"]
      107 LOADB                            R13 1
      108 SETTABLEKS                       R13 R12 K45 ["RichText"]
      110 GETIMPORT                        R13 K51 [Enum.TextXAlignment.Left]
      112 SETTABLEKS                       R13 R12 K46 ["TextXAlignment"]
      114 SETTABLEKS                       R12 R11 K31 ["TextProps"]
      116 NEWTABLE                         R12 0 0
      118 SETTABLEKS                       R12 R11 K32 ["LinkMap"]
      120 GETIMPORT                        R12 K52 [Enum.HorizontalAlignment.Left]
      122 SETTABLEKS                       R12 R11 K33 ["HorizontalAlignment"]
      124 CALL                             R9 2 1
      125 SETTABLEKS                       R9 R8 K20 ["CompleteLabel"]
      127 GETUPVAL                         R10 1
      128 GETTABLEKS                       R9 R10 K25 ["createElement"]
      130 GETUPVAL                         R10 4
      131 DUPTABLE                         R11 K54 [{"LayoutOrder", "Text", "Size", "BackgroundTransparency", "TextWrapped", "TextSize", "Font", "TextXAlignment", "TextYAlignment", "RichText"}]
      132 NAMECALL                         R12 R7 K35 ["getNextOrder"]
      134 CALL                             R12 1 1
      135 SETTABLEKS                       R12 R11 K26 ["LayoutOrder"]
      137 SETTABLEKS                       R6 R11 K27 ["Text"]
      139 GETIMPORT                        R12 K41 [UDim2.new]
      141 LOADN                            R13 1
      142 LOADN                            R14 0
      143 LOADN                            R15 0
      144 GETTABLEKS                       R17 R2 K55 ["ConfirmationLabelYPadding"]
      146 GETUPVAL                         R19 3
      147 GETTABLEKS                       R18 R19 K42 ["getTextHeight"]
      149 MOVE                             R19 R6
      150 GETTABLEKS                       R20 R2 K43 ["TextSize"]
      152 GETTABLEKS                       R21 R2 K44 ["Font"]
      154 CALL                             R18 3 1
      155 MUL                              R16 R17 R18
      156 CALL                             R12 4 1
      157 SETTABLEKS                       R12 R11 K28 ["Size"]
      159 LOADN                            R12 1
      160 SETTABLEKS                       R12 R11 K29 ["BackgroundTransparency"]
      162 LOADB                            R12 1
      163 SETTABLEKS                       R12 R11 K30 ["TextWrapped"]
      165 GETTABLEKS                       R12 R2 K43 ["TextSize"]
      167 SETTABLEKS                       R12 R11 K43 ["TextSize"]
      169 GETTABLEKS                       R12 R2 K44 ["Font"]
      171 SETTABLEKS                       R12 R11 K44 ["Font"]
      173 GETIMPORT                        R12 K51 [Enum.TextXAlignment.Left]
      175 SETTABLEKS                       R12 R11 K46 ["TextXAlignment"]
      177 GETIMPORT                        R12 K57 [Enum.TextYAlignment.Center]
      179 SETTABLEKS                       R12 R11 K53 ["TextYAlignment"]
      181 LOADB                            R12 1
      182 SETTABLEKS                       R12 R11 K45 ["RichText"]
      184 CALL                             R9 2 1
      185 SETTABLEKS                       R9 R8 K21 ["ConfirmationLabel"]
      187 GETUPVAL                         R10 1
      188 GETTABLEKS                       R9 R10 K25 ["createElement"]
      190 GETUPVAL                         R10 5
      191 DUPTABLE                         R11 K61 [{"Size", "LayoutOrder", "BackgroundTransparency", "HorizontalAlignment", "Layout", "VerticalAlignment", "Spacing"}]
      192 GETIMPORT                        R12 K41 [UDim2.new]
      194 LOADN                            R13 1
      195 LOADN                            R14 0
      196 LOADN                            R15 0
      197 GETUPVAL                         R17 3
      198 GETTABLEKS                       R16 R17 K42 ["getTextHeight"]
      200 LOADK                            R19 K8 ["InitialFlow"]
      201 LOADK                            R20 K62 ["OpenR15Copy"]
      202 NAMECALL                         R17 R3 K18 ["getText"]
      204 CALL                             R17 3 1
      205 GETTABLEKS                       R18 R2 K43 ["TextSize"]
      207 GETTABLEKS                       R19 R2 K44 ["Font"]
      209 GETTABLEKS                       R20 R2 K63 ["ButtonPanePadding"]
      211 CALL                             R16 4 -1
      212 CALL                             R12 -1 1
      213 SETTABLEKS                       R12 R11 K28 ["Size"]
      215 NAMECALL                         R12 R7 K35 ["getNextOrder"]
      217 CALL                             R12 1 1
      218 SETTABLEKS                       R12 R11 K26 ["LayoutOrder"]
      220 LOADN                            R12 1
      221 SETTABLEKS                       R12 R11 K29 ["BackgroundTransparency"]
      223 GETIMPORT                        R12 K65 [Enum.HorizontalAlignment.Right]
      225 SETTABLEKS                       R12 R11 K33 ["HorizontalAlignment"]
      227 GETIMPORT                        R12 K68 [Enum.FillDirection.Horizontal]
      229 SETTABLEKS                       R12 R11 K58 ["Layout"]
      231 GETIMPORT                        R12 K69 [Enum.VerticalAlignment.Center]
      233 SETTABLEKS                       R12 R11 K59 ["VerticalAlignment"]
      235 GETTABLEKS                       R12 R2 K70 ["OpenPaneButtonsSpaceing"]
      237 SETTABLEKS                       R12 R11 K60 ["Spacing"]
      239 DUPTABLE                         R12 K73 [{"CreateNewCopyButton", "OpenButton"}]
      240 GETTABLEKS                       R14 R0 K74 ["hasCreatedCopy"]
      242 JUMPIFNOT                        R14 ; [+2]
      243 LOADNIL                          R13
      244 JUMP                             ; [+42]
      245 GETUPVAL                         R14 1
      246 GETTABLEKS                       R13 R14 K25 ["createElement"]
      248 GETUPVAL                         R14 6
      249 DUPTABLE                         R15 K77 [{"Size", "Text", "OnClick", "Style", "LayoutOrder"}]
      250 GETUPVAL                         R17 3
      251 GETTABLEKS                       R16 R17 K78 ["getTextSize"]
      253 LOADK                            R19 K8 ["InitialFlow"]
      254 LOADK                            R20 K79 ["CreateNewR15Copy"]
      255 NAMECALL                         R17 R3 K18 ["getText"]
      257 CALL                             R17 3 1
      258 GETTABLEKS                       R18 R2 K43 ["TextSize"]
      260 GETTABLEKS                       R19 R2 K44 ["Font"]
      262 GETTABLEKS                       R20 R2 K80 ["ButtonPadding"]
      264 CALL                             R16 4 1
      265 SETTABLEKS                       R16 R15 K28 ["Size"]
      267 LOADK                            R18 K8 ["InitialFlow"]
      268 LOADK                            R19 K79 ["CreateNewR15Copy"]
      269 NAMECALL                         R16 R3 K18 ["getText"]
      271 CALL                             R16 3 1
      272 SETTABLEKS                       R16 R15 K27 ["Text"]
      274 GETTABLEKS                       R16 R0 K81 ["createNewExperience"]
      276 SETTABLEKS                       R16 R15 K75 ["OnClick"]
      278 LOADK                            R16 K82 ["Round"]
      279 SETTABLEKS                       R16 R15 K76 ["Style"]
      281 NAMECALL                         R16 R7 K35 ["getNextOrder"]
      283 CALL                             R16 1 1
      284 SETTABLEKS                       R16 R15 K26 ["LayoutOrder"]
      286 CALL                             R13 2 1
      287 SETTABLEKS                       R13 R12 K71 ["CreateNewCopyButton"]
      289 GETUPVAL                         R14 1
      290 GETTABLEKS                       R13 R14 K25 ["createElement"]
      292 GETUPVAL                         R14 6
      293 DUPTABLE                         R15 K83 [{"Size", "Text", "OnClick", "Style"}]
      294 GETUPVAL                         R17 3
      295 GETTABLEKS                       R16 R17 K78 ["getTextSize"]
      297 LOADK                            R19 K8 ["InitialFlow"]
      298 LOADK                            R20 K62 ["OpenR15Copy"]
      299 NAMECALL                         R17 R3 K18 ["getText"]
      301 CALL                             R17 3 1
      302 GETTABLEKS                       R18 R2 K43 ["TextSize"]
      304 GETTABLEKS                       R19 R2 K44 ["Font"]
      306 GETTABLEKS                       R20 R2 K80 ["ButtonPadding"]
      308 CALL                             R16 4 1
      309 SETTABLEKS                       R16 R15 K28 ["Size"]
      311 LOADK                            R18 K8 ["InitialFlow"]
      312 LOADK                            R19 K62 ["OpenR15Copy"]
      313 NAMECALL                         R16 R3 K18 ["getText"]
      315 CALL                             R16 3 1
      316 SETTABLEKS                       R16 R15 K27 ["Text"]
      318 GETTABLEKS                       R16 R0 K84 ["openExperience"]
      320 SETTABLEKS                       R16 R15 K75 ["OnClick"]
      322 LOADK                            R16 K85 ["RoundPrimary"]
      323 SETTABLEKS                       R16 R15 K76 ["Style"]
      325 CALL                             R13 2 1
      326 SETTABLEKS                       R13 R12 K72 ["OpenButton"]
      328 CALL                             R9 3 1
      329 SETTABLEKS                       R9 R8 K22 ["OpenButtonPane"]
      331 GETTABLEKS                       R10 R0 K74 ["hasCreatedCopy"]
      333 JUMPIFNOT                        R10 ; [+2]
      334 LOADNIL                          R9
      335 JUMP                             ; [+89]
      336 GETUPVAL                         R10 1
      337 GETTABLEKS                       R9 R10 K25 ["createElement"]
      339 GETUPVAL                         R10 5
      340 DUPTABLE                         R11 K86 [{"Size", "LayoutOrder", "BackgroundTransparency", "HorizontalAlignment", "Layout", "VerticalAlignment"}]
      341 GETIMPORT                        R12 K41 [UDim2.new]
      343 LOADN                            R13 1
      344 LOADN                            R14 0
      345 LOADN                            R15 0
      346 GETUPVAL                         R17 3
      347 GETTABLEKS                       R16 R17 K42 ["getTextHeight"]
      349 LOADK                            R19 K8 ["InitialFlow"]
      350 LOADK                            R20 K79 ["CreateNewR15Copy"]
      351 NAMECALL                         R17 R3 K18 ["getText"]
      353 CALL                             R17 3 1
      354 GETTABLEKS                       R18 R2 K43 ["TextSize"]
      356 GETTABLEKS                       R19 R2 K44 ["Font"]
      358 GETTABLEKS                       R20 R2 K63 ["ButtonPanePadding"]
      360 CALL                             R16 4 -1
      361 CALL                             R12 -1 1
      362 SETTABLEKS                       R12 R11 K28 ["Size"]
      364 NAMECALL                         R12 R7 K35 ["getNextOrder"]
      366 CALL                             R12 1 1
      367 SETTABLEKS                       R12 R11 K26 ["LayoutOrder"]
      369 LOADN                            R12 1
      370 SETTABLEKS                       R12 R11 K29 ["BackgroundTransparency"]
      372 GETIMPORT                        R12 K65 [Enum.HorizontalAlignment.Right]
      374 SETTABLEKS                       R12 R11 K33 ["HorizontalAlignment"]
      376 GETIMPORT                        R12 K68 [Enum.FillDirection.Horizontal]
      378 SETTABLEKS                       R12 R11 K58 ["Layout"]
      380 GETIMPORT                        R12 K69 [Enum.VerticalAlignment.Center]
      382 SETTABLEKS                       R12 R11 K59 ["VerticalAlignment"]
      384 DUPTABLE                         R12 K87 [{"CreateNewCopyButton"}]
      385 GETUPVAL                         R14 1
      386 GETTABLEKS                       R13 R14 K25 ["createElement"]
      388 GETUPVAL                         R14 6
      389 DUPTABLE                         R15 K83 [{"Size", "Text", "OnClick", "Style"}]
      390 GETUPVAL                         R17 3
      391 GETTABLEKS                       R16 R17 K78 ["getTextSize"]
      393 LOADK                            R19 K8 ["InitialFlow"]
      394 LOADK                            R20 K79 ["CreateNewR15Copy"]
      395 NAMECALL                         R17 R3 K18 ["getText"]
      397 CALL                             R17 3 1
      398 GETTABLEKS                       R18 R2 K43 ["TextSize"]
      400 GETTABLEKS                       R19 R2 K44 ["Font"]
      402 GETTABLEKS                       R20 R2 K80 ["ButtonPadding"]
      404 CALL                             R16 4 1
      405 SETTABLEKS                       R16 R15 K28 ["Size"]
      407 LOADK                            R18 K8 ["InitialFlow"]
      408 LOADK                            R19 K79 ["CreateNewR15Copy"]
      409 NAMECALL                         R16 R3 K18 ["getText"]
      411 CALL                             R16 3 1
      412 SETTABLEKS                       R16 R15 K27 ["Text"]
      414 GETTABLEKS                       R16 R0 K81 ["createNewExperience"]
      416 SETTABLEKS                       R16 R15 K75 ["OnClick"]
      418 LOADK                            R16 K85 ["RoundPrimary"]
      419 SETTABLEKS                       R16 R15 K76 ["Style"]
      421 CALL                             R13 2 1
      422 SETTABLEKS                       R13 R12 K71 ["CreateNewCopyButton"]
      424 CALL                             R9 3 1
      425 SETTABLEKS                       R9 R8 K23 ["CreateNewCopyButtonPane"]
      427 RETURN                           R8 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R4 K0 [""]
        3 NAMECALL                         R2 R2 K1 ["GetDocumentationUrl"]
        5 CALL                             R2 2 -1
        6 NAMECALL                         R0 R0 K2 ["OpenBrowserWindow"]
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["new"]
        9 CALL                             R4 0 1
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 LOADNIL                          R7
       13 NAMECALL                         R10 R0 K4 ["isWaitingForInitialData"]
       15 CALL                             R10 1 1
       16 NOT                              R9 R10
       17 FASTCALL1                        ASSERT R9 ; [+2]
       18 GETIMPORT                        R8 K6 [assert]
       20 CALL                             R8 1 0
       21 NAMECALL                         R8 R0 K7 ["isLocalPlace"]
       23 CALL                             R8 1 1
       24 JUMPIFNOT                        R8 ; [+19]
       25 LOADK                            R10 K8 ["InitialFlow"]
       26 LOADK                            R11 K9 ["PlacefileExplanation"]
       27 NAMECALL                         R8 R3 K10 ["getText"]
       29 CALL                             R8 3 1
       30 MOVE                             R5 R8
       31 LOADK                            R10 K8 ["InitialFlow"]
       32 LOADK                            R11 K11 ["PlacefileInstructions"]
       33 NAMECALL                         R8 R3 K10 ["getText"]
       35 CALL                             R8 3 1
       36 MOVE                             R6 R8
       37 LOADK                            R10 K8 ["InitialFlow"]
       38 LOADK                            R11 K12 ["PlacefileGetStartedButton"]
       39 NAMECALL                         R8 R3 K10 ["getText"]
       41 CALL                             R8 3 1
       42 MOVE                             R7 R8
       43 JUMP                             ; [+54]
       44 NAMECALL                         R8 R0 K13 ["isPublishedR6Experience"]
       46 CALL                             R8 1 1
       47 JUMPIFNOT                        R8 ; [+25]
       48 LOADK                            R10 K8 ["InitialFlow"]
       49 LOADK                            R11 K14 ["ExperienceExplanationR6"]
       50 DUPTABLE                         R12 K16 [{"experienceName"}]
       51 NAMECALL                         R13 R0 K17 ["getGameName"]
       53 CALL                             R13 1 1
       54 SETTABLEKS                       R13 R12 K15 ["experienceName"]
       56 NAMECALL                         R8 R3 K10 ["getText"]
       58 CALL                             R8 4 1
       59 MOVE                             R5 R8
       60 LOADK                            R10 K8 ["InitialFlow"]
       61 LOADK                            R11 K18 ["ExperienceInstructionsR6"]
       62 NAMECALL                         R8 R3 K10 ["getText"]
       64 CALL                             R8 3 1
       65 MOVE                             R6 R8
       66 LOADK                            R10 K8 ["InitialFlow"]
       67 LOADK                            R11 K19 ["ExperienceGetStartedButtonR6"]
       68 NAMECALL                         R8 R3 K10 ["getText"]
       70 CALL                             R8 3 1
       71 MOVE                             R7 R8
       72 JUMP                             ; [+25]
       73 NAMECALL                         R9 R0 K20 ["isPublishedR15PlayerChoiceExperience"]
       75 CALL                             R9 1 -1
       76 FASTCALL                         ASSERT ; [+2]
       77 GETIMPORT                        R8 K6 [assert]
       79 CALL                             R8 -1 0
       80 LOADK                            R10 K8 ["InitialFlow"]
       81 LOADK                            R11 K21 ["ExperienceExplanationR15"]
       82 NAMECALL                         R8 R3 K10 ["getText"]
       84 CALL                             R8 3 1
       85 MOVE                             R5 R8
       86 LOADK                            R10 K8 ["InitialFlow"]
       87 LOADK                            R11 K22 ["ExperienceInstructionsR15"]
       88 NAMECALL                         R8 R3 K10 ["getText"]
       90 CALL                             R8 3 1
       91 MOVE                             R6 R8
       92 LOADK                            R10 K8 ["InitialFlow"]
       93 LOADK                            R11 K23 ["ExperienceGetStartedButtonR15"]
       94 NAMECALL                         R8 R3 K10 ["getText"]
       96 CALL                             R8 3 1
       97 MOVE                             R7 R8
       98 GETUPVAL                         R8 1
       99 JUMPIF                           R8 ; [+7]
      100 GETIMPORT                        R8 K26 [string.gsub]
      102 MOVE                             R9 R5
      103 LOADK                            R10 K27 ["%[link1%]"]
      104 LOADK                            R11 K28 [""]
      105 CALL                             R8 3 1
      106 MOVE                             R5 R8
      107 DUPTABLE                         R8 K34 [{"ThumbnailPane", "ExplanationLabelR15Only", "ExplanationLabel", "InstructionLabel", "GetStartedButtonPane"}]
      108 GETUPVAL                         R10 2
      109 GETTABLEKS                       R9 R10 K35 ["createElement"]
      111 GETUPVAL                         R10 3
      112 DUPTABLE                         R11 K43 [{"Size", "LayoutOrder", "BackgroundTransparency", "Spacing", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
      113 GETIMPORT                        R12 K45 [UDim2.new]
      115 LOADN                            R13 1
      116 LOADN                            R14 0
      117 LOADN                            R15 0
      118 GETTABLEKS                       R16 R2 K46 ["ThumbnailPanelHeight"]
      120 CALL                             R12 4 1
      121 SETTABLEKS                       R12 R11 K36 ["Size"]
      123 NAMECALL                         R12 R4 K47 ["getNextOrder"]
      125 CALL                             R12 1 1
      126 SETTABLEKS                       R12 R11 K37 ["LayoutOrder"]
      128 LOADN                            R12 1
      129 SETTABLEKS                       R12 R11 K38 ["BackgroundTransparency"]
      131 GETTABLEKS                       R12 R2 K48 ["ThumbnailPanelVerticalTextSpacing"]
      133 SETTABLEKS                       R12 R11 K39 ["Spacing"]
      135 GETIMPORT                        R12 K52 [Enum.FillDirection.Vertical]
      137 SETTABLEKS                       R12 R11 K40 ["Layout"]
      139 GETIMPORT                        R12 K54 [Enum.HorizontalAlignment.Left]
      141 SETTABLEKS                       R12 R11 K41 ["HorizontalAlignment"]
      143 GETIMPORT                        R12 K56 [Enum.VerticalAlignment.Top]
      145 SETTABLEKS                       R12 R11 K42 ["VerticalAlignment"]
      147 DUPTABLE                         R12 K59 [{"ImagePane", "ThumbnailSubTextLabel"}]
      148 GETUPVAL                         R14 2
      149 GETTABLEKS                       R13 R14 K35 ["createElement"]
      151 GETUPVAL                         R14 3
      152 DUPTABLE                         R15 K61 [{"Size", "LayoutOrder", "BackgroundColor", "BackgroundTransparency"}]
      153 GETIMPORT                        R16 K45 [UDim2.new]
      155 LOADN                            R17 1
      156 LOADN                            R18 0
      157 LOADN                            R19 0
      158 GETTABLEKS                       R20 R2 K62 ["ThumbnailHeight"]
      160 CALL                             R16 4 1
      161 SETTABLEKS                       R16 R15 K36 ["Size"]
      163 NAMECALL                         R16 R4 K47 ["getNextOrder"]
      165 CALL                             R16 1 1
      166 SETTABLEKS                       R16 R15 K37 ["LayoutOrder"]
      168 GETIMPORT                        R16 K65 [Color3.fromRGB]
      170 LOADN                            R17 0
      171 LOADN                            R18 0
      172 LOADN                            R19 0
      173 CALL                             R16 3 1
      174 SETTABLEKS                       R16 R15 K60 ["BackgroundColor"]
      176 LOADN                            R16 0
      177 SETTABLEKS                       R16 R15 K38 ["BackgroundTransparency"]
      179 NEWTABLE                         R16 0 1
      181 GETUPVAL                         R18 2
      182 GETTABLEKS                       R17 R18 K35 ["createElement"]
      184 LOADK                            R18 K66 ["VideoFrame"]
      185 DUPTABLE                         R19 K70 [{"Video", "Size", "Looped", "Playing"}]
      186 LOADK                            R20 K71 ["rbxasset://textures/R15Migrator/start-page-anim.mp4"]
      187 SETTABLEKS                       R20 R19 K67 ["Video"]
      189 GETIMPORT                        R20 K45 [UDim2.new]
      191 LOADN                            R21 1
      192 LOADN                            R22 0
      193 LOADN                            R23 1
      194 LOADN                            R24 0
      195 CALL                             R20 4 1
      196 SETTABLEKS                       R20 R19 K36 ["Size"]
      198 LOADB                            R20 1
      199 SETTABLEKS                       R20 R19 K68 ["Looped"]
      201 LOADB                            R20 1
      202 SETTABLEKS                       R20 R19 K69 ["Playing"]
      204 CALL                             R17 2 -1
      205 SETLIST                          R16 R17 -1 [1]
      207 CALL                             R13 3 1
      208 SETTABLEKS                       R13 R12 K57 ["ImagePane"]
      210 GETUPVAL                         R14 2
      211 GETTABLEKS                       R13 R14 K35 ["createElement"]
      213 GETUPVAL                         R14 4
      214 DUPTABLE                         R15 K76 [{"LayoutOrder", "Text", "Size", "BackgroundTransparency", "TextWrapped", "TextProps", "LinkMap", "HorizontalAlignment"}]
      215 NAMECALL                         R16 R4 K47 ["getNextOrder"]
      217 CALL                             R16 1 1
      218 SETTABLEKS                       R16 R15 K37 ["LayoutOrder"]
      220 LOADK                            R18 K8 ["InitialFlow"]
      221 LOADK                            R19 K77 ["ThumbnailSubText"]
      222 NAMECALL                         R16 R3 K10 ["getText"]
      224 CALL                             R16 3 1
      225 SETTABLEKS                       R16 R15 K72 ["Text"]
      227 GETIMPORT                        R16 K45 [UDim2.new]
      229 LOADN                            R17 1
      230 LOADN                            R18 0
      231 LOADN                            R19 0
      232 GETUPVAL                         R21 5
      233 GETTABLEKS                       R20 R21 K78 ["getTextHeight"]
      235 LOADK                            R23 K8 ["InitialFlow"]
      236 LOADK                            R24 K77 ["ThumbnailSubText"]
      237 NAMECALL                         R21 R3 K10 ["getText"]
      239 CALL                             R21 3 1
      240 GETTABLEKS                       R22 R2 K79 ["SubTextSize"]
      242 GETTABLEKS                       R23 R2 K80 ["Font"]
      244 CALL                             R20 3 -1
      245 CALL                             R16 -1 1
      246 SETTABLEKS                       R16 R15 K36 ["Size"]
      248 LOADN                            R16 1
      249 SETTABLEKS                       R16 R15 K38 ["BackgroundTransparency"]
      251 LOADB                            R16 1
      252 SETTABLEKS                       R16 R15 K73 ["TextWrapped"]
      254 DUPTABLE                         R16 K83 [{"TextSize", "Font", "TextXAlignment"}]
      255 GETTABLEKS                       R17 R2 K79 ["SubTextSize"]
      257 SETTABLEKS                       R17 R16 K81 ["TextSize"]
      259 GETTABLEKS                       R17 R2 K80 ["Font"]
      261 SETTABLEKS                       R17 R16 K80 ["Font"]
      263 GETIMPORT                        R17 K84 [Enum.TextXAlignment.Left]
      265 SETTABLEKS                       R17 R16 K82 ["TextXAlignment"]
      267 SETTABLEKS                       R16 R15 K74 ["TextProps"]
      269 NEWTABLE                         R16 0 0
      271 SETTABLEKS                       R16 R15 K75 ["LinkMap"]
      273 GETIMPORT                        R16 K54 [Enum.HorizontalAlignment.Left]
      275 SETTABLEKS                       R16 R15 K41 ["HorizontalAlignment"]
      277 CALL                             R13 2 1
      278 SETTABLEKS                       R13 R12 K58 ["ThumbnailSubTextLabel"]
      280 CALL                             R9 3 1
      281 SETTABLEKS                       R9 R8 K29 ["ThumbnailPane"]
      283 NAMECALL                         R10 R0 K20 ["isPublishedR15PlayerChoiceExperience"]
      285 CALL                             R10 1 1
      286 JUMPIFNOT                        R10 ; [+77]
      287 GETUPVAL                         R10 2
      288 GETTABLEKS                       R9 R10 K35 ["createElement"]
      290 GETUPVAL                         R10 6
      291 DUPTABLE                         R11 K87 [{"LayoutOrder", "Text", "Size", "BackgroundTransparency", "TextWrapped", "TextSize", "Font", "RichText", "TextXAlignment", "TextYAlignment"}]
      292 NAMECALL                         R12 R4 K47 ["getNextOrder"]
      294 CALL                             R12 1 1
      295 SETTABLEKS                       R12 R11 K37 ["LayoutOrder"]
      297 LOADK                            R14 K8 ["InitialFlow"]
      298 LOADK                            R15 K88 ["R15OnlyMessage"]
      299 DUPTABLE                         R16 K16 [{"experienceName"}]
      300 NAMECALL                         R17 R0 K17 ["getGameName"]
      302 CALL                             R17 1 1
      303 SETTABLEKS                       R17 R16 K15 ["experienceName"]
      305 NAMECALL                         R12 R3 K10 ["getText"]
      307 CALL                             R12 4 1
      308 SETTABLEKS                       R12 R11 K72 ["Text"]
      310 GETIMPORT                        R12 K45 [UDim2.new]
      312 LOADN                            R13 1
      313 LOADN                            R14 0
      314 LOADN                            R15 0
      315 GETUPVAL                         R17 5
      316 GETTABLEKS                       R16 R17 K78 ["getTextHeight"]
      318 LOADK                            R19 K8 ["InitialFlow"]
      319 LOADK                            R20 K88 ["R15OnlyMessage"]
      320 DUPTABLE                         R21 K16 [{"experienceName"}]
      321 NAMECALL                         R22 R0 K17 ["getGameName"]
      323 CALL                             R22 1 1
      324 SETTABLEKS                       R22 R21 K15 ["experienceName"]
      326 NAMECALL                         R17 R3 K10 ["getText"]
      328 CALL                             R17 4 1
      329 GETTABLEKS                       R18 R2 K81 ["TextSize"]
      331 GETTABLEKS                       R19 R2 K80 ["Font"]
      333 CALL                             R16 3 -1
      334 CALL                             R12 -1 1
      335 SETTABLEKS                       R12 R11 K36 ["Size"]
      337 LOADN                            R12 1
      338 SETTABLEKS                       R12 R11 K38 ["BackgroundTransparency"]
      340 LOADB                            R12 1
      341 SETTABLEKS                       R12 R11 K73 ["TextWrapped"]
      343 GETTABLEKS                       R12 R2 K81 ["TextSize"]
      345 SETTABLEKS                       R12 R11 K81 ["TextSize"]
      347 GETTABLEKS                       R12 R2 K80 ["Font"]
      349 SETTABLEKS                       R12 R11 K80 ["Font"]
      351 LOADB                            R12 1
      352 SETTABLEKS                       R12 R11 K85 ["RichText"]
      354 GETIMPORT                        R12 K84 [Enum.TextXAlignment.Left]
      356 SETTABLEKS                       R12 R11 K82 ["TextXAlignment"]
      358 GETIMPORT                        R12 K90 [Enum.TextYAlignment.Center]
      360 SETTABLEKS                       R12 R11 K86 ["TextYAlignment"]
      362 CALL                             R9 2 1
      363 JUMP                             ; [+1]
      364 LOADNIL                          R9
      365 SETTABLEKS                       R9 R8 K30 ["ExplanationLabelR15Only"]
      367 GETUPVAL                         R10 2
      368 GETTABLEKS                       R9 R10 K35 ["createElement"]
      370 GETUPVAL                         R10 4
      371 DUPTABLE                         R11 K91 [{"LayoutOrder", "Text", "BackgroundTransparency", "TextWrapped", "TextProps", "LinkMap", "HorizontalAlignment"}]
      372 NAMECALL                         R12 R4 K47 ["getNextOrder"]
      374 CALL                             R12 1 1
      375 SETTABLEKS                       R12 R11 K37 ["LayoutOrder"]
      377 SETTABLEKS                       R5 R11 K72 ["Text"]
      379 LOADN                            R12 1
      380 SETTABLEKS                       R12 R11 K38 ["BackgroundTransparency"]
      382 LOADB                            R12 1
      383 SETTABLEKS                       R12 R11 K73 ["TextWrapped"]
      385 DUPTABLE                         R12 K92 [{"TextSize", "Font", "RichText", "TextXAlignment"}]
      386 GETTABLEKS                       R13 R2 K81 ["TextSize"]
      388 SETTABLEKS                       R13 R12 K81 ["TextSize"]
      390 GETTABLEKS                       R13 R2 K80 ["Font"]
      392 SETTABLEKS                       R13 R12 K80 ["Font"]
      394 LOADB                            R13 1
      395 SETTABLEKS                       R13 R12 K85 ["RichText"]
      397 GETIMPORT                        R13 K84 [Enum.TextXAlignment.Left]
      399 SETTABLEKS                       R13 R12 K82 ["TextXAlignment"]
      401 SETTABLEKS                       R12 R11 K74 ["TextProps"]
      403 NEWTABLE                         R12 1 0
      405 DUPTABLE                         R13 K95 [{"LinkText", "LinkCallback"}]
      406 LOADK                            R16 K96 ["AdapterPane"]
      407 LOADK                            R17 K97 ["LearnMore"]
      408 NAMECALL                         R14 R3 K10 ["getText"]
      410 CALL                             R14 3 1
      411 SETTABLEKS                       R14 R13 K93 ["LinkText"]
      413 DUPCLOSURE                       R14 K98 [PROTO_19]
      414 CAPTURE                          UPVAL U7
      415 CAPTURE                          UPVAL U8
      416 SETTABLEKS                       R14 R13 K94 ["LinkCallback"]
      418 SETTABLEKS                       R13 R12 K99 ["[link1]"]
      420 SETTABLEKS                       R12 R11 K75 ["LinkMap"]
      422 GETIMPORT                        R12 K54 [Enum.HorizontalAlignment.Left]
      424 SETTABLEKS                       R12 R11 K41 ["HorizontalAlignment"]
      426 CALL                             R9 2 1
      427 SETTABLEKS                       R9 R8 K31 ["ExplanationLabel"]
      429 GETUPVAL                         R10 2
      430 GETTABLEKS                       R9 R10 K35 ["createElement"]
      432 GETUPVAL                         R10 4
      433 DUPTABLE                         R11 K91 [{"LayoutOrder", "Text", "BackgroundTransparency", "TextWrapped", "TextProps", "LinkMap", "HorizontalAlignment"}]
      434 NAMECALL                         R12 R4 K47 ["getNextOrder"]
      436 CALL                             R12 1 1
      437 SETTABLEKS                       R12 R11 K37 ["LayoutOrder"]
      439 SETTABLEKS                       R6 R11 K72 ["Text"]
      441 LOADN                            R12 1
      442 SETTABLEKS                       R12 R11 K38 ["BackgroundTransparency"]
      444 LOADB                            R12 1
      445 SETTABLEKS                       R12 R11 K73 ["TextWrapped"]
      447 DUPTABLE                         R12 K83 [{"TextSize", "Font", "TextXAlignment"}]
      448 GETTABLEKS                       R13 R2 K81 ["TextSize"]
      450 SETTABLEKS                       R13 R12 K81 ["TextSize"]
      452 GETTABLEKS                       R13 R2 K80 ["Font"]
      454 SETTABLEKS                       R13 R12 K80 ["Font"]
      456 GETIMPORT                        R13 K84 [Enum.TextXAlignment.Left]
      458 SETTABLEKS                       R13 R12 K82 ["TextXAlignment"]
      460 SETTABLEKS                       R12 R11 K74 ["TextProps"]
      462 NEWTABLE                         R12 0 0
      464 SETTABLEKS                       R12 R11 K75 ["LinkMap"]
      466 GETIMPORT                        R12 K54 [Enum.HorizontalAlignment.Left]
      468 SETTABLEKS                       R12 R11 K41 ["HorizontalAlignment"]
      470 CALL                             R9 2 1
      471 SETTABLEKS                       R9 R8 K32 ["InstructionLabel"]
      473 GETUPVAL                         R10 2
      474 GETTABLEKS                       R9 R10 K35 ["createElement"]
      476 GETUPVAL                         R10 3
      477 DUPTABLE                         R11 K100 [{"Size", "LayoutOrder", "BackgroundTransparency", "HorizontalAlignment", "Layout", "VerticalAlignment"}]
      478 GETIMPORT                        R12 K45 [UDim2.new]
      480 LOADN                            R13 1
      481 LOADN                            R14 0
      482 LOADN                            R15 0
      483 GETUPVAL                         R17 5
      484 GETTABLEKS                       R16 R17 K78 ["getTextHeight"]
      486 MOVE                             R17 R7
      487 GETTABLEKS                       R18 R2 K81 ["TextSize"]
      489 GETTABLEKS                       R19 R2 K80 ["Font"]
      491 GETTABLEKS                       R20 R2 K101 ["ButtonPanePadding"]
      493 CALL                             R16 4 -1
      494 CALL                             R12 -1 1
      495 SETTABLEKS                       R12 R11 K36 ["Size"]
      497 NAMECALL                         R12 R4 K47 ["getNextOrder"]
      499 CALL                             R12 1 1
      500 SETTABLEKS                       R12 R11 K37 ["LayoutOrder"]
      502 LOADN                            R12 1
      503 SETTABLEKS                       R12 R11 K38 ["BackgroundTransparency"]
      505 GETIMPORT                        R12 K103 [Enum.HorizontalAlignment.Right]
      507 SETTABLEKS                       R12 R11 K41 ["HorizontalAlignment"]
      509 GETIMPORT                        R12 K105 [Enum.FillDirection.Horizontal]
      511 SETTABLEKS                       R12 R11 K40 ["Layout"]
      513 GETIMPORT                        R12 K106 [Enum.VerticalAlignment.Center]
      515 SETTABLEKS                       R12 R11 K42 ["VerticalAlignment"]
      517 DUPTABLE                         R12 K108 [{"GetStartedButton"}]
      518 GETUPVAL                         R14 2
      519 GETTABLEKS                       R13 R14 K35 ["createElement"]
      521 GETUPVAL                         R14 9
      522 DUPTABLE                         R15 K111 [{"Size", "Text", "OnClick", "Style"}]
      523 GETUPVAL                         R17 5
      524 GETTABLEKS                       R16 R17 K112 ["getTextSize"]
      526 MOVE                             R17 R7
      527 GETTABLEKS                       R18 R2 K81 ["TextSize"]
      529 GETTABLEKS                       R19 R2 K80 ["Font"]
      531 GETTABLEKS                       R20 R2 K113 ["ButtonPadding"]
      533 CALL                             R16 4 1
      534 SETTABLEKS                       R16 R15 K36 ["Size"]
      536 SETTABLEKS                       R7 R15 K72 ["Text"]
      538 GETTABLEKS                       R16 R0 K114 ["createNewExperience"]
      540 SETTABLEKS                       R16 R15 K109 ["OnClick"]
      542 LOADK                            R16 K115 ["RoundPrimary"]
      543 SETTABLEKS                       R16 R15 K110 ["Style"]
      545 CALL                             R13 2 1
      546 SETTABLEKS                       R13 R12 K107 ["GetStartedButton"]
      548 CALL                             R9 3 1
      549 SETTABLEKS                       R9 R8 K33 ["GetStartedButtonPane"]
      551 RETURN                           R8 1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R1 K1 ["isGettingInitialData"]
        4 GETTABLEKS                       R3 R0 K2 ["props"]
        6 GETTABLEKS                       R4 R3 K3 ["avatarType"]
        8 JUMPIF                           R2 ; [+4]
        9 GETTABLEKS                       R6 R0 K4 ["isExperiencePublished"]
       11 JUMPIFNOT                        R6 ; [+3]
       12 JUMPIF                           R4 ; [+2]
       13 LOADB                            R5 1
       14 RETURN                           R5 1
       15 LOADB                            R5 0
       16 RETURN                           R5 1

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["avatarType"]
        4 NAMECALL                         R5 R0 K2 ["isWaitingForInitialData"]
        6 CALL                             R5 1 1
        7 NOT                              R4 R5
        8 FASTCALL1                        ASSERT R4 ; [+2]
        9 GETIMPORT                        R3 K4 [assert]
       11 CALL                             R3 1 0
       12 GETTABLEKS                       R4 R0 K5 ["isExperiencePublished"]
       14 JUMPIFNOT                        R4 ; [+7]
       15 GETIMPORT                        R4 K9 [Enum.GameAvatarType.R6]
       17 JUMPIFEQ                         R2 R4 ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 RETURN                           R3 1
       22 LOADB                            R3 0
       23 RETURN                           R3 1

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["avatarType"]
        4 NAMECALL                         R5 R0 K2 ["isWaitingForInitialData"]
        6 CALL                             R5 1 1
        7 NOT                              R4 R5
        8 FASTCALL1                        ASSERT R4 ; [+2]
        9 GETIMPORT                        R3 K4 [assert]
       11 CALL                             R3 1 0
       12 GETTABLEKS                       R4 R0 K5 ["isExperiencePublished"]
       14 JUMPIFNOT                        R4 ; [+7]
       15 GETIMPORT                        R4 K9 [Enum.GameAvatarType.R6]
       17 JUMPIFNOTEQ                      R2 R4 ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 RETURN                           R3 1
       22 LOADB                            R3 0
       23 RETURN                           R3 1

PROTO_24:
        0 GETTABLEKS                       R2 R0 K0 ["isExperiencePublished"]
        2 NOT                              R1 R2
        3 RETURN                           R1 1

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R1 K1 ["isConverting"]
        4 GETTABLEKS                       R3 R1 K2 ["convertedExperience"]
        6 GETTABLEKS                       R4 R0 K3 ["props"]
        8 GETTABLEKS                       R5 R4 K4 ["Stylizer"]
       10 LOADNIL                          R6
       11 LOADB                            R7 0
       12 JUMPIFNOT                        R2 ; [+5]
       13 NAMECALL                         R8 R0 K5 ["renderConvertingPanel"]
       15 CALL                             R8 1 1
       16 MOVE                             R6 R8
       17 JUMP                             ; [+15]
       18 JUMPIFNOT                        R3 ; [+6]
       19 LOADB                            R7 1
       20 NAMECALL                         R8 R0 K6 ["renderOpenPanel"]
       22 CALL                             R8 1 1
       23 MOVE                             R6 R8
       24 JUMP                             ; [+8]
       25 NAMECALL                         R8 R0 K7 ["isWaitingForInitialData"]
       27 CALL                             R8 1 1
       28 JUMPIF                           R8 ; [+4]
       29 NAMECALL                         R8 R0 K8 ["renderGetStartedPanel"]
       31 CALL                             R8 1 1
       32 MOVE                             R6 R8
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R8 R9 K9 ["createElement"]
       36 GETUPVAL                         R9 1
       37 NEWTABLE                         R10 4 0
       39 LOADN                            R11 0
       40 SETTABLEKS                       R11 R10 K10 ["BackgroundTransparency"]
       42 GETTABLEKS                       R11 R5 K11 ["BackgroundColor"]
       44 SETTABLEKS                       R11 R10 K11 ["BackgroundColor"]
       46 DUPTABLE                         R11 K13 [{"Top"}]
       47 GETTABLEKS                       R13 R5 K14 ["PanePadding"]
       49 GETTABLEKS                       R12 R13 K12 ["Top"]
       51 SETTABLEKS                       R12 R11 K12 ["Top"]
       53 SETTABLEKS                       R11 R10 K15 ["Padding"]
       55 GETUPVAL                         R12 0
       56 GETTABLEKS                       R11 R12 K16 ["Ref"]
       58 GETTABLEKS                       R12 R0 K17 ["ref"]
       60 SETTABLE                         R12 R10 R11
       61 DUPTABLE                         R11 K20 [{"IconPane", "MainPane"}]
       62 JUMPIFNOT                        R7 ; [+60]
       63 GETUPVAL                         R13 0
       64 GETTABLEKS                       R12 R13 K9 ["createElement"]
       66 GETUPVAL                         R13 1
       67 DUPTABLE                         R14 K22 [{"Size"}]
       68 GETIMPORT                        R15 K25 [UDim2.new]
       70 LOADN                            R16 0
       71 GETTABLEKS                       R20 R1 K27 ["paneSize"]
       73 GETTABLEKS                       R19 R20 K28 ["X"]
       75 GETTABLEKS                       R20 R5 K29 ["Width"]
       77 SUB                              R18 R19 R20
       78 DIVK                             R17 R18 K26 [2]
       79 LOADN                            R18 1
       80 LOADN                            R19 0
       81 CALL                             R15 4 1
       82 SETTABLEKS                       R15 R14 K21 ["Size"]
       84 NEWTABLE                         R15 0 1
       86 GETUPVAL                         R17 0
       87 GETTABLEKS                       R16 R17 K9 ["createElement"]
       89 GETUPVAL                         R17 2
       90 DUPTABLE                         R18 K33 [{"Size", "AnchorPoint", "Position", "BackgroundTransparency", "Image"}]
       91 GETTABLEKS                       R19 R5 K34 ["IconSize"]
       93 SETTABLEKS                       R19 R18 K21 ["Size"]
       95 GETIMPORT                        R19 K36 [Vector2.new]
       97 LOADK                            R20 K37 [0.5]
       98 LOADN                            R21 0
       99 CALL                             R19 2 1
      100 SETTABLEKS                       R19 R18 K30 ["AnchorPoint"]
      102 GETIMPORT                        R19 K25 [UDim2.new]
      104 LOADK                            R20 K37 [0.5]
      105 LOADN                            R21 0
      106 LOADN                            R22 0
      107 LOADN                            R23 0
      108 CALL                             R19 4 1
      109 SETTABLEKS                       R19 R18 K31 ["Position"]
      111 LOADN                            R19 1
      112 SETTABLEKS                       R19 R18 K10 ["BackgroundTransparency"]
      114 GETTABLEKS                       R19 R5 K38 ["CompleteIcon"]
      116 SETTABLEKS                       R19 R18 K32 ["Image"]
      118 CALL                             R16 2 -1
      119 SETLIST                          R15 R16 -1 [1]
      121 CALL                             R12 3 1
      122 JUMP                             ; [+1]
      123 LOADNIL                          R12
      124 SETTABLEKS                       R12 R11 K18 ["IconPane"]
      126 GETUPVAL                         R13 0
      127 GETTABLEKS                       R12 R13 K9 ["createElement"]
      129 GETUPVAL                         R13 1
      130 DUPTABLE                         R14 K43 [{"BackgroundTransparency", "BackgroundColor", "Layout", "HorizontalAlignment", "VerticalAlignment", "Padding", "Spacing"}]
      131 LOADN                            R15 0
      132 SETTABLEKS                       R15 R14 K10 ["BackgroundTransparency"]
      134 GETTABLEKS                       R15 R5 K11 ["BackgroundColor"]
      136 SETTABLEKS                       R15 R14 K11 ["BackgroundColor"]
      138 GETIMPORT                        R15 K47 [Enum.FillDirection.Vertical]
      140 SETTABLEKS                       R15 R14 K39 ["Layout"]
      142 GETIMPORT                        R15 K49 [Enum.HorizontalAlignment.Center]
      144 SETTABLEKS                       R15 R14 K40 ["HorizontalAlignment"]
      146 GETIMPORT                        R15 K50 [Enum.VerticalAlignment.Top]
      148 SETTABLEKS                       R15 R14 K41 ["VerticalAlignment"]
      150 DUPTABLE                         R15 K52 [{"Left"}]
      151 GETTABLEKS                       R17 R5 K14 ["PanePadding"]
      153 GETTABLEKS                       R16 R17 K51 ["Left"]
      155 SETTABLEKS                       R16 R15 K51 ["Left"]
      157 SETTABLEKS                       R15 R14 K15 ["Padding"]
      159 GETTABLEKS                       R15 R5 K42 ["Spacing"]
      161 SETTABLEKS                       R15 R14 K42 ["Spacing"]
      163 DUPTABLE                         R15 K54 [{"ContentPane"}]
      164 GETUPVAL                         R17 0
      165 GETTABLEKS                       R16 R17 K9 ["createElement"]
      167 GETUPVAL                         R17 1
      168 DUPTABLE                         R18 K55 [{"Size", "Spacing", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
      169 GETIMPORT                        R19 K25 [UDim2.new]
      171 LOADN                            R20 0
      172 GETTABLEKS                       R21 R5 K29 ["Width"]
      174 LOADN                            R22 1
      175 LOADN                            R23 0
      176 CALL                             R19 4 1
      177 SETTABLEKS                       R19 R18 K21 ["Size"]
      179 GETTABLEKS                       R19 R5 K56 ["VerticalTextSpacing"]
      181 SETTABLEKS                       R19 R18 K42 ["Spacing"]
      183 GETIMPORT                        R19 K47 [Enum.FillDirection.Vertical]
      185 SETTABLEKS                       R19 R18 K39 ["Layout"]
      187 GETIMPORT                        R19 K57 [Enum.HorizontalAlignment.Left]
      189 SETTABLEKS                       R19 R18 K40 ["HorizontalAlignment"]
      191 GETIMPORT                        R19 K50 [Enum.VerticalAlignment.Top]
      193 SETTABLEKS                       R19 R18 K41 ["VerticalAlignment"]
      195 MOVE                             R19 R6
      196 CALL                             R16 3 1
      197 SETTABLEKS                       R16 R15 K53 ["ContentPane"]
      199 CALL                             R12 3 1
      200 SETTABLEKS                       R12 R11 K19 ["MainPane"]
      202 CALL                             R8 3 -1
      203 RETURN                           R8 -1

PROTO_26:
        0 DUPTABLE                         R1 K1 [{"avatarType"}]
        1 GETTABLEKS                       R2 R0 K2 ["AvatarType"]
        3 SETTABLEKS                       R2 R1 K0 ["avatarType"]
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["GuiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["HttpRbxApiService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["MarketplaceService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["AssetManagerService"]
       22 NAMECALL                         R3 R3 K3 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K8 [script]
       27 LOADK                            R6 K9 ["R15Migrator"]
       28 NAMECALL                         R4 R4 K10 ["FindFirstAncestor"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K12 [require]
       33 GETTABLEKS                       R7 R4 K13 ["Packages"]
       35 GETTABLEKS                       R6 R7 K14 ["Framework"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K12 [require]
       40 GETTABLEKS                       R8 R4 K13 ["Packages"]
       42 GETTABLEKS                       R7 R8 K15 ["Roact"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K12 [require]
       47 GETTABLEKS                       R9 R4 K13 ["Packages"]
       49 GETTABLEKS                       R8 R9 K16 ["RoactRodux"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K12 [require]
       54 GETTABLEKS                       R11 R4 K17 ["Src"]
       56 GETTABLEKS                       R10 R11 K18 ["Util"]
       58 GETTABLEKS                       R9 R10 K19 ["UILayoutHelpers"]
       60 CALL                             R8 1 1
       61 GETTABLEKS                       R9 R5 K20 ["ContextServices"]
       63 GETTABLEKS                       R10 R5 K21 ["UI"]
       65 GETTABLEKS                       R11 R10 K22 ["Pane"]
       67 GETTABLEKS                       R12 R10 K23 ["TextWithLinks"]
       69 GETTABLEKS                       R13 R10 K24 ["Button"]
       71 GETTABLEKS                       R14 R10 K25 ["Image"]
       73 GETTABLEKS                       R15 R10 K26 ["TextLabel"]
       75 GETTABLEKS                       R16 R10 K27 ["LoadingIndicator"]
       77 GETTABLEKS                       R17 R5 K18 ["Util"]
       79 GETTABLEKS                       R18 R17 K28 ["LayoutOrderIterator"]
       81 GETTABLEKS                       R20 R4 K17 ["Src"]
       83 GETTABLEKS                       R19 R20 K18 ["Util"]
       85 GETIMPORT                        R20 K12 [require]
       87 GETTABLEKS                       R21 R19 K29 ["saveCopyOfExperience"]
       89 CALL                             R20 1 1
       90 GETIMPORT                        R21 K12 [require]
       92 GETTABLEKS                       R22 R19 K30 ["PluginSettings"]
       94 CALL                             R21 1 1
       95 GETIMPORT                        R22 K12 [require]
       97 GETTABLEKS                       R23 R19 K31 ["getExperienceData"]
       99 CALL                             R22 1 1
      100 GETIMPORT                        R23 K12 [require]
      102 GETTABLEKS                       R24 R19 K32 ["getLocalDateTime"]
      104 CALL                             R23 1 1
      105 GETIMPORT                        R24 K1 [game]
      107 LOADK                            R26 K33 ["R15MigShowLinkedText"]
      108 NAMECALL                         R24 R24 K34 ["GetFastFlag"]
      110 CALL                             R24 2 1
      111 GETTABLEKS                       R25 R6 K35 ["PureComponent"]
      113 LOADK                            R27 K36 ["InitialFlow"]
      114 NAMECALL                         R25 R25 K37 ["extend"]
      116 CALL                             R25 2 1
      117 DUPCLOSURE                       R26 K38 [PROTO_1]
      118 CAPTURE                          VAL R21
      119 CAPTURE                          VAL R22
      120 SETTABLEKS                       R26 R25 K39 ["getR15ConvertedExperienceData"]
      122 DUPCLOSURE                       R26 K40 [PROTO_2]
      123 SETTABLEKS                       R26 R25 K41 ["getGameName"]
      125 DUPCLOSURE                       R26 K42 [PROTO_11]
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R23
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R20
      130 CAPTURE                          VAL R21
      131 CAPTURE                          VAL R3
      132 SETTABLEKS                       R26 R25 K43 ["init"]
      134 DUPCLOSURE                       R26 K44 [PROTO_13]
      135 SETTABLEKS                       R26 R25 K45 ["initRef"]
      137 DUPCLOSURE                       R26 K46 [PROTO_14]
      138 SETTABLEKS                       R26 R25 K47 ["didMount"]
      140 DUPCLOSURE                       R26 K48 [PROTO_15]
      141 SETTABLEKS                       R26 R25 K49 ["willUnmount"]
      143 DUPCLOSURE                       R26 K50 [PROTO_16]
      144 SETTABLEKS                       R26 R25 K51 ["didUpdate"]
      146 DUPCLOSURE                       R26 K52 [PROTO_17]
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R8
      150 CAPTURE                          VAL R11
      151 CAPTURE                          VAL R16
      152 SETTABLEKS                       R26 R25 K53 ["renderConvertingPanel"]
      154 DUPCLOSURE                       R26 K54 [PROTO_18]
      155 CAPTURE                          VAL R18
      156 CAPTURE                          VAL R6
      157 CAPTURE                          VAL R12
      158 CAPTURE                          VAL R8
      159 CAPTURE                          VAL R15
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R13
      162 SETTABLEKS                       R26 R25 K55 ["renderOpenPanel"]
      164 DUPCLOSURE                       R26 K56 [PROTO_20]
      165 CAPTURE                          VAL R18
      166 CAPTURE                          VAL R24
      167 CAPTURE                          VAL R6
      168 CAPTURE                          VAL R11
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R8
      171 CAPTURE                          VAL R15
      172 CAPTURE                          VAL R0
      173 CAPTURE                          VAL R1
      174 CAPTURE                          VAL R13
      175 SETTABLEKS                       R26 R25 K57 ["renderGetStartedPanel"]
      177 DUPCLOSURE                       R26 K58 [PROTO_21]
      178 SETTABLEKS                       R26 R25 K59 ["isWaitingForInitialData"]
      180 DUPCLOSURE                       R26 K60 [PROTO_22]
      181 SETTABLEKS                       R26 R25 K61 ["isPublishedR6Experience"]
      183 DUPCLOSURE                       R26 K62 [PROTO_23]
      184 SETTABLEKS                       R26 R25 K63 ["isPublishedR15PlayerChoiceExperience"]
      186 DUPCLOSURE                       R26 K64 [PROTO_24]
      187 SETTABLEKS                       R26 R25 K65 ["isLocalPlace"]
      189 DUPCLOSURE                       R26 K66 [PROTO_25]
      190 CAPTURE                          VAL R6
      191 CAPTURE                          VAL R11
      192 CAPTURE                          VAL R14
      193 SETTABLEKS                       R26 R25 K67 ["render"]
      195 DUPCLOSURE                       R26 K68 [PROTO_26]
      196 GETTABLEKS                       R27 R9 K69 ["withContext"]
      198 DUPTABLE                         R28 K74 [{"Stylizer", "Localization", "API", "Plugin"}]
      199 GETTABLEKS                       R29 R9 K70 ["Stylizer"]
      201 SETTABLEKS                       R29 R28 K70 ["Stylizer"]
      203 GETTABLEKS                       R29 R9 K71 ["Localization"]
      205 SETTABLEKS                       R29 R28 K71 ["Localization"]
      207 GETTABLEKS                       R29 R9 K72 ["API"]
      209 SETTABLEKS                       R29 R28 K72 ["API"]
      211 GETTABLEKS                       R29 R9 K73 ["Plugin"]
      213 SETTABLEKS                       R29 R28 K73 ["Plugin"]
      215 CALL                             R27 1 1
      216 MOVE                             R28 R25
      217 CALL                             R27 1 1
      218 MOVE                             R25 R27
      219 GETTABLEKS                       R27 R7 K75 ["connect"]
      221 MOVE                             R28 R26
      222 CALL                             R27 1 1
      223 MOVE                             R28 R25
      224 CALL                             R27 1 -1
      225 RETURN                           R27 -1
