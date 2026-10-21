PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["universe"]
        2 JUMPIFNOT                        R2 ; [+15]
        3 GETTABLEKS                       R2 R1 K0 ["universe"]
        5 GETTABLEKS                       R2 R2 K1 ["name"]
        7 JUMPIFNOT                        R2 ; [+10]
        8 GETTABLEKS                       R2 R1 K0 ["universe"]
       10 GETTABLEKS                       R2 R2 K2 ["id"]
       12 JUMPIFNOT                        R2 ; [+5]
       13 GETTABLEKS                       R2 R1 K0 ["universe"]
       15 GETTABLEKS                       R2 R2 K3 ["rootPlaceId"]
       17 JUMPIF                           R2 ; [+2]
       18 LOADNIL                          R2
       19 RETURN                           R2 1
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K4 ["search"]
       23 JUMPIFEQKS                       R2 K5 ["All"] ; [+8]
       25 GETTABLEKS                       R2 R1 K6 ["gameTemplateType"]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K4 ["search"]
       30 JUMPIFNOTEQ                      R2 R3 ; [+25]
       32 DUPTABLE                         R2 K11 [{"Name", "Id", "GameTemplateType", "RootPlaceId"}]
       33 GETTABLEKS                       R3 R1 K0 ["universe"]
       35 GETTABLEKS                       R3 R3 K1 ["name"]
       37 SETTABLEKS                       R3 R2 K7 ["Name"]
       39 GETTABLEKS                       R3 R1 K0 ["universe"]
       41 GETTABLEKS                       R3 R3 K2 ["id"]
       43 SETTABLEKS                       R3 R2 K8 ["Id"]
       45 GETTABLEKS                       R3 R1 K6 ["gameTemplateType"]
       47 SETTABLEKS                       R3 R2 K9 ["GameTemplateType"]
       49 GETTABLEKS                       R3 R1 K0 ["universe"]
       51 GETTABLEKS                       R3 R3 K3 ["rootPlaceId"]
       53 SETTABLEKS                       R3 R2 K10 ["RootPlaceId"]
       55 RETURN                           R2 1
       56 LOADNIL                          R2
       57 RETURN                           R2 1

