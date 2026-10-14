PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ScopeType"]
        3 GETTABLEKS                       R1 R1 K1 ["User"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+3]
        7 LOADK                            R1 K2 ["users"]
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["ScopeType"]
       12 GETTABLEKS                       R1 R1 K3 ["Group"]
       14 JUMPIFNOTEQ                      R0 R1 ; [+3]
       16 LOADK                            R1 K4 ["groups"]
       17 RETURN                           R1 1
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K0 ["ScopeType"]
       21 GETTABLEKS                       R1 R1 K5 ["Universe"]
       23 JUMPIFNOTEQ                      R0 R1 ; [+3]
       25 LOADK                            R1 K6 ["universes"]
       26 RETURN                           R1 1
       27 LOADK                            R1 K7 [""]
       28 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["_fetchTotalAssets"]
        4 LOADN                            R0 0
        5 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R1 K0 ["_fetchTotalAssets"]
        3 ADD                              R2 R2 R0
        4 SETTABLEKS                       R2 R1 K0 ["_fetchTotalAssets"]
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["GetUserInfosByUserIdsAsync"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetUserId"]
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K2 [pcall]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R1
        9 CALL                             R2 1 2
       10 JUMPIFNOT                        R2 ; [+7]
       11 MOVE                             R4 R0
       12 GETTABLEN                        R5 R3 1
       13 GETTABLEKS                       R5 R5 K3 ["Username"]
       15 LOADB                            R6 0
       16 CALL                             R4 2 0
       17 RETURN                           R0 0
       18 MOVE                             R4 R0
       19 LOADK                            R5 K4 [""]
       20 LOADB                            R6 1
       21 CALL                             R4 2 0
       22 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["GetUniverseInfoRequest"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 NAMECALL                         R3 R3 K1 ["makeRequest"]
        7 CALL                             R3 1 1
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R1
       10 NEWCLOSURE                       R6 P1
       11 CAPTURE                          VAL R2
       12 NAMECALL                         R3 R3 K2 ["andThen"]
       14 CALL                             R3 3 0
       15 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R1 R1 K1 ["groups"]
        4 RETURN                           R1 1

PROTO_9:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 DUPTABLE                         R7 K4 [{"Name", "Id", "Type", "Uid"}]
        7 GETTABLEKS                       R8 R6 K5 ["name"]
        9 SETTABLEKS                       R8 R7 K0 ["Name"]
       11 GETTABLEKS                       R8 R6 K6 ["id"]
       13 SETTABLEKS                       R8 R7 K1 ["Id"]
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R8 R8 K7 ["ScopeType"]
       18 GETTABLEKS                       R8 R8 K8 ["Group"]
       20 SETTABLEKS                       R8 R7 K2 ["Type"]
       22 GETUPVAL                         R8 1
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R9 R9 K7 ["ScopeType"]
       26 GETTABLEKS                       R9 R9 K8 ["Group"]
       28 GETTABLEKS                       R10 R6 K6 ["id"]
       30 CALL                             R8 2 1
       31 SETTABLEKS                       R8 R7 K3 ["Uid"]
       33 GETTABLEKS                       R8 R6 K6 ["id"]
       35 SETTABLE                         R7 R1 R8
       36 FORGLOOP                         R2 2 ; [-31]
       38 GETUPVAL                         R2 2
       39 MOVE                             R3 R1
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["CreateFetchGroupsRequest"]
        3 LOADK                            R3 K1 ["StudioAssetManager"]
        4 CALL                             R2 1 1
        5 NAMECALL                         R2 R2 K2 ["makeRequest"]
        7 CALL                             R2 1 1
        8 DUPCLOSURE                       R4 K3 [PROTO_8]
        9 NAMECALL                         R2 R2 K4 ["andThen"]
       11 CALL                             R2 2 1
       12 NEWCLOSURE                       R5 P1
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 MOVE                             R6 R1
       17 NAMECALL                         R3 R2 K4 ["andThen"]
       19 CALL                             R3 3 0
       20 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R2 K2 [task.delay]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R3 R1 K1 ["inventoryStatus"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["InventoryFolderStatus"]
        9 GETTABLEKS                       R3 R3 K3 ["FoldersReady"]
       11 JUMPIFNOTEQ                      R2 R3 ; [+9]
       13 GETUPVAL                         R3 2
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K2 ["InventoryFolderStatus"]
       17 GETTABLEKS                       R4 R4 K3 ["FoldersReady"]
       19 CALL                             R3 1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R3 3
       22 GETUPVAL                         R4 4
       23 GETTABLEKS                       R4 R4 K4 ["FolderReadinessRetryCount"]
       25 JUMPIFNOTLT                      R3 R4 ; [+33]
       27 GETUPVAL                         R4 3
       28 ADDK                             R3 R4 K5 [1]
       29 GETUPVAL                         R4 5
       30 LOADK                            R5 K6 ["Inventory status for %* is %*, retrying %*/%*..."]
       31 GETUPVAL                         R7 6
       32 GETTABLEKS                       R7 R7 K7 ["Uid"]
       34 MOVE                             R8 R2
       35 MOVE                             R9 R3
       36 GETUPVAL                         R10 4
       37 GETTABLEKS                       R10 R10 K4 ["FolderReadinessRetryCount"]
       39 NAMECALL                         R5 R5 K8 ["format"]
       41 CALL                             R5 5 1
       42 CALL                             R4 1 0
       43 GETUPVAL                         R4 7
       44 GETTABLEKS                       R4 R4 K9 ["_delay"]
       46 LOADN                            R6 2
       47 FASTCALL2                        MATH_POW R6 R3 ; [+4]
       49 MOVE                             R7 R3
       50 GETIMPORT                        R5 K12 [math.pow]
       52 CALL                             R5 2 1
       53 NEWCLOSURE                       R6 P0
       54 CAPTURE                          UPVAL U8
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          VAL R3
       57 CALL                             R4 2 0
       58 RETURN                           R0 0
       59 GETUPVAL                         R3 5
       60 LOADK                            R4 K13 ["Inventory status for %* is %*, not ready after %* retries"]
       61 GETUPVAL                         R6 6
       62 GETTABLEKS                       R6 R6 K7 ["Uid"]
       64 MOVE                             R7 R2
       65 GETUPVAL                         R8 4
       66 GETTABLEKS                       R8 R8 K4 ["FolderReadinessRetryCount"]
       68 NAMECALL                         R4 R4 K8 ["format"]
       70 CALL                             R4 4 1
       71 CALL                             R3 1 0
       72 GETUPVAL                         R3 2
       73 GETUPVAL                         R4 1
       74 GETTABLEKS                       R4 R4 K2 ["InventoryFolderStatus"]
       76 GETTABLEKS                       R4 R4 K14 ["FoldersNotReady"]
       78 CALL                             R3 1 0
       79 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Failed to fetch folder ready for %*: %*"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["Uid"]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K2 ["pretty"]
        8 MOVE                             R6 R0
        9 CALL                             R5 1 1
       10 NAMECALL                         R2 R2 K3 ["format"]
       12 CALL                             R2 3 1
       13 LOADK                            R3 K4 ["WARN"]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 3
       16 GETUPVAL                         R2 4
       17 GETTABLEKS                       R2 R2 K5 ["InventoryFolderStatus"]
       19 GETTABLEKS                       R2 R2 K6 ["FoldersNotReady"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["CreateGetItemsRequest"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Id"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K2 ["Type"]
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R6 R6 K3 ["ScopeType"]
       12 GETTABLEKS                       R6 R6 K4 ["User"]
       14 JUMPIFNOTEQ                      R5 R6 ; [+3]
       16 LOADK                            R4 K5 ["users"]
       17 JUMP                             ; [+19]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K3 ["ScopeType"]
       21 GETTABLEKS                       R6 R6 K6 ["Group"]
       23 JUMPIFNOTEQ                      R5 R6 ; [+3]
       25 LOADK                            R4 K7 ["groups"]
       26 JUMP                             ; [+10]
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R6 R6 K3 ["ScopeType"]
       30 GETTABLEKS                       R6 R6 K8 ["Universe"]
       32 JUMPIFNOTEQ                      R5 R6 ; [+3]
       34 LOADK                            R4 K9 ["universes"]
       35 JUMP                             ; [+1]
       36 LOADK                            R4 K10 [""]
       37 LOADNIL                          R5
       38 GETUPVAL                         R6 3
       39 CALL                             R2 4 1
       40 NAMECALL                         R2 R2 K11 ["makeRequest"]
       42 CALL                             R2 1 1
       43 NEWCLOSURE                       R4 P0
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R1
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          UPVAL U6
       50 CAPTURE                          UPVAL U1
       51 CAPTURE                          UPVAL U7
       52 CAPTURE                          UPVAL U8
       53 NAMECALL                         R2 R2 K12 ["andThen"]
       55 CALL                             R2 2 1
       56 NEWCLOSURE                       R4 P1
       57 CAPTURE                          UPVAL U6
       58 CAPTURE                          UPVAL U1
       59 CAPTURE                          UPVAL U9
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U2
       62 NAMECALL                         R2 R2 K13 ["catch"]
       64 CALL                             R2 2 0
       65 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADN                            R4 0
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R1 K2 [{[1] = 1}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U6
       12 GETUPVAL                         R3 7
       13 GETTABLEKS                       R3 R3 K3 ["new"]
       15 NEWCLOSURE                       R4 P1
       16 CAPTURE                          VAL R2
       17 CALL                             R3 1 -1
       18 RETURN                           R3 -1

PROTO_18:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R4 R0
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 GETTABLEKS                       R9 R8 K0 ["folderItem"]
       10 JUMPIFNOT                        R9 ; [+23]
       11 GETTABLEKS                       R9 R8 K0 ["folderItem"]
       13 GETUPVAL                         R10 0
       14 MOVE                             R11 R9
       15 MOVE                             R12 R1
       16 GETTABLEKS                       R13 R8 K1 ["path"]
       18 GETUPVAL                         R15 1
       19 GETTABLEKS                       R15 R15 K2 ["_fetchTotalAssets"]
       21 ADD                              R14 R15 R7
       22 CALL                             R10 4 1
       23 FASTCALL2                        TABLE_INSERT R2 R10 ; [+5]
       25 MOVE                             R12 R2
       26 MOVE                             R13 R10
       27 GETIMPORT                        R11 K5 [table.insert]
       29 CALL                             R11 2 0
       30 GETTABLEKS                       R11 R1 K6 ["Name"]
       32 SETTABLE                         R1 R3 R11
       33 JUMP                             ; [+264]
       34 GETUPVAL                         R9 2
       35 MOVE                             R10 R8
       36 CALL                             R9 1 1
       37 JUMPIF                           R9 ; [+12]
       38 GETUPVAL                         R9 3
       39 LOADK                            R10 K7 ["Could not convert asset response for asset %*"]
       40 GETUPVAL                         R12 4
       41 GETTABLEKS                       R12 R12 K8 ["pretty"]
       43 MOVE                             R13 R8
       44 CALL                             R12 1 1
       45 NAMECALL                         R10 R10 K9 ["format"]
       47 CALL                             R10 2 1
       48 CALL                             R9 1 0
       49 JUMP                             ; [+248]
       50 GETTABLEKS                       R9 R8 K10 ["assetItem"]
       52 GETTABLEKS                       R10 R9 K11 ["asset"]
       54 GETTABLEKS                       R12 R9 K12 ["sources"]
       56 JUMPIFNOT                        R12 ; [+4]
       57 GETTABLEKS                       R12 R9 K12 ["sources"]
       59 GETTABLEN                        R11 R12 1
       60 JUMP                             ; [+1]
       61 LOADNIL                          R11
       62 GETTABLEKS                       R12 R9 K11 ["asset"]
       64 GETTABLEKS                       R12 R12 K13 ["creationContext"]
       66 GETTABLEKS                       R12 R12 K14 ["creator"]
       68 GETTABLEKS                       R14 R12 K15 ["userId"]
       70 JUMPIFNOT                        R14 ; [+3]
       71 GETTABLEKS                       R13 R12 K15 ["userId"]
       73 JUMP                             ; [+2]
       74 GETTABLEKS                       R13 R12 K16 ["groupId"]
       76 GETTABLEKS                       R15 R12 K17 ["name"]
       78 JUMPIFNOT                        R15 ; [+3]
       79 GETTABLEKS                       R14 R12 K17 ["name"]
       81 JUMP                             ; [+5]
       82 FASTCALL1                        TOSTRING R13 ; [+3]
       83 MOVE                             R15 R13
       84 GETIMPORT                        R14 K19 [tostring]
       86 CALL                             R14 1 1
       87 GETTABLEKS                       R16 R12 K15 ["userId"]
       89 JUMPIFNOT                        R16 ; [+6]
       90 GETUPVAL                         R15 5
       91 GETTABLEKS                       R15 R15 K20 ["ScopeType"]
       93 GETTABLEKS                       R15 R15 K21 ["User"]
       95 JUMP                             ; [+5]
       96 GETUPVAL                         R15 5
       97 GETTABLEKS                       R15 R15 K20 ["ScopeType"]
       99 GETTABLEKS                       R15 R15 K22 ["Group"]
      101 LOADNIL                          R16
      102 GETUPVAL                         R17 6
      103 CALL                             R17 0 1
      104 JUMPIFNOT                        R17 ; [+7]
      105 GETTABLEKS                       R17 R10 K23 ["state"]
      107 JUMPIFEQKS                       R17 K24 ["Archived"] ; [+2]
      109 LOADB                            R16 0 +1
      110 LOADB                            R16 1
      111 JUMP                             ; [+22]
      112 GETUPVAL                         R17 7
      113 CALL                             R17 0 1
      114 JUMPIFNOT                        R17 ; [+13]
      115 LOADB                            R17 1
      116 GETTABLEKS                       R18 R10 K23 ["state"]
      118 JUMPIFEQKS                       R18 K25 ["STATE_ARCHIVED"] ; [+7]
      120 GETTABLEKS                       R18 R10 K23 ["state"]
      122 JUMPIFEQKS                       R18 K24 ["Archived"] ; [+2]
      124 LOADB                            R17 0 +1
      125 LOADB                            R17 1
      126 MOVE                             R16 R17
      127 JUMP                             ; [+6]
      128 GETTABLEKS                       R17 R10 K23 ["state"]
      130 JUMPIFEQKS                       R17 K25 ["STATE_ARCHIVED"] ; [+2]
      132 LOADB                            R16 0 +1
      133 LOADB                            R16 1
      134 JUMPIFNOTEQKNIL                  R11 ; [+7]
      136 GETUPVAL                         R17 5
      137 GETTABLEKS                       R17 R17 K26 ["AssetSource"]
      139 GETTABLEKS                       R17 R17 K27 ["Unknown"]
      141 JUMP                             ; [+32]
      142 GETTABLEKS                       R18 R11 K28 ["createdDetails"]
      144 JUMPIFNOT                        R18 ; [+6]
      145 GETUPVAL                         R17 5
      146 GETTABLEKS                       R17 R17 K26 ["AssetSource"]
      148 GETTABLEKS                       R17 R17 K29 ["Uploaded"]
      150 JUMP                             ; [+23]
      151 GETTABLEKS                       R18 R11 K30 ["purchasedDetails"]
      153 JUMPIFNOT                        R18 ; [+6]
      154 GETUPVAL                         R17 5
      155 GETTABLEKS                       R17 R17 K26 ["AssetSource"]
      157 GETTABLEKS                       R17 R17 K31 ["CreatorStore"]
      159 JUMP                             ; [+14]
      160 GETTABLEKS                       R18 R11 K32 ["sharedDetails"]
      162 JUMPIFNOT                        R18 ; [+6]
      163 GETUPVAL                         R17 5
      164 GETTABLEKS                       R17 R17 K26 ["AssetSource"]
      166 GETTABLEKS                       R17 R17 K33 ["SharedWithMe"]
      168 JUMP                             ; [+5]
      169 GETUPVAL                         R17 5
      170 GETTABLEKS                       R17 R17 K26 ["AssetSource"]
      172 GETTABLEKS                       R17 R17 K27 ["Unknown"]
      174 GETUPVAL                         R18 8
      175 GETTABLEKS                       R19 R10 K34 ["createTime"]
      177 CALL                             R18 1 1
      178 GETUPVAL                         R19 8
      179 GETTABLEKS                       R20 R10 K35 ["updateTime"]
      181 CALL                             R19 1 1
      182 DUPTABLE                         R20 K49 [{"Path", "AssetId", "AssetType", "DisplayName", "VersionNumber", "Created", "Modified", "ModerationStatus", "DraftStatus", "Creator", "Source", "Archived", "IsPackage", "SearchRank"}]
      183 GETTABLEKS                       R22 R8 K1 ["path"]
      185 JUMPIFNOT                        R22 ; [+7]
      186 GETTABLEKS                       R22 R8 K1 ["path"]
      188 JUMPIFEQKS                       R22 K50 [""] ; [+4]
      190 GETTABLEKS                       R21 R8 K1 ["path"]
      192 JUMP                             ; [+5]
      193 GETUPVAL                         R21 9
      194 MOVE                             R22 R1
      195 GETTABLEKS                       R23 R10 K51 ["assetId"]
      197 CALL                             R21 2 1
      198 SETTABLEKS                       R21 R20 K36 ["Path"]
      200 GETTABLEKS                       R21 R10 K51 ["assetId"]
      202 SETTABLEKS                       R21 R20 K37 ["AssetId"]
      204 GETUPVAL                         R21 10
      205 GETTABLEKS                       R22 R10 K52 ["assetType"]
      207 CALL                             R21 1 1
      208 SETTABLEKS                       R21 R20 K38 ["AssetType"]
      210 GETTABLEKS                       R21 R10 K53 ["displayName"]
      212 SETTABLEKS                       R21 R20 K39 ["DisplayName"]
      214 GETUPVAL                         R22 11
      215 CALL                             R22 0 1
      216 JUMPIFNOT                        R22 ; [+7]
      217 GETTABLEKS                       R22 R10 K54 ["revisionId"]
      219 FASTCALL1                        TONUMBER R22 ; [+2]
      220 GETIMPORT                        R21 K56 [tonumber]
      222 CALL                             R21 1 1
      223 JUMP                             ; [+1]
      224 LOADNIL                          R21
      225 SETTABLEKS                       R21 R20 K40 ["VersionNumber"]
      227 SETTABLEKS                       R18 R20 K41 ["Created"]
      229 SETTABLEKS                       R19 R20 K42 ["Modified"]
      231 GETTABLEKS                       R22 R10 K57 ["moderationResult"]
      233 JUMPIFNOT                        R22 ; [+5]
      234 GETTABLEKS                       R21 R10 K57 ["moderationResult"]
      236 GETTABLEKS                       R21 R21 K58 ["moderationState"]
      238 JUMP                             ; [+5]
      239 GETUPVAL                         R21 5
      240 GETTABLEKS                       R21 R21 K43 ["ModerationStatus"]
      242 GETTABLEKS                       R21 R21 K59 ["Placeholder"]
      244 SETTABLEKS                       R21 R20 K43 ["ModerationStatus"]
      246 GETUPVAL                         R22 12
      247 CALL                             R22 0 1
      248 JUMPIFNOT                        R22 ; [+3]
      249 GETTABLEKS                       R21 R10 K60 ["versionStatus"]
      251 JUMP                             ; [+1]
      252 LOADNIL                          R21
      253 SETTABLEKS                       R21 R20 K44 ["DraftStatus"]
      255 DUPTABLE                         R21 K64 [{"Id", "Name", "Type", "Uid"}]
      256 SETTABLEKS                       R13 R21 K61 ["Id"]
      258 SETTABLEKS                       R14 R21 K6 ["Name"]
      260 SETTABLEKS                       R15 R21 K62 ["Type"]
      262 GETUPVAL                         R22 13
      263 MOVE                             R23 R15
      264 MOVE                             R24 R13
      265 CALL                             R22 2 1
      266 SETTABLEKS                       R22 R21 K63 ["Uid"]
      268 SETTABLEKS                       R21 R20 K45 ["Creator"]
      270 SETTABLEKS                       R17 R20 K46 ["Source"]
      272 SETTABLEKS                       R16 R20 K24 ["Archived"]
      274 GETTABLEKS                       R21 R9 K65 ["isPackage"]
      276 SETTABLEKS                       R21 R20 K47 ["IsPackage"]
      278 GETUPVAL                         R22 1
      279 GETTABLEKS                       R22 R22 K2 ["_fetchTotalAssets"]
      281 ADD                              R21 R22 R7
      282 SETTABLEKS                       R21 R20 K48 ["SearchRank"]
      284 FASTCALL2                        TABLE_INSERT R2 R20 ; [+5]
      286 MOVE                             R22 R2
      287 MOVE                             R23 R20
      288 GETIMPORT                        R21 K5 [table.insert]
      290 CALL                             R21 2 0
      291 GETTABLEKS                       R21 R20 K45 ["Creator"]
      293 GETTABLEKS                       R21 R21 K6 ["Name"]
      295 GETTABLEKS                       R22 R20 K45 ["Creator"]
      297 SETTABLE                         R22 R3 R21
      298 FORGLOOP                         R4 2 ; [-291]
      300 RETURN                           R2 2

PROTO_19:
        0 JUMPIFEQKN                       R2 K0 [200] ; [+21]
        2 MOVE                             R5 R4
        3 FASTCALL1                        TOSTRING R2 ; [+3]
        4 MOVE                             R7 R2
        5 GETIMPORT                        R6 K2 [tostring]
        7 CALL                             R6 1 1
        8 MOVE                             R7 R2
        9 CALL                             R5 2 0
       10 MOVE                             R5 R3
       11 NEWTABLE                         R6 0 0
       13 NEWTABLE                         R7 0 0
       15 MOVE                             R8 R0
       16 CALL                             R5 3 0
       17 MOVE                             R5 R1
       18 LOADB                            R6 0
       19 CALL                             R5 1 0
       20 LOADB                            R5 0
       21 RETURN                           R5 1
       22 LOADB                            R5 1
       23 RETURN                           R5 1

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["_checkResponse"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["FetchSessionId"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K3 ["Resolve"]
       11 GETTABLEKS                       R5 R0 K4 ["responseCode"]
       13 GETUPVAL                         R6 2
       14 GETUPVAL                         R7 3
       15 CALL                             R2 5 1
       16 JUMPIF                           R2 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R4 4
       19 GETTABLEKS                       R4 R4 K5 ["Type"]
       21 GETUPVAL                         R5 5
       22 GETTABLEKS                       R5 R5 K6 ["ScopeType"]
       24 GETTABLEKS                       R5 R5 K7 ["Folder"]
       26 JUMPIFNOTEQ                      R4 R5 ; [+9]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R4 R4 K8 ["RootScope"]
       31 JUMPIFNOT                        R4 ; [+4]
       32 GETUPVAL                         R3 1
       33 GETTABLEKS                       R3 R3 K8 ["RootScope"]
       35 JUMP                             ; [+1]
       36 GETUPVAL                         R3 4
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R4 R4 K9 ["_convertResponseToItemsData"]
       40 GETTABLEKS                       R5 R1 K10 ["items"]
       42 MOVE                             R6 R3
       43 CALL                             R4 2 2
       44 LENGTH                           R6 R4
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R8 R7 K11 ["_fetchTotalAssets"]
       48 ADD                              R8 R8 R6
       49 SETTABLEKS                       R8 R7 K11 ["_fetchTotalAssets"]
       51 GETTABLEKS                       R6 R1 K12 ["nextPageToken"]
       53 GETUPVAL                         R7 2
       54 MOVE                             R8 R4
       55 MOVE                             R9 R5
       56 GETUPVAL                         R10 1
       57 GETTABLEKS                       R10 R10 K2 ["FetchSessionId"]
       59 LOADNIL                          R11
       60 MOVE                             R12 R6
       61 CALL                             R7 5 1
       62 MOVE                             R2 R7
       63 JUMPIF                           R2 ; [+6]
       64 GETUPVAL                         R7 1
       65 GETTABLEKS                       R7 R7 K3 ["Resolve"]
       67 LOADB                            R8 0
       68 CALL                             R7 1 0
       69 RETURN                           R0 0
       70 GETUPVAL                         R7 1
       71 SETTABLEKS                       R6 R7 K13 ["PageToken"]
       73 GETUPVAL                         R7 0
       74 GETTABLEKS                       R7 R7 K14 ["_fetchAssetsImplAsync"]
       76 GETUPVAL                         R8 1
       77 GETUPVAL                         R9 2
       78 GETUPVAL                         R10 3
       79 GETUPVAL                         R11 6
       80 CALL                             R7 4 0
       81 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["pretty"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R2 R0 K1 ["responseBody"]
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 3
       12 NEWTABLE                         R2 0 0
       14 NEWTABLE                         R3 0 0
       16 GETUPVAL                         R4 4
       17 GETTABLEKS                       R4 R4 K2 ["FetchSessionId"]
       19 LOADNIL                          R5
       20 LOADK                            R6 K3 [""]
       21 CALL                             R1 5 0
       22 GETUPVAL                         R1 4
       23 GETTABLEKS                       R1 R1 K4 ["Resolve"]
       25 LOADB                            R2 0
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_22:
        0 DUPTABLE                         R4 K2 [{"maxPageSize", "pageToken"}]
        1 GETTABLEKS                       R5 R0 K3 ["MaxPageSize"]
        3 SETTABLEKS                       R5 R4 K0 ["maxPageSize"]
        5 GETTABLEKS                       R5 R0 K4 ["PageToken"]
        7 SETTABLEKS                       R5 R4 K1 ["pageToken"]
        9 GETTABLEKS                       R5 R0 K5 ["ScopeInfo"]
       11 GETTABLEKS                       R7 R5 K6 ["Type"]
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R8 R8 K7 ["ScopeType"]
       16 GETTABLEKS                       R8 R8 K8 ["Folder"]
       18 JUMPIFNOTEQ                      R7 R8 ; [+4]
       20 GETTABLEKS                       R6 R5 K9 ["Path"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R6
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R7 R7 K10 ["CreateGetItemsRequest"]
       27 GETTABLEKS                       R8 R5 K11 ["Id"]
       29 GETTABLEKS                       R10 R5 K6 ["Type"]
       31 GETUPVAL                         R11 0
       32 GETTABLEKS                       R11 R11 K7 ["ScopeType"]
       34 GETTABLEKS                       R11 R11 K12 ["User"]
       36 JUMPIFNOTEQ                      R10 R11 ; [+3]
       38 LOADK                            R9 K13 ["users"]
       39 JUMP                             ; [+19]
       40 GETUPVAL                         R11 0
       41 GETTABLEKS                       R11 R11 K7 ["ScopeType"]
       43 GETTABLEKS                       R11 R11 K14 ["Group"]
       45 JUMPIFNOTEQ                      R10 R11 ; [+3]
       47 LOADK                            R9 K15 ["groups"]
       48 JUMP                             ; [+10]
       49 GETUPVAL                         R11 0
       50 GETTABLEKS                       R11 R11 K7 ["ScopeType"]
       52 GETTABLEKS                       R11 R11 K16 ["Universe"]
       54 JUMPIFNOTEQ                      R10 R11 ; [+3]
       56 LOADK                            R9 K17 ["universes"]
       57 JUMP                             ; [+1]
       58 LOADK                            R9 K18 [""]
       59 MOVE                             R10 R6
       60 MOVE                             R11 R4
       61 CALL                             R7 4 1
       62 NAMECALL                         R7 R7 K19 ["makeRequest"]
       64 CALL                             R7 1 1
       65 NEWCLOSURE                       R9 P0
       66 CAPTURE                          UPVAL U2
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R5
       71 CAPTURE                          UPVAL U0
       72 CAPTURE                          VAL R3
       73 NEWCLOSURE                       R10 P1
       74 CAPTURE                          UPVAL U3
       75 CAPTURE                          UPVAL U4
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R0
       79 NAMECALL                         R7 R7 K20 ["andThen"]
       81 CALL                             R7 3 0
       82 RETURN                           R0 0

PROTO_23:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 1 0
        4 GETTABLEKS                       R4 R1 K0 ["Name"]
        6 DUPTABLE                         R5 K4 [{"Id", "Name", "Type", "Uid"}]
        7 GETTABLEKS                       R6 R1 K1 ["Id"]
        9 SETTABLEKS                       R6 R5 K1 ["Id"]
       11 GETTABLEKS                       R6 R1 K0 ["Name"]
       13 SETTABLEKS                       R6 R5 K0 ["Name"]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K5 ["ScopeType"]
       18 GETTABLEKS                       R6 R6 K6 ["Universe"]
       20 SETTABLEKS                       R6 R5 K2 ["Type"]
       22 GETUPVAL                         R6 1
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K5 ["ScopeType"]
       26 GETTABLEKS                       R7 R7 K6 ["Universe"]
       28 GETTABLEKS                       R8 R1 K1 ["Id"]
       30 CALL                             R6 2 1
       31 SETTABLEKS                       R6 R5 K3 ["Uid"]
       33 SETTABLE                         R5 R3 R4
       34 LOADNIL                          R4
       35 GETTABLEKS                       R5 R0 K7 ["responseBody"]
       37 GETTABLEKS                       R6 R5 K8 ["data"]
       39 LOADNIL                          R7
       40 LOADNIL                          R8
       41 FORGPREP                         R6
       42 GETUPVAL                         R11 2
       43 GETTABLEKS                       R12 R10 K9 ["created"]
       45 CALL                             R11 1 1
       46 GETUPVAL                         R12 2
       47 GETTABLEKS                       R13 R10 K10 ["updated"]
       49 CALL                             R12 1 1
       50 DUPTABLE                         R13 K23 [{["Path"], ["AssetId"], ["AssetType"], ["DisplayName"], ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False, ["SearchRank"]}]
       51 GETUPVAL                         R14 3
       52 GETTABLEKS                       R16 R1 K0 ["Name"]
       54 GETTABLE                         R15 R3 R16
       55 GETTABLEKS                       R16 R10 K24 ["id"]
       57 CALL                             R14 2 1
       58 SETTABLEKS                       R14 R13 K11 ["Path"]
       60 GETTABLEKS                       R14 R10 K24 ["id"]
       62 SETTABLEKS                       R14 R13 K12 ["AssetId"]
       64 GETUPVAL                         R14 0
       65 GETTABLEKS                       R14 R14 K13 ["AssetType"]
       67 GETTABLEKS                       R14 R14 K25 ["Place"]
       69 SETTABLEKS                       R14 R13 K13 ["AssetType"]
       71 GETTABLEKS                       R14 R10 K26 ["name"]
       73 SETTABLEKS                       R14 R13 K14 ["DisplayName"]
       75 SETTABLEKS                       R11 R13 K15 ["Created"]
       77 SETTABLEKS                       R12 R13 K16 ["Modified"]
       79 GETUPVAL                         R14 0
       80 GETTABLEKS                       R14 R14 K17 ["ModerationStatus"]
       82 GETTABLEKS                       R14 R14 K27 ["Placeholder"]
       84 SETTABLEKS                       R14 R13 K17 ["ModerationStatus"]
       86 GETTABLEKS                       R15 R1 K0 ["Name"]
       88 GETTABLE                         R14 R3 R15
       89 SETTABLEKS                       R14 R13 K18 ["Creator"]
       91 GETUPVAL                         R14 0
       92 GETTABLEKS                       R14 R14 K28 ["AssetSource"]
       94 GETTABLEKS                       R14 R14 K29 ["Uploaded"]
       96 SETTABLEKS                       R14 R13 K19 ["Source"]
       98 GETUPVAL                         R15 4
       99 GETTABLEKS                       R15 R15 K30 ["_fetchTotalAssets"]
      101 ADD                              R14 R15 R9
      102 SETTABLEKS                       R14 R13 K22 ["SearchRank"]
      104 FASTCALL2                        TABLE_INSERT R2 R13 ; [+5]
      106 MOVE                             R15 R2
      107 MOVE                             R16 R13
      108 GETIMPORT                        R14 K33 [table.insert]
      110 CALL                             R14 2 0
      111 GETTABLEKS                       R14 R10 K34 ["isRootPlace"]
      113 JUMPIFNOT                        R14 ; [+2]
      114 GETTABLEKS                       R4 R10 K24 ["id"]
      116 FORGLOOP                         R6 2 ; [-75]
      118 MOVE                             R6 R2
      119 MOVE                             R7 R3
      120 MOVE                             R8 R4
      121 GETTABLEKS                       R9 R5 K35 ["nextPageCursor"]
      123 RETURN                           R6 4

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_parseFetchPlacesResponse"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["ScopeInfo"]
        7 CALL                             R1 2 4
        8 LENGTH                           R5 R1
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R7 R6 K2 ["_fetchTotalAssets"]
       12 ADD                              R7 R7 R5
       13 SETTABLEKS                       R7 R6 K2 ["_fetchTotalAssets"]
       15 GETUPVAL                         R5 2
       16 MOVE                             R6 R1
       17 MOVE                             R7 R2
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R8 R8 K3 ["FetchSessionId"]
       21 MOVE                             R9 R3
       22 MOVE                             R10 R4
       23 CALL                             R5 5 1
       24 JUMPIF                           R5 ; [+6]
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K4 ["Resolve"]
       28 LOADB                            R7 0
       29 CALL                             R6 1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R7 R0 K5 ["responseBody"]
       34 GETTABLEKS                       R7 R7 K6 ["nextPageCursor"]
       36 SETTABLEKS                       R7 R6 K7 ["PageToken"]
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K8 ["fetchPlacesAsync"]
       41 GETUPVAL                         R7 1
       42 GETUPVAL                         R8 2
       43 GETUPVAL                         R9 3
       44 CALL                             R6 3 0
       45 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 NEWTABLE                         R3 0 0
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K0 ["FetchSessionId"]
       11 CALL                             R1 3 0
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K1 ["Resolve"]
       15 LOADB                            R2 0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R3 R0 K0 ["ScopeInfo"]
        2 GETTABLEKS                       R3 R3 K1 ["Type"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["ScopeType"]
        7 GETTABLEKS                       R4 R4 K3 ["ProjectPlaces"]
        9 JUMPIFEQ                         R3 R4 ; [+6]
       11 GETTABLEKS                       R3 R0 K4 ["Resolve"]
       13 LOADB                            R4 0
       14 CALL                             R3 1 0
       15 RETURN                           R0 0
       16 GETTABLEKS                       R4 R0 K6 ["PageToken"]
       18 ORK                              R3 R4 K5 [""]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K7 ["CreateFetchPlacesRequest"]
       22 GETTABLEKS                       R5 R0 K0 ["ScopeInfo"]
       24 GETTABLEKS                       R5 R5 K8 ["Id"]
       26 MOVE                             R6 R3
       27 LOADN                            R7 100
       28 CALL                             R4 3 1
       29 NAMECALL                         R4 R4 K9 ["makeRequest"]
       31 CALL                             R4 1 1
       32 NEWCLOSURE                       R6 P0
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 NEWCLOSURE                       R7 P1
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R0
       41 NAMECALL                         R4 R4 K10 ["andThen"]
       43 CALL                             R4 3 0
       44 RETURN                           R0 0

PROTO_27:
        0 GETTABLEKS                       R3 R0 K0 ["ScopeInfo"]
        2 GETTABLEKS                       R3 R3 K1 ["Type"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["ScopeType"]
        7 GETTABLEKS                       R4 R4 K3 ["ProjectPlaces"]
        9 JUMPIFNOTEQ                      R3 R4 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K4 ["_fetchAssetsImplAsync"]
       15 MOVE                             R4 R0
       16 MOVE                             R5 R1
       17 MOVE                             R6 R2
       18 CALL                             R3 3 0
       19 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_checkResponse"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["FetchSessionId"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["Resolve"]
        9 GETTABLEKS                       R4 R0 K3 ["responseCode"]
       11 GETUPVAL                         R5 2
       12 GETUPVAL                         R6 3
       13 CALL                             R1 5 1
       14 JUMPIF                           R1 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K4 ["_convertResponseToItemsData"]
       19 GETTABLEKS                       R3 R0 K5 ["responseBody"]
       21 GETTABLEKS                       R3 R3 K6 ["items"]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K7 ["ScopeInfo"]
       26 CALL                             R2 2 2
       27 LENGTH                           R4 R2
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R6 R5 K8 ["_fetchTotalAssets"]
       31 ADD                              R6 R6 R4
       32 SETTABLEKS                       R6 R5 K8 ["_fetchTotalAssets"]
       34 GETUPVAL                         R4 2
       35 MOVE                             R5 R2
       36 MOVE                             R6 R3
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R7 R7 K1 ["FetchSessionId"]
       40 LOADNIL                          R8
       41 GETTABLEKS                       R9 R0 K5 ["responseBody"]
       43 GETTABLEKS                       R9 R9 K9 ["nextPageToken"]
       45 CALL                             R4 5 1
       46 MOVE                             R1 R4
       47 JUMPIF                           R1 ; [+6]
       48 GETUPVAL                         R4 1
       49 GETTABLEKS                       R4 R4 K2 ["Resolve"]
       51 LOADB                            R5 0
       52 CALL                             R4 1 0
       53 RETURN                           R0 0
       54 GETUPVAL                         R4 1
       55 GETTABLEKS                       R5 R0 K5 ["responseBody"]
       57 GETTABLEKS                       R5 R5 K9 ["nextPageToken"]
       59 SETTABLEKS                       R5 R4 K10 ["PageToken"]
       61 GETUPVAL                         R4 0
       62 GETTABLEKS                       R4 R4 K11 ["_searchAssetsImplAsync"]
       64 GETUPVAL                         R5 1
       65 GETUPVAL                         R6 2
       66 GETUPVAL                         R7 3
       67 CALL                             R4 3 0
       68 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["pretty"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 GETUPVAL                         R1 2
        8 NEWTABLE                         R2 0 0
       10 NEWTABLE                         R3 0 0
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K1 ["FetchSessionId"]
       15 CALL                             R1 3 0
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R1 R1 K2 ["Resolve"]
       19 LOADB                            R2 0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_30:
        0 DUPTABLE                         R3 K2 [{"Type", "Id"}]
        1 GETTABLEKS                       R4 R0 K3 ["ScopeInfo"]
        3 GETTABLEKS                       R4 R4 K0 ["Type"]
        5 SETTABLEKS                       R4 R3 K0 ["Type"]
        7 GETTABLEKS                       R4 R0 K3 ["ScopeInfo"]
        9 GETTABLEKS                       R4 R4 K1 ["Id"]
       11 SETTABLEKS                       R4 R3 K1 ["Id"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K4 ["CreateSearchAssetsRequest"]
       16 GETTABLEKS                       R5 R0 K5 ["SearchTerm"]
       18 GETTABLEKS                       R6 R0 K6 ["AssetType"]
       20 MOVE                             R7 R3
       21 GETTABLEKS                       R8 R0 K7 ["MaxPageSize"]
       23 GETTABLEKS                       R9 R0 K8 ["PageToken"]
       25 GETTABLEKS                       R10 R0 K9 ["IncludeFolders"]
       27 CALL                             R4 6 1
       28 NAMECALL                         R4 R4 K10 ["makeRequest"]
       30 CALL                             R4 1 1
       31 NEWCLOSURE                       R6 P0
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 NEWCLOSURE                       R7 P1
       37 CAPTURE                          VAL R2
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R0
       41 NAMECALL                         R4 R4 K11 ["andThen"]
       43 CALL                             R4 3 0
       44 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["_searchAssetsImplAsync"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 RETURN                           R0 0

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R2 R0 K1 ["responseCode"]
        4 JUMPIFEQKN                       R2 K2 [200] ; [+13]
        6 GETUPVAL                         R2 0
        7 LOADK                            R3 K3 ["Failed to grant permissions to assets: %*"]
        8 GETTABLEKS                       R5 R0 K1 ["responseCode"]
       10 NAMECALL                         R3 R3 K4 ["format"]
       12 CALL                             R3 2 1
       13 CALL                             R2 1 0
       14 LOADB                            R2 0
       15 NEWTABLE                         R3 0 0
       17 RETURN                           R2 2
       18 GETTABLEKS                       R2 R1 K5 ["errors"]
       20 JUMPIFNOT                        R2 ; [+21]
       21 GETTABLEKS                       R3 R1 K5 ["errors"]
       23 LENGTH                           R2 R3
       24 JUMPIFEQKN                       R2 K6 [0] ; [+17]
       26 GETUPVAL                         R2 0
       27 LOADK                            R3 K7 ["Failed to grant permissions to assets: %*\")"]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K8 ["pretty"]
       31 GETTABLEKS                       R6 R1 K5 ["errors"]
       33 CALL                             R5 1 1
       34 NAMECALL                         R3 R3 K4 ["format"]
       36 CALL                             R3 2 1
       37 CALL                             R2 1 0
       38 LOADB                            R2 0
       39 GETTABLEKS                       R3 R1 K5 ["errors"]
       41 RETURN                           R2 2
       42 LOADB                            R2 1
       43 NEWTABLE                         R3 0 0
       45 RETURN                           R2 2

PROTO_33:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Failed to grant permissions to assets: %* %*"]
        2 GETTABLEKS                       R4 R0 K1 ["responseCode"]
        4 GETTABLEKS                       R5 R0 K2 ["requestErrorMessage"]
        6 NAMECALL                         R2 R2 K3 ["format"]
        8 CALL                             R2 3 1
        9 CALL                             R1 1 0
       10 LOADB                            R1 0
       11 NEWTABLE                         R2 0 0
       13 RETURN                           R1 2

PROTO_34:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["PatchAssetsPermissionsRequest"]
        6 MOVE                             R4 R2
        7 LOADK                            R5 K1 ["Universe"]
        8 MOVE                             R6 R1
        9 LOADK                            R7 K2 ["Use"]
       10 CALL                             R3 4 1
       11 NAMECALL                         R3 R3 K3 ["makeRequest"]
       13 CALL                             R3 1 1
       14 DUPCLOSURE                       R5 K4 [PROTO_32]
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 NAMECALL                         R3 R3 K5 ["andThen"]
       19 CALL                             R3 2 1
       20 DUPCLOSURE                       R5 K6 [PROTO_33]
       21 CAPTURE                          UPVAL U2
       22 NAMECALL                         R3 R3 K7 ["catch"]
       24 CALL                             R3 2 1
       25 NAMECALL                         R3 R3 K8 ["await"]
       27 CALL                             R3 1 2
       28 RETURN                           R3 2

PROTO_35:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R2 R0 K1 ["responseCode"]
        4 JUMPIFEQKN                       R2 K2 [200] ; [+15]
        6 GETUPVAL                         R2 0
        7 LOADK                            R3 K3 ["Failed to grant permissions to assets: %*"]
        8 GETTABLEKS                       R5 R0 K1 ["responseCode"]
       10 NAMECALL                         R3 R3 K4 ["format"]
       12 CALL                             R3 2 1
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 1
       15 LOADB                            R3 0
       16 NEWTABLE                         R4 0 0
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1
       20 GETTABLEKS                       R2 R1 K5 ["errors"]
       22 JUMPIFNOT                        R2 ; [+23]
       23 GETTABLEKS                       R3 R1 K5 ["errors"]
       25 LENGTH                           R2 R3
       26 JUMPIFEQKN                       R2 K6 [0] ; [+19]
       28 GETUPVAL                         R2 0
       29 LOADK                            R3 K7 ["Failed to grant permissions to assets: %*\")"]
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R5 R5 K8 ["pretty"]
       33 GETTABLEKS                       R6 R1 K5 ["errors"]
       35 CALL                             R5 1 1
       36 NAMECALL                         R3 R3 K4 ["format"]
       38 CALL                             R3 2 1
       39 CALL                             R2 1 0
       40 GETUPVAL                         R2 1
       41 LOADB                            R3 0
       42 GETTABLEKS                       R4 R1 K5 ["errors"]
       44 CALL                             R2 2 -1
       45 RETURN                           R2 -1
       46 GETUPVAL                         R2 1
       47 LOADB                            R3 1
       48 NEWTABLE                         R4 0 0
       50 CALL                             R2 2 -1
       51 RETURN                           R2 -1

PROTO_36:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Failed to grant permissions to assets: %* %*"]
        2 GETTABLEKS                       R4 R0 K1 ["responseCode"]
        4 GETTABLEKS                       R5 R0 K2 ["requestErrorMessage"]
        6 NAMECALL                         R2 R2 K3 ["format"]
        8 CALL                             R2 3 1
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 1
       11 LOADB                            R2 0
       12 NEWTABLE                         R3 0 0
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

PROTO_37:
        0 GETUPVAL                         R6 0
        1 MOVE                             R7 R0
        2 MOVE                             R8 R4
        3 CALL                             R6 2 1
        4 GETUPVAL                         R7 1
        5 GETTABLEKS                       R7 R7 K0 ["PatchAssetsPermissionsRequest"]
        7 MOVE                             R8 R6
        8 GETUPVAL                         R10 2
        9 GETTABLEKS                       R10 R10 K1 ["PermissionsSubject"]
       11 GETTABLE                         R9 R10 R1
       12 MOVE                             R10 R2
       13 GETUPVAL                         R12 2
       14 GETTABLEKS                       R12 R12 K2 ["PermissionsAction"]
       16 GETTABLE                         R11 R12 R3
       17 CALL                             R7 4 1
       18 NAMECALL                         R7 R7 K3 ["makeRequest"]
       20 CALL                             R7 1 1
       21 NEWCLOSURE                       R9 P0
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          VAL R5
       24 CAPTURE                          UPVAL U4
       25 NAMECALL                         R7 R7 K4 ["andThen"]
       27 CALL                             R7 2 1
       28 NEWCLOSURE                       R9 P1
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R5
       31 NAMECALL                         R7 R7 K5 ["catch"]
       33 CALL                             R7 2 0
       34 RETURN                           R0 0

PROTO_38:
        0 GETTABLEKS                       R1 R0 K0 ["responseCode"]
        2 JUMPIFEQKN                       R1 K1 [200] ; [+15]
        4 GETUPVAL                         R1 0
        5 LOADK                            R2 K2 ["Failed to check permissions for assets: %*"]
        6 GETTABLEKS                       R4 R0 K0 ["responseCode"]
        8 NAMECALL                         R2 R2 K3 ["format"]
       10 CALL                             R2 2 1
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 1
       13 LOADB                            R2 0
       14 NEWTABLE                         R3 0 0
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1
       18 GETTABLEKS                       R1 R0 K4 ["responseBody"]
       20 GETUPVAL                         R2 1
       21 LOADB                            R3 1
       22 GETTABLEKS                       R4 R1 K5 ["results"]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Failed to check permissions for assets: %* %*"]
        2 GETTABLEKS                       R4 R0 K1 ["responseCode"]
        4 GETTABLEKS                       R5 R0 K2 ["requestErrorMessage"]
        6 NAMECALL                         R2 R2 K3 ["format"]
        8 CALL                             R2 3 1
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 1
       11 LOADB                            R2 0
       12 NEWTABLE                         R3 0 0
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

PROTO_40:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 MOVE                             R8 R3
        4 MOVE                             R9 R0
        5 CALL                             R5 4 1
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R6 R6 K0 ["CheckAssetsPermissionsRequest"]
        9 MOVE                             R7 R5
       10 CALL                             R6 1 1
       11 NAMECALL                         R6 R6 K1 ["makeRequest"]
       13 CALL                             R6 1 1
       14 NEWCLOSURE                       R8 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R4
       17 NAMECALL                         R6 R6 K2 ["andThen"]
       19 CALL                             R6 2 1
       20 NEWCLOSURE                       R8 P1
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R4
       23 NAMECALL                         R6 R6 K3 ["catch"]
       25 CALL                             R6 2 0
       26 RETURN                           R0 0

PROTO_41:
        0 GETTABLEKS                       R1 R0 K0 ["Type"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["ScopeType"]
        5 GETTABLEKS                       R2 R2 K2 ["User"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+8]
        9 LOADK                            R1 K3 ["rbxthumb://type=AvatarHeadShot&id=%*&w=150&h=150"]
       10 GETTABLEKS                       R3 R0 K4 ["Id"]
       12 NAMECALL                         R1 R1 K5 ["format"]
       14 CALL                             R1 2 1
       15 RETURN                           R1 1
       16 GETTABLEKS                       R1 R0 K0 ["Type"]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K1 ["ScopeType"]
       21 GETTABLEKS                       R2 R2 K6 ["Group"]
       23 JUMPIFNOTEQ                      R1 R2 ; [+8]
       25 LOADK                            R1 K7 ["rbxthumb://type=GroupIcon&id=%*&w=150&h=150"]
       26 GETTABLEKS                       R3 R0 K4 ["Id"]
       28 NAMECALL                         R1 R1 K5 ["format"]
       30 CALL                             R1 2 1
       31 RETURN                           R1 1
       32 GETTABLEKS                       R1 R0 K0 ["Type"]
       34 GETUPVAL                         R2 0
       35 GETTABLEKS                       R2 R2 K1 ["ScopeType"]
       37 GETTABLEKS                       R2 R2 K8 ["Universe"]
       39 JUMPIFEQ                         R1 R2 ; [+10]
       41 GETTABLEKS                       R1 R0 K0 ["Type"]
       43 GETUPVAL                         R2 0
       44 GETTABLEKS                       R2 R2 K1 ["ScopeType"]
       46 GETTABLEKS                       R2 R2 K9 ["ProjectPlaces"]
       48 JUMPIFNOTEQ                      R1 R2 ; [+8]
       50 LOADK                            R1 K10 ["rbxthumb://type=GameIcon&id=%*&w=150&h=150"]
       51 GETTABLEKS                       R3 R0 K4 ["Id"]
       53 NAMECALL                         R1 R1 K5 ["format"]
       55 CALL                             R1 2 1
       56 RETURN                           R1 1
       57 GETUPVAL                         R1 1
       58 LOADK                            R2 K11 ["ExplorerRow: Unsupported Scope type for image icon %*"]
       59 GETTABLEKS                       R4 R0 K0 ["Type"]
       61 NAMECALL                         R2 R2 K5 ["format"]
       63 CALL                             R2 2 1
       64 CALL                             R1 1 0
       65 LOADK                            R1 K12 [""]
       66 RETURN                           R1 1

PROTO_42:
        0 GETIMPORT                        R2 K3 [Enum.AssetFetchStatus.Success]
        2 JUMPIFNOTEQ                      R1 R2 ; [+5]
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 2
        9 LOADK                            R3 K4 ["Failed to fetch thumbnail for scope %*"]
       10 GETUPVAL                         R5 3
       11 NAMECALL                         R3 R3 K5 ["format"]
       13 CALL                             R3 2 1
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 0
       16 LOADK                            R3 K6 [""]
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getThumbnailUriForScope"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 NEWTABLE                         R5 0 1
        8 MOVE                             R6 R2
        9 SETLIST                          R5 R6 1 [1]
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R2
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 NAMECALL                         R3 R3 K1 ["PreloadAsync"]
       18 CALL                             R3 3 0
       19 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["AssetType"]
        3 GETTABLEKS                       R2 R2 K1 ["Place"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+7]
        7 LOADK                            R2 K2 ["rbxthumb://type=AutoGeneratedAsset&id=%*&w=150&h=150"]
        8 MOVE                             R4 R0
        9 NAMECALL                         R2 R2 K3 ["format"]
       11 CALL                             R2 2 1
       12 RETURN                           R2 1
       13 LOADK                            R2 K4 ["rbxthumb://type=CreatorContextAsset&id=%*&w=150&h=150"]
       14 MOVE                             R4 R0
       15 NAMECALL                         R2 R2 K3 ["format"]
       17 CALL                             R2 2 1
       18 RETURN                           R2 1

PROTO_45:
        0 LOADK                            R1 K0 ["rbxthumb://type=FontFamily&id=%*&w=1200&h=80"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_46:
        0 GETIMPORT                        R2 K3 [Enum.AssetFetchStatus.Success]
        2 JUMPIFNOTEQ                      R1 R2 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R2 2
       10 LOADK                            R3 K4 ["Failed to fetch thumbnail for item %*"]
       11 GETUPVAL                         R5 3
       12 NAMECALL                         R3 R3 K5 ["format"]
       14 CALL                             R3 2 1
       15 CALL                             R2 1 0
       16 GETUPVAL                         R2 0
       17 LOADK                            R3 K6 [""]
       18 MOVE                             R4 R1
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 NAMECALL                         R0 R0 K0 ["PreloadAsync"]
       13 CALL                             R0 3 0
       14 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getThumbnailForItem"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 GETIMPORT                        R4 K3 [task.spawn]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R2
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R0
       14 CALL                             R4 1 0
       15 RETURN                           R0 0

PROTO_49:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R1 R1 K1 ["data"]
        4 GETUPVAL                         R2 0
        5 GETTABLEN                        R3 R1 1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["GetPluginInfoRequest"]
        3 NEWTABLE                         R4 0 1
        5 MOVE                             R5 R0
        6 SETLIST                          R4 R5 1 [1]
        8 CALL                             R3 1 1
        9 NAMECALL                         R3 R3 K1 ["makeRequest"]
       11 CALL                             R3 1 1
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R1
       14 NEWCLOSURE                       R6 P1
       15 CAPTURE                          VAL R2
       16 NAMECALL                         R3 R3 K2 ["andThen"]
       18 CALL                             R3 3 0
       19 RETURN                           R0 0

PROTO_52:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R1 R1 K1 ["results"]
        4 NEWTABLE                         R2 0 0
        6 MOVE                             R3 R1
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 GETTABLEKS                       R10 R7 K2 ["assetId"]
       12 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       14 MOVE                             R9 R2
       15 GETIMPORT                        R8 K5 [table.insert]
       17 CALL                             R8 2 0
       18 FORGLOOP                         R3 2 ; [-9]
       20 GETUPVAL                         R3 0
       21 MOVE                             R4 R2
       22 CALL                             R3 1 0
       23 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Failed to fetch asset dependencies for asset %*: %*"]
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 2
        4 GETTABLEKS                       R5 R5 K1 ["pretty"]
        6 MOVE                             R6 R0
        7 CALL                             R5 1 1
        8 NAMECALL                         R2 R2 K2 ["format"]
       10 CALL                             R2 3 1
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 3
       13 NEWTABLE                         R2 0 0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["GetAssetDependenciesRequest"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 NAMECALL                         R2 R2 K1 ["makeRequest"]
        7 CALL                             R2 1 1
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R1
       10 NEWCLOSURE                       R5 P1
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R1
       15 NAMECALL                         R2 R2 K2 ["andThen"]
       17 CALL                             R2 3 0
       18 RETURN                           R0 0

PROTO_55:
        0 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R2 R2 K1 ["data"]
        4 GETTABLEN                        R1 R2 1
        5 JUMPIFNOT                        R1 ; [+10]
        6 GETTABLEKS                       R2 R1 K2 ["assetId"]
        8 JUMPIFNOT                        R2 ; [+7]
        9 GETTABLEKS                       R2 R1 K3 ["assetVersionNumber"]
       11 JUMPIFNOT                        R2 ; [+4]
       12 GETUPVAL                         R2 0
       13 LOADB                            R3 1
       14 CALL                             R2 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 0
       17 LOADB                            R3 0
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Failed to fetch package metadata for asset %*: %*"]
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 2
        4 GETTABLEKS                       R5 R5 K1 ["pretty"]
        6 MOVE                             R6 R0
        7 CALL                             R5 1 1
        8 NAMECALL                         R2 R2 K2 ["format"]
       10 CALL                             R2 3 1
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 3
       13 LOADB                            R2 0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["PostPackageMetadataGetRequest"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 NAMECALL                         R2 R2 K1 ["makeRequest"]
        7 CALL                             R2 1 1
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R1
       10 NEWCLOSURE                       R5 P1
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R1
       15 NAMECALL                         R2 R2 K2 ["andThen"]
       17 CALL                             R2 3 0
       18 RETURN                           R0 0

PROTO_58:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R6 R6 K0 ["fetchAssetInfoAsync"]
        7 MOVE                             R7 R5
        8 GETUPVAL                         R8 1
        9 LOADB                            R9 1
       10 GETUPVAL                         R10 2
       11 GETUPVAL                         R11 3
       12 CALL                             R6 5 0
       13 FORGLOOP                         R1 2 ; [-10]
       15 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["IsPackage"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_60:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R2 R1 K1 ["creationContext"]
        4 GETTABLEKS                       R2 R2 K2 ["creator"]
        6 GETTABLEKS                       R4 R2 K3 ["userId"]
        8 JUMPIF                           R4 ; [+2]
        9 GETTABLEKS                       R4 R2 K4 ["groupId"]
       11 FASTCALL1                        TONUMBER R4 ; [+2]
       12 GETIMPORT                        R3 K6 [tonumber]
       14 CALL                             R3 1 1
       15 LOADK                            R4 K7 [""]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K8 ["Id"]
       19 JUMPIFNOTEQ                      R3 R5 ; [+5]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K9 ["Name"]
       24 JUMP                             ; [+31]
       25 GETTABLEKS                       R5 R2 K3 ["userId"]
       27 JUMPIFNOT                        R5 ; [+14]
       28 GETIMPORT                        R5 K11 [pcall]
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K12 ["GetNameFromUserIdAsync"]
       33 GETUPVAL                         R7 1
       34 MOVE                             R8 R3
       35 CALL                             R5 3 2
       36 JUMPIFNOT                        R5 ; [+2]
       37 MOVE                             R4 R6
       38 JUMP                             ; [+17]
       39 GETTABLEKS                       R4 R2 K3 ["userId"]
       41 JUMP                             ; [+14]
       42 GETIMPORT                        R5 K11 [pcall]
       44 GETUPVAL                         R6 2
       45 GETTABLEKS                       R6 R6 K13 ["GetGroupInfoAsync"]
       47 GETUPVAL                         R7 2
       48 MOVE                             R8 R3
       49 CALL                             R5 3 2
       50 JUMPIFNOT                        R5 ; [+3]
       51 GETTABLEKS                       R4 R6 K9 ["Name"]
       53 JUMP                             ; [+2]
       54 GETTABLEKS                       R4 R2 K4 ["groupId"]
       56 GETUPVAL                         R5 3
       57 GETTABLEKS                       R6 R1 K14 ["assetType"]
       59 CALL                             R5 1 1
       60 JUMPIF                           R5 ; [+1]
       61 RETURN                           R0 0
       62 GETTABLEKS                       R7 R1 K1 ["creationContext"]
       64 GETTABLEKS                       R7 R7 K2 ["creator"]
       66 GETTABLEKS                       R7 R7 K3 ["userId"]
       68 JUMPIFNOT                        R7 ; [+6]
       69 GETUPVAL                         R6 4
       70 GETTABLEKS                       R6 R6 K15 ["ScopeType"]
       72 GETTABLEKS                       R6 R6 K16 ["User"]
       74 JUMP                             ; [+5]
       75 GETUPVAL                         R6 4
       76 GETTABLEKS                       R6 R6 K15 ["ScopeType"]
       78 GETTABLEKS                       R6 R6 K17 ["Group"]
       80 DUPTABLE                         R7 K20 [{"Id", "Name", "Type", "Uid"}]
       81 SETTABLEKS                       R3 R7 K8 ["Id"]
       83 SETTABLEKS                       R4 R7 K9 ["Name"]
       85 SETTABLEKS                       R6 R7 K18 ["Type"]
       87 GETUPVAL                         R8 5
       88 MOVE                             R9 R6
       89 MOVE                             R10 R3
       90 CALL                             R8 2 1
       91 SETTABLEKS                       R8 R7 K19 ["Uid"]
       93 GETUPVAL                         R8 6
       94 GETTABLEKS                       R9 R1 K21 ["revisionCreateTime"]
       96 CALL                             R8 1 1
       97 GETUPVAL                         R9 6
       98 GETTABLEKS                       R10 R1 K21 ["revisionCreateTime"]
      100 CALL                             R9 1 1
      101 DUPTABLE                         R10 K34 [{["Path"], ["AssetId"], ["AssetType"], ["DisplayName"], ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"], ["IsPackage"] = }]
      102 GETUPVAL                         R11 7
      103 MOVE                             R12 R7
      104 GETUPVAL                         R13 8
      105 CALL                             R11 2 1
      106 SETTABLEKS                       R11 R10 K22 ["Path"]
      108 GETUPVAL                         R11 8
      109 SETTABLEKS                       R11 R10 K23 ["AssetId"]
      111 SETTABLEKS                       R5 R10 K24 ["AssetType"]
      113 GETTABLEKS                       R11 R1 K35 ["displayName"]
      115 SETTABLEKS                       R11 R10 K25 ["DisplayName"]
      117 SETTABLEKS                       R8 R10 K26 ["Created"]
      119 SETTABLEKS                       R9 R10 K27 ["Modified"]
      121 GETTABLEKS                       R11 R1 K36 ["moderationResult"]
      123 GETTABLEKS                       R11 R11 K37 ["moderationState"]
      125 SETTABLEKS                       R11 R10 K28 ["ModerationStatus"]
      127 SETTABLEKS                       R7 R10 K29 ["Creator"]
      129 GETUPVAL                         R11 4
      130 GETTABLEKS                       R11 R11 K38 ["AssetSource"]
      132 GETTABLEKS                       R11 R11 K39 ["Uploaded"]
      134 SETTABLEKS                       R11 R10 K30 ["Source"]
      136 GETTABLEKS                       R12 R1 K40 ["state"]
      138 JUMPIFNOTEQKS                    R12 K41 ["Active"] ; [+2]
      140 LOADB                            R11 0 +1
      141 LOADB                            R11 1
      142 SETTABLEKS                       R11 R10 K31 ["Archived"]
      144 GETUPVAL                         R11 9
      145 JUMPIFNOT                        R11 ; [+15]
      146 GETUPVAL                         R11 10
      147 GETTABLEKS                       R12 R10 K24 ["AssetType"]
      149 CALL                             R11 1 1
      150 JUMPIFNOT                        R11 ; [+10]
      151 GETUPVAL                         R11 11
      152 GETTABLEKS                       R11 R11 K42 ["_fetchAssetDependenciesAsync"]
      154 GETUPVAL                         R12 8
      155 NEWCLOSURE                       R13 P0
      156 CAPTURE                          UPVAL U11
      157 CAPTURE                          UPVAL U0
      158 CAPTURE                          UPVAL U12
      159 CAPTURE                          UPVAL U13
      160 CALL                             R11 2 0
      161 GETUPVAL                         R11 14
      162 GETTABLEKS                       R12 R10 K24 ["AssetType"]
      164 CALL                             R11 1 1
      165 JUMPIFNOT                        R11 ; [+9]
      166 GETUPVAL                         R11 11
      167 GETTABLEKS                       R11 R11 K43 ["_fetchIsPackageAsync"]
      169 GETUPVAL                         R12 8
      170 NEWCLOSURE                       R13 P1
      171 CAPTURE                          VAL R10
      172 CAPTURE                          UPVAL U12
      173 CALL                             R11 2 0
      174 RETURN                           R0 0
      175 GETUPVAL                         R11 12
      176 MOVE                             R12 R10
      177 CALL                             R11 1 0
      178 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Failed to fetch asset details for asset %*: %*"]
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 2
        4 GETTABLEKS                       R5 R5 K1 ["pretty"]
        6 MOVE                             R6 R0
        7 CALL                             R5 1 1
        8 NAMECALL                         R2 R2 K2 ["format"]
       10 CALL                             R2 3 1
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 3
       13 MOVE                             R2 R0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["GetFetchAssetDataRequest"]
        3 MOVE                             R6 R0
        4 CALL                             R5 1 1
        5 NAMECALL                         R5 R5 K1 ["makeRequest"]
        7 CALL                             R5 1 1
        8 NEWCLOSURE                       R7 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U6
       16 CAPTURE                          UPVAL U7
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U8
       20 CAPTURE                          UPVAL U9
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R4
       23 CAPTURE                          UPVAL U10
       24 NEWCLOSURE                       R8 P1
       25 CAPTURE                          UPVAL U11
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U12
       28 CAPTURE                          VAL R4
       29 NAMECALL                         R5 R5 K2 ["andThen"]
       31 CALL                             R5 3 0
       32 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Uid"]
        3 GETTABLEKS                       R2 R0 K1 ["responseCode"]
        5 GETTABLEKS                       R3 R0 K2 ["responseBody"]
        7 GETTABLEKS                       R5 R3 K3 ["items"]
        9 LENGTH                           R4 R5
       10 JUMPIFEQKN                       R2 K4 [200] ; [+10]
       12 GETUPVAL                         R5 1
       13 FASTCALL1                        TOSTRING R2 ; [+3]
       14 MOVE                             R7 R2
       15 GETIMPORT                        R6 K6 [tostring]
       17 CALL                             R6 1 1
       18 MOVE                             R7 R2
       19 CALL                             R5 2 0
       20 RETURN                           R0 0
       21 JUMPIFNOTEQKN                    R4 K7 [0] ; [+6]
       23 GETUPVAL                         R5 2
       24 NEWTABLE                         R6 0 0
       26 CALL                             R5 1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R5 3
       29 GETTABLEKS                       R5 R5 K8 ["_convertResponseToItemsData"]
       31 GETTABLEKS                       R6 R3 K3 ["items"]
       33 GETUPVAL                         R7 4
       34 CALL                             R5 2 2
       35 NEWTABLE                         R7 0 0
       37 MOVE                             R8 R5
       38 LOADNIL                          R9
       39 LOADNIL                          R10
       40 FORGPREP                         R8
       41 GETTABLEKS                       R13 R12 K9 ["AssetType"]
       43 GETUPVAL                         R14 5
       44 GETTABLEKS                       R14 R14 K9 ["AssetType"]
       46 GETTABLEKS                       R14 R14 K10 ["Folder"]
       48 JUMPIFNOTEQ                      R13 R14 ; [+8]
       50 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
       52 MOVE                             R14 R7
       53 MOVE                             R15 R12
       54 GETIMPORT                        R13 K13 [table.insert]
       56 CALL                             R13 2 0
       57 FORGLOOP                         R8 2 ; [-17]
       59 GETUPVAL                         R8 2
       60 NEWTABLE                         R9 1 0
       62 SETTABLE                         R7 R9 R1
       63 CALL                             R8 1 0
       64 RETURN                           R0 0

PROTO_64:
        0 DUPTABLE                         R3 K1 [{"maxPageSize"}]
        1 GETTABLEKS                       R4 R0 K2 ["MaxPageSize"]
        3 SETTABLEKS                       R4 R3 K0 ["maxPageSize"]
        5 GETTABLEKS                       R4 R0 K3 ["Scope"]
        7 GETTABLEKS                       R5 R0 K4 ["Root"]
        9 GETTABLEKS                       R7 R5 K5 ["Type"]
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R8 R8 K6 ["ScopeType"]
       14 GETTABLEKS                       R8 R8 K7 ["User"]
       16 JUMPIFNOTEQ                      R7 R8 ; [+3]
       18 LOADK                            R6 K8 ["users"]
       19 JUMP                             ; [+19]
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R8 R8 K6 ["ScopeType"]
       23 GETTABLEKS                       R8 R8 K9 ["Group"]
       25 JUMPIFNOTEQ                      R7 R8 ; [+3]
       27 LOADK                            R6 K10 ["groups"]
       28 JUMP                             ; [+10]
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K6 ["ScopeType"]
       32 GETTABLEKS                       R8 R8 K11 ["Universe"]
       34 JUMPIFNOTEQ                      R7 R8 ; [+3]
       36 LOADK                            R6 K12 ["universes"]
       37 JUMP                             ; [+1]
       38 LOADK                            R6 K13 [""]
       39 GETTABLEKS                       R8 R4 K5 ["Type"]
       41 GETUPVAL                         R9 0
       42 GETTABLEKS                       R9 R9 K6 ["ScopeType"]
       44 GETTABLEKS                       R9 R9 K14 ["Folder"]
       46 JUMPIFNOTEQ                      R8 R9 ; [+4]
       48 GETTABLEKS                       R7 R4 K15 ["Path"]
       50 JUMP                             ; [+1]
       51 LOADNIL                          R7
       52 GETUPVAL                         R8 1
       53 GETTABLEKS                       R8 R8 K16 ["CreateGetItemsRequest"]
       55 GETTABLEKS                       R9 R5 K17 ["Id"]
       57 MOVE                             R10 R6
       58 MOVE                             R11 R7
       59 MOVE                             R12 R3
       60 CALL                             R8 4 1
       61 NAMECALL                         R8 R8 K18 ["makeRequest"]
       63 CALL                             R8 1 1
       64 NEWCLOSURE                       R10 P0
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R1
       68 CAPTURE                          UPVAL U2
       69 CAPTURE                          VAL R5
       70 CAPTURE                          UPVAL U0
       71 NAMECALL                         R8 R8 K19 ["andThen"]
       73 CALL                             R8 2 1
       74 MOVE                             R10 R2
       75 NAMECALL                         R8 R8 K20 ["catch"]
       77 CALL                             R8 2 0
       78 RETURN                           R0 0

PROTO_65:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R2 R1 K1 ["folderItem"]
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R2
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R6 R1 K2 ["path"]
        9 CALL                             R3 3 1
       10 GETUPVAL                         R4 2
       11 MOVE                             R5 R3
       12 CALL                             R4 1 0
       13 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Failed to create folder: %*"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["pretty"]
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 NAMECALL                         R2 R2 K2 ["format"]
        9 CALL                             R2 2 1
       10 LOADK                            R3 K3 ["WARN"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R2 R0 K4 ["responseBody"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_67:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["CreateCreateFolderRequest"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 GETUPVAL                         R5 3
        6 GETUPVAL                         R6 4
        7 CALL                             R2 4 1
        8 NAMECALL                         R2 R2 K1 ["makeRequest"]
       10 CALL                             R2 1 1
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          VAL R0
       15 NAMECALL                         R2 R2 K2 ["andThen"]
       17 CALL                             R2 2 1
       18 NEWCLOSURE                       R4 P1
       19 CAPTURE                          UPVAL U7
       20 CAPTURE                          UPVAL U8
       21 CAPTURE                          VAL R1
       22 NAMECALL                         R2 R2 K3 ["catch"]
       24 CALL                             R2 2 0
       25 RETURN                           R0 0

PROTO_68:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["ParentScope"]
        3 GETTABLEKS                       R2 R2 K1 ["Id"]
        5 GETTABLEKS                       R4 R0 K0 ["ParentScope"]
        7 GETTABLEKS                       R4 R4 K2 ["Type"]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K3 ["ScopeType"]
       12 GETTABLEKS                       R5 R5 K4 ["User"]
       14 JUMPIFNOTEQ                      R4 R5 ; [+3]
       16 LOADK                            R3 K5 ["users"]
       17 JUMP                             ; [+19]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K3 ["ScopeType"]
       21 GETTABLEKS                       R5 R5 K6 ["Group"]
       23 JUMPIFNOTEQ                      R4 R5 ; [+3]
       25 LOADK                            R3 K7 ["groups"]
       26 JUMP                             ; [+10]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K3 ["ScopeType"]
       30 GETTABLEKS                       R5 R5 K8 ["Universe"]
       32 JUMPIFNOTEQ                      R4 R5 ; [+3]
       34 LOADK                            R3 K9 ["universes"]
       35 JUMP                             ; [+1]
       36 LOADK                            R3 K10 [""]
       37 GETTABLEKS                       R4 R0 K11 ["RootScope"]
       39 GETTABLEKS                       R5 R0 K0 ["ParentScope"]
       41 GETTABLEKS                       R5 R5 K2 ["Type"]
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R6 R6 K3 ["ScopeType"]
       46 GETTABLEKS                       R6 R6 K12 ["Folder"]
       48 JUMPIFNOTEQ                      R5 R6 ; [+37]
       50 GETTABLEKS                       R5 R0 K0 ["ParentScope"]
       52 GETTABLEKS                       R1 R5 K1 ["Id"]
       54 GETTABLEKS                       R2 R4 K1 ["Id"]
       56 GETTABLEKS                       R5 R4 K2 ["Type"]
       58 GETUPVAL                         R6 0
       59 GETTABLEKS                       R6 R6 K3 ["ScopeType"]
       61 GETTABLEKS                       R6 R6 K4 ["User"]
       63 JUMPIFNOTEQ                      R5 R6 ; [+3]
       65 LOADK                            R3 K5 ["users"]
       66 JUMP                             ; [+19]
       67 GETUPVAL                         R6 0
       68 GETTABLEKS                       R6 R6 K3 ["ScopeType"]
       70 GETTABLEKS                       R6 R6 K6 ["Group"]
       72 JUMPIFNOTEQ                      R5 R6 ; [+3]
       74 LOADK                            R3 K7 ["groups"]
       75 JUMP                             ; [+10]
       76 GETUPVAL                         R6 0
       77 GETTABLEKS                       R6 R6 K3 ["ScopeType"]
       79 GETTABLEKS                       R6 R6 K8 ["Universe"]
       81 JUMPIFNOTEQ                      R5 R6 ; [+3]
       83 LOADK                            R3 K9 ["universes"]
       84 JUMP                             ; [+1]
       85 LOADK                            R3 K10 [""]
       86 NEWTABLE                         R5 1 0
       88 GETTABLEKS                       R6 R0 K13 ["PluginSessionId"]
       90 SETTABLEKS                       R6 R5 K14 ["rbx-inventory-session-id"]
       92 DUPTABLE                         R6 K16 [{"folderItem"}]
       93 DUPTABLE                         R7 K18 [{"folder"}]
       94 DUPTABLE                         R8 K21 [{"displayName", "parentFolderId"}]
       95 GETTABLEKS                       R9 R0 K22 ["FolderName"]
       97 SETTABLEKS                       R9 R8 K19 ["displayName"]
       99 SETTABLEKS                       R1 R8 K20 ["parentFolderId"]
      101 SETTABLEKS                       R8 R7 K17 ["folder"]
      103 SETTABLEKS                       R7 R6 K15 ["folderItem"]
      105 GETUPVAL                         R7 1
      106 GETTABLEKS                       R7 R7 K23 ["new"]
      108 NEWCLOSURE                       R8 P0
      109 CAPTURE                          UPVAL U2
      110 CAPTURE                          REF R2
      111 CAPTURE                          REF R3
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R5
      114 CAPTURE                          UPVAL U3
      115 CAPTURE                          VAL R4
      116 CAPTURE                          UPVAL U4
      117 CAPTURE                          UPVAL U5
      118 CALL                             R7 1 -1
      119 CLOSEUPVALS                      R2
      120 RETURN                           R7 -1

PROTO_69:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 RETURN                           R0 0

PROTO_70:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Failed to delete folder: %*"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["pretty"]
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 NAMECALL                         R2 R2 K2 ["format"]
        9 CALL                             R2 2 1
       10 LOADK                            R3 K3 ["WARN"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R2 R0 K4 ["responseBody"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_71:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["CreateDeleteFolderRequest"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R2 2 1
        6 NAMECALL                         R2 R2 K1 ["makeRequest"]
        8 CALL                             R2 1 1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R0
       11 NAMECALL                         R2 R2 K2 ["andThen"]
       13 CALL                             R2 2 1
       14 NEWCLOSURE                       R4 P1
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          VAL R1
       18 NAMECALL                         R2 R2 K3 ["catch"]
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_72:
        0 NEWTABLE                         R2 1 0
        2 SETTABLEKS                       R1 R2 K0 ["rbx-inventory-session-id"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["new"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CALL                             R3 1 -1
       14 RETURN                           R3 -1

PROTO_73:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_74:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Failed to update folder metadata: %*"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["pretty"]
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 NAMECALL                         R2 R2 K2 ["format"]
        9 CALL                             R2 2 1
       10 LOADK                            R3 K3 ["WARN"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R2 R0 K4 ["responseBody"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_75:
        0 DUPTABLE                         R2 K1 [{"folderItem"}]
        1 DUPTABLE                         R3 K3 [{"folder"}]
        2 DUPTABLE                         R4 K5 [{"displayName"}]
        3 GETUPVAL                         R5 0
        4 SETTABLEKS                       R5 R4 K4 ["displayName"]
        6 SETTABLEKS                       R4 R3 K2 ["folder"]
        8 SETTABLEKS                       R3 R2 K0 ["folderItem"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K6 ["CreateFolderMetadataRequest"]
       13 GETUPVAL                         R4 2
       14 MOVE                             R5 R2
       15 GETUPVAL                         R6 3
       16 CALL                             R3 3 1
       17 NAMECALL                         R3 R3 K7 ["makeRequest"]
       19 CALL                             R3 1 1
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R0
       22 NAMECALL                         R3 R3 K8 ["andThen"]
       24 CALL                             R3 2 1
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          VAL R1
       29 NAMECALL                         R3 R3 K9 ["catch"]
       31 CALL                             R3 2 0
       32 RETURN                           R0 0

PROTO_76:
        0 NEWTABLE                         R3 1 0
        2 SETTABLEKS                       R2 R3 K0 ["rbx-inventory-session-id"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["new"]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CALL                             R4 1 -1
       15 RETURN                           R4 -1

PROTO_77:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R3 R1 K1 ["placeId"]
        6 JUMP                             ; [+1]
        7 LOADNIL                          R3
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_78:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Failed to create place: %*"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["pretty"]
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 NAMECALL                         R2 R2 K2 ["format"]
        9 CALL                             R2 2 1
       10 LOADK                            R3 K3 ["WARN"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R2 R0 K4 ["responseBody"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_79:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["CreatePlaceRequest"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R2 2 1
        6 NAMECALL                         R2 R2 K1 ["makeRequest"]
        8 CALL                             R2 1 1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R0
       11 NAMECALL                         R2 R2 K2 ["andThen"]
       13 CALL                             R2 2 1
       14 NEWCLOSURE                       R4 P1
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          VAL R1
       18 NAMECALL                         R2 R2 K3 ["catch"]
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_80:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 -1
        2 FASTCALL                         TONUMBER ; [+2]
        3 GETIMPORT                        R2 K2 [tonumber]
        5 CALL                             R2 -1 1
        6 ORK                              R1 R2 K0 [0]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K3 ["new"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CALL                             R2 1 -1
       17 RETURN                           R2 -1

PROTO_81:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 RETURN                           R0 0

PROTO_82:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Failed to remove place: %*"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["pretty"]
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 NAMECALL                         R2 R2 K2 ["format"]
        9 CALL                             R2 2 1
       10 LOADK                            R3 K3 ["WARN"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R2 R0 K4 ["responseBody"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_83:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["RemovePlaceRequest"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R2 2 1
        6 NAMECALL                         R2 R2 K1 ["makeRequest"]
        8 CALL                             R2 1 1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R0
       11 NAMECALL                         R2 R2 K2 ["andThen"]
       13 CALL                             R2 2 1
       14 NEWCLOSURE                       R4 P1
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          VAL R1
       18 NAMECALL                         R2 R2 K3 ["catch"]
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_84:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1

PROTO_85:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_86:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Failed to rename place: %*"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["pretty"]
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 NAMECALL                         R2 R2 K2 ["format"]
        9 CALL                             R2 2 1
       10 LOADK                            R3 K3 ["WARN"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R2 R0 K4 ["responseBody"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_87:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["RenamePlaceRequest"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K2 [{"name"}]
        5 GETUPVAL                         R5 2
        6 SETTABLEKS                       R5 R4 K1 ["name"]
        8 CALL                             R2 2 1
        9 NAMECALL                         R2 R2 K3 ["makeRequest"]
       11 CALL                             R2 1 1
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R0
       14 NAMECALL                         R2 R2 K4 ["andThen"]
       16 CALL                             R2 2 1
       17 NEWCLOSURE                       R4 P1
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          VAL R1
       21 NAMECALL                         R2 R2 K5 ["catch"]
       23 CALL                             R2 2 0
       24 RETURN                           R0 0

PROTO_88:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1

PROTO_89:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R3 R0 K0 ["responseBody"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_90:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Failed to get item parents: %*"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["pretty"]
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 NAMECALL                         R2 R2 K2 ["format"]
        9 CALL                             R2 2 1
       10 LOADK                            R3 K3 ["WARN"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R2 R0 K4 ["responseBody"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_91:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["CreateGetItemParentsRequest"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Id"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K2 ["Type"]
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R6 R6 K3 ["ScopeType"]
       12 GETTABLEKS                       R6 R6 K4 ["User"]
       14 JUMPIFNOTEQ                      R5 R6 ; [+3]
       16 LOADK                            R4 K5 ["users"]
       17 JUMP                             ; [+19]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K3 ["ScopeType"]
       21 GETTABLEKS                       R6 R6 K6 ["Group"]
       23 JUMPIFNOTEQ                      R5 R6 ; [+3]
       25 LOADK                            R4 K7 ["groups"]
       26 JUMP                             ; [+10]
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R6 R6 K3 ["ScopeType"]
       30 GETTABLEKS                       R6 R6 K8 ["Universe"]
       32 JUMPIFNOTEQ                      R5 R6 ; [+3]
       34 LOADK                            R4 K9 ["universes"]
       35 JUMP                             ; [+1]
       36 LOADK                            R4 K10 [""]
       37 GETUPVAL                         R5 3
       38 CALL                             R2 3 1
       39 NAMECALL                         R2 R2 K11 ["makeRequest"]
       41 CALL                             R2 1 1
       42 NEWCLOSURE                       R4 P0
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U4
       45 NAMECALL                         R2 R2 K12 ["andThen"]
       47 CALL                             R2 2 1
       48 NEWCLOSURE                       R4 P1
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          UPVAL U6
       51 CAPTURE                          VAL R1
       52 NAMECALL                         R2 R2 K13 ["catch"]
       54 CALL                             R2 2 0
       55 RETURN                           R0 0

PROTO_92:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 DUPTABLE                         R10 K1 [{"path"}]
        7 SETTABLEKS                       R7 R10 K0 ["path"]
        9 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       11 MOVE                             R9 R2
       12 GETIMPORT                        R8 K4 [table.insert]
       14 CALL                             R8 2 0
       15 FORGLOOP                         R3 2 ; [-10]
       17 DUPTABLE                         R3 K6 [{"items"}]
       18 SETTABLEKS                       R2 R3 K5 ["items"]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K7 ["new"]
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R2
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U4
       31 CALL                             R4 1 -1
       32 RETURN                           R4 -1

PROTO_93:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_94:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Failed to move items: %*"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["pretty"]
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 NAMECALL                         R2 R2 K2 ["format"]
        9 CALL                             R2 2 1
       10 LOADK                            R3 K3 ["WARN"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R2 R0 K4 ["responseBody"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_95:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["CreateMoveItemsRequest"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Account"]
        6 GETTABLEKS                       R3 R3 K2 ["Id"]
        8 GETUPVAL                         R4 2
        9 GETUPVAL                         R5 3
       10 GETUPVAL                         R6 4
       11 CALL                             R2 4 1
       12 NAMECALL                         R2 R2 K3 ["makeRequest"]
       14 CALL                             R2 1 1
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R0
       17 NAMECALL                         R2 R2 K4 ["andThen"]
       19 CALL                             R2 2 1
       20 NEWCLOSURE                       R4 P1
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          VAL R1
       24 NAMECALL                         R2 R2 K5 ["catch"]
       26 CALL                             R2 2 0
       27 RETURN                           R0 0

PROTO_96:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["Paths"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 DUPTABLE                         R9 K2 [{"path"}]
        8 SETTABLEKS                       R6 R9 K1 ["path"]
       10 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       12 MOVE                             R8 R1
       13 GETIMPORT                        R7 K5 [table.insert]
       15 CALL                             R7 2 0
       16 FORGLOOP                         R2 2 ; [-10]
       18 DUPTABLE                         R2 K9 [{"originFolderId", "destinationFolderId", "items"}]
       19 GETTABLEKS                       R3 R0 K10 ["Origin"]
       21 SETTABLEKS                       R3 R2 K6 ["originFolderId"]
       23 GETTABLEKS                       R3 R0 K11 ["Destination"]
       25 SETTABLEKS                       R3 R2 K7 ["destinationFolderId"]
       27 SETTABLEKS                       R1 R2 K8 ["items"]
       29 NEWTABLE                         R3 1 0
       31 GETTABLEKS                       R4 R0 K12 ["PluginSessionId"]
       33 SETTABLEKS                       R4 R3 K13 ["rbx-inventory-session-id"]
       35 GETTABLEKS                       R5 R0 K14 ["Account"]
       37 GETTABLEKS                       R5 R5 K15 ["Type"]
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R6 R6 K16 ["ScopeType"]
       42 GETTABLEKS                       R6 R6 K17 ["User"]
       44 JUMPIFNOTEQ                      R5 R6 ; [+3]
       46 LOADK                            R4 K18 ["users"]
       47 JUMP                             ; [+19]
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R6 R6 K16 ["ScopeType"]
       51 GETTABLEKS                       R6 R6 K19 ["Group"]
       53 JUMPIFNOTEQ                      R5 R6 ; [+3]
       55 LOADK                            R4 K20 ["groups"]
       56 JUMP                             ; [+10]
       57 GETUPVAL                         R6 0
       58 GETTABLEKS                       R6 R6 K16 ["ScopeType"]
       60 GETTABLEKS                       R6 R6 K21 ["Universe"]
       62 JUMPIFNOTEQ                      R5 R6 ; [+3]
       64 LOADK                            R4 K22 ["universes"]
       65 JUMP                             ; [+1]
       66 LOADK                            R4 K23 [""]
       67 GETUPVAL                         R5 1
       68 GETTABLEKS                       R5 R5 K24 ["new"]
       70 NEWCLOSURE                       R6 P0
       71 CAPTURE                          UPVAL U2
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R3
       76 CAPTURE                          UPVAL U3
       77 CAPTURE                          UPVAL U4
       78 CALL                             R5 1 -1
       79 RETURN                           R5 -1

PROTO_97:
        0 GETTABLEKS                       R1 R0 K0 ["objectMeshSummary"]
        2 GETTABLEKS                       R2 R0 K1 ["instanceCounts"]
        4 GETTABLEKS                       R5 R0 K2 ["description"]
        6 FASTCALL1                        TYPE R5 ; [+2]
        7 GETIMPORT                        R4 K4 [type]
        9 CALL                             R4 1 1
       10 JUMPIFNOTEQKS                    R4 K5 ["string"] ; [+8]
       12 GETTABLEKS                       R4 R0 K2 ["description"]
       14 JUMPIFEQKS                       R4 K6 [""] ; [+4]
       16 GETTABLEKS                       R3 R0 K2 ["description"]
       18 JUMP                             ; [+1]
       19 LOADNIL                          R3
       20 DUPTABLE                         R4 K15 [{"TriangleCount", "VertexCount", "ScriptCount", "MeshPartCount", "AnimationCount", "AudioCount", "DecalCount", "ToolCount"}]
       21 MOVE                             R5 R1
       22 JUMPIFNOT                        R5 ; [+2]
       23 GETTABLEKS                       R5 R1 K16 ["triangles"]
       25 SETTABLEKS                       R5 R4 K7 ["TriangleCount"]
       27 MOVE                             R5 R1
       28 JUMPIFNOT                        R5 ; [+2]
       29 GETTABLEKS                       R5 R1 K17 ["vertices"]
       31 SETTABLEKS                       R5 R4 K8 ["VertexCount"]
       33 MOVE                             R5 R2
       34 JUMPIFNOT                        R5 ; [+2]
       35 GETTABLEKS                       R5 R2 K18 ["script"]
       37 SETTABLEKS                       R5 R4 K9 ["ScriptCount"]
       39 MOVE                             R5 R2
       40 JUMPIFNOT                        R5 ; [+2]
       41 GETTABLEKS                       R5 R2 K19 ["meshPart"]
       43 SETTABLEKS                       R5 R4 K10 ["MeshPartCount"]
       45 MOVE                             R5 R2
       46 JUMPIFNOT                        R5 ; [+2]
       47 GETTABLEKS                       R5 R2 K20 ["animation"]
       49 SETTABLEKS                       R5 R4 K11 ["AnimationCount"]
       51 MOVE                             R5 R2
       52 JUMPIFNOT                        R5 ; [+2]
       53 GETTABLEKS                       R5 R2 K21 ["audio"]
       55 SETTABLEKS                       R5 R4 K12 ["AudioCount"]
       57 MOVE                             R5 R2
       58 JUMPIFNOT                        R5 ; [+2]
       59 GETTABLEKS                       R5 R2 K22 ["decal"]
       61 SETTABLEKS                       R5 R4 K13 ["DecalCount"]
       63 MOVE                             R5 R2
       64 JUMPIFNOT                        R5 ; [+2]
       65 GETTABLEKS                       R5 R2 K23 ["tool"]
       67 SETTABLEKS                       R5 R4 K14 ["ToolCount"]
       69 DUPTABLE                         R5 K28 [{"Description", "HasScripts", "Duration", "Counts"}]
       70 SETTABLEKS                       R3 R5 K24 ["Description"]
       72 GETTABLEKS                       R6 R0 K29 ["hasScripts"]
       74 SETTABLEKS                       R6 R5 K25 ["HasScripts"]
       76 GETTABLEKS                       R6 R0 K30 ["durationSeconds"]
       78 SETTABLEKS                       R6 R5 K26 ["Duration"]
       80 SETTABLEKS                       R4 R5 K27 ["Counts"]
       82 RETURN                           R5 1

PROTO_98:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["asset"]
        5 JUMP                             ; [+1]
        6 LOADNIL                          R2
        7 JUMPIF                           R2 ; [+5]
        8 GETUPVAL                         R3 0
        9 NEWTABLE                         R4 0 0
       11 CALL                             R3 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R3 0
       14 GETUPVAL                         R4 1
       15 MOVE                             R5 R2
       16 CALL                             R4 1 1
       17 CALL                             R3 1 0
       18 RETURN                           R0 0

PROTO_99:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["fetchToolboxTechnicalDetailsAsync failed: %*"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["pretty"]
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 NAMECALL                         R2 R2 K2 ["format"]
        9 CALL                             R2 2 1
       10 LOADK                            R3 K3 ["WARN"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 2
       13 MOVE                             R2 R0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_100:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["GetToolboxAssetRequest"]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 1
        5 NAMECALL                         R2 R2 K1 ["makeRequest"]
        7 CALL                             R2 1 1
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U2
       11 NAMECALL                         R2 R2 K2 ["andThen"]
       13 CALL                             R2 2 1
       14 NEWCLOSURE                       R4 P1
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          VAL R1
       18 NAMECALL                         R2 R2 K3 ["catch"]
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_101:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_102:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["name"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_103:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_104:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Type"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ScopeType"]
        6 GETTABLEKS                       R2 R2 K2 ["User"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+18]
       10 GETIMPORT                        R1 K4 [pcall]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K5 ["GetNameFromUserIdAsync"]
       15 GETUPVAL                         R3 2
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K6 ["Id"]
       19 CALL                             R1 3 2
       20 MOVE                             R3 R0
       21 JUMPIFNOT                        R1 ; [+2]
       22 MOVE                             R4 R2
       23 JUMP                             ; [+1]
       24 LOADNIL                          R4
       25 CALL                             R3 1 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K0 ["Type"]
       30 GETUPVAL                         R2 1
       31 GETTABLEKS                       R2 R2 K1 ["ScopeType"]
       33 GETTABLEKS                       R2 R2 K7 ["Group"]
       35 JUMPIFNOTEQ                      R1 R2 ; [+19]
       37 GETIMPORT                        R1 K4 [pcall]
       39 GETUPVAL                         R2 3
       40 GETTABLEKS                       R2 R2 K8 ["GetGroupInfoAsync"]
       42 GETUPVAL                         R3 3
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R4 R4 K6 ["Id"]
       46 CALL                             R1 3 2
       47 MOVE                             R3 R0
       48 JUMPIFNOT                        R1 ; [+3]
       49 GETTABLEKS                       R4 R2 K9 ["Name"]
       51 JUMP                             ; [+1]
       52 LOADNIL                          R4
       53 CALL                             R3 1 0
       54 RETURN                           R0 0
       55 GETUPVAL                         R1 0
       56 GETTABLEKS                       R1 R1 K0 ["Type"]
       58 GETUPVAL                         R2 1
       59 GETTABLEKS                       R2 R2 K1 ["ScopeType"]
       61 GETTABLEKS                       R2 R2 K10 ["Universe"]
       63 JUMPIFNOTEQ                      R1 R2 ; [+13]
       65 GETUPVAL                         R1 4
       66 GETTABLEKS                       R1 R1 K11 ["fetchUniverseInfoAsync"]
       68 GETUPVAL                         R2 0
       69 GETTABLEKS                       R2 R2 K6 ["Id"]
       71 NEWCLOSURE                       R3 P0
       72 CAPTURE                          VAL R0
       73 NEWCLOSURE                       R4 P1
       74 CAPTURE                          VAL R0
       75 CALL                             R1 3 0
       76 RETURN                           R0 0
       77 MOVE                             R1 R0
       78 LOADNIL                          R2
       79 CALL                             R1 1 0
       80 RETURN                           R0 0

PROTO_105:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_106:
        0 LOADB                            R2 0
        1 NEWTABLE                         R3 0 0
        3 NEWTABLE                         R4 0 0
        5 MOVE                             R5 R0
        6 LOADNIL                          R6
        7 LOADNIL                          R7
        8 FORGPREP                         R5
        9 GETTABLEKS                       R10 R9 K0 ["action"]
       11 GETTABLEKS                       R11 R9 K1 ["subjectType"]
       13 GETUPVAL                         R12 0
       14 GETTABLEKS                       R12 R12 K2 ["PermissionsSubject"]
       16 GETTABLEKS                       R12 R12 K3 ["All"]
       18 JUMPIFNOTEQ                      R11 R12 ; [+10]
       20 GETUPVAL                         R11 0
       21 GETTABLEKS                       R11 R11 K4 ["PermissionsAction"]
       23 GETTABLEKS                       R11 R11 K5 ["Use"]
       25 JUMPIFNOTEQ                      R10 R11 ; [+3]
       27 LOADB                            R2 1
       28 JUMP                             ; [+63]
       29 GETUPVAL                         R12 1
       30 GETTABLEKS                       R13 R9 K1 ["subjectType"]
       32 GETTABLE                         R11 R12 R13
       33 GETTABLEKS                       R13 R9 K6 ["subjectId"]
       35 FASTCALL1                        TONUMBER R13 ; [+2]
       36 GETIMPORT                        R12 K8 [tonumber]
       38 CALL                             R12 1 1
       39 JUMPIFNOT                        R11 ; [+52]
       40 JUMPIFNOT                        R12 ; [+51]
       41 JUMPIFNOT                        R10 ; [+50]
       42 GETUPVAL                         R14 2
       43 GETTABLE                         R13 R14 R10
       44 JUMPIFNOT                        R13 ; [+47]
       45 GETUPVAL                         R13 3
       46 MOVE                             R14 R11
       47 MOVE                             R15 R12
       48 CALL                             R13 2 1
       49 GETTABLEKS                       R14 R1 K9 ["Uid"]
       51 JUMPIFEQ                         R13 R14 ; [+40]
       53 GETTABLE                         R14 R4 R13
       54 JUMPIFNOT                        R14 ; [+10]
       55 GETUPVAL                         R15 0
       56 GETTABLEKS                       R15 R15 K4 ["PermissionsAction"]
       58 GETTABLEKS                       R15 R15 K10 ["Edit"]
       60 JUMPIFNOTEQ                      R10 R15 ; [+31]
       62 SETTABLEKS                       R10 R14 K11 ["Action"]
       64 JUMP                             ; [+27]
       65 DUPTABLE                         R15 K13 [{"Scope", "Action"}]
       66 DUPTABLE                         R16 K17 [{"Id", "Name", "Type", "Uid"}]
       67 SETTABLEKS                       R12 R16 K14 ["Id"]
       69 FASTCALL1                        TOSTRING R12 ; [+3]
       70 MOVE                             R18 R12
       71 GETIMPORT                        R17 K19 [tostring]
       73 CALL                             R17 1 1
       74 SETTABLEKS                       R17 R16 K15 ["Name"]
       76 SETTABLEKS                       R11 R16 K16 ["Type"]
       78 SETTABLEKS                       R13 R16 K9 ["Uid"]
       80 SETTABLEKS                       R16 R15 K12 ["Scope"]
       82 SETTABLEKS                       R10 R15 K11 ["Action"]
       84 SETTABLE                         R15 R4 R13
       85 FASTCALL2                        TABLE_INSERT R3 R15 ; [+5]
       87 MOVE                             R17 R3
       88 MOVE                             R18 R15
       89 GETIMPORT                        R16 K22 [table.insert]
       91 CALL                             R16 2 0
       92 FORGLOOP                         R5 2 ; [-84]
       94 JUMPIFNOT                        R2 ; [+6]
       95 GETUPVAL                         R5 0
       96 GETTABLEKS                       R5 R5 K23 ["AssetPrivacy"]
       98 GETTABLEKS                       R5 R5 K24 ["OpenUse"]
      100 JUMP                             ; [+15]
      101 LENGTH                           R6 R3
      102 LOADN                            R7 0
      103 JUMPIFNOTLT                      R7 R6 ; [+7]
      105 GETUPVAL                         R5 0
      106 GETTABLEKS                       R5 R5 K23 ["AssetPrivacy"]
      108 GETTABLEKS                       R5 R5 K25 ["Shared"]
      110 JUMP                             ; [+5]
      111 GETUPVAL                         R5 0
      112 GETTABLEKS                       R5 R5 K23 ["AssetPrivacy"]
      114 GETTABLEKS                       R5 R5 K26 ["Private"]
      116 DUPTABLE                         R6 K29 [{"Privacy", "SharedWith"}]
      117 SETTABLEKS                       R5 R6 K27 ["Privacy"]
      119 SETTABLEKS                       R3 R6 K28 ["SharedWith"]
      121 RETURN                           R6 1

PROTO_107:
        0 GETTABLEKS                       R1 R0 K0 ["Scope"]
        2 RETURN                           R1 1

PROTO_108:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLE                         R6 R0 R4
        5 JUMPIF                           R6 ; [+2]
        6 GETTABLEKS                       R6 R5 K0 ["Name"]
        8 SETTABLEKS                       R6 R5 K0 ["Name"]
       10 FORGLOOP                         R1 2 ; [-7]
       12 GETUPVAL                         R1 1
       13 GETUPVAL                         R2 2
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_109:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R3 R1 K1 ["results"]
        6 JUMPIF                           R3 ; [+2]
        7 NEWTABLE                         R3 0 0
        9 GETUPVAL                         R4 1
       10 CALL                             R2 2 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K2 ["map"]
       14 GETTABLEKS                       R4 R2 K3 ["SharedWith"]
       16 DUPCLOSURE                       R5 K4 [PROTO_107]
       17 CALL                             R3 2 1
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K5 ["all"]
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K2 ["map"]
       24 MOVE                             R6 R3
       25 GETUPVAL                         R7 4
       26 CALL                             R5 2 -1
       27 CALL                             R4 -1 1
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          VAL R3
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          VAL R2
       32 NAMECALL                         R4 R4 K6 ["andThen"]
       34 CALL                             R4 2 -1
       35 RETURN                           R4 -1

PROTO_110:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["fetchAssetPermissionsAsync failed: %*"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["pretty"]
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 NAMECALL                         R2 R2 K2 ["format"]
        9 CALL                             R2 2 1
       10 LOADK                            R3 K3 ["WARN"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 2
       13 MOVE                             R2 R0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_111:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["GetAssetPermissionsRequest"]
        3 NEWTABLE                         R3 0 1
        5 GETUPVAL                         R4 1
        6 SETLIST                          R3 R4 1 [1]
        8 CALL                             R2 1 1
        9 NAMECALL                         R2 R2 K1 ["makeRequest"]
       11 CALL                             R2 1 1
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 CAPTURE                          VAL R0
       19 NAMECALL                         R2 R2 K2 ["andThen"]
       21 CALL                             R2 2 1
       22 NEWCLOSURE                       R4 P1
       23 CAPTURE                          UPVAL U7
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R1
       26 NAMECALL                         R2 R2 K3 ["catch"]
       28 CALL                             R2 2 0
       29 RETURN                           R0 0

PROTO_112:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

PROTO_113:
        0 PREPVARARGS                      1
        1 LOADB                            R1 0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Resources"]
       20 GETTABLEKS                       R3 R3 K9 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["Promise"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K10 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["Dash"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETIMPORT                        R6 K1 [script]
       41 GETTABLEKS                       R6 R6 K13 ["Parent"]
       43 GETTABLEKS                       R6 R6 K14 ["Urls"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Src"]
       50 GETTABLEKS                       R7 R7 K15 ["Util"]
       52 GETTABLEKS                       R7 R7 K16 ["Services"]
       54 CALL                             R6 1 1
       55 GETTABLEKS                       R7 R6 K17 ["GetService"]
       57 LOADK                            R8 K18 ["ContentProvider"]
       58 CALL                             R7 1 1
       59 GETTABLEKS                       R8 R6 K17 ["GetService"]
       61 LOADK                            R9 K19 ["GroupService"]
       62 CALL                             R8 1 1
       63 GETTABLEKS                       R9 R6 K17 ["GetService"]
       65 LOADK                            R10 K20 ["Players"]
       66 CALL                             R9 1 1
       67 GETTABLEKS                       R10 R6 K17 ["GetService"]
       69 LOADK                            R11 K21 ["StudioService"]
       70 CALL                             R10 1 1
       71 GETTABLEKS                       R11 R6 K17 ["GetService"]
       73 LOADK                            R12 K22 ["UserService"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K5 [require]
       77 GETTABLEKS                       R13 R0 K6 ["Src"]
       79 GETTABLEKS                       R13 R13 K15 ["Util"]
       81 GETTABLEKS                       R13 R13 K23 ["constructItemPath"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K5 [require]
       86 GETTABLEKS                       R14 R0 K6 ["Src"]
       88 GETTABLEKS                       R14 R14 K15 ["Util"]
       90 GETTABLEKS                       R14 R14 K24 ["convertAssetTypeStringToEnum"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K5 [require]
       95 GETTABLEKS                       R15 R0 K6 ["Src"]
       97 GETTABLEKS                       R15 R15 K15 ["Util"]
       99 GETTABLEKS                       R15 R15 K25 ["convertFolderResponseToItem"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K5 [require]
      104 GETTABLEKS                       R16 R0 K6 ["Src"]
      106 GETTABLEKS                       R16 R16 K15 ["Util"]
      108 GETTABLEKS                       R16 R16 K26 ["convertInventoryFolderStatusStringToEnum"]
      110 CALL                             R15 1 1
      111 GETIMPORT                        R16 K5 [require]
      113 GETTABLEKS                       R17 R0 K6 ["Src"]
      115 GETTABLEKS                       R17 R17 K15 ["Util"]
      117 GETTABLEKS                       R17 R17 K27 ["createAssetGrantRequests"]
      119 CALL                             R16 1 1
      120 GETIMPORT                        R17 K5 [require]
      122 GETTABLEKS                       R18 R0 K6 ["Src"]
      124 GETTABLEKS                       R18 R18 K15 ["Util"]
      126 GETTABLEKS                       R18 R18 K28 ["createCheckAssetPermissionRequests"]
      128 CALL                             R17 1 1
      129 GETIMPORT                        R18 K5 [require]
      131 GETTABLEKS                       R19 R0 K6 ["Src"]
      133 GETTABLEKS                       R19 R19 K15 ["Util"]
      135 GETTABLEKS                       R19 R19 K29 ["createScopeUid"]
      137 CALL                             R18 1 1
      138 GETIMPORT                        R19 K5 [require]
      140 GETTABLEKS                       R20 R0 K6 ["Src"]
      142 GETTABLEKS                       R20 R20 K15 ["Util"]
      144 GETTABLEKS                       R20 R20 K30 ["isAssetTypeComposite"]
      146 CALL                             R19 1 1
      147 GETIMPORT                        R20 K5 [require]
      149 GETTABLEKS                       R21 R0 K6 ["Src"]
      151 GETTABLEKS                       R21 R21 K15 ["Util"]
      153 GETTABLEKS                       R21 R21 K31 ["isAssetTypePackageCompat"]
      155 CALL                             R20 1 1
      156 GETIMPORT                        R21 K5 [require]
      158 GETTABLEKS                       R22 R0 K6 ["Src"]
      160 GETTABLEKS                       R22 R22 K32 ["Networking"]
      162 GETTABLEKS                       R22 R22 K33 ["isAssetOk"]
      164 CALL                             R21 1 1
      165 GETIMPORT                        R22 K5 [require]
      167 GETTABLEKS                       R23 R0 K6 ["Src"]
      169 GETTABLEKS                       R23 R23 K15 ["Util"]
      171 GETTABLEKS                       R23 R23 K34 ["logIfDebug"]
      173 CALL                             R22 1 1
      174 GETIMPORT                        R23 K5 [require]
      176 GETTABLEKS                       R24 R0 K6 ["Src"]
      178 GETTABLEKS                       R24 R24 K15 ["Util"]
      180 GETTABLEKS                       R24 R24 K35 ["parseIsoToUnixMillis"]
      182 CALL                             R23 1 1
      183 GETIMPORT                        R24 K5 [require]
      185 GETTABLEKS                       R25 R0 K6 ["Src"]
      187 GETTABLEKS                       R25 R25 K36 ["Flags"]
      189 GETTABLEKS                       R25 R25 K37 ["getFFlagAmrEnableVersioning"]
      191 CALL                             R24 1 1
      192 GETIMPORT                        R25 K5 [require]
      194 GETTABLEKS                       R26 R0 K6 ["Src"]
      196 GETTABLEKS                       R26 R26 K36 ["Flags"]
      198 GETTABLEKS                       R26 R26 K38 ["getFStringStudioDefaultNewTemplatePlaceId"]
      200 CALL                             R25 1 1
      201 GETIMPORT                        R26 K5 [require]
      203 GETTABLEKS                       R27 R0 K6 ["Src"]
      205 GETTABLEKS                       R27 R27 K36 ["Flags"]
      207 GETTABLEKS                       R27 R27 K39 ["getFFlagAmrFriendlyEnumNamesOnly"]
      209 CALL                             R26 1 1
      210 GETIMPORT                        R27 K5 [require]
      212 GETTABLEKS                       R28 R0 K6 ["Src"]
      214 GETTABLEKS                       R28 R28 K36 ["Flags"]
      216 GETTABLEKS                       R28 R28 K40 ["getFFlagAmrAcceptFriendlyEnumNames"]
      218 CALL                             R27 1 1
      219 GETIMPORT                        R28 K5 [require]
      221 GETTABLEKS                       R29 R0 K6 ["Src"]
      223 GETTABLEKS                       R29 R29 K36 ["Flags"]
      225 GETTABLEKS                       R29 R29 K41 ["getFFlagAmrEnableDraftStatus"]
      227 CALL                             R28 1 1
      228 NEWTABLE                         R29 4 0
      230 GETTABLEKS                       R30 R1 K42 ["PermissionsSubject"]
      232 GETTABLEKS                       R30 R30 K43 ["User"]
      234 GETTABLEKS                       R31 R1 K44 ["ScopeType"]
      236 GETTABLEKS                       R31 R31 K43 ["User"]
      238 SETTABLE                         R31 R29 R30
      239 GETTABLEKS                       R30 R1 K42 ["PermissionsSubject"]
      241 GETTABLEKS                       R30 R30 K45 ["Group"]
      243 GETTABLEKS                       R31 R1 K44 ["ScopeType"]
      245 GETTABLEKS                       R31 R31 K45 ["Group"]
      247 SETTABLE                         R31 R29 R30
      248 GETTABLEKS                       R30 R1 K42 ["PermissionsSubject"]
      250 GETTABLEKS                       R30 R30 K46 ["Universe"]
      252 GETTABLEKS                       R31 R1 K44 ["ScopeType"]
      254 GETTABLEKS                       R31 R31 K46 ["Universe"]
      256 SETTABLE                         R31 R29 R30
      257 NEWTABLE                         R30 2 0
      259 GETTABLEKS                       R31 R1 K47 ["PermissionsAction"]
      261 GETTABLEKS                       R31 R31 K48 ["Use"]
      263 LOADB                            R32 1
      264 SETTABLE                         R32 R30 R31
      265 GETTABLEKS                       R31 R1 K47 ["PermissionsAction"]
      267 GETTABLEKS                       R31 R31 K49 ["Edit"]
      269 LOADB                            R32 1
      270 SETTABLE                         R32 R30 R31
      271 NEWTABLE                         R31 64 0
      273 LOADN                            R32 0
      274 SETTABLEKS                       R32 R31 K50 ["_fetchTotalAssets"]
      276 DUPCLOSURE                       R32 K51 [PROTO_0]
      277 CAPTURE                          VAL R1
      278 DUPCLOSURE                       R33 K52 [PROTO_1]
      279 CAPTURE                          VAL R31
      280 SETTABLEKS                       R33 R31 K53 ["setupNewFetchSession"]
      282 DUPCLOSURE                       R33 K54 [PROTO_2]
      283 CAPTURE                          VAL R31
      284 DUPCLOSURE                       R34 K55 [PROTO_4]
      285 CAPTURE                          VAL R10
      286 CAPTURE                          VAL R11
      287 SETTABLEKS                       R34 R31 K56 ["fetchUsername"]
      289 DUPCLOSURE                       R34 K57 [PROTO_7]
      290 CAPTURE                          VAL R5
      291 SETTABLEKS                       R34 R31 K58 ["fetchUniverseInfoAsync"]
      293 DUPCLOSURE                       R34 K59 [PROTO_10]
      294 CAPTURE                          VAL R5
      295 CAPTURE                          VAL R1
      296 CAPTURE                          VAL R18
      297 SETTABLEKS                       R34 R31 K60 ["fetchGroupsAsync"]
      299 DUPCLOSURE                       R34 K61 [PROTO_11]
      300 SETTABLEKS                       R34 R31 K62 ["_delay"]
      302 DUPCLOSURE                       R34 K63 [PROTO_17]
      303 CAPTURE                          VAL R5
      304 CAPTURE                          VAL R1
      305 CAPTURE                          VAL R15
      306 CAPTURE                          VAL R2
      307 CAPTURE                          VAL R22
      308 CAPTURE                          VAL R31
      309 CAPTURE                          VAL R4
      310 CAPTURE                          VAL R3
      311 SETTABLEKS                       R34 R31 K64 ["fetchInventoryFolderReadyAsync"]
      313 DUPCLOSURE                       R34 K65 [PROTO_18]
      314 CAPTURE                          VAL R14
      315 CAPTURE                          VAL R31
      316 CAPTURE                          VAL R21
      317 CAPTURE                          VAL R22
      318 CAPTURE                          VAL R4
      319 CAPTURE                          VAL R1
      320 CAPTURE                          VAL R26
      321 CAPTURE                          VAL R27
      322 CAPTURE                          VAL R23
      323 CAPTURE                          VAL R12
      324 CAPTURE                          VAL R13
      325 CAPTURE                          VAL R24
      326 CAPTURE                          VAL R28
      327 CAPTURE                          VAL R18
      328 SETTABLEKS                       R34 R31 K66 ["_convertResponseToItemsData"]
      330 DUPCLOSURE                       R34 K67 [PROTO_19]
      331 SETTABLEKS                       R34 R31 K68 ["_checkResponse"]
      333 DUPCLOSURE                       R34 K69 [PROTO_22]
      334 CAPTURE                          VAL R1
      335 CAPTURE                          VAL R5
      336 CAPTURE                          VAL R31
      337 CAPTURE                          VAL R22
      338 CAPTURE                          VAL R4
      339 SETTABLEKS                       R34 R31 K70 ["_fetchAssetsImplAsync"]
      341 DUPCLOSURE                       R34 K71 [PROTO_23]
      342 CAPTURE                          VAL R1
      343 CAPTURE                          VAL R18
      344 CAPTURE                          VAL R23
      345 CAPTURE                          VAL R12
      346 CAPTURE                          VAL R31
      347 SETTABLEKS                       R34 R31 K72 ["_parseFetchPlacesResponse"]
      349 DUPCLOSURE                       R34 K73 [PROTO_26]
      350 CAPTURE                          VAL R1
      351 CAPTURE                          VAL R5
      352 CAPTURE                          VAL R31
      353 SETTABLEKS                       R34 R31 K74 ["fetchPlacesAsync"]
      355 DUPCLOSURE                       R34 K75 [PROTO_27]
      356 CAPTURE                          VAL R1
      357 CAPTURE                          VAL R31
      358 SETTABLEKS                       R34 R31 K76 ["fetchAssetsAsync"]
      360 DUPCLOSURE                       R34 K77 [PROTO_30]
      361 CAPTURE                          VAL R5
      362 CAPTURE                          VAL R31
      363 CAPTURE                          VAL R4
      364 SETTABLEKS                       R34 R31 K78 ["_searchAssetsImplAsync"]
      366 DUPCLOSURE                       R34 K79 [PROTO_31]
      367 CAPTURE                          VAL R31
      368 SETTABLEKS                       R34 R31 K80 ["searchAssetsAsync"]
      370 DUPCLOSURE                       R34 K81 [PROTO_34]
      371 CAPTURE                          VAL R16
      372 CAPTURE                          VAL R5
      373 CAPTURE                          VAL R22
      374 CAPTURE                          VAL R4
      375 SETTABLEKS                       R34 R31 K82 ["grantUniverseUseAssetsPermissions"]
      377 DUPCLOSURE                       R34 K83 [PROTO_37]
      378 CAPTURE                          VAL R16
      379 CAPTURE                          VAL R5
      380 CAPTURE                          VAL R1
      381 CAPTURE                          VAL R22
      382 CAPTURE                          VAL R4
      383 SETTABLEKS                       R34 R31 K84 ["grantAssetsPermissionsAsync"]
      385 DUPCLOSURE                       R34 K85 [PROTO_40]
      386 CAPTURE                          VAL R17
      387 CAPTURE                          VAL R5
      388 CAPTURE                          VAL R22
      389 SETTABLEKS                       R34 R31 K86 ["checkAssetsPermissionsAsync"]
      391 DUPCLOSURE                       R34 K87 [PROTO_41]
      392 CAPTURE                          VAL R1
      393 CAPTURE                          VAL R22
      394 SETTABLEKS                       R34 R31 K88 ["getThumbnailUriForScope"]
      396 DUPCLOSURE                       R34 K89 [PROTO_43]
      397 CAPTURE                          VAL R31
      398 CAPTURE                          VAL R7
      399 CAPTURE                          VAL R22
      400 SETTABLEKS                       R34 R31 K90 ["getThumbnailForScopeAsync"]
      402 DUPCLOSURE                       R34 K91 [PROTO_44]
      403 CAPTURE                          VAL R1
      404 SETTABLEKS                       R34 R31 K92 ["getThumbnailForItem"]
      406 DUPCLOSURE                       R34 K93 [PROTO_45]
      407 SETTABLEKS                       R34 R31 K94 ["getFontFamilyThumbnail"]
      409 DUPCLOSURE                       R34 K95 [PROTO_48]
      410 CAPTURE                          VAL R31
      411 CAPTURE                          VAL R7
      412 CAPTURE                          VAL R22
      413 SETTABLEKS                       R34 R31 K96 ["getThumbnailForItemAsync"]
      415 DUPCLOSURE                       R34 K97 [PROTO_51]
      416 CAPTURE                          VAL R5
      417 SETTABLEKS                       R34 R31 K98 ["fetchPluginInfoAsync"]
      419 DUPCLOSURE                       R34 K99 [PROTO_54]
      420 CAPTURE                          VAL R5
      421 CAPTURE                          VAL R22
      422 CAPTURE                          VAL R4
      423 SETTABLEKS                       R34 R31 K100 ["_fetchAssetDependenciesAsync"]
      425 DUPCLOSURE                       R34 K101 [PROTO_57]
      426 CAPTURE                          VAL R5
      427 CAPTURE                          VAL R22
      428 CAPTURE                          VAL R4
      429 SETTABLEKS                       R34 R31 K102 ["_fetchIsPackageAsync"]
      431 DUPCLOSURE                       R34 K103 [PROTO_62]
      432 CAPTURE                          VAL R5
      433 CAPTURE                          VAL R9
      434 CAPTURE                          VAL R8
      435 CAPTURE                          VAL R13
      436 CAPTURE                          VAL R1
      437 CAPTURE                          VAL R18
      438 CAPTURE                          VAL R23
      439 CAPTURE                          VAL R12
      440 CAPTURE                          VAL R19
      441 CAPTURE                          VAL R31
      442 CAPTURE                          VAL R20
      443 CAPTURE                          VAL R22
      444 CAPTURE                          VAL R4
      445 SETTABLEKS                       R34 R31 K104 ["fetchAssetInfoAsync"]
      447 DUPCLOSURE                       R34 K105 [PROTO_64]
      448 CAPTURE                          VAL R1
      449 CAPTURE                          VAL R5
      450 CAPTURE                          VAL R31
      451 SETTABLEKS                       R34 R31 K106 ["fetchFoldersAsync"]
      453 DUPCLOSURE                       R34 K107 [PROTO_68]
      454 CAPTURE                          VAL R1
      455 CAPTURE                          VAL R3
      456 CAPTURE                          VAL R5
      457 CAPTURE                          VAL R14
      458 CAPTURE                          VAL R22
      459 CAPTURE                          VAL R4
      460 SETTABLEKS                       R34 R31 K108 ["createFolderAsync"]
      462 DUPCLOSURE                       R34 K109 [PROTO_72]
      463 CAPTURE                          VAL R3
      464 CAPTURE                          VAL R5
      465 CAPTURE                          VAL R22
      466 CAPTURE                          VAL R4
      467 SETTABLEKS                       R34 R31 K110 ["deleteFolderAsync"]
      469 DUPCLOSURE                       R34 K111 [PROTO_76]
      470 CAPTURE                          VAL R3
      471 CAPTURE                          VAL R5
      472 CAPTURE                          VAL R22
      473 CAPTURE                          VAL R4
      474 SETTABLEKS                       R34 R31 K112 ["updateFolderMetadataAsync"]
      476 DUPCLOSURE                       R34 K113 [PROTO_80]
      477 CAPTURE                          VAL R25
      478 CAPTURE                          VAL R3
      479 CAPTURE                          VAL R5
      480 CAPTURE                          VAL R22
      481 CAPTURE                          VAL R4
      482 SETTABLEKS                       R34 R31 K114 ["createPlaceAsync"]
      484 DUPCLOSURE                       R34 K115 [PROTO_84]
      485 CAPTURE                          VAL R3
      486 CAPTURE                          VAL R5
      487 CAPTURE                          VAL R22
      488 CAPTURE                          VAL R4
      489 SETTABLEKS                       R34 R31 K116 ["removePlaceAsync"]
      491 DUPCLOSURE                       R34 K117 [PROTO_88]
      492 CAPTURE                          VAL R3
      493 CAPTURE                          VAL R5
      494 CAPTURE                          VAL R22
      495 CAPTURE                          VAL R4
      496 SETTABLEKS                       R34 R31 K118 ["renamePlaceAsync"]
      498 DUPCLOSURE                       R34 K119 [PROTO_92]
      499 CAPTURE                          VAL R3
      500 CAPTURE                          VAL R5
      501 CAPTURE                          VAL R1
      502 CAPTURE                          VAL R22
      503 CAPTURE                          VAL R4
      504 SETTABLEKS                       R34 R31 K120 ["getItemParentsAsync"]
      506 DUPCLOSURE                       R34 K121 [PROTO_96]
      507 CAPTURE                          VAL R1
      508 CAPTURE                          VAL R3
      509 CAPTURE                          VAL R5
      510 CAPTURE                          VAL R22
      511 CAPTURE                          VAL R4
      512 SETTABLEKS                       R34 R31 K122 ["moveItemsAsync"]
      514 DUPCLOSURE                       R34 K123 [PROTO_97]
      515 DUPCLOSURE                       R35 K124 [PROTO_101]
      516 CAPTURE                          VAL R3
      517 CAPTURE                          VAL R5
      518 CAPTURE                          VAL R34
      519 CAPTURE                          VAL R22
      520 CAPTURE                          VAL R4
      521 SETTABLEKS                       R35 R31 K125 ["fetchToolboxTechnicalDetailsAsync"]
      523 DUPCLOSURE                       R35 K126 [PROTO_105]
      524 CAPTURE                          VAL R3
      525 CAPTURE                          VAL R1
      526 CAPTURE                          VAL R9
      527 CAPTURE                          VAL R8
      528 CAPTURE                          VAL R31
      529 DUPCLOSURE                       R36 K127 [PROTO_106]
      530 CAPTURE                          VAL R1
      531 CAPTURE                          VAL R29
      532 CAPTURE                          VAL R30
      533 CAPTURE                          VAL R18
      534 DUPCLOSURE                       R37 K128 [PROTO_112]
      535 CAPTURE                          VAL R3
      536 CAPTURE                          VAL R5
      537 CAPTURE                          VAL R36
      538 CAPTURE                          VAL R4
      539 CAPTURE                          VAL R35
      540 CAPTURE                          VAL R22
      541 SETTABLEKS                       R37 R31 K129 ["fetchAssetPermissionsAsync"]
      543 DUPCLOSURE                       R37 K130 [PROTO_113]
      544 SETTABLEKS                       R37 R31 K131 ["resume"]
      546 RETURN                           R31 1
