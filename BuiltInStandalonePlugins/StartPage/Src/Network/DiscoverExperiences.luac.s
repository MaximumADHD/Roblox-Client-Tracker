PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADK                            R1 K0 [""]
        2 RETURN                           R1 1
        3 NEWTABLE                         R1 0 1
        5 GETTABLEKS                       R2 R0 K1 ["creatorType"]
        7 SETLIST                          R1 R2 1 [1]
        9 GETTABLEKS                       R2 R0 K2 ["isTemplates"]
       11 JUMPIFNOT                        R2 ; [+17]
       12 FASTCALL2K                       TABLE_INSERT R1 K3 ; [+5]
       14 MOVE                             R3 R1
       15 LOADK                            R4 K3 ["templates"]
       16 GETIMPORT                        R2 K6 [table.insert]
       18 CALL                             R2 2 0
       19 GETTABLEKS                       R5 R0 K8 ["search"]
       21 ORK                              R4 R5 K7 ["All"]
       22 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       24 MOVE                             R3 R1
       25 GETIMPORT                        R2 K6 [table.insert]
       27 CALL                             R2 2 0
       28 JUMP                             ; [+21]
       29 FASTCALL2K                       TABLE_INSERT R1 K9 ; [+5]
       31 MOVE                             R3 R1
       32 LOADK                            R4 K9 ["experiences"]
       33 GETIMPORT                        R2 K6 [table.insert]
       35 CALL                             R2 2 0
       36 GETTABLEKS                       R2 R0 K8 ["search"]
       38 JUMPIFNOT                        R2 ; [+11]
       39 GETTABLEKS                       R2 R0 K8 ["search"]
       41 JUMPIFEQKS                       R2 K0 [""] ; [+8]
       43 FASTCALL2K                       TABLE_INSERT R1 K8 ; [+5]
       45 MOVE                             R3 R1
       46 LOADK                            R4 K8 ["search"]
       47 GETIMPORT                        R2 K6 [table.insert]
       49 CALL                             R2 2 0
       50 GETTABLEKS                       R2 R0 K10 ["isPublic"]
       52 JUMPIFNOT                        R2 ; [+7]
       53 FASTCALL2K                       TABLE_INSERT R1 K11 ; [+5]
       55 MOVE                             R3 R1
       56 LOADK                            R4 K11 ["public"]
       57 GETIMPORT                        R2 K6 [table.insert]
       59 CALL                             R2 2 0
       60 GETTABLEKS                       R2 R0 K12 ["isArchived"]
       62 JUMPIFNOT                        R2 ; [+7]
       63 FASTCALL2K                       TABLE_INSERT R1 K13 ; [+5]
       65 MOVE                             R3 R1
       66 LOADK                            R4 K13 ["archived"]
       67 GETIMPORT                        R2 K6 [table.insert]
       69 CALL                             R2 2 0
       70 GETIMPORT                        R2 K16 [string.lower]
       72 GETIMPORT                        R3 K18 [table.concat]
       74 MOVE                             R4 R1
       75 LOADK                            R5 K19 ["_"]
       76 CALL                             R3 2 -1
       77 CALL                             R2 -1 -1
       78 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["universe"]
        2 JUMPIFNOT                        R2 ; [+15]
        3 GETTABLEKS                       R3 R1 K0 ["universe"]
        5 GETTABLEKS                       R2 R3 K1 ["name"]
        7 JUMPIFNOT                        R2 ; [+10]
        8 GETTABLEKS                       R3 R1 K0 ["universe"]
       10 GETTABLEKS                       R2 R3 K2 ["id"]
       12 JUMPIFNOT                        R2 ; [+5]
       13 GETTABLEKS                       R3 R1 K0 ["universe"]
       15 GETTABLEKS                       R2 R3 K3 ["rootPlaceId"]
       17 JUMPIF                           R2 ; [+2]
       18 LOADNIL                          R2
       19 RETURN                           R2 1
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R2 R3 K4 ["search"]
       23 JUMPIFEQKS                       R2 K5 ["All"] ; [+8]
       25 GETTABLEKS                       R2 R1 K6 ["gameTemplateType"]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R3 R4 K4 ["search"]
       30 JUMPIFNOTEQ                      R2 R3 ; [+25]
       32 DUPTABLE                         R2 K11 [{"Name", "Id", "GameTemplateType", "RootPlaceId"}]
       33 GETTABLEKS                       R4 R1 K0 ["universe"]
       35 GETTABLEKS                       R3 R4 K1 ["name"]
       37 SETTABLEKS                       R3 R2 K7 ["Name"]
       39 GETTABLEKS                       R4 R1 K0 ["universe"]
       41 GETTABLEKS                       R3 R4 K2 ["id"]
       43 SETTABLEKS                       R3 R2 K8 ["Id"]
       45 GETTABLEKS                       R3 R1 K6 ["gameTemplateType"]
       47 SETTABLEKS                       R3 R2 K9 ["GameTemplateType"]
       49 GETTABLEKS                       R4 R1 K0 ["universe"]
       51 GETTABLEKS                       R3 R4 K3 ["rootPlaceId"]
       53 SETTABLEKS                       R3 R2 K10 ["RootPlaceId"]
       55 RETURN                           R2 1
       56 LOADNIL                          R2
       57 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R1 K0 ["data"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U2
        8 CALL                             R2 2 1
        9 DUPTABLE                         R3 K3 [{"games", "targetResults"}]
       10 SETTABLEKS                       R2 R3 K1 ["games"]
       12 LENGTH                           R4 R2
       13 SETTABLEKS                       R4 R3 K2 ["targetResults"]
       15 RETURN                           R3 1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["name"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETTABLEKS                       R2 R1 K1 ["id"]
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETTABLEKS                       R2 R1 K2 ["rootPlaceId"]
        8 JUMPIF                           R2 ; [+2]
        9 LOADNIL                          R2
       10 RETURN                           R2 1
       11 GETTABLEKS                       R2 R1 K3 ["privacyType"]
       13 JUMPIFNOT                        R2 ; [+15]
       14 JUMPIFEQKS                       R2 K4 ["Public"] ; [+14]
       16 JUMPIFEQKS                       R2 K5 ["Private"] ; [+12]
       18 JUMPIFEQKS                       R2 K6 ["Draft"] ; [+10]
       20 GETIMPORT                        R3 K8 [error]
       22 LOADK                            R5 K9 ["Invalid value for privacyType: \"%*\""]
       23 MOVE                             R7 R2
       24 NAMECALL                         R5 R5 K10 ["format"]
       26 CALL                             R5 2 1
       27 MOVE                             R4 R5
       28 CALL                             R3 1 0
       29 DUPTABLE                         R3 K22 [{"IsGame", "Name", "CreatorName", "CreatorTargetId", "Type", "Description", "Created", "Updated", "PrivacyType", "Id", "RootPlaceId"}]
       30 LOADB                            R4 1
       31 SETTABLEKS                       R4 R3 K11 ["IsGame"]
       33 GETTABLEKS                       R4 R1 K0 ["name"]
       35 SETTABLEKS                       R4 R3 K12 ["Name"]
       37 GETTABLEKS                       R4 R1 K23 ["creatorName"]
       39 SETTABLEKS                       R4 R3 K13 ["CreatorName"]
       41 GETTABLEKS                       R4 R1 K24 ["creatorTargetId"]
       43 SETTABLEKS                       R4 R3 K14 ["CreatorTargetId"]
       45 LOADK                            R4 K25 ["Experience"]
       46 SETTABLEKS                       R4 R3 K15 ["Type"]
       48 GETTABLEKS                       R4 R1 K26 ["description"]
       50 SETTABLEKS                       R4 R3 K16 ["Description"]
       52 GETTABLEKS                       R4 R1 K27 ["created"]
       54 SETTABLEKS                       R4 R3 K17 ["Created"]
       56 GETTABLEKS                       R4 R1 K28 ["updated"]
       58 SETTABLEKS                       R4 R3 K18 ["Updated"]
       60 SETTABLEKS                       R2 R3 K19 ["PrivacyType"]
       62 GETTABLEKS                       R4 R1 K1 ["id"]
       64 SETTABLEKS                       R4 R3 K20 ["Id"]
       66 GETTABLEKS                       R4 R1 K2 ["rootPlaceId"]
       68 SETTABLEKS                       R4 R3 K21 ["RootPlaceId"]
       70 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R1 K0 ["data"]
        6 DUPCLOSURE                       R4 K1 [PROTO_3]
        7 CALL                             R2 2 1
        8 DUPTABLE                         R3 K4 [{"games", "targetResults"}]
        9 SETTABLEKS                       R2 R3 K2 ["games"]
       11 GETTABLEKS                       R4 R1 K5 ["totalResults"]
       13 JUMPIF                           R4 ; [+1]
       14 LENGTH                           R4 R2
       15 SETTABLEKS                       R4 R3 K3 ["targetResults"]
       17 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["IsPlaceholder"]
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        5 LOADK                            R3 K1 ["Data returned from network should not be a placeholder sentinel value"]
        6 GETIMPORT                        R1 K3 [assert]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R2 R0 K4 ["Id"]
       11 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       13 LOADK                            R3 K5 ["Experience should have a value for Id"]
       14 GETIMPORT                        R1 K3 [assert]
       16 CALL                             R1 2 0
       17 GETTABLEKS                       R1 R0 K4 ["Id"]
       19 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["games"]
        2 GETTABLEKS                       R2 R0 K1 ["targetResults"]
        4 GETUPVAL                         R3 0
        5 JUMPIFEQKNIL                     R3 ; [+33]
        7 GETIMPORT                        R3 K4 [os.clock]
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 0
       11 GETUPVAL                         R6 1
       12 DUPTABLE                         R7 K10 [{"telemetryType", "telemetrySubtype", "measurementName", "timeElapsedMilliseconds", "context"}]
       13 LOADK                            R8 K11 ["performance"]
       14 SETTABLEKS                       R8 R7 K5 ["telemetryType"]
       16 LOADK                            R8 K12 ["search_load"]
       17 SETTABLEKS                       R8 R7 K6 ["telemetrySubtype"]
       19 LOADK                            R8 K13 ["discover_experiences"]
       20 SETTABLEKS                       R8 R7 K7 ["measurementName"]
       22 GETUPVAL                         R11 2
       23 SUB                              R10 R3 R11
       24 MULK                             R9 R10 K14 [1000]
       25 FASTCALL1                        MATH_ROUND R9 ; [+2]
       26 GETIMPORT                        R8 K17 [math.round]
       28 CALL                             R8 1 1
       29 SETTABLEKS                       R8 R7 K8 ["timeElapsedMilliseconds"]
       31 GETUPVAL                         R8 3
       32 GETUPVAL                         R9 4
       33 CALL                             R8 1 1
       34 SETTABLEKS                       R8 R7 K9 ["context"]
       36 NAMECALL                         R4 R4 K18 ["log"]
       38 CALL                             R4 3 0
       39 GETUPVAL                         R3 5
       40 MOVE                             R4 R1
       41 DUPCLOSURE                       R5 K19 [PROTO_5]
       42 CALL                             R3 2 1
       43 GETUPVAL                         R4 6
       44 GETUPVAL                         R6 7
       45 GETUPVAL                         R7 8
       46 MOVE                             R8 R1
       47 NAMECALL                         R4 R4 K20 ["setItemsForPage"]
       49 CALL                             R4 4 0
       50 GETUPVAL                         R4 6
       51 GETUPVAL                         R6 7
       52 MOVE                             R7 R2
       53 NAMECALL                         R4 R4 K21 ["setTargetCount"]
       55 CALL                             R4 3 0
       56 GETUPVAL                         R4 9
       57 MOVE                             R5 R3
       58 CALL                             R4 1 0
       59 GETUPVAL                         R5 4
       60 GETTABLEKS                       R4 R5 K22 ["isTemplates"]
       62 JUMPIFNOT                        R4 ; [+5]
       63 GETUPVAL                         R4 10
       64 MOVE                             R5 R3
       65 GETUPVAL                         R6 7
       66 CALL                             R4 2 0
       67 RETURN                           R0 0
       68 GETUPVAL                         R4 11
       69 MOVE                             R5 R3
       70 GETUPVAL                         R6 7
       71 CALL                             R4 2 0
       72 GETUPVAL                         R4 12
       73 MOVE                             R5 R3
       74 CALL                             R4 1 0
       75 GETUPVAL                         R4 13
       76 MOVE                             R5 R3
       77 CALL                             R4 1 0
       78 GETUPVAL                         R4 14
       79 MOVE                             R5 R3
       80 CALL                             R4 1 0
       81 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["DiscoverExperiences experienced an error: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R4 K2 [os.clock]
        2 CALL                             R4 0 1
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R5 R6 K3 ["new"]
        6 CALL                             R5 0 1
        7 LOADNIL                          R6
        8 GETTABLEKS                       R7 R0 K4 ["isTemplates"]
       10 JUMPIFNOT                        R7 ; [+45]
       11 JUMPIFEQKN                       R1 K5 [0] ; [+11]
       13 GETIMPORT                        R7 K7 [warn]
       15 LOADK                            R9 K8 ["Tried to load template page %*"]
       16 MOVE                             R11 R1
       17 NAMECALL                         R9 R9 K9 ["format"]
       19 CALL                             R9 2 1
       20 MOVE                             R8 R9
       21 CALL                             R7 1 0
       22 RETURN                           R0 0
       23 GETTABLEKS                       R7 R5 K10 ["composeUrl"]
       25 GETUPVAL                         R10 1
       26 GETTABLEKS                       R9 R10 K11 ["TEMPLATES_SEARCH_URL"]
       28 GETTABLEKS                       R8 R9 K12 ["Prefix"]
       30 GETUPVAL                         R11 1
       31 GETTABLEKS                       R10 R11 K11 ["TEMPLATES_SEARCH_URL"]
       33 GETTABLEKS                       R9 R10 K13 ["Url"]
       35 CALL                             R9 0 1
       36 MOVE                             R10 R0
       37 CALL                             R7 3 1
       38 GETUPVAL                         R8 2
       39 GETUPVAL                         R10 2
       40 MOVE                             R12 R7
       41 NAMECALL                         R10 R10 K14 ["get"]
       43 CALL                             R10 2 -1
       44 NAMECALL                         R8 R8 K15 ["parseJson"]
       46 CALL                             R8 -1 1
       47 NEWCLOSURE                       R10 P0
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          VAL R0
       51 NAMECALL                         R8 R8 K16 ["andThen"]
       53 CALL                             R8 2 1
       54 MOVE                             R6 R8
       55 JUMP                             ; [+39]
       56 GETTABLEKS                       R10 R5 K10 ["composeUrl"]
       58 GETUPVAL                         R13 1
       59 GETTABLEKS                       R12 R13 K17 ["EXPERIENCES_SEARCH_URL"]
       61 GETTABLEKS                       R11 R12 K12 ["Prefix"]
       63 GETUPVAL                         R14 1
       64 GETTABLEKS                       R13 R14 K17 ["EXPERIENCES_SEARCH_URL"]
       66 GETTABLEKS                       R12 R13 K13 ["Url"]
       68 CALL                             R12 0 1
       69 MOVE                             R13 R0
       70 CALL                             R10 3 1
       71 MOVE                             R8 R10
       72 LOADK                            R10 K18 ["&surface=StudioStartPage&PageIndex=%*"]
       73 MOVE                             R12 R1
       74 NAMECALL                         R10 R10 K9 ["format"]
       76 CALL                             R10 2 1
       77 MOVE                             R9 R10
       78 CONCAT                           R7 R8 R9
       79 GETUPVAL                         R8 2
       80 GETUPVAL                         R10 2
       81 MOVE                             R12 R7
       82 NAMECALL                         R10 R10 K14 ["get"]
       84 CALL                             R10 2 -1
       85 NAMECALL                         R8 R8 K15 ["parseJson"]
       87 CALL                             R8 -1 1
       88 DUPCLOSURE                       R10 K19 [PROTO_4]
       89 CAPTURE                          UPVAL U5
       90 CAPTURE                          UPVAL U4
       91 NAMECALL                         R8 R8 K16 ["andThen"]
       93 CALL                             R8 2 1
       94 MOVE                             R6 R8
       95 NEWCLOSURE                       R9 P2
       96 CAPTURE                          VAL R3
       97 CAPTURE                          UPVAL U6
       98 CAPTURE                          VAL R4
       99 CAPTURE                          UPVAL U7
      100 CAPTURE                          VAL R0
      101 CAPTURE                          UPVAL U8
      102 CAPTURE                          UPVAL U9
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R1
      105 CAPTURE                          UPVAL U10
      106 CAPTURE                          UPVAL U11
      107 CAPTURE                          UPVAL U12
      108 CAPTURE                          UPVAL U13
      109 CAPTURE                          UPVAL U14
      110 CAPTURE                          UPVAL U15
      111 NAMECALL                         R7 R6 K16 ["andThen"]
      113 CALL                             R7 2 1
      114 DUPCLOSURE                       R9 K20 [PROTO_7]
      115 NAMECALL                         R7 R7 K21 ["catch"]
      117 CALL                             R7 2 0
      118 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFIntDebugLuaStartPageLogging"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 GETIMPORT                        R2 K5 [require]
       19 GETTABLEKS                       R4 R0 K9 ["Packages"]
       21 GETTABLEKS                       R3 R4 K10 ["Framework"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K5 [require]
       26 GETTABLEKS                       R5 R0 K9 ["Packages"]
       28 GETTABLEKS                       R4 R5 K11 ["Dash"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R4 R3 K12 ["collectArray"]
       33 GETTABLEKS                       R5 R3 K13 ["map"]
       35 GETIMPORT                        R6 K5 [require]
       37 GETTABLEKS                       R8 R0 K6 ["Src"]
       39 GETTABLEKS                       R7 R8 K14 ["Types"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K5 [require]
       44 GETTABLEKS                       R10 R0 K6 ["Src"]
       46 GETTABLEKS                       R9 R10 K15 ["Models"]
       48 GETTABLEKS                       R8 R9 K16 ["ApiArrayResponseGameTemplateModel"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K5 [require]
       53 GETTABLEKS                       R11 R0 K6 ["Src"]
       55 GETTABLEKS                       R10 R11 K15 ["Models"]
       57 GETTABLEKS                       R9 R10 K17 ["SearchUniversesResponse"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K5 [require]
       62 GETTABLEKS                       R12 R0 K6 ["Src"]
       64 GETTABLEKS                       R11 R12 K18 ["Network"]
       66 GETTABLEKS                       R10 R11 K19 ["Urls"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R11 K5 [require]
       71 GETTABLEKS                       R14 R0 K6 ["Src"]
       73 GETTABLEKS                       R13 R14 K20 ["Util"]
       75 GETTABLEKS                       R12 R13 K21 ["Services"]
       77 CALL                             R11 1 1
       78 GETTABLEKS                       R10 R11 K22 ["Networking"]
       80 GETIMPORT                        R11 K5 [require]
       82 GETTABLEKS                       R14 R0 K6 ["Src"]
       84 GETTABLEKS                       R13 R14 K20 ["Util"]
       86 GETTABLEKS                       R12 R13 K23 ["createResponseValidator"]
       88 CALL                             R11 1 1
       89 GETTABLEKS                       R13 R2 K24 ["RobloxAPI"]
       91 GETTABLEKS                       R12 R13 K25 ["Url"]
       93 GETTABLEKS                       R13 R10 K26 ["new"]
       95 DUPTABLE                         R14 K29 [{"isInternal", "loggingLevel"}]
       96 LOADB                            R15 1
       97 SETTABLEKS                       R15 R14 K27 ["isInternal"]
       99 SETTABLEKS                       R1 R14 K28 ["loggingLevel"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R17 R0 K6 ["Src"]
      106 GETTABLEKS                       R16 R17 K18 ["Network"]
      108 GETTABLEKS                       R15 R16 K30 ["DiscoverPlaces"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R18 R0 K6 ["Src"]
      115 GETTABLEKS                       R17 R18 K18 ["Network"]
      117 GETTABLEKS                       R16 R17 K31 ["DiscoverAutogeneratedIcons"]
      119 CALL                             R15 1 1
      120 GETIMPORT                        R16 K5 [require]
      122 GETTABLEKS                       R19 R0 K6 ["Src"]
      124 GETTABLEKS                       R18 R19 K18 ["Network"]
      126 GETTABLEKS                       R17 R18 K32 ["DiscoverPlaceholderIcons"]
      128 CALL                             R16 1 1
      129 GETIMPORT                        R17 K5 [require]
      131 GETTABLEKS                       R20 R0 K6 ["Src"]
      133 GETTABLEKS                       R19 R20 K18 ["Network"]
      135 GETTABLEKS                       R18 R19 K33 ["DiscoverTeamCreatePresence"]
      137 CALL                             R17 1 1
      138 GETIMPORT                        R18 K5 [require]
      140 GETTABLEKS                       R21 R0 K6 ["Src"]
      142 GETTABLEKS                       R20 R21 K18 ["Network"]
      144 GETTABLEKS                       R19 R20 K34 ["DiscoverAgeRecommendations"]
      146 CALL                             R18 1 1
      147 GETIMPORT                        R19 K5 [require]
      149 GETTABLEKS                       R22 R0 K6 ["Src"]
      151 GETTABLEKS                       R21 R22 K18 ["Network"]
      153 GETTABLEKS                       R20 R21 K35 ["DiscoverTeamCreateStatus"]
      155 CALL                             R19 1 1
      156 GETIMPORT                        R20 K5 [require]
      158 GETTABLEKS                       R24 R0 K6 ["Src"]
      160 GETTABLEKS                       R23 R24 K20 ["Util"]
      162 GETTABLEKS                       R22 R23 K36 ["Telemetry"]
      164 GETTABLEKS                       R21 R22 K37 ["TelemetryContext"]
      166 CALL                             R20 1 1
      167 GETIMPORT                        R21 K5 [require]
      169 GETTABLEKS                       R25 R0 K6 ["Src"]
      171 GETTABLEKS                       R24 R25 K20 ["Util"]
      173 GETTABLEKS                       R23 R24 K36 ["Telemetry"]
      175 GETTABLEKS                       R22 R23 K38 ["StartPageTelemetryEvent"]
      177 CALL                             R21 1 1
      178 GETIMPORT                        R22 K5 [require]
      180 GETTABLEKS                       R25 R0 K6 ["Src"]
      182 GETTABLEKS                       R24 R25 K18 ["Network"]
      184 GETTABLEKS                       R23 R24 K39 ["GameCache"]
      186 CALL                             R22 1 1
      187 DUPCLOSURE                       R23 K40 [PROTO_0]
      188 MOVE                             R24 R11
      189 GETTABLEKS                       R25 R7 K41 ["validate"]
      191 CALL                             R24 1 1
      192 MOVE                             R25 R11
      193 GETTABLEKS                       R26 R8 K41 ["validate"]
      195 CALL                             R25 1 1
      196 DUPCLOSURE                       R26 K42 [PROTO_8]
      197 CAPTURE                          VAL R12
      198 CAPTURE                          VAL R9
      199 CAPTURE                          VAL R13
      200 CAPTURE                          VAL R24
      201 CAPTURE                          VAL R4
      202 CAPTURE                          VAL R25
      203 CAPTURE                          VAL R21
      204 CAPTURE                          VAL R23
      205 CAPTURE                          VAL R5
      206 CAPTURE                          VAL R22
      207 CAPTURE                          VAL R14
      208 CAPTURE                          VAL R16
      209 CAPTURE                          VAL R15
      210 CAPTURE                          VAL R17
      211 CAPTURE                          VAL R18
      212 CAPTURE                          VAL R19
      213 RETURN                           R26 1
