PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["tools"]
        2 GETTABLEKS                       R1 R1 K1 ["assetSearch"]
        4 GETTABLEKS                       R1 R1 K2 ["getStudioIdentity"]
        6 CALL                             R1 0 1
        7 GETTABLEKS                       R3 R1 K3 ["gameId"]
        9 LOADN                            R4 0
       10 JUMPIFLT                         R4 R3 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 GETTABLEKS                       R4 R1 K4 ["creatorType"]
       16 GETIMPORT                        R5 K8 [Enum.CreatorType.Group]
       18 JUMPIFEQ                         R4 R5 ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 DUPTABLE                         R4 K13 [{"userId", "universeId", "groupId", "creatorType", "creatorId"}]
       23 GETTABLEKS                       R5 R1 K9 ["userId"]
       25 SETTABLEKS                       R5 R4 K9 ["userId"]
       27 JUMPIFNOT                        R2 ; [+7]
       28 GETTABLEKS                       R6 R1 K3 ["gameId"]
       30 FASTCALL1                        TOSTRING R6 ; [+2]
       31 GETIMPORT                        R5 K15 [tostring]
       33 CALL                             R5 1 1
       34 JUMP                             ; [+1]
       35 LOADNIL                          R5
       36 SETTABLEKS                       R5 R4 K10 ["universeId"]
       38 JUMPIFNOT                        R3 ; [+7]
       39 GETTABLEKS                       R6 R1 K12 ["creatorId"]
       41 FASTCALL1                        TOSTRING R6 ; [+2]
       42 GETIMPORT                        R5 K15 [tostring]
       44 CALL                             R5 1 1
       45 JUMP                             ; [+1]
       46 LOADNIL                          R5
       47 SETTABLEKS                       R5 R4 K11 ["groupId"]
       49 JUMPIFNOT                        R2 ; [+3]
       50 GETTABLEKS                       R5 R1 K4 ["creatorType"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R5
       54 SETTABLEKS                       R5 R4 K4 ["creatorType"]
       56 JUMPIFNOT                        R2 ; [+7]
       57 GETTABLEKS                       R6 R1 K12 ["creatorId"]
       59 FASTCALL1                        TOSTRING R6 ; [+2]
       60 GETIMPORT                        R5 K15 [tostring]
       62 CALL                             R5 1 1
       63 JUMP                             ; [+1]
       64 LOADNIL                          R5
       65 SETTABLEKS                       R5 R4 K12 ["creatorId"]
       67 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tools"]
        3 GETTABLEKS                       R0 R0 K1 ["assetSearch"]
        5 GETTABLEKS                       R0 R0 K2 ["fetchUserGroupsAsync"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+14]
        7 GETUPVAL                         R3 1
        8 LOADK                            R4 K2 ["[AssetSearchTool] getUserGroups: fetch failed for surface=%*: %*"]
        9 MOVE                             R6 R0
       10 FASTCALL1                        TOSTRING R2 ; [+3]
       11 MOVE                             R8 R2
       12 GETIMPORT                        R7 K4 [tostring]
       14 CALL                             R7 1 1
       15 NAMECALL                         R4 R4 K5 ["format"]
       17 CALL                             R4 3 1
       18 CALL                             R3 1 0
       19 LOADNIL                          R3
       20 RETURN                           R3 1
       21 JUMPIFNOT                        R2 ; [+8]
       22 GETTABLEKS                       R4 R2 K6 ["groups"]
       24 FASTCALL1                        TYPE R4 ; [+2]
       25 GETIMPORT                        R3 K8 [type]
       27 CALL                             R3 1 1
       28 JUMPIFEQKS                       R3 K9 ["table"] ; [+10]
       30 GETUPVAL                         R3 1
       31 LOADK                            R4 K10 ["[AssetSearchTool] getUserGroups: unexpected shape for surface=%*"]
       32 MOVE                             R6 R0
       33 NAMECALL                         R4 R4 K5 ["format"]
       35 CALL                             R4 2 1
       36 CALL                             R3 1 0
       37 LOADNIL                          R3
       38 RETURN                           R3 1
       39 NEWTABLE                         R3 0 0
       41 GETTABLEKS                       R4 R2 K6 ["groups"]
       43 LOADNIL                          R5
       44 LOADNIL                          R6
       45 FORGPREP                         R4
       46 GETTABLEKS                       R10 R8 K11 ["id"]
       48 FASTCALL1                        TYPE R10 ; [+2]
       49 GETIMPORT                        R9 K8 [type]
       51 CALL                             R9 1 1
       52 JUMPIFNOTEQKS                    R9 K12 ["number"] ; [+24]
       54 GETTABLEKS                       R10 R8 K13 ["name"]
       56 FASTCALL1                        TYPE R10 ; [+2]
       57 GETIMPORT                        R9 K8 [type]
       59 CALL                             R9 1 1
       60 JUMPIFNOTEQKS                    R9 K14 ["string"] ; [+16]
       62 DUPTABLE                         R11 K15 [{"id", "name"}]
       63 GETTABLEKS                       R12 R8 K11 ["id"]
       65 SETTABLEKS                       R12 R11 K11 ["id"]
       67 GETTABLEKS                       R12 R8 K13 ["name"]
       69 SETTABLEKS                       R12 R11 K13 ["name"]
       71 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       73 MOVE                             R10 R3
       74 GETIMPORT                        R9 K17 [table.insert]
       76 CALL                             R9 2 0
       77 FORGLOOP                         R4 2 ; [-32]
       79 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+15]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R3 R1 K0 ["userId"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+11]
        7 GETUPVAL                         R2 2
        8 LOADK                            R3 K1 ["[AssetSearchTool] getUserGroups: returning cached groups (userId=%*)"]
        9 GETTABLEKS                       R5 R1 K0 ["userId"]
       11 NAMECALL                         R3 R3 K2 ["format"]
       13 CALL                             R3 2 1
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 0
       16 RETURN                           R2 1
       17 NEWCLOSURE                       R2 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U2
       20 LOADNIL                          R3
       21 GETUPVAL                         R4 3
       22 LOADNIL                          R5
       23 LOADNIL                          R6
       24 FORGPREP                         R4
       25 MOVE                             R9 R2
       26 MOVE                             R10 R8
       27 CALL                             R9 1 1
       28 MOVE                             R3 R9
       29 JUMPIFNOTEQKNIL                  R3 ; [+3]
       31 FORGLOOP                         R4 2 ; [-7]
       33 JUMPIFNOTEQKNIL                  R3 ; [+7]
       35 GETUPVAL                         R4 2
       36 LOADK                            R5 K3 ["[AssetSearchTool] getUserGroups: both surfaces failed; returning empty without caching"]
       37 CALL                             R4 1 0
       38 NEWTABLE                         R4 0 0
       40 RETURN                           R4 1
       41 GETUPVAL                         R4 2
       42 LOADK                            R5 K4 ["[AssetSearchTool] getUserGroups: resolved %* groups for userId=%*"]
       43 LENGTH                           R7 R3
       44 GETTABLEKS                       R8 R1 K0 ["userId"]
       46 NAMECALL                         R5 R5 K2 ["format"]
       48 CALL                             R5 3 1
       49 CALL                             R4 1 0
       50 GETTABLEKS                       R4 R1 K0 ["userId"]
       52 SETUPVAL                         R4 1
       53 SETUPVAL                         R3 0
       54 RETURN                           R3 1

PROTO_4:
        0 GETTABLEKS                       R4 R0 K0 ["groupId"]
        2 JUMPIFEQKNIL                     R4 ; [+8]
        4 GETTABLEKS                       R4 R0 K0 ["groupId"]
        6 JUMPIFEQKS                       R4 K1 [""] ; [+4]
        8 GETTABLEKS                       R3 R0 K0 ["groupId"]
       10 JUMP                             ; [+1]
       11 LOADNIL                          R3
       12 GETTABLEKS                       R5 R0 K2 ["groupName"]
       14 JUMPIFEQKNIL                     R5 ; [+12]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K3 ["trim"]
       19 GETTABLEKS                       R6 R0 K2 ["groupName"]
       21 CALL                             R5 1 1
       22 JUMPIFEQKS                       R5 K1 [""] ; [+4]
       24 GETTABLEKS                       R4 R0 K2 ["groupName"]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R4
       28 JUMPIFNOTEQKNIL                  R3 ; [+6]
       30 JUMPIFNOTEQKNIL                  R4 ; [+4]
       32 LOADNIL                          R5
       33 LOADNIL                          R6
       34 RETURN                           R5 2
       35 JUMPIFEQKNIL                     R3 ; [+13]
       37 JUMPIFEQKNIL                     R4 ; [+11]
       39 LOADNIL                          R5
       40 DUPTABLE                         R6 K8 [{["status"] = "error", ["error"] = "Provide either groupId or groupName, not both.", ["nextSteps"]}]
       41 NEWTABLE                         R7 0 1
       43 LOADK                            R8 K9 ["Drop one of the two arguments and retry."]
       44 SETLIST                          R7 R8 1 [1]
       46 SETTABLEKS                       R7 R6 K7 ["nextSteps"]
       48 RETURN                           R5 2
       49 GETUPVAL                         R5 1
       50 GETTABLEKS                       R5 R5 K10 ["Group"]
       52 JUMPIFEQ                         R1 R5 ; [+18]
       54 LOADNIL                          R5
       55 DUPTABLE                         R6 K11 [{["status"] = "error", ["error"], ["nextSteps"]}]
       56 LOADK                            R7 K12 ["groupId/groupName only apply when scope is \"group\"; scope is \"%*\"."]
       57 MOVE                             R9 R1
       58 NAMECALL                         R7 R7 K13 ["format"]
       60 CALL                             R7 2 1
       61 SETTABLEKS                       R7 R6 K5 ["error"]
       63 NEWTABLE                         R7 0 1
       65 LOADK                            R8 K14 ["Set scope='group' to search the specified group, or remove the groupId/groupName argument."]
       66 SETLIST                          R7 R8 1 [1]
       68 SETTABLEKS                       R7 R6 K7 ["nextSteps"]
       70 RETURN                           R5 2
       71 JUMPIFEQKNIL                     R3 ; [+59]
       73 FASTCALL1                        TONUMBER R3 ; [+3]
       74 MOVE                             R6 R3
       75 GETIMPORT                        R5 K16 [tonumber]
       77 CALL                             R5 1 1
       78 JUMPIFNOT                        R5 ; [+3]
       79 LOADN                            R6 0
       80 JUMPIFNOTLE                      R5 R6 ; [+18]
       82 LOADNIL                          R6
       83 DUPTABLE                         R7 K11 [{["status"] = "error", ["error"], ["nextSteps"]}]
       84 LOADK                            R8 K17 ["groupId \"%*\" is not a valid positive numeric ID."]
       85 MOVE                             R10 R3
       86 NAMECALL                         R8 R8 K13 ["format"]
       88 CALL                             R8 2 1
       89 SETTABLEKS                       R8 R7 K5 ["error"]
       91 NEWTABLE                         R8 0 1
       93 LOADK                            R9 K18 ["Pass a positive numeric group ID, or use groupName to look up by name."]
       94 SETLIST                          R8 R9 1 [1]
       96 SETTABLEKS                       R8 R7 K7 ["nextSteps"]
       98 RETURN                           R6 2
       99 MOVE                             R6 R2
      100 LOADNIL                          R7
      101 LOADNIL                          R8
      102 FORGPREP                         R6
      103 GETTABLEKS                       R11 R10 K19 ["id"]
      105 JUMPIFNOTEQ                      R11 R5 ; [+4]
      107 MOVE                             R11 R5
      108 LOADNIL                          R12
      109 RETURN                           R11 2
      110 FORGLOOP                         R6 2 ; [-8]
      112 LOADNIL                          R6
      113 DUPTABLE                         R7 K21 [{["status"] = "error", ["error"], ["groups"], ["nextSteps"]}]
      114 LOADK                            R8 K22 ["groupId \"%*\" is not one of your groups."]
      115 MOVE                             R10 R3
      116 NAMECALL                         R8 R8 K13 ["format"]
      118 CALL                             R8 2 1
      119 SETTABLEKS                       R8 R7 K5 ["error"]
      121 SETTABLEKS                       R2 R7 K20 ["groups"]
      123 NEWTABLE                         R8 0 1
      125 LOADK                            R9 K23 ["Use one of the listed group ids, or pass groupName to look up by name."]
      126 SETLIST                          R8 R9 1 [1]
      128 SETTABLEKS                       R8 R7 K7 ["nextSteps"]
      130 RETURN                           R6 2
      131 JUMPIFNOTEQKNIL                  R4 ; [+2]
      133 LOADB                            R6 0 +1
      134 LOADB                            R6 1
      135 FASTCALL2K                       ASSERT R6 K24 ; [+4]
      137 LOADK                            R7 K24 ["rawGroupName must be set when rawGroupId is nil"]
      138 GETIMPORT                        R5 K26 [assert]
      140 CALL                             R5 2 0
      141 GETIMPORT                        R5 K29 [string.lower]
      143 GETUPVAL                         R6 0
      144 GETTABLEKS                       R6 R6 K3 ["trim"]
      146 MOVE                             R7 R4
      147 CALL                             R6 1 -1
      148 CALL                             R5 -1 1
      149 MOVE                             R6 R2
      150 LOADNIL                          R7
      151 LOADNIL                          R8
      152 FORGPREP                         R6
      153 GETIMPORT                        R11 K29 [string.lower]
      155 GETTABLEKS                       R12 R10 K30 ["name"]
      157 CALL                             R11 1 1
      158 JUMPIFNOTEQ                      R11 R5 ; [+5]
      160 GETTABLEKS                       R11 R10 K19 ["id"]
      162 LOADNIL                          R12
      163 RETURN                           R11 2
      164 FORGLOOP                         R6 2 ; [-12]
      166 LOADNIL                          R6
      167 DUPTABLE                         R7 K21 [{["status"] = "error", ["error"], ["groups"], ["nextSteps"]}]
      168 LOADK                            R8 K31 ["groupName \"%*\" did not match any of your groups."]
      169 MOVE                             R10 R4
      170 NAMECALL                         R8 R8 K13 ["format"]
      172 CALL                             R8 2 1
      173 SETTABLEKS                       R8 R7 K5 ["error"]
      175 SETTABLEKS                       R2 R7 K20 ["groups"]
      177 NEWTABLE                         R8 0 1
      179 LOADK                            R9 K32 ["Use one of the listed group names exactly, or pass a numeric groupId."]
      180 SETLIST                          R8 R9 1 [1]
      182 SETTABLEKS                       R8 R7 K7 ["nextSteps"]
      184 RETURN                           R6 2

