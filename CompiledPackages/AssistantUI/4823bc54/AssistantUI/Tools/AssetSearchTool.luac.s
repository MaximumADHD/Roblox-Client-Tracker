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
       15 GETUPVAL                         R5 0
       16 LOADK                            R7 K9 ["[AssetSearchTool] === SEARCH START === query=\"%*\" scope=%* maxResults=%* assetType=%*"]
       17 MOVE                             R9 R2
       18 MOVE                             R10 R3
       19 MOVE                             R11 R4
       20 GETTABLEKS                       R13 R1 K11 ["assetType"]
       22 ORK                              R12 R13 K10 ["nil"]
       23 NAMECALL                         R7 R7 K12 ["format"]
       25 CALL                             R7 5 1
       26 MOVE                             R6 R7
       27 CALL                             R5 1 0
       28 GETUPVAL                         R6 1
       29 GETTABLE                         R5 R6 R3
       30 JUMPIF                           R5 ; [+21]
       31 GETUPVAL                         R5 2
       32 DUPTABLE                         R7 K16 [{["status"] = "error", ["error"], ["nextSteps"]}]
       33 LOADK                            R9 K17 ["Invalid scope: \"%*\". Must be one of: auto, creator_store, user, group, universe"]
       34 MOVE                             R11 R3
       35 NAMECALL                         R9 R9 K12 ["format"]
       37 CALL                             R9 2 1
       38 MOVE                             R8 R9
       39 SETTABLEKS                       R8 R7 K14 ["error"]
       41 NEWTABLE                         R8 0 1
       43 LOADK                            R9 K18 ["Use one of the valid scope values: auto, creator_store, user, group, universe"]
       44 SETLIST                          R8 R9 1 [1]
       46 SETTABLEKS                       R8 R7 K15 ["nextSteps"]
       48 NAMECALL                         R5 R5 K19 ["JSONEncode"]
       50 CALL                             R5 2 -1
       51 RETURN                           R5 -1
       52 GETTABLEKS                       R5 R1 K20 ["includeSources"]
       54 JUMPIFNOT                        R5 ; [+16]
       55 GETTABLEKS                       R5 R1 K21 ["excludeSources"]
       57 JUMPIFNOT                        R5 ; [+13]
       58 GETUPVAL                         R5 2
       59 DUPTABLE                         R7 K23 [{["status"] = "error", ["error"] = "Cannot provide both includeSources and excludeSources", ["nextSteps"]}]
       60 NEWTABLE                         R8 0 1
       62 LOADK                            R9 K24 ["Use either includeSources OR excludeSources, not both"]
       63 SETLIST                          R8 R9 1 [1]
       65 SETTABLEKS                       R8 R7 K15 ["nextSteps"]
       67 NAMECALL                         R5 R5 K19 ["JSONEncode"]
       69 CALL                             R5 2 -1
       70 RETURN                           R5 -1
       71 JUMPIFEQKS                       R3 K2 ["auto"] ; [+28]
       73 GETTABLEKS                       R5 R1 K20 ["includeSources"]
       75 JUMPIF                           R5 ; [+3]
       76 GETTABLEKS                       R5 R1 K21 ["excludeSources"]
       78 JUMPIFNOT                        R5 ; [+21]
       79 GETUPVAL                         R5 2
       80 DUPTABLE                         R7 K16 [{["status"] = "error", ["error"], ["nextSteps"]}]
       81 LOADK                            R9 K25 ["includeSources and excludeSources only apply when scope is \"auto\", but scope is \"%*\""]
       82 MOVE                             R11 R3
       83 NAMECALL                         R9 R9 K12 ["format"]
       85 CALL                             R9 2 1
       86 MOVE                             R8 R9
       87 SETTABLEKS                       R8 R7 K14 ["error"]
       89 NEWTABLE                         R8 0 1
       91 LOADK                            R9 K26 ["Remove includeSources/excludeSources, or change scope to 'auto'"]
       92 SETLIST                          R8 R9 1 [1]
       94 SETTABLEKS                       R8 R7 K15 ["nextSteps"]
       96 NAMECALL                         R5 R5 K19 ["JSONEncode"]
       98 CALL                             R5 2 -1
       99 RETURN                           R5 -1
      100 GETUPVAL                         R5 0
      101 LOADK                            R6 K27 ["[AssetSearchTool] Discovering context..."]
      102 CALL                             R5 1 0
      103 GETIMPORT                        R5 K29 [pcall]
      105 NEWCLOSURE                       R6 P0
      106 CAPTURE                          UPVAL U3
      107 CAPTURE                          VAL R0
      108 CALL                             R5 1 2
      109 JUMPIF                           R5 ; [+25]
      110 GETUPVAL                         R7 0
      111 LOADK                            R9 K30 ["[AssetSearchTool] discoverContext threw: %*"]
      112 FASTCALL1                        TOSTRING R6 ; [+3]
      113 MOVE                             R12 R6
      114 GETIMPORT                        R11 K32 [tostring]
      116 CALL                             R11 1 1
      117 NAMECALL                         R9 R9 K12 ["format"]
      119 CALL                             R9 2 1
      120 MOVE                             R8 R9
      121 CALL                             R7 1 0
      122 GETUPVAL                         R7 2
      123 DUPTABLE                         R9 K34 [{["status"] = "error", ["error"] = "Failed to discover Studio context", ["nextSteps"]}]
      124 NEWTABLE                         R10 0 1
      126 LOADK                            R11 K35 ["Retry the search. If this persists, the Studio session may need to be restarted"]
      127 SETLIST                          R10 R11 1 [1]
      129 SETTABLEKS                       R10 R9 K15 ["nextSteps"]
      131 NAMECALL                         R7 R7 K19 ["JSONEncode"]
      133 CALL                             R7 2 -1
      134 RETURN                           R7 -1
      135 GETUPVAL                         R7 0
      136 LOADK                            R9 K36 ["[AssetSearchTool] Context: userId=%* universeId=%* groupId=%*"]
      137 GETTABLEKS                       R11 R6 K37 ["userId"]
      139 GETTABLEKS                       R13 R6 K38 ["universeId"]
      141 ORK                              R12 R13 K10 ["nil"]
      142 GETTABLEKS                       R14 R6 K39 ["groupId"]
      144 ORK                              R13 R14 K10 ["nil"]
      145 NAMECALL                         R9 R9 K12 ["format"]
      147 CALL                             R9 4 1
      148 MOVE                             R8 R9
      149 CALL                             R7 1 0
      150 LOADNIL                          R7
      151 GETTABLEKS                       R8 R1 K39 ["groupId"]
      153 JUMPIF                           R8 ; [+3]
      154 GETTABLEKS                       R8 R1 K40 ["groupName"]
      156 JUMPIFNOT                        R8 ; [+27]
      157 GETUPVAL                         R8 4
      158 MOVE                             R9 R0
      159 MOVE                             R10 R6
      160 CALL                             R8 2 1
      161 LOADNIL                          R9
      162 GETUPVAL                         R10 5
      163 MOVE                             R11 R1
      164 MOVE                             R12 R3
      165 MOVE                             R13 R8
      166 CALL                             R10 3 2
      167 MOVE                             R7 R10
      168 MOVE                             R9 R11
      169 JUMPIFNOT                        R9 ; [+6]
      170 GETUPVAL                         R10 2
      171 MOVE                             R12 R9
      172 NAMECALL                         R10 R10 K19 ["JSONEncode"]
      174 CALL                             R10 2 -1
      175 RETURN                           R10 -1
      176 GETUPVAL                         R10 0
      177 LOADK                            R12 K41 ["[AssetSearchTool] effectiveGroupId=%*"]
      178 ORK                              R14 R7 K10 ["nil"]
      179 NAMECALL                         R12 R12 K12 ["format"]
      181 CALL                             R12 2 1
      182 MOVE                             R11 R12
      183 CALL                             R10 1 0
      184 LOADNIL                          R8
      185 GETTABLEKS                       R9 R6 K42 ["creatorType"]
      187 GETIMPORT                        R10 K46 [Enum.CreatorType.Group]
      189 JUMPIFNOTEQ                      R9 R10 ; [+25]
      191 GETTABLEKS                       R9 R6 K47 ["creatorId"]
      193 JUMPIFNOT                        R9 ; [+21]
      194 GETTABLEKS                       R10 R6 K47 ["creatorId"]
      196 FASTCALL1                        TONUMBER R10 ; [+2]
      197 GETIMPORT                        R9 K49 [tonumber]
      199 CALL                             R9 1 1
      200 JUMPIFNOT                        R9 ; [+14]
      201 GETUPVAL                         R10 4
      202 MOVE                             R11 R0
      203 MOVE                             R12 R6
      204 CALL                             R10 2 3
      205 FORGPREP                         R10
      206 GETTABLEKS                       R15 R14 K50 ["id"]
      208 JUMPIFNOTEQ                      R15 R9 ; [+4]
      210 GETTABLEKS                       R8 R14 K51 ["name"]
      212 JUMP                             ; [+2]
      213 FORGLOOP                         R10 2 ; [-8]
      215 GETTABLEKS                       R10 R6 K42 ["creatorType"]
      217 JUMPIFNOT                        R10 ; [+5]
      218 GETTABLEKS                       R9 R6 K42 ["creatorType"]
      220 GETTABLEKS                       R9 R9 K52 ["Name"]
      222 JUMP                             ; [+1]
      223 LOADNIL                          R9
      224 DUPTABLE                         R10 K55 [{"userId", "universeId", "isPublished", "creatorType", "creatorId", "creatorName"}]
      225 GETTABLEKS                       R11 R6 K37 ["userId"]
      227 SETTABLEKS                       R11 R10 K37 ["userId"]
      229 GETTABLEKS                       R11 R6 K38 ["universeId"]
      231 SETTABLEKS                       R11 R10 K38 ["universeId"]
      233 GETTABLEKS                       R12 R6 K38 ["universeId"]
      235 JUMPIFNOTEQKNIL                  R12 ; [+2]
      237 LOADB                            R11 0 +1
      238 LOADB                            R11 1
      239 SETTABLEKS                       R11 R10 K53 ["isPublished"]
      241 SETTABLEKS                       R9 R10 K42 ["creatorType"]
      243 GETTABLEKS                       R11 R6 K47 ["creatorId"]
      245 SETTABLEKS                       R11 R10 K47 ["creatorId"]
      247 SETTABLEKS                       R8 R10 K54 ["creatorName"]
      249 NEWTABLE                         R11 0 0
      251 NEWTABLE                         R12 0 0
      253 NEWTABLE                         R13 0 0
      255 NEWTABLE                         R14 0 0
      257 JUMPIFNOTEQKS                    R3 K2 ["auto"] ; [+256]
      259 NEWTABLE                         R15 0 4
      261 GETUPVAL                         R16 6
      262 GETTABLEKS                       R16 R16 K56 ["Universe"]
      264 GETUPVAL                         R17 6
      265 GETTABLEKS                       R17 R17 K45 ["Group"]
      267 GETUPVAL                         R18 6
      268 GETTABLEKS                       R18 R18 K57 ["User"]
      270 GETUPVAL                         R19 6
      271 GETTABLEKS                       R19 R19 K58 ["CreatorStore"]
      273 SETLIST                          R15 R16 4 [1]
      275 GETTABLEKS                       R16 R1 K20 ["includeSources"]
      277 JUMPIFNOT                        R16 ; [+17]
      278 NEWTABLE                         R15 0 0
      280 GETTABLEKS                       R16 R1 K20 ["includeSources"]
      282 LOADNIL                          R17
      283 LOADNIL                          R18
      284 FORGPREP                         R16
      285 FASTCALL2                        TABLE_INSERT R15 R20 ; [+5]
      287 MOVE                             R22 R15
      288 MOVE                             R23 R20
      289 GETIMPORT                        R21 K61 [table.insert]
      291 CALL                             R21 2 0
      292 FORGLOOP                         R16 2 ; [-8]
      294 JUMP                             ; [+32]
      295 GETTABLEKS                       R16 R1 K21 ["excludeSources"]
      297 JUMPIFNOT                        R16 ; [+29]
      298 NEWTABLE                         R16 0 0
      300 GETTABLEKS                       R17 R1 K21 ["excludeSources"]
      302 LOADNIL                          R18
      303 LOADNIL                          R19
      304 FORGPREP                         R17
      305 LOADB                            R22 1
      306 SETTABLE                         R22 R16 R21
      307 FORGLOOP                         R17 2 ; [-3]
      309 NEWTABLE                         R17 0 0
      311 MOVE                             R18 R15
      312 LOADNIL                          R19
      313 LOADNIL                          R20
      314 FORGPREP                         R18
      315 GETTABLE                         R23 R16 R22
      316 JUMPIF                           R23 ; [+7]
      317 FASTCALL2                        TABLE_INSERT R17 R22 ; [+5]
      319 MOVE                             R24 R17
      320 MOVE                             R25 R22
      321 GETIMPORT                        R23 K61 [table.insert]
      323 CALL                             R23 2 0
      324 FORGLOOP                         R18 2 ; [-10]
      326 MOVE                             R15 R17
      327 GETUPVAL                         R16 0
      328 LOADK                            R18 K62 ["[AssetSearchTool] Auto waterfall sourceOrder: %*"]
      329 GETIMPORT                        R20 K64 [table.concat]
      331 MOVE                             R21 R15
      332 LOADK                            R22 K65 [", "]
      333 CALL                             R20 2 1
      334 NAMECALL                         R18 R18 K12 ["format"]
      336 CALL                             R18 2 1
      337 MOVE                             R17 R18
      338 CALL                             R16 1 0
      339 NEWTABLE                         R16 0 0
      341 GETTABLEKS                       R19 R1 K66 ["minPriceCents"]
      343 GETTABLEKS                       R20 R1 K67 ["maxPriceCents"]
      345 GETTABLEKS                       R21 R1 K68 ["priceFilter"]
      347 JUMPIFNOTEQKS                    R21 K69 ["free"] ; [+3]
      349 LOADN                            R20 0
      350 JUMP                             ; [+5]
      351 GETTABLEKS                       R21 R1 K68 ["priceFilter"]
      353 JUMPIFNOTEQKS                    R21 K70 ["paid"] ; [+2]
      355 ORK                              R19 R19 K71 [1]
      356 MOVE                             R17 R19
      357 MOVE                             R18 R20
      358 MOVE                             R19 R15
      359 LOADNIL                          R20
      360 LOADNIL                          R21
      361 FORGPREP                         R19
      362 LENGTH                           R24 R11
      363 JUMPIFNOTLE                      R4 R24 ; [+10]
      365 GETUPVAL                         R24 0
      366 LOADK                            R26 K72 ["[AssetSearchTool] Waterfall: reached maxResults=%*, stopping"]
      367 MOVE                             R28 R4
      368 NAMECALL                         R26 R26 K12 ["format"]
      370 CALL                             R26 2 1
      371 MOVE                             R25 R26
      372 CALL                             R24 1 0
      373 JUMP                             ; [+366]
      374 GETUPVAL                         R24 6
      375 GETTABLEKS                       R24 R24 K45 ["Group"]
      377 JUMPIFNOTEQ                      R23 R24 ; [+13]
      379 GETTABLEKS                       R24 R6 K39 ["groupId"]
      381 JUMPIF                           R24 ; [+9]
      382 GETUPVAL                         R24 0
      383 LOADK                            R25 K73 ["[AssetSearchTool] Waterfall: skipping \"group\" (universe has no owning group)"]
      384 CALL                             R24 1 0
      385 GETUPVAL                         R24 6
      386 GETTABLEKS                       R24 R24 K45 ["Group"]
      388 LOADK                            R25 K74 ["this universe is not owned by a group"]
      389 SETTABLE                         R25 R14 R24
      390 JUMP                             ; [+120]
      391 GETUPVAL                         R24 6
      392 GETTABLEKS                       R24 R24 K56 ["Universe"]
      394 JUMPIFNOTEQ                      R23 R24 ; [+13]
      396 GETTABLEKS                       R24 R6 K38 ["universeId"]
      398 JUMPIF                           R24 ; [+9]
      399 GETUPVAL                         R24 0
      400 LOADK                            R25 K75 ["[AssetSearchTool] Waterfall: skipping \"universe\" (no universeId)"]
      401 CALL                             R24 1 0
      402 GETUPVAL                         R24 6
      403 GETTABLEKS                       R24 R24 K56 ["Universe"]
      405 LOADK                            R25 K76 ["game is not published"]
      406 SETTABLE                         R25 R14 R24
      407 JUMP                             ; [+103]
      408 LENGTH                           R25 R11
      409 SUB                              R24 R4 R25
      410 MOVE                             R25 R24
      411 GETTABLEKS                       R26 R1 K11 ["assetType"]
      413 GETUPVAL                         R27 7
      414 JUMPIFNOTEQ                      R26 R27 ; [+7]
      416 GETUPVAL                         R26 6
      417 GETTABLEKS                       R26 R26 K58 ["CreatorStore"]
      419 JUMPIFEQ                         R23 R26 ; [+2]
      421 MULK                             R25 R24 K4 [5]
      422 GETUPVAL                         R26 0
      423 LOADK                            R28 K77 ["[AssetSearchTool] Waterfall: querying source=\"%*\" remaining=%* requestLimit=%*"]
      424 MOVE                             R30 R23
      425 MOVE                             R31 R24
      426 MOVE                             R32 R25
      427 NAMECALL                         R28 R28 K12 ["format"]
      429 CALL                             R28 4 1
      430 MOVE                             R27 R28
      431 CALL                             R26 1 0
      432 GETUPVAL                         R26 8
      433 MOVE                             R27 R0
      434 MOVE                             R28 R23
      435 MOVE                             R29 R2
      436 GETTABLEKS                       R30 R1 K11 ["assetType"]
      438 MOVE                             R31 R25
      439 MOVE                             R32 R6
      440 DUPTABLE                         R33 K85 [{"facets", "tags", "includeOnlyVerifiedCreators", "minPrice", "maxPrice", "minDuration", "maxDuration"}]
      441 GETTABLEKS                       R34 R1 K78 ["facets"]
      443 SETTABLEKS                       R34 R33 K78 ["facets"]
      445 GETTABLEKS                       R34 R1 K79 ["tags"]
      447 SETTABLEKS                       R34 R33 K79 ["tags"]
      449 GETTABLEKS                       R34 R1 K86 ["verifiedCreatorsOnly"]
      451 SETTABLEKS                       R34 R33 K80 ["includeOnlyVerifiedCreators"]
      453 SETTABLEKS                       R17 R33 K81 ["minPrice"]
      455 SETTABLEKS                       R18 R33 K82 ["maxPrice"]
      457 GETTABLEKS                       R34 R1 K87 ["audioMinDuration"]
      459 SETTABLEKS                       R34 R33 K83 ["minDuration"]
      461 GETTABLEKS                       R34 R1 K88 ["audioMaxDuration"]
      463 SETTABLEKS                       R34 R33 K84 ["maxDuration"]
      465 CALL                             R26 7 2
      466 GETUPVAL                         R28 0
      467 LOADK                            R30 K89 ["[AssetSearchTool] Waterfall: source=\"%*\" returned %* results"]
      468 MOVE                             R32 R23
      469 LENGTH                           R33 R26
      470 NAMECALL                         R30 R30 K12 ["format"]
      472 CALL                             R30 3 1
      473 MOVE                             R29 R30
      474 CALL                             R28 1 0
      475 LENGTH                           R28 R27
      476 LOADN                            R29 0
      477 JUMPIFNOTLT                      R29 R28 ; [+2]
      479 MOVE                             R12 R27
      480 MOVE                             R28 R26
      481 LOADNIL                          R29
      482 LOADNIL                          R30
      483 FORGPREP                         R28
      484 LENGTH                           R33 R11
      485 JUMPIFLE                         R4 R33 ; [+18]
      487 GETTABLEKS                       R34 R32 K90 ["assetId"]
      489 GETTABLE                         R33 R16 R34
      490 JUMPIF                           R33 ; [+11]
      491 GETTABLEKS                       R33 R32 K90 ["assetId"]
      493 LOADB                            R34 1
      494 SETTABLE                         R34 R16 R33
      495 FASTCALL2                        TABLE_INSERT R11 R32 ; [+5]
      497 MOVE                             R34 R11
      498 MOVE                             R35 R32
      499 GETIMPORT                        R33 K61 [table.insert]
      501 CALL                             R33 2 0
      502 FORGLOOP                         R28 2 ; [-19]
      504 FASTCALL2                        TABLE_INSERT R13 R23 ; [+5]
      506 MOVE                             R29 R13
      507 MOVE                             R30 R23
      508 GETIMPORT                        R28 K61 [table.insert]
      510 CALL                             R28 2 0
      511 FORGLOOP                         R19 2 ; [-150]
      513 JUMP                             ; [+226]
      514 GETUPVAL                         R15 6
      515 GETTABLEKS                       R15 R15 K45 ["Group"]
      517 JUMPIFNOTEQ                      R3 R15 ; [+77]
      519 GETTABLEKS                       R16 R1 K39 ["groupId"]
      521 JUMPIFEQKNIL                     R16 ; [+6]
      523 LOADB                            R15 1
      524 GETTABLEKS                       R16 R1 K39 ["groupId"]
      526 JUMPIFNOTEQKS                    R16 K0 [""] ; [+16]
      528 LOADB                            R15 0
      529 GETTABLEKS                       R16 R1 K40 ["groupName"]
      531 JUMPIFEQKNIL                     R16 ; [+11]
      533 GETUPVAL                         R16 9
      534 GETTABLEKS                       R16 R16 K91 ["trim"]
      536 GETTABLEKS                       R17 R1 K40 ["groupName"]
      538 CALL                             R16 1 1
      539 JUMPIFNOTEQKS                    R16 K0 [""] ; [+2]
      541 LOADB                            R15 0 +1
      542 LOADB                            R15 1
      543 JUMPIF                           R15 ; [+51]
      544 GETTABLEKS                       R16 R6 K39 ["groupId"]
      546 JUMPIF                           R16 ; [+48]
      547 GETUPVAL                         R16 4
      548 MOVE                             R17 R0
      549 MOVE                             R18 R6
      550 CALL                             R16 2 1
      551 GETUPVAL                         R17 2
      552 DUPTABLE                         R19 K98 [{["status"] = "success", ["query"], ["scope"], ["resultCount"] = 0, ["results"], ["groups"], ["context"], ["nextSteps"]}]
      553 SETTABLEKS                       R2 R19 K1 ["query"]
      555 SETTABLEKS                       R3 R19 K3 ["scope"]
      557 NEWTABLE                         R20 0 0
      559 SETTABLEKS                       R20 R19 K95 ["results"]
      561 LENGTH                           R21 R16
      562 LOADN                            R22 0
      563 JUMPIFNOTLT                      R22 R21 ; [+3]
      565 MOVE                             R20 R16
      566 JUMP                             ; [+1]
      567 LOADNIL                          R20
      568 SETTABLEKS                       R20 R19 K96 ["groups"]
      570 SETTABLEKS                       R10 R19 K97 ["context"]
      572 NEWTABLE                         R20 0 2
      574 LOADK                            R21 K99 ["This universe is not owned by a group, and no groupId/groupName was supplied."]
      575 LENGTH                           R23 R16
      576 LOADN                            R24 0
      577 JUMPIFNOTLT                      R24 R23 ; [+3]
      579 LOADK                            R22 K100 ["Pass scope='group' with groupId or groupName from the listed groups to retry."]
      580 JUMP                             ; [+1]
      581 LOADK                            R22 K101 ["Use scope='auto' or scope='user' instead — you are not a member of any groups."]
      582 SETLIST                          R20 R21 2 [1]
      584 SETTABLEKS                       R20 R19 K15 ["nextSteps"]
      586 NAMECALL                         R17 R17 K19 ["JSONEncode"]
      588 CALL                             R17 2 1
      589 DUPTABLE                         R18 K102 [{["resultCount"] = 0, ["results"]}]
      590 NEWTABLE                         R19 0 0
      592 SETTABLEKS                       R19 R18 K95 ["results"]
      594 RETURN                           R17 2
      595 GETUPVAL                         R15 6
      596 GETTABLEKS                       R15 R15 K56 ["Universe"]
      598 JUMPIFNOTEQ                      R3 R15 ; [+18]
      600 GETTABLEKS                       R15 R6 K38 ["universeId"]
      602 JUMPIF                           R15 ; [+14]
      603 GETUPVAL                         R15 2
      604 DUPTABLE                         R17 K104 [{["status"] = "error", ["error"] = "scope='universe' is unavailable because this game is not yet published (no universe ID).", ["nextSteps"]}]
      605 NEWTABLE                         R18 0 2
      607 LOADK                            R19 K105 ["Use scope='auto' or scope='user' to search the user's personal inventory and Creator Store instead."]
      608 LOADK                            R20 K106 ["The game must be published to Roblox before its universe inventory becomes searchable."]
      609 SETLIST                          R18 R19 2 [1]
      611 SETTABLEKS                       R18 R17 K15 ["nextSteps"]
      613 NAMECALL                         R15 R15 K19 ["JSONEncode"]
      615 CALL                             R15 2 -1
      616 RETURN                           R15 -1
      617 GETUPVAL                         R15 0
      618 LOADK                            R17 K107 ["[AssetSearchTool] Explicit scope=\"%*\""]
      619 MOVE                             R19 R3
      620 NAMECALL                         R17 R17 K12 ["format"]
      622 CALL                             R17 2 1
      623 MOVE                             R16 R17
      624 CALL                             R15 1 0
      625 FASTCALL2                        TABLE_INSERT R13 R3 ; [+5]
      627 MOVE                             R16 R13
      628 MOVE                             R17 R3
      629 GETIMPORT                        R15 K61 [table.insert]
      631 CALL                             R15 2 0
      632 GETUPVAL                         R15 6
      633 GETTABLEKS                       R15 R15 K58 ["CreatorStore"]
      635 JUMPIFNOTEQ                      R3 R15 ; [+69]
      637 GETTABLEKS                       R17 R1 K66 ["minPriceCents"]
      639 GETTABLEKS                       R18 R1 K67 ["maxPriceCents"]
      641 GETTABLEKS                       R19 R1 K68 ["priceFilter"]
      643 JUMPIFNOTEQKS                    R19 K69 ["free"] ; [+3]
      645 LOADN                            R18 0
      646 JUMP                             ; [+5]
      647 GETTABLEKS                       R19 R1 K68 ["priceFilter"]
      649 JUMPIFNOTEQKS                    R19 K70 ["paid"] ; [+2]
      651 ORK                              R17 R17 K71 [1]
      652 MOVE                             R15 R17
      653 MOVE                             R16 R18
      654 GETUPVAL                         R17 8
      655 MOVE                             R18 R0
      656 GETUPVAL                         R19 6
      657 GETTABLEKS                       R19 R19 K58 ["CreatorStore"]
      659 MOVE                             R20 R2
      660 GETTABLEKS                       R21 R1 K11 ["assetType"]
      662 MOVE                             R22 R4
      663 MOVE                             R23 R6
      664 DUPTABLE                         R24 K85 [{"facets", "tags", "includeOnlyVerifiedCreators", "minPrice", "maxPrice", "minDuration", "maxDuration"}]
      665 GETTABLEKS                       R25 R1 K78 ["facets"]
      667 SETTABLEKS                       R25 R24 K78 ["facets"]
      669 GETTABLEKS                       R25 R1 K79 ["tags"]
      671 SETTABLEKS                       R25 R24 K79 ["tags"]
      673 GETTABLEKS                       R25 R1 K86 ["verifiedCreatorsOnly"]
      675 SETTABLEKS                       R25 R24 K80 ["includeOnlyVerifiedCreators"]
      677 SETTABLEKS                       R15 R24 K81 ["minPrice"]
      679 SETTABLEKS                       R16 R24 K82 ["maxPrice"]
      681 GETTABLEKS                       R25 R1 K87 ["audioMinDuration"]
      683 SETTABLEKS                       R25 R24 K83 ["minDuration"]
      685 GETTABLEKS                       R25 R1 K88 ["audioMaxDuration"]
      687 SETTABLEKS                       R25 R24 K84 ["maxDuration"]
      689 CALL                             R17 7 2
      690 MOVE                             R11 R17
      691 LENGTH                           R19 R18
      692 LOADN                            R20 0
      693 JUMPIFNOTLT                      R20 R19 ; [+2]
      695 MOVE                             R12 R18
      696 GETUPVAL                         R19 0
      697 LOADK                            R21 K108 ["[AssetSearchTool] Explicit creator_store: parsed %* results"]
      698 LENGTH                           R23 R11
      699 NAMECALL                         R21 R21 K12 ["format"]
      701 CALL                             R21 2 1
      702 MOVE                             R20 R21
      703 CALL                             R19 1 0
      704 JUMP                             ; [+35]
      705 GETTABLEKS                       R16 R1 K11 ["assetType"]
      707 GETUPVAL                         R17 7
      708 JUMPIFNOTEQ                      R16 R17 ; [+3]
      710 MULK                             R15 R4 K4 [5]
      711 JUMP                             ; [+1]
      712 MOVE                             R15 R4
      713 GETUPVAL                         R16 8
      714 MOVE                             R17 R0
      715 MOVE                             R18 R3
      716 MOVE                             R19 R2
      717 GETTABLEKS                       R20 R1 K11 ["assetType"]
      719 MOVE                             R21 R15
      720 MOVE                             R22 R6
      721 DUPTABLE                         R23 K110 [{"effectiveGroupId"}]
      722 SETTABLEKS                       R7 R23 K109 ["effectiveGroupId"]
      724 CALL                             R16 7 2
      725 MOVE                             R11 R16
      726 LENGTH                           R18 R17
      727 LOADN                            R19 0
      728 JUMPIFNOTLT                      R19 R18 ; [+2]
      730 MOVE                             R12 R17
      731 GETUPVAL                         R18 0
      732 LOADK                            R20 K111 ["[AssetSearchTool] Explicit %*: got %* results"]
      733 MOVE                             R22 R3
      734 LENGTH                           R23 R11
      735 NAMECALL                         R20 R20 K12 ["format"]
      737 CALL                             R20 3 1
      738 MOVE                             R19 R20
      739 CALL                             R18 1 0
      740 GETUPVAL                         R15 0
      741 LOADK                            R17 K112 ["[AssetSearchTool] Total: %* results from sources: %*"]
      742 LENGTH                           R19 R11
      743 GETIMPORT                        R20 K64 [table.concat]
      745 MOVE                             R21 R13
      746 LOADK                            R22 K65 [", "]
      747 CALL                             R20 2 1
      748 NAMECALL                         R17 R17 K12 ["format"]
      750 CALL                             R17 3 1
      751 MOVE                             R16 R17
      752 CALL                             R15 1 0
      753 NEWTABLE                         R15 0 0
      755 NEWTABLE                         R16 0 0
      757 MOVE                             R17 R11
      758 LOADNIL                          R18
      759 LOADNIL                          R19
      760 FORGPREP                         R17
      761 GETTABLEKS                       R23 R21 K90 ["assetId"]
      763 GETTABLE                         R22 R15 R23
      764 JUMPIF                           R22 ; [+14]
      765 GETTABLEKS                       R22 R21 K90 ["assetId"]
      767 LOADB                            R23 1
      768 SETTABLE                         R23 R15 R22
      769 FASTCALL2                        TABLE_INSERT R16 R21 ; [+5]
      771 MOVE                             R23 R16
      772 MOVE                             R24 R21
      773 GETIMPORT                        R22 K61 [table.insert]
      775 CALL                             R22 2 0
      776 LENGTH                           R22 R16
      777 JUMPIFLE                         R4 R22 ; [+3]
      779 FORGLOOP                         R17 2 ; [-19]
      781 MOVE                             R11 R16
      782 GETTABLEKS                       R17 R0 K113 ["tools"]
      784 GETTABLEKS                       R17 R17 K114 ["assetSearch"]
      786 NEWTABLE                         R18 0 0
      788 NEWTABLE                         R19 0 0
      790 MOVE                             R20 R11
      791 LOADNIL                          R21
      792 LOADNIL                          R22
      793 FORGPREP                         R20
      794 DUPTABLE                         R27 K120 [{"assetId", "name", "assetType", "source", "location", "creatorName", "priceCents", "priceLabel", "isFree"}]
      795 GETTABLEKS                       R28 R24 K90 ["assetId"]
      797 SETTABLEKS                       R28 R27 K90 ["assetId"]
      799 GETTABLEKS                       R28 R24 K51 ["name"]
      801 SETTABLEKS                       R28 R27 K51 ["name"]
      803 GETTABLEKS                       R28 R24 K11 ["assetType"]
      805 SETTABLEKS                       R28 R27 K11 ["assetType"]
      807 GETTABLEKS                       R28 R24 K115 ["source"]
      809 SETTABLEKS                       R28 R27 K115 ["source"]
      811 GETTABLEKS                       R28 R24 K116 ["location"]
      813 SETTABLEKS                       R28 R27 K116 ["location"]
      815 GETTABLEKS                       R28 R24 K54 ["creatorName"]
      817 SETTABLEKS                       R28 R27 K54 ["creatorName"]
      819 GETTABLEKS                       R28 R24 K117 ["priceCents"]
      821 SETTABLEKS                       R28 R27 K117 ["priceCents"]
      823 GETTABLEKS                       R28 R24 K118 ["priceLabel"]
      825 SETTABLEKS                       R28 R27 K118 ["priceLabel"]
      827 GETTABLEKS                       R28 R24 K119 ["isFree"]
      829 SETTABLEKS                       R28 R27 K119 ["isFree"]
      831 FASTCALL2                        TABLE_INSERT R18 R27 ; [+4]
      833 MOVE                             R26 R18
      834 GETIMPORT                        R25 K61 [table.insert]
      836 CALL                             R25 2 0
      837 DUPTABLE                         R27 K124 [{"assetId", "name", "description", "assetType", "source", "location", "creatorName", "creatorId", "priceCents", "priceLabel", "isFree", "thumbnailUrl", "creatorStoreUrl"}]
      838 GETTABLEKS                       R28 R24 K90 ["assetId"]
      840 SETTABLEKS                       R28 R27 K90 ["assetId"]
      842 GETTABLEKS                       R28 R24 K51 ["name"]
      844 SETTABLEKS                       R28 R27 K51 ["name"]
      846 GETTABLEKS                       R28 R24 K121 ["description"]
      848 SETTABLEKS                       R28 R27 K121 ["description"]
      850 GETTABLEKS                       R28 R24 K11 ["assetType"]
      852 SETTABLEKS                       R28 R27 K11 ["assetType"]
      854 GETTABLEKS                       R28 R24 K115 ["source"]
      856 SETTABLEKS                       R28 R27 K115 ["source"]
      858 GETTABLEKS                       R28 R24 K116 ["location"]
      860 SETTABLEKS                       R28 R27 K116 ["location"]
      862 GETTABLEKS                       R28 R24 K54 ["creatorName"]
      864 SETTABLEKS                       R28 R27 K54 ["creatorName"]
      866 GETTABLEKS                       R28 R24 K47 ["creatorId"]
      868 SETTABLEKS                       R28 R27 K47 ["creatorId"]
      870 GETTABLEKS                       R28 R24 K117 ["priceCents"]
      872 SETTABLEKS                       R28 R27 K117 ["priceCents"]
      874 GETTABLEKS                       R28 R24 K118 ["priceLabel"]
      876 SETTABLEKS                       R28 R27 K118 ["priceLabel"]
      878 GETTABLEKS                       R28 R24 K119 ["isFree"]
      880 SETTABLEKS                       R28 R27 K119 ["isFree"]
      882 LOADK                            R29 K125 ["%*v1/assets?assetIds=%*&returnPolicy=PlaceHolder&size=150x150&format=Png"]
      883 GETTABLEKS                       R31 R17 K126 ["getThumbnailsUrl"]
      885 CALL                             R31 0 1
      886 GETTABLEKS                       R32 R24 K90 ["assetId"]
      888 NAMECALL                         R29 R29 K12 ["format"]
      890 CALL                             R29 3 1
      891 MOVE                             R28 R29
      892 SETTABLEKS                       R28 R27 K122 ["thumbnailUrl"]
      894 GETTABLEKS                       R29 R24 K115 ["source"]
      896 GETUPVAL                         R30 6
      897 GETTABLEKS                       R30 R30 K58 ["CreatorStore"]
      899 JUMPIFNOTEQ                      R29 R30 ; [+12]
      901 LOADK                            R29 K127 ["%*store/asset/%*"]
      902 GETTABLEKS                       R31 R17 K128 ["getCreatorHubUrl"]
      904 CALL                             R31 0 1
      905 GETTABLEKS                       R32 R24 K90 ["assetId"]
      907 NAMECALL                         R29 R29 K12 ["format"]
      909 CALL                             R29 3 1
      910 MOVE                             R28 R29
      911 JUMP                             ; [+1]
      912 LOADNIL                          R28
      913 SETTABLEKS                       R28 R27 K123 ["creatorStoreUrl"]
      915 FASTCALL2                        TABLE_INSERT R19 R27 ; [+4]
      917 MOVE                             R26 R19
      918 GETIMPORT                        R25 K61 [table.insert]
      920 CALL                             R25 2 0
      921 FORGLOOP                         R20 2 ; [-128]
      923 GETUPVAL                         R20 0
      924 LOADK                            R22 K129 ["[AssetSearchTool] === SEARCH COMPLETE === resultCount=%* sources=%*"]
      925 LENGTH                           R24 R11
      926 GETIMPORT                        R25 K64 [table.concat]
      928 MOVE                             R26 R13
      929 LOADK                            R27 K130 [","]
      930 CALL                             R25 2 1
      931 NAMECALL                         R22 R22 K12 ["format"]
      933 CALL                             R22 3 1
      934 MOVE                             R21 R22
      935 CALL                             R20 1 0
      936 MOVE                             R20 R19
      937 LOADNIL                          R21
      938 LOADNIL                          R22
      939 FORGPREP                         R20
      940 GETUPVAL                         R25 0
      941 LOADK                            R27 K131 ["[AssetSearchTool]   result[%*]: id=%* name=\"%*\" type=%* source=%* location=%*"]
      942 MOVE                             R29 R23
      943 GETTABLEKS                       R30 R24 K90 ["assetId"]
      945 GETTABLEKS                       R31 R24 K51 ["name"]
      947 GETTABLEKS                       R32 R24 K11 ["assetType"]
      949 GETTABLEKS                       R33 R24 K115 ["source"]
      951 GETTABLEKS                       R35 R24 K116 ["location"]
      953 ORK                              R34 R35 K10 ["nil"]
      954 NAMECALL                         R27 R27 K12 ["format"]
      956 CALL                             R27 7 1
      957 MOVE                             R26 R27
      958 CALL                             R25 1 0
      959 FORGLOOP                         R20 2 ; [-20]
      961 LOADNIL                          R20
      962 LOADB                            R21 1
      963 GETUPVAL                         R22 6
      964 GETTABLEKS                       R22 R22 K45 ["Group"]
      966 JUMPIFEQ                         R3 R22 ; [+5]
      968 JUMPIFEQKS                       R3 K2 ["auto"] ; [+2]
      970 LOADB                            R21 0 +1
      971 LOADB                            R21 1
      972 JUMPIFNOT                        R21 ; [+9]
      973 GETUPVAL                         R22 4
      974 MOVE                             R23 R0
      975 MOVE                             R24 R6
      976 CALL                             R22 2 1
      977 LENGTH                           R23 R22
      978 LOADN                            R24 0
      979 JUMPIFNOTLT                      R24 R23 ; [+2]
      981 MOVE                             R20 R22
      982 GETUPVAL                         R22 2
      983 DUPTABLE                         R24 K135 [{["status"] = "success", ["query"], ["scope"], ["searchSources"], ["skippedSources"], ["resultCount"], ["availableFacets"], ["results"], ["groups"], ["context"], ["nextSteps"]}]
      984 SETTABLEKS                       R2 R24 K1 ["query"]
      986 SETTABLEKS                       R3 R24 K3 ["scope"]
      988 SETTABLEKS                       R13 R24 K132 ["searchSources"]
      990 GETIMPORT                        R26 K137 [next]
      992 MOVE                             R27 R14
      993 CALL                             R26 1 1
      994 JUMPIFNOT                        R26 ; [+2]
      995 MOVE                             R25 R14
      996 JUMP                             ; [+1]
      997 LOADNIL                          R25
      998 SETTABLEKS                       R25 R24 K133 ["skippedSources"]
     1000 LENGTH                           R25 R11
     1001 SETTABLEKS                       R25 R24 K93 ["resultCount"]
     1003 LENGTH                           R26 R12
     1004 LOADN                            R27 0
     1005 JUMPIFNOTLT                      R27 R26 ; [+3]
     1007 MOVE                             R25 R12
     1008 JUMP                             ; [+1]
     1009 LOADNIL                          R25
     1010 SETTABLEKS                       R25 R24 K134 ["availableFacets"]
     1012 SETTABLEKS                       R19 R24 K95 ["results"]
     1014 SETTABLEKS                       R20 R24 K96 ["groups"]
     1016 SETTABLEKS                       R10 R24 K97 ["context"]
     1018 NEWTABLE                         R25 0 4
     1020 LOADK                            R26 K138 ["Review the results and choose the best asset for the user's request. Prefer inventory results (source='inventory') as these are already owned and always insertable."]
     1021 LOADK                            R27 K139 ["For free/owned assets: call insert_asset with assetId, assetType, and assetName from the chosen result to insert it."]
     1022 LOADK                            R28 K140 ["For paid assets (isFree=false): show the user the creatorStoreUrl link and priceLabel so they can purchase it. Do not attempt to insert paid assets — they will fail."]
     1023 LOADK                            R29 K141 ["Some Creator Store assets may be restricted or moderated and fail to insert. If insert_asset fails, try the next result from the list rather than retrying the same asset."]
     1024 SETLIST                          R25 R26 4 [1]
     1026 SETTABLEKS                       R25 R24 K15 ["nextSteps"]
     1028 NAMECALL                         R22 R22 K19 ["JSONEncode"]
     1030 CALL                             R22 2 1
     1031 DUPTABLE                         R23 K142 [{"resultCount", "results"}]
     1032 LENGTH                           R24 R11
     1033 SETTABLEKS                       R24 R23 K93 ["resultCount"]
     1035 SETTABLEKS                       R18 R23 K95 ["results"]
     1037 RETURN                           R22 2

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
        7 SETTABLEKS                       R0 R2 K4 ["query"]
        9 SETTABLEKS                       R2 R1 K1 ["arguments"]
       11 RETURN                           R1 1

