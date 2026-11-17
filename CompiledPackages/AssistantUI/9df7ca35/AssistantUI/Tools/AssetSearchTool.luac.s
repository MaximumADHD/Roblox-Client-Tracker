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
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R1 K1 [pcall]
        6 CALL                             R1 1 2
        7 JUMPIF                           R1 ; [+14]
        8 GETUPVAL                         R3 1
        9 LOADK                            R4 K2 ["[AssetSearchTool] getUserGroups: fetch failed for surface=%*: %*"]
       10 MOVE                             R6 R0
       11 FASTCALL1                        TOSTRING R2 ; [+3]
       12 MOVE                             R8 R2
       13 GETIMPORT                        R7 K4 [tostring]
       15 CALL                             R7 1 1
       16 NAMECALL                         R4 R4 K5 ["format"]
       18 CALL                             R4 3 1
       19 CALL                             R3 1 0
       20 LOADNIL                          R3
       21 RETURN                           R3 1
       22 JUMPIFNOT                        R2 ; [+8]
       23 GETTABLEKS                       R4 R2 K6 ["groups"]
       25 FASTCALL1                        TYPE R4 ; [+2]
       26 GETIMPORT                        R3 K8 [type]
       28 CALL                             R3 1 1
       29 JUMPIFEQKS                       R3 K9 ["table"] ; [+10]
       31 GETUPVAL                         R3 1
       32 LOADK                            R4 K10 ["[AssetSearchTool] getUserGroups: unexpected shape for surface=%*"]
       33 MOVE                             R6 R0
       34 NAMECALL                         R4 R4 K5 ["format"]
       36 CALL                             R4 2 1
       37 CALL                             R3 1 0
       38 LOADNIL                          R3
       39 RETURN                           R3 1
       40 NEWTABLE                         R3 0 0
       42 GETTABLEKS                       R4 R2 K6 ["groups"]
       44 LOADNIL                          R5
       45 LOADNIL                          R6
       46 FORGPREP                         R4
       47 GETTABLEKS                       R10 R8 K11 ["id"]
       49 FASTCALL1                        TYPE R10 ; [+2]
       50 GETIMPORT                        R9 K8 [type]
       52 CALL                             R9 1 1
       53 JUMPIFNOTEQKS                    R9 K12 ["number"] ; [+24]
       55 GETTABLEKS                       R10 R8 K13 ["name"]
       57 FASTCALL1                        TYPE R10 ; [+2]
       58 GETIMPORT                        R9 K8 [type]
       60 CALL                             R9 1 1
       61 JUMPIFNOTEQKS                    R9 K14 ["string"] ; [+16]
       63 DUPTABLE                         R11 K15 [{"id", "name"}]
       64 GETTABLEKS                       R12 R8 K11 ["id"]
       66 SETTABLEKS                       R12 R11 K11 ["id"]
       68 GETTABLEKS                       R12 R8 K13 ["name"]
       70 SETTABLEKS                       R12 R11 K13 ["name"]
       72 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       74 MOVE                             R10 R3
       75 GETIMPORT                        R9 K17 [table.insert]
       77 CALL                             R9 2 0
       78 FORGLOOP                         R4 2 ; [-32]
       80 RETURN                           R3 1

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
       72 NEWCLOSURE                       R4 P0
       73 CAPTURE                          VAL R0
       74 CAPTURE                          VAL R2
       75 FASTPCALL                        pcall 1 ; [+2]
       76 GETIMPORT                        R3 K35 [pcall]
       78 CALL                             R3 1 2
       79 JUMPIFNOT                        R3 ; [+1]
       80 JUMPIF                           R4 ; [+19]
       81 GETUPVAL                         R5 0
       82 LOADK                            R6 K36 ["[AssetSearchTool] fetchCreatorStoreAssets: FAILED %*"]
       83 JUMPIFNOT                        R3 ; [+2]
       84 LOADK                            R9 K37 ["empty response"]
       85 JUMP                             ; [+1]
       86 MOVE                             R9 R4
       87 FASTCALL1                        TOSTRING R9 ; [+2]
       88 GETIMPORT                        R8 K39 [tostring]
       90 CALL                             R8 1 1
       91 NAMECALL                         R6 R6 K40 ["format"]
       93 CALL                             R6 2 1
       94 CALL                             R5 1 0
       95 NEWTABLE                         R5 0 0
       97 NEWTABLE                         R6 0 0
       99 RETURN                           R5 2
      100 GETTABLEKS                       R6 R4 K41 ["queryFacets"]
      102 JUMPIFNOT                        R6 ; [+8]
      103 GETTABLEKS                       R5 R4 K41 ["queryFacets"]
      105 GETTABLEKS                       R5 R5 K42 ["availableFacets"]
      107 JUMPIF                           R5 ; [+5]
      108 NEWTABLE                         R5 0 0
      110 JUMP                             ; [+2]
      111 NEWTABLE                         R5 0 0
      113 NEWTABLE                         R6 0 0
      115 GETTABLEKS                       R7 R4 K43 ["creatorStoreAssets"]
      117 JUMPIFNOT                        R7 ; [+84]
      118 GETTABLEKS                       R7 R4 K43 ["creatorStoreAssets"]
      120 LOADNIL                          R8
      121 LOADNIL                          R9
      122 FORGPREP                         R7
      123 GETTABLEKS                       R12 R11 K44 ["asset"]
      125 JUMPIFNOT                        R12 ; [+74]
      126 GETTABLEKS                       R13 R12 K45 ["id"]
      128 JUMPIFNOT                        R13 ; [+71]
      129 GETUPVAL                         R13 1
      130 GETTABLEKS                       R14 R11 K46 ["creatorStoreProduct"]
      132 CALL                             R13 1 2
      133 GETUPVAL                         R15 2
      134 GETTABLEKS                       R15 R15 K47 ["isPackageAsset"]
      136 LOADNIL                          R16
      137 GETTABLEKS                       R17 R12 K48 ["subTypes"]
      139 CALL                             R15 2 1
      140 DUPTABLE                         R18 K60 [{["assetId"], ["name"], ["description"], ["assetType"], ["source"], ["location"] = , ["creatorName"], ["priceCents"], ["priceLabel"], ["isFree"]}]
      141 GETTABLEKS                       R20 R12 K45 ["id"]
      143 FASTCALL1                        TOSTRING R20 ; [+2]
      144 GETIMPORT                        R19 K39 [tostring]
      146 CALL                             R19 1 1
      147 SETTABLEKS                       R19 R18 K49 ["assetId"]
      149 GETTABLEKS                       R20 R12 K50 ["name"]
      151 ORK                              R19 R20 K61 ["Unknown"]
      152 SETTABLEKS                       R19 R18 K50 ["name"]
      154 GETTABLEKS                       R19 R12 K51 ["description"]
      156 SETTABLEKS                       R19 R18 K51 ["description"]
      158 JUMPIFNOT                        R15 ; [+2]
      159 LOADK                            R19 K25 ["Package"]
      160 JUMP                             ; [+5]
      161 GETUPVAL                         R21 3
      162 GETTABLEKS                       R22 R12 K62 ["assetTypeId"]
      164 GETTABLE                         R20 R21 R22
      165 ORK                              R19 R20 K19 ["Model"]
      166 SETTABLEKS                       R19 R18 K52 ["assetType"]
      168 GETUPVAL                         R19 4
      169 GETTABLEKS                       R19 R19 K63 ["CreatorStore"]
      171 SETTABLEKS                       R19 R18 K53 ["source"]
      173 GETTABLEKS                       R20 R11 K64 ["creator"]
      175 JUMPIFNOT                        R20 ; [+5]
      176 GETTABLEKS                       R19 R11 K64 ["creator"]
      178 GETTABLEKS                       R19 R19 K50 ["name"]
      180 JUMPIF                           R19 ; [+1]
      181 LOADK                            R19 K61 ["Unknown"]
      182 SETTABLEKS                       R19 R18 K56 ["creatorName"]
      184 SETTABLEKS                       R13 R18 K57 ["priceCents"]
      186 SETTABLEKS                       R14 R18 K58 ["priceLabel"]
      188 JUMPIFEQKN                       R13 K65 [0] ; [+2]
      190 LOADB                            R19 0 +1
      191 LOADB                            R19 1
      192 SETTABLEKS                       R19 R18 K59 ["isFree"]
      194 FASTCALL2                        TABLE_INSERT R6 R18 ; [+4]
      196 MOVE                             R17 R6
      197 GETIMPORT                        R16 K68 [table.insert]
      199 CALL                             R16 2 0
      200 FORGLOOP                         R7 2 ; [-78]
      202 GETUPVAL                         R7 0
      203 LOADK                            R8 K69 ["[AssetSearchTool] fetchCreatorStoreAssets: parsed %* results, %* facets"]
      204 LENGTH                           R10 R6
      205 LENGTH                           R11 R5
      206 NAMECALL                         R8 R8 K40 ["format"]
      208 CALL                             R8 3 1
      209 CALL                             R7 1 0
      210 MOVE                             R7 R6
      211 MOVE                             R8 R5
      212 RETURN                           R7 2

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
       80 JUMPIFNOTEQ                      R1 R11 ; [+88]
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
      121 NEWCLOSURE                       R14 P1
      122 CAPTURE                          VAL R0
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R4
      127 FASTPCALL                        pcall 1 ; [+2]
      128 GETIMPORT                        R13 K23 [pcall]
      130 CALL                             R13 1 2
      131 JUMPIFNOT                        R13 ; [+1]
      132 JUMPIF                           R14 ; [+16]
      133 GETUPVAL                         R15 9
      134 LOADK                            R16 K24 ["[AssetSearchTool] group search: FAILED: %*"]
      135 FASTCALL1                        TOSTRING R14 ; [+3]
      136 MOVE                             R19 R14
      137 GETIMPORT                        R18 K26 [tostring]
      139 CALL                             R18 1 1
      140 NAMECALL                         R16 R16 K21 ["format"]
      142 CALL                             R16 2 1
      143 CALL                             R15 1 0
      144 NEWTABLE                         R15 0 0
      146 NEWTABLE                         R16 0 0
      148 RETURN                           R15 2
      149 GETUPVAL                         R15 10
      150 MOVE                             R16 R14
      151 GETUPVAL                         R17 1
      152 GETTABLEKS                       R17 R17 K13 ["Group"]
      154 MOVE                             R18 R12
      155 CALL                             R15 3 1
      156 GETUPVAL                         R16 9
      157 LOADK                            R17 K27 ["[AssetSearchTool] group search: got %* items"]
      158 LENGTH                           R19 R15
      159 NAMECALL                         R17 R17 K21 ["format"]
      161 CALL                             R17 2 1
      162 CALL                             R16 1 0
      163 MOVE                             R16 R10
      164 MOVE                             R17 R15
      165 CALL                             R16 1 1
      166 NEWTABLE                         R17 0 0
      168 RETURN                           R16 2
      169 LOADNIL                          R11
      170 GETUPVAL                         R12 1
      171 GETTABLEKS                       R12 R12 K28 ["User"]
      173 JUMPIFNOTEQ                      R1 R12 ; [+4]
      175 GETTABLEKS                       R11 R5 K29 ["userId"]
      177 JUMP                             ; [+7]
      178 GETUPVAL                         R12 1
      179 GETTABLEKS                       R12 R12 K30 ["Universe"]
      181 JUMPIFNOTEQ                      R1 R12 ; [+3]
      183 GETTABLEKS                       R11 R5 K31 ["universeId"]
      185 JUMPIF                           R11 ; [+5]
      186 NEWTABLE                         R12 0 0
      188 NEWTABLE                         R13 0 0
      190 RETURN                           R12 2
      191 FASTCALL1                        TONUMBER R11 ; [+3]
      192 MOVE                             R13 R11
      193 GETIMPORT                        R12 K17 [tonumber]
      195 CALL                             R12 1 1
      196 JUMPIF                           R12 ; [+5]
      197 NEWTABLE                         R13 0 0
      199 NEWTABLE                         R14 0 0
      201 RETURN                           R13 2
      202 DUPTABLE                         R13 K34 [{"Type", "Id"}]
      203 SETTABLEKS                       R8 R13 K32 ["Type"]
      205 SETTABLEKS                       R12 R13 K33 ["Id"]
      207 NEWCLOSURE                       R15 P2
      208 CAPTURE                          VAL R0
      209 CAPTURE                          VAL R2
      210 CAPTURE                          VAL R9
      211 CAPTURE                          VAL R13
      212 CAPTURE                          VAL R4
      213 FASTPCALL                        pcall 1 ; [+2]
      214 GETIMPORT                        R14 K23 [pcall]
      216 CALL                             R14 1 2
      217 JUMPIFNOT                        R14 ; [+1]
      218 JUMPIF                           R15 ; [+16]
      219 GETUPVAL                         R16 9
      220 LOADK                            R17 K35 ["[AssetSearchTool] searchInventory: request FAILED: %*"]
      221 FASTCALL1                        TOSTRING R15 ; [+3]
      222 MOVE                             R20 R15
      223 GETIMPORT                        R19 K26 [tostring]
      225 CALL                             R19 1 1
      226 NAMECALL                         R17 R17 K21 ["format"]
      228 CALL                             R17 2 1
      229 CALL                             R16 1 0
      230 NEWTABLE                         R16 0 0
      232 NEWTABLE                         R17 0 0
      234 RETURN                           R16 2
      235 GETUPVAL                         R16 9
      236 LOADK                            R17 K36 ["[AssetSearchTool] searchInventory: SUCCESS"]
      237 CALL                             R16 1 0
      238 GETUPVAL                         R16 10
      239 MOVE                             R17 R15
      240 MOVE                             R18 R1
      241 CALL                             R16 2 1
      242 MOVE                             R17 R10
      243 MOVE                             R18 R16
      244 CALL                             R17 1 1
      245 NEWTABLE                         R18 0 0
      247 RETURN                           R17 2

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
      144 NEWCLOSURE                       R6 P0
      145 CAPTURE                          UPVAL U3
      146 CAPTURE                          VAL R0
      147 FASTPCALL                        pcall 1 ; [+2]
      148 GETIMPORT                        R5 K32 [pcall]
      150 CALL                             R5 1 2
      151 JUMPIF                           R5 ; [+24]
      152 GETUPVAL                         R7 0
      153 LOADK                            R8 K33 ["[AssetSearchTool] discoverContext threw: %*"]
      154 FASTCALL1                        TOSTRING R6 ; [+3]
      155 MOVE                             R11 R6
      156 GETIMPORT                        R10 K35 [tostring]
      158 CALL                             R10 1 1
      159 NAMECALL                         R8 R8 K17 ["format"]
      161 CALL                             R8 2 1
      162 CALL                             R7 1 0
      163 GETUPVAL                         R7 2
      164 DUPTABLE                         R9 K37 [{["status"] = "error", ["error"] = "Failed to discover Studio context", ["nextSteps"]}]
      165 NEWTABLE                         R10 0 1
      167 LOADK                            R11 K38 ["Retry the search. If this persists, the Studio session may need to be restarted"]
      168 SETLIST                          R10 R11 1 [1]
      170 SETTABLEKS                       R10 R9 K20 ["nextSteps"]
      172 NAMECALL                         R7 R7 K24 ["JSONEncode"]
      174 CALL                             R7 2 -1
      175 RETURN                           R7 -1
      176 GETUPVAL                         R7 0
      177 LOADK                            R8 K39 ["[AssetSearchTool] Context: userId=%* universeId=%* groupId=%*"]
      178 GETTABLEKS                       R10 R6 K40 ["userId"]
      180 GETTABLEKS                       R12 R6 K41 ["universeId"]
      182 ORK                              R11 R12 K15 ["nil"]
      183 GETTABLEKS                       R13 R6 K42 ["groupId"]
      185 ORK                              R12 R13 K15 ["nil"]
      186 NAMECALL                         R8 R8 K17 ["format"]
      188 CALL                             R8 4 1
      189 CALL                             R7 1 0
      190 LOADNIL                          R7
      191 GETTABLEKS                       R8 R1 K42 ["groupId"]
      193 JUMPIF                           R8 ; [+3]
      194 GETTABLEKS                       R8 R1 K43 ["groupName"]
      196 JUMPIFNOT                        R8 ; [+26]
      197 GETUPVAL                         R8 4
      198 MOVE                             R9 R0
      199 MOVE                             R10 R6
      200 CALL                             R8 2 1
      201 LOADNIL                          R9
      202 GETUPVAL                         R10 5
      203 MOVE                             R11 R1
      204 MOVE                             R12 R3
      205 MOVE                             R13 R8
      206 CALL                             R10 3 2
      207 MOVE                             R7 R10
      208 MOVE                             R9 R11
      209 JUMPIFNOT                        R9 ; [+6]
      210 GETUPVAL                         R10 2
      211 MOVE                             R12 R9
      212 NAMECALL                         R10 R10 K24 ["JSONEncode"]
      214 CALL                             R10 2 -1
      215 RETURN                           R10 -1
      216 GETUPVAL                         R10 0
      217 LOADK                            R11 K44 ["[AssetSearchTool] effectiveGroupId=%*"]
      218 ORK                              R13 R7 K15 ["nil"]
      219 NAMECALL                         R11 R11 K17 ["format"]
      221 CALL                             R11 2 1
      222 CALL                             R10 1 0
      223 LOADNIL                          R8
      224 GETTABLEKS                       R9 R6 K45 ["creatorType"]
      226 GETIMPORT                        R10 K49 [Enum.CreatorType.Group]
      228 JUMPIFNOTEQ                      R9 R10 ; [+25]
      230 GETTABLEKS                       R9 R6 K50 ["creatorId"]
      232 JUMPIFNOT                        R9 ; [+21]
      233 GETTABLEKS                       R10 R6 K50 ["creatorId"]
      235 FASTCALL1                        TONUMBER R10 ; [+2]
      236 GETIMPORT                        R9 K52 [tonumber]
      238 CALL                             R9 1 1
      239 JUMPIFNOT                        R9 ; [+14]
      240 GETUPVAL                         R10 4
      241 MOVE                             R11 R0
      242 MOVE                             R12 R6
      243 CALL                             R10 2 3
      244 FORGPREP                         R10
      245 GETTABLEKS                       R15 R14 K53 ["id"]
      247 JUMPIFNOTEQ                      R15 R9 ; [+4]
      249 GETTABLEKS                       R8 R14 K54 ["name"]
      251 JUMP                             ; [+2]
      252 FORGLOOP                         R10 2 ; [-8]
      254 GETTABLEKS                       R10 R6 K45 ["creatorType"]
      256 JUMPIFNOT                        R10 ; [+5]
      257 GETTABLEKS                       R9 R6 K45 ["creatorType"]
      259 GETTABLEKS                       R9 R9 K55 ["Name"]
      261 JUMP                             ; [+1]
      262 LOADNIL                          R9
      263 DUPTABLE                         R10 K58 [{"userId", "universeId", "isPublished", "creatorType", "creatorId", "creatorName"}]
      264 GETTABLEKS                       R11 R6 K40 ["userId"]
      266 SETTABLEKS                       R11 R10 K40 ["userId"]
      268 GETTABLEKS                       R11 R6 K41 ["universeId"]
      270 SETTABLEKS                       R11 R10 K41 ["universeId"]
      272 GETTABLEKS                       R12 R6 K41 ["universeId"]
      274 JUMPIFNOTEQKNIL                  R12 ; [+2]
      276 LOADB                            R11 0 +1
      277 LOADB                            R11 1
      278 SETTABLEKS                       R11 R10 K56 ["isPublished"]
      280 SETTABLEKS                       R9 R10 K45 ["creatorType"]
      282 GETTABLEKS                       R11 R6 K50 ["creatorId"]
      284 SETTABLEKS                       R11 R10 K50 ["creatorId"]
      286 SETTABLEKS                       R8 R10 K57 ["creatorName"]
      288 NEWTABLE                         R11 0 0
      290 NEWTABLE                         R12 0 0
      292 NEWTABLE                         R13 0 0
      294 NEWTABLE                         R14 0 0
      296 JUMPIFNOTEQKS                    R3 K2 ["auto"] ; [+252]
      298 NEWTABLE                         R15 0 4
      300 GETUPVAL                         R16 6
      301 GETTABLEKS                       R16 R16 K59 ["Universe"]
      303 GETUPVAL                         R17 6
      304 GETTABLEKS                       R17 R17 K48 ["Group"]
      306 GETUPVAL                         R18 6
      307 GETTABLEKS                       R18 R18 K60 ["User"]
      309 GETUPVAL                         R19 6
      310 GETTABLEKS                       R19 R19 K61 ["CreatorStore"]
      312 SETLIST                          R15 R16 4 [1]
      314 GETTABLEKS                       R16 R1 K9 ["includeSources"]
      316 JUMPIFNOT                        R16 ; [+17]
      317 NEWTABLE                         R15 0 0
      319 GETTABLEKS                       R16 R1 K9 ["includeSources"]
      321 LOADNIL                          R17
      322 LOADNIL                          R18
      323 FORGPREP                         R16
      324 FASTCALL2                        TABLE_INSERT R15 R20 ; [+5]
      326 MOVE                             R22 R15
      327 MOVE                             R23 R20
      328 GETIMPORT                        R21 K64 [table.insert]
      330 CALL                             R21 2 0
      331 FORGLOOP                         R16 2 ; [-8]
      333 JUMP                             ; [+32]
      334 GETTABLEKS                       R16 R1 K11 ["excludeSources"]
      336 JUMPIFNOT                        R16 ; [+29]
      337 NEWTABLE                         R16 0 0
      339 GETTABLEKS                       R17 R1 K11 ["excludeSources"]
      341 LOADNIL                          R18
      342 LOADNIL                          R19
      343 FORGPREP                         R17
      344 LOADB                            R22 1
      345 SETTABLE                         R22 R16 R21
      346 FORGLOOP                         R17 2 ; [-3]
      348 NEWTABLE                         R17 0 0
      350 MOVE                             R18 R15
      351 LOADNIL                          R19
      352 LOADNIL                          R20
      353 FORGPREP                         R18
      354 GETTABLE                         R23 R16 R22
      355 JUMPIF                           R23 ; [+7]
      356 FASTCALL2                        TABLE_INSERT R17 R22 ; [+5]
      358 MOVE                             R24 R17
      359 MOVE                             R25 R22
      360 GETIMPORT                        R23 K64 [table.insert]
      362 CALL                             R23 2 0
      363 FORGLOOP                         R18 2 ; [-10]
      365 MOVE                             R15 R17
      366 GETUPVAL                         R16 0
      367 LOADK                            R17 K65 ["[AssetSearchTool] Auto waterfall sourceOrder: %*"]
      368 GETIMPORT                        R19 K67 [table.concat]
      370 MOVE                             R20 R15
      371 LOADK                            R21 K68 [", "]
      372 CALL                             R19 2 1
      373 NAMECALL                         R17 R17 K17 ["format"]
      375 CALL                             R17 2 1
      376 CALL                             R16 1 0
      377 NEWTABLE                         R16 0 0
      379 GETTABLEKS                       R19 R1 K69 ["minPriceCents"]
      381 GETTABLEKS                       R20 R1 K70 ["maxPriceCents"]
      383 GETTABLEKS                       R21 R1 K71 ["priceFilter"]
      385 JUMPIFNOTEQKS                    R21 K72 ["free"] ; [+3]
      387 LOADN                            R20 0
      388 JUMP                             ; [+5]
      389 GETTABLEKS                       R21 R1 K71 ["priceFilter"]
      391 JUMPIFNOTEQKS                    R21 K73 ["paid"] ; [+2]
      393 ORK                              R19 R19 K74 [1]
      394 MOVE                             R17 R19
      395 MOVE                             R18 R20
      396 MOVE                             R19 R15
      397 LOADNIL                          R20
      398 LOADNIL                          R21
      399 FORGPREP                         R19
      400 LENGTH                           R24 R11
      401 JUMPIFNOTLE                      R4 R24 ; [+9]
      403 GETUPVAL                         R24 0
      404 LOADK                            R25 K75 ["[AssetSearchTool] Waterfall: reached maxResults=%*, stopping"]
      405 MOVE                             R27 R4
      406 NAMECALL                         R25 R25 K17 ["format"]
      408 CALL                             R25 2 1
      409 CALL                             R24 1 0
      410 JUMP                             ; [+361]
      411 GETUPVAL                         R24 6
      412 GETTABLEKS                       R24 R24 K48 ["Group"]
      414 JUMPIFNOTEQ                      R23 R24 ; [+13]
      416 GETTABLEKS                       R24 R6 K42 ["groupId"]
      418 JUMPIF                           R24 ; [+9]
      419 GETUPVAL                         R24 0
      420 LOADK                            R25 K76 ["[AssetSearchTool] Waterfall: skipping \"group\" (universe has no owning group)"]
      421 CALL                             R24 1 0
      422 GETUPVAL                         R24 6
      423 GETTABLEKS                       R24 R24 K48 ["Group"]
      425 LOADK                            R25 K77 ["this universe is not owned by a group"]
      426 SETTABLE                         R25 R14 R24
      427 JUMP                             ; [+118]
      428 GETUPVAL                         R24 6
      429 GETTABLEKS                       R24 R24 K59 ["Universe"]
      431 JUMPIFNOTEQ                      R23 R24 ; [+13]
      433 GETTABLEKS                       R24 R6 K41 ["universeId"]
      435 JUMPIF                           R24 ; [+9]
      436 GETUPVAL                         R24 0
      437 LOADK                            R25 K78 ["[AssetSearchTool] Waterfall: skipping \"universe\" (no universeId)"]
      438 CALL                             R24 1 0
      439 GETUPVAL                         R24 6
      440 GETTABLEKS                       R24 R24 K59 ["Universe"]
      442 LOADK                            R25 K79 ["game is not published"]
      443 SETTABLE                         R25 R14 R24
      444 JUMP                             ; [+101]
      445 LENGTH                           R25 R11
      446 SUB                              R24 R4 R25
      447 MOVE                             R25 R24
      448 GETTABLEKS                       R26 R1 K16 ["assetType"]
      450 GETUPVAL                         R27 7
      451 JUMPIFNOTEQ                      R26 R27 ; [+7]
      453 GETUPVAL                         R26 6
      454 GETTABLEKS                       R26 R26 K61 ["CreatorStore"]
      456 JUMPIFEQ                         R23 R26 ; [+2]
      458 MULK                             R25 R24 K4 [5]
      459 GETUPVAL                         R26 0
      460 LOADK                            R27 K80 ["[AssetSearchTool] Waterfall: querying source=\"%*\" remaining=%* requestLimit=%*"]
      461 MOVE                             R29 R23
      462 MOVE                             R30 R24
      463 MOVE                             R31 R25
      464 NAMECALL                         R27 R27 K17 ["format"]
      466 CALL                             R27 4 1
      467 CALL                             R26 1 0
      468 GETUPVAL                         R26 8
      469 MOVE                             R27 R0
      470 MOVE                             R28 R23
      471 MOVE                             R29 R2
      472 GETTABLEKS                       R30 R1 K16 ["assetType"]
      474 MOVE                             R31 R25
      475 MOVE                             R32 R6
      476 DUPTABLE                         R33 K86 [{"facets", "tags", "includeOnlyVerifiedCreators", "minPrice", "maxPrice", "minDuration", "maxDuration"}]
      477 GETTABLEKS                       R34 R1 K12 ["facets"]
      479 SETTABLEKS                       R34 R33 K12 ["facets"]
      481 GETTABLEKS                       R34 R1 K13 ["tags"]
      483 SETTABLEKS                       R34 R33 K13 ["tags"]
      485 GETTABLEKS                       R34 R1 K87 ["verifiedCreatorsOnly"]
      487 SETTABLEKS                       R34 R33 K81 ["includeOnlyVerifiedCreators"]
      489 SETTABLEKS                       R17 R33 K82 ["minPrice"]
      491 SETTABLEKS                       R18 R33 K83 ["maxPrice"]
      493 GETTABLEKS                       R34 R1 K88 ["audioMinDuration"]
      495 SETTABLEKS                       R34 R33 K84 ["minDuration"]
      497 GETTABLEKS                       R34 R1 K89 ["audioMaxDuration"]
      499 SETTABLEKS                       R34 R33 K85 ["maxDuration"]
      501 CALL                             R26 7 2
      502 GETUPVAL                         R28 0
      503 LOADK                            R29 K90 ["[AssetSearchTool] Waterfall: source=\"%*\" returned %* results"]
      504 MOVE                             R31 R23
      505 LENGTH                           R32 R26
      506 NAMECALL                         R29 R29 K17 ["format"]
      508 CALL                             R29 3 1
      509 CALL                             R28 1 0
      510 LENGTH                           R28 R27
      511 LOADN                            R29 0
      512 JUMPIFNOTLT                      R29 R28 ; [+2]
      514 MOVE                             R12 R27
      515 MOVE                             R28 R26
      516 LOADNIL                          R29
      517 LOADNIL                          R30
      518 FORGPREP                         R28
      519 LENGTH                           R33 R11
      520 JUMPIFLE                         R4 R33 ; [+18]
      522 GETTABLEKS                       R34 R32 K91 ["assetId"]
      524 GETTABLE                         R33 R16 R34
      525 JUMPIF                           R33 ; [+11]
      526 GETTABLEKS                       R33 R32 K91 ["assetId"]
      528 LOADB                            R34 1
      529 SETTABLE                         R34 R16 R33
      530 FASTCALL2                        TABLE_INSERT R11 R32 ; [+5]
      532 MOVE                             R34 R11
      533 MOVE                             R35 R32
      534 GETIMPORT                        R33 K64 [table.insert]
      536 CALL                             R33 2 0
      537 FORGLOOP                         R28 2 ; [-19]
      539 FASTCALL2                        TABLE_INSERT R13 R23 ; [+5]
      541 MOVE                             R29 R13
      542 MOVE                             R30 R23
      543 GETIMPORT                        R28 K64 [table.insert]
      545 CALL                             R28 2 0
      546 FORGLOOP                         R19 2 ; [-147]
      548 JUMP                             ; [+223]
      549 GETUPVAL                         R15 6
      550 GETTABLEKS                       R15 R15 K48 ["Group"]
      552 JUMPIFNOTEQ                      R3 R15 ; [+77]
      554 GETTABLEKS                       R16 R1 K42 ["groupId"]
      556 JUMPIFEQKNIL                     R16 ; [+6]
      558 LOADB                            R15 1
      559 GETTABLEKS                       R16 R1 K42 ["groupId"]
      561 JUMPIFNOTEQKS                    R16 K0 [""] ; [+16]
      563 LOADB                            R15 0
      564 GETTABLEKS                       R16 R1 K43 ["groupName"]
      566 JUMPIFEQKNIL                     R16 ; [+11]
      568 GETUPVAL                         R16 9
      569 GETTABLEKS                       R16 R16 K92 ["trim"]
      571 GETTABLEKS                       R17 R1 K43 ["groupName"]
      573 CALL                             R16 1 1
      574 JUMPIFNOTEQKS                    R16 K0 [""] ; [+2]
      576 LOADB                            R15 0 +1
      577 LOADB                            R15 1
      578 JUMPIF                           R15 ; [+51]
      579 GETTABLEKS                       R16 R6 K42 ["groupId"]
      581 JUMPIF                           R16 ; [+48]
      582 GETUPVAL                         R16 4
      583 MOVE                             R17 R0
      584 MOVE                             R18 R6
      585 CALL                             R16 2 1
      586 GETUPVAL                         R17 2
      587 DUPTABLE                         R19 K98 [{["status"] = "success", ["query"], ["scope"], ["resultCount"] = 0, ["results"], ["groups"], ["context"], ["nextSteps"]}]
      588 SETTABLEKS                       R2 R19 K1 ["query"]
      590 SETTABLEKS                       R3 R19 K3 ["scope"]
      592 NEWTABLE                         R20 0 0
      594 SETTABLEKS                       R20 R19 K95 ["results"]
      596 LENGTH                           R21 R16
      597 LOADN                            R22 0
      598 JUMPIFNOTLT                      R22 R21 ; [+3]
      600 MOVE                             R20 R16
      601 JUMP                             ; [+1]
      602 LOADNIL                          R20
      603 SETTABLEKS                       R20 R19 K96 ["groups"]
      605 SETTABLEKS                       R10 R19 K97 ["context"]
      607 NEWTABLE                         R20 0 2
      609 LOADK                            R21 K99 ["This universe is not owned by a group, and no groupId/groupName was supplied."]
      610 LENGTH                           R23 R16
      611 LOADN                            R24 0
      612 JUMPIFNOTLT                      R24 R23 ; [+3]
      614 LOADK                            R22 K100 ["Pass scope='group' with groupId or groupName from the listed groups to retry."]
      615 JUMP                             ; [+1]
      616 LOADK                            R22 K101 ["Use scope='auto' or scope='user' instead — you are not a member of any groups."]
      617 SETLIST                          R20 R21 2 [1]
      619 SETTABLEKS                       R20 R19 K20 ["nextSteps"]
      621 NAMECALL                         R17 R17 K24 ["JSONEncode"]
      623 CALL                             R17 2 1
      624 DUPTABLE                         R18 K102 [{["resultCount"] = 0, ["results"]}]
      625 NEWTABLE                         R19 0 0
      627 SETTABLEKS                       R19 R18 K95 ["results"]
      629 RETURN                           R17 2
      630 GETUPVAL                         R15 6
      631 GETTABLEKS                       R15 R15 K59 ["Universe"]
      633 JUMPIFNOTEQ                      R3 R15 ; [+18]
      635 GETTABLEKS                       R15 R6 K41 ["universeId"]
      637 JUMPIF                           R15 ; [+14]
      638 GETUPVAL                         R15 2
      639 DUPTABLE                         R17 K104 [{["status"] = "error", ["error"] = "scope='universe' is unavailable because this game is not yet published (no universe ID).", ["nextSteps"]}]
      640 NEWTABLE                         R18 0 2
      642 LOADK                            R19 K105 ["Use scope='auto' or scope='user' to search the user's personal inventory and Creator Store instead."]
      643 LOADK                            R20 K106 ["The game must be published to Roblox before its universe inventory becomes searchable."]
      644 SETLIST                          R18 R19 2 [1]
      646 SETTABLEKS                       R18 R17 K20 ["nextSteps"]
      648 NAMECALL                         R15 R15 K24 ["JSONEncode"]
      650 CALL                             R15 2 -1
      651 RETURN                           R15 -1
      652 GETUPVAL                         R15 0
      653 LOADK                            R16 K107 ["[AssetSearchTool] Explicit scope=\"%*\""]
      654 MOVE                             R18 R3
      655 NAMECALL                         R16 R16 K17 ["format"]
      657 CALL                             R16 2 1
      658 CALL                             R15 1 0
      659 FASTCALL2                        TABLE_INSERT R13 R3 ; [+5]
      661 MOVE                             R16 R13
      662 MOVE                             R17 R3
      663 GETIMPORT                        R15 K64 [table.insert]
      665 CALL                             R15 2 0
      666 GETUPVAL                         R15 6
      667 GETTABLEKS                       R15 R15 K61 ["CreatorStore"]
      669 JUMPIFNOTEQ                      R3 R15 ; [+68]
      671 GETTABLEKS                       R17 R1 K69 ["minPriceCents"]
      673 GETTABLEKS                       R18 R1 K70 ["maxPriceCents"]
      675 GETTABLEKS                       R19 R1 K71 ["priceFilter"]
      677 JUMPIFNOTEQKS                    R19 K72 ["free"] ; [+3]
      679 LOADN                            R18 0
      680 JUMP                             ; [+5]
      681 GETTABLEKS                       R19 R1 K71 ["priceFilter"]
      683 JUMPIFNOTEQKS                    R19 K73 ["paid"] ; [+2]
      685 ORK                              R17 R17 K74 [1]
      686 MOVE                             R15 R17
      687 MOVE                             R16 R18
      688 GETUPVAL                         R17 8
      689 MOVE                             R18 R0
      690 GETUPVAL                         R19 6
      691 GETTABLEKS                       R19 R19 K61 ["CreatorStore"]
      693 MOVE                             R20 R2
      694 GETTABLEKS                       R21 R1 K16 ["assetType"]
      696 MOVE                             R22 R4
      697 MOVE                             R23 R6
      698 DUPTABLE                         R24 K86 [{"facets", "tags", "includeOnlyVerifiedCreators", "minPrice", "maxPrice", "minDuration", "maxDuration"}]
      699 GETTABLEKS                       R25 R1 K12 ["facets"]
      701 SETTABLEKS                       R25 R24 K12 ["facets"]
      703 GETTABLEKS                       R25 R1 K13 ["tags"]
      705 SETTABLEKS                       R25 R24 K13 ["tags"]
      707 GETTABLEKS                       R25 R1 K87 ["verifiedCreatorsOnly"]
      709 SETTABLEKS                       R25 R24 K81 ["includeOnlyVerifiedCreators"]
      711 SETTABLEKS                       R15 R24 K82 ["minPrice"]
      713 SETTABLEKS                       R16 R24 K83 ["maxPrice"]
      715 GETTABLEKS                       R25 R1 K88 ["audioMinDuration"]
      717 SETTABLEKS                       R25 R24 K84 ["minDuration"]
      719 GETTABLEKS                       R25 R1 K89 ["audioMaxDuration"]
      721 SETTABLEKS                       R25 R24 K85 ["maxDuration"]
      723 CALL                             R17 7 2
      724 MOVE                             R11 R17
      725 LENGTH                           R19 R18
      726 LOADN                            R20 0
      727 JUMPIFNOTLT                      R20 R19 ; [+2]
      729 MOVE                             R12 R18
      730 GETUPVAL                         R19 0
      731 LOADK                            R20 K108 ["[AssetSearchTool] Explicit creator_store: parsed %* results"]
      732 LENGTH                           R22 R11
      733 NAMECALL                         R20 R20 K17 ["format"]
      735 CALL                             R20 2 1
      736 CALL                             R19 1 0
      737 JUMP                             ; [+34]
      738 GETTABLEKS                       R16 R1 K16 ["assetType"]
      740 GETUPVAL                         R17 7
      741 JUMPIFNOTEQ                      R16 R17 ; [+3]
      743 MULK                             R15 R4 K4 [5]
      744 JUMP                             ; [+1]
      745 MOVE                             R15 R4
      746 GETUPVAL                         R16 8
      747 MOVE                             R17 R0
      748 MOVE                             R18 R3
      749 MOVE                             R19 R2
      750 GETTABLEKS                       R20 R1 K16 ["assetType"]
      752 MOVE                             R21 R15
      753 MOVE                             R22 R6
      754 DUPTABLE                         R23 K110 [{"effectiveGroupId"}]
      755 SETTABLEKS                       R7 R23 K109 ["effectiveGroupId"]
      757 CALL                             R16 7 2
      758 MOVE                             R11 R16
      759 LENGTH                           R18 R17
      760 LOADN                            R19 0
      761 JUMPIFNOTLT                      R19 R18 ; [+2]
      763 MOVE                             R12 R17
      764 GETUPVAL                         R18 0
      765 LOADK                            R19 K111 ["[AssetSearchTool] Explicit %*: got %* results"]
      766 MOVE                             R21 R3
      767 LENGTH                           R22 R11
      768 NAMECALL                         R19 R19 K17 ["format"]
      770 CALL                             R19 3 1
      771 CALL                             R18 1 0
      772 GETUPVAL                         R15 0
      773 LOADK                            R16 K112 ["[AssetSearchTool] Total: %* results from sources: %*"]
      774 LENGTH                           R18 R11
      775 GETIMPORT                        R19 K67 [table.concat]
      777 MOVE                             R20 R13
      778 LOADK                            R21 K68 [", "]
      779 CALL                             R19 2 1
      780 NAMECALL                         R16 R16 K17 ["format"]
      782 CALL                             R16 3 1
      783 CALL                             R15 1 0
      784 NEWTABLE                         R15 0 0
      786 NEWTABLE                         R16 0 0
      788 MOVE                             R17 R11
      789 LOADNIL                          R18
      790 LOADNIL                          R19
      791 FORGPREP                         R17
      792 GETTABLEKS                       R23 R21 K91 ["assetId"]
      794 GETTABLE                         R22 R15 R23
      795 JUMPIF                           R22 ; [+14]
      796 GETTABLEKS                       R22 R21 K91 ["assetId"]
      798 LOADB                            R23 1
      799 SETTABLE                         R23 R15 R22
      800 FASTCALL2                        TABLE_INSERT R16 R21 ; [+5]
      802 MOVE                             R23 R16
      803 MOVE                             R24 R21
      804 GETIMPORT                        R22 K64 [table.insert]
      806 CALL                             R22 2 0
      807 LENGTH                           R22 R16
      808 JUMPIFLE                         R4 R22 ; [+3]
      810 FORGLOOP                         R17 2 ; [-19]
      812 MOVE                             R11 R16
      813 GETTABLEKS                       R17 R0 K113 ["tools"]
      815 GETTABLEKS                       R17 R17 K114 ["assetSearch"]
      817 NEWTABLE                         R18 0 0
      819 NEWTABLE                         R19 0 0
      821 MOVE                             R20 R11
      822 LOADNIL                          R21
      823 LOADNIL                          R22
      824 FORGPREP                         R20
      825 DUPTABLE                         R27 K120 [{"assetId", "name", "assetType", "source", "location", "creatorName", "priceCents", "priceLabel", "isFree"}]
      826 GETTABLEKS                       R28 R24 K91 ["assetId"]
      828 SETTABLEKS                       R28 R27 K91 ["assetId"]
      830 GETTABLEKS                       R28 R24 K54 ["name"]
      832 SETTABLEKS                       R28 R27 K54 ["name"]
      834 GETTABLEKS                       R28 R24 K16 ["assetType"]
      836 SETTABLEKS                       R28 R27 K16 ["assetType"]
      838 GETTABLEKS                       R28 R24 K115 ["source"]
      840 SETTABLEKS                       R28 R27 K115 ["source"]
      842 GETTABLEKS                       R28 R24 K116 ["location"]
      844 SETTABLEKS                       R28 R27 K116 ["location"]
      846 GETTABLEKS                       R28 R24 K57 ["creatorName"]
      848 SETTABLEKS                       R28 R27 K57 ["creatorName"]
      850 GETTABLEKS                       R28 R24 K117 ["priceCents"]
      852 SETTABLEKS                       R28 R27 K117 ["priceCents"]
      854 GETTABLEKS                       R28 R24 K118 ["priceLabel"]
      856 SETTABLEKS                       R28 R27 K118 ["priceLabel"]
      858 GETTABLEKS                       R28 R24 K119 ["isFree"]
      860 SETTABLEKS                       R28 R27 K119 ["isFree"]
      862 FASTCALL2                        TABLE_INSERT R18 R27 ; [+4]
      864 MOVE                             R26 R18
      865 GETIMPORT                        R25 K64 [table.insert]
      867 CALL                             R25 2 0
      868 DUPTABLE                         R27 K124 [{"assetId", "name", "description", "assetType", "source", "location", "creatorName", "creatorId", "priceCents", "priceLabel", "isFree", "thumbnailUrl", "creatorStoreUrl"}]
      869 GETTABLEKS                       R28 R24 K91 ["assetId"]
      871 SETTABLEKS                       R28 R27 K91 ["assetId"]
      873 GETTABLEKS                       R28 R24 K54 ["name"]
      875 SETTABLEKS                       R28 R27 K54 ["name"]
      877 GETTABLEKS                       R28 R24 K121 ["description"]
      879 SETTABLEKS                       R28 R27 K121 ["description"]
      881 GETTABLEKS                       R28 R24 K16 ["assetType"]
      883 SETTABLEKS                       R28 R27 K16 ["assetType"]
      885 GETTABLEKS                       R28 R24 K115 ["source"]
      887 SETTABLEKS                       R28 R27 K115 ["source"]
      889 GETTABLEKS                       R28 R24 K116 ["location"]
      891 SETTABLEKS                       R28 R27 K116 ["location"]
      893 GETTABLEKS                       R28 R24 K57 ["creatorName"]
      895 SETTABLEKS                       R28 R27 K57 ["creatorName"]
      897 GETTABLEKS                       R28 R24 K50 ["creatorId"]
      899 SETTABLEKS                       R28 R27 K50 ["creatorId"]
      901 GETTABLEKS                       R28 R24 K117 ["priceCents"]
      903 SETTABLEKS                       R28 R27 K117 ["priceCents"]
      905 GETTABLEKS                       R28 R24 K118 ["priceLabel"]
      907 SETTABLEKS                       R28 R27 K118 ["priceLabel"]
      909 GETTABLEKS                       R28 R24 K119 ["isFree"]
      911 SETTABLEKS                       R28 R27 K119 ["isFree"]
      913 LOADK                            R28 K125 ["%*v1/assets?assetIds=%*&returnPolicy=PlaceHolder&size=150x150&format=Png"]
      914 GETTABLEKS                       R30 R17 K126 ["getThumbnailsUrl"]
      916 CALL                             R30 0 1
      917 GETTABLEKS                       R31 R24 K91 ["assetId"]
      919 NAMECALL                         R28 R28 K17 ["format"]
      921 CALL                             R28 3 1
      922 SETTABLEKS                       R28 R27 K122 ["thumbnailUrl"]
      924 GETTABLEKS                       R29 R24 K115 ["source"]
      926 GETUPVAL                         R30 6
      927 GETTABLEKS                       R30 R30 K61 ["CreatorStore"]
      929 JUMPIFNOTEQ                      R29 R30 ; [+11]
      931 LOADK                            R28 K127 ["%*store/asset/%*"]
      932 GETTABLEKS                       R30 R17 K128 ["getCreatorHubUrl"]
      934 CALL                             R30 0 1
      935 GETTABLEKS                       R31 R24 K91 ["assetId"]
      937 NAMECALL                         R28 R28 K17 ["format"]
      939 CALL                             R28 3 1
      940 JUMP                             ; [+1]
      941 LOADNIL                          R28
      942 SETTABLEKS                       R28 R27 K123 ["creatorStoreUrl"]
      944 FASTCALL2                        TABLE_INSERT R19 R27 ; [+4]
      946 MOVE                             R26 R19
      947 GETIMPORT                        R25 K64 [table.insert]
      949 CALL                             R25 2 0
      950 FORGLOOP                         R20 2 ; [-126]
      952 GETUPVAL                         R20 0
      953 LOADK                            R21 K129 ["[AssetSearchTool] === SEARCH COMPLETE === resultCount=%* sources=%*"]
      954 LENGTH                           R23 R11
      955 GETIMPORT                        R24 K67 [table.concat]
      957 MOVE                             R25 R13
      958 LOADK                            R26 K130 [","]
      959 CALL                             R24 2 1
      960 NAMECALL                         R21 R21 K17 ["format"]
      962 CALL                             R21 3 1
      963 CALL                             R20 1 0
      964 MOVE                             R20 R19
      965 LOADNIL                          R21
      966 LOADNIL                          R22
      967 FORGPREP                         R20
      968 GETUPVAL                         R25 0
      969 LOADK                            R26 K131 ["[AssetSearchTool]   result[%*]: id=%* name=\"%*\" type=%* source=%* location=%*"]
      970 MOVE                             R28 R23
      971 GETTABLEKS                       R29 R24 K91 ["assetId"]
      973 GETTABLEKS                       R30 R24 K54 ["name"]
      975 GETTABLEKS                       R31 R24 K16 ["assetType"]
      977 GETTABLEKS                       R32 R24 K115 ["source"]
      979 GETTABLEKS                       R34 R24 K116 ["location"]
      981 ORK                              R33 R34 K15 ["nil"]
      982 NAMECALL                         R26 R26 K17 ["format"]
      984 CALL                             R26 7 1
      985 CALL                             R25 1 0
      986 FORGLOOP                         R20 2 ; [-19]
      988 LOADNIL                          R20
      989 LOADB                            R21 1
      990 GETUPVAL                         R22 6
      991 GETTABLEKS                       R22 R22 K48 ["Group"]
      993 JUMPIFEQ                         R3 R22 ; [+5]
      995 JUMPIFEQKS                       R3 K2 ["auto"] ; [+2]
      997 LOADB                            R21 0 +1
      998 LOADB                            R21 1
      999 JUMPIFNOT                        R21 ; [+9]
     1000 GETUPVAL                         R22 4
     1001 MOVE                             R23 R0
     1002 MOVE                             R24 R6
     1003 CALL                             R22 2 1
     1004 LENGTH                           R23 R22
     1005 LOADN                            R24 0
     1006 JUMPIFNOTLT                      R24 R23 ; [+2]
     1008 MOVE                             R20 R22
     1009 GETUPVAL                         R22 2
     1010 DUPTABLE                         R24 K135 [{["status"] = "success", ["query"], ["scope"], ["searchSources"], ["skippedSources"], ["resultCount"], ["availableFacets"], ["results"], ["groups"], ["context"], ["nextSteps"]}]
     1011 SETTABLEKS                       R2 R24 K1 ["query"]
     1013 SETTABLEKS                       R3 R24 K3 ["scope"]
     1015 SETTABLEKS                       R13 R24 K132 ["searchSources"]
     1017 GETIMPORT                        R26 K137 [next]
     1019 MOVE                             R27 R14
     1020 CALL                             R26 1 1
     1021 JUMPIFNOT                        R26 ; [+2]
     1022 MOVE                             R25 R14
     1023 JUMP                             ; [+1]
     1024 LOADNIL                          R25
     1025 SETTABLEKS                       R25 R24 K133 ["skippedSources"]
     1027 LENGTH                           R25 R11
     1028 SETTABLEKS                       R25 R24 K94 ["resultCount"]
     1030 LENGTH                           R26 R12
     1031 LOADN                            R27 0
     1032 JUMPIFNOTLT                      R27 R26 ; [+3]
     1034 MOVE                             R25 R12
     1035 JUMP                             ; [+1]
     1036 LOADNIL                          R25
     1037 SETTABLEKS                       R25 R24 K134 ["availableFacets"]
     1039 SETTABLEKS                       R19 R24 K95 ["results"]
     1041 SETTABLEKS                       R20 R24 K96 ["groups"]
     1043 SETTABLEKS                       R10 R24 K97 ["context"]
     1045 NEWTABLE                         R25 0 4
     1047 LOADK                            R26 K138 ["Review the results and choose the best asset for the user's request. Prefer inventory results (source='inventory') as these are already owned and always insertable."]
     1048 LOADK                            R27 K139 ["For free/owned assets: call insert_asset with assetId, assetType, and assetName from the chosen result to insert it."]
     1049 LOADK                            R28 K140 ["For paid assets (isFree=false): show the user the creatorStoreUrl link and priceLabel so they can purchase it. Do not attempt to insert paid assets — they will fail."]
     1050 LOADK                            R29 K141 ["Some Creator Store assets may be restricted or moderated and fail to insert. If insert_asset fails, try the next result from the list rather than retrying the same asset."]
     1051 SETLIST                          R25 R26 4 [1]
     1053 SETTABLEKS                       R25 R24 K20 ["nextSteps"]
     1055 NAMECALL                         R22 R22 K24 ["JSONEncode"]
     1057 CALL                             R22 2 1
     1058 DUPTABLE                         R23 K142 [{"resultCount", "results"}]
     1059 LENGTH                           R24 R11
     1060 SETTABLEKS                       R24 R23 K94 ["resultCount"]
     1062 SETTABLEKS                       R18 R23 K95 ["results"]
     1064 RETURN                           R22 2

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
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+2]
        2 LOADK                            R1 K0 [""]
        3 RETURN                           R1 1
        4 MOVE                             R1 R0
        5 RETURN                           R1 1