PROTO_5:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETTABLEKS                       R1 R0 K0 ["purchasePrice"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETTABLEKS                       R1 R0 K0 ["purchasePrice"]
        6 GETTABLEKS                       R1 R1 K1 ["quantity"]
        8 JUMPIF                           R1 ; [+3]
        9 LOADN                            R1 0
       10 LOADNIL                          R2
       11 RETURN                           R1 2
       12 GETTABLEKS                       R1 R0 K0 ["purchasePrice"]
       14 GETTABLEKS                       R3 R1 K1 ["quantity"]
       16 GETTABLEKS                       R3 R3 K3 ["significand"]
       18 ORK                              R2 R3 K2 [0]
       19 LOADN                            R3 0
       20 JUMPIFNOTLE                      R2 R3 ; [+4]
       22 LOADN                            R3 0
       23 LOADNIL                          R4
       24 RETURN                           R3 2
       25 LOADN                            R5 10
       26 GETTABLEKS                       R7 R1 K1 ["quantity"]
       28 GETTABLEKS                       R7 R7 K4 ["exponent"]
       30 ORK                              R6 R7 K2 [0]
       31 POW                              R4 R5 R6
       32 MUL                              R3 R2 R4
       33 MULK                             R6 R3 K6 [100]
       34 ADDK                             R5 R6 K5 [0.5]
       35 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       36 GETIMPORT                        R4 K9 [math.floor]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R6 R1 K11 ["currencyCode"]
       41 ORK                              R5 R6 K10 ["USD"]
       42 JUMPIFNOTEQKS                    R5 K10 ["USD"] ; [+8]
       44 MOVE                             R6 R4
       45 GETIMPORT                        R7 K14 [string.format]
       47 LOADK                            R8 K15 ["$%.2f"]
       48 MOVE                             R9 R3
       49 CALL                             R7 2 -1
       50 RETURN                           R6 -1
       51 JUMPIFNOTEQKS                    R5 K16 ["GBP"] ; [+8]
       53 MOVE                             R6 R4
       54 GETIMPORT                        R7 K14 [string.format]
       56 LOADK                            R8 K17 ["£%.2f"]
       57 MOVE                             R9 R3
       58 CALL                             R7 2 -1
       59 RETURN                           R6 -1
       60 JUMPIFNOTEQKS                    R5 K18 ["EUR"] ; [+8]
       62 MOVE                             R6 R4
       63 GETIMPORT                        R7 K14 [string.format]
       65 LOADK                            R8 K19 ["€%.2f"]
       66 MOVE                             R9 R3
       67 CALL                             R7 2 -1
       68 RETURN                           R6 -1
       69 MOVE                             R6 R4
       70 GETIMPORT                        R7 K14 [string.format]
       72 LOADK                            R8 K20 ["%s %.2f"]
       73 MOVE                             R9 R5
       74 MOVE                             R10 R3
       75 CALL                             R7 3 -1
       76 RETURN                           R6 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tools"]
        3 GETTABLEKS                       R0 R0 K1 ["assetSearch"]
        5 GETTABLEKS                       R0 R0 K2 ["searchCreatorStoreAssetsAsync"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_7:
        0 DUPTABLE                         R2 K14 [{[1], ["maxPageSize"], ["sortCategory"] = "Relevance", ["sortDirection"] = "None", ["searchView"] = "Full", ["includeOnlyVerifiedCreators"], ["searchCategoryType"], ["minPriceCents"], ["maxPriceCents"], ["facets"], ["tags"]}]
        1 GETTABLEKS                       R3 R1 K15 ["keyword"]
        3 SETTABLEKS                       R3 R2 K0 ["query"]
        5 GETTABLEKS                       R4 R1 K17 ["limit"]
        7 ORK                              R3 R4 K16 [10]
        8 SETTABLEKS                       R3 R2 K1 ["maxPageSize"]
       10 GETTABLEKS                       R4 R1 K8 ["includeOnlyVerifiedCreators"]
       12 ORK                              R3 R4 K18 [False]
       13 SETTABLEKS                       R3 R2 K8 ["includeOnlyVerifiedCreators"]
       15 GETTABLEKS                       R4 R1 K9 ["searchCategoryType"]
       17 ORK                              R3 R4 K19 ["Model"]
       18 SETTABLEKS                       R3 R2 K9 ["searchCategoryType"]
       20 GETTABLEKS                       R3 R1 K20 ["minPrice"]
       22 SETTABLEKS                       R3 R2 K10 ["minPriceCents"]
       24 GETTABLEKS                       R3 R1 K21 ["maxPrice"]
       26 SETTABLEKS                       R3 R2 K11 ["maxPriceCents"]
       28 GETTABLEKS                       R3 R1 K12 ["facets"]
       30 SETTABLEKS                       R3 R2 K12 ["facets"]
       32 GETTABLEKS                       R3 R1 K13 ["tags"]
       34 SETTABLEKS                       R3 R2 K13 ["tags"]
       36 GETTABLEKS                       R3 R1 K22 ["isPackageFilter"]
       38 JUMPIFNOT                        R3 ; [+10]
       39 DUPTABLE                         R3 K24 [{"includedSubTypes"}]
       40 NEWTABLE                         R4 0 1
       42 LOADK                            R5 K25 ["Package"]
       43 SETLIST                          R4 R5 1 [1]
       45 SETTABLEKS                       R4 R3 K23 ["includedSubTypes"]
       47 SETTABLEKS                       R3 R2 K26 ["modelSearchFilters"]
       49 GETTABLEKS                       R3 R2 K9 ["searchCategoryType"]
       51 JUMPIFNOTEQKS                    R3 K27 ["Audio"] ; [+20]
       53 GETTABLEKS                       R3 R1 K28 ["minDuration"]
       55 JUMPIFNOTEQKNIL                  R3 ; [+5]
       57 GETTABLEKS                       R3 R1 K29 ["maxDuration"]
       59 JUMPIFEQKNIL                     R3 ; [+12]
       61 DUPTABLE                         R3 K32 [{"minDurationSeconds", "maxDurationSeconds"}]
       62 GETTABLEKS                       R4 R1 K28 ["minDuration"]
       64 SETTABLEKS                       R4 R3 K30 ["minDurationSeconds"]
       66 GETTABLEKS                       R4 R1 K29 ["maxDuration"]
       68 SETTABLEKS                       R4 R3 K31 ["maxDurationSeconds"]
       70 SETTABLEKS                       R3 R2 K33 ["audioSearchFilters"]
       72 GETIMPORT                        R3 K35 [pcall]
       74 NEWCLOSURE                       R4 P0
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R2
       77 CALL                             R3 1 2
       78 JUMPIFNOT                        R3 ; [+1]
       79 JUMPIF                           R4 ; [+19]
       80 GETUPVAL                         R5 0
       81 LOADK                            R6 K36 ["[AssetSearchTool] fetchCreatorStoreAssets: FAILED %*"]
       82 JUMPIFNOT                        R3 ; [+2]
       83 LOADK                            R9 K37 ["empty response"]
       84 JUMP                             ; [+1]
       85 MOVE                             R9 R4
       86 FASTCALL1                        TOSTRING R9 ; [+2]
       87 GETIMPORT                        R8 K39 [tostring]
       89 CALL                             R8 1 1
       90 NAMECALL                         R6 R6 K40 ["format"]
       92 CALL                             R6 2 1
       93 CALL                             R5 1 0
       94 NEWTABLE                         R5 0 0
       96 NEWTABLE                         R6 0 0
       98 RETURN                           R5 2
       99 GETTABLEKS                       R6 R4 K41 ["queryFacets"]
      101 JUMPIFNOT                        R6 ; [+8]
      102 GETTABLEKS                       R5 R4 K41 ["queryFacets"]
      104 GETTABLEKS                       R5 R5 K42 ["availableFacets"]
      106 JUMPIF                           R5 ; [+5]
      107 NEWTABLE                         R5 0 0
      109 JUMP                             ; [+2]
      110 NEWTABLE                         R5 0 0
      112 NEWTABLE                         R6 0 0
      114 GETTABLEKS                       R7 R4 K43 ["creatorStoreAssets"]
      116 JUMPIFNOT                        R7 ; [+84]
      117 GETTABLEKS                       R7 R4 K43 ["creatorStoreAssets"]
      119 LOADNIL                          R8
      120 LOADNIL                          R9
      121 FORGPREP                         R7
      122 GETTABLEKS                       R12 R11 K44 ["asset"]
      124 JUMPIFNOT                        R12 ; [+74]
      125 GETTABLEKS                       R13 R12 K45 ["id"]
      127 JUMPIFNOT                        R13 ; [+71]
      128 GETUPVAL                         R13 1
      129 GETTABLEKS                       R14 R11 K46 ["creatorStoreProduct"]
      131 CALL                             R13 1 2
      132 GETUPVAL                         R15 2
      133 GETTABLEKS                       R15 R15 K47 ["isPackageAsset"]
      135 LOADNIL                          R16
      136 GETTABLEKS                       R17 R12 K48 ["subTypes"]
      138 CALL                             R15 2 1
      139 DUPTABLE                         R18 K60 [{["assetId"], ["name"], ["description"], ["assetType"], ["source"], ["location"] = , ["creatorName"], ["priceCents"], ["priceLabel"], ["isFree"]}]
      140 GETTABLEKS                       R20 R12 K45 ["id"]
      142 FASTCALL1                        TOSTRING R20 ; [+2]
      143 GETIMPORT                        R19 K39 [tostring]
      145 CALL                             R19 1 1
      146 SETTABLEKS                       R19 R18 K49 ["assetId"]
      148 GETTABLEKS                       R20 R12 K50 ["name"]
      150 ORK                              R19 R20 K61 ["Unknown"]
      151 SETTABLEKS                       R19 R18 K50 ["name"]
      153 GETTABLEKS                       R19 R12 K51 ["description"]
      155 SETTABLEKS                       R19 R18 K51 ["description"]
      157 JUMPIFNOT                        R15 ; [+2]
      158 LOADK                            R19 K25 ["Package"]
      159 JUMP                             ; [+5]
      160 GETUPVAL                         R21 3
      161 GETTABLEKS                       R22 R12 K62 ["assetTypeId"]
      163 GETTABLE                         R20 R21 R22
      164 ORK                              R19 R20 K19 ["Model"]
      165 SETTABLEKS                       R19 R18 K52 ["assetType"]
      167 GETUPVAL                         R19 4
      168 GETTABLEKS                       R19 R19 K63 ["CreatorStore"]
      170 SETTABLEKS                       R19 R18 K53 ["source"]
      172 GETTABLEKS                       R20 R11 K64 ["creator"]
      174 JUMPIFNOT                        R20 ; [+5]
      175 GETTABLEKS                       R19 R11 K64 ["creator"]
      177 GETTABLEKS                       R19 R19 K50 ["name"]
      179 JUMPIF                           R19 ; [+1]
      180 LOADK                            R19 K61 ["Unknown"]
      181 SETTABLEKS                       R19 R18 K56 ["creatorName"]
      183 SETTABLEKS                       R13 R18 K57 ["priceCents"]
      185 SETTABLEKS                       R14 R18 K58 ["priceLabel"]
      187 JUMPIFEQKN                       R13 K65 [0] ; [+2]
      189 LOADB                            R19 0 +1
      190 LOADB                            R19 1
      191 SETTABLEKS                       R19 R18 K59 ["isFree"]
      193 FASTCALL2                        TABLE_INSERT R6 R18 ; [+4]
      195 MOVE                             R17 R6
      196 GETIMPORT                        R16 K68 [table.insert]
      198 CALL                             R16 2 0
      199 FORGLOOP                         R7 2 ; [-78]
      201 GETUPVAL                         R7 0
      202 LOADK                            R8 K69 ["[AssetSearchTool] fetchCreatorStoreAssets: parsed %* results, %* facets"]
      203 LENGTH                           R10 R6
      204 LENGTH                           R11 R5
      205 NAMECALL                         R8 R8 K40 ["format"]
      207 CALL                             R8 3 1
      208 CALL                             R7 1 0
      209 MOVE                             R7 R6
      210 MOVE                             R8 R5
      211 RETURN                           R7 2

PROTO_8:
        0 JUMPIF                           R0 ; [+6]
        1 GETUPVAL                         R3 0
        2 LOADK                            R4 K0 ["[AssetSearchTool] parseInventory: nil response"]
        3 CALL                             R3 1 0
        4 NEWTABLE                         R3 0 0
        6 RETURN                           R3 1
        7 GETTABLEKS                       R3 R0 K1 ["success"]
        9 JUMPIFNOTEQKB                    R3 FALSE ; [+13]
       11 GETUPVAL                         R3 0
       12 LOADK                            R4 K2 ["[AssetSearchTool] parseInventory: error: %*"]
       13 GETTABLEKS                       R7 R0 K4 ["error"]
       15 ORK                              R6 R7 K3 ["unknown"]
       16 NAMECALL                         R4 R4 K5 ["format"]
       18 CALL                             R4 2 1
       19 CALL                             R3 1 0
       20 NEWTABLE                         R3 0 0
       22 RETURN                           R3 1
       23 NEWTABLE                         R3 0 0
       25 GETTABLEKS                       R4 R0 K6 ["items"]
       27 JUMPIF                           R4 ; [+5]
       28 GETTABLEKS                       R4 R0 K7 ["creatorInventoryItems"]
       30 JUMPIF                           R4 ; [+2]
       31 NEWTABLE                         R4 0 0
       33 GETUPVAL                         R5 0
       34 LOADK                            R6 K8 ["[AssetSearchTool] parseInventory: found %* raw items"]
       35 LENGTH                           R8 R4
       36 NAMECALL                         R6 R6 K5 ["format"]
       38 CALL                             R6 2 1
       39 CALL                             R5 1 0
       40 MOVE                             R5 R4
       41 LOADNIL                          R6
       42 LOADNIL                          R7
       43 FORGPREP                         R5
       44 GETTABLEKS                       R11 R9 K9 ["assetItem"]
       46 OR                               R10 R11 R9
       47 GETTABLEKS                       R12 R10 K10 ["asset"]
       49 OR                               R11 R12 R10
       50 JUMPIFNOT                        R11 ; [+197]
       51 GETTABLEKS                       R12 R11 K11 ["assetId"]
       53 JUMPIF                           R12 ; [+3]
       54 GETTABLEKS                       R12 R11 K12 ["id"]
       56 JUMPIFNOT                        R12 ; [+191]
       57 GETTABLEKS                       R13 R11 K11 ["assetId"]
       59 JUMPIF                           R13 ; [+2]
       60 GETTABLEKS                       R13 R11 K12 ["id"]
       62 FASTCALL1                        TOSTRING R13 ; [+2]
       63 GETIMPORT                        R12 K14 [tostring]
       65 CALL                             R12 1 1
       66 GETTABLEKS                       R13 R11 K15 ["assetType"]
       68 JUMPIF                           R13 ; [+4]
       69 GETTABLEKS                       R13 R11 K16 ["type"]
       71 JUMPIF                           R13 ; [+1]
       72 LOADK                            R13 K17 ["Unknown"]
       73 GETUPVAL                         R16 1
       74 GETTABLE                         R15 R16 R13
       75 OR                               R14 R15 R13
       76 LOADB                            R15 1
       77 GETTABLEKS                       R16 R10 K18 ["isPackage"]
       79 JUMPIFEQKB                       R16 TRUE ; [+11]
       81 GETUPVAL                         R15 2
       82 GETTABLEKS                       R15 R15 K19 ["isPackageAsset"]
       84 LOADNIL                          R16
       85 GETTABLEKS                       R17 R11 K20 ["assetSubTypes"]
       87 JUMPIF                           R17 ; [+2]
       88 GETTABLEKS                       R17 R11 K21 ["subTypes"]
       90 CALL                             R15 2 1
       91 JUMPIFNOT                        R15 ; [+1]
       92 GETUPVAL                         R14 3
       93 LOADNIL                          R16
       94 LOADNIL                          R17
       95 GETTABLEKS                       R18 R11 K22 ["creationContext"]
       97 FASTCALL1                        TYPE R18 ; [+3]
       98 MOVE                             R20 R18
       99 GETIMPORT                        R19 K23 [type]
      101 CALL                             R19 1 1
      102 JUMPIFNOTEQKS                    R19 K24 ["table"] ; [+94]
      104 GETTABLEKS                       R19 R18 K25 ["group"]
      106 GETTABLEKS                       R20 R18 K26 ["user"]
      108 GETTABLEKS                       R23 R18 K27 ["creator"]
      110 FASTCALL1                        TYPE R23 ; [+2]
      111 GETIMPORT                        R22 K23 [type]
      113 CALL                             R22 1 1
      114 JUMPIFNOTEQKS                    R22 K24 ["table"] ; [+4]
      116 GETTABLEKS                       R21 R18 K27 ["creator"]
      118 JUMP                             ; [+1]
      119 LOADNIL                          R21
      120 JUMPIFEQKNIL                     R19 ; [+8]
      122 FASTCALL1                        TOSTRING R19 ; [+3]
      123 MOVE                             R23 R19
      124 GETIMPORT                        R22 K14 [tostring]
      126 CALL                             R22 1 1
      127 MOVE                             R16 R22
      128 JUMP                             ; [+33]
      129 JUMPIFEQKNIL                     R20 ; [+8]
      131 FASTCALL1                        TOSTRING R20 ; [+3]
      132 MOVE                             R23 R20
      133 GETIMPORT                        R22 K14 [tostring]
      135 CALL                             R22 1 1
      136 MOVE                             R16 R22
      137 JUMP                             ; [+24]
      138 JUMPIFNOT                        R21 ; [+23]
      139 GETTABLEKS                       R22 R21 K28 ["groupId"]
      141 JUMPIFEQKNIL                     R22 ; [+9]
      143 GETTABLEKS                       R23 R21 K28 ["groupId"]
      145 FASTCALL1                        TOSTRING R23 ; [+2]
      146 GETIMPORT                        R22 K14 [tostring]
      148 CALL                             R22 1 1
      149 MOVE                             R16 R22
      150 JUMP                             ; [+11]
      151 GETTABLEKS                       R22 R21 K29 ["userId"]
      153 JUMPIFEQKNIL                     R22 ; [+8]
      155 GETTABLEKS                       R23 R21 K29 ["userId"]
      157 FASTCALL1                        TOSTRING R23 ; [+2]
      158 GETIMPORT                        R22 K14 [tostring]
      160 CALL                             R22 1 1
      161 MOVE                             R16 R22
      162 GETTABLEKS                       R22 R18 K30 ["name"]
      164 JUMPIF                           R22 ; [+4]
      165 MOVE                             R22 R21
      166 JUMPIFNOT                        R22 ; [+2]
      167 GETTABLEKS                       R22 R21 K30 ["name"]
      169 MOVE                             R17 R22
      170 JUMPIF                           R17 ; [+11]
      171 JUMPIFNOT                        R16 ; [+10]
      172 JUMPIFEQKNIL                     R19 ; [+9]
      174 JUMPIFNOT                        R2 ; [+7]
      175 FASTCALL1                        TONUMBER R16 ; [+3]
      176 MOVE                             R23 R16
      177 GETIMPORT                        R22 K32 [tonumber]
      179 CALL                             R22 1 1
      180 JUMPIFNOT                        R22 ; [+1]
      181 GETTABLE                         R17 R2 R22
      182 JUMPIF                           R17 ; [+14]
      183 JUMPIFNOT                        R21 ; [+13]
      184 GETTABLEKS                       R22 R21 K28 ["groupId"]
      186 JUMPIFEQKNIL                     R22 ; [+10]
      188 JUMPIFNOT                        R2 ; [+8]
      189 GETTABLEKS                       R23 R21 K28 ["groupId"]
      191 FASTCALL1                        TONUMBER R23 ; [+2]
      192 GETIMPORT                        R22 K32 [tonumber]
      194 CALL                             R22 1 1
      195 JUMPIFNOT                        R22 ; [+1]
      196 GETTABLE                         R17 R2 R22
      197 GETUPVAL                         R19 0
      198 LOADK                            R20 K33 ["[AssetSearchTool] parseInventory item: id=%* name=\"%*\" type=%* isPackage=%* creatorId=%* creatorName=%*"]
      199 MOVE                             R22 R12
      200 GETTABLEKS                       R23 R11 K34 ["displayName"]
      202 JUMPIF                           R23 ; [+2]
      203 GETTABLEKS                       R23 R11 K30 ["name"]
      205 MOVE                             R24 R14
      206 FASTCALL1                        TOSTRING R15 ; [+3]
      207 MOVE                             R26 R15
      208 GETIMPORT                        R25 K14 [tostring]
      210 CALL                             R25 1 1
      211 ORK                              R26 R16 K35 ["nil"]
      212 ORK                              R27 R17 K35 ["nil"]
      213 NAMECALL                         R20 R20 K5 ["format"]
      215 CALL                             R20 7 1
      216 CALL                             R19 1 0
      217 DUPTABLE                         R21 K46 [{["assetId"], ["name"], ["description"] = , ["assetType"], ["source"], ["location"], ["creatorName"], ["creatorId"], ["priceCents"] = 0, ["isFree"] = True}]
      218 SETTABLEKS                       R12 R21 K11 ["assetId"]
      220 GETTABLEKS                       R22 R11 K34 ["displayName"]
      222 JUMPIF                           R22 ; [+4]
      223 GETTABLEKS                       R22 R11 K30 ["name"]
      225 JUMPIF                           R22 ; [+1]
      226 LOADK                            R22 K17 ["Unknown"]
      227 SETTABLEKS                       R22 R21 K30 ["name"]
      229 SETTABLEKS                       R14 R21 K15 ["assetType"]
      231 GETUPVAL                         R22 4
      232 GETTABLEKS                       R22 R22 K47 ["Inventory"]
      234 SETTABLEKS                       R22 R21 K38 ["source"]
      236 SETTABLEKS                       R1 R21 K39 ["location"]
      238 SETTABLEKS                       R17 R21 K40 ["creatorName"]
      240 SETTABLEKS                       R16 R21 K41 ["creatorId"]
      242 FASTCALL2                        TABLE_INSERT R3 R21 ; [+4]
      244 MOVE                             R20 R3
      245 GETIMPORT                        R19 K49 [table.insert]
      247 CALL                             R19 2 0
      248 FORGLOOP                         R5 2 ; [-205]
      250 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 JUMPIFEQ                         R1 R2 ; [+2]
        4 RETURN                           R0 1
        5 NEWTABLE                         R1 0 0
        7 MOVE                             R2 R0
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETTABLEKS                       R7 R6 K0 ["assetType"]
       13 GETUPVAL                         R8 1
       14 JUMPIFNOTEQ                      R7 R8 ; [+8]
       16 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       18 MOVE                             R8 R1
       19 MOVE                             R9 R6
       20 GETIMPORT                        R7 K3 [table.insert]
       22 CALL                             R7 2 0
       23 FORGLOOP                         R2 2 ; [-13]
       25 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tools"]
        3 GETTABLEKS                       R0 R0 K1 ["assetSearch"]
        5 GETTABLEKS                       R0 R0 K2 ["searchCreatorInventoryAsync"]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 DUPTABLE                         R3 K6 [{["Type"] = "Group", ["Id"]}]
       10 GETUPVAL                         R4 3
       11 SETTABLEKS                       R4 R3 K5 ["Id"]
       13 GETUPVAL                         R4 4
       14 LOADK                            R5 K7 [""]
       15 CALL                             R0 5 -1
       16 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tools"]
        3 GETTABLEKS                       R0 R0 K1 ["assetSearch"]
        5 GETTABLEKS                       R0 R0 K2 ["searchCreatorInventoryAsync"]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 3
       10 GETUPVAL                         R4 4
       11 LOADK                            R5 K3 [""]
       12 CALL                             R0 5 -1
       13 RETURN                           R0 -1

PROTO_12:
        0 MOVE                             R7 R6
        1 JUMPIF                           R7 ; [+1]
        2 GETUPVAL                         R7 0
        3 GETUPVAL                         R8 1
        4 GETTABLEKS                       R8 R8 K0 ["CreatorStore"]
        6 JUMPIFNOTEQ                      R1 R8 ; [+52]
        8 GETUPVAL                         R8 2
        9 MOVE                             R9 R0
       10 DUPTABLE                         R10 K12 [{"keyword", "searchCategoryType", "limit", "facets", "tags", "isPackageFilter", "includeOnlyVerifiedCreators", "minPrice", "maxPrice", "minDuration", "maxDuration"}]
       11 SETTABLEKS                       R2 R10 K1 ["keyword"]
       13 JUMPIFNOT                        R3 ; [+3]
       14 GETUPVAL                         R12 3
       15 GETTABLE                         R11 R12 R3
       16 JUMP                             ; [+1]
       17 LOADNIL                          R11
       18 SETTABLEKS                       R11 R10 K2 ["searchCategoryType"]
       20 SETTABLEKS                       R4 R10 K3 ["limit"]
       22 GETTABLEKS                       R11 R7 K4 ["facets"]
       24 SETTABLEKS                       R11 R10 K4 ["facets"]
       26 GETTABLEKS                       R11 R7 K5 ["tags"]
       28 SETTABLEKS                       R11 R10 K5 ["tags"]
       30 GETUPVAL                         R12 4
       31 JUMPIFEQ                         R3 R12 ; [+2]
       33 LOADB                            R11 0 +1
       34 LOADB                            R11 1
       35 SETTABLEKS                       R11 R10 K6 ["isPackageFilter"]
       37 GETTABLEKS                       R11 R7 K7 ["includeOnlyVerifiedCreators"]
       39 SETTABLEKS                       R11 R10 K7 ["includeOnlyVerifiedCreators"]
       41 GETTABLEKS                       R11 R7 K8 ["minPrice"]
       43 SETTABLEKS                       R11 R10 K8 ["minPrice"]
       45 GETTABLEKS                       R11 R7 K9 ["maxPrice"]
       47 SETTABLEKS                       R11 R10 K9 ["maxPrice"]
       49 GETTABLEKS                       R11 R7 K10 ["minDuration"]
       51 SETTABLEKS                       R11 R10 K10 ["minDuration"]
       53 GETTABLEKS                       R11 R7 K11 ["maxDuration"]
       55 SETTABLEKS                       R11 R10 K11 ["maxDuration"]
       57 CALL                             R8 2 -1
       58 RETURN                           R8 -1
       59 GETUPVAL                         R9 5
       60 GETTABLE                         R8 R9 R1
       61 JUMPIF                           R8 ; [+5]
       62 NEWTABLE                         R9 0 0
       64 NEWTABLE                         R10 0 0
       66 RETURN                           R9 2
       67 JUMPIFNOT                        R3 ; [+3]
       68 GETUPVAL                         R10 6
       69 GETTABLE                         R9 R10 R3
       70 JUMP                             ; [+1]
       71 LOADNIL                          R9
       72 JUMPIF                           R9 ; [+1]
       73 GETUPVAL                         R9 7
       74 NEWCLOSURE                       R10 P0
       75 CAPTURE                          VAL R3
       76 CAPTURE                          UPVAL U4
       77 GETUPVAL                         R11 1
       78 GETTABLEKS                       R11 R11 K13 ["Group"]
       80 JUMPIFNOTEQ                      R1 R11 ; [+87]
       82 GETTABLEKS                       R11 R7 K14 ["effectiveGroupId"]
       84 JUMPIF                           R11 ; [+9]
       85 GETTABLEKS                       R11 R5 K15 ["groupId"]
       87 JUMPIFNOT                        R11 ; [+6]
       88 GETTABLEKS                       R12 R5 K15 ["groupId"]
       90 FASTCALL1                        TONUMBER R12 ; [+2]
       91 GETIMPORT                        R11 K17 [tonumber]
       93 CALL                             R11 1 1
       94 JUMPIF                           R11 ; [+5]
       95 NEWTABLE                         R12 0 0
       97 NEWTABLE                         R13 0 0
       99 RETURN                           R12 2
      100 NEWTABLE                         R12 0 0
      102 GETUPVAL                         R13 8
      103 MOVE                             R14 R0
      104 MOVE                             R15 R5
      105 CALL                             R13 2 3
      106 FORGPREP                         R13
      107 GETTABLEKS                       R18 R17 K18 ["id"]
      109 GETTABLEKS                       R19 R17 K19 ["name"]
      111 SETTABLE                         R19 R12 R18
      112 FORGLOOP                         R13 2 ; [-6]
      114 GETUPVAL                         R13 9
      115 LOADK                            R14 K20 ["[AssetSearchTool] group search: groupId=%*"]
      116 MOVE                             R16 R11
      117 NAMECALL                         R14 R14 K21 ["format"]
      119 CALL                             R14 2 1
      120 CALL                             R13 1 0
      121 GETIMPORT                        R13 K23 [pcall]
      123 NEWCLOSURE                       R14 P1
      124 CAPTURE                          VAL R0
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R4
      129 CALL                             R13 1 2
      130 JUMPIFNOT                        R13 ; [+1]
      131 JUMPIF                           R14 ; [+16]
      132 GETUPVAL                         R15 9
      133 LOADK                            R16 K24 ["[AssetSearchTool] group search: FAILED: %*"]
      134 FASTCALL1                        TOSTRING R14 ; [+3]
      135 MOVE                             R19 R14
      136 GETIMPORT                        R18 K26 [tostring]
      138 CALL                             R18 1 1
      139 NAMECALL                         R16 R16 K21 ["format"]
      141 CALL                             R16 2 1
      142 CALL                             R15 1 0
      143 NEWTABLE                         R15 0 0
      145 NEWTABLE                         R16 0 0
      147 RETURN                           R15 2
      148 GETUPVAL                         R15 10
      149 MOVE                             R16 R14
      150 GETUPVAL                         R17 1
      151 GETTABLEKS                       R17 R17 K13 ["Group"]
      153 MOVE                             R18 R12
      154 CALL                             R15 3 1
      155 GETUPVAL                         R16 9
      156 LOADK                            R17 K27 ["[AssetSearchTool] group search: got %* items"]
      157 LENGTH                           R19 R15
      158 NAMECALL                         R17 R17 K21 ["format"]
      160 CALL                             R17 2 1
      161 CALL                             R16 1 0
      162 MOVE                             R16 R10
      163 MOVE                             R17 R15
      164 CALL                             R16 1 1
      165 NEWTABLE                         R17 0 0
      167 RETURN                           R16 2
      168 LOADNIL                          R11
      169 GETUPVAL                         R12 1
      170 GETTABLEKS                       R12 R12 K28 ["User"]
      172 JUMPIFNOTEQ                      R1 R12 ; [+4]
      174 GETTABLEKS                       R11 R5 K29 ["userId"]
      176 JUMP                             ; [+7]
      177 GETUPVAL                         R12 1
      178 GETTABLEKS                       R12 R12 K30 ["Universe"]
      180 JUMPIFNOTEQ                      R1 R12 ; [+3]
      182 GETTABLEKS                       R11 R5 K31 ["universeId"]
      184 JUMPIF                           R11 ; [+5]
      185 NEWTABLE                         R12 0 0
      187 NEWTABLE                         R13 0 0
      189 RETURN                           R12 2
      190 FASTCALL1                        TONUMBER R11 ; [+3]
      191 MOVE                             R13 R11
      192 GETIMPORT                        R12 K17 [tonumber]
      194 CALL                             R12 1 1
      195 JUMPIF                           R12 ; [+5]
      196 NEWTABLE                         R13 0 0
      198 NEWTABLE                         R14 0 0
      200 RETURN                           R13 2
      201 DUPTABLE                         R13 K34 [{"Type", "Id"}]
      202 SETTABLEKS                       R8 R13 K32 ["Type"]
      204 SETTABLEKS                       R12 R13 K33 ["Id"]
      206 GETIMPORT                        R14 K23 [pcall]
      208 NEWCLOSURE                       R15 P2
      209 CAPTURE                          VAL R0
      210 CAPTURE                          VAL R2
      211 CAPTURE                          VAL R9
      212 CAPTURE                          VAL R13
      213 CAPTURE                          VAL R4
      214 CALL                             R14 1 2
      215 JUMPIFNOT                        R14 ; [+1]
      216 JUMPIF                           R15 ; [+16]
      217 GETUPVAL                         R16 9
      218 LOADK                            R17 K35 ["[AssetSearchTool] searchInventory: request FAILED: %*"]
      219 FASTCALL1                        TOSTRING R15 ; [+3]
      220 MOVE                             R20 R15
      221 GETIMPORT                        R19 K26 [tostring]
      223 CALL                             R19 1 1
      224 NAMECALL                         R17 R17 K21 ["format"]
      226 CALL                             R17 2 1
      227 CALL                             R16 1 0
      228 NEWTABLE                         R16 0 0
      230 NEWTABLE                         R17 0 0
      232 RETURN                           R16 2
      233 GETUPVAL                         R16 9
      234 LOADK                            R17 K36 ["[AssetSearchTool] searchInventory: SUCCESS"]
      235 CALL                             R16 1 0
      236 GETUPVAL                         R16 10
      237 MOVE                             R17 R15
      238 MOVE                             R18 R1
      239 CALL                             R16 2 1
      240 MOVE                             R17 R10
      241 MOVE                             R18 R16
      242 CALL                             R17 1 1
      243 NEWTABLE                         R18 0 0
      245 RETURN                           R17 2

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["minPriceCents"]
        2 GETTABLEKS                       R2 R0 K1 ["maxPriceCents"]
        4 GETTABLEKS                       R3 R0 K2 ["priceFilter"]
        6 JUMPIFNOTEQKS                    R3 K3 ["free"] ; [+3]
        8 LOADN                            R2 0
        9 RETURN                           R1 2
       10 GETTABLEKS                       R3 R0 K2 ["priceFilter"]
       12 JUMPIFNOTEQKS                    R3 K4 ["paid"] ; [+2]
       14 ORK                              R1 R1 K5 [1]
       15 RETURN                           R1 2

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 RETURN                           R0 1

PROTO_15:
        0 GETTABLEKS                       R3 R1 K1 ["query"]
        2 ORK                              R2 R3 K0 [""]
        3 GETTABLEKS                       R4 R1 K3 ["scope"]
        5 ORK                              R3 R4 K2 ["auto"]
        6 GETTABLEKS                       R6 R1 K5 ["maxResults"]
        8 ORK                              R5 R6 K4 [5]
        9 LOADN                            R6 1
       10 LOADN                            R7 20
       11 FASTCALL                         MATH_CLAMP ; [+2]
       12 GETIMPORT                        R4 K8 [math.clamp]
       14 CALL                             R4 3 1
       15 GETTABLEKS                       R5 R1 K9 ["includeSources"]
       17 JUMPIFNOT                        R5 ; [+8]
       18 GETTABLEKS                       R6 R1 K9 ["includeSources"]
       20 LENGTH                           R5 R6
       21 JUMPIFNOTEQKN                    R5 K10 [0] ; [+4]
       23 LOADNIL                          R5
       24 SETTABLEKS                       R5 R1 K9 ["includeSources"]
       26 GETTABLEKS                       R5 R1 K11 ["excludeSources"]
       28 JUMPIFNOT                        R5 ; [+8]
       29 GETTABLEKS                       R6 R1 K11 ["excludeSources"]
       31 LENGTH                           R5 R6
       32 JUMPIFNOTEQKN                    R5 K10 [0] ; [+4]
       34 LOADNIL                          R5
       35 SETTABLEKS                       R5 R1 K11 ["excludeSources"]
       37 GETTABLEKS                       R5 R1 K12 ["facets"]
       39 JUMPIFNOT                        R5 ; [+8]
       40 GETTABLEKS                       R6 R1 K12 ["facets"]
       42 LENGTH                           R5 R6
       43 JUMPIFNOTEQKN                    R5 K10 [0] ; [+4]
       45 LOADNIL                          R5
       46 SETTABLEKS                       R5 R1 K12 ["facets"]
       48 GETTABLEKS                       R5 R1 K13 ["tags"]
       50 JUMPIFNOT                        R5 ; [+8]
       51 GETTABLEKS                       R6 R1 K13 ["tags"]
       53 LENGTH                           R5 R6
       54 JUMPIFNOTEQKN                    R5 K10 [0] ; [+4]
       56 LOADNIL                          R5
       57 SETTABLEKS                       R5 R1 K13 ["tags"]
       59 GETUPVAL                         R5 0
       60 LOADK                            R6 K14 ["[AssetSearchTool] === SEARCH START === query=\"%*\" scope=%* maxResults=%* assetType=%*"]
       61 MOVE                             R8 R2
       62 MOVE                             R9 R3
       63 MOVE                             R10 R4
       64 GETTABLEKS                       R12 R1 K16 ["assetType"]
       66 ORK                              R11 R12 K15 ["nil"]
       67 NAMECALL                         R6 R6 K17 ["format"]
       69 CALL                             R6 5 1
       70 CALL                             R5 1 0
       71 GETUPVAL                         R6 1
       72 GETTABLE                         R5 R6 R3
       73 JUMPIF                           R5 ; [+20]
       74 GETUPVAL                         R5 2
       75 DUPTABLE                         R7 K21 [{["status"] = "error", ["error"], ["nextSteps"]}]
       76 LOADK                            R8 K22 ["Invalid scope: \"%*\". Must be one of: auto, creator_store, user, group, universe"]
       77 MOVE                             R10 R3
       78 NAMECALL                         R8 R8 K17 ["format"]
       80 CALL                             R8 2 1
       81 SETTABLEKS                       R8 R7 K19 ["error"]
       83 NEWTABLE                         R8 0 1
       85 LOADK                            R9 K23 ["Use one of the valid scope values: auto, creator_store, user, group, universe"]
       86 SETLIST                          R8 R9 1 [1]
       88 SETTABLEKS                       R8 R7 K20 ["nextSteps"]
       90 NAMECALL                         R5 R5 K24 ["JSONEncode"]
       92 CALL                             R5 2 -1
       93 RETURN                           R5 -1
       94 GETTABLEKS                       R5 R1 K9 ["includeSources"]
       96 JUMPIFNOT                        R5 ; [+16]
       97 GETTABLEKS                       R5 R1 K11 ["excludeSources"]
       99 JUMPIFNOT                        R5 ; [+13]
      100 GETUPVAL                         R5 2
      101 DUPTABLE                         R7 K26 [{["status"] = "error", ["error"] = "Cannot provide both includeSources and excludeSources", ["nextSteps"]}]
      102 NEWTABLE                         R8 0 1
      104 LOADK                            R9 K27 ["Use either includeSources OR excludeSources, not both"]
      105 SETLIST                          R8 R9 1 [1]
      107 SETTABLEKS                       R8 R7 K20 ["nextSteps"]
      109 NAMECALL                         R5 R5 K24 ["JSONEncode"]
      111 CALL                             R5 2 -1
      112 RETURN                           R5 -1
      113 JUMPIFEQKS                       R3 K2 ["auto"] ; [+27]
      115 GETTABLEKS                       R5 R1 K9 ["includeSources"]
      117 JUMPIF                           R5 ; [+3]
      118 GETTABLEKS                       R5 R1 K11 ["excludeSources"]
      120 JUMPIFNOT                        R5 ; [+20]
      121 GETUPVAL                         R5 2
      122 DUPTABLE                         R7 K21 [{["status"] = "error", ["error"], ["nextSteps"]}]
      123 LOADK                            R8 K28 ["includeSources and excludeSources only apply when scope is \"auto\", but scope is \"%*\""]
      124 MOVE                             R10 R3
      125 NAMECALL                         R8 R8 K17 ["format"]
      127 CALL                             R8 2 1
      128 SETTABLEKS                       R8 R7 K19 ["error"]
      130 NEWTABLE                         R8 0 1
      132 LOADK                            R9 K29 ["Remove includeSources/excludeSources, or change scope to 'auto'"]
      133 SETLIST                          R8 R9 1 [1]
      135 SETTABLEKS                       R8 R7 K20 ["nextSteps"]
      137 NAMECALL                         R5 R5 K24 ["JSONEncode"]
      139 CALL                             R5 2 -1
      140 RETURN                           R5 -1
      141 GETUPVAL                         R5 0
      142 LOADK                            R6 K30 ["[AssetSearchTool] Discovering context..."]
      143 CALL                             R5 1 0
      144 GETIMPORT                        R5 K32 [pcall]
      146 NEWCLOSURE                       R6 P0
      147 CAPTURE                          UPVAL U3
      148 CAPTURE                          VAL R0
      149 CALL                             R5 1 2
      150 JUMPIF                           R5 ; [+24]
      151 GETUPVAL                         R7 0
      152 LOADK                            R8 K33 ["[AssetSearchTool] discoverContext threw: %*"]
      153 FASTCALL1                        TOSTRING R6 ; [+3]
      154 MOVE                             R11 R6
      155 GETIMPORT                        R10 K35 [tostring]
      157 CALL                             R10 1 1
      158 NAMECALL                         R8 R8 K17 ["format"]
      160 CALL                             R8 2 1
      161 CALL                             R7 1 0
      162 GETUPVAL                         R7 2
      163 DUPTABLE                         R9 K37 [{["status"] = "error", ["error"] = "Failed to discover Studio context", ["nextSteps"]}]
      164 NEWTABLE                         R10 0 1
      166 LOADK                            R11 K38 ["Retry the search. If this persists, the Studio session may need to be restarted"]
      167 SETLIST                          R10 R11 1 [1]
      169 SETTABLEKS                       R10 R9 K20 ["nextSteps"]
      171 NAMECALL                         R7 R7 K24 ["JSONEncode"]
      173 CALL                             R7 2 -1
      174 RETURN                           R7 -1
      175 GETUPVAL                         R7 0
      176 LOADK                            R8 K39 ["[AssetSearchTool] Context: userId=%* universeId=%* groupId=%*"]
      177 GETTABLEKS                       R10 R6 K40 ["userId"]
      179 GETTABLEKS                       R12 R6 K41 ["universeId"]
      181 ORK                              R11 R12 K15 ["nil"]
      182 GETTABLEKS                       R13 R6 K42 ["groupId"]
      184 ORK                              R12 R13 K15 ["nil"]
      185 NAMECALL                         R8 R8 K17 ["format"]
      187 CALL                             R8 4 1
      188 CALL                             R7 1 0
      189 LOADNIL                          R7
      190 GETTABLEKS                       R8 R1 K42 ["groupId"]
      192 JUMPIF                           R8 ; [+3]
      193 GETTABLEKS                       R8 R1 K43 ["groupName"]
      195 JUMPIFNOT                        R8 ; [+26]
      196 GETUPVAL                         R8 4
      197 MOVE                             R9 R0
      198 MOVE                             R10 R6
      199 CALL                             R8 2 1
      200 LOADNIL                          R9
      201 GETUPVAL                         R10 5
      202 MOVE                             R11 R1
      203 MOVE                             R12 R3
      204 MOVE                             R13 R8
      205 CALL                             R10 3 2
      206 MOVE                             R7 R10
      207 MOVE                             R9 R11
      208 JUMPIFNOT                        R9 ; [+6]
      209 GETUPVAL                         R10 2
      210 MOVE                             R12 R9
      211 NAMECALL                         R10 R10 K24 ["JSONEncode"]
      213 CALL                             R10 2 -1
      214 RETURN                           R10 -1
      215 GETUPVAL                         R10 0
      216 LOADK                            R11 K44 ["[AssetSearchTool] effectiveGroupId=%*"]
      217 ORK                              R13 R7 K15 ["nil"]
      218 NAMECALL                         R11 R11 K17 ["format"]
      220 CALL                             R11 2 1
      221 CALL                             R10 1 0
      222 LOADNIL                          R8
      223 GETTABLEKS                       R9 R6 K45 ["creatorType"]
      225 GETIMPORT                        R10 K49 [Enum.CreatorType.Group]
      227 JUMPIFNOTEQ                      R9 R10 ; [+25]
      229 GETTABLEKS                       R9 R6 K50 ["creatorId"]
      231 JUMPIFNOT                        R9 ; [+21]
      232 GETTABLEKS                       R10 R6 K50 ["creatorId"]
      234 FASTCALL1                        TONUMBER R10 ; [+2]
      235 GETIMPORT                        R9 K52 [tonumber]
      237 CALL                             R9 1 1
      238 JUMPIFNOT                        R9 ; [+14]
      239 GETUPVAL                         R10 4
      240 MOVE                             R11 R0
      241 MOVE                             R12 R6
      242 CALL                             R10 2 3
      243 FORGPREP                         R10
      244 GETTABLEKS                       R15 R14 K53 ["id"]
      246 JUMPIFNOTEQ                      R15 R9 ; [+4]
      248 GETTABLEKS                       R8 R14 K54 ["name"]
      250 JUMP                             ; [+2]
      251 FORGLOOP                         R10 2 ; [-8]
      253 GETTABLEKS                       R10 R6 K45 ["creatorType"]
      255 JUMPIFNOT                        R10 ; [+5]
      256 GETTABLEKS                       R9 R6 K45 ["creatorType"]
      258 GETTABLEKS                       R9 R9 K55 ["Name"]
      260 JUMP                             ; [+1]
      261 LOADNIL                          R9
      262 DUPTABLE                         R10 K58 [{"userId", "universeId", "isPublished", "creatorType", "creatorId", "creatorName"}]
      263 GETTABLEKS                       R11 R6 K40 ["userId"]
      265 SETTABLEKS                       R11 R10 K40 ["userId"]
      267 GETTABLEKS                       R11 R6 K41 ["universeId"]
      269 SETTABLEKS                       R11 R10 K41 ["universeId"]
      271 GETTABLEKS                       R12 R6 K41 ["universeId"]
      273 JUMPIFNOTEQKNIL                  R12 ; [+2]
      275 LOADB                            R11 0 +1
      276 LOADB                            R11 1
      277 SETTABLEKS                       R11 R10 K56 ["isPublished"]
      279 SETTABLEKS                       R9 R10 K45 ["creatorType"]
      281 GETTABLEKS                       R11 R6 K50 ["creatorId"]
      283 SETTABLEKS                       R11 R10 K50 ["creatorId"]
      285 SETTABLEKS                       R8 R10 K57 ["creatorName"]
      287 NEWTABLE                         R11 0 0
      289 NEWTABLE                         R12 0 0
      291 NEWTABLE                         R13 0 0
      293 NEWTABLE                         R14 0 0
      295 JUMPIFNOTEQKS                    R3 K2 ["auto"] ; [+252]
      297 NEWTABLE                         R15 0 4
      299 GETUPVAL                         R16 6
      300 GETTABLEKS                       R16 R16 K59 ["Universe"]
      302 GETUPVAL                         R17 6
      303 GETTABLEKS                       R17 R17 K48 ["Group"]
      305 GETUPVAL                         R18 6
      306 GETTABLEKS                       R18 R18 K60 ["User"]
      308 GETUPVAL                         R19 6
      309 GETTABLEKS                       R19 R19 K61 ["CreatorStore"]
      311 SETLIST                          R15 R16 4 [1]
      313 GETTABLEKS                       R16 R1 K9 ["includeSources"]
      315 JUMPIFNOT                        R16 ; [+17]
      316 NEWTABLE                         R15 0 0
      318 GETTABLEKS                       R16 R1 K9 ["includeSources"]
      320 LOADNIL                          R17
      321 LOADNIL                          R18
      322 FORGPREP                         R16
      323 FASTCALL2                        TABLE_INSERT R15 R20 ; [+5]
      325 MOVE                             R22 R15
      326 MOVE                             R23 R20
      327 GETIMPORT                        R21 K64 [table.insert]
      329 CALL                             R21 2 0
      330 FORGLOOP                         R16 2 ; [-8]
      332 JUMP                             ; [+32]
      333 GETTABLEKS                       R16 R1 K11 ["excludeSources"]
      335 JUMPIFNOT                        R16 ; [+29]
      336 NEWTABLE                         R16 0 0
      338 GETTABLEKS                       R17 R1 K11 ["excludeSources"]
      340 LOADNIL                          R18
      341 LOADNIL                          R19
      342 FORGPREP                         R17
      343 LOADB                            R22 1
      344 SETTABLE                         R22 R16 R21
      345 FORGLOOP                         R17 2 ; [-3]
      347 NEWTABLE                         R17 0 0
      349 MOVE                             R18 R15
      350 LOADNIL                          R19
      351 LOADNIL                          R20
      352 FORGPREP                         R18
      353 GETTABLE                         R23 R16 R22
      354 JUMPIF                           R23 ; [+7]
      355 FASTCALL2                        TABLE_INSERT R17 R22 ; [+5]
      357 MOVE                             R24 R17
      358 MOVE                             R25 R22
      359 GETIMPORT                        R23 K64 [table.insert]
      361 CALL                             R23 2 0
      362 FORGLOOP                         R18 2 ; [-10]
      364 MOVE                             R15 R17
      365 GETUPVAL                         R16 0
      366 LOADK                            R17 K65 ["[AssetSearchTool] Auto waterfall sourceOrder: %*"]
      367 GETIMPORT                        R19 K67 [table.concat]
      369 MOVE                             R20 R15
      370 LOADK                            R21 K68 [", "]
      371 CALL                             R19 2 1
      372 NAMECALL                         R17 R17 K17 ["format"]
      374 CALL                             R17 2 1
      375 CALL                             R16 1 0
      376 NEWTABLE                         R16 0 0
      378 GETTABLEKS                       R19 R1 K69 ["minPriceCents"]
      380 GETTABLEKS                       R20 R1 K70 ["maxPriceCents"]
      382 GETTABLEKS                       R21 R1 K71 ["priceFilter"]
      384 JUMPIFNOTEQKS                    R21 K72 ["free"] ; [+3]
      386 LOADN                            R20 0
      387 JUMP                             ; [+5]
      388 GETTABLEKS                       R21 R1 K71 ["priceFilter"]
      390 JUMPIFNOTEQKS                    R21 K73 ["paid"] ; [+2]
      392 ORK                              R19 R19 K74 [1]
      393 MOVE                             R17 R19
      394 MOVE                             R18 R20
      395 MOVE                             R19 R15
      396 LOADNIL                          R20
      397 LOADNIL                          R21
      398 FORGPREP                         R19
      399 LENGTH                           R24 R11
      400 JUMPIFNOTLE                      R4 R24 ; [+9]
      402 GETUPVAL                         R24 0
      403 LOADK                            R25 K75 ["[AssetSearchTool] Waterfall: reached maxResults=%*, stopping"]
      404 MOVE                             R27 R4
      405 NAMECALL                         R25 R25 K17 ["format"]
      407 CALL                             R25 2 1
      408 CALL                             R24 1 0
      409 JUMP                             ; [+361]
      410 GETUPVAL                         R24 6
      411 GETTABLEKS                       R24 R24 K48 ["Group"]
      413 JUMPIFNOTEQ                      R23 R24 ; [+13]
      415 GETTABLEKS                       R24 R6 K42 ["groupId"]
      417 JUMPIF                           R24 ; [+9]
      418 GETUPVAL                         R24 0
      419 LOADK                            R25 K76 ["[AssetSearchTool] Waterfall: skipping \"group\" (universe has no owning group)"]
      420 CALL                             R24 1 0
      421 GETUPVAL                         R24 6
      422 GETTABLEKS                       R24 R24 K48 ["Group"]
      424 LOADK                            R25 K77 ["this universe is not owned by a group"]
      425 SETTABLE                         R25 R14 R24
      426 JUMP                             ; [+118]
      427 GETUPVAL                         R24 6
      428 GETTABLEKS                       R24 R24 K59 ["Universe"]
      430 JUMPIFNOTEQ                      R23 R24 ; [+13]
      432 GETTABLEKS                       R24 R6 K41 ["universeId"]
      434 JUMPIF                           R24 ; [+9]
      435 GETUPVAL                         R24 0
      436 LOADK                            R25 K78 ["[AssetSearchTool] Waterfall: skipping \"universe\" (no universeId)"]
      437 CALL                             R24 1 0
      438 GETUPVAL                         R24 6
      439 GETTABLEKS                       R24 R24 K59 ["Universe"]
      441 LOADK                            R25 K79 ["game is not published"]
      442 SETTABLE                         R25 R14 R24
      443 JUMP                             ; [+101]
      444 LENGTH                           R25 R11
      445 SUB                              R24 R4 R25
      446 MOVE                             R25 R24
      447 GETTABLEKS                       R26 R1 K16 ["assetType"]
      449 GETUPVAL                         R27 7
      450 JUMPIFNOTEQ                      R26 R27 ; [+7]
      452 GETUPVAL                         R26 6
      453 GETTABLEKS                       R26 R26 K61 ["CreatorStore"]
      455 JUMPIFEQ                         R23 R26 ; [+2]
      457 MULK                             R25 R24 K4 [5]
      458 GETUPVAL                         R26 0
      459 LOADK                            R27 K80 ["[AssetSearchTool] Waterfall: querying source=\"%*\" remaining=%* requestLimit=%*"]
      460 MOVE                             R29 R23
      461 MOVE                             R30 R24
      462 MOVE                             R31 R25
      463 NAMECALL                         R27 R27 K17 ["format"]
      465 CALL                             R27 4 1
      466 CALL                             R26 1 0
      467 GETUPVAL                         R26 8
      468 MOVE                             R27 R0
      469 MOVE                             R28 R23
      470 MOVE                             R29 R2
      471 GETTABLEKS                       R30 R1 K16 ["assetType"]
      473 MOVE                             R31 R25
      474 MOVE                             R32 R6
      475 DUPTABLE                         R33 K86 [{"facets", "tags", "includeOnlyVerifiedCreators", "minPrice", "maxPrice", "minDuration", "maxDuration"}]
      476 GETTABLEKS                       R34 R1 K12 ["facets"]
      478 SETTABLEKS                       R34 R33 K12 ["facets"]
      480 GETTABLEKS                       R34 R1 K13 ["tags"]
      482 SETTABLEKS                       R34 R33 K13 ["tags"]
      484 GETTABLEKS                       R34 R1 K87 ["verifiedCreatorsOnly"]
      486 SETTABLEKS                       R34 R33 K81 ["includeOnlyVerifiedCreators"]
      488 SETTABLEKS                       R17 R33 K82 ["minPrice"]
      490 SETTABLEKS                       R18 R33 K83 ["maxPrice"]
      492 GETTABLEKS                       R34 R1 K88 ["audioMinDuration"]
      494 SETTABLEKS                       R34 R33 K84 ["minDuration"]
      496 GETTABLEKS                       R34 R1 K89 ["audioMaxDuration"]
      498 SETTABLEKS                       R34 R33 K85 ["maxDuration"]
      500 CALL                             R26 7 2
      501 GETUPVAL                         R28 0
      502 LOADK                            R29 K90 ["[AssetSearchTool] Waterfall: source=\"%*\" returned %* results"]
      503 MOVE                             R31 R23
      504 LENGTH                           R32 R26
      505 NAMECALL                         R29 R29 K17 ["format"]
      507 CALL                             R29 3 1
      508 CALL                             R28 1 0
      509 LENGTH                           R28 R27
      510 LOADN                            R29 0
      511 JUMPIFNOTLT                      R29 R28 ; [+2]
      513 MOVE                             R12 R27
      514 MOVE                             R28 R26
      515 LOADNIL                          R29
      516 LOADNIL                          R30
      517 FORGPREP                         R28
      518 LENGTH                           R33 R11
      519 JUMPIFLE                         R4 R33 ; [+18]
      521 GETTABLEKS                       R34 R32 K91 ["assetId"]
      523 GETTABLE                         R33 R16 R34
      524 JUMPIF                           R33 ; [+11]
      525 GETTABLEKS                       R33 R32 K91 ["assetId"]
      527 LOADB                            R34 1
      528 SETTABLE                         R34 R16 R33
      529 FASTCALL2                        TABLE_INSERT R11 R32 ; [+5]
      531 MOVE                             R34 R11
      532 MOVE                             R35 R32
      533 GETIMPORT                        R33 K64 [table.insert]
      535 CALL                             R33 2 0
      536 FORGLOOP                         R28 2 ; [-19]
      538 FASTCALL2                        TABLE_INSERT R13 R23 ; [+5]
      540 MOVE                             R29 R13
      541 MOVE                             R30 R23
      542 GETIMPORT                        R28 K64 [table.insert]
      544 CALL                             R28 2 0
      545 FORGLOOP                         R19 2 ; [-147]
      547 JUMP                             ; [+223]
      548 GETUPVAL                         R15 6
      549 GETTABLEKS                       R15 R15 K48 ["Group"]
      551 JUMPIFNOTEQ                      R3 R15 ; [+77]
      553 GETTABLEKS                       R16 R1 K42 ["groupId"]
      555 JUMPIFEQKNIL                     R16 ; [+6]
      557 LOADB                            R15 1
      558 GETTABLEKS                       R16 R1 K42 ["groupId"]
      560 JUMPIFNOTEQKS                    R16 K0 [""] ; [+16]
      562 LOADB                            R15 0
      563 GETTABLEKS                       R16 R1 K43 ["groupName"]
      565 JUMPIFEQKNIL                     R16 ; [+11]
      567 GETUPVAL                         R16 9
      568 GETTABLEKS                       R16 R16 K92 ["trim"]
      570 GETTABLEKS                       R17 R1 K43 ["groupName"]
      572 CALL                             R16 1 1
      573 JUMPIFNOTEQKS                    R16 K0 [""] ; [+2]
      575 LOADB                            R15 0 +1
      576 LOADB                            R15 1
      577 JUMPIF                           R15 ; [+51]
      578 GETTABLEKS                       R16 R6 K42 ["groupId"]
      580 JUMPIF                           R16 ; [+48]
      581 GETUPVAL                         R16 4
      582 MOVE                             R17 R0
      583 MOVE                             R18 R6
      584 CALL                             R16 2 1
      585 GETUPVAL                         R17 2
      586 DUPTABLE                         R19 K98 [{["status"] = "success", ["query"], ["scope"], ["resultCount"] = 0, ["results"], ["groups"], ["context"], ["nextSteps"]}]
      587 SETTABLEKS                       R2 R19 K1 ["query"]
      589 SETTABLEKS                       R3 R19 K3 ["scope"]
      591 NEWTABLE                         R20 0 0
      593 SETTABLEKS                       R20 R19 K95 ["results"]
      595 LENGTH                           R21 R16
      596 LOADN                            R22 0
      597 JUMPIFNOTLT                      R22 R21 ; [+3]
      599 MOVE                             R20 R16
      600 JUMP                             ; [+1]
      601 LOADNIL                          R20
      602 SETTABLEKS                       R20 R19 K96 ["groups"]
      604 SETTABLEKS                       R10 R19 K97 ["context"]
      606 NEWTABLE                         R20 0 2
      608 LOADK                            R21 K99 ["This universe is not owned by a group, and no groupId/groupName was supplied."]
      609 LENGTH                           R23 R16
      610 LOADN                            R24 0
      611 JUMPIFNOTLT                      R24 R23 ; [+3]
      613 LOADK                            R22 K100 ["Pass scope='group' with groupId or groupName from the listed groups to retry."]
      614 JUMP                             ; [+1]
      615 LOADK                            R22 K101 ["Use scope='auto' or scope='user' instead — you are not a member of any groups."]
      616 SETLIST                          R20 R21 2 [1]
      618 SETTABLEKS                       R20 R19 K20 ["nextSteps"]
      620 NAMECALL                         R17 R17 K24 ["JSONEncode"]
      622 CALL                             R17 2 1
      623 DUPTABLE                         R18 K102 [{["resultCount"] = 0, ["results"]}]
      624 NEWTABLE                         R19 0 0
      626 SETTABLEKS                       R19 R18 K95 ["results"]
      628 RETURN                           R17 2
      629 GETUPVAL                         R15 6
      630 GETTABLEKS                       R15 R15 K59 ["Universe"]
      632 JUMPIFNOTEQ                      R3 R15 ; [+18]
      634 GETTABLEKS                       R15 R6 K41 ["universeId"]
      636 JUMPIF                           R15 ; [+14]
      637 GETUPVAL                         R15 2
      638 DUPTABLE                         R17 K104 [{["status"] = "error", ["error"] = "scope='universe' is unavailable because this game is not yet published (no universe ID).", ["nextSteps"]}]
      639 NEWTABLE                         R18 0 2
      641 LOADK                            R19 K105 ["Use scope='auto' or scope='user' to search the user's personal inventory and Creator Store instead."]
      642 LOADK                            R20 K106 ["The game must be published to Roblox before its universe inventory becomes searchable."]
      643 SETLIST                          R18 R19 2 [1]
      645 SETTABLEKS                       R18 R17 K20 ["nextSteps"]
      647 NAMECALL                         R15 R15 K24 ["JSONEncode"]
      649 CALL                             R15 2 -1
      650 RETURN                           R15 -1
      651 GETUPVAL                         R15 0
      652 LOADK                            R16 K107 ["[AssetSearchTool] Explicit scope=\"%*\""]
      653 MOVE                             R18 R3
      654 NAMECALL                         R16 R16 K17 ["format"]
      656 CALL                             R16 2 1
      657 CALL                             R15 1 0
      658 FASTCALL2                        TABLE_INSERT R13 R3 ; [+5]
      660 MOVE                             R16 R13
      661 MOVE                             R17 R3
      662 GETIMPORT                        R15 K64 [table.insert]
      664 CALL                             R15 2 0
      665 GETUPVAL                         R15 6
      666 GETTABLEKS                       R15 R15 K61 ["CreatorStore"]
      668 JUMPIFNOTEQ                      R3 R15 ; [+68]
      670 GETTABLEKS                       R17 R1 K69 ["minPriceCents"]
      672 GETTABLEKS                       R18 R1 K70 ["maxPriceCents"]
      674 GETTABLEKS                       R19 R1 K71 ["priceFilter"]
      676 JUMPIFNOTEQKS                    R19 K72 ["free"] ; [+3]
      678 LOADN                            R18 0
      679 JUMP                             ; [+5]
      680 GETTABLEKS                       R19 R1 K71 ["priceFilter"]
      682 JUMPIFNOTEQKS                    R19 K73 ["paid"] ; [+2]
      684 ORK                              R17 R17 K74 [1]
      685 MOVE                             R15 R17
      686 MOVE                             R16 R18
      687 GETUPVAL                         R17 8
      688 MOVE                             R18 R0
      689 GETUPVAL                         R19 6
      690 GETTABLEKS                       R19 R19 K61 ["CreatorStore"]
      692 MOVE                             R20 R2
      693 GETTABLEKS                       R21 R1 K16 ["assetType"]
      695 MOVE                             R22 R4
      696 MOVE                             R23 R6
      697 DUPTABLE                         R24 K86 [{"facets", "tags", "includeOnlyVerifiedCreators", "minPrice", "maxPrice", "minDuration", "maxDuration"}]
      698 GETTABLEKS                       R25 R1 K12 ["facets"]
      700 SETTABLEKS                       R25 R24 K12 ["facets"]
      702 GETTABLEKS                       R25 R1 K13 ["tags"]
      704 SETTABLEKS                       R25 R24 K13 ["tags"]
      706 GETTABLEKS                       R25 R1 K87 ["verifiedCreatorsOnly"]
      708 SETTABLEKS                       R25 R24 K81 ["includeOnlyVerifiedCreators"]
      710 SETTABLEKS                       R15 R24 K82 ["minPrice"]
      712 SETTABLEKS                       R16 R24 K83 ["maxPrice"]
      714 GETTABLEKS                       R25 R1 K88 ["audioMinDuration"]
      716 SETTABLEKS                       R25 R24 K84 ["minDuration"]
      718 GETTABLEKS                       R25 R1 K89 ["audioMaxDuration"]
      720 SETTABLEKS                       R25 R24 K85 ["maxDuration"]
      722 CALL                             R17 7 2
      723 MOVE                             R11 R17
      724 LENGTH                           R19 R18
      725 LOADN                            R20 0
      726 JUMPIFNOTLT                      R20 R19 ; [+2]
      728 MOVE                             R12 R18
      729 GETUPVAL                         R19 0
      730 LOADK                            R20 K108 ["[AssetSearchTool] Explicit creator_store: parsed %* results"]
      731 LENGTH                           R22 R11
      732 NAMECALL                         R20 R20 K17 ["format"]
      734 CALL                             R20 2 1
      735 CALL                             R19 1 0
      736 JUMP                             ; [+34]
      737 GETTABLEKS                       R16 R1 K16 ["assetType"]
      739 GETUPVAL                         R17 7
      740 JUMPIFNOTEQ                      R16 R17 ; [+3]
      742 MULK                             R15 R4 K4 [5]
      743 JUMP                             ; [+1]
      744 MOVE                             R15 R4
      745 GETUPVAL                         R16 8
      746 MOVE                             R17 R0
      747 MOVE                             R18 R3
      748 MOVE                             R19 R2
      749 GETTABLEKS                       R20 R1 K16 ["assetType"]
      751 MOVE                             R21 R15
      752 MOVE                             R22 R6
      753 DUPTABLE                         R23 K110 [{"effectiveGroupId"}]
      754 SETTABLEKS                       R7 R23 K109 ["effectiveGroupId"]
      756 CALL                             R16 7 2
      757 MOVE                             R11 R16
      758 LENGTH                           R18 R17
      759 LOADN                            R19 0
      760 JUMPIFNOTLT                      R19 R18 ; [+2]
      762 MOVE                             R12 R17
      763 GETUPVAL                         R18 0
      764 LOADK                            R19 K111 ["[AssetSearchTool] Explicit %*: got %* results"]
      765 MOVE                             R21 R3
      766 LENGTH                           R22 R11
      767 NAMECALL                         R19 R19 K17 ["format"]
      769 CALL                             R19 3 1
      770 CALL                             R18 1 0
      771 GETUPVAL                         R15 0
      772 LOADK                            R16 K112 ["[AssetSearchTool] Total: %* results from sources: %*"]
      773 LENGTH                           R18 R11
      774 GETIMPORT                        R19 K67 [table.concat]
      776 MOVE                             R20 R13
      777 LOADK                            R21 K68 [", "]
      778 CALL                             R19 2 1
      779 NAMECALL                         R16 R16 K17 ["format"]
      781 CALL                             R16 3 1
      782 CALL                             R15 1 0
      783 NEWTABLE                         R15 0 0
      785 NEWTABLE                         R16 0 0
      787 MOVE                             R17 R11
      788 LOADNIL                          R18
      789 LOADNIL                          R19
      790 FORGPREP                         R17
      791 GETTABLEKS                       R23 R21 K91 ["assetId"]
      793 GETTABLE                         R22 R15 R23
      794 JUMPIF                           R22 ; [+14]
      795 GETTABLEKS                       R22 R21 K91 ["assetId"]
      797 LOADB                            R23 1
      798 SETTABLE                         R23 R15 R22
      799 FASTCALL2                        TABLE_INSERT R16 R21 ; [+5]
      801 MOVE                             R23 R16
      802 MOVE                             R24 R21
      803 GETIMPORT                        R22 K64 [table.insert]
      805 CALL                             R22 2 0
      806 LENGTH                           R22 R16
      807 JUMPIFLE                         R4 R22 ; [+3]
      809 FORGLOOP                         R17 2 ; [-19]
      811 MOVE                             R11 R16
      812 GETTABLEKS                       R17 R0 K113 ["tools"]
      814 GETTABLEKS                       R17 R17 K114 ["assetSearch"]
      816 NEWTABLE                         R18 0 0
      818 NEWTABLE                         R19 0 0
      820 MOVE                             R20 R11
      821 LOADNIL                          R21
      822 LOADNIL                          R22
      823 FORGPREP                         R20
      824 DUPTABLE                         R27 K120 [{"assetId", "name", "assetType", "source", "location", "creatorName", "priceCents", "priceLabel", "isFree"}]
      825 GETTABLEKS                       R28 R24 K91 ["assetId"]
      827 SETTABLEKS                       R28 R27 K91 ["assetId"]
      829 GETTABLEKS                       R28 R24 K54 ["name"]
      831 SETTABLEKS                       R28 R27 K54 ["name"]
      833 GETTABLEKS                       R28 R24 K16 ["assetType"]
      835 SETTABLEKS                       R28 R27 K16 ["assetType"]
      837 GETTABLEKS                       R28 R24 K115 ["source"]
      839 SETTABLEKS                       R28 R27 K115 ["source"]
      841 GETTABLEKS                       R28 R24 K116 ["location"]
      843 SETTABLEKS                       R28 R27 K116 ["location"]
      845 GETTABLEKS                       R28 R24 K57 ["creatorName"]
      847 SETTABLEKS                       R28 R27 K57 ["creatorName"]
      849 GETTABLEKS                       R28 R24 K117 ["priceCents"]
      851 SETTABLEKS                       R28 R27 K117 ["priceCents"]
      853 GETTABLEKS                       R28 R24 K118 ["priceLabel"]
      855 SETTABLEKS                       R28 R27 K118 ["priceLabel"]
      857 GETTABLEKS                       R28 R24 K119 ["isFree"]
      859 SETTABLEKS                       R28 R27 K119 ["isFree"]
      861 FASTCALL2                        TABLE_INSERT R18 R27 ; [+4]
      863 MOVE                             R26 R18
      864 GETIMPORT                        R25 K64 [table.insert]
      866 CALL                             R25 2 0
      867 DUPTABLE                         R27 K124 [{"assetId", "name", "description", "assetType", "source", "location", "creatorName", "creatorId", "priceCents", "priceLabel", "isFree", "thumbnailUrl", "creatorStoreUrl"}]
      868 GETTABLEKS                       R28 R24 K91 ["assetId"]
      870 SETTABLEKS                       R28 R27 K91 ["assetId"]
      872 GETTABLEKS                       R28 R24 K54 ["name"]
      874 SETTABLEKS                       R28 R27 K54 ["name"]
      876 GETTABLEKS                       R28 R24 K121 ["description"]
      878 SETTABLEKS                       R28 R27 K121 ["description"]
      880 GETTABLEKS                       R28 R24 K16 ["assetType"]
      882 SETTABLEKS                       R28 R27 K16 ["assetType"]
      884 GETTABLEKS                       R28 R24 K115 ["source"]
      886 SETTABLEKS                       R28 R27 K115 ["source"]
      888 GETTABLEKS                       R28 R24 K116 ["location"]
      890 SETTABLEKS                       R28 R27 K116 ["location"]
      892 GETTABLEKS                       R28 R24 K57 ["creatorName"]
      894 SETTABLEKS                       R28 R27 K57 ["creatorName"]
      896 GETTABLEKS                       R28 R24 K50 ["creatorId"]
      898 SETTABLEKS                       R28 R27 K50 ["creatorId"]
      900 GETTABLEKS                       R28 R24 K117 ["priceCents"]
      902 SETTABLEKS                       R28 R27 K117 ["priceCents"]
      904 GETTABLEKS                       R28 R24 K118 ["priceLabel"]
      906 SETTABLEKS                       R28 R27 K118 ["priceLabel"]
      908 GETTABLEKS                       R28 R24 K119 ["isFree"]
      910 SETTABLEKS                       R28 R27 K119 ["isFree"]
      912 LOADK                            R28 K125 ["%*v1/assets?assetIds=%*&returnPolicy=PlaceHolder&size=150x150&format=Png"]
      913 GETTABLEKS                       R30 R17 K126 ["getThumbnailsUrl"]
      915 CALL                             R30 0 1
      916 GETTABLEKS                       R31 R24 K91 ["assetId"]
      918 NAMECALL                         R28 R28 K17 ["format"]
      920 CALL                             R28 3 1
      921 SETTABLEKS                       R28 R27 K122 ["thumbnailUrl"]
      923 GETTABLEKS                       R29 R24 K115 ["source"]
      925 GETUPVAL                         R30 6
      926 GETTABLEKS                       R30 R30 K61 ["CreatorStore"]
      928 JUMPIFNOTEQ                      R29 R30 ; [+11]
      930 LOADK                            R28 K127 ["%*store/asset/%*"]
      931 GETTABLEKS                       R30 R17 K128 ["getCreatorHubUrl"]
      933 CALL                             R30 0 1
      934 GETTABLEKS                       R31 R24 K91 ["assetId"]
      936 NAMECALL                         R28 R28 K17 ["format"]
      938 CALL                             R28 3 1
      939 JUMP                             ; [+1]
      940 LOADNIL                          R28
      941 SETTABLEKS                       R28 R27 K123 ["creatorStoreUrl"]
      943 FASTCALL2                        TABLE_INSERT R19 R27 ; [+4]
      945 MOVE                             R26 R19
      946 GETIMPORT                        R25 K64 [table.insert]
      948 CALL                             R25 2 0
      949 FORGLOOP                         R20 2 ; [-126]
      951 GETUPVAL                         R20 0
      952 LOADK                            R21 K129 ["[AssetSearchTool] === SEARCH COMPLETE === resultCount=%* sources=%*"]
      953 LENGTH                           R23 R11
      954 GETIMPORT                        R24 K67 [table.concat]
      956 MOVE                             R25 R13
      957 LOADK                            R26 K130 [","]
      958 CALL                             R24 2 1
      959 NAMECALL                         R21 R21 K17 ["format"]
      961 CALL                             R21 3 1
      962 CALL                             R20 1 0
      963 MOVE                             R20 R19
      964 LOADNIL                          R21
      965 LOADNIL                          R22
      966 FORGPREP                         R20
      967 GETUPVAL                         R25 0
      968 LOADK                            R26 K131 ["[AssetSearchTool]   result[%*]: id=%* name=\"%*\" type=%* source=%* location=%*"]
      969 MOVE                             R28 R23
      970 GETTABLEKS                       R29 R24 K91 ["assetId"]
      972 GETTABLEKS                       R30 R24 K54 ["name"]
      974 GETTABLEKS                       R31 R24 K16 ["assetType"]
      976 GETTABLEKS                       R32 R24 K115 ["source"]
      978 GETTABLEKS                       R34 R24 K116 ["location"]
      980 ORK                              R33 R34 K15 ["nil"]
      981 NAMECALL                         R26 R26 K17 ["format"]
      983 CALL                             R26 7 1
      984 CALL                             R25 1 0
      985 FORGLOOP                         R20 2 ; [-19]
      987 LOADNIL                          R20
      988 LOADB                            R21 1
      989 GETUPVAL                         R22 6
      990 GETTABLEKS                       R22 R22 K48 ["Group"]
      992 JUMPIFEQ                         R3 R22 ; [+5]
      994 JUMPIFEQKS                       R3 K2 ["auto"] ; [+2]
      996 LOADB                            R21 0 +1
      997 LOADB                            R21 1
      998 JUMPIFNOT                        R21 ; [+9]
      999 GETUPVAL                         R22 4
     1000 MOVE                             R23 R0
     1001 MOVE                             R24 R6
     1002 CALL                             R22 2 1
     1003 LENGTH                           R23 R22
     1004 LOADN                            R24 0
     1005 JUMPIFNOTLT                      R24 R23 ; [+2]
     1007 MOVE                             R20 R22
     1008 GETUPVAL                         R22 2
     1009 DUPTABLE                         R24 K135 [{["status"] = "success", ["query"], ["scope"], ["searchSources"], ["skippedSources"], ["resultCount"], ["availableFacets"], ["results"], ["groups"], ["context"], ["nextSteps"]}]
     1010 SETTABLEKS                       R2 R24 K1 ["query"]
     1012 SETTABLEKS                       R3 R24 K3 ["scope"]
     1014 SETTABLEKS                       R13 R24 K132 ["searchSources"]
     1016 GETIMPORT                        R26 K137 [next]
     1018 MOVE                             R27 R14
     1019 CALL                             R26 1 1
     1020 JUMPIFNOT                        R26 ; [+2]
     1021 MOVE                             R25 R14
     1022 JUMP                             ; [+1]
     1023 LOADNIL                          R25
     1024 SETTABLEKS                       R25 R24 K133 ["skippedSources"]
     1026 LENGTH                           R25 R11
     1027 SETTABLEKS                       R25 R24 K94 ["resultCount"]
     1029 LENGTH                           R26 R12
     1030 LOADN                            R27 0
     1031 JUMPIFNOTLT                      R27 R26 ; [+3]
     1033 MOVE                             R25 R12
     1034 JUMP                             ; [+1]
     1035 LOADNIL                          R25
     1036 SETTABLEKS                       R25 R24 K134 ["availableFacets"]
     1038 SETTABLEKS                       R19 R24 K95 ["results"]
     1040 SETTABLEKS                       R20 R24 K96 ["groups"]
     1042 SETTABLEKS                       R10 R24 K97 ["context"]
     1044 NEWTABLE                         R25 0 4
     1046 LOADK                            R26 K138 ["Review the results and choose the best asset for the user's request. Prefer inventory results (source='inventory') as these are already owned and always insertable."]
     1047 LOADK                            R27 K139 ["For free/owned assets: call insert_asset with assetId, assetType, and assetName from the chosen result to insert it."]
     1048 LOADK                            R28 K140 ["For paid assets (isFree=false): show the user the creatorStoreUrl link and priceLabel so they can purchase it. Do not attempt to insert paid assets — they will fail."]
     1049 LOADK                            R29 K141 ["Some Creator Store assets may be restricted or moderated and fail to insert. If insert_asset fails, try the next result from the list rather than retrying the same asset."]
     1050 SETLIST                          R25 R26 4 [1]
     1052 SETTABLEKS                       R25 R24 K20 ["nextSteps"]
     1054 NAMECALL                         R22 R22 K24 ["JSONEncode"]
     1056 CALL                             R22 2 1
     1057 DUPTABLE                         R23 K142 [{"resultCount", "results"}]
     1058 LENGTH                           R24 R11
     1059 SETTABLEKS                       R24 R23 K94 ["resultCount"]
     1061 SETTABLEKS                       R18 R23 K95 ["results"]
     1063 RETURN                           R22 2

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 2
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 MOVE                             R5 R1
        7 NAMECALL                         R3 R3 K0 ["addText"]
        9 CALL                             R3 2 1
       10 JUMPIFNOT                        R2 ; [+4]
       11 MOVE                             R6 R2
       12 NAMECALL                         R4 R3 K1 ["setStructuredContent"]
       14 CALL                             R4 2 0
       15 NAMECALL                         R4 R3 K2 ["build"]
       17 CALL                             R4 1 -1
       18 RETURN                           R4 -1

PROTO_17:
        0 LOADK                            R0 K0 ["Search for models, audio, packages, and other assets"]
        1 RETURN                           R0 1

PROTO_18:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["AssetSearch"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K5 [{"query"}]
        7 GETUPVAL                         R3 1
        8 SETTABLEKS                       R3 R2 K4 ["query"]
       10 SETTABLEKS                       R2 R1 K1 ["arguments"]
       12 RETURN                           R1 1

PROTO_19:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 NEWTABLE                         R2 0 1
        5 MOVE                             R3 R1
        6 SETLIST                          R2 R3 1 [1]
        8 RETURN                           R2 1

PROTO_20:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["AssetSearch"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K5 [{"query"}]
        7 SETTABLEKS                       R0 R2 K4 ["query"]
        9 SETTABLEKS                       R2 R1 K1 ["arguments"]
       11 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantAssetSearchInsertTool"]
        3 JUMPIF                           R2 ; [+3]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["FFlagAssistantAssetSearchInsertToolABTest"]
        7 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        9 LOADK                            R3 K2 ["Asset search tool requires FFlagAssistantAssetSearchInsertTool or FFlagAssistantAssetSearchInsertToolABTest to be enabled"]
       10 GETIMPORT                        R1 K4 [assert]
       12 CALL                             R1 2 0
       13 GETTABLEKS                       R1 R0 K5 ["environment"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U2
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K6 ["define"]
       22 CALL                             R3 0 1
       23 GETUPVAL                         R5 4
       24 GETTABLEKS                       R5 R5 K7 ["AssetSearch"]
       26 NAMECALL                         R3 R3 K8 ["setName"]
       28 CALL                             R3 2 1
       29 GETUPVAL                         R5 4
       30 GETTABLEKS                       R5 R5 K9 ["replaceTokens"]
       32 LOADK                            R6 K10 ["Searches for assets across Creator Store (public marketplace) and Creator Inventory (user/group/universe).\nUse this tool to find assets by keyword before inserting them with {ToolNames.AssetInsert}.\nReturns a list of matching assets with metadata (name, type, source, price).\n\nScope controls where to search:\n- 'auto' (default): waterfalls through universe inventory → universe's owning group → user inventory → Creator Store. Best for general \"find me an X\" requests.\n- 'creator_store': searches only the marketplace. Use this when the user wants marketplace assets, paid assets, or when using price/creator filters.\n- 'user': searches the user's personal inventory only.\n- 'group': searches the universe's owning group by default. Pass groupId or groupName to search a different group instead. If the universe has no owning group and you don't pass a groupId, the response lists the user's groups so you can retry.\n- 'universe': searches the current universe's inventory only.\n\nTargeting a specific group: when the user names a particular group (\"in my group X\" / \"in group 12345\"), set scope='group' AND pass groupId or groupName to constrain to that one group. groupId/groupName are only valid with scope='group'; combining with any other scope (including 'auto') is rejected.\n\nResult attribution: each inventory result includes `creatorId` (string, the group or user ID that owns the asset) and `creatorName` (the group/user name when known). `creatorId` semantics depend on `source`: for source='inventory' coming from a group, it's the group ID.\n\nEvery scope='group' or scope='auto' response includes a `groups` field listing { id, name } for each of the user's groups (when the user has any). Use these to make a follow-up scope='group' + groupId call when the default (the universe's owning group, or the first relevant group) doesn't match what the user wants.\n\nEvery response also includes a `context` field describing the current Studio session: { userId, universeId, isPublished, creatorType ('User'/'Group' when published), creatorId, creatorName }. Use this to ground answers about which place is being edited and to disambiguate \"in my group\" requests.\n\nCross-owner inserts caution: when an inventory result's creatorId differs from context.creatorId (the place's owner), inserting it brings another owner's asset into this place. The user may have access to view the asset but might not intend or have the authority to share it across owners. Before calling insert_asset on a cross-owner result, name the source (the asset's creatorName) and the destination (context.creatorName or universe), and ask the user for explicit consent.\n\nWhen to use price filters: If the user asks for paid/premium assets or specifies a price range, set scope='creator_store' and use priceFilter, minPriceCents, and/or maxPriceCents. These filters only apply to Creator Store searches.\nWhen to use asset type: If the user asks for a specific asset type (audio, decals, meshes, packages, etc.), set assetType to filter results. The inventory API requires exactly one assetType per call and defaults to 'Model' when omitted, so cross-type discovery requires explicit assetType=Image / Audio / etc. Packages are stored as Models with a Package subtype — set assetType='Package' to find them (do not search for the word \"package\" as a query).\nInventory results (source='inventory') are always insertable. Creator Store results may occasionally be restricted — if insert fails, try the next result.\nEach result includes a thumbnailUrl (Roblox Thumbnails API). Fetch it to get JSON with data[0].imageUrl pointing to a CDN image of the asset — useful for visually comparing assets before inserting.\n"]
       33 CALL                             R5 1 -1
       34 NAMECALL                         R3 R3 K11 ["setDescription"]
       36 CALL                             R3 -1 1
       37 LOADK                            R5 K12 ["query"]
       38 DUPTABLE                         R6 K17 [{["type"] = "string", ["description"] = "Search term. Can be empty when filtering by assetType alone (e.g. to list all packages). Supports multi-term search with '+' (e.g. 'red+car') and exact phrase with quotes (e.g. '\"red+car\"')."}]
       39 NAMECALL                         R3 R3 K18 ["addOptionalArgument"]
       41 CALL                             R3 3 1
       42 LOADK                            R5 K19 ["scope"]
       43 DUPTABLE                         R6 K22 [{["type"] = "string", ["enum"], ["description"] = "Where to search. 'auto' (default) waterfalls through all available sources. Use explicit scope to target a single source."}]
       44 NEWTABLE                         R7 0 5
       46 LOADK                            R8 K23 ["auto"]
       47 LOADK                            R9 K24 ["creator_store"]
       48 LOADK                            R10 K25 ["user"]
       49 LOADK                            R11 K26 ["group"]
       50 LOADK                            R12 K27 ["universe"]
       51 SETLIST                          R7 R8 5 [1]
       53 SETTABLEKS                       R7 R6 K20 ["enum"]
       55 NAMECALL                         R3 R3 K18 ["addOptionalArgument"]
       57 CALL                             R3 3 1
       58 LOADK                            R5 K28 ["includeSources"]
       59 DUPTABLE                         R6 K32 [{["type"] = "array", ["items"], ["description"] = "With scope='auto': only search these sources (e.g. ['user', 'creator_store'])."}]
       60 DUPTABLE                         R7 K33 [{["type"] = "string", ["enum"]}]
       61 NEWTABLE                         R8 0 4
       63 LOADK                            R9 K25 ["user"]
       64 LOADK                            R10 K26 ["group"]
       65 LOADK                            R11 K27 ["universe"]
       66 LOADK                            R12 K24 ["creator_store"]
       67 SETLIST                          R8 R9 4 [1]
       69 SETTABLEKS                       R8 R7 K20 ["enum"]
       71 SETTABLEKS                       R7 R6 K30 ["items"]
       73 NAMECALL                         R3 R3 K18 ["addOptionalArgument"]
       75 CALL                             R3 3 1
       76 LOADK                            R5 K34 ["excludeSources"]
       77 DUPTABLE                         R6 K36 [{["type"] = "array", ["items"], ["description"] = "With scope='auto': skip these sources from the waterfall."}]
       78 DUPTABLE                         R7 K33 [{["type"] = "string", ["enum"]}]
       79 NEWTABLE                         R8 0 4
       81 LOADK                            R9 K25 ["user"]
       82 LOADK                            R10 K26 ["group"]
       83 LOADK                            R11 K27 ["universe"]
       84 LOADK                            R12 K24 ["creator_store"]
       85 SETLIST                          R8 R9 4 [1]
       87 SETTABLEKS                       R8 R7 K20 ["enum"]
       89 SETTABLEKS                       R7 R6 K30 ["items"]
       91 NAMECALL                         R3 R3 K18 ["addOptionalArgument"]
       93 CALL                             R3 3 1
       94 LOADK                            R5 K37 ["groupId"]
       95 DUPTABLE                         R6 K39 [{["type"] = "string", ["description"] = "Numeric group ID to constrain group inventory searches to a single group. Only valid with scope='group'. Mutually exclusive with groupName."}]
       96 NAMECALL                         R3 R3 K18 ["addOptionalArgument"]
       98 CALL                             R3 3 1
       99 LOADK                            R5 K40 ["groupName"]
      100 DUPTABLE                         R6 K42 [{["type"] = "string", ["description"] = "Group name to constrain group inventory searches to a single group. Matched case-insensitively against the user's groups. Only valid with scope='group'. If the name doesn't match any of the user's groups, the response includes a `groups` field listing valid options. Mutually exclusive with groupId."}]
      101 NAMECALL                         R3 R3 K18 ["addOptionalArgument"]
      103 CALL                             R3 3 1
      104 LOADK                            R5 K43 ["assetType"]
      105 DUPTABLE                         R6 K45 [{["type"] = "string", ["enum"], ["description"] = "Filter by asset type. Use 'Image' for user-uploaded images (most decals/textures uploaded today are stored as Image, not Decal). Use 'Package' when the user asks about packages — packages are Models with a Package subtype, so a keyword search for 'package' won't find them."}]
      106 NEWTABLE                         R7 0 8
      108 LOADK                            R8 K46 ["Model"]
      109 LOADK                            R9 K47 ["Audio"]
      110 LOADK                            R10 K48 ["Mesh"]
      111 LOADK                            R11 K49 ["MeshPart"]
      112 LOADK                            R12 K50 ["Image"]
      113 LOADK                            R13 K51 ["Decal"]
      114 LOADK                            R14 K52 ["Video"]
      115 LOADK                            R15 K53 ["Package"]
      116 SETLIST                          R7 R8 8 [1]
      118 SETTABLEKS                       R7 R6 K20 ["enum"]
      120 NAMECALL                         R3 R3 K18 ["addOptionalArgument"]
      122 CALL                             R3 3 1
      123 LOADK                            R5 K54 ["maxResults"]
      124 DUPTABLE                         R6 K57 [{["type"] = "number", ["description"] = "Number of results to return (1-20, default 5)."}]
      125 NAMECALL                         R3 R3 K18 ["addOptionalArgument"]
      127 CALL                             R3 3 1
      128 LOADK                            R5 K58 ["priceFilter"]
      129 DUPTABLE                         R6 K60 [{["type"] = "string", ["enum"], ["description"] = "Price filter. Requires scope='creator_store'. 'free' returns only free assets, 'paid' returns only paid assets, 'all' (default) returns both."}]
      130 NEWTABLE                         R7 0 3
      132 LOADK                            R8 K61 ["free"]
      133 LOADK                            R9 K62 ["paid"]
      134 LOADK                            R10 K63 ["all"]
      135 SETLIST                          R7 R8 3 [1]
      137 SETTABLEKS                       R7 R6 K20 ["enum"]
      139 NAMECALL                         R3 R3 K18 ["addOptionalArgument"]
      141 CALL                             R3 3 1
      142 LOADK                            R5 K64 ["minPriceCents"]
      143 DUPTABLE                         R6 K66 [{["type"] = "number", ["description"] = "Minimum price in cents. Requires scope='creator_store'. Use with maxPriceCents for a price range (e.g. minPriceCents=100, maxPriceCents=5000)."}]
      144 NAMECALL                         R3 R3 K18 ["addOptionalArgument"]
      146 CALL                             R3 3 1
      147 LOADK                            R5 K67 ["maxPriceCents"]
      148 DUPTABLE                         R6 K69 [{["type"] = "number", ["description"] = "Maximum price in cents. Requires scope='creator_store'. Use with minPriceCents for a price range."}]
      149 NAMECALL                         R3 R3 K18 ["addOptionalArgument"]
      151 CALL                             R3 3 1
      152 LOADK                            R5 K70 ["verifiedCreatorsOnly"]
      153 DUPTABLE                         R6 K73 [{["type"] = "boolean", ["description"] = "Only return results from verified creators (Creator Store only)."}]
      154 NAMECALL                         R3 R3 K18 ["addOptionalArgument"]
      156 CALL                             R3 3 1
      157 LOADK                            R5 K74 ["audioMinDuration"]
      158 DUPTABLE                         R6 K76 [{["type"] = "number", ["description"] = "Minimum audio duration in seconds (only when assetType='Audio')."}]
      159 NAMECALL                         R3 R3 K18 ["addOptionalArgument"]
      161 CALL                             R3 3 1
      162 LOADK                            R5 K77 ["audioMaxDuration"]
      163 DUPTABLE                         R6 K79 [{["type"] = "number", ["description"] = "Maximum audio duration in seconds (only when assetType='Audio')."}]
      164 NAMECALL                         R3 R3 K18 ["addOptionalArgument"]
      166 CALL                             R3 3 1
      167 LOADK                            R5 K80 ["facets"]
      168 DUPTABLE                         R6 K82 [{["type"] = "array", ["items"], ["description"] = "Additional keywords to refine the search (Creator Store only, ignored for inventory scopes). Facets narrow results by related concepts — e.g. for a 'lion' search: 'mane', 'safari', 'realistic', 'animated'. Available facets depend on the query."}]
      169 DUPTABLE                         R7 K83 [{["type"] = "string"}]
      170 SETTABLEKS                       R7 R6 K30 ["items"]
      172 NAMECALL                         R3 R3 K18 ["addOptionalArgument"]
      174 CALL                             R3 3 1
      175 LOADK                            R5 K84 ["tags"]
      176 DUPTABLE                         R6 K86 [{["type"] = "array", ["items"], ["description"] = "Tags to filter by (Creator Store only, ignored for inventory scopes). Tags are category labels like 'Vehicle', 'Airplane', 'Fantasy'."}]
      177 DUPTABLE                         R7 K83 [{["type"] = "string"}]
      178 SETTABLEKS                       R7 R6 K30 ["items"]
      180 NAMECALL                         R3 R3 K18 ["addOptionalArgument"]
      182 CALL                             R3 3 1
      183 MOVE                             R5 R2
      184 NAMECALL                         R3 R3 K87 ["setHandler"]
      186 CALL                             R3 2 1
      187 DUPTABLE                         R5 K96 [{["title"] = "Search Asset", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = True}]
      188 NAMECALL                         R3 R3 K97 ["setAnnotations"]
      190 CALL                             R3 2 1
      191 NAMECALL                         R3 R3 K98 ["build"]
      193 CALL                             R3 1 1
      194 DUPTABLE                         R4 K104 [{["command"] = "search_asset", ["getDescription"], ["runToolChain"], ["mapToToolCall"]}]
      195 DUPCLOSURE                       R5 K105 [PROTO_17]
      196 SETTABLEKS                       R5 R4 K101 ["getDescription"]
      198 GETUPVAL                         R6 0
      199 GETTABLEKS                       R6 R6 K106 ["FFlagAssistantAskInputTool"]
      201 JUMPIFNOT                        R6 ; [+3]
      202 DUPCLOSURE                       R5 K107 [PROTO_19]
      203 CAPTURE                          UPVAL U4
      204 JUMP                             ; [+1]
      205 LOADNIL                          R5
      206 SETTABLEKS                       R5 R4 K102 ["runToolChain"]
      208 GETUPVAL                         R6 0
      209 GETTABLEKS                       R6 R6 K106 ["FFlagAssistantAskInputTool"]
      211 JUMPIFNOT                        R6 ; [+2]
      212 LOADNIL                          R5
      213 JUMP                             ; [+2]
      214 DUPCLOSURE                       R5 K108 [PROTO_20]
      215 CAPTURE                          UPVAL U4
      216 SETTABLEKS                       R5 R4 K103 ["mapToToolCall"]
      218 DUPTABLE                         R5 K111 [{"definition", "slashCommands"}]
      219 SETTABLEKS                       R3 R5 K109 ["definition"]
      221 NEWTABLE                         R6 0 1
      223 MOVE                             R7 R4
      224 SETLIST                          R6 R7 1 [1]
      226 SETTABLEKS                       R6 R5 K110 ["slashCommands"]
      228 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["AssetManagement"]
       19 GETTABLEKS                       R3 R3 K12 ["AssetManagementConstants"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K10 ["Util"]
       26 GETTABLEKS                       R4 R4 K11 ["AssetManagement"]
       28 GETTABLEKS                       R4 R4 K13 ["AssetManagementUtils"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R0 K14 ["Parent"]
       35 GETTABLEKS                       R5 R5 K15 ["Dash"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R0 K16 ["Guest"]
       42 GETTABLEKS                       R6 R6 K17 ["Environment"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R0 K18 ["Flags"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R0 K14 ["Parent"]
       54 GETTABLEKS                       R8 R8 K19 ["ModelContextProtocol"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R9 R0 K20 ["Tools"]
       61 GETTABLEKS                       R9 R9 K21 ["ToolTypes"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K9 [require]
       66 GETTABLEKS                       R10 R0 K22 ["Types"]
       68 CALL                             R9 1 1
       69 GETTABLEKS                       R10 R7 K10 ["Util"]
       71 GETTABLEKS                       R10 R10 K23 ["ToolBuilder"]
       73 GETTABLEKS                       R11 R7 K10 ["Util"]
       75 GETTABLEKS                       R11 R11 K24 ["ToolResult"]
       77 GETTABLEKS                       R12 R8 K25 ["ToolNames"]
       79 GETTABLEKS                       R13 R2 K26 ["INVENTORY_ASSET_TYPE_MAP"]
       81 GETTABLEKS                       R14 R2 K27 ["INVENTORY_TYPE_NORMALIZE"]
       83 GETTABLEKS                       R15 R2 K28 ["CREATOR_STORE_CATEGORY_MAP"]
       85 GETTABLEKS                       R16 R2 K29 ["ASSET_TYPE_ID_TO_NAME"]
       87 GETTABLEKS                       R17 R2 K30 ["SearchSource"]
       89 GETIMPORT                        R18 K34 [Enum.AssetType.Package]
       91 GETTABLEKS                       R18 R18 K35 ["Name"]
       93 GETIMPORT                        R19 K37 [Enum.AssetType.Model]
       95 GETTABLEKS                       R19 R19 K35 ["Name"]
       97 GETTABLEKS                       R20 R3 K38 ["debugPrint"]
       99 DUPTABLE                         R21 K45 [{["auto"] = True, ["creator_store"] = True, ["user"] = True, ["group"] = True, ["universe"] = True}]
      100 DUPTABLE                         R22 K49 [{["user"] = "User", ["group"] = "Group", ["universe"] = "Universe"}]
      101 LOADNIL                          R23
      102 LOADNIL                          R24
      103 NEWTABLE                         R25 0 2
      105 LOADK                            R26 K50 ["StudioAssistant"]
      106 LOADK                            R27 K51 ["StudioAssetManager"]
      107 SETLIST                          R25 R26 2 [1]
      109 DUPCLOSURE                       R26 K52 [PROTO_0]
      110 NEWCLOSURE                       R27 P1
      111 CAPTURE                          REF R23
      112 CAPTURE                          REF R24
      113 CAPTURE                          VAL R20
      114 CAPTURE                          VAL R25
      115 DUPCLOSURE                       R28 K53 [PROTO_4]
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R17
      118 DUPCLOSURE                       R29 K54 [PROTO_5]
      119 DUPCLOSURE                       R30 K55 [PROTO_7]
      120 CAPTURE                          VAL R20
      121 CAPTURE                          VAL R29
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R17
      125 DUPCLOSURE                       R31 K56 [PROTO_8]
      126 CAPTURE                          VAL R20
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R18
      130 CAPTURE                          VAL R17
      131 NEWTABLE                         R32 0 0
      133 DUPCLOSURE                       R33 K57 [PROTO_12]
      134 CAPTURE                          VAL R32
      135 CAPTURE                          VAL R17
      136 CAPTURE                          VAL R30
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R18
      139 CAPTURE                          VAL R22
      140 CAPTURE                          VAL R13
      141 CAPTURE                          VAL R19
      142 CAPTURE                          VAL R27
      143 CAPTURE                          VAL R20
      144 CAPTURE                          VAL R31
      145 DUPCLOSURE                       R34 K58 [PROTO_13]
      146 DUPCLOSURE                       R35 K59 [PROTO_15]
      147 CAPTURE                          VAL R20
      148 CAPTURE                          VAL R21
      149 CAPTURE                          VAL R1
      150 CAPTURE                          VAL R26
      151 CAPTURE                          VAL R27
      152 CAPTURE                          VAL R28
      153 CAPTURE                          VAL R17
      154 CAPTURE                          VAL R18
      155 CAPTURE                          VAL R33
      156 CAPTURE                          VAL R4
      157 DUPCLOSURE                       R36 K60 [PROTO_21]
      158 CAPTURE                          VAL R6
      159 CAPTURE                          VAL R35
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R10
      162 CAPTURE                          VAL R12
      163 CLOSEUPVALS                      R23
      164 RETURN                           R36 1