PROTO_1:
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

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["name"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETTABLEKS                       R2 R1 K1 ["id"]
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETTABLEKS                       R2 R1 K2 ["rootPlaceId"]
        8 JUMPIF                           R2 ; [+2]
        9 LOADNIL                          R2
       10 RETURN                           R2 1
       11 DUPTABLE                         R2 K18 [{["IsGame"] = True, ["Name"], ["CreatorName"], ["CreatorType"], ["CreatorTargetId"], ["Type"] = "Experience", ["Description"], ["Created"], ["Updated"], ["Audiences"], ["ReachStatus"], ["Id"], ["RootPlaceId"]}]
       12 GETTABLEKS                       R3 R1 K0 ["name"]
       14 SETTABLEKS                       R3 R2 K5 ["Name"]
       16 GETTABLEKS                       R3 R1 K19 ["creatorName"]
       18 SETTABLEKS                       R3 R2 K6 ["CreatorName"]
       20 GETTABLEKS                       R3 R1 K20 ["creatorType"]
       22 SETTABLEKS                       R3 R2 K7 ["CreatorType"]
       24 GETTABLEKS                       R3 R1 K21 ["creatorTargetId"]
       26 SETTABLEKS                       R3 R2 K8 ["CreatorTargetId"]
       28 GETTABLEKS                       R3 R1 K22 ["description"]
       30 SETTABLEKS                       R3 R2 K11 ["Description"]
       32 GETTABLEKS                       R3 R1 K23 ["created"]
       34 SETTABLEKS                       R3 R2 K12 ["Created"]
       36 GETTABLEKS                       R3 R1 K24 ["updated"]
       38 SETTABLEKS                       R3 R2 K13 ["Updated"]
       40 GETTABLEKS                       R3 R1 K25 ["audiences"]
       42 SETTABLEKS                       R3 R2 K14 ["Audiences"]
       44 GETTABLEKS                       R3 R1 K26 ["reachStatus"]
       46 SETTABLEKS                       R3 R2 K15 ["ReachStatus"]
       48 GETTABLEKS                       R3 R1 K1 ["id"]
       50 SETTABLEKS                       R3 R2 K16 ["Id"]
       52 GETTABLEKS                       R3 R1 K2 ["rootPlaceId"]
       54 SETTABLEKS                       R3 R2 K17 ["RootPlaceId"]
       56 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R1 K0 ["data"]
        6 DUPCLOSURE                       R4 K1 [PROTO_2]
        7 CALL                             R2 2 1
        8 DUPTABLE                         R3 K4 [{"games", "targetResults"}]
        9 SETTABLEKS                       R2 R3 K2 ["games"]
       11 GETTABLEKS                       R4 R1 K5 ["totalResults"]
       13 JUMPIF                           R4 ; [+1]
       14 LENGTH                           R4 R2
       15 SETTABLEKS                       R4 R3 K3 ["targetResults"]
       17 RETURN                           R3 1

PROTO_4:
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

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["games"]
        2 GETTABLEKS                       R2 R0 K1 ["targetResults"]
        4 GETUPVAL                         R3 0
        5 JUMPIFEQKNIL                     R3 ; [+24]
        7 GETIMPORT                        R3 K4 [os.clock]
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 0
       11 GETUPVAL                         R6 1
       12 DUPTABLE                         R7 K13 [{["telemetryType"] = "performance", ["telemetrySubtype"] = "search_load", ["measurementName"] = "discover_experiences", ["timeElapsedMilliseconds"], ["context"]}]
       13 GETUPVAL                         R11 2
       14 SUB                              R10 R3 R11
       15 MULK                             R9 R10 K14 [1000]
       16 FASTCALL1                        MATH_ROUND R9 ; [+2]
       17 GETIMPORT                        R8 K17 [math.round]
       19 CALL                             R8 1 1
       20 SETTABLEKS                       R8 R7 K11 ["timeElapsedMilliseconds"]
       22 GETUPVAL                         R8 3
       23 GETUPVAL                         R9 4
       24 CALL                             R8 1 1
       25 SETTABLEKS                       R8 R7 K12 ["context"]
       27 NAMECALL                         R4 R4 K18 ["log"]
       29 CALL                             R4 3 0
       30 GETUPVAL                         R3 5
       31 MOVE                             R4 R1
       32 DUPCLOSURE                       R5 K19 [PROTO_4]
       33 CALL                             R3 2 1
       34 GETUPVAL                         R4 6
       35 JUMPIFNOT                        R4 ; [+29]
       36 GETUPVAL                         R4 7
       37 JUMPIFNOT                        R4 ; [+23]
       38 NEWTABLE                         R4 0 0
       40 MOVE                             R5 R3
       41 LOADNIL                          R6
       42 LOADNIL                          R7
       43 FORGPREP                         R5
       44 GETUPVAL                         R10 8
       45 MOVE                             R12 R9
       46 NAMECALL                         R10 R10 K20 ["getItem"]
       48 CALL                             R10 2 1
       49 JUMPIFNOTEQKNIL                  R10 ; [+8]
       51 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       53 MOVE                             R11 R4
       54 MOVE                             R12 R9
       55 GETIMPORT                        R10 K23 [table.insert]
       57 CALL                             R10 2 0
       58 FORGLOOP                         R5 2 ; [-15]
       60 MOVE                             R3 R4
       61 LENGTH                           R4 R3
       62 JUMPIFNOTEQKN                    R4 K24 [0] ; [+2]
       64 RETURN                           R0 0
       65 GETUPVAL                         R4 8
       66 GETUPVAL                         R6 9
       67 GETUPVAL                         R7 10
       68 MOVE                             R8 R1
       69 NAMECALL                         R4 R4 K25 ["setItemsForPage"]
       71 CALL                             R4 4 0
       72 GETUPVAL                         R4 8
       73 GETUPVAL                         R6 9
       74 MOVE                             R7 R2
       75 NAMECALL                         R4 R4 K26 ["setTargetCount"]
       77 CALL                             R4 3 0
       78 GETUPVAL                         R4 11
       79 MOVE                             R5 R3
       80 CALL                             R4 1 0
       81 GETUPVAL                         R4 4
       82 GETTABLEKS                       R4 R4 K27 ["isTemplates"]
       84 JUMPIFNOT                        R4 ; [+5]
       85 GETUPVAL                         R4 12
       86 MOVE                             R5 R3
       87 GETUPVAL                         R6 9
       88 CALL                             R4 2 0
       89 RETURN                           R0 0
       90 GETUPVAL                         R4 13
       91 MOVE                             R5 R3
       92 GETUPVAL                         R6 9
       93 CALL                             R4 2 0
       94 GETUPVAL                         R4 14
       95 MOVE                             R5 R3
       96 CALL                             R4 1 0
       97 GETUPVAL                         R4 15
       98 MOVE                             R5 R3
       99 CALL                             R4 1 0
      100 GETUPVAL                         R4 16
      101 MOVE                             R5 R3
      102 CALL                             R4 1 0
      103 GETUPVAL                         R4 17
      104 MOVE                             R5 R3
      105 CALL                             R4 1 0
      106 GETUPVAL                         R4 18
      107 MOVE                             R5 R3
      108 CALL                             R4 1 0
      109 GETUPVAL                         R4 19
      110 MOVE                             R5 R3
      111 CALL                             R4 1 0
      112 GETUPVAL                         R4 20
      113 MOVE                             R5 R3
      114 CALL                             R4 1 0
      115 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["DiscoverExperiences experienced an error: %*"]
        3 MOVE                             R4 R0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R5 K2 [os.clock]
        2 CALL                             R5 0 1
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R6 R6 K3 ["new"]
        6 CALL                             R6 0 1
        7 LOADNIL                          R7
        8 GETTABLEKS                       R8 R0 K4 ["isTemplates"]
       10 JUMPIFNOT                        R8 ; [+44]
       11 JUMPIFEQKN                       R1 K5 [0] ; [+10]
       13 GETIMPORT                        R8 K7 [warn]
       15 LOADK                            R9 K8 ["Tried to load template page %*"]
       16 MOVE                             R11 R1
       17 NAMECALL                         R9 R9 K9 ["format"]
       19 CALL                             R9 2 1
       20 CALL                             R8 1 0
       21 RETURN                           R0 0
       22 GETTABLEKS                       R8 R6 K10 ["composeUrl"]
       24 GETUPVAL                         R9 1
       25 GETTABLEKS                       R9 R9 K11 ["TEMPLATES_SEARCH_URL"]
       27 GETTABLEKS                       R9 R9 K12 ["Prefix"]
       29 GETUPVAL                         R10 1
       30 GETTABLEKS                       R10 R10 K11 ["TEMPLATES_SEARCH_URL"]
       32 GETTABLEKS                       R10 R10 K13 ["Url"]
       34 CALL                             R10 0 1
       35 MOVE                             R11 R0
       36 CALL                             R8 3 1
       37 GETUPVAL                         R9 2
       38 GETUPVAL                         R11 2
       39 MOVE                             R13 R8
       40 NAMECALL                         R11 R11 K14 ["get"]
       42 CALL                             R11 2 -1
       43 NAMECALL                         R9 R9 K15 ["parseJson"]
       45 CALL                             R9 -1 1
       46 NEWCLOSURE                       R11 P0
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          VAL R0
       50 NAMECALL                         R9 R9 K16 ["andThen"]
       52 CALL                             R9 2 1
       53 MOVE                             R7 R9
       54 JUMP                             ; [+71]
       55 GETUPVAL                         R9 5
       56 JUMPIFNOT                        R9 ; [+7]
       57 GETTABLEKS                       R9 R0 K17 ["pageIndex"]
       59 JUMPIFEQKNIL                     R9 ; [+4]
       61 GETTABLEKS                       R8 R0 K17 ["pageIndex"]
       63 JUMP                             ; [+1]
       64 MOVE                             R8 R1
       65 GETTABLEKS                       R12 R6 K10 ["composeUrl"]
       67 GETUPVAL                         R13 1
       68 GETTABLEKS                       R13 R13 K18 ["EXPERIENCES_SEARCH_URL"]
       70 GETTABLEKS                       R13 R13 K12 ["Prefix"]
       72 GETUPVAL                         R14 1
       73 GETTABLEKS                       R14 R14 K18 ["EXPERIENCES_SEARCH_URL"]
       75 GETTABLEKS                       R14 R14 K13 ["Url"]
       77 CALL                             R14 0 1
       78 MOVE                             R15 R0
       79 CALL                             R12 3 1
       80 MOVE                             R10 R12
       81 LOADK                            R11 K19 ["&surface=StudioStartPage&PageIndex=%*"]
       82 MOVE                             R13 R8
       83 NAMECALL                         R11 R11 K9 ["format"]
       85 CALL                             R11 2 1
       86 CONCAT                           R9 R10 R11
       87 GETUPVAL                         R10 5
       88 JUMPIFNOT                        R10 ; [+15]
       89 GETTABLEKS                       R10 R0 K17 ["pageIndex"]
       91 JUMPIFEQKNIL                     R10 ; [+12]
       93 GETTABLEKS                       R10 R0 K20 ["pageSize"]
       95 JUMPIFNOT                        R10 ; [+8]
       96 MOVE                             R10 R9
       97 LOADK                            R11 K21 ["&PageSize=%*"]
       98 GETTABLEKS                       R13 R0 K20 ["pageSize"]
      100 NAMECALL                         R11 R11 K9 ["format"]
      102 CALL                             R11 2 1
      103 CONCAT                           R9 R10 R11
      104 MOVE                             R10 R9
      105 LOADK                            R11 K22 ["&needsAssetOptions=true"]
      106 CONCAT                           R9 R10 R11
      107 MOVE                             R10 R9
      108 LOADK                            R11 K23 ["&needsReachStatus=true"]
      109 CONCAT                           R9 R10 R11
      110 GETUPVAL                         R10 2
      111 GETUPVAL                         R12 2
      112 MOVE                             R14 R9
      113 NAMECALL                         R12 R12 K14 ["get"]
      115 CALL                             R12 2 -1
      116 NAMECALL                         R10 R10 K15 ["parseJson"]
      118 CALL                             R10 -1 1
      119 DUPCLOSURE                       R12 K24 [PROTO_3]
      120 CAPTURE                          UPVAL U6
      121 CAPTURE                          UPVAL U4
      122 NAMECALL                         R10 R10 K16 ["andThen"]
      124 CALL                             R10 2 1
      125 MOVE                             R7 R10
      126 NEWCLOSURE                       R10 P2
      127 CAPTURE                          VAL R4
      128 CAPTURE                          UPVAL U7
      129 CAPTURE                          VAL R5
      130 CAPTURE                          UPVAL U8
      131 CAPTURE                          VAL R0
      132 CAPTURE                          UPVAL U9
      133 CAPTURE                          UPVAL U10
      134 CAPTURE                          VAL R3
      135 CAPTURE                          UPVAL U11
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R1
      138 CAPTURE                          UPVAL U12
      139 CAPTURE                          UPVAL U13
      140 CAPTURE                          UPVAL U14
      141 CAPTURE                          UPVAL U15
      142 CAPTURE                          UPVAL U16
      143 CAPTURE                          UPVAL U17
      144 CAPTURE                          UPVAL U18
      145 CAPTURE                          UPVAL U19
      146 CAPTURE                          UPVAL U20
      147 CAPTURE                          UPVAL U21
      148 NAMECALL                         R8 R7 K16 ["andThen"]
      150 CALL                             R8 2 1
      151 DUPCLOSURE                       R10 K25 [PROTO_6]
      152 NAMECALL                         R8 R8 K26 ["catch"]
      154 CALL                             R8 2 0
      155 RETURN                           R0 0

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
       26 GETTABLEKS                       R4 R0 K9 ["Packages"]
       28 GETTABLEKS                       R4 R4 K11 ["Dash"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R4 R3 K12 ["collectArray"]
       33 GETTABLEKS                       R5 R3 K13 ["map"]
       35 GETIMPORT                        R6 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Src"]
       39 GETTABLEKS                       R7 R7 K14 ["Types"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K5 [require]
       44 GETTABLEKS                       R8 R0 K6 ["Src"]
       46 GETTABLEKS                       R8 R8 K15 ["Models"]
       48 GETTABLEKS                       R8 R8 K16 ["ApiArrayResponseGameTemplateModel"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K5 [require]
       53 GETTABLEKS                       R9 R0 K6 ["Src"]
       55 GETTABLEKS                       R9 R9 K15 ["Models"]
       57 GETTABLEKS                       R9 R9 K17 ["SearchUniversesResponse"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K5 [require]
       62 GETTABLEKS                       R10 R0 K6 ["Src"]
       64 GETTABLEKS                       R10 R10 K18 ["Network"]
       66 GETTABLEKS                       R10 R10 K19 ["Urls"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K5 [require]
       71 GETTABLEKS                       R11 R0 K6 ["Src"]
       73 GETTABLEKS                       R11 R11 K20 ["Util"]
       75 GETTABLEKS                       R11 R11 K21 ["Services"]
       77 CALL                             R10 1 1
       78 GETTABLEKS                       R10 R10 K22 ["Networking"]
       80 GETIMPORT                        R11 K5 [require]
       82 GETTABLEKS                       R12 R0 K6 ["Src"]
       84 GETTABLEKS                       R12 R12 K20 ["Util"]
       86 GETTABLEKS                       R12 R12 K23 ["createResponseValidator"]
       88 CALL                             R11 1 1
       89 GETTABLEKS                       R12 R2 K24 ["RobloxAPI"]
       91 GETTABLEKS                       R12 R12 K25 ["Url"]
       93 GETTABLEKS                       R13 R10 K26 ["new"]
       95 DUPTABLE                         R14 K30 [{["isInternal"] = True, ["loggingLevel"]}]
       96 SETTABLEKS                       R1 R14 K29 ["loggingLevel"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K5 [require]
      101 GETTABLEKS                       R15 R0 K6 ["Src"]
      103 GETTABLEKS                       R15 R15 K18 ["Network"]
      105 GETTABLEKS                       R15 R15 K31 ["DiscoverPlaces"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R15 K5 [require]
      110 GETTABLEKS                       R16 R0 K6 ["Src"]
      112 GETTABLEKS                       R16 R16 K18 ["Network"]
      114 GETTABLEKS                       R16 R16 K32 ["DiscoverAutogeneratedIcons"]
      116 CALL                             R15 1 1
      117 GETIMPORT                        R16 K5 [require]
      119 GETTABLEKS                       R17 R0 K6 ["Src"]
      121 GETTABLEKS                       R17 R17 K18 ["Network"]
      123 GETTABLEKS                       R17 R17 K33 ["DiscoverBuildSealStatus"]
      125 CALL                             R16 1 1
      126 GETIMPORT                        R17 K5 [require]
      128 GETTABLEKS                       R18 R0 K6 ["Src"]
      130 GETTABLEKS                       R18 R18 K18 ["Network"]
      132 GETTABLEKS                       R18 R18 K34 ["DiscoverPlaceholderIcons"]
      134 CALL                             R17 1 1
      135 GETIMPORT                        R18 K5 [require]
      137 GETTABLEKS                       R19 R0 K6 ["Src"]
      139 GETTABLEKS                       R19 R19 K18 ["Network"]
      141 GETTABLEKS                       R19 R19 K35 ["DiscoverTeamCreatePresence"]
      143 CALL                             R18 1 1
      144 GETIMPORT                        R19 K5 [require]
      146 GETTABLEKS                       R20 R0 K6 ["Src"]
      148 GETTABLEKS                       R20 R20 K18 ["Network"]
      150 GETTABLEKS                       R20 R20 K36 ["DiscoverAgeRecommendations"]
      152 CALL                             R19 1 1
      153 GETIMPORT                        R20 K5 [require]
      155 GETTABLEKS                       R21 R0 K6 ["Src"]
      157 GETTABLEKS                       R21 R21 K18 ["Network"]
      159 GETTABLEKS                       R21 R21 K37 ["DiscoverTeamCreateStatus"]
      161 CALL                             R20 1 1
      162 GETIMPORT                        R21 K5 [require]
      164 GETTABLEKS                       R22 R0 K6 ["Src"]
      166 GETTABLEKS                       R22 R22 K18 ["Network"]
      168 GETTABLEKS                       R22 R22 K38 ["DiscoverCoreContent"]
      170 CALL                             R21 1 1
      171 GETIMPORT                        R22 K5 [require]
      173 GETTABLEKS                       R23 R0 K6 ["Src"]
      175 GETTABLEKS                       R23 R23 K18 ["Network"]
      177 GETTABLEKS                       R23 R23 K39 ["DiscoverCollaborationRestriction"]
      179 CALL                             R22 1 1
      180 GETIMPORT                        R23 K5 [require]
      182 GETTABLEKS                       R24 R0 K6 ["Src"]
      184 GETTABLEKS                       R24 R24 K18 ["Network"]
      186 GETTABLEKS                       R24 R24 K40 ["DiscoverSequestration"]
      188 CALL                             R23 1 1
      189 GETIMPORT                        R24 K5 [require]
      191 GETTABLEKS                       R25 R0 K6 ["Src"]
      193 GETTABLEKS                       R25 R25 K7 ["SharedFlags"]
      195 GETTABLEKS                       R25 R25 K41 ["getFFlagLuaStartPageAutoRefresh"]
      197 CALL                             R24 1 1
      198 CALL                             R24 0 1
      199 GETIMPORT                        R25 K5 [require]
      201 GETTABLEKS                       R26 R0 K6 ["Src"]
      203 GETTABLEKS                       R26 R26 K7 ["SharedFlags"]
      205 GETTABLEKS                       R26 R26 K42 ["getFFlagLuaStartPageNewListView"]
      207 CALL                             R25 1 1
      208 CALL                             R25 0 1
      209 GETIMPORT                        R26 K5 [require]
      211 GETTABLEKS                       R27 R0 K6 ["Src"]
      213 GETTABLEKS                       R27 R27 K20 ["Util"]
      215 GETTABLEKS                       R27 R27 K43 ["Telemetry"]
      217 GETTABLEKS                       R27 R27 K44 ["TelemetryContext"]
      219 CALL                             R26 1 1
      220 GETIMPORT                        R27 K5 [require]
      222 GETTABLEKS                       R28 R0 K6 ["Src"]
      224 GETTABLEKS                       R28 R28 K20 ["Util"]
      226 GETTABLEKS                       R28 R28 K43 ["Telemetry"]
      228 GETTABLEKS                       R28 R28 K45 ["StartPageTelemetryEvent"]
      230 CALL                             R27 1 1
      231 GETIMPORT                        R28 K5 [require]
      233 GETTABLEKS                       R29 R0 K6 ["Src"]
      235 GETTABLEKS                       R29 R29 K18 ["Network"]
      237 GETTABLEKS                       R29 R29 K46 ["GameCache"]
      239 CALL                             R28 1 1
      240 GETIMPORT                        R29 K5 [require]
      242 GETTABLEKS                       R30 R0 K6 ["Src"]
      244 GETTABLEKS                       R30 R30 K20 ["Util"]
      246 GETTABLEKS                       R30 R30 K47 ["generateContextStrFromQuery"]
      248 CALL                             R29 1 1
      249 MOVE                             R30 R11
      250 GETTABLEKS                       R31 R7 K48 ["validate"]
      252 CALL                             R30 1 1
      253 MOVE                             R31 R11
      254 GETTABLEKS                       R32 R8 K48 ["validate"]
      256 CALL                             R31 1 1
      257 DUPCLOSURE                       R32 K49 [PROTO_7]
      258 CAPTURE                          VAL R12
      259 CAPTURE                          VAL R9
      260 CAPTURE                          VAL R13
      261 CAPTURE                          VAL R30
      262 CAPTURE                          VAL R4
      263 CAPTURE                          VAL R25
      264 CAPTURE                          VAL R31
      265 CAPTURE                          VAL R27
      266 CAPTURE                          VAL R29
      267 CAPTURE                          VAL R5
      268 CAPTURE                          VAL R24
      269 CAPTURE                          VAL R28
      270 CAPTURE                          VAL R14
      271 CAPTURE                          VAL R17
      272 CAPTURE                          VAL R15
      273 CAPTURE                          VAL R18
      274 CAPTURE                          VAL R19
      275 CAPTURE                          VAL R20
      276 CAPTURE                          VAL R21
      277 CAPTURE                          VAL R23
      278 CAPTURE                          VAL R22
      279 CAPTURE                          VAL R16
      280 RETURN                           R32 1
