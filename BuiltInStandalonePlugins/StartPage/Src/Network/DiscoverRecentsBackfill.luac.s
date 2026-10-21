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
       17 JUMPIFNOT                        R9 ; [+67]
       18 GETTABLEKS                       R9 R8 K2 ["id"]
       20 JUMPIFNOT                        R9 ; [+64]
       21 GETTABLEKS                       R9 R8 K3 ["rootPlaceId"]
       23 JUMPIFNOT                        R9 ; [+61]
       24 GETUPVAL                         R10 1
       25 GETTABLEKS                       R11 R8 K2 ["id"]
       27 GETTABLE                         R9 R10 R11
       28 JUMPIF                           R9 ; [+56]
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
       64 GETTABLEKS                       R11 R8 K27 ["reachStatus"]
       66 SETTABLEKS                       R11 R10 K16 ["ReachStatus"]
       68 GETTABLEKS                       R11 R8 K2 ["id"]
       70 SETTABLEKS                       R11 R10 K17 ["Id"]
       72 GETTABLEKS                       R11 R8 K3 ["rootPlaceId"]
       74 SETTABLEKS                       R11 R10 K18 ["RootPlaceId"]
       76 SETTABLE                         R10 R2 R9
       77 GETTABLEKS                       R11 R8 K2 ["id"]
       79 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       81 MOVE                             R10 R3
       82 GETIMPORT                        R9 K30 [table.insert]
       84 CALL                             R9 2 0
       85 FORGLOOP                         R4 2 ; [-71]
       87 NEWTABLE                         R4 0 0
       89 MOVE                             R5 R3
       90 LOADNIL                          R6
       91 LOADNIL                          R7
       92 FORGPREP                         R5
       93 GETTABLE                         R12 R2 R9
       94 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       96 MOVE                             R11 R4
       97 GETIMPORT                        R10 K30 [table.insert]
       99 CALL                             R10 2 0
      100 FORGLOOP                         R5 2 ; [-8]
      102 LENGTH                           R5 R3
      103 LOADN                            R6 0
      104 JUMPIFNOTLT                      R6 R5 ; [+4]
      106 GETUPVAL                         R5 2
      107 MOVE                             R6 R3
      108 CALL                             R5 1 0
      109 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["creatorType"]
        2 JUMPIFNOTEQKS                    R2 K1 ["User"] ; [+4]
        4 GETTABLEKS                       R2 R0 K2 ["creatorTargetId"]
        6 JUMPIF                           R2 ; [+2]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 DUPTABLE                         R2 K12 [{["search"], [2], ["creatorTargetId"], ["isArchived"] = False, ["isTemplates"] = False, ["sortParam"] = "LastUpdated", ["sortOrder"] = "Desc", ["pageSize"]}]
       10 GETTABLEKS                       R4 R0 K3 ["search"]
       12 ORK                              R3 R4 K13 [""]
       13 SETTABLEKS                       R3 R2 K3 ["search"]
       15 GETTABLEKS                       R3 R0 K0 ["creatorType"]
       17 SETTABLEKS                       R3 R2 K0 ["creatorType"]
       19 GETTABLEKS                       R3 R0 K2 ["creatorTargetId"]
       21 SETTABLEKS                       R3 R2 K2 ["creatorTargetId"]
       23 GETTABLEKS                       R4 R0 K11 ["pageSize"]
       25 ORK                              R3 R4 K14 [10]
       26 SETTABLEKS                       R3 R2 K11 ["pageSize"]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K15 ["new"]
       31 CALL                             R3 0 1
       32 GETTABLEKS                       R7 R3 K16 ["composeUrl"]
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R8 R8 K17 ["EXPERIENCES_SEARCH_URL"]
       37 GETTABLEKS                       R8 R8 K18 ["Prefix"]
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R9 R9 K17 ["EXPERIENCES_SEARCH_URL"]
       42 GETTABLEKS                       R9 R9 K19 ["Url"]
       44 CALL                             R9 0 1
       45 MOVE                             R10 R2
       46 CALL                             R7 3 1
       47 MOVE                             R5 R7
       48 LOADK                            R6 K20 ["&surface=StudioStartPage&PageIndex=0"]
       49 CONCAT                           R4 R5 R6
       50 MOVE                             R5 R4
       51 LOADK                            R6 K21 ["&needsAssetOptions=true"]
       52 CONCAT                           R4 R5 R6
       53 MOVE                             R5 R4
       54 LOADK                            R6 K22 ["&needsReachStatus=true"]
       55 CONCAT                           R4 R5 R6
       56 GETUPVAL                         R5 2
       57 GETUPVAL                         R7 2
       58 MOVE                             R9 R4
       59 NAMECALL                         R7 R7 K23 ["get"]
       61 CALL                             R7 2 -1
       62 NAMECALL                         R5 R5 K24 ["parseJson"]
       64 CALL                             R5 -1 1
       65 NEWCLOSURE                       R7 P0
       66 CAPTURE                          UPVAL U3
       67 CAPTURE                          VAL R1
       68 CAPTURE                          UPVAL U4
       69 NAMECALL                         R5 R5 K25 ["andThen"]
       71 CALL                             R5 2 -1
       72 RETURN                           R5 -1

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
       26 GETTABLEKS                       R4 R0 K6 ["Src"]
       28 GETTABLEKS                       R4 R4 K11 ["Types"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K5 [require]
       33 GETTABLEKS                       R5 R0 K6 ["Src"]
       35 GETTABLEKS                       R5 R5 K12 ["Models"]
       37 GETTABLEKS                       R5 R5 K13 ["SearchUniversesResponse"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K5 [require]
       42 GETTABLEKS                       R6 R0 K6 ["Src"]
       44 GETTABLEKS                       R6 R6 K14 ["Network"]
       46 GETTABLEKS                       R6 R6 K15 ["Urls"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K5 [require]
       51 GETTABLEKS                       R7 R0 K6 ["Src"]
       53 GETTABLEKS                       R7 R7 K16 ["Util"]
       55 GETTABLEKS                       R7 R7 K17 ["Services"]
       57 CALL                             R6 1 1
       58 GETTABLEKS                       R6 R6 K18 ["Networking"]
       60 GETIMPORT                        R7 K5 [require]
       62 GETTABLEKS                       R8 R0 K6 ["Src"]
       64 GETTABLEKS                       R8 R8 K16 ["Util"]
       66 GETTABLEKS                       R8 R8 K19 ["createResponseValidator"]
       68 CALL                             R7 1 1
       69 GETIMPORT                        R8 K5 [require]
       71 GETTABLEKS                       R9 R0 K6 ["Src"]
       73 GETTABLEKS                       R9 R9 K14 ["Network"]
       75 GETTABLEKS                       R9 R9 K20 ["DiscoverBuildSealStatus"]
       77 CALL                             R8 1 1
       78 GETTABLEKS                       R9 R2 K21 ["RobloxAPI"]
       80 GETTABLEKS                       R9 R9 K22 ["Url"]
       82 GETTABLEKS                       R10 R6 K23 ["new"]
       84 DUPTABLE                         R11 K27 [{["isInternal"] = True, ["loggingLevel"]}]
       85 SETTABLEKS                       R1 R11 K26 ["loggingLevel"]
       87 CALL                             R10 1 1
       88 MOVE                             R11 R7
       89 GETTABLEKS                       R12 R4 K28 ["validate"]
       91 CALL                             R11 1 1
       92 DUPCLOSURE                       R12 K29 [PROTO_1]
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R8
       98 RETURN                           R12 1
