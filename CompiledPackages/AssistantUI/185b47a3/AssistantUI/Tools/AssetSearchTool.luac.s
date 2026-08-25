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
        6 JUMPIF                           R1 ; [+15]
        7 GETUPVAL                         R3 1
        8 LOADK                            R5 K2 ["[AssetSearchTool] getUserGroups: fetch failed for surface=%*: %*"]
        9 MOVE                             R7 R0
       10 FASTCALL1                        TOSTRING R2 ; [+3]
       11 MOVE                             R9 R2
       12 GETIMPORT                        R8 K4 [tostring]
       14 CALL                             R8 1 1
       15 NAMECALL                         R5 R5 K5 ["format"]
       17 CALL                             R5 3 1
       18 MOVE                             R4 R5
       19 CALL                             R3 1 0
       20 LOADNIL                          R3
       21 RETURN                           R3 1
       22 JUMPIFNOT                        R2 ; [+8]
       23 GETTABLEKS                       R4 R2 K6 ["groups"]
       25 FASTCALL1                        TYPE R4 ; [+2]
       26 GETIMPORT                        R3 K8 [type]
       28 CALL                             R3 1 1
       29 JUMPIFEQKS                       R3 K9 ["table"] ; [+11]
       31 GETUPVAL                         R3 1
       32 LOADK                            R5 K10 ["[AssetSearchTool] getUserGroups: unexpected shape for surface=%*"]
       33 MOVE                             R7 R0
       34 NAMECALL                         R5 R5 K5 ["format"]
       36 CALL                             R5 2 1
       37 MOVE                             R4 R5
       38 CALL                             R3 1 0
       39 LOADNIL                          R3
       40 RETURN                           R3 1
       41 NEWTABLE                         R3 0 0
       43 GETTABLEKS                       R4 R2 K6 ["groups"]
       45 LOADNIL                          R5
       46 LOADNIL                          R6
       47 FORGPREP                         R4
       48 GETTABLEKS                       R10 R8 K11 ["id"]
       50 FASTCALL1                        TYPE R10 ; [+2]
       51 GETIMPORT                        R9 K8 [type]
       53 CALL                             R9 1 1
       54 JUMPIFNOTEQKS                    R9 K12 ["number"] ; [+24]
       56 GETTABLEKS                       R10 R8 K13 ["name"]
       58 FASTCALL1                        TYPE R10 ; [+2]
       59 GETIMPORT                        R9 K8 [type]
       61 CALL                             R9 1 1
       62 JUMPIFNOTEQKS                    R9 K14 ["string"] ; [+16]
       64 DUPTABLE                         R11 K15 [{"id", "name"}]
       65 GETTABLEKS                       R12 R8 K11 ["id"]
       67 SETTABLEKS                       R12 R11 K11 ["id"]
       69 GETTABLEKS                       R12 R8 K13 ["name"]
       71 SETTABLEKS                       R12 R11 K13 ["name"]
       73 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       75 MOVE                             R10 R3
       76 GETIMPORT                        R9 K17 [table.insert]
       78 CALL                             R9 2 0
       79 FORGLOOP                         R4 2 ; [-32]
       81 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+16]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R3 R1 K0 ["userId"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+12]
        7 GETUPVAL                         R2 2
        8 LOADK                            R4 K1 ["[AssetSearchTool] getUserGroups: returning cached groups (userId=%*)"]
        9 GETTABLEKS                       R6 R1 K0 ["userId"]
       11 NAMECALL                         R4 R4 K2 ["format"]
       13 CALL                             R4 2 1
       14 MOVE                             R3 R4
       15 CALL                             R2 1 0
       16 GETUPVAL                         R2 0
       17 RETURN                           R2 1
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U2
       21 LOADNIL                          R3
       22 GETUPVAL                         R4 3
       23 LOADNIL                          R5
       24 LOADNIL                          R6
       25 FORGPREP                         R4
       26 MOVE                             R9 R2
       27 MOVE                             R10 R8
       28 CALL                             R9 1 1
       29 MOVE                             R3 R9
       30 JUMPIFNOTEQKNIL                  R3 ; [+3]
       32 FORGLOOP                         R4 2 ; [-7]
       34 JUMPIFNOTEQKNIL                  R3 ; [+7]
       36 GETUPVAL                         R4 2
       37 LOADK                            R5 K3 ["[AssetSearchTool] getUserGroups: both surfaces failed; returning empty without caching"]
       38 CALL                             R4 1 0
       39 NEWTABLE                         R4 0 0
       41 RETURN                           R4 1
       42 GETUPVAL                         R4 2
       43 LOADK                            R6 K4 ["[AssetSearchTool] getUserGroups: resolved %* groups for userId=%*"]
       44 LENGTH                           R8 R3
       45 GETTABLEKS                       R9 R1 K0 ["userId"]
       47 NAMECALL                         R6 R6 K2 ["format"]
       49 CALL                             R6 3 1
       50 MOVE                             R5 R6
       51 CALL                             R4 1 0
       52 GETTABLEKS                       R4 R1 K0 ["userId"]
       54 SETUPVAL                         R4 1
       55 SETUPVAL                         R3 0
       56 RETURN                           R3 1

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
       52 JUMPIFEQ                         R1 R5 ; [+19]
       54 LOADNIL                          R5
       55 DUPTABLE                         R6 K11 [{["status"] = "error", ["error"], ["nextSteps"]}]
       56 LOADK                            R8 K12 ["groupId/groupName only apply when scope is \"group\"; scope is \"%*\"."]
       57 MOVE                             R10 R1
       58 NAMECALL                         R8 R8 K13 ["format"]
       60 CALL                             R8 2 1
       61 MOVE                             R7 R8
       62 SETTABLEKS                       R7 R6 K5 ["error"]
       64 NEWTABLE                         R7 0 1
       66 LOADK                            R8 K14 ["Set scope='group' to search the specified group, or remove the groupId/groupName argument."]
       67 SETLIST                          R7 R8 1 [1]
       69 SETTABLEKS                       R7 R6 K7 ["nextSteps"]
       71 RETURN                           R5 2
       72 JUMPIFEQKNIL                     R3 ; [+61]
       74 FASTCALL1                        TONUMBER R3 ; [+3]
       75 MOVE                             R6 R3
       76 GETIMPORT                        R5 K16 [tonumber]
       78 CALL                             R5 1 1
       79 JUMPIFNOT                        R5 ; [+3]
       80 LOADN                            R6 0
       81 JUMPIFNOTLE                      R5 R6 ; [+19]
       83 LOADNIL                          R6
       84 DUPTABLE                         R7 K11 [{["status"] = "error", ["error"], ["nextSteps"]}]
       85 LOADK                            R9 K17 ["groupId \"%*\" is not a valid positive numeric ID."]
       86 MOVE                             R11 R3
       87 NAMECALL                         R9 R9 K13 ["format"]
       89 CALL                             R9 2 1
       90 MOVE                             R8 R9
       91 SETTABLEKS                       R8 R7 K5 ["error"]
       93 NEWTABLE                         R8 0 1
       95 LOADK                            R9 K18 ["Pass a positive numeric group ID, or use groupName to look up by name."]
       96 SETLIST                          R8 R9 1 [1]
       98 SETTABLEKS                       R8 R7 K7 ["nextSteps"]
      100 RETURN                           R6 2
      101 MOVE                             R6 R2
      102 LOADNIL                          R7
      103 LOADNIL                          R8
      104 FORGPREP                         R6
      105 GETTABLEKS                       R11 R10 K19 ["id"]
      107 JUMPIFNOTEQ                      R11 R5 ; [+4]
      109 MOVE                             R11 R5
      110 LOADNIL                          R12
      111 RETURN                           R11 2
      112 FORGLOOP                         R6 2 ; [-8]
      114 LOADNIL                          R6
      115 DUPTABLE                         R7 K21 [{["status"] = "error", ["error"], ["groups"], ["nextSteps"]}]
      116 LOADK                            R9 K22 ["groupId \"%*\" is not one of your groups."]
      117 MOVE                             R11 R3
      118 NAMECALL                         R9 R9 K13 ["format"]
      120 CALL                             R9 2 1
      121 MOVE                             R8 R9
      122 SETTABLEKS                       R8 R7 K5 ["error"]
      124 SETTABLEKS                       R2 R7 K20 ["groups"]
      126 NEWTABLE                         R8 0 1
      128 LOADK                            R9 K23 ["Use one of the listed group ids, or pass groupName to look up by name."]
      129 SETLIST                          R8 R9 1 [1]
      131 SETTABLEKS                       R8 R7 K7 ["nextSteps"]
      133 RETURN                           R6 2
      134 JUMPIFNOTEQKNIL                  R4 ; [+2]
      136 LOADB                            R6 0 +1
      137 LOADB                            R6 1
      138 FASTCALL2K                       ASSERT R6 K24 ; [+4]
      140 LOADK                            R7 K24 ["rawGroupName must be set when rawGroupId is nil"]
      141 GETIMPORT                        R5 K26 [assert]
      143 CALL                             R5 2 0
      144 GETIMPORT                        R5 K29 [string.lower]
      146 GETUPVAL                         R6 0
      147 GETTABLEKS                       R6 R6 K3 ["trim"]
      149 MOVE                             R7 R4
      150 CALL                             R6 1 -1
      151 CALL                             R5 -1 1
      152 MOVE                             R6 R2
      153 LOADNIL                          R7
      154 LOADNIL                          R8
      155 FORGPREP                         R6
      156 GETIMPORT                        R11 K29 [string.lower]
      158 GETTABLEKS                       R12 R10 K30 ["name"]
      160 CALL                             R11 1 1
      161 JUMPIFNOTEQ                      R11 R5 ; [+5]
      163 GETTABLEKS                       R11 R10 K19 ["id"]
      165 LOADNIL                          R12
      166 RETURN                           R11 2
      167 FORGLOOP                         R6 2 ; [-12]
      169 LOADNIL                          R6
      170 DUPTABLE                         R7 K21 [{["status"] = "error", ["error"], ["groups"], ["nextSteps"]}]
      171 LOADK                            R9 K31 ["groupName \"%*\" did not match any of your groups."]
      172 MOVE                             R11 R4
      173 NAMECALL                         R9 R9 K13 ["format"]
      175 CALL                             R9 2 1
      176 MOVE                             R8 R9
      177 SETTABLEKS                       R8 R7 K5 ["error"]
      179 SETTABLEKS                       R2 R7 K20 ["groups"]
      181 NEWTABLE                         R8 0 1
      183 LOADK                            R9 K32 ["Use one of the listed group names exactly, or pass a numeric groupId."]
      184 SETLIST                          R8 R9 1 [1]
      186 SETTABLEKS                       R8 R7 K7 ["nextSteps"]
      188 RETURN                           R6 2

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
       79 JUMPIF                           R4 ; [+20]
       80 GETUPVAL                         R5 0
       81 LOADK                            R7 K36 ["[AssetSearchTool] fetchCreatorStoreAssets: FAILED %*"]
       82 JUMPIFNOT                        R3 ; [+2]
       83 LOADK                            R10 K37 ["empty response"]
       84 JUMP                             ; [+1]
       85 MOVE                             R10 R4
       86 FASTCALL1                        TOSTRING R10 ; [+2]
       87 GETIMPORT                        R9 K39 [tostring]
       89 CALL                             R9 1 1
       90 NAMECALL                         R7 R7 K40 ["format"]
       92 CALL                             R7 2 1
       93 MOVE                             R6 R7
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
      203 LOADK                            R9 K69 ["[AssetSearchTool] fetchCreatorStoreAssets: parsed %* results, %* facets"]
      204 LENGTH                           R11 R6
      205 LENGTH                           R12 R5
      206 NAMECALL                         R9 R9 K40 ["format"]
      208 CALL                             R9 3 1
      209 MOVE                             R8 R9
      210 CALL                             R7 1 0
      211 MOVE                             R7 R6
      212 MOVE                             R8 R5
      213 RETURN                           R7 2

