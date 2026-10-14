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
       17 JUMPIFNOT                        R9 ; [+71]
       18 GETTABLEKS                       R9 R8 K2 ["id"]
       20 JUMPIFNOT                        R9 ; [+68]
       21 GETTABLEKS                       R9 R8 K3 ["rootPlaceId"]
       23 JUMPIFNOT                        R9 ; [+65]
       24 GETUPVAL                         R10 1
       25 GETTABLEKS                       R11 R8 K2 ["id"]
       27 GETTABLE                         R9 R10 R11
       28 JUMPIF                           R9 ; [+60]
       29 GETTABLEKS                       R9 R8 K2 ["id"]
       31 DUPTABLE                         R10 K19 [{["IsGame"] = True, ["Name"], ["CreatorName"], ["CreatorType"], ["CreatorTargetId"], ["Type"] = "Experience", ["Description"], ["Created"], ["Updated"], ["Audiences"], ["ReachStatus"], ["Id"], ["RootPlaceId"]}]
       32 GETTABLEKS                       R11 R8 K1 ["name"]
       34 SETTABLEKS                       R11 R10 K6 ["Name"]
       36 GETTABLEKS                       R11 R8 K20 ["creatorName"]
       38 SETTABLEKS                       R11 R10 K7 ["CreatorName"]
       40 GETTABLEKS                       R11 R8 K21 ["creatorType"]
       42 SETTABLEKS                       R11 R10 K8 ["CreatorType"]
       44 GETTABLEKS                       R11 R8 K22 ["creatorTargetId"]
       46 SETTABLEKS                       R11 R10 K9 ["CreatorTargetId"]
       48 GETTABLEKS                       R11 R8 K23 ["description"]
       50 SETTABLEKS                       R11 R10 K12 ["Description"]
       52 GETTABLEKS                       R11 R8 K24 ["created"]
       54 SETTABLEKS                       R11 R10 K13 ["Created"]
       56 GETTABLEKS                       R11 R8 K25 ["updated"]
       58 SETTABLEKS                       R11 R10 K14 ["Updated"]
       60 GETTABLEKS                       R11 R8 K26 ["audiences"]
       62 SETTABLEKS                       R11 R10 K15 ["Audiences"]
       64 GETUPVAL                         R12 2
       65 JUMPIFNOT                        R12 ; [+3]
       66 GETTABLEKS                       R11 R8 K27 ["reachStatus"]
       68 JUMP                             ; [+1]
       69 LOADNIL                          R11
       70 SETTABLEKS                       R11 R10 K16 ["ReachStatus"]
       72 GETTABLEKS                       R11 R8 K2 ["id"]
       74 SETTABLEKS                       R11 R10 K17 ["Id"]
       76 GETTABLEKS                       R11 R8 K3 ["rootPlaceId"]
       78 SETTABLEKS                       R11 R10 K18 ["RootPlaceId"]
       80 SETTABLE                         R10 R2 R9
       81 GETTABLEKS                       R11 R8 K2 ["id"]
       83 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       85 MOVE                             R10 R3
       86 GETIMPORT                        R9 K30 [table.insert]
       88 CALL                             R9 2 0
       89 FORGLOOP                         R4 2 ; [-75]
       91 NEWTABLE                         R4 0 0
       93 MOVE                             R5 R3
       94 LOADNIL                          R6
       95 LOADNIL                          R7
       96 FORGPREP                         R5
       97 GETTABLE                         R12 R2 R9
       98 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
      100 MOVE                             R11 R4
      101 GETIMPORT                        R10 K30 [table.insert]
      103 CALL                             R10 2 0
      104 FORGLOOP                         R5 2 ; [-8]
      106 GETUPVAL                         R5 3
      107 JUMPIFNOT                        R5 ; [+7]
      108 LENGTH                           R5 R3
      109 LOADN                            R6 0
      110 JUMPIFNOTLT                      R6 R5 ; [+4]
      112 GETUPVAL                         R5 4
      113 MOVE                             R6 R3
      114 CALL                             R5 1 0
      115 RETURN                           R4 1

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
       61 JUMPIFNOT                        R5 ; [+3]
       62 MOVE                             R5 R4
       63 LOADK                            R6 K24 ["&needsReachStatus=true"]
       64 CONCAT                           R4 R5 R6
       65 GETUPVAL                         R5 5
       66 GETUPVAL                         R7 5
       67 MOVE                             R9 R4
       68 NAMECALL                         R7 R7 K25 ["get"]
       70 CALL                             R7 2 -1
       71 NAMECALL                         R5 R5 K26 ["parseJson"]
       73 CALL                             R5 -1 1
       74 NEWCLOSURE                       R7 P0
       75 CAPTURE                          UPVAL U6
       76 CAPTURE                          VAL R1
       77 CAPTURE                          UPVAL U4
       78 CAPTURE                          UPVAL U7
       79 CAPTURE                          UPVAL U8
       80 NAMECALL                         R5 R5 K27 ["andThen"]
       82 CALL                             R5 2 -1
       83 RETURN                           R5 -1

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
      108 GETIMPORT                        R12 K5 [require]
      110 GETTABLEKS                       R13 R0 K6 ["Src"]
      112 GETTABLEKS                       R13 R13 K7 ["SharedFlags"]
      114 GETTABLEKS                       R13 R13 K24 ["getFFlagLuaStartPageReachStatus"]
      116 CALL                             R12 1 1
      117 CALL                             R12 0 1
      118 GETTABLEKS                       R13 R4 K25 ["RobloxAPI"]
      120 GETTABLEKS                       R13 R13 K26 ["Url"]
      122 GETTABLEKS                       R14 R8 K27 ["new"]
      124 DUPTABLE                         R15 K31 [{["isInternal"] = True, ["loggingLevel"]}]
      125 SETTABLEKS                       R1 R15 K30 ["loggingLevel"]
      127 CALL                             R14 1 1
      128 MOVE                             R15 R9
      129 GETTABLEKS                       R16 R6 K32 ["validate"]
      131 CALL                             R15 1 1
      132 DUPCLOSURE                       R16 K33 [PROTO_1]
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R13
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R14
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R10
      142 RETURN                           R16 1
