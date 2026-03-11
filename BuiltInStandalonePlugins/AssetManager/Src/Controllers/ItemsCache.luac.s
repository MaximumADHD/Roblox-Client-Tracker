PROTO_0:
        0 DUPTABLE                         R0 K4 [{"PathIndexMap", "NextPageToken", "FetchProgress", "Loading"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["PathIndexMap"]
        5 LOADK                            R1 K5 [""]
        6 SETTABLEKS                       R1 R0 K1 ["NextPageToken"]
        8 LOADN                            R1 0
        9 SETTABLEKS                       R1 R0 K2 ["FetchProgress"]
       11 LOADB                            R1 0
       12 SETTABLEKS                       R1 R0 K3 ["Loading"]
       14 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R3 8 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 ORK                              R3 R0 K2 [10]
        9 SETTABLEKS                       R3 R2 K3 ["_maxScopesCached"]
       11 MOVE                             R3 R1
       12 JUMPIF                           R3 ; [+3]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K4 ["ItemFetchMax"]
       16 SETTABLEKS                       R3 R2 K5 ["_maxItems"]
       18 NEWTABLE                         R3 0 0
       20 SETTABLEKS                       R3 R2 K6 ["_indexMap"]
       22 NEWTABLE                         R3 0 0
       24 SETTABLEKS                       R3 R2 K7 ["_scopeQueue"]
       26 GETTABLEKS                       R3 R2 K6 ["_indexMap"]
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R5 R6 K8 ["RecentUploads"]
       31 GETTABLEKS                       R4 R5 K9 ["Uid"]
       33 DUPTABLE                         R5 K14 [{"PathIndexMap", "NextPageToken", "FetchProgress", "Loading"}]
       34 NEWTABLE                         R6 0 0
       36 SETTABLEKS                       R6 R5 K10 ["PathIndexMap"]
       38 LOADK                            R6 K15 [""]
       39 SETTABLEKS                       R6 R5 K11 ["NextPageToken"]
       41 LOADN                            R6 0
       42 SETTABLEKS                       R6 R5 K12 ["FetchProgress"]
       44 LOADB                            R6 0
       45 SETTABLEKS                       R6 R5 K13 ["Loading"]
       47 SETTABLE                         R5 R3 R4
       48 NEWTABLE                         R3 0 0
       50 SETTABLEKS                       R3 R2 K16 ["_recentHistory"]
       52 NEWTABLE                         R3 0 0
       54 GETUPVAL                         R5 2
       55 GETTABLEKS                       R4 R5 K17 ["getEnumAsList"]
       57 GETUPVAL                         R7 2
       58 GETTABLEKS                       R5 R7 K18 ["AssetInfoField"]
       60 CALL                             R4 1 3
       61 FORGPREP                         R4
       62 NEWTABLE                         R9 0 0
       64 SETTABLE                         R9 R3 R8
       65 FORGLOOP                         R4 2 ; [-4]
       67 SETTABLEKS                       R3 R2 K19 ["_dataArrays"]
       69 GETUPVAL                         R5 3
       70 GETTABLEKS                       R4 R5 K20 ["new"]
       72 CALL                             R4 0 1
       73 SETTABLEKS                       R4 R2 K21 ["OnItemChanged"]
       75 RETURN                           R2 1

PROTO_2:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_indexMap"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["_scopeQueue"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K2 ["_recentHistory"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K3 ["_dataArrays"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K4 ["OnItemChanged"]
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+73]
        3 GETTABLEKS                       R2 R0 K0 ["_indexMap"]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K1 ["RecentUploads"]
        8 GETTABLEKS                       R3 R4 K2 ["Uid"]
       10 GETTABLE                         R1 R2 R3
       11 NEWTABLE                         R2 0 0
       13 SETTABLEKS                       R2 R0 K0 ["_indexMap"]
       15 GETTABLEKS                       R2 R0 K0 ["_indexMap"]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R4 R5 K1 ["RecentUploads"]
       20 GETTABLEKS                       R3 R4 K2 ["Uid"]
       22 SETTABLE                         R1 R2 R3
       23 NEWTABLE                         R2 0 0
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R3 R4 K3 ["getEnumAsList"]
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R4 R6 K4 ["AssetInfoField"]
       31 CALL                             R3 1 3
       32 FORGPREP                         R3
       33 NEWTABLE                         R8 0 0
       35 SETTABLE                         R8 R2 R7
       36 FORGLOOP                         R3 2 ; [-4]
       38 GETTABLEKS                       R3 R1 K5 ["PathIndexMap"]
       40 LOADN                            R4 1
       41 MOVE                             R5 R3
       42 LOADNIL                          R6
       43 LOADNIL                          R7
       44 FORGPREP                         R5
       45 GETUPVAL                         R11 2
       46 GETTABLEKS                       R10 R11 K3 ["getEnumAsList"]
       48 GETUPVAL                         R13 2
       49 GETTABLEKS                       R11 R13 K4 ["AssetInfoField"]
       51 CALL                             R10 1 3
       52 FORGPREP                         R10
       53 GETTABLE                         R16 R2 R14
       54 GETTABLEKS                       R19 R0 K6 ["_dataArrays"]
       56 GETTABLE                         R18 R19 R14
       57 GETTABLE                         R17 R18 R9
       58 FASTCALL2                        TABLE_INSERT R16 R17 ; [+3]
       60 GETIMPORT                        R15 K9 [table.insert]
       62 CALL                             R15 2 0
       63 FORGLOOP                         R10 2 ; [-11]
       65 SETTABLE                         R4 R3 R8
       66 ADDK                             R4 R4 K10 [1]
       67 FORGLOOP                         R5 2 ; [-23]
       69 NEWTABLE                         R5 0 0
       71 SETTABLEKS                       R5 R0 K11 ["_scopeQueue"]
       73 SETTABLEKS                       R2 R0 K6 ["_dataArrays"]
       75 RETURN                           R0 0
       76 NEWTABLE                         R1 0 0
       78 SETTABLEKS                       R1 R0 K0 ["_indexMap"]
       80 NEWTABLE                         R1 0 0
       82 SETTABLEKS                       R1 R0 K11 ["_scopeQueue"]
       84 NEWTABLE                         R1 0 0
       86 SETTABLEKS                       R1 R0 K6 ["_dataArrays"]
       88 GETUPVAL                         R2 2
       89 GETTABLEKS                       R1 R2 K3 ["getEnumAsList"]
       91 GETUPVAL                         R4 2
       92 GETTABLEKS                       R2 R4 K4 ["AssetInfoField"]
       94 CALL                             R1 1 3
       95 FORGPREP                         R1
       96 GETTABLEKS                       R6 R0 K6 ["_dataArrays"]
       98 NEWTABLE                         R7 0 0
      100 SETTABLE                         R7 R6 R5
      101 FORGLOOP                         R1 2 ; [-6]
      103 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["_dataArrays"]
        2 GETTABLEKS                       R2 R3 K1 ["AssetId"]
        4 LENGTH                           R1 R2
        5 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_maxItems"]
        2 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["_indexMap"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+2]
        4 LOADN                            R3 0
        5 RETURN                           R3 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K1 ["count"]
        9 GETTABLEKS                       R4 R2 K2 ["PathIndexMap"]
       11 CALL                             R3 1 -1
       12 RETURN                           R3 -1

PROTO_7:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_getScopeItemCount"]
        3 CALL                             R2 2 1
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K1 ["ItemFetchMax"]
        7 DIV                              R3 R2 R4
        8 RETURN                           R3 1

PROTO_8:
        0 GETTABLEKS                       R5 R0 K0 ["_indexMap"]
        2 GETTABLE                         R4 R5 R1
        3 JUMPIF                           R4 ; [+2]
        4 LOADNIL                          R5
        5 RETURN                           R5 1
        6 GETTABLEKS                       R5 R4 K1 ["PathIndexMap"]
        8 GETTABLE                         R6 R5 R2
        9 GETTABLEKS                       R9 R0 K2 ["_dataArrays"]
       11 GETTABLE                         R8 R9 R3
       12 GETTABLE                         R7 R8 R6
       13 GETUPVAL                         R9 0
       14 GETTABLEKS                       R8 R9 K3 ["None"]
       16 JUMPIFNOTEQ                      R7 R8 ; [+3]
       18 LOADNIL                          R8
       19 RETURN                           R8 1
       20 RETURN                           R7 1

PROTO_9:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["getEnumAsList"]
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R4 R6 K1 ["AssetInfoField"]
        8 CALL                             R3 1 3
        9 FORGPREP                         R3
       10 GETTABLEKS                       R10 R0 K2 ["_dataArrays"]
       12 GETTABLE                         R9 R10 R7
       13 GETTABLE                         R8 R9 R1
       14 GETUPVAL                         R10 1
       15 GETTABLEKS                       R9 R10 K3 ["None"]
       17 JUMPIFNOTEQ                      R8 R9 ; [+2]
       19 LOADNIL                          R8
       20 SETTABLE                         R8 R2 R7
       21 FORGLOOP                         R3 2 ; [-12]
       23 RETURN                           R2 1

PROTO_10:
        0 GETTABLEKS                       R4 R0 K0 ["_indexMap"]
        2 GETTABLE                         R3 R4 R2
        3 LOADB                            R4 0
        4 JUMPIFEQKNIL                     R3 ; [+8]
        6 GETTABLEKS                       R6 R3 K1 ["PathIndexMap"]
        8 GETTABLE                         R5 R6 R1
        9 JUMPIFNOTEQKNIL                  R5 ; [+2]
       11 LOADB                            R4 0 +1
       12 LOADB                            R4 1
       13 RETURN                           R4 1

PROTO_11:
        0 GETTABLEKS                       R5 R0 K0 ["_indexMap"]
        2 GETTABLE                         R4 R5 R1
        3 JUMPIF                           R4 ; [+3]
        4 NEWTABLE                         R5 0 0
        6 RETURN                           R5 1
        7 GETTABLEKS                       R5 R4 K1 ["PathIndexMap"]
        9 NEWTABLE                         R6 0 0
       11 MOVE                             R7 R2
       12 LOADNIL                          R8
       13 LOADNIL                          R9
       14 FORGPREP                         R7
       15 GETTABLE                         R12 R5 R11
       16 GETTABLEKS                       R15 R0 K2 ["_dataArrays"]
       18 GETTABLE                         R14 R15 R3
       19 GETTABLE                         R13 R14 R12
       20 FASTCALL2                        TABLE_INSERT R6 R13 ; [+5]
       22 MOVE                             R15 R6
       23 MOVE                             R16 R13
       24 GETIMPORT                        R14 K5 [table.insert]
       26 CALL                             R14 2 0
       27 FORGLOOP                         R7 2 ; [-13]
       29 RETURN                           R6 1

PROTO_12:
        0 GETTABLEKS                       R4 R0 K0 ["_indexMap"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+2]
        4 LOADNIL                          R4
        5 RETURN                           R4 1
        6 GETTABLEKS                       R4 R3 K1 ["PathIndexMap"]
        8 GETTABLE                         R5 R4 R2
        9 RETURN                           R5 1

PROTO_13:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 NAMECALL                         R3 R0 K0 ["_getItemIndex"]
        4 CALL                             R3 3 1
        5 JUMPIF                           R3 ; [+2]
        6 LOADNIL                          R4
        7 RETURN                           R4 1
        8 MOVE                             R6 R3
        9 NAMECALL                         R4 R0 K1 ["_getItemAtIndex"]
       11 CALL                             R4 2 -1
       12 RETURN                           R4 -1

PROTO_14:
        0 GETTABLEKS                       R5 R0 K0 ["_indexMap"]
        2 GETTABLE                         R4 R5 R2
        3 LOADK                            R6 K1 ["ItemsCache:addItem called for scopeUid %* which is not in cache. Please add the scope first."]
        4 MOVE                             R8 R2
        5 NAMECALL                         R6 R6 K2 ["format"]
        7 CALL                             R6 2 1
        8 MOVE                             R5 R6
        9 FASTCALL2                        ASSERT R4 R5 ; [+3]
       11 GETIMPORT                        R3 K4 [assert]
       13 CALL                             R3 2 0
       14 GETTABLEKS                       R5 R0 K0 ["_indexMap"]
       16 GETTABLE                         R4 R5 R2
       17 GETTABLEKS                       R3 R4 K5 ["PathIndexMap"]
       19 GETTABLEKS                       R4 R1 K6 ["Path"]
       21 MOVE                             R7 R4
       22 MOVE                             R8 R2
       23 NAMECALL                         R5 R0 K7 ["_hasItem"]
       25 CALL                             R5 3 1
       26 JUMPIFNOT                        R5 ; [+8]
       27 GETUPVAL                         R5 0
       28 LOADK                            R6 K8 ["ItemsCache - duplicate asset detected, overwriting with new data"]
       29 CALL                             R5 1 0
       30 MOVE                             R7 R4
       31 MOVE                             R8 R2
       32 NAMECALL                         R5 R0 K9 ["_removeItem"]
       34 CALL                             R5 3 0
       35 NAMECALL                         R5 R0 K10 ["getTotalItemCount"]
       37 CALL                             R5 1 1
       38 ADDK                             R6 R5 K11 [1]
       39 SETTABLE                         R6 R3 R4
       40 GETTABLEKS                       R8 R0 K12 ["_dataArrays"]
       42 GETTABLEKS                       R7 R8 K6 ["Path"]
       44 FASTCALL2                        TABLE_INSERT R7 R4 ; [+4]
       46 MOVE                             R8 R4
       47 GETIMPORT                        R6 K15 [table.insert]
       49 CALL                             R6 2 0
       50 GETTABLEKS                       R8 R0 K12 ["_dataArrays"]
       52 GETTABLEKS                       R7 R8 K16 ["AssetId"]
       54 GETTABLEKS                       R8 R1 K16 ["AssetId"]
       56 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       58 GETIMPORT                        R6 K15 [table.insert]
       60 CALL                             R6 2 0
       61 GETTABLEKS                       R8 R0 K12 ["_dataArrays"]
       63 GETTABLEKS                       R7 R8 K17 ["AssetType"]
       65 GETTABLEKS                       R8 R1 K17 ["AssetType"]
       67 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       69 GETIMPORT                        R6 K15 [table.insert]
       71 CALL                             R6 2 0
       72 GETTABLEKS                       R8 R0 K12 ["_dataArrays"]
       74 GETTABLEKS                       R7 R8 K18 ["DisplayName"]
       76 GETTABLEKS                       R8 R1 K18 ["DisplayName"]
       78 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       80 GETIMPORT                        R6 K15 [table.insert]
       82 CALL                             R6 2 0
       83 GETTABLEKS                       R8 R0 K12 ["_dataArrays"]
       85 GETTABLEKS                       R7 R8 K19 ["VersionNumber"]
       87 GETTABLEKS                       R9 R1 K19 ["VersionNumber"]
       89 JUMPIFEQKNIL                     R9 ; [+4]
       91 GETTABLEKS                       R8 R1 K19 ["VersionNumber"]
       93 JUMP                             ; [+3]
       94 GETUPVAL                         R9 1
       95 GETTABLEKS                       R8 R9 K20 ["None"]
       97 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       99 GETIMPORT                        R6 K15 [table.insert]
      101 CALL                             R6 2 0
      102 GETTABLEKS                       R8 R0 K12 ["_dataArrays"]
      104 GETTABLEKS                       R7 R8 K21 ["Created"]
      106 GETTABLEKS                       R8 R1 K21 ["Created"]
      108 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
      110 GETIMPORT                        R6 K15 [table.insert]
      112 CALL                             R6 2 0
      113 GETTABLEKS                       R8 R0 K12 ["_dataArrays"]
      115 GETTABLEKS                       R7 R8 K22 ["Modified"]
      117 GETTABLEKS                       R8 R1 K22 ["Modified"]
      119 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
      121 GETIMPORT                        R6 K15 [table.insert]
      123 CALL                             R6 2 0
      124 GETTABLEKS                       R8 R0 K12 ["_dataArrays"]
      126 GETTABLEKS                       R7 R8 K23 ["ModerationStatus"]
      128 GETTABLEKS                       R8 R1 K23 ["ModerationStatus"]
      130 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
      132 GETIMPORT                        R6 K15 [table.insert]
      134 CALL                             R6 2 0
      135 GETTABLEKS                       R8 R0 K12 ["_dataArrays"]
      137 GETTABLEKS                       R7 R8 K24 ["Creator"]
      139 GETTABLEKS                       R8 R1 K24 ["Creator"]
      141 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
      143 GETIMPORT                        R6 K15 [table.insert]
      145 CALL                             R6 2 0
      146 GETTABLEKS                       R8 R0 K12 ["_dataArrays"]
      148 GETTABLEKS                       R7 R8 K25 ["SearchRank"]
      150 GETTABLEKS                       R9 R1 K25 ["SearchRank"]
      152 JUMPIFEQKNIL                     R9 ; [+4]
      154 GETTABLEKS                       R8 R1 K25 ["SearchRank"]
      156 JUMP                             ; [+3]
      157 GETUPVAL                         R9 1
      158 GETTABLEKS                       R8 R9 K20 ["None"]
      160 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
      162 GETIMPORT                        R6 K15 [table.insert]
      164 CALL                             R6 2 0
      165 GETTABLEKS                       R8 R0 K12 ["_dataArrays"]
      167 GETTABLEKS                       R7 R8 K26 ["Source"]
      169 GETTABLEKS                       R9 R1 K26 ["Source"]
      171 JUMPIFEQKNIL                     R9 ; [+4]
      173 GETTABLEKS                       R8 R1 K26 ["Source"]
      175 JUMP                             ; [+3]
      176 GETUPVAL                         R9 1
      177 GETTABLEKS                       R8 R9 K20 ["None"]
      179 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
      181 GETIMPORT                        R6 K15 [table.insert]
      183 CALL                             R6 2 0
      184 GETTABLEKS                       R8 R0 K12 ["_dataArrays"]
      186 GETTABLEKS                       R7 R8 K27 ["Archived"]
      188 GETTABLEKS                       R8 R1 K27 ["Archived"]
      190 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
      192 GETIMPORT                        R6 K15 [table.insert]
      194 CALL                             R6 2 0
      195 GETTABLEKS                       R8 R0 K12 ["_dataArrays"]
      197 GETTABLEKS                       R7 R8 K28 ["IsPackage"]
      199 GETTABLEKS                       R9 R1 K28 ["IsPackage"]
      201 JUMPIFEQKNIL                     R9 ; [+4]
      203 GETTABLEKS                       R8 R1 K28 ["IsPackage"]
      205 JUMP                             ; [+3]
      206 GETUPVAL                         R9 1
      207 GETTABLEKS                       R8 R9 K20 ["None"]
      209 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
      211 GETIMPORT                        R6 K15 [table.insert]
      213 CALL                             R6 2 0
      214 NAMECALL                         R6 R0 K10 ["getTotalItemCount"]
      216 CALL                             R6 1 1
      217 GETTABLEKS                       R7 R0 K29 ["_maxItems"]
      219 JUMPIFNOTLT                      R7 R6 ; [+34]
      221 GETTABLEKS                       R7 R0 K30 ["_scopeQueue"]
      223 LENGTH                           R6 R7
      224 LOADN                            R7 1
      225 JUMPIFLE                         R6 R7 ; [+6]
      227 GETTABLEKS                       R7 R0 K30 ["_scopeQueue"]
      229 GETTABLEN                        R6 R7 1
      230 JUMPIFNOTEQ                      R6 R2 ; [+12]
      232 GETUPVAL                         R6 0
      233 LOADK                            R8 K31 ["ItemsCache: Max items exceeded but cannot evict scope %* because it's the only scope in cache or it's the current scope."]
      234 GETTABLEKS                       R11 R0 K30 ["_scopeQueue"]
      236 GETTABLEN                        R10 R11 1
      237 NAMECALL                         R8 R8 K2 ["format"]
      239 CALL                             R8 2 1
      240 MOVE                             R7 R8
      241 CALL                             R6 1 0
      242 RETURN                           R0 0
      243 GETIMPORT                        R6 K33 [table.remove]
      245 GETTABLEKS                       R7 R0 K30 ["_scopeQueue"]
      247 LOADN                            R8 1
      248 CALL                             R6 2 1
      249 MOVE                             R9 R6
      250 NAMECALL                         R7 R0 K34 ["_removeScope"]
      252 CALL                             R7 2 0
      253 JUMPBACK                         ; [-40]
      254 RETURN                           R0 0

PROTO_15:
        0 NAMECALL                         R2 R0 K0 ["getTotalItemCount"]
        2 CALL                             R2 1 1
        3 JUMPIFNOTEQ                      R1 R2 ; [+13]
        5 GETTABLEKS                       R3 R0 K1 ["_dataArrays"]
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 GETIMPORT                        R8 K4 [table.remove]
       12 MOVE                             R9 R7
       13 CALL                             R8 1 0
       14 FORGLOOP                         R3 2 ; [-5]
       16 RETURN                           R0 0
       17 GETTABLEKS                       R5 R0 K1 ["_dataArrays"]
       19 GETTABLEKS                       R4 R5 K5 ["Path"]
       21 GETTABLE                         R3 R4 R2
       22 LOADB                            R4 0
       23 GETTABLEKS                       R5 R0 K6 ["_indexMap"]
       25 LOADNIL                          R6
       26 LOADNIL                          R7
       27 FORGPREP                         R5
       28 GETTABLEKS                       R11 R9 K7 ["PathIndexMap"]
       30 GETTABLE                         R10 R11 R3
       31 JUMPIFNOTEQ                      R10 R2 ; [+6]
       33 GETTABLEKS                       R10 R9 K7 ["PathIndexMap"]
       35 SETTABLE                         R1 R10 R3
       36 LOADB                            R4 1
       37 JUMP                             ; [+2]
       38 FORGLOOP                         R5 2 ; [-11]
       40 JUMPIF                           R4 ; [+9]
       41 GETUPVAL                         R5 0
       42 LOADK                            R7 K8 ["ItemsCache: Could not find scope owner for item at index %* with path %*"]
       43 MOVE                             R9 R2
       44 MOVE                             R10 R3
       45 NAMECALL                         R7 R7 K9 ["format"]
       47 CALL                             R7 3 1
       48 MOVE                             R6 R7
       49 CALL                             R5 1 0
       50 GETTABLEKS                       R5 R0 K1 ["_dataArrays"]
       52 LOADNIL                          R6
       53 LOADNIL                          R7
       54 FORGPREP                         R5
       55 GETIMPORT                        R10 K4 [table.remove]
       57 MOVE                             R11 R9
       58 CALL                             R10 1 1
       59 SETTABLE                         R10 R9 R1
       60 FORGLOOP                         R5 2 ; [-6]
       62 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R4 R0 K0 ["_indexMap"]
        2 GETTABLE                         R3 R4 R2
        3 JUMPIF                           R3 ; [+10]
        4 GETUPVAL                         R4 0
        5 LOADK                            R6 K1 ["ItemsCache: No scope cache found for scopeUid %* when trying to remove item"]
        6 MOVE                             R8 R2
        7 NAMECALL                         R6 R6 K2 ["format"]
        9 CALL                             R6 2 1
       10 MOVE                             R5 R6
       11 LOADK                            R6 K3 ["WARN"]
       12 CALL                             R4 2 0
       13 RETURN                           R0 0
       14 GETTABLEKS                       R4 R3 K4 ["PathIndexMap"]
       16 GETTABLE                         R5 R4 R1
       17 JUMPIF                           R5 ; [+10]
       18 GETUPVAL                         R6 0
       19 LOADK                            R8 K5 ["ItemsCache: No item found at path %* when trying to remove item"]
       20 MOVE                             R10 R1
       21 NAMECALL                         R8 R8 K2 ["format"]
       23 CALL                             R8 2 1
       24 MOVE                             R7 R8
       25 LOADK                            R8 K3 ["WARN"]
       26 CALL                             R6 2 0
       27 RETURN                           R0 0
       28 MOVE                             R8 R5
       29 NAMECALL                         R6 R0 K6 ["_swapAndPop"]
       31 CALL                             R6 2 0
       32 LOADNIL                          R6
       33 SETTABLE                         R6 R4 R1
       34 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R4 R0 K0 ["_indexMap"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOTEQKNIL                  R3 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

PROTO_18:
        0 GETTABLEKS                       R3 R0 K0 ["_indexMap"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_19:
        0 GETTABLEKS                       R4 R1 K0 ["Path"]
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R6 R7 K1 ["RecentUploads"]
        5 GETTABLEKS                       R5 R6 K2 ["Uid"]
        7 NAMECALL                         R2 R0 K3 ["_hasItem"]
        9 CALL                             R2 3 1
       10 JUMPIFNOT                        R2 ; [+4]
       11 GETUPVAL                         R2 1
       12 LOADK                            R3 K4 ["ItemsCache - attempting adding recent item that already exists"]
       13 CALL                             R2 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K1 ["RecentUploads"]
       18 GETTABLEKS                       R4 R5 K2 ["Uid"]
       20 NAMECALL                         R2 R0 K5 ["_getScopeItemCount"]
       22 CALL                             R2 2 1
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R3 R4 K6 ["RecentMax"]
       26 JUMPIFNOTLE                      R3 R2 ; [+30]
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R5 R6 K1 ["RecentUploads"]
       31 GETTABLEKS                       R4 R5 K2 ["Uid"]
       33 NAMECALL                         R2 R0 K5 ["_getScopeItemCount"]
       35 CALL                             R2 2 1
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R3 R4 K6 ["RecentMax"]
       39 JUMPIFNOTLE                      R3 R2 ; [+17]
       41 GETIMPORT                        R2 K9 [table.remove]
       43 GETTABLEKS                       R3 R0 K10 ["_recentHistory"]
       45 LOADN                            R4 1
       46 CALL                             R2 2 1
       47 MOVE                             R5 R2
       48 GETUPVAL                         R8 0
       49 GETTABLEKS                       R7 R8 K1 ["RecentUploads"]
       51 GETTABLEKS                       R6 R7 K2 ["Uid"]
       53 NAMECALL                         R3 R0 K11 ["_removeItem"]
       55 CALL                             R3 3 0
       56 JUMPBACK                         ; [-29]
       57 GETTABLEKS                       R3 R0 K10 ["_recentHistory"]
       59 GETTABLEKS                       R4 R1 K0 ["Path"]
       61 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       63 GETIMPORT                        R2 K13 [table.insert]
       65 CALL                             R2 2 0
       66 MOVE                             R4 R1
       67 GETUPVAL                         R7 0
       68 GETTABLEKS                       R6 R7 K1 ["RecentUploads"]
       70 GETTABLEKS                       R5 R6 K2 ["Uid"]
       72 NAMECALL                         R2 R0 K14 ["addItem"]
       74 CALL                             R2 3 0
       75 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["_recentHistory"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 MOVE                             R8 R5
        6 GETUPVAL                         R11 0
        7 GETTABLEKS                       R10 R11 K1 ["RecentUploads"]
        9 GETTABLEKS                       R9 R10 K2 ["Uid"]
       11 NAMECALL                         R6 R0 K3 ["_removeItem"]
       13 CALL                             R6 3 0
       14 FORGLOOP                         R1 2 ; [-10]
       16 NEWTABLE                         R1 0 0
       18 SETTABLEKS                       R1 R0 K0 ["_recentHistory"]
       20 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["_indexMap"]
        2 DUPTABLE                         R3 K5 [{"PathIndexMap", "NextPageToken", "FetchProgress", "Loading"}]
        3 NEWTABLE                         R4 0 0
        5 SETTABLEKS                       R4 R3 K1 ["PathIndexMap"]
        7 LOADK                            R4 K6 [""]
        8 SETTABLEKS                       R4 R3 K2 ["NextPageToken"]
       10 LOADN                            R4 0
       11 SETTABLEKS                       R4 R3 K3 ["FetchProgress"]
       13 LOADB                            R4 0
       14 SETTABLEKS                       R4 R3 K4 ["Loading"]
       16 SETTABLE                         R3 R2 R1
       17 GETTABLEKS                       R3 R0 K7 ["_scopeQueue"]
       19 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       21 MOVE                             R4 R1
       22 GETIMPORT                        R2 K10 [table.insert]
       24 CALL                             R2 2 0
       25 GETTABLEKS                       R3 R0 K7 ["_scopeQueue"]
       27 LENGTH                           R2 R3
       28 GETTABLEKS                       R3 R0 K11 ["_maxScopesCached"]
       30 JUMPIFNOTLT                      R3 R2 ; [+11]
       32 GETIMPORT                        R2 K13 [table.remove]
       34 GETTABLEKS                       R3 R0 K7 ["_scopeQueue"]
       36 LOADN                            R4 1
       37 CALL                             R2 2 1
       38 MOVE                             R5 R2
       39 NAMECALL                         R3 R0 K14 ["_removeScope"]
       41 CALL                             R3 2 0
       42 GETTABLEKS                       R3 R0 K0 ["_indexMap"]
       44 GETTABLE                         R2 R3 R1
       45 RETURN                           R2 1

PROTO_22:
        0 GETTABLEKS                       R3 R0 K0 ["_indexMap"]
        2 GETTABLE                         R2 R3 R1
        3 GETTABLEKS                       R3 R2 K1 ["PathIndexMap"]
        5 MOVE                             R4 R3
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 FORGPREP                         R4
        9 MOVE                             R11 R7
       10 MOVE                             R12 R1
       11 NAMECALL                         R9 R0 K2 ["_removeItem"]
       13 CALL                             R9 3 0
       14 FORGLOOP                         R4 2 ; [-6]
       16 GETTABLEKS                       R4 R0 K0 ["_indexMap"]
       18 LOADNIL                          R5
       19 SETTABLE                         R5 R4 R1
       20 RETURN                           R0 0

PROTO_23:
        0 MOVE                             R3 R2
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 GETUPVAL                         R9 0
        5 GETTABLE                         R8 R9 R6
        6 GETTABLEKS                       R11 R0 K0 ["_dataArrays"]
        8 GETTABLE                         R10 R11 R6
        9 GETTABLE                         R9 R10 R1
       10 MOVE                             R10 R7
       11 CALL                             R8 2 1
       12 JUMPIF                           R8 ; [+2]
       13 LOADB                            R8 0
       14 RETURN                           R8 1
       15 FORGLOOP                         R3 2 ; [-12]
       17 LOADB                            R3 1
       18 RETURN                           R3 1

PROTO_24:
        0 MOVE                             R7 R3
        1 MOVE                             R8 R1
        2 NAMECALL                         R5 R0 K0 ["_getItemIndex"]
        4 CALL                             R5 3 1
        5 MOVE                             R8 R3
        6 MOVE                             R9 R2
        7 NAMECALL                         R6 R0 K0 ["_getItemIndex"]
        9 CALL                             R6 3 1
       10 GETTABLEKS                       R9 R0 K1 ["_dataArrays"]
       12 GETTABLEKS                       R8 R9 K2 ["SearchRank"]
       14 GETTABLE                         R7 R8 R5
       15 GETTABLEKS                       R10 R0 K1 ["_dataArrays"]
       17 GETTABLEKS                       R9 R10 K2 ["SearchRank"]
       19 GETTABLE                         R8 R9 R6
       20 LENGTH                           R9 R4
       21 JUMPIFNOTEQKN                    R9 K3 [0] ; [+18]
       23 GETUPVAL                         R10 0
       24 GETTABLEKS                       R9 R10 K4 ["None"]
       26 JUMPIFEQ                         R7 R9 ; [+13]
       28 GETUPVAL                         R10 0
       29 GETTABLEKS                       R9 R10 K4 ["None"]
       31 JUMPIFEQ                         R8 R9 ; [+8]
       33 JUMPIFEQ                         R7 R8 ; [+6]
       35 JUMPIFLT                         R7 R8 ; [+2]
       37 LOADB                            R9 0 +1
       38 LOADB                            R9 1
       39 RETURN                           R9 1
       40 MOVE                             R9 R4
       41 LOADNIL                          R10
       42 LOADNIL                          R11
       43 FORGPREP                         R9
       44 GETTABLEKS                       R16 R0 K1 ["_dataArrays"]
       46 GETTABLEKS                       R17 R13 K5 ["Key"]
       48 GETTABLE                         R15 R16 R17
       49 GETTABLE                         R14 R15 R5
       50 GETTABLEKS                       R17 R0 K1 ["_dataArrays"]
       52 GETTABLEKS                       R18 R13 K5 ["Key"]
       54 GETTABLE                         R16 R17 R18
       55 GETTABLE                         R15 R16 R6
       56 GETUPVAL                         R17 1
       57 GETTABLEKS                       R18 R13 K5 ["Key"]
       59 GETTABLE                         R16 R17 R18
       60 MOVE                             R17 R14
       61 MOVE                             R18 R15
       62 GETTABLEKS                       R19 R13 K6 ["IsAscending"]
       64 CALL                             R16 3 1
       65 JUMPIFEQKN                       R16 K3 [0] ; [+6]
       67 JUMPIFEQKN                       R16 K7 [1] ; [+2]
       69 LOADB                            R17 0 +1
       70 LOADB                            R17 1
       71 RETURN                           R17 1
       72 FORGLOOP                         R9 2 ; [-29]
       74 LOADB                            R9 0
       75 RETURN                           R9 1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 GETUPVAL                         R6 1
        4 GETUPVAL                         R7 2
        5 NAMECALL                         R2 R2 K0 ["_compareItemPaths"]
        7 CALL                             R2 5 -1
        8 RETURN                           R2 -1

PROTO_26:
        0 GETTABLEKS                       R5 R0 K0 ["_indexMap"]
        2 GETTABLE                         R4 R5 R1
        3 JUMPIF                           R4 ; [+3]
        4 NEWTABLE                         R5 0 0
        6 RETURN                           R5 1
        7 NEWTABLE                         R5 0 0
        9 GETTABLEKS                       R6 R4 K1 ["PathIndexMap"]
       11 GETIMPORT                        R7 K3 [next]
       13 MOVE                             R8 R2
       14 CALL                             R7 1 1
       15 JUMPIFEQKNIL                     R7 ; [+21]
       17 MOVE                             R7 R6
       18 LOADNIL                          R8
       19 LOADNIL                          R9
       20 FORGPREP                         R7
       21 MOVE                             R14 R11
       22 MOVE                             R15 R2
       23 NAMECALL                         R12 R0 K4 ["_passesFilters"]
       25 CALL                             R12 3 1
       26 JUMPIFNOT                        R12 ; [+7]
       27 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       29 MOVE                             R13 R5
       30 MOVE                             R14 R10
       31 GETIMPORT                        R12 K7 [table.insert]
       33 CALL                             R12 2 0
       34 FORGLOOP                         R7 2 ; [-14]
       36 JUMP                             ; [+6]
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R7 R8 K8 ["keys"]
       40 MOVE                             R8 R6
       41 CALL                             R7 1 1
       42 MOVE                             R5 R7
       43 GETIMPORT                        R7 K10 [table.sort]
       45 MOVE                             R8 R5
       46 NEWCLOSURE                       R9 P0
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R3
       50 CALL                             R7 2 0
       51 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R4 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K10 ["Dash"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K8 ["Src"]
       32 GETTABLEKS                       R6 R7 K11 ["Util"]
       34 GETTABLEKS                       R5 R6 K12 ["compareItemField"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K8 ["Src"]
       41 GETTABLEKS                       R7 R8 K11 ["Util"]
       43 GETTABLEKS                       R6 R7 K13 ["filterItemField"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R9 R0 K8 ["Src"]
       50 GETTABLEKS                       R8 R9 K11 ["Util"]
       52 GETTABLEKS                       R7 R8 K14 ["logIfDebug"]
       54 CALL                             R6 1 1
       55 GETTABLEKS                       R7 R1 K11 ["Util"]
       57 GETTABLEKS                       R8 R7 K15 ["Signal"]
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R12 R0 K8 ["Src"]
       63 GETTABLEKS                       R11 R12 K16 ["Resources"]
       65 GETTABLEKS                       R10 R11 K17 ["Constants"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R13 R0 K8 ["Src"]
       72 GETTABLEKS                       R12 R13 K18 ["Flags"]
       74 GETTABLEKS                       R11 R12 K19 ["getFFlagAmrRecents"]
       76 CALL                             R10 1 1
       77 NEWTABLE                         R11 32 0
       79 SETTABLEKS                       R11 R11 K20 ["__index"]
       81 DUPCLOSURE                       R12 K21 [PROTO_0]
       82 DUPCLOSURE                       R13 K22 [PROTO_1]
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R8
       87 SETTABLEKS                       R13 R11 K23 ["new"]
       89 DUPCLOSURE                       R13 K24 [PROTO_2]
       90 SETTABLEKS                       R13 R11 K25 ["destroy"]
       92 DUPCLOSURE                       R13 K26 [PROTO_3]
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R2
       96 SETTABLEKS                       R13 R11 K27 ["reset"]
       98 DUPCLOSURE                       R13 K28 [PROTO_4]
       99 SETTABLEKS                       R13 R11 K29 ["getTotalItemCount"]
      101 DUPCLOSURE                       R13 K30 [PROTO_5]
      102 SETTABLEKS                       R13 R11 K31 ["getMaxItems"]
      104 DUPCLOSURE                       R13 K32 [PROTO_6]
      105 CAPTURE                          VAL R3
      106 SETTABLEKS                       R13 R11 K33 ["_getScopeItemCount"]
      108 DUPCLOSURE                       R13 K34 [PROTO_7]
      109 CAPTURE                          VAL R9
      110 SETTABLEKS                       R13 R11 K35 ["getScopeCacheFetchProgress"]
      112 DUPCLOSURE                       R13 K36 [PROTO_8]
      113 CAPTURE                          VAL R3
      114 SETTABLEKS                       R13 R11 K37 ["getItemField"]
      116 DUPCLOSURE                       R13 K38 [PROTO_9]
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R3
      119 SETTABLEKS                       R13 R11 K39 ["_getItemAtIndex"]
      121 DUPCLOSURE                       R13 K40 [PROTO_10]
      122 SETTABLEKS                       R13 R11 K41 ["_hasItem"]
      124 DUPCLOSURE                       R13 K42 [PROTO_11]
      125 SETTABLEKS                       R13 R11 K43 ["getData"]
      127 DUPCLOSURE                       R13 K44 [PROTO_12]
      128 SETTABLEKS                       R13 R11 K45 ["_getItemIndex"]
      130 DUPCLOSURE                       R13 K46 [PROTO_13]
      131 SETTABLEKS                       R13 R11 K47 ["getItem"]
      133 DUPCLOSURE                       R13 K48 [PROTO_14]
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R3
      136 SETTABLEKS                       R13 R11 K49 ["addItem"]
      138 DUPCLOSURE                       R13 K50 [PROTO_15]
      139 CAPTURE                          VAL R6
      140 SETTABLEKS                       R13 R11 K51 ["_swapAndPop"]
      142 DUPCLOSURE                       R13 K52 [PROTO_16]
      143 CAPTURE                          VAL R6
      144 SETTABLEKS                       R13 R11 K53 ["_removeItem"]
      146 DUPCLOSURE                       R13 K54 [PROTO_17]
      147 SETTABLEKS                       R13 R11 K55 ["hasScope"]
      149 DUPCLOSURE                       R13 K56 [PROTO_18]
      150 SETTABLEKS                       R13 R11 K57 ["getScope"]
      152 DUPCLOSURE                       R13 K58 [PROTO_19]
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R6
      155 SETTABLEKS                       R13 R11 K59 ["addRecent"]
      157 DUPCLOSURE                       R13 K60 [PROTO_20]
      158 CAPTURE                          VAL R9
      159 SETTABLEKS                       R13 R11 K61 ["clearRecent"]
      161 DUPCLOSURE                       R13 K62 [PROTO_21]
      162 SETTABLEKS                       R13 R11 K63 ["addScope"]
      164 DUPCLOSURE                       R13 K64 [PROTO_22]
      165 SETTABLEKS                       R13 R11 K65 ["_removeScope"]
      167 DUPCLOSURE                       R13 K66 [PROTO_23]
      168 CAPTURE                          VAL R5
      169 SETTABLEKS                       R13 R11 K67 ["_passesFilters"]
      171 DUPCLOSURE                       R13 K68 [PROTO_24]
      172 CAPTURE                          VAL R3
      173 CAPTURE                          VAL R4
      174 SETTABLEKS                       R13 R11 K69 ["_compareItemPaths"]
      176 DUPCLOSURE                       R13 K70 [PROTO_26]
      177 CAPTURE                          VAL R3
      178 SETTABLEKS                       R13 R11 K71 ["getSortedFilteredPaths"]
      180 RETURN                           R11 1
