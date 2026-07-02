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
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K4 ["CorrespondingR15Experience"]
       19 MOVE                             R7 R4
       20 GETIMPORT                        R8 K6 [game]
       22 GETTABLEKS                       R8 R8 K7 ["GameId"]
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
        1 DUPTABLE                         R3 K3 [{[1] = False, ["convertedExperience"]}]
        2 MOVE                             R4 R0
        3 JUMPIF                           R4 ; [+3]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K4 ["None"]
        7 SETTABLEKS                       R4 R3 K2 ["convertedExperience"]
        9 NAMECALL                         R1 R1 K5 ["setState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

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
       12 DUPTABLE                         R3 K5 [{["isConverting"] = False, ["convertedExperience"]}]
       13 MOVE                             R4 R0
       14 JUMPIF                           R4 ; [+3]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K6 ["None"]
       18 SETTABLEKS                       R4 R3 K4 ["convertedExperience"]
       20 NAMECALL                         R1 R1 K7 ["setState"]
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
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
       72 JUMPIFNOTEQKN                    R4 K27 [0] ; [+12]
       74 GETIMPORT                        R5 K29 [warn]
       76 LOADK                            R6 K30 ["Failed to create new experience"]
       77 CALL                             R5 1 0
       78 GETUPVAL                         R5 0
       79 DUPTABLE                         R7 K33 [{["isConverting"] = False}]
       80 NAMECALL                         R5 R5 K34 ["setState"]
       82 CALL                             R5 2 0
       83 CLOSEUPVALS                      R3
       84 RETURN                           R0 0
       85 GETUPVAL                         R5 0
       86 GETTABLEKS                       R5 R5 K35 ["isExperiencePublished"]
       88 JUMPIFNOT                        R5 ; [+12]
       89 GETUPVAL                         R5 4
       90 GETTABLEKS                       R5 R5 K36 ["CorrespondingR15Experience"]
       92 GETUPVAL                         R7 5
       93 GETIMPORT                        R8 K38 [game]
       95 GETTABLEKS                       R8 R8 K39 ["GameId"]
       97 MOVE                             R9 R4
       98 NAMECALL                         R5 R5 K40 ["setSetting"]
      100 CALL                             R5 4 0
      101 GETUPVAL                         R5 4
      102 GETTABLEKS                       R5 R5 K41 ["IsR15ConvertedExperience"]
      104 GETUPVAL                         R7 5
      105 MOVE                             R8 R4
      106 LOADB                            R9 1
      107 NAMECALL                         R5 R5 K40 ["setSetting"]
      109 CALL                             R5 4 0
      110 GETUPVAL                         R5 0
      111 MOVE                             R7 R4
      112 NEWCLOSURE                       R8 P0
      113 CAPTURE                          REF R3
      114 CAPTURE                          UPVAL U0
      115 CAPTURE                          UPVAL U6
      116 NAMECALL                         R5 R5 K42 ["getR15ConvertedExperienceData"]
      118 CALL                             R5 3 0
      119 CLOSEUPVALS                      R3
      120 RETURN                           R0 0

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
        7 DUPTABLE                         R3 K6 [{["isConverting"] = False}]
        8 NAMECALL                         R1 R1 K7 ["setState"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isExperiencePublished"]
        3 JUMPIFNOT                        R0 ; [+25]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["Develop"]
        7 GETTABLEKS                       R0 R0 K2 ["V2"]
        9 GETTABLEKS                       R0 R0 K3 ["Universes"]
       11 GETTABLEKS                       R0 R0 K4 ["configuration"]
       13 GETIMPORT                        R1 K6 [game]
       15 GETTABLEKS                       R1 R1 K7 ["GameId"]
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
       30 DUPTABLE                         R1 K18 [{["description"] = "", ["genre"] = "All", ["name"], ["playableDevices"], ["isFriendsOnly"] = False}]
       31 GETUPVAL                         R2 0
       32 NAMECALL                         R2 R2 K19 ["getGameName"]
       34 CALL                             R2 1 1
       35 SETTABLEKS                       R2 R1 K14 ["name"]
       37 DUPTABLE                         R2 K25 [{["Computer"] = True, ["Phone"] = True, ["Tablet"] = True, ["VR"] = True}]
       38 SETTABLEKS                       R2 R1 K15 ["playableDevices"]
       40 CALL                             R0 1 0
       41 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Localization"]
        5 GETTABLEKS                       R2 R0 K2 ["API"]
        7 NAMECALL                         R2 R2 K3 ["get"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R0 K4 ["Plugin"]
       12 NAMECALL                         R3 R3 K3 ["get"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 0
       16 DUPTABLE                         R6 K7 [{["isConverting"] = True}]
       17 NAMECALL                         R4 R4 K8 ["setState"]
       19 CALL                             R4 2 0
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R3
       27 CAPTURE                          UPVAL U3
       28 GETIMPORT                        R5 K11 [task.spawn]
       30 NEWCLOSURE                       R6 P1
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R4
       34 CALL                             R5 1 0
       35 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R1 R0 K1 ["convertedExperience"]
        5 FASTCALL2K                       ASSERT R1 K2 ; [+5]
        7 MOVE                             R3 R1
        8 LOADK                            R4 K2 ["Converted experience should be set"]
        9 GETIMPORT                        R2 K4 [assert]
       11 CALL                             R2 2 0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K5 ["props"]
       15 GETTABLEKS                       R3 R2 K6 ["Plugin"]
       17 NAMECALL                         R3 R3 K7 ["get"]
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K8 ["InitiallyEnabled"]
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
        0 DUPTABLE                         R2 K5 [{[1] = True, ["isConverting"] = False, ["paneSize"]}]
        1 GETIMPORT                        R3 K8 [Vector2.new]
        3 CALL                             R3 0 1
        4 SETTABLEKS                       R3 R2 K4 ["paneSize"]
        6 SETTABLEKS                       R2 R0 K9 ["state"]
        8 LOADB                            R2 0
        9 SETTABLEKS                       R2 R0 K10 ["hasCreatedCopy"]
       11 LOADB                            R2 0
       12 GETIMPORT                        R3 K12 [game]
       14 GETTABLEKS                       R3 R3 K13 ["GameId"]
       16 JUMPIFEQKN                       R3 K14 [0] ; [+9]
       18 GETIMPORT                        R3 K12 [game]
       20 GETTABLEKS                       R3 R3 K15 ["PlaceId"]
       22 JUMPIFNOTEQKN                    R3 K14 [0] ; [+2]
       24 LOADB                            R2 0 +1
       25 LOADB                            R2 1
       26 SETTABLEKS                       R2 R0 K16 ["isExperiencePublished"]
       28 GETTABLEKS                       R2 R0 K16 ["isExperiencePublished"]
       30 JUMPIFNOT                        R2 ; [+33]
       31 GETUPVAL                         R2 0
       32 GETIMPORT                        R4 K12 [game]
       34 GETTABLEKS                       R4 R4 K15 ["PlaceId"]
       36 NAMECALL                         R2 R2 K17 ["GetProductInfo"]
       38 CALL                             R2 2 1
       39 GETTABLEKS                       R3 R2 K18 ["Name"]
       41 SETTABLEKS                       R3 R0 K19 ["gameName"]
       43 GETUPVAL                         R3 1
       44 GETIMPORT                        R4 K22 [DateTime.fromIsoDate]
       46 GETTABLEKS                       R5 R2 K23 ["Created"]
       48 CALL                             R4 1 1
       49 CALL                             R3 1 1
       50 LOADK                            R5 K24 ["%*/%*/%*"]
       51 GETTABLEKS                       R7 R3 K25 ["month"]
       53 GETTABLEKS                       R8 R3 K26 ["day"]
       55 GETTABLEKS                       R9 R3 K27 ["year"]
       57 NAMECALL                         R5 R5 K28 ["format"]
       59 CALL                             R5 4 1
       60 MOVE                             R4 R5
       61 SETTABLEKS                       R4 R0 K29 ["gameCreatedDate"]
       63 JUMP                             ; [+6]
       64 GETIMPORT                        R2 K12 [game]
       66 GETTABLEKS                       R2 R2 K18 ["Name"]
       68 SETTABLEKS                       R2 R0 K19 ["gameName"]
       70 LOADNIL                          R4
       71 NEWCLOSURE                       R5 P0
       72 CAPTURE                          VAL R0
       73 CAPTURE                          UPVAL U2
       74 NAMECALL                         R2 R0 K30 ["getR15ConvertedExperienceData"]
       76 CALL                             R2 3 0
       77 NEWCLOSURE                       R2 P1
       78 CAPTURE                          VAL R0
       79 CAPTURE                          UPVAL U3
       80 CAPTURE                          UPVAL U4
       81 CAPTURE                          UPVAL U2
       82 SETTABLEKS                       R2 R0 K31 ["createNewExperience"]
       84 NEWCLOSURE                       R2 P2
       85 CAPTURE                          VAL R0
       86 CAPTURE                          UPVAL U4
       87 CAPTURE                          UPVAL U5
       88 SETTABLEKS                       R2 R0 K32 ["openExperience"]
       90 GETUPVAL                         R2 2
       91 GETTABLEKS                       R2 R2 K33 ["createRef"]
       93 CALL                             R2 0 1
       94 SETTABLEKS                       R2 R0 K34 ["ref"]
       96 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"paneSize"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K2 ["AbsoluteSize"]
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
        0 GETTABLEKS                       R1 R0 K0 ["ref"]
        2 GETTABLEKS                       R1 R1 K1 ["current"]
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
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K3 ["createElement"]
       11 GETUPVAL                         R6 1
       12 DUPTABLE                         R7 K13 [{["Text"], ["Size"], ["BackgroundTransparency"] = 1, ["TextWrapped"] = True, ["TextProps"], ["LinkMap"], ["HorizontalAlignment"]}]
       13 LOADK                            R10 K14 ["InitialFlow"]
       14 LOADK                            R11 K15 ["InProgress"]
       15 DUPTABLE                         R12 K17 [{"experienceName"}]
       16 LOADB                            R15 0
       17 NAMECALL                         R13 R0 K18 ["getGameName"]
       19 CALL                             R13 2 1
       20 SETTABLEKS                       R13 R12 K16 ["experienceName"]
       22 NAMECALL                         R8 R3 K19 ["getText"]
       24 CALL                             R8 4 1
       25 SETTABLEKS                       R8 R7 K4 ["Text"]
       27 GETIMPORT                        R8 K22 [UDim2.new]
       29 LOADN                            R9 1
       30 LOADN                            R10 0
       31 LOADN                            R11 0
       32 GETUPVAL                         R12 2
       33 GETTABLEKS                       R12 R12 K23 ["getTextHeight"]
       35 LOADK                            R15 K14 ["InitialFlow"]
       36 LOADK                            R16 K15 ["InProgress"]
       37 DUPTABLE                         R17 K17 [{"experienceName"}]
       38 LOADB                            R20 0
       39 NAMECALL                         R18 R0 K18 ["getGameName"]
       41 CALL                             R18 2 1
       42 SETTABLEKS                       R18 R17 K16 ["experienceName"]
       44 NAMECALL                         R13 R3 K19 ["getText"]
       46 CALL                             R13 4 1
       47 GETTABLEKS                       R14 R2 K24 ["TextSize"]
       49 GETTABLEKS                       R15 R2 K25 ["Font"]
       51 CALL                             R12 3 -1
       52 CALL                             R8 -1 1
       53 SETTABLEKS                       R8 R7 K5 ["Size"]
       55 DUPTABLE                         R8 K28 [{["TextSize"], ["Font"], ["RichText"] = True, ["TextXAlignment"]}]
       56 GETTABLEKS                       R9 R2 K24 ["TextSize"]
       58 SETTABLEKS                       R9 R8 K24 ["TextSize"]
       60 GETTABLEKS                       R9 R2 K25 ["Font"]
       62 SETTABLEKS                       R9 R8 K25 ["Font"]
       64 GETIMPORT                        R9 K31 [Enum.TextXAlignment.Left]
       66 SETTABLEKS                       R9 R8 K27 ["TextXAlignment"]
       68 SETTABLEKS                       R8 R7 K10 ["TextProps"]
       70 NEWTABLE                         R8 0 0
       72 SETTABLEKS                       R8 R7 K11 ["LinkMap"]
       74 GETIMPORT                        R8 K32 [Enum.HorizontalAlignment.Left]
       76 SETTABLEKS                       R8 R7 K12 ["HorizontalAlignment"]
       78 CALL                             R5 2 1
       79 SETLIST                          R4 R5 1 [1]
       81 GETUPVAL                         R6 0
       82 GETTABLEKS                       R6 R6 K3 ["createElement"]
       84 GETUPVAL                         R7 3
       85 DUPTABLE                         R8 K36 [{"Padding", "Size", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
       86 DUPTABLE                         R9 K38 [{"Top"}]
       87 GETTABLEKS                       R10 R2 K39 ["LoadingIndicatorPadding"]
       89 SETTABLEKS                       R10 R9 K37 ["Top"]
       91 SETTABLEKS                       R9 R8 K33 ["Padding"]
       93 GETIMPORT                        R9 K22 [UDim2.new]
       95 LOADN                            R10 1
       96 LOADN                            R11 0
       97 LOADN                            R12 0
       98 GETTABLEKS                       R14 R2 K40 ["LoadingIndicatorHeight"]
      100 GETTABLEKS                       R15 R2 K39 ["LoadingIndicatorPadding"]
      102 ADD                              R13 R14 R15
      103 CALL                             R9 4 1
      104 SETTABLEKS                       R9 R8 K5 ["Size"]
      106 GETIMPORT                        R9 K43 [Enum.FillDirection.Vertical]
      108 SETTABLEKS                       R9 R8 K34 ["Layout"]
      110 GETIMPORT                        R9 K45 [Enum.HorizontalAlignment.Center]
      112 SETTABLEKS                       R9 R8 K12 ["HorizontalAlignment"]
      114 GETIMPORT                        R9 K46 [Enum.VerticalAlignment.Top]
      116 SETTABLEKS                       R9 R8 K35 ["VerticalAlignment"]
      118 DUPTABLE                         R9 K48 [{"LoadingIndicator"}]
      119 GETUPVAL                         R10 0
      120 GETTABLEKS                       R10 R10 K3 ["createElement"]
      122 GETUPVAL                         R11 4
      123 CALL                             R10 1 1
      124 SETTABLEKS                       R10 R9 K47 ["LoadingIndicator"]
      126 CALL                             R6 3 1
      127 SETTABLEKS                       R6 R4 K49 ["LoadingIndicatorPane"]
      129 RETURN                           R4 1

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
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R7 R7 K19 ["new"]
       42 CALL                             R7 0 1
       43 DUPTABLE                         R8 K24 [{"CompleteLabel", "ConfirmationLabel", "OpenButtonPane", "CreateNewCopyButtonPane"}]
       44 GETUPVAL                         R9 1
       45 GETTABLEKS                       R9 R9 K25 ["createElement"]
       47 GETUPVAL                         R10 2
       48 DUPTABLE                         R11 K36 [{["LayoutOrder"], ["Text"], ["Size"], ["BackgroundTransparency"] = 1, ["TextWrapped"] = True, ["TextProps"], ["LinkMap"], ["HorizontalAlignment"]}]
       49 NAMECALL                         R12 R7 K37 ["getNextOrder"]
       51 CALL                             R12 1 1
       52 SETTABLEKS                       R12 R11 K26 ["LayoutOrder"]
       54 LOADK                            R14 K8 ["InitialFlow"]
       55 LOADK                            R15 K38 ["Ready"]
       56 DUPTABLE                         R16 K40 [{"experienceName"}]
       57 GETTABLEKS                       R17 R5 K41 ["name"]
       59 SETTABLEKS                       R17 R16 K39 ["experienceName"]
       61 NAMECALL                         R12 R3 K18 ["getText"]
       63 CALL                             R12 4 1
       64 SETTABLEKS                       R12 R11 K27 ["Text"]
       66 GETIMPORT                        R12 K43 [UDim2.new]
       68 LOADN                            R13 1
       69 LOADN                            R14 0
       70 LOADN                            R15 0
       71 GETUPVAL                         R16 3
       72 GETTABLEKS                       R16 R16 K44 ["getTextHeight"]
       74 LOADK                            R19 K8 ["InitialFlow"]
       75 LOADK                            R20 K38 ["Ready"]
       76 DUPTABLE                         R21 K40 [{"experienceName"}]
       77 GETTABLEKS                       R22 R5 K41 ["name"]
       79 SETTABLEKS                       R22 R21 K39 ["experienceName"]
       81 NAMECALL                         R17 R3 K18 ["getText"]
       83 CALL                             R17 4 1
       84 GETTABLEKS                       R18 R2 K45 ["TextSize"]
       86 GETTABLEKS                       R19 R2 K46 ["Font"]
       88 CALL                             R16 3 -1
       89 CALL                             R12 -1 1
       90 SETTABLEKS                       R12 R11 K28 ["Size"]
       92 DUPTABLE                         R12 K49 [{["TextSize"], ["Font"], ["RichText"] = True, ["TextXAlignment"]}]
       93 GETTABLEKS                       R13 R2 K50 ["ReadyTextSize"]
       95 SETTABLEKS                       R13 R12 K45 ["TextSize"]
       97 GETTABLEKS                       R13 R2 K46 ["Font"]
       99 SETTABLEKS                       R13 R12 K46 ["Font"]
      101 GETIMPORT                        R13 K53 [Enum.TextXAlignment.Left]
      103 SETTABLEKS                       R13 R12 K48 ["TextXAlignment"]
      105 SETTABLEKS                       R12 R11 K33 ["TextProps"]
      107 NEWTABLE                         R12 0 0
      109 SETTABLEKS                       R12 R11 K34 ["LinkMap"]
      111 GETIMPORT                        R12 K54 [Enum.HorizontalAlignment.Left]
      113 SETTABLEKS                       R12 R11 K35 ["HorizontalAlignment"]
      115 CALL                             R9 2 1
      116 SETTABLEKS                       R9 R8 K20 ["CompleteLabel"]
      118 GETUPVAL                         R9 1
      119 GETTABLEKS                       R9 R9 K25 ["createElement"]
      121 GETUPVAL                         R10 4
      122 DUPTABLE                         R11 K56 [{["LayoutOrder"], ["Text"], ["Size"], ["BackgroundTransparency"] = 1, ["TextWrapped"] = True, ["TextSize"], ["Font"], ["TextXAlignment"], ["TextYAlignment"], ["RichText"] = True}]
      123 NAMECALL                         R12 R7 K37 ["getNextOrder"]
      125 CALL                             R12 1 1
      126 SETTABLEKS                       R12 R11 K26 ["LayoutOrder"]
      128 SETTABLEKS                       R6 R11 K27 ["Text"]
      130 GETIMPORT                        R12 K43 [UDim2.new]
      132 LOADN                            R13 1
      133 LOADN                            R14 0
      134 LOADN                            R15 0
      135 GETTABLEKS                       R17 R2 K57 ["ConfirmationLabelYPadding"]
      137 GETUPVAL                         R18 3
      138 GETTABLEKS                       R18 R18 K44 ["getTextHeight"]
      140 MOVE                             R19 R6
      141 GETTABLEKS                       R20 R2 K45 ["TextSize"]
      143 GETTABLEKS                       R21 R2 K46 ["Font"]
      145 CALL                             R18 3 1
      146 MUL                              R16 R17 R18
      147 CALL                             R12 4 1
      148 SETTABLEKS                       R12 R11 K28 ["Size"]
      150 GETTABLEKS                       R12 R2 K45 ["TextSize"]
      152 SETTABLEKS                       R12 R11 K45 ["TextSize"]
      154 GETTABLEKS                       R12 R2 K46 ["Font"]
      156 SETTABLEKS                       R12 R11 K46 ["Font"]
      158 GETIMPORT                        R12 K53 [Enum.TextXAlignment.Left]
      160 SETTABLEKS                       R12 R11 K48 ["TextXAlignment"]
      162 GETIMPORT                        R12 K59 [Enum.TextYAlignment.Center]
      164 SETTABLEKS                       R12 R11 K55 ["TextYAlignment"]
      166 CALL                             R9 2 1
      167 SETTABLEKS                       R9 R8 K21 ["ConfirmationLabel"]
      169 GETUPVAL                         R9 1
      170 GETTABLEKS                       R9 R9 K25 ["createElement"]
      172 GETUPVAL                         R10 5
      173 DUPTABLE                         R11 K63 [{["Size"], ["LayoutOrder"], ["BackgroundTransparency"] = 1, ["HorizontalAlignment"], ["Layout"], ["VerticalAlignment"], ["Spacing"]}]
      174 GETIMPORT                        R12 K43 [UDim2.new]
      176 LOADN                            R13 1
      177 LOADN                            R14 0
      178 LOADN                            R15 0
      179 GETUPVAL                         R16 3
      180 GETTABLEKS                       R16 R16 K44 ["getTextHeight"]
      182 LOADK                            R19 K8 ["InitialFlow"]
      183 LOADK                            R20 K64 ["OpenR15Copy"]
      184 NAMECALL                         R17 R3 K18 ["getText"]
      186 CALL                             R17 3 1
      187 GETTABLEKS                       R18 R2 K45 ["TextSize"]
      189 GETTABLEKS                       R19 R2 K46 ["Font"]
      191 GETTABLEKS                       R20 R2 K65 ["ButtonPanePadding"]
      193 CALL                             R16 4 -1
      194 CALL                             R12 -1 1
      195 SETTABLEKS                       R12 R11 K28 ["Size"]
      197 NAMECALL                         R12 R7 K37 ["getNextOrder"]
      199 CALL                             R12 1 1
      200 SETTABLEKS                       R12 R11 K26 ["LayoutOrder"]
      202 GETIMPORT                        R12 K67 [Enum.HorizontalAlignment.Right]
      204 SETTABLEKS                       R12 R11 K35 ["HorizontalAlignment"]
      206 GETIMPORT                        R12 K70 [Enum.FillDirection.Horizontal]
      208 SETTABLEKS                       R12 R11 K60 ["Layout"]
      210 GETIMPORT                        R12 K71 [Enum.VerticalAlignment.Center]
      212 SETTABLEKS                       R12 R11 K61 ["VerticalAlignment"]
      214 GETTABLEKS                       R12 R2 K72 ["OpenPaneButtonsSpaceing"]
      216 SETTABLEKS                       R12 R11 K62 ["Spacing"]
      218 DUPTABLE                         R12 K75 [{"CreateNewCopyButton", "OpenButton"}]
      219 GETTABLEKS                       R14 R0 K76 ["hasCreatedCopy"]
      221 JUMPIFNOT                        R14 ; [+2]
      222 LOADNIL                          R13
      223 JUMP                             ; [+39]
      224 GETUPVAL                         R13 1
      225 GETTABLEKS                       R13 R13 K25 ["createElement"]
      227 GETUPVAL                         R14 6
      228 DUPTABLE                         R15 K80 [{["Size"], ["Text"], ["OnClick"], ["Style"] = "Round", ["LayoutOrder"]}]
      229 GETUPVAL                         R16 3
      230 GETTABLEKS                       R16 R16 K81 ["getTextSize"]
      232 LOADK                            R19 K8 ["InitialFlow"]
      233 LOADK                            R20 K82 ["CreateNewR15Copy"]
      234 NAMECALL                         R17 R3 K18 ["getText"]
      236 CALL                             R17 3 1
      237 GETTABLEKS                       R18 R2 K45 ["TextSize"]
      239 GETTABLEKS                       R19 R2 K46 ["Font"]
      241 GETTABLEKS                       R20 R2 K83 ["ButtonPadding"]
      243 CALL                             R16 4 1
      244 SETTABLEKS                       R16 R15 K28 ["Size"]
      246 LOADK                            R18 K8 ["InitialFlow"]
      247 LOADK                            R19 K82 ["CreateNewR15Copy"]
      248 NAMECALL                         R16 R3 K18 ["getText"]
      250 CALL                             R16 3 1
      251 SETTABLEKS                       R16 R15 K27 ["Text"]
      253 GETTABLEKS                       R16 R0 K84 ["createNewExperience"]
      255 SETTABLEKS                       R16 R15 K77 ["OnClick"]
      257 NAMECALL                         R16 R7 K37 ["getNextOrder"]
      259 CALL                             R16 1 1
      260 SETTABLEKS                       R16 R15 K26 ["LayoutOrder"]
      262 CALL                             R13 2 1
      263 SETTABLEKS                       R13 R12 K73 ["CreateNewCopyButton"]
      265 GETUPVAL                         R13 1
      266 GETTABLEKS                       R13 R13 K25 ["createElement"]
      268 GETUPVAL                         R14 6
      269 DUPTABLE                         R15 K86 [{["Size"], ["Text"], ["OnClick"], ["Style"] = "RoundPrimary"}]
      270 GETUPVAL                         R16 3
      271 GETTABLEKS                       R16 R16 K81 ["getTextSize"]
      273 LOADK                            R19 K8 ["InitialFlow"]
      274 LOADK                            R20 K64 ["OpenR15Copy"]
      275 NAMECALL                         R17 R3 K18 ["getText"]
      277 CALL                             R17 3 1
      278 GETTABLEKS                       R18 R2 K45 ["TextSize"]
      280 GETTABLEKS                       R19 R2 K46 ["Font"]
      282 GETTABLEKS                       R20 R2 K83 ["ButtonPadding"]
      284 CALL                             R16 4 1
      285 SETTABLEKS                       R16 R15 K28 ["Size"]
      287 LOADK                            R18 K8 ["InitialFlow"]
      288 LOADK                            R19 K64 ["OpenR15Copy"]
      289 NAMECALL                         R16 R3 K18 ["getText"]
      291 CALL                             R16 3 1
      292 SETTABLEKS                       R16 R15 K27 ["Text"]
      294 GETTABLEKS                       R16 R0 K87 ["openExperience"]
      296 SETTABLEKS                       R16 R15 K77 ["OnClick"]
      298 CALL                             R13 2 1
      299 SETTABLEKS                       R13 R12 K74 ["OpenButton"]
      301 CALL                             R9 3 1
      302 SETTABLEKS                       R9 R8 K22 ["OpenButtonPane"]
      304 GETTABLEKS                       R10 R0 K76 ["hasCreatedCopy"]
      306 JUMPIFNOT                        R10 ; [+2]
      307 LOADNIL                          R9
      308 JUMP                             ; [+83]
      309 GETUPVAL                         R9 1
      310 GETTABLEKS                       R9 R9 K25 ["createElement"]
      312 GETUPVAL                         R10 5
      313 DUPTABLE                         R11 K88 [{["Size"], ["LayoutOrder"], ["BackgroundTransparency"] = 1, ["HorizontalAlignment"], ["Layout"], ["VerticalAlignment"]}]
      314 GETIMPORT                        R12 K43 [UDim2.new]
      316 LOADN                            R13 1
      317 LOADN                            R14 0
      318 LOADN                            R15 0
      319 GETUPVAL                         R16 3
      320 GETTABLEKS                       R16 R16 K44 ["getTextHeight"]
      322 LOADK                            R19 K8 ["InitialFlow"]
      323 LOADK                            R20 K82 ["CreateNewR15Copy"]
      324 NAMECALL                         R17 R3 K18 ["getText"]
      326 CALL                             R17 3 1
      327 GETTABLEKS                       R18 R2 K45 ["TextSize"]
      329 GETTABLEKS                       R19 R2 K46 ["Font"]
      331 GETTABLEKS                       R20 R2 K65 ["ButtonPanePadding"]
      333 CALL                             R16 4 -1
      334 CALL                             R12 -1 1
      335 SETTABLEKS                       R12 R11 K28 ["Size"]
      337 NAMECALL                         R12 R7 K37 ["getNextOrder"]
      339 CALL                             R12 1 1
      340 SETTABLEKS                       R12 R11 K26 ["LayoutOrder"]
      342 GETIMPORT                        R12 K67 [Enum.HorizontalAlignment.Right]
      344 SETTABLEKS                       R12 R11 K35 ["HorizontalAlignment"]
      346 GETIMPORT                        R12 K70 [Enum.FillDirection.Horizontal]
      348 SETTABLEKS                       R12 R11 K60 ["Layout"]
      350 GETIMPORT                        R12 K71 [Enum.VerticalAlignment.Center]
      352 SETTABLEKS                       R12 R11 K61 ["VerticalAlignment"]
      354 DUPTABLE                         R12 K89 [{"CreateNewCopyButton"}]
      355 GETUPVAL                         R13 1
      356 GETTABLEKS                       R13 R13 K25 ["createElement"]
      358 GETUPVAL                         R14 6
      359 DUPTABLE                         R15 K86 [{["Size"], ["Text"], ["OnClick"], ["Style"] = "RoundPrimary"}]
      360 GETUPVAL                         R16 3
      361 GETTABLEKS                       R16 R16 K81 ["getTextSize"]
      363 LOADK                            R19 K8 ["InitialFlow"]
      364 LOADK                            R20 K82 ["CreateNewR15Copy"]
      365 NAMECALL                         R17 R3 K18 ["getText"]
      367 CALL                             R17 3 1
      368 GETTABLEKS                       R18 R2 K45 ["TextSize"]
      370 GETTABLEKS                       R19 R2 K46 ["Font"]
      372 GETTABLEKS                       R20 R2 K83 ["ButtonPadding"]
      374 CALL                             R16 4 1
      375 SETTABLEKS                       R16 R15 K28 ["Size"]
      377 LOADK                            R18 K8 ["InitialFlow"]
      378 LOADK                            R19 K82 ["CreateNewR15Copy"]
      379 NAMECALL                         R16 R3 K18 ["getText"]
      381 CALL                             R16 3 1
      382 SETTABLEKS                       R16 R15 K27 ["Text"]
      384 GETTABLEKS                       R16 R0 K84 ["createNewExperience"]
      386 SETTABLEKS                       R16 R15 K77 ["OnClick"]
      388 CALL                             R13 2 1
      389 SETTABLEKS                       R13 R12 K73 ["CreateNewCopyButton"]
      391 CALL                             R9 3 1
      392 SETTABLEKS                       R9 R8 K23 ["CreateNewCopyButtonPane"]
      394 RETURN                           R8 1

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
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["new"]
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
      108 GETUPVAL                         R9 2
      109 GETTABLEKS                       R9 R9 K35 ["createElement"]
      111 GETUPVAL                         R10 3
      112 DUPTABLE                         R11 K44 [{["Size"], ["LayoutOrder"], ["BackgroundTransparency"] = 1, ["Spacing"], ["Layout"], ["HorizontalAlignment"], ["VerticalAlignment"]}]
      113 GETIMPORT                        R12 K46 [UDim2.new]
      115 LOADN                            R13 1
      116 LOADN                            R14 0
      117 LOADN                            R15 0
      118 GETTABLEKS                       R16 R2 K47 ["ThumbnailPanelHeight"]
      120 CALL                             R12 4 1
      121 SETTABLEKS                       R12 R11 K36 ["Size"]
      123 NAMECALL                         R12 R4 K48 ["getNextOrder"]
      125 CALL                             R12 1 1
      126 SETTABLEKS                       R12 R11 K37 ["LayoutOrder"]
      128 GETTABLEKS                       R12 R2 K49 ["ThumbnailPanelVerticalTextSpacing"]
      130 SETTABLEKS                       R12 R11 K40 ["Spacing"]
      132 GETIMPORT                        R12 K53 [Enum.FillDirection.Vertical]
      134 SETTABLEKS                       R12 R11 K41 ["Layout"]
      136 GETIMPORT                        R12 K55 [Enum.HorizontalAlignment.Left]
      138 SETTABLEKS                       R12 R11 K42 ["HorizontalAlignment"]
      140 GETIMPORT                        R12 K57 [Enum.VerticalAlignment.Top]
      142 SETTABLEKS                       R12 R11 K43 ["VerticalAlignment"]
      144 DUPTABLE                         R12 K60 [{"ImagePane", "ThumbnailSubTextLabel"}]
      145 GETUPVAL                         R13 2
      146 GETTABLEKS                       R13 R13 K35 ["createElement"]
      148 GETUPVAL                         R14 3
      149 DUPTABLE                         R15 K63 [{["Size"], ["LayoutOrder"], ["BackgroundColor"], ["BackgroundTransparency"] = 0}]
      150 GETIMPORT                        R16 K46 [UDim2.new]
      152 LOADN                            R17 1
      153 LOADN                            R18 0
      154 LOADN                            R19 0
      155 GETTABLEKS                       R20 R2 K64 ["ThumbnailHeight"]
      157 CALL                             R16 4 1
      158 SETTABLEKS                       R16 R15 K36 ["Size"]
      160 NAMECALL                         R16 R4 K48 ["getNextOrder"]
      162 CALL                             R16 1 1
      163 SETTABLEKS                       R16 R15 K37 ["LayoutOrder"]
      165 GETIMPORT                        R16 K67 [Color3.fromRGB]
      167 LOADN                            R17 0
      168 LOADN                            R18 0
      169 LOADN                            R19 0
      170 CALL                             R16 3 1
      171 SETTABLEKS                       R16 R15 K61 ["BackgroundColor"]
      173 NEWTABLE                         R16 0 1
      175 GETUPVAL                         R17 2
      176 GETTABLEKS                       R17 R17 K35 ["createElement"]
      178 LOADK                            R18 K68 ["VideoFrame"]
      179 DUPTABLE                         R19 K74 [{["Video"] = "rbxasset://textures/R15Migrator/start-page-anim.mp4", ["Size"], ["Looped"] = True, ["Playing"] = True}]
      180 GETIMPORT                        R20 K46 [UDim2.new]
      182 LOADN                            R21 1
      183 LOADN                            R22 0
      184 LOADN                            R23 1
      185 LOADN                            R24 0
      186 CALL                             R20 4 1
      187 SETTABLEKS                       R20 R19 K36 ["Size"]
      189 CALL                             R17 2 -1
      190 SETLIST                          R16 R17 -1 [1]
      192 CALL                             R13 3 1
      193 SETTABLEKS                       R13 R12 K58 ["ImagePane"]
      195 GETUPVAL                         R13 2
      196 GETTABLEKS                       R13 R13 K35 ["createElement"]
      198 GETUPVAL                         R14 4
      199 DUPTABLE                         R15 K79 [{["LayoutOrder"], ["Text"], ["Size"], ["BackgroundTransparency"] = 1, ["TextWrapped"] = True, ["TextProps"], ["LinkMap"], ["HorizontalAlignment"]}]
      200 NAMECALL                         R16 R4 K48 ["getNextOrder"]
      202 CALL                             R16 1 1
      203 SETTABLEKS                       R16 R15 K37 ["LayoutOrder"]
      205 LOADK                            R18 K8 ["InitialFlow"]
      206 LOADK                            R19 K80 ["ThumbnailSubText"]
      207 NAMECALL                         R16 R3 K10 ["getText"]
      209 CALL                             R16 3 1
      210 SETTABLEKS                       R16 R15 K75 ["Text"]
      212 GETIMPORT                        R16 K46 [UDim2.new]
      214 LOADN                            R17 1
      215 LOADN                            R18 0
      216 LOADN                            R19 0
      217 GETUPVAL                         R20 5
      218 GETTABLEKS                       R20 R20 K81 ["getTextHeight"]
      220 LOADK                            R23 K8 ["InitialFlow"]
      221 LOADK                            R24 K80 ["ThumbnailSubText"]
      222 NAMECALL                         R21 R3 K10 ["getText"]
      224 CALL                             R21 3 1
      225 GETTABLEKS                       R22 R2 K82 ["SubTextSize"]
      227 GETTABLEKS                       R23 R2 K83 ["Font"]
      229 CALL                             R20 3 -1
      230 CALL                             R16 -1 1
      231 SETTABLEKS                       R16 R15 K36 ["Size"]
      233 DUPTABLE                         R16 K86 [{"TextSize", "Font", "TextXAlignment"}]
      234 GETTABLEKS                       R17 R2 K82 ["SubTextSize"]
      236 SETTABLEKS                       R17 R16 K84 ["TextSize"]
      238 GETTABLEKS                       R17 R2 K83 ["Font"]
      240 SETTABLEKS                       R17 R16 K83 ["Font"]
      242 GETIMPORT                        R17 K87 [Enum.TextXAlignment.Left]
      244 SETTABLEKS                       R17 R16 K85 ["TextXAlignment"]
      246 SETTABLEKS                       R16 R15 K77 ["TextProps"]
      248 NEWTABLE                         R16 0 0
      250 SETTABLEKS                       R16 R15 K78 ["LinkMap"]
      252 GETIMPORT                        R16 K55 [Enum.HorizontalAlignment.Left]
      254 SETTABLEKS                       R16 R15 K42 ["HorizontalAlignment"]
      256 CALL                             R13 2 1
      257 SETTABLEKS                       R13 R12 K59 ["ThumbnailSubTextLabel"]
      259 CALL                             R9 3 1
      260 SETTABLEKS                       R9 R8 K29 ["ThumbnailPane"]
      262 NAMECALL                         R10 R0 K20 ["isPublishedR15PlayerChoiceExperience"]
      264 CALL                             R10 1 1
      265 JUMPIFNOT                        R10 ; [+68]
      266 GETUPVAL                         R9 2
      267 GETTABLEKS                       R9 R9 K35 ["createElement"]
      269 GETUPVAL                         R10 6
      270 DUPTABLE                         R11 K90 [{["LayoutOrder"], ["Text"], ["Size"], ["BackgroundTransparency"] = 1, ["TextWrapped"] = True, ["TextSize"], ["Font"], ["RichText"] = True, ["TextXAlignment"], ["TextYAlignment"]}]
      271 NAMECALL                         R12 R4 K48 ["getNextOrder"]
      273 CALL                             R12 1 1
      274 SETTABLEKS                       R12 R11 K37 ["LayoutOrder"]
      276 LOADK                            R14 K8 ["InitialFlow"]
      277 LOADK                            R15 K91 ["R15OnlyMessage"]
      278 DUPTABLE                         R16 K16 [{"experienceName"}]
      279 NAMECALL                         R17 R0 K17 ["getGameName"]
      281 CALL                             R17 1 1
      282 SETTABLEKS                       R17 R16 K15 ["experienceName"]
      284 NAMECALL                         R12 R3 K10 ["getText"]
      286 CALL                             R12 4 1
      287 SETTABLEKS                       R12 R11 K75 ["Text"]
      289 GETIMPORT                        R12 K46 [UDim2.new]
      291 LOADN                            R13 1
      292 LOADN                            R14 0
      293 LOADN                            R15 0
      294 GETUPVAL                         R16 5
      295 GETTABLEKS                       R16 R16 K81 ["getTextHeight"]
      297 LOADK                            R19 K8 ["InitialFlow"]
      298 LOADK                            R20 K91 ["R15OnlyMessage"]
      299 DUPTABLE                         R21 K16 [{"experienceName"}]
      300 NAMECALL                         R22 R0 K17 ["getGameName"]
      302 CALL                             R22 1 1
      303 SETTABLEKS                       R22 R21 K15 ["experienceName"]
      305 NAMECALL                         R17 R3 K10 ["getText"]
      307 CALL                             R17 4 1
      308 GETTABLEKS                       R18 R2 K84 ["TextSize"]
      310 GETTABLEKS                       R19 R2 K83 ["Font"]
      312 CALL                             R16 3 -1
      313 CALL                             R12 -1 1
      314 SETTABLEKS                       R12 R11 K36 ["Size"]
      316 GETTABLEKS                       R12 R2 K84 ["TextSize"]
      318 SETTABLEKS                       R12 R11 K84 ["TextSize"]
      320 GETTABLEKS                       R12 R2 K83 ["Font"]
      322 SETTABLEKS                       R12 R11 K83 ["Font"]
      324 GETIMPORT                        R12 K87 [Enum.TextXAlignment.Left]
      326 SETTABLEKS                       R12 R11 K85 ["TextXAlignment"]
      328 GETIMPORT                        R12 K93 [Enum.TextYAlignment.Center]
      330 SETTABLEKS                       R12 R11 K89 ["TextYAlignment"]
      332 CALL                             R9 2 1
      333 JUMP                             ; [+1]
      334 LOADNIL                          R9
      335 SETTABLEKS                       R9 R8 K30 ["ExplanationLabelR15Only"]
      337 GETUPVAL                         R9 2
      338 GETTABLEKS                       R9 R9 K35 ["createElement"]
      340 GETUPVAL                         R10 4
      341 DUPTABLE                         R11 K94 [{["LayoutOrder"], ["Text"], ["BackgroundTransparency"] = 1, ["TextWrapped"] = True, ["TextProps"], ["LinkMap"], ["HorizontalAlignment"]}]
      342 NAMECALL                         R12 R4 K48 ["getNextOrder"]
      344 CALL                             R12 1 1
      345 SETTABLEKS                       R12 R11 K37 ["LayoutOrder"]
      347 SETTABLEKS                       R5 R11 K75 ["Text"]
      349 DUPTABLE                         R12 K95 [{["TextSize"], ["Font"], ["RichText"] = True, ["TextXAlignment"]}]
      350 GETTABLEKS                       R13 R2 K84 ["TextSize"]
      352 SETTABLEKS                       R13 R12 K84 ["TextSize"]
      354 GETTABLEKS                       R13 R2 K83 ["Font"]
      356 SETTABLEKS                       R13 R12 K83 ["Font"]
      358 GETIMPORT                        R13 K87 [Enum.TextXAlignment.Left]
      360 SETTABLEKS                       R13 R12 K85 ["TextXAlignment"]
      362 SETTABLEKS                       R12 R11 K77 ["TextProps"]
      364 NEWTABLE                         R12 1 0
      366 DUPTABLE                         R13 K98 [{"LinkText", "LinkCallback"}]
      367 LOADK                            R16 K99 ["AdapterPane"]
      368 LOADK                            R17 K100 ["LearnMore"]
      369 NAMECALL                         R14 R3 K10 ["getText"]
      371 CALL                             R14 3 1
      372 SETTABLEKS                       R14 R13 K96 ["LinkText"]
      374 DUPCLOSURE                       R14 K101 [PROTO_19]
      375 CAPTURE                          UPVAL U7
      376 CAPTURE                          UPVAL U8
      377 SETTABLEKS                       R14 R13 K97 ["LinkCallback"]
      379 SETTABLEKS                       R13 R12 K102 ["[link1]"]
      381 SETTABLEKS                       R12 R11 K78 ["LinkMap"]
      383 GETIMPORT                        R12 K55 [Enum.HorizontalAlignment.Left]
      385 SETTABLEKS                       R12 R11 K42 ["HorizontalAlignment"]
      387 CALL                             R9 2 1
      388 SETTABLEKS                       R9 R8 K31 ["ExplanationLabel"]
      390 GETUPVAL                         R9 2
      391 GETTABLEKS                       R9 R9 K35 ["createElement"]
      393 GETUPVAL                         R10 4
      394 DUPTABLE                         R11 K94 [{["LayoutOrder"], ["Text"], ["BackgroundTransparency"] = 1, ["TextWrapped"] = True, ["TextProps"], ["LinkMap"], ["HorizontalAlignment"]}]
      395 NAMECALL                         R12 R4 K48 ["getNextOrder"]
      397 CALL                             R12 1 1
      398 SETTABLEKS                       R12 R11 K37 ["LayoutOrder"]
      400 SETTABLEKS                       R6 R11 K75 ["Text"]
      402 DUPTABLE                         R12 K86 [{"TextSize", "Font", "TextXAlignment"}]
      403 GETTABLEKS                       R13 R2 K84 ["TextSize"]
      405 SETTABLEKS                       R13 R12 K84 ["TextSize"]
      407 GETTABLEKS                       R13 R2 K83 ["Font"]
      409 SETTABLEKS                       R13 R12 K83 ["Font"]
      411 GETIMPORT                        R13 K87 [Enum.TextXAlignment.Left]
      413 SETTABLEKS                       R13 R12 K85 ["TextXAlignment"]
      415 SETTABLEKS                       R12 R11 K77 ["TextProps"]
      417 NEWTABLE                         R12 0 0
      419 SETTABLEKS                       R12 R11 K78 ["LinkMap"]
      421 GETIMPORT                        R12 K55 [Enum.HorizontalAlignment.Left]
      423 SETTABLEKS                       R12 R11 K42 ["HorizontalAlignment"]
      425 CALL                             R9 2 1
      426 SETTABLEKS                       R9 R8 K32 ["InstructionLabel"]
      428 GETUPVAL                         R9 2
      429 GETTABLEKS                       R9 R9 K35 ["createElement"]
      431 GETUPVAL                         R10 3
      432 DUPTABLE                         R11 K103 [{["Size"], ["LayoutOrder"], ["BackgroundTransparency"] = 1, ["HorizontalAlignment"], ["Layout"], ["VerticalAlignment"]}]
      433 GETIMPORT                        R12 K46 [UDim2.new]
      435 LOADN                            R13 1
      436 LOADN                            R14 0
      437 LOADN                            R15 0
      438 GETUPVAL                         R16 5
      439 GETTABLEKS                       R16 R16 K81 ["getTextHeight"]
      441 MOVE                             R17 R7
      442 GETTABLEKS                       R18 R2 K84 ["TextSize"]
      444 GETTABLEKS                       R19 R2 K83 ["Font"]
      446 GETTABLEKS                       R20 R2 K104 ["ButtonPanePadding"]
      448 CALL                             R16 4 -1
      449 CALL                             R12 -1 1
      450 SETTABLEKS                       R12 R11 K36 ["Size"]
      452 NAMECALL                         R12 R4 K48 ["getNextOrder"]
      454 CALL                             R12 1 1
      455 SETTABLEKS                       R12 R11 K37 ["LayoutOrder"]
      457 GETIMPORT                        R12 K106 [Enum.HorizontalAlignment.Right]
      459 SETTABLEKS                       R12 R11 K42 ["HorizontalAlignment"]
      461 GETIMPORT                        R12 K108 [Enum.FillDirection.Horizontal]
      463 SETTABLEKS                       R12 R11 K41 ["Layout"]
      465 GETIMPORT                        R12 K109 [Enum.VerticalAlignment.Center]
      467 SETTABLEKS                       R12 R11 K43 ["VerticalAlignment"]
      469 DUPTABLE                         R12 K111 [{"GetStartedButton"}]
      470 GETUPVAL                         R13 2
      471 GETTABLEKS                       R13 R13 K35 ["createElement"]
      473 GETUPVAL                         R14 9
      474 DUPTABLE                         R15 K115 [{["Size"], ["Text"], ["OnClick"], ["Style"] = "RoundPrimary"}]
      475 GETUPVAL                         R16 5
      476 GETTABLEKS                       R16 R16 K116 ["getTextSize"]
      478 MOVE                             R17 R7
      479 GETTABLEKS                       R18 R2 K84 ["TextSize"]
      481 GETTABLEKS                       R19 R2 K83 ["Font"]
      483 GETTABLEKS                       R20 R2 K117 ["ButtonPadding"]
      485 CALL                             R16 4 1
      486 SETTABLEKS                       R16 R15 K36 ["Size"]
      488 SETTABLEKS                       R7 R15 K75 ["Text"]
      490 GETTABLEKS                       R16 R0 K118 ["createNewExperience"]
      492 SETTABLEKS                       R16 R15 K112 ["OnClick"]
      494 CALL                             R13 2 1
      495 SETTABLEKS                       R13 R12 K110 ["GetStartedButton"]
      497 CALL                             R9 3 1
      498 SETTABLEKS                       R9 R8 K33 ["GetStartedButtonPane"]
      500 RETURN                           R8 1

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
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R8 R8 K9 ["createElement"]
       36 GETUPVAL                         R9 1
       37 NEWTABLE                         R10 4 0
       39 LOADN                            R11 0
       40 SETTABLEKS                       R11 R10 K10 ["BackgroundTransparency"]
       42 GETTABLEKS                       R11 R5 K11 ["BackgroundColor"]
       44 SETTABLEKS                       R11 R10 K11 ["BackgroundColor"]
       46 DUPTABLE                         R11 K13 [{"Top"}]
       47 GETTABLEKS                       R12 R5 K14 ["PanePadding"]
       49 GETTABLEKS                       R12 R12 K12 ["Top"]
       51 SETTABLEKS                       R12 R11 K12 ["Top"]
       53 SETTABLEKS                       R11 R10 K15 ["Padding"]
       55 GETUPVAL                         R11 0
       56 GETTABLEKS                       R11 R11 K16 ["Ref"]
       58 GETTABLEKS                       R12 R0 K17 ["ref"]
       60 SETTABLE                         R12 R10 R11
       61 DUPTABLE                         R11 K20 [{"IconPane", "MainPane"}]
       62 JUMPIFNOT                        R7 ; [+57]
       63 GETUPVAL                         R12 0
       64 GETTABLEKS                       R12 R12 K9 ["createElement"]
       66 GETUPVAL                         R13 1
       67 DUPTABLE                         R14 K22 [{"Size"}]
       68 GETIMPORT                        R15 K25 [UDim2.new]
       70 LOADN                            R16 0
       71 GETTABLEKS                       R19 R1 K27 ["paneSize"]
       73 GETTABLEKS                       R19 R19 K28 ["X"]
       75 GETTABLEKS                       R20 R5 K29 ["Width"]
       77 SUB                              R18 R19 R20
       78 DIVK                             R17 R18 K26 [2]
       79 LOADN                            R18 1
       80 LOADN                            R19 0
       81 CALL                             R15 4 1
       82 SETTABLEKS                       R15 R14 K21 ["Size"]
       84 NEWTABLE                         R15 0 1
       86 GETUPVAL                         R16 0
       87 GETTABLEKS                       R16 R16 K9 ["createElement"]
       89 GETUPVAL                         R17 2
       90 DUPTABLE                         R18 K34 [{["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1, ["Image"]}]
       91 GETTABLEKS                       R19 R5 K35 ["IconSize"]
       93 SETTABLEKS                       R19 R18 K21 ["Size"]
       95 GETIMPORT                        R19 K37 [Vector2.new]
       97 LOADK                            R20 K38 [0.5]
       98 LOADN                            R21 0
       99 CALL                             R19 2 1
      100 SETTABLEKS                       R19 R18 K30 ["AnchorPoint"]
      102 GETIMPORT                        R19 K25 [UDim2.new]
      104 LOADK                            R20 K38 [0.5]
      105 LOADN                            R21 0
      106 LOADN                            R22 0
      107 LOADN                            R23 0
      108 CALL                             R19 4 1
      109 SETTABLEKS                       R19 R18 K31 ["Position"]
      111 GETTABLEKS                       R19 R5 K39 ["CompleteIcon"]
      113 SETTABLEKS                       R19 R18 K33 ["Image"]
      115 CALL                             R16 2 -1
      116 SETLIST                          R15 R16 -1 [1]
      118 CALL                             R12 3 1
      119 JUMP                             ; [+1]
      120 LOADNIL                          R12
      121 SETTABLEKS                       R12 R11 K18 ["IconPane"]
      123 GETUPVAL                         R12 0
      124 GETTABLEKS                       R12 R12 K9 ["createElement"]
      126 GETUPVAL                         R13 1
      127 DUPTABLE                         R14 K45 [{["BackgroundTransparency"] = 0, ["BackgroundColor"], ["Layout"], ["HorizontalAlignment"], ["VerticalAlignment"], ["Padding"], ["Spacing"]}]
      128 GETTABLEKS                       R15 R5 K11 ["BackgroundColor"]
      130 SETTABLEKS                       R15 R14 K11 ["BackgroundColor"]
      132 GETIMPORT                        R15 K49 [Enum.FillDirection.Vertical]
      134 SETTABLEKS                       R15 R14 K41 ["Layout"]
      136 GETIMPORT                        R15 K51 [Enum.HorizontalAlignment.Center]
      138 SETTABLEKS                       R15 R14 K42 ["HorizontalAlignment"]
      140 GETIMPORT                        R15 K52 [Enum.VerticalAlignment.Top]
      142 SETTABLEKS                       R15 R14 K43 ["VerticalAlignment"]
      144 DUPTABLE                         R15 K54 [{"Left"}]
      145 GETTABLEKS                       R16 R5 K14 ["PanePadding"]
      147 GETTABLEKS                       R16 R16 K53 ["Left"]
      149 SETTABLEKS                       R16 R15 K53 ["Left"]
      151 SETTABLEKS                       R15 R14 K15 ["Padding"]
      153 GETTABLEKS                       R15 R5 K44 ["Spacing"]
      155 SETTABLEKS                       R15 R14 K44 ["Spacing"]
      157 DUPTABLE                         R15 K56 [{"ContentPane"}]
      158 GETUPVAL                         R16 0
      159 GETTABLEKS                       R16 R16 K9 ["createElement"]
      161 GETUPVAL                         R17 1
      162 DUPTABLE                         R18 K57 [{"Size", "Spacing", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
      163 GETIMPORT                        R19 K25 [UDim2.new]
      165 LOADN                            R20 0
      166 GETTABLEKS                       R21 R5 K29 ["Width"]
      168 LOADN                            R22 1
      169 LOADN                            R23 0
      170 CALL                             R19 4 1
      171 SETTABLEKS                       R19 R18 K21 ["Size"]
      173 GETTABLEKS                       R19 R5 K58 ["VerticalTextSpacing"]
      175 SETTABLEKS                       R19 R18 K44 ["Spacing"]
      177 GETIMPORT                        R19 K49 [Enum.FillDirection.Vertical]
      179 SETTABLEKS                       R19 R18 K41 ["Layout"]
      181 GETIMPORT                        R19 K59 [Enum.HorizontalAlignment.Left]
      183 SETTABLEKS                       R19 R18 K42 ["HorizontalAlignment"]
      185 GETIMPORT                        R19 K52 [Enum.VerticalAlignment.Top]
      187 SETTABLEKS                       R19 R18 K43 ["VerticalAlignment"]
      189 MOVE                             R19 R6
      190 CALL                             R16 3 1
      191 SETTABLEKS                       R16 R15 K55 ["ContentPane"]
      193 CALL                             R12 3 1
      194 SETTABLEKS                       R12 R11 K19 ["MainPane"]
      196 CALL                             R8 3 -1
      197 RETURN                           R8 -1

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
       33 GETTABLEKS                       R6 R4 K13 ["Packages"]
       35 GETTABLEKS                       R6 R6 K14 ["Framework"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K12 [require]
       40 GETTABLEKS                       R7 R4 K13 ["Packages"]
       42 GETTABLEKS                       R7 R7 K15 ["Roact"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K12 [require]
       47 GETTABLEKS                       R8 R4 K13 ["Packages"]
       49 GETTABLEKS                       R8 R8 K16 ["RoactRodux"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K12 [require]
       54 GETTABLEKS                       R9 R4 K17 ["Src"]
       56 GETTABLEKS                       R9 R9 K18 ["Util"]
       58 GETTABLEKS                       R9 R9 K19 ["UILayoutHelpers"]
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
       81 GETTABLEKS                       R19 R4 K17 ["Src"]
       83 GETTABLEKS                       R19 R19 K18 ["Util"]
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