PROTO_8:
        0 JUMPIF                           R0 ; [+6]
        1 GETUPVAL                         R3 0
        2 LOADK                            R4 K0 ["[AssetSearchTool] parseInventory: nil response"]
        3 CALL                             R3 1 0
        4 NEWTABLE                         R3 0 0
        6 RETURN                           R3 1
        7 GETTABLEKS                       R3 R0 K1 ["success"]
        9 JUMPIFNOTEQKB                    R3 FALSE ; [+14]
       11 GETUPVAL                         R3 0
       12 LOADK                            R5 K2 ["[AssetSearchTool] parseInventory: error: %*"]
       13 GETTABLEKS                       R8 R0 K4 ["error"]
       15 ORK                              R7 R8 K3 ["unknown"]
       16 NAMECALL                         R5 R5 K5 ["format"]
       18 CALL                             R5 2 1
       19 MOVE                             R4 R5
       20 CALL                             R3 1 0
       21 NEWTABLE                         R3 0 0
       23 RETURN                           R3 1
       24 NEWTABLE                         R3 0 0
       26 GETTABLEKS                       R4 R0 K6 ["items"]
       28 JUMPIF                           R4 ; [+5]
       29 GETTABLEKS                       R4 R0 K7 ["creatorInventoryItems"]
       31 JUMPIF                           R4 ; [+2]
       32 NEWTABLE                         R4 0 0
       34 GETUPVAL                         R5 0
       35 LOADK                            R7 K8 ["[AssetSearchTool] parseInventory: found %* raw items"]
       36 LENGTH                           R9 R4
       37 NAMECALL                         R7 R7 K5 ["format"]
       39 CALL                             R7 2 1
       40 MOVE                             R6 R7
       41 CALL                             R5 1 0
       42 MOVE                             R5 R4
       43 LOADNIL                          R6
       44 LOADNIL                          R7
       45 FORGPREP                         R5
       46 GETTABLEKS                       R11 R9 K9 ["assetItem"]
       48 OR                               R10 R11 R9
       49 GETTABLEKS                       R12 R10 K10 ["asset"]
       51 OR                               R11 R12 R10
       52 JUMPIFNOT                        R11 ; [+198]
       53 GETTABLEKS                       R12 R11 K11 ["assetId"]
       55 JUMPIF                           R12 ; [+3]
       56 GETTABLEKS                       R12 R11 K12 ["id"]
       58 JUMPIFNOT                        R12 ; [+192]
       59 GETTABLEKS                       R13 R11 K11 ["assetId"]
       61 JUMPIF                           R13 ; [+2]
       62 GETTABLEKS                       R13 R11 K12 ["id"]
       64 FASTCALL1                        TOSTRING R13 ; [+2]
       65 GETIMPORT                        R12 K14 [tostring]
       67 CALL                             R12 1 1
       68 GETTABLEKS                       R13 R11 K15 ["assetType"]
       70 JUMPIF                           R13 ; [+4]
       71 GETTABLEKS                       R13 R11 K16 ["type"]
       73 JUMPIF                           R13 ; [+1]
       74 LOADK                            R13 K17 ["Unknown"]
       75 GETUPVAL                         R16 1
       76 GETTABLE                         R15 R16 R13
       77 OR                               R14 R15 R13
       78 LOADB                            R15 1
       79 GETTABLEKS                       R16 R10 K18 ["isPackage"]
       81 JUMPIFEQKB                       R16 TRUE ; [+11]
       83 GETUPVAL                         R15 2
       84 GETTABLEKS                       R15 R15 K19 ["isPackageAsset"]
       86 LOADNIL                          R16
       87 GETTABLEKS                       R17 R11 K20 ["assetSubTypes"]
       89 JUMPIF                           R17 ; [+2]
       90 GETTABLEKS                       R17 R11 K21 ["subTypes"]
       92 CALL                             R15 2 1
       93 JUMPIFNOT                        R15 ; [+1]
       94 GETUPVAL                         R14 3
       95 LOADNIL                          R16
       96 LOADNIL                          R17
       97 GETTABLEKS                       R18 R11 K22 ["creationContext"]
       99 FASTCALL1                        TYPE R18 ; [+3]
      100 MOVE                             R20 R18
      101 GETIMPORT                        R19 K23 [type]
      103 CALL                             R19 1 1
      104 JUMPIFNOTEQKS                    R19 K24 ["table"] ; [+94]
      106 GETTABLEKS                       R19 R18 K25 ["group"]
      108 GETTABLEKS                       R20 R18 K26 ["user"]
      110 GETTABLEKS                       R23 R18 K27 ["creator"]
      112 FASTCALL1                        TYPE R23 ; [+2]
      113 GETIMPORT                        R22 K23 [type]
      115 CALL                             R22 1 1
      116 JUMPIFNOTEQKS                    R22 K24 ["table"] ; [+4]
      118 GETTABLEKS                       R21 R18 K27 ["creator"]
      120 JUMP                             ; [+1]
      121 LOADNIL                          R21
      122 JUMPIFEQKNIL                     R19 ; [+8]
      124 FASTCALL1                        TOSTRING R19 ; [+3]
      125 MOVE                             R23 R19
      126 GETIMPORT                        R22 K14 [tostring]
      128 CALL                             R22 1 1
      129 MOVE                             R16 R22
      130 JUMP                             ; [+33]
      131 JUMPIFEQKNIL                     R20 ; [+8]
      133 FASTCALL1                        TOSTRING R20 ; [+3]
      134 MOVE                             R23 R20
      135 GETIMPORT                        R22 K14 [tostring]
      137 CALL                             R22 1 1
      138 MOVE                             R16 R22
      139 JUMP                             ; [+24]
      140 JUMPIFNOT                        R21 ; [+23]
      141 GETTABLEKS                       R22 R21 K28 ["groupId"]
      143 JUMPIFEQKNIL                     R22 ; [+9]
      145 GETTABLEKS                       R23 R21 K28 ["groupId"]
      147 FASTCALL1                        TOSTRING R23 ; [+2]
      148 GETIMPORT                        R22 K14 [tostring]
      150 CALL                             R22 1 1
      151 MOVE                             R16 R22
      152 JUMP                             ; [+11]
      153 GETTABLEKS                       R22 R21 K29 ["userId"]
      155 JUMPIFEQKNIL                     R22 ; [+8]
      157 GETTABLEKS                       R23 R21 K29 ["userId"]
      159 FASTCALL1                        TOSTRING R23 ; [+2]
      160 GETIMPORT                        R22 K14 [tostring]
      162 CALL                             R22 1 1
      163 MOVE                             R16 R22
      164 GETTABLEKS                       R22 R18 K30 ["name"]
      166 JUMPIF                           R22 ; [+4]
      167 MOVE                             R22 R21
      168 JUMPIFNOT                        R22 ; [+2]
      169 GETTABLEKS                       R22 R21 K30 ["name"]
      171 MOVE                             R17 R22
      172 JUMPIF                           R17 ; [+11]
      173 JUMPIFNOT                        R16 ; [+10]
      174 JUMPIFEQKNIL                     R19 ; [+9]
      176 JUMPIFNOT                        R2 ; [+7]
      177 FASTCALL1                        TONUMBER R16 ; [+3]
      178 MOVE                             R23 R16
      179 GETIMPORT                        R22 K32 [tonumber]
      181 CALL                             R22 1 1
      182 JUMPIFNOT                        R22 ; [+1]
      183 GETTABLE                         R17 R2 R22
      184 JUMPIF                           R17 ; [+14]
      185 JUMPIFNOT                        R21 ; [+13]
      186 GETTABLEKS                       R22 R21 K28 ["groupId"]
      188 JUMPIFEQKNIL                     R22 ; [+10]
      190 JUMPIFNOT                        R2 ; [+8]
      191 GETTABLEKS                       R23 R21 K28 ["groupId"]
      193 FASTCALL1                        TONUMBER R23 ; [+2]
      194 GETIMPORT                        R22 K32 [tonumber]
      196 CALL                             R22 1 1
      197 JUMPIFNOT                        R22 ; [+1]
      198 GETTABLE                         R17 R2 R22
      199 GETUPVAL                         R19 0
      200 LOADK                            R21 K33 ["[AssetSearchTool] parseInventory item: id=%* name=\"%*\" type=%* isPackage=%* creatorId=%* creatorName=%*"]
      201 MOVE                             R23 R12
      202 GETTABLEKS                       R24 R11 K34 ["displayName"]
      204 JUMPIF                           R24 ; [+2]
      205 GETTABLEKS                       R24 R11 K30 ["name"]
      207 MOVE                             R25 R14
      208 FASTCALL1                        TOSTRING R15 ; [+3]
      209 MOVE                             R27 R15
      210 GETIMPORT                        R26 K14 [tostring]
      212 CALL                             R26 1 1
      213 ORK                              R27 R16 K35 ["nil"]
      214 ORK                              R28 R17 K35 ["nil"]
      215 NAMECALL                         R21 R21 K5 ["format"]
      217 CALL                             R21 7 1
      218 MOVE                             R20 R21
      219 CALL                             R19 1 0
      220 DUPTABLE                         R21 K46 [{["assetId"], ["name"], ["description"] = , ["assetType"], ["source"], ["location"], ["creatorName"], ["creatorId"], ["priceCents"] = 0, ["isFree"] = True}]
      221 SETTABLEKS                       R12 R21 K11 ["assetId"]
      223 GETTABLEKS                       R22 R11 K34 ["displayName"]
      225 JUMPIF                           R22 ; [+4]
      226 GETTABLEKS                       R22 R11 K30 ["name"]
      228 JUMPIF                           R22 ; [+1]
      229 LOADK                            R22 K17 ["Unknown"]
      230 SETTABLEKS                       R22 R21 K30 ["name"]
      232 SETTABLEKS                       R14 R21 K15 ["assetType"]
      234 GETUPVAL                         R22 4
      235 GETTABLEKS                       R22 R22 K47 ["Inventory"]
      237 SETTABLEKS                       R22 R21 K38 ["source"]
      239 SETTABLEKS                       R1 R21 K39 ["location"]
      241 SETTABLEKS                       R17 R21 K40 ["creatorName"]
      243 SETTABLEKS                       R16 R21 K41 ["creatorId"]
      245 FASTCALL2                        TABLE_INSERT R3 R21 ; [+4]
      247 MOVE                             R20 R3
      248 GETIMPORT                        R19 K49 [table.insert]
      250 CALL                             R19 2 0
      251 FORGLOOP                         R5 2 ; [-206]
      253 RETURN                           R3 1

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
       80 JUMPIFNOTEQ                      R1 R11 ; [+90]
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
      115 LOADK                            R15 K20 ["[AssetSearchTool] group search: groupId=%*"]
      116 MOVE                             R17 R11
      117 NAMECALL                         R15 R15 K21 ["format"]
      119 CALL                             R15 2 1
      120 MOVE                             R14 R15
      121 CALL                             R13 1 0
      122 GETIMPORT                        R13 K23 [pcall]
      124 NEWCLOSURE                       R14 P1
      125 CAPTURE                          VAL R0
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R4
      130 CALL                             R13 1 2
      131 JUMPIFNOT                        R13 ; [+1]
      132 JUMPIF                           R14 ; [+17]
      133 GETUPVAL                         R15 9
      134 LOADK                            R17 K24 ["[AssetSearchTool] group search: FAILED: %*"]
      135 FASTCALL1                        TOSTRING R14 ; [+3]
      136 MOVE                             R20 R14
      137 GETIMPORT                        R19 K26 [tostring]
      139 CALL                             R19 1 1
      140 NAMECALL                         R17 R17 K21 ["format"]
      142 CALL                             R17 2 1
      143 MOVE                             R16 R17
      144 CALL                             R15 1 0
      145 NEWTABLE                         R15 0 0
      147 NEWTABLE                         R16 0 0
      149 RETURN                           R15 2
      150 GETUPVAL                         R15 10
      151 MOVE                             R16 R14
      152 GETUPVAL                         R17 1
      153 GETTABLEKS                       R17 R17 K13 ["Group"]
      155 MOVE                             R18 R12
      156 CALL                             R15 3 1
      157 GETUPVAL                         R16 9
      158 LOADK                            R18 K27 ["[AssetSearchTool] group search: got %* items"]
      159 LENGTH                           R20 R15
      160 NAMECALL                         R18 R18 K21 ["format"]
      162 CALL                             R18 2 1
      163 MOVE                             R17 R18
      164 CALL                             R16 1 0
      165 MOVE                             R16 R10
      166 MOVE                             R17 R15
      167 CALL                             R16 1 1
      168 NEWTABLE                         R17 0 0
      170 RETURN                           R16 2
      171 LOADNIL                          R11
      172 GETUPVAL                         R12 1
      173 GETTABLEKS                       R12 R12 K28 ["User"]
      175 JUMPIFNOTEQ                      R1 R12 ; [+4]
      177 GETTABLEKS                       R11 R5 K29 ["userId"]
      179 JUMP                             ; [+7]
      180 GETUPVAL                         R12 1
      181 GETTABLEKS                       R12 R12 K30 ["Universe"]
      183 JUMPIFNOTEQ                      R1 R12 ; [+3]
      185 GETTABLEKS                       R11 R5 K31 ["universeId"]
      187 JUMPIF                           R11 ; [+5]
      188 NEWTABLE                         R12 0 0
      190 NEWTABLE                         R13 0 0
      192 RETURN                           R12 2
      193 FASTCALL1                        TONUMBER R11 ; [+3]
      194 MOVE                             R13 R11
      195 GETIMPORT                        R12 K17 [tonumber]
      197 CALL                             R12 1 1
      198 JUMPIF                           R12 ; [+5]
      199 NEWTABLE                         R13 0 0
      201 NEWTABLE                         R14 0 0
      203 RETURN                           R13 2
      204 DUPTABLE                         R13 K34 [{"Type", "Id"}]
      205 SETTABLEKS                       R8 R13 K32 ["Type"]
      207 SETTABLEKS                       R12 R13 K33 ["Id"]
      209 GETIMPORT                        R14 K23 [pcall]
      211 NEWCLOSURE                       R15 P2
      212 CAPTURE                          VAL R0
      213 CAPTURE                          VAL R2
      214 CAPTURE                          VAL R9
      215 CAPTURE                          VAL R13
      216 CAPTURE                          VAL R4
      217 CALL                             R14 1 2
      218 JUMPIFNOT                        R14 ; [+1]
      219 JUMPIF                           R15 ; [+17]
      220 GETUPVAL                         R16 9
      221 LOADK                            R18 K35 ["[AssetSearchTool] searchInventory: request FAILED: %*"]
      222 FASTCALL1                        TOSTRING R15 ; [+3]
      223 MOVE                             R21 R15
      224 GETIMPORT                        R20 K26 [tostring]
      226 CALL                             R20 1 1
      227 NAMECALL                         R18 R18 K21 ["format"]
      229 CALL                             R18 2 1
      230 MOVE                             R17 R18
      231 CALL                             R16 1 0
      232 NEWTABLE                         R16 0 0
      234 NEWTABLE                         R17 0 0
      236 RETURN                           R16 2
      237 GETUPVAL                         R16 9
      238 LOADK                            R17 K36 ["[AssetSearchTool] searchInventory: SUCCESS"]
      239 CALL                             R16 1 0
      240 GETUPVAL                         R16 10
      241 MOVE                             R17 R15
      242 MOVE                             R18 R1
      243 CALL                             R16 2 1
      244 MOVE                             R17 R10
      245 MOVE                             R18 R16
      246 CALL                             R17 1 1
      247 NEWTABLE                         R18 0 0
      249 RETURN                           R17 2

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
       60 LOADK                            R7 K14 ["[AssetSearchTool] === SEARCH START === query=\"%*\" scope=%* maxResults=%* assetType=%*"]
       61 MOVE                             R9 R2
       62 MOVE                             R10 R3
       63 MOVE                             R11 R4
       64 GETTABLEKS                       R13 R1 K16 ["assetType"]
       66 ORK                              R12 R13 K15 ["nil"]
       67 NAMECALL                         R7 R7 K17 ["format"]
       69 CALL                             R7 5 1
       70 MOVE                             R6 R7
       71 CALL                             R5 1 0
       72 GETUPVAL                         R6 1
       73 GETTABLE                         R5 R6 R3
       74 JUMPIF                           R5 ; [+21]
       75 GETUPVAL                         R5 2
       76 DUPTABLE                         R7 K21 [{["status"] = "error", ["error"], ["nextSteps"]}]
       77 LOADK                            R9 K22 ["Invalid scope: \"%*\". Must be one of: auto, creator_store, user, group, universe"]
       78 MOVE                             R11 R3
       79 NAMECALL                         R9 R9 K17 ["format"]
       81 CALL                             R9 2 1
       82 MOVE                             R8 R9
       83 SETTABLEKS                       R8 R7 K19 ["error"]
       85 NEWTABLE                         R8 0 1
       87 LOADK                            R9 K23 ["Use one of the valid scope values: auto, creator_store, user, group, universe"]
       88 SETLIST                          R8 R9 1 [1]
       90 SETTABLEKS                       R8 R7 K20 ["nextSteps"]
       92 NAMECALL                         R5 R5 K24 ["JSONEncode"]
       94 CALL                             R5 2 -1
       95 RETURN                           R5 -1
       96 GETTABLEKS                       R5 R1 K9 ["includeSources"]
       98 JUMPIFNOT                        R5 ; [+16]
       99 GETTABLEKS                       R5 R1 K11 ["excludeSources"]
      101 JUMPIFNOT                        R5 ; [+13]
      102 GETUPVAL                         R5 2
      103 DUPTABLE                         R7 K26 [{["status"] = "error", ["error"] = "Cannot provide both includeSources and excludeSources", ["nextSteps"]}]
      104 NEWTABLE                         R8 0 1
      106 LOADK                            R9 K27 ["Use either includeSources OR excludeSources, not both"]
      107 SETLIST                          R8 R9 1 [1]
      109 SETTABLEKS                       R8 R7 K20 ["nextSteps"]
      111 NAMECALL                         R5 R5 K24 ["JSONEncode"]
      113 CALL                             R5 2 -1
      114 RETURN                           R5 -1
      115 JUMPIFEQKS                       R3 K2 ["auto"] ; [+28]
      117 GETTABLEKS                       R5 R1 K9 ["includeSources"]
      119 JUMPIF                           R5 ; [+3]
      120 GETTABLEKS                       R5 R1 K11 ["excludeSources"]
      122 JUMPIFNOT                        R5 ; [+21]
      123 GETUPVAL                         R5 2
      124 DUPTABLE                         R7 K21 [{["status"] = "error", ["error"], ["nextSteps"]}]
      125 LOADK                            R9 K28 ["includeSources and excludeSources only apply when scope is \"auto\", but scope is \"%*\""]
      126 MOVE                             R11 R3
      127 NAMECALL                         R9 R9 K17 ["format"]
      129 CALL                             R9 2 1
      130 MOVE                             R8 R9
      131 SETTABLEKS                       R8 R7 K19 ["error"]
      133 NEWTABLE                         R8 0 1
      135 LOADK                            R9 K29 ["Remove includeSources/excludeSources, or change scope to 'auto'"]
      136 SETLIST                          R8 R9 1 [1]
      138 SETTABLEKS                       R8 R7 K20 ["nextSteps"]
      140 NAMECALL                         R5 R5 K24 ["JSONEncode"]
      142 CALL                             R5 2 -1
      143 RETURN                           R5 -1
      144 GETUPVAL                         R5 0
      145 LOADK                            R6 K30 ["[AssetSearchTool] Discovering context..."]
      146 CALL                             R5 1 0
      147 GETIMPORT                        R5 K32 [pcall]
      149 NEWCLOSURE                       R6 P0
      150 CAPTURE                          UPVAL U3
      151 CAPTURE                          VAL R0
      152 CALL                             R5 1 2
      153 JUMPIF                           R5 ; [+25]
      154 GETUPVAL                         R7 0
      155 LOADK                            R9 K33 ["[AssetSearchTool] discoverContext threw: %*"]
      156 FASTCALL1                        TOSTRING R6 ; [+3]
      157 MOVE                             R12 R6
      158 GETIMPORT                        R11 K35 [tostring]
      160 CALL                             R11 1 1
      161 NAMECALL                         R9 R9 K17 ["format"]
      163 CALL                             R9 2 1
      164 MOVE                             R8 R9
      165 CALL                             R7 1 0
      166 GETUPVAL                         R7 2
      167 DUPTABLE                         R9 K37 [{["status"] = "error", ["error"] = "Failed to discover Studio context", ["nextSteps"]}]
      168 NEWTABLE                         R10 0 1
      170 LOADK                            R11 K38 ["Retry the search. If this persists, the Studio session may need to be restarted"]
      171 SETLIST                          R10 R11 1 [1]
      173 SETTABLEKS                       R10 R9 K20 ["nextSteps"]
      175 NAMECALL                         R7 R7 K24 ["JSONEncode"]
      177 CALL                             R7 2 -1
      178 RETURN                           R7 -1
      179 GETUPVAL                         R7 0
      180 LOADK                            R9 K39 ["[AssetSearchTool] Context: userId=%* universeId=%* groupId=%*"]
      181 GETTABLEKS                       R11 R6 K40 ["userId"]
      183 GETTABLEKS                       R13 R6 K41 ["universeId"]
      185 ORK                              R12 R13 K15 ["nil"]
      186 GETTABLEKS                       R14 R6 K42 ["groupId"]
      188 ORK                              R13 R14 K15 ["nil"]
      189 NAMECALL                         R9 R9 K17 ["format"]
      191 CALL                             R9 4 1
      192 MOVE                             R8 R9
      193 CALL                             R7 1 0
      194 LOADNIL                          R7
      195 GETTABLEKS                       R8 R1 K42 ["groupId"]
      197 JUMPIF                           R8 ; [+3]
      198 GETTABLEKS                       R8 R1 K43 ["groupName"]
      200 JUMPIFNOT                        R8 ; [+27]
      201 GETUPVAL                         R8 4
      202 MOVE                             R9 R0
      203 MOVE                             R10 R6
      204 CALL                             R8 2 1
      205 LOADNIL                          R9
      206 GETUPVAL                         R10 5
      207 MOVE                             R11 R1
      208 MOVE                             R12 R3
      209 MOVE                             R13 R8
      210 CALL                             R10 3 2
      211 MOVE                             R7 R10
      212 MOVE                             R9 R11
      213 JUMPIFNOT                        R9 ; [+6]
      214 GETUPVAL                         R10 2
      215 MOVE                             R12 R9
      216 NAMECALL                         R10 R10 K24 ["JSONEncode"]
      218 CALL                             R10 2 -1
      219 RETURN                           R10 -1
      220 GETUPVAL                         R10 0
      221 LOADK                            R12 K44 ["[AssetSearchTool] effectiveGroupId=%*"]
      222 ORK                              R14 R7 K15 ["nil"]
      223 NAMECALL                         R12 R12 K17 ["format"]
      225 CALL                             R12 2 1
      226 MOVE                             R11 R12
      227 CALL                             R10 1 0
      228 LOADNIL                          R8
      229 GETTABLEKS                       R9 R6 K45 ["creatorType"]
      231 GETIMPORT                        R10 K49 [Enum.CreatorType.Group]
      233 JUMPIFNOTEQ                      R9 R10 ; [+25]
      235 GETTABLEKS                       R9 R6 K50 ["creatorId"]
      237 JUMPIFNOT                        R9 ; [+21]
      238 GETTABLEKS                       R10 R6 K50 ["creatorId"]
      240 FASTCALL1                        TONUMBER R10 ; [+2]
      241 GETIMPORT                        R9 K52 [tonumber]
      243 CALL                             R9 1 1
      244 JUMPIFNOT                        R9 ; [+14]
      245 GETUPVAL                         R10 4
      246 MOVE                             R11 R0
      247 MOVE                             R12 R6
      248 CALL                             R10 2 3
      249 FORGPREP                         R10
      250 GETTABLEKS                       R15 R14 K53 ["id"]
      252 JUMPIFNOTEQ                      R15 R9 ; [+4]
      254 GETTABLEKS                       R8 R14 K54 ["name"]
      256 JUMP                             ; [+2]
      257 FORGLOOP                         R10 2 ; [-8]
      259 GETTABLEKS                       R10 R6 K45 ["creatorType"]
      261 JUMPIFNOT                        R10 ; [+5]
      262 GETTABLEKS                       R9 R6 K45 ["creatorType"]
      264 GETTABLEKS                       R9 R9 K55 ["Name"]
      266 JUMP                             ; [+1]
      267 LOADNIL                          R9
      268 DUPTABLE                         R10 K58 [{"userId", "universeId", "isPublished", "creatorType", "creatorId", "creatorName"}]
      269 GETTABLEKS                       R11 R6 K40 ["userId"]
      271 SETTABLEKS                       R11 R10 K40 ["userId"]
      273 GETTABLEKS                       R11 R6 K41 ["universeId"]
      275 SETTABLEKS                       R11 R10 K41 ["universeId"]
      277 GETTABLEKS                       R12 R6 K41 ["universeId"]
      279 JUMPIFNOTEQKNIL                  R12 ; [+2]
      281 LOADB                            R11 0 +1
      282 LOADB                            R11 1
      283 SETTABLEKS                       R11 R10 K56 ["isPublished"]
      285 SETTABLEKS                       R9 R10 K45 ["creatorType"]
      287 GETTABLEKS                       R11 R6 K50 ["creatorId"]
      289 SETTABLEKS                       R11 R10 K50 ["creatorId"]
      291 SETTABLEKS                       R8 R10 K57 ["creatorName"]
      293 NEWTABLE                         R11 0 0
      295 NEWTABLE                         R12 0 0
      297 NEWTABLE                         R13 0 0
      299 NEWTABLE                         R14 0 0
      301 JUMPIFNOTEQKS                    R3 K2 ["auto"] ; [+256]
      303 NEWTABLE                         R15 0 4
      305 GETUPVAL                         R16 6
      306 GETTABLEKS                       R16 R16 K59 ["Universe"]
      308 GETUPVAL                         R17 6
      309 GETTABLEKS                       R17 R17 K48 ["Group"]
      311 GETUPVAL                         R18 6
      312 GETTABLEKS                       R18 R18 K60 ["User"]
      314 GETUPVAL                         R19 6
      315 GETTABLEKS                       R19 R19 K61 ["CreatorStore"]
      317 SETLIST                          R15 R16 4 [1]
      319 GETTABLEKS                       R16 R1 K9 ["includeSources"]
      321 JUMPIFNOT                        R16 ; [+17]
      322 NEWTABLE                         R15 0 0
      324 GETTABLEKS                       R16 R1 K9 ["includeSources"]
      326 LOADNIL                          R17
      327 LOADNIL                          R18
      328 FORGPREP                         R16
      329 FASTCALL2                        TABLE_INSERT R15 R20 ; [+5]
      331 MOVE                             R22 R15
      332 MOVE                             R23 R20
      333 GETIMPORT                        R21 K64 [table.insert]
      335 CALL                             R21 2 0
      336 FORGLOOP                         R16 2 ; [-8]
      338 JUMP                             ; [+32]
      339 GETTABLEKS                       R16 R1 K11 ["excludeSources"]
      341 JUMPIFNOT                        R16 ; [+29]
      342 NEWTABLE                         R16 0 0
      344 GETTABLEKS                       R17 R1 K11 ["excludeSources"]
      346 LOADNIL                          R18
      347 LOADNIL                          R19
      348 FORGPREP                         R17
      349 LOADB                            R22 1
      350 SETTABLE                         R22 R16 R21
      351 FORGLOOP                         R17 2 ; [-3]
      353 NEWTABLE                         R17 0 0
      355 MOVE                             R18 R15
      356 LOADNIL                          R19
      357 LOADNIL                          R20
      358 FORGPREP                         R18
      359 GETTABLE                         R23 R16 R22
      360 JUMPIF                           R23 ; [+7]
      361 FASTCALL2                        TABLE_INSERT R17 R22 ; [+5]
      363 MOVE                             R24 R17
      364 MOVE                             R25 R22
      365 GETIMPORT                        R23 K64 [table.insert]
      367 CALL                             R23 2 0
      368 FORGLOOP                         R18 2 ; [-10]
      370 MOVE                             R15 R17
      371 GETUPVAL                         R16 0
      372 LOADK                            R18 K65 ["[AssetSearchTool] Auto waterfall sourceOrder: %*"]
      373 GETIMPORT                        R20 K67 [table.concat]
      375 MOVE                             R21 R15
      376 LOADK                            R22 K68 [", "]
      377 CALL                             R20 2 1
      378 NAMECALL                         R18 R18 K17 ["format"]
      380 CALL                             R18 2 1
      381 MOVE                             R17 R18
      382 CALL                             R16 1 0
      383 NEWTABLE                         R16 0 0
      385 GETTABLEKS                       R19 R1 K69 ["minPriceCents"]
      387 GETTABLEKS                       R20 R1 K70 ["maxPriceCents"]
      389 GETTABLEKS                       R21 R1 K71 ["priceFilter"]
      391 JUMPIFNOTEQKS                    R21 K72 ["free"] ; [+3]
      393 LOADN                            R20 0
      394 JUMP                             ; [+5]
      395 GETTABLEKS                       R21 R1 K71 ["priceFilter"]
      397 JUMPIFNOTEQKS                    R21 K73 ["paid"] ; [+2]
      399 ORK                              R19 R19 K74 [1]
      400 MOVE                             R17 R19
      401 MOVE                             R18 R20
      402 MOVE                             R19 R15
      403 LOADNIL                          R20
      404 LOADNIL                          R21
      405 FORGPREP                         R19
      406 LENGTH                           R24 R11
      407 JUMPIFNOTLE                      R4 R24 ; [+10]
      409 GETUPVAL                         R24 0
      410 LOADK                            R26 K75 ["[AssetSearchTool] Waterfall: reached maxResults=%*, stopping"]
      411 MOVE                             R28 R4
      412 NAMECALL                         R26 R26 K17 ["format"]
      414 CALL                             R26 2 1
      415 MOVE                             R25 R26
      416 CALL                             R24 1 0
      417 JUMP                             ; [+366]
      418 GETUPVAL                         R24 6
      419 GETTABLEKS                       R24 R24 K48 ["Group"]
      421 JUMPIFNOTEQ                      R23 R24 ; [+13]
      423 GETTABLEKS                       R24 R6 K42 ["groupId"]
      425 JUMPIF                           R24 ; [+9]
      426 GETUPVAL                         R24 0
      427 LOADK                            R25 K76 ["[AssetSearchTool] Waterfall: skipping \"group\" (universe has no owning group)"]
      428 CALL                             R24 1 0
      429 GETUPVAL                         R24 6
      430 GETTABLEKS                       R24 R24 K48 ["Group"]
      432 LOADK                            R25 K77 ["this universe is not owned by a group"]
      433 SETTABLE                         R25 R14 R24
      434 JUMP                             ; [+120]
      435 GETUPVAL                         R24 6
      436 GETTABLEKS                       R24 R24 K59 ["Universe"]
      438 JUMPIFNOTEQ                      R23 R24 ; [+13]
      440 GETTABLEKS                       R24 R6 K41 ["universeId"]
      442 JUMPIF                           R24 ; [+9]
      443 GETUPVAL                         R24 0
      444 LOADK                            R25 K78 ["[AssetSearchTool] Waterfall: skipping \"universe\" (no universeId)"]
      445 CALL                             R24 1 0
      446 GETUPVAL                         R24 6
      447 GETTABLEKS                       R24 R24 K59 ["Universe"]
      449 LOADK                            R25 K79 ["game is not published"]
      450 SETTABLE                         R25 R14 R24
      451 JUMP                             ; [+103]
      452 LENGTH                           R25 R11
      453 SUB                              R24 R4 R25
      454 MOVE                             R25 R24
      455 GETTABLEKS                       R26 R1 K16 ["assetType"]
      457 GETUPVAL                         R27 7
      458 JUMPIFNOTEQ                      R26 R27 ; [+7]
      460 GETUPVAL                         R26 6
      461 GETTABLEKS                       R26 R26 K61 ["CreatorStore"]
      463 JUMPIFEQ                         R23 R26 ; [+2]
      465 MULK                             R25 R24 K4 [5]
      466 GETUPVAL                         R26 0
      467 LOADK                            R28 K80 ["[AssetSearchTool] Waterfall: querying source=\"%*\" remaining=%* requestLimit=%*"]
      468 MOVE                             R30 R23
      469 MOVE                             R31 R24
      470 MOVE                             R32 R25
      471 NAMECALL                         R28 R28 K17 ["format"]
      473 CALL                             R28 4 1
      474 MOVE                             R27 R28
      475 CALL                             R26 1 0
      476 GETUPVAL                         R26 8
      477 MOVE                             R27 R0
      478 MOVE                             R28 R23
      479 MOVE                             R29 R2
      480 GETTABLEKS                       R30 R1 K16 ["assetType"]
      482 MOVE                             R31 R25
      483 MOVE                             R32 R6
      484 DUPTABLE                         R33 K86 [{"facets", "tags", "includeOnlyVerifiedCreators", "minPrice", "maxPrice", "minDuration", "maxDuration"}]
      485 GETTABLEKS                       R34 R1 K12 ["facets"]
      487 SETTABLEKS                       R34 R33 K12 ["facets"]
      489 GETTABLEKS                       R34 R1 K13 ["tags"]
      491 SETTABLEKS                       R34 R33 K13 ["tags"]
      493 GETTABLEKS                       R34 R1 K87 ["verifiedCreatorsOnly"]
      495 SETTABLEKS                       R34 R33 K81 ["includeOnlyVerifiedCreators"]
      497 SETTABLEKS                       R17 R33 K82 ["minPrice"]
      499 SETTABLEKS                       R18 R33 K83 ["maxPrice"]
      501 GETTABLEKS                       R34 R1 K88 ["audioMinDuration"]
      503 SETTABLEKS                       R34 R33 K84 ["minDuration"]
      505 GETTABLEKS                       R34 R1 K89 ["audioMaxDuration"]
      507 SETTABLEKS                       R34 R33 K85 ["maxDuration"]
      509 CALL                             R26 7 2
      510 GETUPVAL                         R28 0
      511 LOADK                            R30 K90 ["[AssetSearchTool] Waterfall: source=\"%*\" returned %* results"]
      512 MOVE                             R32 R23
      513 LENGTH                           R33 R26
      514 NAMECALL                         R30 R30 K17 ["format"]
      516 CALL                             R30 3 1
      517 MOVE                             R29 R30
      518 CALL                             R28 1 0
      519 LENGTH                           R28 R27
      520 LOADN                            R29 0
      521 JUMPIFNOTLT                      R29 R28 ; [+2]
      523 MOVE                             R12 R27
      524 MOVE                             R28 R26
      525 LOADNIL                          R29
      526 LOADNIL                          R30
      527 FORGPREP                         R28
      528 LENGTH                           R33 R11
      529 JUMPIFLE                         R4 R33 ; [+18]
      531 GETTABLEKS                       R34 R32 K91 ["assetId"]
      533 GETTABLE                         R33 R16 R34
      534 JUMPIF                           R33 ; [+11]
      535 GETTABLEKS                       R33 R32 K91 ["assetId"]
      537 LOADB                            R34 1
      538 SETTABLE                         R34 R16 R33
      539 FASTCALL2                        TABLE_INSERT R11 R32 ; [+5]
      541 MOVE                             R34 R11
      542 MOVE                             R35 R32
      543 GETIMPORT                        R33 K64 [table.insert]
      545 CALL                             R33 2 0
      546 FORGLOOP                         R28 2 ; [-19]
      548 FASTCALL2                        TABLE_INSERT R13 R23 ; [+5]
      550 MOVE                             R29 R13
      551 MOVE                             R30 R23
      552 GETIMPORT                        R28 K64 [table.insert]
      554 CALL                             R28 2 0
      555 FORGLOOP                         R19 2 ; [-150]
      557 JUMP                             ; [+226]
      558 GETUPVAL                         R15 6
      559 GETTABLEKS                       R15 R15 K48 ["Group"]
      561 JUMPIFNOTEQ                      R3 R15 ; [+77]
      563 GETTABLEKS                       R16 R1 K42 ["groupId"]
      565 JUMPIFEQKNIL                     R16 ; [+6]
      567 LOADB                            R15 1
      568 GETTABLEKS                       R16 R1 K42 ["groupId"]
      570 JUMPIFNOTEQKS                    R16 K0 [""] ; [+16]
      572 LOADB                            R15 0
      573 GETTABLEKS                       R16 R1 K43 ["groupName"]
      575 JUMPIFEQKNIL                     R16 ; [+11]
      577 GETUPVAL                         R16 9
      578 GETTABLEKS                       R16 R16 K92 ["trim"]
      580 GETTABLEKS                       R17 R1 K43 ["groupName"]
      582 CALL                             R16 1 1
      583 JUMPIFNOTEQKS                    R16 K0 [""] ; [+2]
      585 LOADB                            R15 0 +1
      586 LOADB                            R15 1
      587 JUMPIF                           R15 ; [+51]
      588 GETTABLEKS                       R16 R6 K42 ["groupId"]
      590 JUMPIF                           R16 ; [+48]
      591 GETUPVAL                         R16 4
      592 MOVE                             R17 R0
      593 MOVE                             R18 R6
      594 CALL                             R16 2 1
      595 GETUPVAL                         R17 2
      596 DUPTABLE                         R19 K98 [{["status"] = "success", ["query"], ["scope"], ["resultCount"] = 0, ["results"], ["groups"], ["context"], ["nextSteps"]}]
      597 SETTABLEKS                       R2 R19 K1 ["query"]
      599 SETTABLEKS                       R3 R19 K3 ["scope"]
      601 NEWTABLE                         R20 0 0
      603 SETTABLEKS                       R20 R19 K95 ["results"]
      605 LENGTH                           R21 R16
      606 LOADN                            R22 0
      607 JUMPIFNOTLT                      R22 R21 ; [+3]
      609 MOVE                             R20 R16
      610 JUMP                             ; [+1]
      611 LOADNIL                          R20
      612 SETTABLEKS                       R20 R19 K96 ["groups"]
      614 SETTABLEKS                       R10 R19 K97 ["context"]
      616 NEWTABLE                         R20 0 2
      618 LOADK                            R21 K99 ["This universe is not owned by a group, and no groupId/groupName was supplied."]
      619 LENGTH                           R23 R16
      620 LOADN                            R24 0
      621 JUMPIFNOTLT                      R24 R23 ; [+3]
      623 LOADK                            R22 K100 ["Pass scope='group' with groupId or groupName from the listed groups to retry."]
      624 JUMP                             ; [+1]
      625 LOADK                            R22 K101 ["Use scope='auto' or scope='user' instead — you are not a member of any groups."]
      626 SETLIST                          R20 R21 2 [1]
      628 SETTABLEKS                       R20 R19 K20 ["nextSteps"]
      630 NAMECALL                         R17 R17 K24 ["JSONEncode"]
      632 CALL                             R17 2 1
      633 DUPTABLE                         R18 K102 [{["resultCount"] = 0, ["results"]}]
      634 NEWTABLE                         R19 0 0
      636 SETTABLEKS                       R19 R18 K95 ["results"]
      638 RETURN                           R17 2
      639 GETUPVAL                         R15 6
      640 GETTABLEKS                       R15 R15 K59 ["Universe"]
      642 JUMPIFNOTEQ                      R3 R15 ; [+18]
      644 GETTABLEKS                       R15 R6 K41 ["universeId"]
      646 JUMPIF                           R15 ; [+14]
      647 GETUPVAL                         R15 2
      648 DUPTABLE                         R17 K104 [{["status"] = "error", ["error"] = "scope='universe' is unavailable because this game is not yet published (no universe ID).", ["nextSteps"]}]
      649 NEWTABLE                         R18 0 2
      651 LOADK                            R19 K105 ["Use scope='auto' or scope='user' to search the user's personal inventory and Creator Store instead."]
      652 LOADK                            R20 K106 ["The game must be published to Roblox before its universe inventory becomes searchable."]
      653 SETLIST                          R18 R19 2 [1]
      655 SETTABLEKS                       R18 R17 K20 ["nextSteps"]
      657 NAMECALL                         R15 R15 K24 ["JSONEncode"]
      659 CALL                             R15 2 -1
      660 RETURN                           R15 -1
      661 GETUPVAL                         R15 0
      662 LOADK                            R17 K107 ["[AssetSearchTool] Explicit scope=\"%*\""]
      663 MOVE                             R19 R3
      664 NAMECALL                         R17 R17 K17 ["format"]
      666 CALL                             R17 2 1
      667 MOVE                             R16 R17
      668 CALL                             R15 1 0
      669 FASTCALL2                        TABLE_INSERT R13 R3 ; [+5]
      671 MOVE                             R16 R13
      672 MOVE                             R17 R3
      673 GETIMPORT                        R15 K64 [table.insert]
      675 CALL                             R15 2 0
      676 GETUPVAL                         R15 6
      677 GETTABLEKS                       R15 R15 K61 ["CreatorStore"]
      679 JUMPIFNOTEQ                      R3 R15 ; [+69]
      681 GETTABLEKS                       R17 R1 K69 ["minPriceCents"]
      683 GETTABLEKS                       R18 R1 K70 ["maxPriceCents"]
      685 GETTABLEKS                       R19 R1 K71 ["priceFilter"]
      687 JUMPIFNOTEQKS                    R19 K72 ["free"] ; [+3]
      689 LOADN                            R18 0
      690 JUMP                             ; [+5]
      691 GETTABLEKS                       R19 R1 K71 ["priceFilter"]
      693 JUMPIFNOTEQKS                    R19 K73 ["paid"] ; [+2]
      695 ORK                              R17 R17 K74 [1]
      696 MOVE                             R15 R17
      697 MOVE                             R16 R18
      698 GETUPVAL                         R17 8
      699 MOVE                             R18 R0
      700 GETUPVAL                         R19 6
      701 GETTABLEKS                       R19 R19 K61 ["CreatorStore"]
      703 MOVE                             R20 R2
      704 GETTABLEKS                       R21 R1 K16 ["assetType"]
      706 MOVE                             R22 R4
      707 MOVE                             R23 R6
      708 DUPTABLE                         R24 K86 [{"facets", "tags", "includeOnlyVerifiedCreators", "minPrice", "maxPrice", "minDuration", "maxDuration"}]
      709 GETTABLEKS                       R25 R1 K12 ["facets"]
      711 SETTABLEKS                       R25 R24 K12 ["facets"]
      713 GETTABLEKS                       R25 R1 K13 ["tags"]
      715 SETTABLEKS                       R25 R24 K13 ["tags"]
      717 GETTABLEKS                       R25 R1 K87 ["verifiedCreatorsOnly"]
      719 SETTABLEKS                       R25 R24 K81 ["includeOnlyVerifiedCreators"]
      721 SETTABLEKS                       R15 R24 K82 ["minPrice"]
      723 SETTABLEKS                       R16 R24 K83 ["maxPrice"]
      725 GETTABLEKS                       R25 R1 K88 ["audioMinDuration"]
      727 SETTABLEKS                       R25 R24 K84 ["minDuration"]
      729 GETTABLEKS                       R25 R1 K89 ["audioMaxDuration"]
      731 SETTABLEKS                       R25 R24 K85 ["maxDuration"]
      733 CALL                             R17 7 2
      734 MOVE                             R11 R17
      735 LENGTH                           R19 R18
      736 LOADN                            R20 0
      737 JUMPIFNOTLT                      R20 R19 ; [+2]
      739 MOVE                             R12 R18
      740 GETUPVAL                         R19 0
      741 LOADK                            R21 K108 ["[AssetSearchTool] Explicit creator_store: parsed %* results"]
      742 LENGTH                           R23 R11
      743 NAMECALL                         R21 R21 K17 ["format"]
      745 CALL                             R21 2 1
      746 MOVE                             R20 R21
      747 CALL                             R19 1 0
      748 JUMP                             ; [+35]
      749 GETTABLEKS                       R16 R1 K16 ["assetType"]
      751 GETUPVAL                         R17 7
      752 JUMPIFNOTEQ                      R16 R17 ; [+3]
      754 MULK                             R15 R4 K4 [5]
      755 JUMP                             ; [+1]
      756 MOVE                             R15 R4
      757 GETUPVAL                         R16 8
      758 MOVE                             R17 R0
      759 MOVE                             R18 R3
      760 MOVE                             R19 R2
      761 GETTABLEKS                       R20 R1 K16 ["assetType"]
      763 MOVE                             R21 R15
      764 MOVE                             R22 R6
      765 DUPTABLE                         R23 K110 [{"effectiveGroupId"}]
      766 SETTABLEKS                       R7 R23 K109 ["effectiveGroupId"]
      768 CALL                             R16 7 2
      769 MOVE                             R11 R16
      770 LENGTH                           R18 R17
      771 LOADN                            R19 0
      772 JUMPIFNOTLT                      R19 R18 ; [+2]
      774 MOVE                             R12 R17
      775 GETUPVAL                         R18 0
      776 LOADK                            R20 K111 ["[AssetSearchTool] Explicit %*: got %* results"]
      777 MOVE                             R22 R3
      778 LENGTH                           R23 R11
      779 NAMECALL                         R20 R20 K17 ["format"]
      781 CALL                             R20 3 1
      782 MOVE                             R19 R20
      783 CALL                             R18 1 0
      784 GETUPVAL                         R15 0
      785 LOADK                            R17 K112 ["[AssetSearchTool] Total: %* results from sources: %*"]
      786 LENGTH                           R19 R11
      787 GETIMPORT                        R20 K67 [table.concat]
      789 MOVE                             R21 R13
      790 LOADK                            R22 K68 [", "]
      791 CALL                             R20 2 1
      792 NAMECALL                         R17 R17 K17 ["format"]
      794 CALL                             R17 3 1
      795 MOVE                             R16 R17
      796 CALL                             R15 1 0
      797 NEWTABLE                         R15 0 0
      799 NEWTABLE                         R16 0 0
      801 MOVE                             R17 R11
      802 LOADNIL                          R18
      803 LOADNIL                          R19
      804 FORGPREP                         R17
      805 GETTABLEKS                       R23 R21 K91 ["assetId"]
      807 GETTABLE                         R22 R15 R23
      808 JUMPIF                           R22 ; [+14]
      809 GETTABLEKS                       R22 R21 K91 ["assetId"]
      811 LOADB                            R23 1
      812 SETTABLE                         R23 R15 R22
      813 FASTCALL2                        TABLE_INSERT R16 R21 ; [+5]
      815 MOVE                             R23 R16
      816 MOVE                             R24 R21
      817 GETIMPORT                        R22 K64 [table.insert]
      819 CALL                             R22 2 0
      820 LENGTH                           R22 R16
      821 JUMPIFLE                         R4 R22 ; [+3]
      823 FORGLOOP                         R17 2 ; [-19]
      825 MOVE                             R11 R16
      826 GETTABLEKS                       R17 R0 K113 ["tools"]
      828 GETTABLEKS                       R17 R17 K114 ["assetSearch"]
      830 NEWTABLE                         R18 0 0
      832 NEWTABLE                         R19 0 0
      834 MOVE                             R20 R11
      835 LOADNIL                          R21
      836 LOADNIL                          R22
      837 FORGPREP                         R20
      838 DUPTABLE                         R27 K120 [{"assetId", "name", "assetType", "source", "location", "creatorName", "priceCents", "priceLabel", "isFree"}]
      839 GETTABLEKS                       R28 R24 K91 ["assetId"]
      841 SETTABLEKS                       R28 R27 K91 ["assetId"]
      843 GETTABLEKS                       R28 R24 K54 ["name"]
      845 SETTABLEKS                       R28 R27 K54 ["name"]
      847 GETTABLEKS                       R28 R24 K16 ["assetType"]
      849 SETTABLEKS                       R28 R27 K16 ["assetType"]
      851 GETTABLEKS                       R28 R24 K115 ["source"]
      853 SETTABLEKS                       R28 R27 K115 ["source"]
      855 GETTABLEKS                       R28 R24 K116 ["location"]
      857 SETTABLEKS                       R28 R27 K116 ["location"]
      859 GETTABLEKS                       R28 R24 K57 ["creatorName"]
      861 SETTABLEKS                       R28 R27 K57 ["creatorName"]
      863 GETTABLEKS                       R28 R24 K117 ["priceCents"]
      865 SETTABLEKS                       R28 R27 K117 ["priceCents"]
      867 GETTABLEKS                       R28 R24 K118 ["priceLabel"]
      869 SETTABLEKS                       R28 R27 K118 ["priceLabel"]
      871 GETTABLEKS                       R28 R24 K119 ["isFree"]
      873 SETTABLEKS                       R28 R27 K119 ["isFree"]
      875 FASTCALL2                        TABLE_INSERT R18 R27 ; [+4]
      877 MOVE                             R26 R18
      878 GETIMPORT                        R25 K64 [table.insert]
      880 CALL                             R25 2 0
      881 DUPTABLE                         R27 K124 [{"assetId", "name", "description", "assetType", "source", "location", "creatorName", "creatorId", "priceCents", "priceLabel", "isFree", "thumbnailUrl", "creatorStoreUrl"}]
      882 GETTABLEKS                       R28 R24 K91 ["assetId"]
      884 SETTABLEKS                       R28 R27 K91 ["assetId"]
      886 GETTABLEKS                       R28 R24 K54 ["name"]
      888 SETTABLEKS                       R28 R27 K54 ["name"]
      890 GETTABLEKS                       R28 R24 K121 ["description"]
      892 SETTABLEKS                       R28 R27 K121 ["description"]
      894 GETTABLEKS                       R28 R24 K16 ["assetType"]
      896 SETTABLEKS                       R28 R27 K16 ["assetType"]
      898 GETTABLEKS                       R28 R24 K115 ["source"]
      900 SETTABLEKS                       R28 R27 K115 ["source"]
      902 GETTABLEKS                       R28 R24 K116 ["location"]
      904 SETTABLEKS                       R28 R27 K116 ["location"]
      906 GETTABLEKS                       R28 R24 K57 ["creatorName"]
      908 SETTABLEKS                       R28 R27 K57 ["creatorName"]
      910 GETTABLEKS                       R28 R24 K50 ["creatorId"]
      912 SETTABLEKS                       R28 R27 K50 ["creatorId"]
      914 GETTABLEKS                       R28 R24 K117 ["priceCents"]
      916 SETTABLEKS                       R28 R27 K117 ["priceCents"]
      918 GETTABLEKS                       R28 R24 K118 ["priceLabel"]
      920 SETTABLEKS                       R28 R27 K118 ["priceLabel"]
      922 GETTABLEKS                       R28 R24 K119 ["isFree"]
      924 SETTABLEKS                       R28 R27 K119 ["isFree"]
      926 LOADK                            R29 K125 ["%*v1/assets?assetIds=%*&returnPolicy=PlaceHolder&size=150x150&format=Png"]
      927 GETTABLEKS                       R31 R17 K126 ["getThumbnailsUrl"]
      929 CALL                             R31 0 1
      930 GETTABLEKS                       R32 R24 K91 ["assetId"]
      932 NAMECALL                         R29 R29 K17 ["format"]
      934 CALL                             R29 3 1
      935 MOVE                             R28 R29
      936 SETTABLEKS                       R28 R27 K122 ["thumbnailUrl"]
      938 GETTABLEKS                       R29 R24 K115 ["source"]
      940 GETUPVAL                         R30 6
      941 GETTABLEKS                       R30 R30 K61 ["CreatorStore"]
      943 JUMPIFNOTEQ                      R29 R30 ; [+12]
      945 LOADK                            R29 K127 ["%*store/asset/%*"]
      946 GETTABLEKS                       R31 R17 K128 ["getCreatorHubUrl"]
      948 CALL                             R31 0 1
      949 GETTABLEKS                       R32 R24 K91 ["assetId"]
      951 NAMECALL                         R29 R29 K17 ["format"]
      953 CALL                             R29 3 1
      954 MOVE                             R28 R29
      955 JUMP                             ; [+1]
      956 LOADNIL                          R28
      957 SETTABLEKS                       R28 R27 K123 ["creatorStoreUrl"]
      959 FASTCALL2                        TABLE_INSERT R19 R27 ; [+4]
      961 MOVE                             R26 R19
      962 GETIMPORT                        R25 K64 [table.insert]
      964 CALL                             R25 2 0
      965 FORGLOOP                         R20 2 ; [-128]
      967 GETUPVAL                         R20 0
      968 LOADK                            R22 K129 ["[AssetSearchTool] === SEARCH COMPLETE === resultCount=%* sources=%*"]
      969 LENGTH                           R24 R11
      970 GETIMPORT                        R25 K67 [table.concat]
      972 MOVE                             R26 R13
      973 LOADK                            R27 K130 [","]
      974 CALL                             R25 2 1
      975 NAMECALL                         R22 R22 K17 ["format"]
      977 CALL                             R22 3 1
      978 MOVE                             R21 R22
      979 CALL                             R20 1 0
      980 MOVE                             R20 R19
      981 LOADNIL                          R21
      982 LOADNIL                          R22
      983 FORGPREP                         R20
      984 GETUPVAL                         R25 0
      985 LOADK                            R27 K131 ["[AssetSearchTool]   result[%*]: id=%* name=\"%*\" type=%* source=%* location=%*"]
      986 MOVE                             R29 R23
      987 GETTABLEKS                       R30 R24 K91 ["assetId"]
      989 GETTABLEKS                       R31 R24 K54 ["name"]
      991 GETTABLEKS                       R32 R24 K16 ["assetType"]
      993 GETTABLEKS                       R33 R24 K115 ["source"]
      995 GETTABLEKS                       R35 R24 K116 ["location"]
      997 ORK                              R34 R35 K15 ["nil"]
      998 NAMECALL                         R27 R27 K17 ["format"]
     1000 CALL                             R27 7 1
     1001 MOVE                             R26 R27
     1002 CALL                             R25 1 0
     1003 FORGLOOP                         R20 2 ; [-20]
     1005 LOADNIL                          R20
     1006 LOADB                            R21 1
     1007 GETUPVAL                         R22 6
     1008 GETTABLEKS                       R22 R22 K48 ["Group"]
     1010 JUMPIFEQ                         R3 R22 ; [+5]
     1012 JUMPIFEQKS                       R3 K2 ["auto"] ; [+2]
     1014 LOADB                            R21 0 +1
     1015 LOADB                            R21 1
     1016 JUMPIFNOT                        R21 ; [+9]
     1017 GETUPVAL                         R22 4
     1018 MOVE                             R23 R0
     1019 MOVE                             R24 R6
     1020 CALL                             R22 2 1
     1021 LENGTH                           R23 R22
     1022 LOADN                            R24 0
     1023 JUMPIFNOTLT                      R24 R23 ; [+2]
     1025 MOVE                             R20 R22
     1026 GETUPVAL                         R22 2
     1027 DUPTABLE                         R24 K135 [{["status"] = "success", ["query"], ["scope"], ["searchSources"], ["skippedSources"], ["resultCount"], ["availableFacets"], ["results"], ["groups"], ["context"], ["nextSteps"]}]
     1028 SETTABLEKS                       R2 R24 K1 ["query"]
     1030 SETTABLEKS                       R3 R24 K3 ["scope"]
     1032 SETTABLEKS                       R13 R24 K132 ["searchSources"]
     1034 GETIMPORT                        R26 K137 [next]
     1036 MOVE                             R27 R14
     1037 CALL                             R26 1 1
     1038 JUMPIFNOT                        R26 ; [+2]
     1039 MOVE                             R25 R14
     1040 JUMP                             ; [+1]
     1041 LOADNIL                          R25
     1042 SETTABLEKS                       R25 R24 K133 ["skippedSources"]
     1044 LENGTH                           R25 R11
     1045 SETTABLEKS                       R25 R24 K94 ["resultCount"]
     1047 LENGTH                           R26 R12
     1048 LOADN                            R27 0
     1049 JUMPIFNOTLT                      R27 R26 ; [+3]
     1051 MOVE                             R25 R12
     1052 JUMP                             ; [+1]
     1053 LOADNIL                          R25
     1054 SETTABLEKS                       R25 R24 K134 ["availableFacets"]
     1056 SETTABLEKS                       R19 R24 K95 ["results"]
     1058 SETTABLEKS                       R20 R24 K96 ["groups"]
     1060 SETTABLEKS                       R10 R24 K97 ["context"]
     1062 NEWTABLE                         R25 0 4
     1064 LOADK                            R26 K138 ["Review the results and choose the best asset for the user's request. Prefer inventory results (source='inventory') as these are already owned and always insertable."]
     1065 LOADK                            R27 K139 ["For free/owned assets: call insert_asset with assetId, assetType, and assetName from the chosen result to insert it."]
     1066 LOADK                            R28 K140 ["For paid assets (isFree=false): show the user the creatorStoreUrl link and priceLabel so they can purchase it. Do not attempt to insert paid assets — they will fail."]
     1067 LOADK                            R29 K141 ["Some Creator Store assets may be restricted or moderated and fail to insert. If insert_asset fails, try the next result from the list rather than retrying the same asset."]
     1068 SETLIST                          R25 R26 4 [1]
     1070 SETTABLEKS                       R25 R24 K20 ["nextSteps"]
     1072 NAMECALL                         R22 R22 K24 ["JSONEncode"]
     1074 CALL                             R22 2 1
     1075 DUPTABLE                         R23 K142 [{"resultCount", "results"}]
     1076 LENGTH                           R24 R11
     1077 SETTABLEKS                       R24 R23 K94 ["resultCount"]
     1079 SETTABLEKS                       R18 R23 K95 ["results"]
     1081 RETURN                           R22 2

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantSplitToolsAndWidgets"]
        3 JUMPIF                           R1 ; [+4]
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["FFlagAssistantAssetSearchInsertTool"]
       11 JUMPIF                           R2 ; [+3]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["FFlagAssistantAssetSearchInsertToolABTest"]
       15 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       17 LOADK                            R3 K3 ["Asset search tool requires FFlagAssistantAssetSearchInsertTool or FFlagAssistantAssetSearchInsertToolABTest to be enabled"]
       18 GETIMPORT                        R1 K5 [assert]
       20 CALL                             R1 2 0
       21 GETTABLEKS                       R1 R0 K6 ["environment"]
       23 NEWCLOSURE                       R2 P0
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R1
       26 CAPTURE                          UPVAL U3
       27 GETUPVAL                         R3 4
       28 GETTABLEKS                       R3 R3 K7 ["define"]
       30 CALL                             R3 0 1
       31 GETUPVAL                         R5 5
       32 GETTABLEKS                       R5 R5 K8 ["AssetSearch"]
       34 NAMECALL                         R3 R3 K9 ["setName"]
       36 CALL                             R3 2 1
       37 GETUPVAL                         R5 5
       38 GETTABLEKS                       R5 R5 K10 ["replaceTokens"]
       40 LOADK                            R6 K11 ["Searches for assets across Creator Store (public marketplace) and Creator Inventory (user/group/universe).\nUse this tool to find assets by keyword before inserting them with {ToolNames.AssetInsert}.\nReturns a list of matching assets with metadata (name, type, source, price).\n\nScope controls where to search:\n- 'auto' (default): waterfalls through universe inventory → universe's owning group → user inventory → Creator Store. Best for general \"find me an X\" requests.\n- 'creator_store': searches only the marketplace. Use this when the user wants marketplace assets, paid assets, or when using price/creator filters.\n- 'user': searches the user's personal inventory only.\n- 'group': searches the universe's owning group by default. Pass groupId or groupName to search a different group instead. If the universe has no owning group and you don't pass a groupId, the response lists the user's groups so you can retry.\n- 'universe': searches the current universe's inventory only.\n\nTargeting a specific group: when the user names a particular group (\"in my group X\" / \"in group 12345\"), set scope='group' AND pass groupId or groupName to constrain to that one group. groupId/groupName are only valid with scope='group'; combining with any other scope (including 'auto') is rejected.\n\nResult attribution: each inventory result includes `creatorId` (string, the group or user ID that owns the asset) and `creatorName` (the group/user name when known). `creatorId` semantics depend on `source`: for source='inventory' coming from a group, it's the group ID.\n\nEvery scope='group' or scope='auto' response includes a `groups` field listing { id, name } for each of the user's groups (when the user has any). Use these to make a follow-up scope='group' + groupId call when the default (the universe's owning group, or the first relevant group) doesn't match what the user wants.\n\nEvery response also includes a `context` field describing the current Studio session: { userId, universeId, isPublished, creatorType ('User'/'Group' when published), creatorId, creatorName }. Use this to ground answers about which place is being edited and to disambiguate \"in my group\" requests.\n\nCross-owner inserts caution: when an inventory result's creatorId differs from context.creatorId (the place's owner), inserting it brings another owner's asset into this place. The user may have access to view the asset but might not intend or have the authority to share it across owners. Before calling insert_asset on a cross-owner result, name the source (the asset's creatorName) and the destination (context.creatorName or universe), and ask the user for explicit consent.\n\nWhen to use price filters: If the user asks for paid/premium assets or specifies a price range, set scope='creator_store' and use priceFilter, minPriceCents, and/or maxPriceCents. These filters only apply to Creator Store searches.\nWhen to use asset type: If the user asks for a specific asset type (audio, decals, meshes, packages, etc.), set assetType to filter results. The inventory API requires exactly one assetType per call and defaults to 'Model' when omitted, so cross-type discovery requires explicit assetType=Image / Audio / etc. Packages are stored as Models with a Package subtype — set assetType='Package' to find them (do not search for the word \"package\" as a query).\nInventory results (source='inventory') are always insertable. Creator Store results may occasionally be restricted — if insert fails, try the next result.\nEach result includes a thumbnailUrl (Roblox Thumbnails API). Fetch it to get JSON with data[0].imageUrl pointing to a CDN image of the asset — useful for visually comparing assets before inserting.\n"]
       41 CALL                             R5 1 -1
       42 NAMECALL                         R3 R3 K12 ["setDescription"]
       44 CALL                             R3 -1 1
       45 LOADK                            R5 K13 ["query"]
       46 DUPTABLE                         R6 K18 [{["type"] = "string", ["description"] = "Search term. Can be empty when filtering by assetType alone (e.g. to list all packages). Supports multi-term search with '+' (e.g. 'red+car') and exact phrase with quotes (e.g. '\"red+car\"')."}]
       47 NAMECALL                         R3 R3 K19 ["addOptionalArgument"]
       49 CALL                             R3 3 1
       50 LOADK                            R5 K20 ["scope"]
       51 DUPTABLE                         R6 K23 [{["type"] = "string", ["enum"], ["description"] = "Where to search. 'auto' (default) waterfalls through all available sources. Use explicit scope to target a single source."}]
       52 NEWTABLE                         R7 0 5
       54 LOADK                            R8 K24 ["auto"]
       55 LOADK                            R9 K25 ["creator_store"]
       56 LOADK                            R10 K26 ["user"]
       57 LOADK                            R11 K27 ["group"]
       58 LOADK                            R12 K28 ["universe"]
       59 SETLIST                          R7 R8 5 [1]
       61 SETTABLEKS                       R7 R6 K21 ["enum"]
       63 NAMECALL                         R3 R3 K19 ["addOptionalArgument"]
       65 CALL                             R3 3 1
       66 LOADK                            R5 K29 ["includeSources"]
       67 DUPTABLE                         R6 K33 [{["type"] = "array", ["items"], ["description"] = "With scope='auto': only search these sources (e.g. ['user', 'creator_store'])."}]
       68 DUPTABLE                         R7 K34 [{["type"] = "string", ["enum"]}]
       69 NEWTABLE                         R8 0 4
       71 LOADK                            R9 K26 ["user"]
       72 LOADK                            R10 K27 ["group"]
       73 LOADK                            R11 K28 ["universe"]
       74 LOADK                            R12 K25 ["creator_store"]
       75 SETLIST                          R8 R9 4 [1]
       77 SETTABLEKS                       R8 R7 K21 ["enum"]
       79 SETTABLEKS                       R7 R6 K31 ["items"]
       81 NAMECALL                         R3 R3 K19 ["addOptionalArgument"]
       83 CALL                             R3 3 1
       84 LOADK                            R5 K35 ["excludeSources"]
       85 DUPTABLE                         R6 K37 [{["type"] = "array", ["items"], ["description"] = "With scope='auto': skip these sources from the waterfall."}]
       86 DUPTABLE                         R7 K34 [{["type"] = "string", ["enum"]}]
       87 NEWTABLE                         R8 0 4
       89 LOADK                            R9 K26 ["user"]
       90 LOADK                            R10 K27 ["group"]
       91 LOADK                            R11 K28 ["universe"]
       92 LOADK                            R12 K25 ["creator_store"]
       93 SETLIST                          R8 R9 4 [1]
       95 SETTABLEKS                       R8 R7 K21 ["enum"]
       97 SETTABLEKS                       R7 R6 K31 ["items"]
       99 NAMECALL                         R3 R3 K19 ["addOptionalArgument"]
      101 CALL                             R3 3 1
      102 LOADK                            R5 K38 ["groupId"]
      103 DUPTABLE                         R6 K40 [{["type"] = "string", ["description"] = "Numeric group ID to constrain group inventory searches to a single group. Only valid with scope='group'. Mutually exclusive with groupName."}]
      104 NAMECALL                         R3 R3 K19 ["addOptionalArgument"]
      106 CALL                             R3 3 1
      107 LOADK                            R5 K41 ["groupName"]
      108 DUPTABLE                         R6 K43 [{["type"] = "string", ["description"] = "Group name to constrain group inventory searches to a single group. Matched case-insensitively against the user's groups. Only valid with scope='group'. If the name doesn't match any of the user's groups, the response includes a `groups` field listing valid options. Mutually exclusive with groupId."}]
      109 NAMECALL                         R3 R3 K19 ["addOptionalArgument"]
      111 CALL                             R3 3 1
      112 LOADK                            R5 K44 ["assetType"]
      113 DUPTABLE                         R6 K46 [{["type"] = "string", ["enum"], ["description"] = "Filter by asset type. Use 'Image' for user-uploaded images (most decals/textures uploaded today are stored as Image, not Decal). Use 'Package' when the user asks about packages — packages are Models with a Package subtype, so a keyword search for 'package' won't find them."}]
      114 NEWTABLE                         R7 0 8
      116 LOADK                            R8 K47 ["Model"]
      117 LOADK                            R9 K48 ["Audio"]
      118 LOADK                            R10 K49 ["Mesh"]
      119 LOADK                            R11 K50 ["MeshPart"]
      120 LOADK                            R12 K51 ["Image"]
      121 LOADK                            R13 K52 ["Decal"]
      122 LOADK                            R14 K53 ["Video"]
      123 LOADK                            R15 K54 ["Package"]
      124 SETLIST                          R7 R8 8 [1]
      126 SETTABLEKS                       R7 R6 K21 ["enum"]
      128 NAMECALL                         R3 R3 K19 ["addOptionalArgument"]
      130 CALL                             R3 3 1
      131 LOADK                            R5 K55 ["maxResults"]
      132 DUPTABLE                         R6 K58 [{["type"] = "number", ["description"] = "Number of results to return (1-20, default 5)."}]
      133 NAMECALL                         R3 R3 K19 ["addOptionalArgument"]
      135 CALL                             R3 3 1
      136 LOADK                            R5 K59 ["priceFilter"]
      137 DUPTABLE                         R6 K61 [{["type"] = "string", ["enum"], ["description"] = "Price filter. Requires scope='creator_store'. 'free' returns only free assets, 'paid' returns only paid assets, 'all' (default) returns both."}]
      138 NEWTABLE                         R7 0 3
      140 LOADK                            R8 K62 ["free"]
      141 LOADK                            R9 K63 ["paid"]
      142 LOADK                            R10 K64 ["all"]
      143 SETLIST                          R7 R8 3 [1]
      145 SETTABLEKS                       R7 R6 K21 ["enum"]
      147 NAMECALL                         R3 R3 K19 ["addOptionalArgument"]
      149 CALL                             R3 3 1
      150 LOADK                            R5 K65 ["minPriceCents"]
      151 DUPTABLE                         R6 K67 [{["type"] = "number", ["description"] = "Minimum price in cents. Requires scope='creator_store'. Use with maxPriceCents for a price range (e.g. minPriceCents=100, maxPriceCents=5000)."}]
      152 NAMECALL                         R3 R3 K19 ["addOptionalArgument"]
      154 CALL                             R3 3 1
      155 LOADK                            R5 K68 ["maxPriceCents"]
      156 DUPTABLE                         R6 K70 [{["type"] = "number", ["description"] = "Maximum price in cents. Requires scope='creator_store'. Use with minPriceCents for a price range."}]
      157 NAMECALL                         R3 R3 K19 ["addOptionalArgument"]
      159 CALL                             R3 3 1
      160 LOADK                            R5 K71 ["verifiedCreatorsOnly"]
      161 DUPTABLE                         R6 K74 [{["type"] = "boolean", ["description"] = "Only return results from verified creators (Creator Store only)."}]
      162 NAMECALL                         R3 R3 K19 ["addOptionalArgument"]
      164 CALL                             R3 3 1
      165 LOADK                            R5 K75 ["audioMinDuration"]
      166 DUPTABLE                         R6 K77 [{["type"] = "number", ["description"] = "Minimum audio duration in seconds (only when assetType='Audio')."}]
      167 NAMECALL                         R3 R3 K19 ["addOptionalArgument"]
      169 CALL                             R3 3 1
      170 LOADK                            R5 K78 ["audioMaxDuration"]
      171 DUPTABLE                         R6 K80 [{["type"] = "number", ["description"] = "Maximum audio duration in seconds (only when assetType='Audio')."}]
      172 NAMECALL                         R3 R3 K19 ["addOptionalArgument"]
      174 CALL                             R3 3 1
      175 LOADK                            R5 K81 ["facets"]
      176 DUPTABLE                         R6 K83 [{["type"] = "array", ["items"], ["description"] = "Additional keywords to refine the search (Creator Store only, ignored for inventory scopes). Facets narrow results by related concepts — e.g. for a 'lion' search: 'mane', 'safari', 'realistic', 'animated'. Available facets depend on the query."}]
      177 DUPTABLE                         R7 K84 [{["type"] = "string"}]
      178 SETTABLEKS                       R7 R6 K31 ["items"]
      180 NAMECALL                         R3 R3 K19 ["addOptionalArgument"]
      182 CALL                             R3 3 1
      183 LOADK                            R5 K85 ["tags"]
      184 DUPTABLE                         R6 K87 [{["type"] = "array", ["items"], ["description"] = "Tags to filter by (Creator Store only, ignored for inventory scopes). Tags are category labels like 'Vehicle', 'Airplane', 'Fantasy'."}]
      185 DUPTABLE                         R7 K84 [{["type"] = "string"}]
      186 SETTABLEKS                       R7 R6 K31 ["items"]
      188 NAMECALL                         R3 R3 K19 ["addOptionalArgument"]
      190 CALL                             R3 3 1
      191 MOVE                             R5 R2
      192 NAMECALL                         R3 R3 K88 ["setHandler"]
      194 CALL                             R3 2 1
      195 DUPTABLE                         R5 K97 [{["title"] = "Search Asset", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = True}]
      196 NAMECALL                         R3 R3 K98 ["setAnnotations"]
      198 CALL                             R3 2 1
      199 NAMECALL                         R3 R3 K99 ["build"]
      201 CALL                             R3 1 1
      202 DUPTABLE                         R4 K105 [{["command"] = "search_asset", ["getDescription"], ["runToolChain"], ["mapToToolCall"]}]
      203 DUPCLOSURE                       R5 K106 [PROTO_17]
      204 SETTABLEKS                       R5 R4 K102 ["getDescription"]
      206 GETUPVAL                         R6 6
      207 GETTABLEKS                       R6 R6 K107 ["getIsAskInputToolEnabled"]
      209 CALL                             R6 0 1
      210 JUMPIFNOT                        R6 ; [+3]
      211 DUPCLOSURE                       R5 K108 [PROTO_19]
      212 CAPTURE                          UPVAL U5
      213 JUMP                             ; [+1]
      214 LOADNIL                          R5
      215 SETTABLEKS                       R5 R4 K103 ["runToolChain"]
      217 GETUPVAL                         R6 6
      218 GETTABLEKS                       R6 R6 K107 ["getIsAskInputToolEnabled"]
      220 CALL                             R6 0 1
      221 JUMPIFNOT                        R6 ; [+2]
      222 LOADNIL                          R5
      223 JUMP                             ; [+2]
      224 DUPCLOSURE                       R5 K109 [PROTO_20]
      225 CAPTURE                          UPVAL U5
      226 SETTABLEKS                       R5 R4 K104 ["mapToToolCall"]
      228 DUPTABLE                         R5 K112 [{"definition", "slashCommands"}]
      229 SETTABLEKS                       R3 R5 K110 ["definition"]
      231 NEWTABLE                         R6 0 1
      233 MOVE                             R7 R4
      234 SETLIST                          R6 R7 1 [1]
      236 SETTABLEKS                       R6 R5 K111 ["slashCommands"]
      238 RETURN                           R5 1

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
       33 GETTABLEKS                       R5 R0 K14 ["Features"]
       35 GETTABLEKS                       R5 R5 K11 ["AssetManagement"]
       37 GETTABLEKS                       R5 R5 K15 ["AssetSearchTool"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K9 [require]
       42 GETTABLEKS                       R6 R0 K16 ["Parent"]
       44 GETTABLEKS                       R6 R6 K17 ["Dash"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K9 [require]
       49 GETTABLEKS                       R7 R0 K18 ["Guest"]
       51 GETTABLEKS                       R7 R7 K19 ["Environment"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R0 K20 ["FlagUtils"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R0 K21 ["Flags"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K9 [require]
       66 GETTABLEKS                       R10 R0 K16 ["Parent"]
       68 GETTABLEKS                       R10 R10 K22 ["ModelContextProtocol"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K9 [require]
       73 GETTABLEKS                       R11 R0 K23 ["Tools"]
       75 GETTABLEKS                       R11 R11 K24 ["ToolTypes"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K9 [require]
       80 GETTABLEKS                       R12 R0 K25 ["Types"]
       82 CALL                             R11 1 1
       83 GETTABLEKS                       R12 R9 K10 ["Util"]
       85 GETTABLEKS                       R12 R12 K26 ["ToolBuilder"]
       87 GETTABLEKS                       R13 R9 K10 ["Util"]
       89 GETTABLEKS                       R13 R13 K27 ["ToolResult"]
       91 GETTABLEKS                       R14 R10 K28 ["ToolNames"]
       93 GETTABLEKS                       R15 R2 K29 ["INVENTORY_ASSET_TYPE_MAP"]
       95 GETTABLEKS                       R16 R2 K30 ["INVENTORY_TYPE_NORMALIZE"]
       97 GETTABLEKS                       R17 R2 K31 ["CREATOR_STORE_CATEGORY_MAP"]
       99 GETTABLEKS                       R18 R2 K32 ["ASSET_TYPE_ID_TO_NAME"]
      101 GETTABLEKS                       R19 R2 K33 ["SearchSource"]
      103 GETIMPORT                        R20 K37 [Enum.AssetType.Package]
      105 GETTABLEKS                       R20 R20 K38 ["Name"]
      107 GETIMPORT                        R21 K40 [Enum.AssetType.Model]
      109 GETTABLEKS                       R21 R21 K38 ["Name"]
      111 GETTABLEKS                       R22 R3 K41 ["debugPrint"]
      113 DUPTABLE                         R23 K48 [{["auto"] = True, ["creator_store"] = True, ["user"] = True, ["group"] = True, ["universe"] = True}]
      114 DUPTABLE                         R24 K52 [{["user"] = "User", ["group"] = "Group", ["universe"] = "Universe"}]
      115 LOADNIL                          R25
      116 LOADNIL                          R26
      117 NEWTABLE                         R27 0 2
      119 LOADK                            R28 K53 ["StudioAssistant"]
      120 LOADK                            R29 K54 ["StudioAssetManager"]
      121 SETLIST                          R27 R28 2 [1]
      123 DUPCLOSURE                       R28 K55 [PROTO_0]
      124 NEWCLOSURE                       R29 P1
      125 CAPTURE                          REF R25
      126 CAPTURE                          REF R26
      127 CAPTURE                          VAL R22
      128 CAPTURE                          VAL R27
      129 DUPCLOSURE                       R30 K56 [PROTO_4]
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R19
      132 DUPCLOSURE                       R31 K57 [PROTO_5]
      133 DUPCLOSURE                       R32 K58 [PROTO_7]
      134 CAPTURE                          VAL R22
      135 CAPTURE                          VAL R31
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R18
      138 CAPTURE                          VAL R19
      139 DUPCLOSURE                       R33 K59 [PROTO_8]
      140 CAPTURE                          VAL R22
      141 CAPTURE                          VAL R16
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R20
      144 CAPTURE                          VAL R19
      145 NEWTABLE                         R34 0 0
      147 DUPCLOSURE                       R35 K60 [PROTO_12]
      148 CAPTURE                          VAL R34
      149 CAPTURE                          VAL R19
      150 CAPTURE                          VAL R32
      151 CAPTURE                          VAL R17
      152 CAPTURE                          VAL R20
      153 CAPTURE                          VAL R24
      154 CAPTURE                          VAL R15
      155 CAPTURE                          VAL R21
      156 CAPTURE                          VAL R29
      157 CAPTURE                          VAL R22
      158 CAPTURE                          VAL R33
      159 DUPCLOSURE                       R36 K61 [PROTO_13]
      160 DUPCLOSURE                       R37 K62 [PROTO_15]
      161 CAPTURE                          VAL R22
      162 CAPTURE                          VAL R23
      163 CAPTURE                          VAL R1
      164 CAPTURE                          VAL R28
      165 CAPTURE                          VAL R29
      166 CAPTURE                          VAL R30
      167 CAPTURE                          VAL R19
      168 CAPTURE                          VAL R20
      169 CAPTURE                          VAL R35
      170 CAPTURE                          VAL R5
      171 DUPCLOSURE                       R38 K63 [PROTO_21]
      172 CAPTURE                          VAL R8
      173 CAPTURE                          VAL R4
      174 CAPTURE                          VAL R37
      175 CAPTURE                          VAL R13
      176 CAPTURE                          VAL R12
      177 CAPTURE                          VAL R14
      178 CAPTURE                          VAL R7
      179 CLOSEUPVALS                      R25
      180 RETURN                           R38 1
