PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 NEWTABLE                         R3 0 0
        7 GETTABLEKS                       R4 R1 K0 ["data"]
        9 JUMPIF                           R4 ; [+2]
       10 NEWTABLE                         R4 0 0
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 GETTABLEKS                       R9 R8 K1 ["name"]
       17 JUMPIFNOT                        R9 ; [+63]
       18 GETTABLEKS                       R9 R8 K2 ["id"]
       20 JUMPIFNOT                        R9 ; [+60]
       21 GETTABLEKS                       R9 R8 K3 ["rootPlaceId"]
       23 JUMPIFNOT                        R9 ; [+57]
       24 GETUPVAL                         R10 1
       25 GETTABLEKS                       R11 R8 K2 ["id"]
       27 GETTABLE                         R9 R10 R11
       28 JUMPIF                           R9 ; [+52]
       29 GETTABLEKS                       R9 R8 K2 ["id"]
       31 DUPTABLE                         R10 K18 [{["IsGame"] = True, ["Name"], ["CreatorName"], ["CreatorType"], ["CreatorTargetId"], ["Type"] = "Experience", ["Description"], ["Created"], ["Updated"], ["Audiences"], ["Id"], ["RootPlaceId"]}]
       32 GETTABLEKS                       R11 R8 K1 ["name"]
       34 SETTABLEKS                       R11 R10 K6 ["Name"]
       36 GETTABLEKS                       R11 R8 K19 ["creatorName"]
       38 SETTABLEKS                       R11 R10 K7 ["CreatorName"]
       40 GETTABLEKS                       R11 R8 K20 ["creatorType"]
       42 SETTABLEKS                       R11 R10 K8 ["CreatorType"]
       44 GETTABLEKS                       R11 R8 K21 ["creatorTargetId"]
       46 SETTABLEKS                       R11 R10 K9 ["CreatorTargetId"]
       48 GETTABLEKS                       R11 R8 K22 ["description"]
       50 SETTABLEKS                       R11 R10 K12 ["Description"]
       52 GETTABLEKS                       R11 R8 K23 ["created"]
       54 SETTABLEKS                       R11 R10 K13 ["Created"]
       56 GETTABLEKS                       R11 R8 K24 ["updated"]
       58 SETTABLEKS                       R11 R10 K14 ["Updated"]
       60 GETTABLEKS                       R11 R8 K25 ["audiences"]
       62 SETTABLEKS                       R11 R10 K15 ["Audiences"]
       64 GETTABLEKS                       R11 R8 K2 ["id"]
       66 SETTABLEKS                       R11 R10 K16 ["Id"]
       68 GETTABLEKS                       R11 R8 K3 ["rootPlaceId"]
       70 SETTABLEKS                       R11 R10 K17 ["RootPlaceId"]
       72 SETTABLE                         R10 R2 R9
       73 GETTABLEKS                       R11 R8 K2 ["id"]
       75 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       77 MOVE                             R10 R3
       78 GETIMPORT                        R9 K28 [table.insert]
       80 CALL                             R9 2 0
       81 FORGLOOP                         R4 2 ; [-67]
       83 NEWTABLE                         R4 0 0
       85 MOVE                             R5 R3
       86 LOADNIL                          R6
       87 LOADNIL                          R7
       88 FORGPREP                         R5
       89 GETTABLE                         R12 R2 R9
       90 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       92 MOVE                             R11 R4
       93 GETIMPORT                        R10 K28 [table.insert]
       95 CALL                             R10 2 0
       96 FORGLOOP                         R5 2 ; [-8]
       98 GETUPVAL                         R5 2
       99 JUMPIFNOT                        R5 ; [+7]
      100 LENGTH                           R5 R3
      101 LOADN                            R6 0
      102 JUMPIFNOTLT                      R6 R5 ; [+4]
      104 GETUPVAL                         R5 3
      105 MOVE                             R6 R3
      106 CALL                             R5 1 0
      107 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        ASSERT R3 ; [+2]
        2 GETIMPORT                        R2 K1 [assert]
        4 CALL                             R2 1 0
        5 GETTABLEKS                       R2 R0 K2 ["creatorType"]
        7 JUMPIFNOTEQKS                    R2 K3 ["User"] ; [+4]
        9 GETTABLEKS                       R2 R0 K4 ["creatorTargetId"]
       11 JUMPIF                           R2 ; [+2]
       12 LOADNIL                          R2
       13 RETURN                           R2 1
       14 DUPTABLE                         R2 K14 [{["search"], ["creatorType"], ["creatorTargetId"], ["isArchived"] = False, ["isTemplates"] = False, ["sortParam"] = "LastUpdated", ["sortOrder"] = "Desc", ["pageSize"]}]
       15 GETTABLEKS                       R4 R0 K5 ["search"]
       17 ORK                              R3 R4 K15 [""]
       18 SETTABLEKS                       R3 R2 K5 ["search"]
       20 GETTABLEKS                       R3 R0 K2 ["creatorType"]
       22 SETTABLEKS                       R3 R2 K2 ["creatorType"]
       24 GETTABLEKS                       R3 R0 K4 ["creatorTargetId"]
       26 SETTABLEKS                       R3 R2 K4 ["creatorTargetId"]
       28 GETTABLEKS                       R4 R0 K13 ["pageSize"]
       30 ORK                              R3 R4 K16 [10]
       31 SETTABLEKS                       R3 R2 K13 ["pageSize"]
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R3 R3 K17 ["new"]
       36 CALL                             R3 0 1
       37 GETTABLEKS                       R7 R3 K18 ["composeUrl"]
       39 GETUPVAL                         R8 2
       40 GETTABLEKS                       R8 R8 K19 ["EXPERIENCES_SEARCH_URL"]
       42 GETTABLEKS                       R8 R8 K20 ["Prefix"]
       44 GETUPVAL                         R9 2
       45 GETTABLEKS                       R9 R9 K19 ["EXPERIENCES_SEARCH_URL"]
       47 GETTABLEKS                       R9 R9 K21 ["Url"]
       49 CALL                             R9 0 1
       50 MOVE                             R10 R2
       51 CALL                             R7 3 1
       52 MOVE                             R5 R7
       53 LOADK                            R6 K22 ["&surface=StudioStartPage&PageIndex=0"]
       54 CONCAT                           R4 R5 R6
       55 GETUPVAL                         R5 3
       56 JUMPIFNOT                        R5 ; [+3]
       57 MOVE                             R5 R4
       58 LOADK                            R6 K23 ["&needsAssetOptions=true"]
       59 CONCAT                           R4 R5 R6
       60 GETUPVAL                         R5 4
       61 GETUPVAL                         R7 4
       62 MOVE                             R9 R4
       63 NAMECALL                         R7 R7 K24 ["get"]
       65 CALL                             R7 2 -1
       66 NAMECALL                         R5 R5 K25 ["parseJson"]
       68 CALL                             R5 -1 1
       69 NEWCLOSURE                       R7 P0
       70 CAPTURE                          UPVAL U5
       71 CAPTURE                          VAL R1
       72 CAPTURE                          UPVAL U6
       73 CAPTURE                          UPVAL U7
       74 NAMECALL                         R5 R5 K26 ["andThen"]
       76 CALL                             R5 2 -1
       77 RETURN                           R5 -1

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
       19 GETTABLEKS                       R3 R0 K6 ["Src"]
       21 GETTABLEKS                       R3 R3 K7 ["SharedFlags"]
       23 GETTABLEKS                       R3 R3 K9 ["getFFlagStartPageBackfillRecentsFromCloud"]
       25 CALL                             R2 1 1
       26 CALL                             R2 0 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K7 ["SharedFlags"]
       33 GETTABLEKS                       R4 R4 K10 ["getFFlagStartPageAddBuildSealBadge"]
       35 CALL                             R3 1 1
       36 CALL                             R3 0 1
       37 GETIMPORT                        R4 K5 [require]
       39 GETTABLEKS                       R5 R0 K11 ["Packages"]
       41 GETTABLEKS                       R5 R5 K12 ["Framework"]
       43 CALL                             R4 1 1
       44 GETIMPORT                        R5 K5 [require]
       46 GETTABLEKS                       R6 R0 K6 ["Src"]
       48 GETTABLEKS                       R6 R6 K13 ["Types"]
       50 CALL                             R5 1 1
       51 GETIMPORT                        R6 K5 [require]
       53 GETTABLEKS                       R7 R0 K6 ["Src"]
       55 GETTABLEKS                       R7 R7 K14 ["Models"]
       57 GETTABLEKS                       R7 R7 K15 ["SearchUniversesResponse"]
       59 CALL                             R6 1 1
       60 GETIMPORT                        R7 K5 [require]
       62 GETTABLEKS                       R8 R0 K6 ["Src"]
       64 GETTABLEKS                       R8 R8 K16 ["Network"]
       66 GETTABLEKS                       R8 R8 K17 ["Urls"]
       68 CALL                             R7 1 1
       69 GETIMPORT                        R8 K5 [require]
       71 GETTABLEKS                       R9 R0 K6 ["Src"]
       73 GETTABLEKS                       R9 R9 K18 ["Util"]
       75 GETTABLEKS                       R9 R9 K19 ["Services"]
       77 CALL                             R8 1 1
       78 GETTABLEKS                       R8 R8 K20 ["Networking"]
       80 GETIMPORT                        R9 K5 [require]
       82 GETTABLEKS                       R10 R0 K6 ["Src"]
       84 GETTABLEKS                       R10 R10 K18 ["Util"]
       86 GETTABLEKS                       R10 R10 K21 ["createResponseValidator"]
       88 CALL                             R9 1 1
       89 GETIMPORT                        R10 K5 [require]
       91 GETTABLEKS                       R11 R0 K6 ["Src"]
       93 GETTABLEKS                       R11 R11 K16 ["Network"]
       95 GETTABLEKS                       R11 R11 K22 ["DiscoverBuildSealStatus"]
       97 CALL                             R10 1 1
       98 GETIMPORT                        R11 K5 [require]
      100 GETTABLEKS                       R12 R0 K6 ["Src"]
      102 GETTABLEKS                       R12 R12 K7 ["SharedFlags"]
      104 GETTABLEKS                       R12 R12 K23 ["getFFlagLuaStartPageCoreContentStatus"]
      106 CALL                             R11 1 1
      107 CALL                             R11 0 1
      108 GETTABLEKS                       R12 R4 K24 ["RobloxAPI"]
      110 GETTABLEKS                       R12 R12 K25 ["Url"]
      112 GETTABLEKS                       R13 R8 K26 ["new"]
      114 DUPTABLE                         R14 K30 [{["isInternal"] = True, ["loggingLevel"]}]
      115 SETTABLEKS                       R1 R14 K29 ["loggingLevel"]
      117 CALL                             R13 1 1
      118 MOVE                             R14 R9
      119 GETTABLEKS                       R15 R6 K31 ["validate"]
      121 CALL                             R14 1 1
      122 DUPCLOSURE                       R15 K32 [PROTO_1]
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R10
      131 RETURN                           R15 1