PROTO_18:
        0 LOADK                            R0 K0 ["Search for models, audio, packages, and other assets"]
        1 RETURN                           R0 1

PROTO_19:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["AssetSearch"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K5 [{"query"}]
        7 GETUPVAL                         R3 1
        8 SETTABLEKS                       R3 R2 K4 ["query"]
       10 SETTABLEKS                       R2 R1 K1 ["arguments"]
       12 RETURN                           R1 1

PROTO_20:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 NEWTABLE                         R2 0 1
        5 MOVE                             R3 R1
        6 SETLIST                          R2 R3 1 [1]
        8 RETURN                           R2 1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["FFlagAssistantToolSkillDescriptions"]
        9 NEWCLOSURE                       R4 P1
       10 CAPTURE                          VAL R3
       11 JUMPIFNOT                        R3 ; [+2]
       12 LOADK                            R5 K2 ["Read the rbx-search-asset skill to learn the details of this tool before calling it."]
       13 JUMP                             ; [+5]
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R5 R5 K3 ["replaceTokens"]
       17 LOADK                            R6 K4 ["Searches for assets across Creator Store (public marketplace) and Creator Inventory (user/group/universe).\nUse this tool to find assets by keyword before inserting them with {ToolNames.AssetInsert}.\nReturns a list of matching assets with metadata (name, type, source, price).\n\nScope controls where to search:\n- 'auto' (default): waterfalls through universe inventory → universe's owning group → user inventory → Creator Store. Best for general \"find me an X\" requests.\n- 'creator_store': searches only the marketplace. Use this when the user wants marketplace assets, paid assets, or when using price/creator filters.\n- 'user': searches the user's personal inventory only.\n- 'group': searches the universe's owning group by default. Pass groupId or groupName to search a different group instead. If the universe has no owning group and you don't pass a groupId, the response lists the user's groups so you can retry.\n- 'universe': searches the current universe's inventory only.\n\nTargeting a specific group: when the user names a particular group (\"in my group X\" / \"in group 12345\"), set scope='group' AND pass groupId or groupName to constrain to that one group. groupId/groupName are only valid with scope='group'; combining with any other scope (including 'auto') is rejected.\n\nResult attribution: each inventory result includes `creatorId` (string, the group or user ID that owns the asset) and `creatorName` (the group/user name when known). `creatorId` semantics depend on `source`: for source='inventory' coming from a group, it's the group ID.\n\nEvery scope='group' or scope='auto' response includes a `groups` field listing { id, name } for each of the user's groups (when the user has any). Use these to make a follow-up scope='group' + groupId call when the default (the universe's owning group, or the first relevant group) doesn't match what the user wants.\n\nEvery response also includes a `context` field describing the current Studio session: { userId, universeId, isPublished, creatorType ('User'/'Group' when published), creatorId, creatorName }. Use this to ground answers about which place is being edited and to disambiguate \"in my group\" requests.\n\nCross-owner inserts caution: when an inventory result's creatorId differs from context.creatorId (the place's owner), inserting it brings another owner's asset into this place. The user may have access to view the asset but might not intend or have the authority to share it across owners. Before calling insert_asset on a cross-owner result, name the source (the asset's creatorName) and the destination (context.creatorName or universe), and ask the user for explicit consent.\n\nWhen to use price filters: If the user asks for paid/premium assets or specifies a price range, set scope='creator_store' and use priceFilter, minPriceCents, and/or maxPriceCents. These filters only apply to Creator Store searches.\nWhen to use asset type: If the user asks for a specific asset type (audio, decals, meshes, packages, etc.), set assetType to filter results. The inventory API requires exactly one assetType per call and defaults to 'Model' when omitted, so cross-type discovery requires explicit assetType=Image / Audio / etc. Packages are stored as Models with a Package subtype — set assetType='Package' to find them (do not search for the word \"package\" as a query).\nInventory results (source='inventory') are always insertable. Creator Store results may occasionally be restricted — if insert fails, try the next result.\nEach result includes a thumbnailUrl (Roblox Thumbnails API). Fetch it to get JSON with data[0].imageUrl pointing to a CDN image of the asset — useful for visually comparing assets before inserting.\n"]
       18 CALL                             R5 1 1
       19 GETUPVAL                         R6 4
       20 GETTABLEKS                       R6 R6 K5 ["define"]
       22 CALL                             R6 0 1
       23 GETUPVAL                         R8 3
       24 GETTABLEKS                       R8 R8 K6 ["AssetSearch"]
       26 NAMECALL                         R6 R6 K7 ["setName"]
       28 CALL                             R6 2 1
       29 MOVE                             R8 R5
       30 NAMECALL                         R6 R6 K8 ["setDescription"]
       32 CALL                             R6 2 1
       33 LOADK                            R8 K9 ["query"]
       34 DUPTABLE                         R9 K13 [{["type"] = "string", ["description"]}]
       35 JUMPIFNOT                        R3 ; [+2]
       36 LOADK                            R10 K14 [""]
       37 JUMP                             ; [+1]
       38 LOADK                            R10 K15 ["Search term. Can be empty when filtering by assetType alone (e.g. to list all packages). Supports multi-term search with '+' (e.g. 'red+car') and exact phrase with quotes (e.g. '\"red+car\"')."]
       39 SETTABLEKS                       R10 R9 K12 ["description"]
       41 NAMECALL                         R6 R6 K16 ["addOptionalArgument"]
       43 CALL                             R6 3 1
       44 LOADK                            R8 K17 ["scope"]
       45 DUPTABLE                         R9 K19 [{["type"] = "string", ["enum"], ["description"]}]
       46 NEWTABLE                         R10 0 5
       48 LOADK                            R11 K20 ["auto"]
       49 LOADK                            R12 K21 ["creator_store"]
       50 LOADK                            R13 K22 ["user"]
       51 LOADK                            R14 K23 ["group"]
       52 LOADK                            R15 K24 ["universe"]
       53 SETLIST                          R10 R11 5 [1]
       55 SETTABLEKS                       R10 R9 K18 ["enum"]
       57 JUMPIFNOT                        R3 ; [+2]
       58 LOADK                            R10 K14 [""]
       59 JUMP                             ; [+1]
       60 LOADK                            R10 K25 ["Where to search. 'auto' (default) waterfalls through all available sources. Use explicit scope to target a single source."]
       61 SETTABLEKS                       R10 R9 K12 ["description"]
       63 NAMECALL                         R6 R6 K16 ["addOptionalArgument"]
       65 CALL                             R6 3 1
       66 LOADK                            R8 K26 ["includeSources"]
       67 DUPTABLE                         R9 K29 [{["type"] = "array", ["items"], ["description"]}]
       68 DUPTABLE                         R10 K30 [{["type"] = "string", ["enum"]}]
       69 NEWTABLE                         R11 0 4
       71 LOADK                            R12 K22 ["user"]
       72 LOADK                            R13 K23 ["group"]
       73 LOADK                            R14 K24 ["universe"]
       74 LOADK                            R15 K21 ["creator_store"]
       75 SETLIST                          R11 R12 4 [1]
       77 SETTABLEKS                       R11 R10 K18 ["enum"]
       79 SETTABLEKS                       R10 R9 K28 ["items"]
       81 JUMPIFNOT                        R3 ; [+2]
       82 LOADK                            R10 K14 [""]
       83 JUMP                             ; [+1]
       84 LOADK                            R10 K31 ["With scope='auto': only search these sources (e.g. ['user', 'creator_store'])."]
       85 SETTABLEKS                       R10 R9 K12 ["description"]
       87 NAMECALL                         R6 R6 K16 ["addOptionalArgument"]
       89 CALL                             R6 3 1
       90 LOADK                            R8 K32 ["excludeSources"]
       91 DUPTABLE                         R9 K29 [{["type"] = "array", ["items"], ["description"]}]
       92 DUPTABLE                         R10 K30 [{["type"] = "string", ["enum"]}]
       93 NEWTABLE                         R11 0 4
       95 LOADK                            R12 K22 ["user"]
       96 LOADK                            R13 K23 ["group"]
       97 LOADK                            R14 K24 ["universe"]
       98 LOADK                            R15 K21 ["creator_store"]
       99 SETLIST                          R11 R12 4 [1]
      101 SETTABLEKS                       R11 R10 K18 ["enum"]
      103 SETTABLEKS                       R10 R9 K28 ["items"]
      105 JUMPIFNOT                        R3 ; [+2]
      106 LOADK                            R10 K14 [""]
      107 JUMP                             ; [+1]
      108 LOADK                            R10 K33 ["With scope='auto': skip these sources from the waterfall."]
      109 SETTABLEKS                       R10 R9 K12 ["description"]
      111 NAMECALL                         R6 R6 K16 ["addOptionalArgument"]
      113 CALL                             R6 3 1
      114 LOADK                            R8 K34 ["groupId"]
      115 DUPTABLE                         R9 K13 [{["type"] = "string", ["description"]}]
      116 JUMPIFNOT                        R3 ; [+2]
      117 LOADK                            R10 K14 [""]
      118 JUMP                             ; [+1]
      119 LOADK                            R10 K35 ["Numeric group ID to constrain group inventory searches to a single group. Only valid with scope='group'. Mutually exclusive with groupName."]
      120 SETTABLEKS                       R10 R9 K12 ["description"]
      122 NAMECALL                         R6 R6 K16 ["addOptionalArgument"]
      124 CALL                             R6 3 1
      125 LOADK                            R8 K36 ["groupName"]
      126 DUPTABLE                         R9 K13 [{["type"] = "string", ["description"]}]
      127 JUMPIFNOT                        R3 ; [+2]
      128 LOADK                            R10 K14 [""]
      129 JUMP                             ; [+1]
      130 LOADK                            R10 K37 ["Group name to constrain group inventory searches to a single group. Matched case-insensitively against the user's groups. Only valid with scope='group'. If the name doesn't match any of the user's groups, the response includes a `groups` field listing valid options. Mutually exclusive with groupId."]
      131 SETTABLEKS                       R10 R9 K12 ["description"]
      133 NAMECALL                         R6 R6 K16 ["addOptionalArgument"]
      135 CALL                             R6 3 1
      136 LOADK                            R8 K38 ["assetType"]
      137 DUPTABLE                         R9 K19 [{["type"] = "string", ["enum"], ["description"]}]
      138 NEWTABLE                         R10 0 8
      140 LOADK                            R11 K39 ["Model"]
      141 LOADK                            R12 K40 ["Audio"]
      142 LOADK                            R13 K41 ["Mesh"]
      143 LOADK                            R14 K42 ["MeshPart"]
      144 LOADK                            R15 K43 ["Image"]
      145 LOADK                            R16 K44 ["Decal"]
      146 LOADK                            R17 K45 ["Video"]
      147 LOADK                            R18 K46 ["Package"]
      148 SETLIST                          R10 R11 8 [1]
      150 SETTABLEKS                       R10 R9 K18 ["enum"]
      152 JUMPIFNOT                        R3 ; [+2]
      153 LOADK                            R10 K14 [""]
      154 JUMP                             ; [+1]
      155 LOADK                            R10 K47 ["Filter by asset type. Use 'Image' for user-uploaded images (most decals/textures uploaded today are stored as Image, not Decal). Use 'Package' when the user asks about packages — packages are Models with a Package subtype, so a keyword search for 'package' won't find them."]
      156 SETTABLEKS                       R10 R9 K12 ["description"]
      158 NAMECALL                         R6 R6 K16 ["addOptionalArgument"]
      160 CALL                             R6 3 1
      161 LOADK                            R8 K48 ["maxResults"]
      162 DUPTABLE                         R9 K50 [{["type"] = "number", ["description"]}]
      163 JUMPIFNOT                        R3 ; [+2]
      164 LOADK                            R10 K14 [""]
      165 JUMP                             ; [+1]
      166 LOADK                            R10 K51 ["Number of results to return (1-20, default 5)."]
      167 SETTABLEKS                       R10 R9 K12 ["description"]
      169 NAMECALL                         R6 R6 K16 ["addOptionalArgument"]
      171 CALL                             R6 3 1
      172 LOADK                            R8 K52 ["priceFilter"]
      173 DUPTABLE                         R9 K19 [{["type"] = "string", ["enum"], ["description"]}]
      174 NEWTABLE                         R10 0 3
      176 LOADK                            R11 K53 ["free"]
      177 LOADK                            R12 K54 ["paid"]
      178 LOADK                            R13 K55 ["all"]
      179 SETLIST                          R10 R11 3 [1]
      181 SETTABLEKS                       R10 R9 K18 ["enum"]
      183 JUMPIFNOT                        R3 ; [+2]
      184 LOADK                            R10 K14 [""]
      185 JUMP                             ; [+1]
      186 LOADK                            R10 K56 ["Price filter. Requires scope='creator_store'. 'free' returns only free assets, 'paid' returns only paid assets, 'all' (default) returns both."]
      187 SETTABLEKS                       R10 R9 K12 ["description"]
      189 NAMECALL                         R6 R6 K16 ["addOptionalArgument"]
      191 CALL                             R6 3 1
      192 LOADK                            R8 K57 ["minPriceCents"]
      193 DUPTABLE                         R9 K50 [{["type"] = "number", ["description"]}]
      194 JUMPIFNOT                        R3 ; [+2]
      195 LOADK                            R10 K14 [""]
      196 JUMP                             ; [+1]
      197 LOADK                            R10 K58 ["Minimum price in cents. Requires scope='creator_store'. Use with maxPriceCents for a price range (e.g. minPriceCents=100, maxPriceCents=5000)."]
      198 SETTABLEKS                       R10 R9 K12 ["description"]
      200 NAMECALL                         R6 R6 K16 ["addOptionalArgument"]
      202 CALL                             R6 3 1
      203 LOADK                            R8 K59 ["maxPriceCents"]
      204 DUPTABLE                         R9 K50 [{["type"] = "number", ["description"]}]
      205 JUMPIFNOT                        R3 ; [+2]
      206 LOADK                            R10 K14 [""]
      207 JUMP                             ; [+1]
      208 LOADK                            R10 K60 ["Maximum price in cents. Requires scope='creator_store'. Use with minPriceCents for a price range."]
      209 SETTABLEKS                       R10 R9 K12 ["description"]
      211 NAMECALL                         R6 R6 K16 ["addOptionalArgument"]
      213 CALL                             R6 3 1
      214 LOADK                            R8 K61 ["verifiedCreatorsOnly"]
      215 DUPTABLE                         R9 K63 [{["type"] = "boolean", ["description"]}]
      216 JUMPIFNOT                        R3 ; [+2]
      217 LOADK                            R10 K14 [""]
      218 JUMP                             ; [+1]
      219 LOADK                            R10 K64 ["Only return results from verified creators (Creator Store only)."]
      220 SETTABLEKS                       R10 R9 K12 ["description"]
      222 NAMECALL                         R6 R6 K16 ["addOptionalArgument"]
      224 CALL                             R6 3 1
      225 LOADK                            R8 K65 ["audioMinDuration"]
      226 DUPTABLE                         R9 K50 [{["type"] = "number", ["description"]}]
      227 JUMPIFNOT                        R3 ; [+2]
      228 LOADK                            R10 K14 [""]
      229 JUMP                             ; [+1]
      230 LOADK                            R10 K66 ["Minimum audio duration in seconds (only when assetType='Audio')."]
      231 SETTABLEKS                       R10 R9 K12 ["description"]
      233 NAMECALL                         R6 R6 K16 ["addOptionalArgument"]
      235 CALL                             R6 3 1
      236 LOADK                            R8 K67 ["audioMaxDuration"]
      237 DUPTABLE                         R9 K50 [{["type"] = "number", ["description"]}]
      238 JUMPIFNOT                        R3 ; [+2]
      239 LOADK                            R10 K14 [""]
      240 JUMP                             ; [+1]
      241 LOADK                            R10 K68 ["Maximum audio duration in seconds (only when assetType='Audio')."]
      242 SETTABLEKS                       R10 R9 K12 ["description"]
      244 NAMECALL                         R6 R6 K16 ["addOptionalArgument"]
      246 CALL                             R6 3 1
      247 LOADK                            R8 K69 ["facets"]
      248 DUPTABLE                         R9 K29 [{["type"] = "array", ["items"], ["description"]}]
      249 DUPTABLE                         R10 K70 [{["type"] = "string"}]
      250 SETTABLEKS                       R10 R9 K28 ["items"]
      252 JUMPIFNOT                        R3 ; [+2]
      253 LOADK                            R10 K14 [""]
      254 JUMP                             ; [+1]
      255 LOADK                            R10 K71 ["Additional keywords to refine the search (Creator Store only, ignored for inventory scopes). Facets narrow results by related concepts — e.g. for a 'lion' search: 'mane', 'safari', 'realistic', 'animated'. Available facets depend on the query."]
      256 SETTABLEKS                       R10 R9 K12 ["description"]
      258 NAMECALL                         R6 R6 K16 ["addOptionalArgument"]
      260 CALL                             R6 3 1
      261 LOADK                            R8 K72 ["tags"]
      262 DUPTABLE                         R9 K29 [{["type"] = "array", ["items"], ["description"]}]
      263 DUPTABLE                         R10 K70 [{["type"] = "string"}]
      264 SETTABLEKS                       R10 R9 K28 ["items"]
      266 JUMPIFNOT                        R3 ; [+2]
      267 LOADK                            R10 K14 [""]
      268 JUMP                             ; [+1]
      269 LOADK                            R10 K73 ["Tags to filter by (Creator Store only, ignored for inventory scopes). Tags are category labels like 'Vehicle', 'Airplane', 'Fantasy'."]
      270 SETTABLEKS                       R10 R9 K12 ["description"]
      272 NAMECALL                         R6 R6 K16 ["addOptionalArgument"]
      274 CALL                             R6 3 1
      275 MOVE                             R8 R2
      276 NAMECALL                         R6 R6 K74 ["setHandler"]
      278 CALL                             R6 2 1
      279 LOADK                            R8 K75 ["Search Asset"]
      280 NAMECALL                         R6 R6 K76 ["setTitle"]
      282 CALL                             R6 2 1
      283 DUPTABLE                         R8 K84 [{["title"] = "Search Asset", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = True}]
      284 NAMECALL                         R6 R6 K85 ["setAnnotations"]
      286 CALL                             R6 2 1
      287 NAMECALL                         R6 R6 K86 ["build"]
      289 CALL                             R6 1 1
      290 DUPTABLE                         R7 K91 [{["command"] = "search_asset", ["getDescription"], ["runToolChain"]}]
      291 DUPCLOSURE                       R8 K92 [PROTO_18]
      292 SETTABLEKS                       R8 R7 K89 ["getDescription"]
      294 DUPCLOSURE                       R8 K93 [PROTO_20]
      295 CAPTURE                          UPVAL U3
      296 SETTABLEKS                       R8 R7 K90 ["runToolChain"]
      298 DUPTABLE                         R8 K96 [{"definition", "slashCommands"}]
      299 SETTABLEKS                       R6 R8 K94 ["definition"]
      301 NEWTABLE                         R9 0 1
      303 MOVE                             R10 R7
      304 SETLIST                          R9 R10 1 [1]
      306 SETTABLEKS                       R9 R8 K95 ["slashCommands"]
      308 RETURN                           R8 1

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
      158 CAPTURE                          VAL R35
      159 CAPTURE                          VAL R11
      160 CAPTURE                          VAL R6
      161 CAPTURE                          VAL R12
      162 CAPTURE                          VAL R10
      163 CLOSEUPVALS                      R23
      164 RETURN                           R36 1
