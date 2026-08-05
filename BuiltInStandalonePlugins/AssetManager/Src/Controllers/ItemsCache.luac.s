PROTO_0:
        0 DUPTABLE                         R0 K7 [{[1], ["NextPageToken"] = "", ["FetchProgress"] = 0, ["Loading"] = False}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["PathIndexMap"]
        5 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R3 8 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 ORK                              R3 R0 K2 [100]
        9 SETTABLEKS                       R3 R2 K3 ["_maxScopesCached"]
       11 MOVE                             R3 R1
       12 JUMPIF                           R3 ; [+3]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K4 ["ItemFetchMax"]
       16 SETTABLEKS                       R3 R2 K5 ["_maxItems"]
       18 NEWTABLE                         R3 0 0
       20 SETTABLEKS                       R3 R2 K6 ["_indexMap"]
       22 NEWTABLE                         R3 0 0
       24 SETTABLEKS                       R3 R2 K7 ["_scopeQueue"]
       26 GETTABLEKS                       R3 R2 K6 ["_indexMap"]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R4 R4 K8 ["RecentUploads"]
       31 GETTABLEKS                       R4 R4 K9 ["Uid"]
       33 DUPTABLE                         R5 K17 [{["PathIndexMap"], ["NextPageToken"] = "", ["FetchProgress"] = 0, ["Loading"] = False}]
       34 NEWTABLE                         R6 0 0
       36 SETTABLEKS                       R6 R5 K10 ["PathIndexMap"]
       38 SETTABLE                         R5 R3 R4
       39 NEWTABLE                         R3 0 0
       41 SETTABLEKS                       R3 R2 K18 ["_recentHistory"]
       43 NEWTABLE                         R3 0 0
       45 GETUPVAL                         R4 2
       46 GETTABLEKS                       R4 R4 K19 ["asList"]
       48 GETUPVAL                         R5 2
       49 GETTABLEKS                       R5 R5 K20 ["AssetInfoField"]
       51 CALL                             R4 1 3
       52 FORGPREP                         R4
       53 NEWTABLE                         R9 0 0
       55 SETTABLE                         R9 R3 R8
       56 FORGLOOP                         R4 2 ; [-4]
       58 SETTABLEKS                       R3 R2 K21 ["_dataArrays"]
       60 GETUPVAL                         R4 3
       61 GETTABLEKS                       R4 R4 K22 ["new"]
       63 CALL                             R4 0 1
       64 SETTABLEKS                       R4 R2 K23 ["OnItemChanged"]
       66 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_indexMap"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["RecentUploads"]
        5 GETTABLEKS                       R3 R3 K2 ["Uid"]
        7 GETTABLE                         R1 R2 R3
        8 NEWTABLE                         R2 0 0
       10 SETTABLEKS                       R2 R0 K0 ["_indexMap"]
       12 GETTABLEKS                       R2 R0 K0 ["_indexMap"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K1 ["RecentUploads"]
       17 GETTABLEKS                       R3 R3 K2 ["Uid"]
       19 SETTABLE                         R1 R2 R3
       20 NEWTABLE                         R2 0 0
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K3 ["asList"]
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K4 ["AssetInfoField"]
       28 CALL                             R3 1 3
       29 FORGPREP                         R3
       30 NEWTABLE                         R8 0 0
       32 SETTABLE                         R8 R2 R7
       33 FORGLOOP                         R3 2 ; [-4]
       35 GETTABLEKS                       R3 R1 K5 ["PathIndexMap"]
       37 LOADN                            R4 1
       38 MOVE                             R5 R3
       39 LOADNIL                          R6
       40 LOADNIL                          R7
       41 FORGPREP                         R5
       42 GETUPVAL                         R10 1
       43 GETTABLEKS                       R10 R10 K3 ["asList"]
       45 GETUPVAL                         R11 1
       46 GETTABLEKS                       R11 R11 K4 ["AssetInfoField"]
       48 CALL                             R10 1 3
       49 FORGPREP                         R10
       50 GETTABLE                         R16 R2 R14
       51 GETTABLEKS                       R19 R0 K6 ["_dataArrays"]
       53 GETTABLE                         R18 R19 R14
       54 GETTABLE                         R17 R18 R9
       55 FASTCALL2                        TABLE_INSERT R16 R17 ; [+3]
       57 GETIMPORT                        R15 K9 [table.insert]
       59 CALL                             R15 2 0
       60 FORGLOOP                         R10 2 ; [-11]
       62 SETTABLE                         R4 R3 R8
       63 ADDK                             R4 R4 K10 [1]
       64 FORGLOOP                         R5 2 ; [-23]
       66 NEWTABLE                         R5 0 0
       68 SETTABLEKS                       R5 R0 K11 ["_scopeQueue"]
       70 SETTABLEKS                       R2 R0 K6 ["_dataArrays"]
       72 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R7 R1
        1 MOVE                             R8 R2
        2 NAMECALL                         R5 R0 K0 ["_getItemIndex"]
        4 CALL                             R5 3 1
        5 JUMPIF                           R5 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R7 R0 K1 ["_dataArrays"]
        9 GETTABLE                         R6 R7 R3
       10 SETTABLE                         R4 R6 R5
       11 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["_dataArrays"]
        2 GETTABLEKS                       R2 R2 K1 ["AssetId"]
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
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["count"]
        9 GETTABLEKS                       R4 R2 K2 ["PathIndexMap"]
       11 CALL                             R3 1 -1
       12 RETURN                           R3 -1

PROTO_7:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_getScopeItemCount"]
        3 CALL                             R2 2 1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["ItemFetchMax"]
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
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R8 R8 K3 ["None"]
       16 JUMPIFNOTEQ                      R7 R8 ; [+3]
       18 LOADNIL                          R8
       19 RETURN                           R8 1
       20 RETURN                           R7 1

PROTO_9:
        0 GETTABLEKS                       R5 R0 K0 ["_indexMap"]
        2 GETTABLE                         R4 R5 R2
        3 GETTABLEKS                       R6 R0 K0 ["_indexMap"]
        5 GETTABLE                         R5 R6 R1
        6 JUMPIF                           R5 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R7 R5 K1 ["PathIndexMap"]
       10 GETTABLE                         R6 R7 R3
       11 GETTABLEKS                       R7 R5 K1 ["PathIndexMap"]
       13 LOADNIL                          R8
       14 SETTABLE                         R8 R7 R3
       15 JUMPIFNOT                        R4 ; [+3]
       16 GETTABLEKS                       R7 R4 K1 ["PathIndexMap"]
       18 SETTABLE                         R6 R7 R3
       19 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["asList"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["AssetInfoField"]
        8 CALL                             R3 1 3
        9 FORGPREP                         R3
       10 GETTABLEKS                       R10 R0 K2 ["_dataArrays"]
       12 GETTABLE                         R9 R10 R7
       13 GETTABLE                         R8 R9 R1
       14 GETUPVAL                         R9 1
       15 GETTABLEKS                       R9 R9 K3 ["None"]
       17 JUMPIFNOTEQ                      R8 R9 ; [+2]
       19 LOADNIL                          R8
       20 SETTABLE                         R8 R2 R7
       21 FORGLOOP                         R3 2 ; [-12]
       23 RETURN                           R2 1

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 GETTABLEKS                       R4 R0 K0 ["_indexMap"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+2]
        4 LOADNIL                          R4
        5 RETURN                           R4 1
        6 GETTABLEKS                       R4 R3 K1 ["PathIndexMap"]
        8 GETTABLE                         R5 R4 R2
        9 RETURN                           R5 1

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["asList"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["AssetInfoField"]
        6 CALL                             R3 1 3
        7 FORGPREP                         R3
        8 GETTABLE                         R9 R2 R7
        9 JUMPIFEQKNIL                     R9 ; [+3]
       11 GETTABLE                         R8 R2 R7
       12 JUMP                             ; [+3]
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R8 R8 K2 ["None"]
       16 GETTABLEKS                       R10 R0 K3 ["_dataArrays"]
       18 GETTABLE                         R9 R10 R7
       19 SETTABLE                         R8 R9 R1
       20 FORGLOOP                         R3 2 ; [-13]
       22 RETURN                           R0 0

PROTO_16:
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
       14 MOVE                             R5 R2
       15 GETTABLEKS                       R6 R1 K5 ["Path"]
       17 NAMECALL                         R3 R0 K6 ["_getItemIndex"]
       19 CALL                             R3 3 1
       20 JUMPIFNOT                        R3 ; [+6]
       21 MOVE                             R6 R3
       22 MOVE                             R7 R1
       23 NAMECALL                         R4 R0 K7 ["_updateItem"]
       25 CALL                             R4 3 0
       26 RETURN                           R0 0
       27 GETTABLEKS                       R5 R0 K0 ["_indexMap"]
       29 GETTABLE                         R4 R5 R2
       30 GETTABLEKS                       R4 R4 K8 ["PathIndexMap"]
       32 GETTABLEKS                       R5 R1 K5 ["Path"]
       34 MOVE                             R8 R5
       35 MOVE                             R9 R2
       36 NAMECALL                         R6 R0 K9 ["_hasItem"]
       38 CALL                             R6 3 1
       39 JUMPIFNOT                        R6 ; [+8]
       40 GETUPVAL                         R6 0
       41 LOADK                            R7 K10 ["ItemsCache - duplicate asset detected, overwriting with new data"]
       42 CALL                             R6 1 0
       43 MOVE                             R8 R5
       44 MOVE                             R9 R2
       45 NAMECALL                         R6 R0 K11 ["removeItem"]
       47 CALL                             R6 3 0
       48 NAMECALL                         R6 R0 K12 ["getTotalItemCount"]
       50 CALL                             R6 1 1
       51 ADDK                             R7 R6 K13 [1]
       52 SETTABLE                         R7 R4 R5
       53 GETTABLEKS                       R8 R0 K14 ["_dataArrays"]
       55 GETTABLEKS                       R8 R8 K5 ["Path"]
       57 FASTCALL2                        TABLE_INSERT R8 R5 ; [+4]
       59 MOVE                             R9 R5
       60 GETIMPORT                        R7 K17 [table.insert]
       62 CALL                             R7 2 0
       63 GETTABLEKS                       R8 R0 K14 ["_dataArrays"]
       65 GETTABLEKS                       R8 R8 K18 ["AssetId"]
       67 GETTABLEKS                       R9 R1 K18 ["AssetId"]
       69 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
       71 GETIMPORT                        R7 K17 [table.insert]
       73 CALL                             R7 2 0
       74 GETTABLEKS                       R8 R0 K14 ["_dataArrays"]
       76 GETTABLEKS                       R8 R8 K19 ["AssetType"]
       78 GETTABLEKS                       R9 R1 K19 ["AssetType"]
       80 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
       82 GETIMPORT                        R7 K17 [table.insert]
       84 CALL                             R7 2 0
       85 GETTABLEKS                       R8 R0 K14 ["_dataArrays"]
       87 GETTABLEKS                       R8 R8 K20 ["DisplayName"]
       89 GETTABLEKS                       R9 R1 K20 ["DisplayName"]
       91 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
       93 GETIMPORT                        R7 K17 [table.insert]
       95 CALL                             R7 2 0
       96 GETTABLEKS                       R8 R0 K14 ["_dataArrays"]
       98 GETTABLEKS                       R8 R8 K21 ["VersionNumber"]
      100 GETTABLEKS                       R10 R1 K21 ["VersionNumber"]
      102 JUMPIFEQKNIL                     R10 ; [+4]
      104 GETTABLEKS                       R9 R1 K21 ["VersionNumber"]
      106 JUMP                             ; [+3]
      107 GETUPVAL                         R9 1
      108 GETTABLEKS                       R9 R9 K22 ["None"]
      110 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
      112 GETIMPORT                        R7 K17 [table.insert]
      114 CALL                             R7 2 0
      115 GETTABLEKS                       R8 R0 K14 ["_dataArrays"]
      117 GETTABLEKS                       R8 R8 K23 ["Created"]
      119 GETTABLEKS                       R9 R1 K23 ["Created"]
      121 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
      123 GETIMPORT                        R7 K17 [table.insert]
      125 CALL                             R7 2 0
      126 GETTABLEKS                       R8 R0 K14 ["_dataArrays"]
      128 GETTABLEKS                       R8 R8 K24 ["Modified"]
      130 GETTABLEKS                       R9 R1 K24 ["Modified"]
      132 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
      134 GETIMPORT                        R7 K17 [table.insert]
      136 CALL                             R7 2 0
      137 GETTABLEKS                       R8 R0 K14 ["_dataArrays"]
      139 GETTABLEKS                       R8 R8 K25 ["ModerationStatus"]
      141 GETTABLEKS                       R9 R1 K25 ["ModerationStatus"]
      143 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
      145 GETIMPORT                        R7 K17 [table.insert]
      147 CALL                             R7 2 0
      148 GETTABLEKS                       R8 R0 K14 ["_dataArrays"]
      150 GETTABLEKS                       R8 R8 K26 ["Creator"]
      152 GETTABLEKS                       R9 R1 K26 ["Creator"]
      154 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
      156 GETIMPORT                        R7 K17 [table.insert]
      158 CALL                             R7 2 0
      159 GETTABLEKS                       R8 R0 K14 ["_dataArrays"]
      161 GETTABLEKS                       R8 R8 K27 ["SearchRank"]
      163 GETTABLEKS                       R10 R1 K27 ["SearchRank"]
      165 JUMPIFEQKNIL                     R10 ; [+4]
      167 GETTABLEKS                       R9 R1 K27 ["SearchRank"]
      169 JUMP                             ; [+3]
      170 GETUPVAL                         R9 1
      171 GETTABLEKS                       R9 R9 K22 ["None"]
      173 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
      175 GETIMPORT                        R7 K17 [table.insert]
      177 CALL                             R7 2 0
      178 GETTABLEKS                       R8 R0 K14 ["_dataArrays"]
      180 GETTABLEKS                       R8 R8 K28 ["Source"]
      182 GETTABLEKS                       R10 R1 K28 ["Source"]
      184 JUMPIFEQKNIL                     R10 ; [+4]
      186 GETTABLEKS                       R9 R1 K28 ["Source"]
      188 JUMP                             ; [+3]
      189 GETUPVAL                         R9 1
      190 GETTABLEKS                       R9 R9 K22 ["None"]
      192 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
      194 GETIMPORT                        R7 K17 [table.insert]
      196 CALL                             R7 2 0
      197 GETTABLEKS                       R8 R0 K14 ["_dataArrays"]
      199 GETTABLEKS                       R8 R8 K29 ["Archived"]
      201 GETTABLEKS                       R9 R1 K29 ["Archived"]
      203 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
      205 GETIMPORT                        R7 K17 [table.insert]
      207 CALL                             R7 2 0
      208 GETTABLEKS                       R8 R0 K14 ["_dataArrays"]
      210 GETTABLEKS                       R8 R8 K30 ["IsPackage"]
      212 GETTABLEKS                       R10 R1 K30 ["IsPackage"]
      214 JUMPIFEQKNIL                     R10 ; [+4]
      216 GETTABLEKS                       R9 R1 K30 ["IsPackage"]
      218 JUMP                             ; [+3]
      219 GETUPVAL                         R9 1
      220 GETTABLEKS                       R9 R9 K22 ["None"]
      222 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
      224 GETIMPORT                        R7 K17 [table.insert]
      226 CALL                             R7 2 0
      227 NAMECALL                         R7 R0 K12 ["getTotalItemCount"]
      229 CALL                             R7 1 1
      230 GETTABLEKS                       R8 R0 K31 ["_maxItems"]
      232 JUMPIFNOTLT                      R8 R7 ; [+34]
      234 GETTABLEKS                       R8 R0 K32 ["_scopeQueue"]
      236 LENGTH                           R7 R8
      237 LOADN                            R8 1
      238 JUMPIFLE                         R7 R8 ; [+6]
      240 GETTABLEKS                       R8 R0 K32 ["_scopeQueue"]
      242 GETTABLEN                        R7 R8 1
      243 JUMPIFNOTEQ                      R7 R2 ; [+12]
      245 GETUPVAL                         R7 0
      246 LOADK                            R9 K33 ["ItemsCache: Max items exceeded but cannot evict scope %* because it's the only scope in cache or it's the current scope."]
      247 GETTABLEKS                       R12 R0 K32 ["_scopeQueue"]
      249 GETTABLEN                        R11 R12 1
      250 NAMECALL                         R9 R9 K2 ["format"]
      252 CALL                             R9 2 1
      253 MOVE                             R8 R9
      254 CALL                             R7 1 0
      255 RETURN                           R0 0
      256 GETIMPORT                        R7 K35 [table.remove]
      258 GETTABLEKS                       R8 R0 K32 ["_scopeQueue"]
      260 LOADN                            R9 1
      261 CALL                             R7 2 1
      262 MOVE                             R10 R7
      263 NAMECALL                         R8 R0 K36 ["removeScope"]
      265 CALL                             R8 2 0
      266 JUMPBACK                         ; [-40]
      267 RETURN                           R0 0

PROTO_17:
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
       17 GETTABLEKS                       R4 R0 K1 ["_dataArrays"]
       19 GETTABLEKS                       R4 R4 K5 ["Path"]
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

PROTO_18:
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
       19 LOADK                            R8 K5 ["ItemsCache: No item found at path \"%*\" when trying to remove item"]
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

PROTO_19:
        0 GETTABLEKS                       R4 R0 K0 ["_indexMap"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOTEQKNIL                  R3 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

PROTO_20:
        0 GETTABLEKS                       R3 R0 K0 ["_indexMap"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_21:
        0 GETTABLEKS                       R4 R1 K0 ["Path"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["RecentUploads"]
        5 GETTABLEKS                       R5 R5 K2 ["Uid"]
        7 NAMECALL                         R2 R0 K3 ["_hasItem"]
        9 CALL                             R2 3 1
       10 JUMPIFNOT                        R2 ; [+4]
       11 GETUPVAL                         R2 1
       12 LOADK                            R3 K4 ["ItemsCache - attempting adding recent item that already exists"]
       13 CALL                             R2 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K1 ["RecentUploads"]
       18 GETTABLEKS                       R4 R4 K2 ["Uid"]
       20 NAMECALL                         R2 R0 K5 ["_getScopeItemCount"]
       22 CALL                             R2 2 1
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K6 ["RecentMax"]
       26 JUMPIFNOTLE                      R3 R2 ; [+30]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K1 ["RecentUploads"]
       31 GETTABLEKS                       R4 R4 K2 ["Uid"]
       33 NAMECALL                         R2 R0 K5 ["_getScopeItemCount"]
       35 CALL                             R2 2 1
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K6 ["RecentMax"]
       39 JUMPIFNOTLE                      R3 R2 ; [+17]
       41 GETIMPORT                        R2 K9 [table.remove]
       43 GETTABLEKS                       R3 R0 K10 ["_recentHistory"]
       45 LOADN                            R4 1
       46 CALL                             R2 2 1
       47 MOVE                             R5 R2
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R6 R6 K1 ["RecentUploads"]
       51 GETTABLEKS                       R6 R6 K2 ["Uid"]
       53 NAMECALL                         R3 R0 K11 ["removeItem"]
       55 CALL                             R3 3 0
       56 JUMPBACK                         ; [-29]
       57 GETTABLEKS                       R3 R0 K10 ["_recentHistory"]
       59 GETTABLEKS                       R4 R1 K0 ["Path"]
       61 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       63 GETIMPORT                        R2 K13 [table.insert]
       65 CALL                             R2 2 0
       66 MOVE                             R4 R1
       67 GETUPVAL                         R5 0
       68 GETTABLEKS                       R5 R5 K1 ["RecentUploads"]
       70 GETTABLEKS                       R5 R5 K2 ["Uid"]
       72 NAMECALL                         R2 R0 K14 ["addItem"]
       74 CALL                             R2 3 0
       75 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["_recentHistory"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 MOVE                             R8 R5
        6 GETUPVAL                         R9 0
        7 GETTABLEKS                       R9 R9 K1 ["RecentUploads"]
        9 GETTABLEKS                       R9 R9 K2 ["Uid"]
       11 NAMECALL                         R6 R0 K3 ["removeItem"]
       13 CALL                             R6 3 0
       14 FORGLOOP                         R1 2 ; [-10]
       16 NEWTABLE                         R1 0 0
       18 SETTABLEKS                       R1 R0 K0 ["_recentHistory"]
       20 RETURN                           R0 0

PROTO_23:
        0 GETIMPORT                        R2 K2 [table.find]
        2 GETTABLEKS                       R3 R0 K3 ["_scopeQueue"]
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+6]
        7 GETIMPORT                        R3 K5 [table.remove]
        9 GETTABLEKS                       R4 R0 K3 ["_scopeQueue"]
       11 MOVE                             R5 R2
       12 CALL                             R3 2 0
       13 GETTABLEKS                       R3 R0 K6 ["_indexMap"]
       15 DUPTABLE                         R4 K14 [{["PathIndexMap"], ["NextPageToken"] = "", ["FetchProgress"] = 0, ["Loading"] = False}]
       16 NEWTABLE                         R5 0 0
       18 SETTABLEKS                       R5 R4 K7 ["PathIndexMap"]
       20 SETTABLE                         R4 R3 R1
       21 GETTABLEKS                       R4 R0 K3 ["_scopeQueue"]
       23 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
       25 MOVE                             R5 R1
       26 GETIMPORT                        R3 K16 [table.insert]
       28 CALL                             R3 2 0
       29 GETTABLEKS                       R4 R0 K3 ["_scopeQueue"]
       31 LENGTH                           R3 R4
       32 GETTABLEKS                       R4 R0 K17 ["_maxScopesCached"]
       34 JUMPIFNOTLT                      R4 R3 ; [+11]
       36 GETIMPORT                        R3 K5 [table.remove]
       38 GETTABLEKS                       R4 R0 K3 ["_scopeQueue"]
       40 LOADN                            R5 1
       41 CALL                             R3 2 1
       42 MOVE                             R6 R3
       43 NAMECALL                         R4 R0 K18 ["removeScope"]
       45 CALL                             R4 2 0
       46 GETTABLEKS                       R4 R0 K6 ["_indexMap"]
       48 GETTABLE                         R3 R4 R1
       49 RETURN                           R3 1

PROTO_24:
        0 GETTABLEKS                       R3 R0 K0 ["_indexMap"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R3 R2 K1 ["PathIndexMap"]
        7 MOVE                             R4 R3
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 MOVE                             R11 R7
       12 MOVE                             R12 R1
       13 NAMECALL                         R9 R0 K2 ["removeItem"]
       15 CALL                             R9 3 0
       16 FORGLOOP                         R4 2 ; [-6]
       18 GETTABLEKS                       R4 R0 K0 ["_indexMap"]
       20 LOADNIL                          R5
       21 SETTABLE                         R5 R4 R1
       22 GETIMPORT                        R4 K5 [table.find]
       24 GETTABLEKS                       R5 R0 K6 ["_scopeQueue"]
       26 MOVE                             R6 R1
       27 CALL                             R4 2 1
       28 JUMPIFNOT                        R4 ; [+6]
       29 GETIMPORT                        R5 K8 [table.remove]
       31 GETTABLEKS                       R6 R0 K6 ["_scopeQueue"]
       33 MOVE                             R7 R4
       34 CALL                             R5 2 0
       35 RETURN                           R0 0

PROTO_25:
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

PROTO_26:
        0 MOVE                             R7 R3
        1 MOVE                             R8 R1
        2 NAMECALL                         R5 R0 K0 ["_getItemIndex"]
        4 CALL                             R5 3 1
        5 MOVE                             R8 R3
        6 MOVE                             R9 R2
        7 NAMECALL                         R6 R0 K0 ["_getItemIndex"]
        9 CALL                             R6 3 1
       10 GETTABLEKS                       R8 R0 K1 ["_dataArrays"]
       12 GETTABLEKS                       R8 R8 K2 ["SearchRank"]
       14 GETTABLE                         R7 R8 R5
       15 GETTABLEKS                       R9 R0 K1 ["_dataArrays"]
       17 GETTABLEKS                       R9 R9 K2 ["SearchRank"]
       19 GETTABLE                         R8 R9 R6
       20 LENGTH                           R9 R4
       21 JUMPIFNOTEQKN                    R9 K3 [0] ; [+18]
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R9 R9 K4 ["None"]
       26 JUMPIFEQ                         R7 R9 ; [+13]
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R9 R9 K4 ["None"]
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

PROTO_27:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 GETUPVAL                         R6 1
        4 GETUPVAL                         R7 2
        5 NAMECALL                         R2 R2 K0 ["_compareItemPaths"]
        7 CALL                             R2 5 -1
        8 RETURN                           R2 -1

PROTO_28:
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
       15 JUMPIFEQKNIL                     R7 ; [+23]
       17 MOVE                             R7 R6
       18 LOADNIL                          R8
       19 LOADNIL                          R9
       20 FORGPREP                         R7
       21 JUMPIFEQKS                       R10 K4 [""] ; [+7]
       23 MOVE                             R14 R11
       24 MOVE                             R15 R2
       25 NAMECALL                         R12 R0 K5 ["_passesFilters"]
       27 CALL                             R12 3 1
       28 JUMPIFNOT                        R12 ; [+7]
       29 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       31 MOVE                             R13 R5
       32 MOVE                             R14 R10
       33 GETIMPORT                        R12 K8 [table.insert]
       35 CALL                             R12 2 0
       36 FORGLOOP                         R7 2 ; [-16]
       38 JUMP                             ; [+6]
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R7 R7 K9 ["keys"]
       42 MOVE                             R8 R6
       43 CALL                             R7 1 1
       44 MOVE                             R5 R7
       45 GETIMPORT                        R7 K11 [table.sort]
       47 MOVE                             R8 R5
       48 NEWCLOSURE                       R9 P0
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R3
       52 CALL                             R7 2 0
       53 RETURN                           R5 1

PROTO_29:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 GETUPVAL                         R6 1
        4 NEWTABLE                         R7 0 0
        6 NAMECALL                         R2 R2 K0 ["_compareItemPaths"]
        8 CALL                             R2 5 -1
        9 RETURN                           R2 -1

PROTO_30:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 GETUPVAL                         R6 1
        4 GETUPVAL                         R7 2
        5 NAMECALL                         R2 R2 K0 ["_compareItemPaths"]
        7 CALL                             R2 5 -1
        8 RETURN                           R2 -1

PROTO_31:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 GETUPVAL                         R6 1
        4 GETUPVAL                         R7 2
        5 NAMECALL                         R2 R2 K0 ["_compareItemPaths"]
        7 CALL                             R2 5 -1
        8 RETURN                           R2 -1

PROTO_32:
        0 GETTABLEKS                       R6 R0 K0 ["_indexMap"]
        2 GETTABLE                         R5 R6 R1
        3 JUMPIF                           R5 ; [+4]
        4 NEWTABLE                         R6 0 0
        6 LOADN                            R7 0
        7 RETURN                           R6 2
        8 NEWTABLE                         R6 0 0
       10 GETTABLEKS                       R7 R5 K1 ["PathIndexMap"]
       12 GETTABLEKS                       R9 R0 K2 ["_dataArrays"]
       14 GETUPVAL                         R10 0
       15 GETTABLEKS                       R10 R10 K3 ["AssetInfoField"]
       17 GETTABLEKS                       R10 R10 K4 ["AssetType"]
       19 GETTABLE                         R8 R9 R10
       20 NEWTABLE                         R9 0 0
       22 MOVE                             R10 R7
       23 LOADNIL                          R11
       24 LOADNIL                          R12
       25 FORGPREP                         R10
       26 GETTABLE                         R15 R8 R14
       27 GETUPVAL                         R16 0
       28 GETTABLEKS                       R16 R16 K4 ["AssetType"]
       30 GETTABLEKS                       R16 R16 K5 ["Folder"]
       32 JUMPIFNOTEQ                      R15 R16 ; [+14]
       34 MOVE                             R17 R14
       35 MOVE                             R18 R2
       36 NAMECALL                         R15 R0 K6 ["_passesFilters"]
       38 CALL                             R15 3 1
       39 JUMPIFNOT                        R15 ; [+7]
       40 FASTCALL2                        TABLE_INSERT R9 R13 ; [+5]
       42 MOVE                             R16 R9
       43 MOVE                             R17 R13
       44 GETIMPORT                        R15 K9 [table.insert]
       46 CALL                             R15 2 0
       47 FORGLOOP                         R10 2 ; [-22]
       49 GETIMPORT                        R10 K11 [table.sort]
       51 MOVE                             R11 R9
       52 NEWCLOSURE                       R12 P0
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R1
       55 CALL                             R10 2 0
       56 GETTABLEKS                       R11 R4 K12 ["FolderCount"]
       58 JUMPIFNOT                        R11 ; [+9]
       59 GETTABLEKS                       R11 R4 K12 ["FolderCount"]
       61 LENGTH                           R12 R9
       62 FASTCALL2                        MATH_MIN R11 R12 ; [+3]
       64 GETIMPORT                        R10 K15 [math.min]
       66 CALL                             R10 2 1
       67 JUMP                             ; [+1]
       68 LENGTH                           R10 R9
       69 LOADN                            R11 0
       70 JUMPIFNOTLT                      R11 R10 ; [+35]
       72 NEWTABLE                         R11 0 0
       74 LOADN                            R14 1
       75 MOVE                             R12 R10
       76 LOADN                            R13 1
       77 FORNPREP                         R12
       78 GETTABLE                         R17 R9 R14
       79 FASTCALL2                        TABLE_INSERT R11 R17 ; [+4]
       81 MOVE                             R16 R11
       82 GETIMPORT                        R15 K9 [table.insert]
       84 CALL                             R15 2 0
       85 FORNLOOP                         R12
       86 GETIMPORT                        R12 K17 [next]
       88 MOVE                             R13 R3
       89 CALL                             R12 1 1
       90 JUMPIFEQKNIL                     R12 ; [+9]
       92 GETIMPORT                        R12 K11 [table.sort]
       94 MOVE                             R13 R11
       95 NEWCLOSURE                       R14 P1
       96 CAPTURE                          VAL R0
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R3
       99 CALL                             R12 2 0
      100 GETUPVAL                         R12 1
      101 GETTABLEKS                       R12 R12 K18 ["append"]
      103 MOVE                             R13 R6
      104 MOVE                             R14 R11
      105 CALL                             R12 2 0
      106 NEWTABLE                         R11 0 0
      108 MOVE                             R12 R7
      109 LOADNIL                          R13
      110 LOADNIL                          R14
      111 FORGPREP                         R12
      112 GETTABLE                         R17 R8 R16
      113 GETTABLEKS                       R18 R4 K4 ["AssetType"]
      115 JUMPIFNOTEQ                      R17 R18 ; [+14]
      117 MOVE                             R19 R16
      118 MOVE                             R20 R2
      119 NAMECALL                         R17 R0 K6 ["_passesFilters"]
      121 CALL                             R17 3 1
      122 JUMPIFNOT                        R17 ; [+7]
      123 FASTCALL2                        TABLE_INSERT R11 R15 ; [+5]
      125 MOVE                             R18 R11
      126 MOVE                             R19 R15
      127 GETIMPORT                        R17 K9 [table.insert]
      129 CALL                             R17 2 0
      130 FORGLOOP                         R12 2 ; [-19]
      132 GETIMPORT                        R12 K11 [table.sort]
      134 MOVE                             R13 R11
      135 NEWCLOSURE                       R14 P2
      136 CAPTURE                          VAL R0
      137 CAPTURE                          VAL R1
      138 CAPTURE                          VAL R3
      139 CALL                             R12 2 0
      140 GETUPVAL                         R12 1
      141 GETTABLEKS                       R12 R12 K18 ["append"]
      143 MOVE                             R13 R6
      144 MOVE                             R14 R11
      145 CALL                             R12 2 0
      146 MOVE                             R12 R6
      147 MOVE                             R13 R10
      148 RETURN                           R12 2

PROTO_33:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 GETUPVAL                         R6 1
        4 GETUPVAL                         R7 2
        5 NAMECALL                         R2 R2 K0 ["_compareItemPaths"]
        7 CALL                             R2 5 -1
        8 RETURN                           R2 -1

PROTO_34:
        0 GETIMPORT                        R7 K1 [next]
        2 MOVE                             R8 R4
        3 CALL                             R7 1 1
        4 JUMPIFNOTEQKNIL                  R7 ; [+2]
        6 LOADB                            R6 0 +1
        7 LOADB                            R6 1
        8 NEWTABLE                         R7 0 0
       10 MOVE                             R8 R2
       11 LOADNIL                          R9
       12 LOADNIL                          R10
       13 FORGPREP                         R8
       14 LOADB                            R13 1
       15 SETTABLE                         R13 R7 R12
       16 FORGLOOP                         R8 2 ; [-3]
       18 MOVE                             R8 R1
       19 LOADNIL                          R9
       20 LOADNIL                          R10
       21 FORGPREP                         R8
       22 MOVE                             R15 R3
       23 MOVE                             R16 R12
       24 NAMECALL                         R13 R0 K2 ["_getItemIndex"]
       26 CALL                             R13 3 1
       27 JUMPIFNOT                        R13 ; [+19]
       28 JUMPIFNOT                        R6 ; [+6]
       29 MOVE                             R16 R13
       30 MOVE                             R17 R4
       31 NAMECALL                         R14 R0 K3 ["_passesFilters"]
       33 CALL                             R14 3 1
       34 JUMPIFNOT                        R14 ; [+12]
       35 GETTABLE                         R14 R7 R12
       36 JUMPIF                           R14 ; [+10]
       37 GETUPVAL                         R14 0
       38 MOVE                             R15 R2
       39 MOVE                             R16 R12
       40 NEWCLOSURE                       R17 P0
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R5
       44 CALL                             R14 3 0
       45 LOADB                            R14 1
       46 SETTABLE                         R14 R7 R12
       47 FORGLOOP                         R8 2 ; [-26]
       49 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Dash"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["compareItemField"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K8 ["Src"]
       41 GETTABLEKS                       R6 R6 K11 ["Util"]
       43 GETTABLEKS                       R6 R6 K13 ["filterItemField"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K8 ["Src"]
       50 GETTABLEKS                       R7 R7 K11 ["Util"]
       52 GETTABLEKS                       R7 R7 K14 ["logIfDebug"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K8 ["Src"]
       59 GETTABLEKS                       R8 R8 K11 ["Util"]
       61 GETTABLEKS                       R8 R8 K15 ["binaryInsert"]
       63 CALL                             R7 1 1
       64 GETTABLEKS                       R8 R1 K11 ["Util"]
       66 GETTABLEKS                       R9 R8 K16 ["Signal"]
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K8 ["Src"]
       72 GETTABLEKS                       R11 R11 K17 ["Resources"]
       74 GETTABLEKS                       R11 R11 K18 ["Constants"]
       76 CALL                             R10 1 1
       77 NEWTABLE                         R11 32 0
       79 SETTABLEKS                       R11 R11 K19 ["__index"]
       81 DUPCLOSURE                       R12 K20 [PROTO_0]
       82 DUPCLOSURE                       R13 K21 [PROTO_1]
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R9
       87 SETTABLEKS                       R13 R11 K22 ["new"]
       89 DUPCLOSURE                       R13 K23 [PROTO_2]
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R2
       92 SETTABLEKS                       R13 R11 K24 ["reset"]
       94 DUPCLOSURE                       R13 K25 [PROTO_3]
       95 SETTABLEKS                       R13 R11 K26 ["updateItemField"]
       97 DUPCLOSURE                       R13 K27 [PROTO_4]
       98 SETTABLEKS                       R13 R11 K28 ["getTotalItemCount"]
      100 DUPCLOSURE                       R13 K29 [PROTO_5]
      101 SETTABLEKS                       R13 R11 K30 ["getMaxItems"]
      103 DUPCLOSURE                       R13 K31 [PROTO_6]
      104 CAPTURE                          VAL R3
      105 SETTABLEKS                       R13 R11 K32 ["_getScopeItemCount"]
      107 DUPCLOSURE                       R13 K33 [PROTO_7]
      108 CAPTURE                          VAL R10
      109 SETTABLEKS                       R13 R11 K34 ["getScopeCacheFetchProgress"]
      111 DUPCLOSURE                       R13 K35 [PROTO_8]
      112 CAPTURE                          VAL R3
      113 SETTABLEKS                       R13 R11 K36 ["getItemField"]
      115 DUPCLOSURE                       R13 K37 [PROTO_9]
      116 SETTABLEKS                       R13 R11 K38 ["moveItem"]
      118 DUPCLOSURE                       R13 K39 [PROTO_10]
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R3
      121 SETTABLEKS                       R13 R11 K40 ["_getItemAtIndex"]
      123 DUPCLOSURE                       R13 K41 [PROTO_11]
      124 SETTABLEKS                       R13 R11 K42 ["_hasItem"]
      126 DUPCLOSURE                       R13 K43 [PROTO_12]
      127 SETTABLEKS                       R13 R11 K44 ["getData"]
      129 DUPCLOSURE                       R13 K45 [PROTO_13]
      130 SETTABLEKS                       R13 R11 K46 ["_getItemIndex"]
      132 DUPCLOSURE                       R13 K47 [PROTO_14]
      133 SETTABLEKS                       R13 R11 K48 ["getItem"]
      135 DUPCLOSURE                       R13 K49 [PROTO_15]
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R3
      138 SETTABLEKS                       R13 R11 K50 ["_updateItem"]
      140 DUPCLOSURE                       R13 K51 [PROTO_16]
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R3
      143 SETTABLEKS                       R13 R11 K52 ["addItem"]
      145 DUPCLOSURE                       R13 K53 [PROTO_17]
      146 CAPTURE                          VAL R6
      147 SETTABLEKS                       R13 R11 K54 ["_swapAndPop"]
      149 DUPCLOSURE                       R13 K55 [PROTO_18]
      150 CAPTURE                          VAL R6
      151 SETTABLEKS                       R13 R11 K56 ["removeItem"]
      153 DUPCLOSURE                       R13 K57 [PROTO_19]
      154 SETTABLEKS                       R13 R11 K58 ["hasScope"]
      156 DUPCLOSURE                       R13 K59 [PROTO_20]
      157 SETTABLEKS                       R13 R11 K60 ["getScope"]
      159 DUPCLOSURE                       R13 K61 [PROTO_21]
      160 CAPTURE                          VAL R10
      161 CAPTURE                          VAL R6
      162 SETTABLEKS                       R13 R11 K62 ["addRecent"]
      164 DUPCLOSURE                       R13 K63 [PROTO_22]
      165 CAPTURE                          VAL R10
      166 SETTABLEKS                       R13 R11 K64 ["clearRecent"]
      168 DUPCLOSURE                       R13 K65 [PROTO_23]
      169 SETTABLEKS                       R13 R11 K66 ["addScope"]
      171 DUPCLOSURE                       R13 K67 [PROTO_24]
      172 SETTABLEKS                       R13 R11 K68 ["removeScope"]
      174 DUPCLOSURE                       R13 K69 [PROTO_25]
      175 CAPTURE                          VAL R5
      176 SETTABLEKS                       R13 R11 K70 ["_passesFilters"]
      178 DUPCLOSURE                       R13 K71 [PROTO_26]
      179 CAPTURE                          VAL R3
      180 CAPTURE                          VAL R4
      181 SETTABLEKS                       R13 R11 K72 ["_compareItemPaths"]
      183 DUPCLOSURE                       R13 K73 [PROTO_28]
      184 CAPTURE                          VAL R3
      185 SETTABLEKS                       R13 R11 K74 ["getSortedFilteredPaths"]
      187 DUPCLOSURE                       R13 K75 [PROTO_32]
      188 CAPTURE                          VAL R2
      189 CAPTURE                          VAL R3
      190 SETTABLEKS                       R13 R11 K76 ["getSortedFilteredPathsForSearch"]
      192 DUPCLOSURE                       R13 K77 [PROTO_34]
      193 CAPTURE                          VAL R7
      194 SETTABLEKS                       R13 R11 K78 ["updateSortedFilteredPaths"]
      196 RETURN                           R11 1