PROTO_19:
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
      202 DUPTABLE                         R4 K104 [{["command"] = "search_asset", ["getDescription"], ["mapToToolCall"]}]
      203 DUPCLOSURE                       R5 K105 [PROTO_17]
      204 SETTABLEKS                       R5 R4 K102 ["getDescription"]
      206 DUPCLOSURE                       R5 K106 [PROTO_18]
      207 CAPTURE                          UPVAL U5
      208 SETTABLEKS                       R5 R4 K103 ["mapToToolCall"]
      210 DUPTABLE                         R5 K109 [{"definition", "slashCommands"}]
      211 SETTABLEKS                       R3 R5 K107 ["definition"]
      213 NEWTABLE                         R6 0 1
      215 MOVE                             R7 R4
      216 SETLIST                          R6 R7 1 [1]
      218 SETTABLEKS                       R6 R5 K108 ["slashCommands"]
      220 RETURN                           R5 1

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
       56 GETTABLEKS                       R8 R0 K20 ["Flags"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R0 K16 ["Parent"]
       63 GETTABLEKS                       R9 R9 K21 ["ModelContextProtocol"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETTABLEKS                       R10 R0 K22 ["Tools"]
       70 GETTABLEKS                       R10 R10 K23 ["ToolTypes"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K9 [require]
       75 GETTABLEKS                       R11 R0 K24 ["Types"]
       77 CALL                             R10 1 1
       78 GETTABLEKS                       R11 R8 K10 ["Util"]
       80 GETTABLEKS                       R11 R11 K25 ["ToolBuilder"]
       82 GETTABLEKS                       R12 R8 K10 ["Util"]
       84 GETTABLEKS                       R12 R12 K26 ["ToolResult"]
       86 GETTABLEKS                       R13 R9 K27 ["ToolNames"]
       88 GETTABLEKS                       R14 R2 K28 ["INVENTORY_ASSET_TYPE_MAP"]
       90 GETTABLEKS                       R15 R2 K29 ["INVENTORY_TYPE_NORMALIZE"]
       92 GETTABLEKS                       R16 R2 K30 ["CREATOR_STORE_CATEGORY_MAP"]
       94 GETTABLEKS                       R17 R2 K31 ["ASSET_TYPE_ID_TO_NAME"]
       96 GETTABLEKS                       R18 R2 K32 ["SearchSource"]
       98 GETIMPORT                        R19 K36 [Enum.AssetType.Package]
      100 GETTABLEKS                       R19 R19 K37 ["Name"]
      102 GETIMPORT                        R20 K39 [Enum.AssetType.Model]
      104 GETTABLEKS                       R20 R20 K37 ["Name"]
      106 GETTABLEKS                       R21 R3 K40 ["debugPrint"]
      108 DUPTABLE                         R22 K47 [{["auto"] = True, ["creator_store"] = True, ["user"] = True, ["group"] = True, ["universe"] = True}]
      109 DUPTABLE                         R23 K51 [{["user"] = "User", ["group"] = "Group", ["universe"] = "Universe"}]
      110 LOADNIL                          R24
      111 LOADNIL                          R25
      112 NEWTABLE                         R26 0 2
      114 LOADK                            R27 K52 ["StudioAssistant"]
      115 LOADK                            R28 K53 ["StudioAssetManager"]
      116 SETLIST                          R26 R27 2 [1]
      118 DUPCLOSURE                       R27 K54 [PROTO_0]
      119 NEWCLOSURE                       R28 P1
      120 CAPTURE                          REF R24
      121 CAPTURE                          REF R25
      122 CAPTURE                          VAL R21
      123 CAPTURE                          VAL R26
      124 DUPCLOSURE                       R29 K55 [PROTO_4]
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R18
      127 DUPCLOSURE                       R30 K56 [PROTO_5]
      128 DUPCLOSURE                       R31 K57 [PROTO_7]
      129 CAPTURE                          VAL R21
      130 CAPTURE                          VAL R30
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R17
      133 CAPTURE                          VAL R18
      134 DUPCLOSURE                       R32 K58 [PROTO_8]
      135 CAPTURE                          VAL R21
      136 CAPTURE                          VAL R15
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R19
      139 CAPTURE                          VAL R18
      140 NEWTABLE                         R33 0 0
      142 DUPCLOSURE                       R34 K59 [PROTO_12]
      143 CAPTURE                          VAL R33
      144 CAPTURE                          VAL R18
      145 CAPTURE                          VAL R31
      146 CAPTURE                          VAL R16
      147 CAPTURE                          VAL R19
      148 CAPTURE                          VAL R23
      149 CAPTURE                          VAL R14
      150 CAPTURE                          VAL R20
      151 CAPTURE                          VAL R28
      152 CAPTURE                          VAL R21
      153 CAPTURE                          VAL R32
      154 DUPCLOSURE                       R35 K60 [PROTO_13]
      155 DUPCLOSURE                       R36 K61 [PROTO_15]
      156 CAPTURE                          VAL R21
      157 CAPTURE                          VAL R22
      158 CAPTURE                          VAL R1
      159 CAPTURE                          VAL R27
      160 CAPTURE                          VAL R28
      161 CAPTURE                          VAL R29
      162 CAPTURE                          VAL R18
      163 CAPTURE                          VAL R19
      164 CAPTURE                          VAL R34
      165 CAPTURE                          VAL R5
      166 DUPCLOSURE                       R37 K62 [PROTO_19]
      167 CAPTURE                          VAL R7
      168 CAPTURE                          VAL R4
      169 CAPTURE                          VAL R36
      170 CAPTURE                          VAL R12
      171 CAPTURE                          VAL R11
      172 CAPTURE                          VAL R13
      173 CLOSEUPVALS                      R24
      174 RETURN                           R37 1
