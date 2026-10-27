PROTO_0:
        0 DUPTABLE                         R0 K8 [{[1], ["NextPageToken"] = "", ["FetchProgress"] = 0, ["Loading"] = False, ["PendingRequestChains"] = 0}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["PathIndexMap"]
        5 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["AssetType"]
        3 GETTABLEKS                       R2 R2 K1 ["Folder"]
        5 JUMPIFNOTEQ                      R0 R2 ; [+3]
        7 LOADB                            R2 0
        8 RETURN                           R2 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["AssetType"]
       12 GETTABLEKS                       R2 R2 K2 ["Place"]
       14 JUMPIFNOTEQ                      R0 R2 ; [+12]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K0 ["AssetType"]
       19 GETTABLEKS                       R4 R4 K2 ["Place"]
       21 GETTABLE                         R3 R1 R4
       22 JUMPIFEQKB                       R3 TRUE ; [+2]
       24 LOADB                            R2 0 +1
       25 LOADB                            R2 1
       26 RETURN                           R2 1
       27 LOADB                            R2 1
       28 GETIMPORT                        R3 K4 [next]
       30 MOVE                             R4 R1
       31 CALL                             R3 1 1
       32 JUMPIFEQKNIL                     R3 ; [+6]
       34 GETTABLE                         R3 R1 R0
       35 JUMPIFEQKB                       R3 TRUE ; [+2]
       37 LOADB                            R2 0 +1
       38 LOADB                            R2 1
       39 RETURN                           R2 1

PROTO_2:
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
       33 DUPTABLE                         R5 K18 [{["PathIndexMap"], ["NextPageToken"] = "", ["FetchProgress"] = 0, ["Loading"] = False, ["PendingRequestChains"] = 0}]
       34 NEWTABLE                         R6 0 0
       36 SETTABLEKS                       R6 R5 K10 ["PathIndexMap"]
       38 SETTABLE                         R5 R3 R4
       39 NEWTABLE                         R3 0 0
       41 SETTABLEKS                       R3 R2 K19 ["_recentHistory"]
       43 NEWTABLE                         R3 0 0
       45 GETUPVAL                         R4 2
       46 GETTABLEKS                       R4 R4 K20 ["asList"]
       48 GETUPVAL                         R5 2
       49 GETTABLEKS                       R5 R5 K21 ["AssetInfoField"]
       51 CALL                             R4 1 3
       52 FORGPREP                         R4
       53 NEWTABLE                         R9 0 0
       55 SETTABLE                         R9 R3 R8
       56 FORGLOOP                         R4 2 ; [-4]
       58 SETTABLEKS                       R3 R2 K22 ["_dataArrays"]
       60 GETUPVAL                         R4 3
       61 GETTABLEKS                       R4 R4 K23 ["new"]
       63 CALL                             R4 0 1
       64 SETTABLEKS                       R4 R2 K24 ["OnItemChanged"]
       66 RETURN                           R2 1

PROTO_3:
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

PROTO_4:
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

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["_dataArrays"]
        2 GETTABLEKS                       R2 R2 K1 ["AssetId"]
        4 LENGTH                           R1 R2
        5 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_maxItems"]
        2 RETURN                           R1 1

PROTO_7:
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

PROTO_8:
        0 GETTABLEKS                       R5 R0 K0 ["_indexMap"]
        2 GETTABLE                         R4 R5 R1
        3 JUMPIF                           R4 ; [+2]
        4 LOADB                            R5 0
        5 RETURN                           R5 1
        6 GETTABLEKS                       R6 R0 K1 ["_dataArrays"]
        8 GETTABLE                         R5 R6 R2
        9 GETTABLEKS                       R6 R4 K2 ["PathIndexMap"]
       11 LOADNIL                          R7
       12 LOADNIL                          R8
       13 FORGPREP                         R6
       14 GETTABLE                         R11 R5 R10
       15 JUMPIFNOTEQ                      R11 R3 ; [+3]
       17 LOADB                            R11 1
       18 RETURN                           R11 1
       19 FORGLOOP                         R6 2 ; [-6]
       21 LOADB                            R6 0
       22 RETURN                           R6 1

PROTO_9:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getScopeItemCount"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R5 R0 K1 ["_maxItems"]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K2 ["InitialScopeFetchLimit"]
        9 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
       11 GETIMPORT                        R4 K5 [math.min]
       13 CALL                             R4 2 1
       14 DIV                              R3 R2 R4
       15 RETURN                           R3 1

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 GETTABLEKS                       R4 R0 K0 ["_indexMap"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+2]
        4 LOADNIL                          R4
        5 RETURN                           R4 1
        6 GETTABLEKS                       R4 R3 K1 ["PathIndexMap"]
        8 GETTABLE                         R5 R4 R2
        9 RETURN                           R5 1

PROTO_16:
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

PROTO_17:
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

PROTO_18:
        0 GETTABLEKS                       R5 R0 K0 ["_indexMap"]
        2 GETTABLE                         R4 R5 R2
        3 LOADK                            R5 K1 ["ItemsCache:addItem called for scopeUid %* which is not in cache. Please add the scope first."]
        4 MOVE                             R7 R2
        5 NAMECALL                         R5 R5 K2 ["format"]
        7 CALL                             R5 2 1
        8 FASTCALL2                        ASSERT R4 R5 ; [+3]
       10 GETIMPORT                        R3 K4 [assert]
       12 CALL                             R3 2 0
       13 MOVE                             R5 R2
       14 GETTABLEKS                       R6 R1 K5 ["Path"]
       16 NAMECALL                         R3 R0 K6 ["_getItemIndex"]
       18 CALL                             R3 3 1
       19 JUMPIFNOT                        R3 ; [+6]
       20 MOVE                             R6 R3
       21 MOVE                             R7 R1
       22 NAMECALL                         R4 R0 K7 ["_updateItem"]
       24 CALL                             R4 3 0
       25 RETURN                           R0 0
       26 GETTABLEKS                       R5 R0 K0 ["_indexMap"]
       28 GETTABLE                         R4 R5 R2
       29 GETTABLEKS                       R4 R4 K8 ["PathIndexMap"]
       31 GETTABLEKS                       R5 R1 K5 ["Path"]
       33 MOVE                             R8 R5
       34 MOVE                             R9 R2
       35 NAMECALL                         R6 R0 K9 ["_hasItem"]
       37 CALL                             R6 3 1
       38 JUMPIFNOT                        R6 ; [+8]
       39 GETUPVAL                         R6 0
       40 LOADK                            R7 K10 ["ItemsCache - duplicate asset detected, overwriting with new data"]
       41 CALL                             R6 1 0
       42 MOVE                             R8 R5
       43 MOVE                             R9 R2
       44 NAMECALL                         R6 R0 K11 ["removeItem"]
       46 CALL                             R6 3 0
       47 NAMECALL                         R6 R0 K12 ["getTotalItemCount"]
       49 CALL                             R6 1 1
       50 ADDK                             R7 R6 K13 [1]
       51 SETTABLE                         R7 R4 R5
       52 GETTABLEKS                       R8 R0 K14 ["_dataArrays"]
       54 GETTABLEKS                       R8 R8 K5 ["Path"]
       56 FASTCALL2                        TABLE_INSERT R8 R5 ; [+4]
       58 MOVE                             R9 R5
       59 GETIMPORT                        R7 K17 [table.insert]
       61 CALL                             R7 2 0
       62 GETTABLEKS                       R8 R0 K14 ["_dataArrays"]
       64 GETTABLEKS                       R8 R8 K18 ["AssetId"]
       66 GETTABLEKS                       R9 R1 K18 ["AssetId"]
       68 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
       70 GETIMPORT                        R7 K17 [table.insert]
       72 CALL                             R7 2 0
       73 GETTABLEKS                       R8 R0 K14 ["_dataArrays"]
       75 GETTABLEKS                       R8 R8 K19 ["AssetType"]
       77 GETTABLEKS                       R9 R1 K19 ["AssetType"]
       79 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
       81 GETIMPORT                        R7 K17 [table.insert]
       83 CALL                             R7 2 0
       84 GETTABLEKS                       R8 R0 K14 ["_dataArrays"]
       86 GETTABLEKS                       R8 R8 K20 ["DisplayName"]
       88 GETTABLEKS                       R9 R1 K20 ["DisplayName"]
       90 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
       92 GETIMPORT                        R7 K17 [table.insert]
       94 CALL                             R7 2 0
       95 GETTABLEKS                       R8 R0 K14 ["_dataArrays"]
       97 GETTABLEKS                       R8 R8 K21 ["VersionNumber"]
       99 GETTABLEKS                       R10 R1 K21 ["VersionNumber"]
      101 JUMPIFEQKNIL                     R10 ; [+4]
      103 GETTABLEKS                       R9 R1 K21 ["VersionNumber"]
      105 JUMP                             ; [+3]
      106 GETUPVAL                         R9 1
      107 GETTABLEKS                       R9 R9 K22 ["None"]
      109 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
      111 GETIMPORT                        R7 K17 [table.insert]
      113 CALL                             R7 2 0
      114 GETTABLEKS                       R8 R0 K14 ["_dataArrays"]
      116 GETTABLEKS                       R8 R8 K23 ["Created"]
      118 GETTABLEKS                       R9 R1 K23 ["Created"]
      120 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
      122 GETIMPORT                        R7 K17 [table.insert]
      124 CALL                             R7 2 0
      125 GETTABLEKS                       R8 R0 K14 ["_dataArrays"]
      127 GETTABLEKS                       R8 R8 K24 ["Modified"]
      129 GETTABLEKS                       R9 R1 K24 ["Modified"]
      131 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
      133 GETIMPORT                        R7 K17 [table.insert]
      135 CALL                             R7 2 0
      136 GETTABLEKS                       R8 R0 K14 ["_dataArrays"]
      138 GETTABLEKS                       R8 R8 K25 ["ModerationStatus"]
      140 GETTABLEKS                       R9 R1 K25 ["ModerationStatus"]
      142 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
      144 GETIMPORT                        R7 K17 [table.insert]
      146 CALL                             R7 2 0
      147 GETUPVAL                         R7 2
      148 CALL                             R7 0 1
      149 JUMPIFNOT                        R7 ; [+19]
      150 GETTABLEKS                       R8 R0 K14 ["_dataArrays"]
      152 GETTABLEKS                       R8 R8 K26 ["DraftStatus"]
      154 GETTABLEKS                       R10 R1 K26 ["DraftStatus"]
      156 JUMPIFEQKNIL                     R10 ; [+4]
      158 GETTABLEKS                       R9 R1 K26 ["DraftStatus"]
      160 JUMP                             ; [+3]
      161 GETUPVAL                         R9 1
      162 GETTABLEKS                       R9 R9 K22 ["None"]
      164 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
      166 GETIMPORT                        R7 K17 [table.insert]
      168 CALL                             R7 2 0
      169 GETTABLEKS                       R8 R0 K14 ["_dataArrays"]
      171 GETTABLEKS                       R8 R8 K27 ["Creator"]
      173 GETTABLEKS                       R9 R1 K27 ["Creator"]
      175 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
      177 GETIMPORT                        R7 K17 [table.insert]
      179 CALL                             R7 2 0
      180 GETTABLEKS                       R8 R0 K14 ["_dataArrays"]
      182 GETTABLEKS                       R8 R8 K28 ["SearchRank"]
      184 GETTABLEKS                       R10 R1 K28 ["SearchRank"]
      186 JUMPIFEQKNIL                     R10 ; [+4]
      188 GETTABLEKS                       R9 R1 K28 ["SearchRank"]
      190 JUMP                             ; [+3]
      191 GETUPVAL                         R9 1
      192 GETTABLEKS                       R9 R9 K22 ["None"]
      194 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
      196 GETIMPORT                        R7 K17 [table.insert]
      198 CALL                             R7 2 0
      199 GETTABLEKS                       R8 R0 K14 ["_dataArrays"]
      201 GETTABLEKS                       R8 R8 K29 ["Source"]
      203 GETTABLEKS                       R10 R1 K29 ["Source"]
      205 JUMPIFEQKNIL                     R10 ; [+4]
      207 GETTABLEKS                       R9 R1 K29 ["Source"]
      209 JUMP                             ; [+3]
      210 GETUPVAL                         R9 1
      211 GETTABLEKS                       R9 R9 K22 ["None"]
      213 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
      215 GETIMPORT                        R7 K17 [table.insert]
      217 CALL                             R7 2 0
      218 GETTABLEKS                       R8 R0 K14 ["_dataArrays"]
      220 GETTABLEKS                       R8 R8 K30 ["Archived"]
      222 GETTABLEKS                       R9 R1 K30 ["Archived"]
      224 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
      226 GETIMPORT                        R7 K17 [table.insert]
      228 CALL                             R7 2 0
      229 GETTABLEKS                       R8 R0 K14 ["_dataArrays"]
      231 GETTABLEKS                       R8 R8 K31 ["IsPackage"]
      233 GETTABLEKS                       R10 R1 K31 ["IsPackage"]
      235 JUMPIFEQKNIL                     R10 ; [+4]
      237 GETTABLEKS                       R9 R1 K31 ["IsPackage"]
      239 JUMP                             ; [+3]
      240 GETUPVAL                         R9 1
      241 GETTABLEKS                       R9 R9 K22 ["None"]
      243 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
      245 GETIMPORT                        R7 K17 [table.insert]
      247 CALL                             R7 2 0
      248 NAMECALL                         R7 R0 K12 ["getTotalItemCount"]
      250 CALL                             R7 1 1
      251 GETTABLEKS                       R8 R0 K32 ["_maxItems"]
      253 JUMPIFNOTLT                      R8 R7 ; [+33]
      255 GETTABLEKS                       R8 R0 K33 ["_scopeQueue"]
      257 LENGTH                           R7 R8
      258 LOADN                            R8 1
      259 JUMPIFLE                         R7 R8 ; [+6]
      261 GETTABLEKS                       R8 R0 K33 ["_scopeQueue"]
      263 GETTABLEN                        R7 R8 1
      264 JUMPIFNOTEQ                      R7 R2 ; [+11]
      266 GETUPVAL                         R7 0
      267 LOADK                            R8 K34 ["ItemsCache: Max items exceeded but cannot evict scope %* because it's the only scope in cache or it's the current scope."]
      268 GETTABLEKS                       R11 R0 K33 ["_scopeQueue"]
      270 GETTABLEN                        R10 R11 1
      271 NAMECALL                         R8 R8 K2 ["format"]
      273 CALL                             R8 2 1
      274 CALL                             R7 1 0
      275 RETURN                           R0 0
      276 GETIMPORT                        R7 K36 [table.remove]
      278 GETTABLEKS                       R8 R0 K33 ["_scopeQueue"]
      280 LOADN                            R9 1
      281 CALL                             R7 2 1
      282 MOVE                             R10 R7
      283 NAMECALL                         R8 R0 K37 ["removeScope"]
      285 CALL                             R8 2 0
      286 JUMPBACK                         ; [-39]
      287 RETURN                           R0 0

PROTO_19:
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
       40 JUMPIF                           R4 ; [+8]
       41 GETUPVAL                         R5 0
       42 LOADK                            R6 K8 ["ItemsCache: Could not find scope owner for item at index %* with path %*"]
       43 MOVE                             R8 R2
       44 MOVE                             R9 R3
       45 NAMECALL                         R6 R6 K9 ["format"]
       47 CALL                             R6 3 1
       48 CALL                             R5 1 0
       49 GETTABLEKS                       R5 R0 K1 ["_dataArrays"]
       51 LOADNIL                          R6
       52 LOADNIL                          R7
       53 FORGPREP                         R5
       54 GETIMPORT                        R10 K4 [table.remove]
       56 MOVE                             R11 R9
       57 CALL                             R10 1 1
       58 SETTABLE                         R10 R9 R1
       59 FORGLOOP                         R5 2 ; [-6]
       61 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R4 R0 K0 ["_indexMap"]
        2 GETTABLE                         R3 R4 R2
        3 JUMPIF                           R3 ; [+9]
        4 GETUPVAL                         R4 0
        5 LOADK                            R5 K1 ["ItemsCache: No scope cache found for scopeUid %* when trying to remove item"]
        6 MOVE                             R7 R2
        7 NAMECALL                         R5 R5 K2 ["format"]
        9 CALL                             R5 2 1
       10 LOADK                            R6 K3 ["WARN"]
       11 CALL                             R4 2 0
       12 RETURN                           R0 0
       13 GETTABLEKS                       R4 R3 K4 ["PathIndexMap"]
       15 GETTABLE                         R5 R4 R1
       16 JUMPIF                           R5 ; [+9]
       17 GETUPVAL                         R6 0
       18 LOADK                            R7 K5 ["ItemsCache: No item found at path \"%*\" when trying to remove item"]
       19 MOVE                             R9 R1
       20 NAMECALL                         R7 R7 K2 ["format"]
       22 CALL                             R7 2 1
       23 LOADK                            R8 K3 ["WARN"]
       24 CALL                             R6 2 0
       25 RETURN                           R0 0
       26 MOVE                             R8 R5
       27 NAMECALL                         R6 R0 K6 ["_swapAndPop"]
       29 CALL                             R6 2 0
       30 LOADNIL                          R6
       31 SETTABLE                         R6 R4 R1
       32 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R4 R0 K0 ["_indexMap"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOTEQKNIL                  R3 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

PROTO_22:
        0 GETTABLEKS                       R3 R0 K0 ["_indexMap"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_23:
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
       20 NAMECALL                         R2 R0 K5 ["getScopeItemCount"]
       22 CALL                             R2 2 1
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K6 ["RecentMax"]
       26 JUMPIFNOTLE                      R3 R2 ; [+30]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K1 ["RecentUploads"]
       31 GETTABLEKS                       R4 R4 K2 ["Uid"]
       33 NAMECALL                         R2 R0 K5 ["getScopeItemCount"]
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

PROTO_24:
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

PROTO_25:
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
       15 DUPTABLE                         R4 K15 [{["PathIndexMap"], ["NextPageToken"] = "", ["FetchProgress"] = 0, ["Loading"] = False, ["PendingRequestChains"] = 0}]
       16 NEWTABLE                         R5 0 0
       18 SETTABLEKS                       R5 R4 K7 ["PathIndexMap"]
       20 SETTABLE                         R4 R3 R1
       21 GETTABLEKS                       R4 R0 K3 ["_scopeQueue"]
       23 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
       25 MOVE                             R5 R1
       26 GETIMPORT                        R3 K17 [table.insert]
       28 CALL                             R3 2 0
       29 GETTABLEKS                       R4 R0 K3 ["_scopeQueue"]
       31 LENGTH                           R3 R4
       32 GETTABLEKS                       R4 R0 K18 ["_maxScopesCached"]
       34 JUMPIFNOTLT                      R4 R3 ; [+11]
       36 GETIMPORT                        R3 K5 [table.remove]
       38 GETTABLEKS                       R4 R0 K3 ["_scopeQueue"]
       40 LOADN                            R5 1
       41 CALL                             R3 2 1
       42 MOVE                             R6 R3
       43 NAMECALL                         R4 R0 K19 ["removeScope"]
       45 CALL                             R4 2 0
       46 GETTABLEKS                       R4 R0 K6 ["_indexMap"]
       48 GETTABLE                         R3 R4 R1
       49 RETURN                           R3 1

PROTO_26:
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

PROTO_27:
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

PROTO_28:
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

PROTO_29:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 GETUPVAL                         R6 1
        4 GETUPVAL                         R7 2
        5 NAMECALL                         R2 R2 K0 ["_compareItemPaths"]
        7 CALL                             R2 5 -1
        8 RETURN                           R2 -1

PROTO_30:
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

PROTO_31:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 GETUPVAL                         R6 1
        4 NEWTABLE                         R7 0 0
        6 NAMECALL                         R2 R2 K0 ["_compareItemPaths"]
        8 CALL                             R2 5 -1
        9 RETURN                           R2 -1

PROTO_32:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 GETUPVAL                         R6 1
        4 GETUPVAL                         R7 2
        5 NAMECALL                         R2 R2 K0 ["_compareItemPaths"]
        7 CALL                             R2 5 -1
        8 RETURN                           R2 -1

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
       20 GETTABLEKS                       R10 R0 K2 ["_dataArrays"]
       22 GETUPVAL                         R11 0
       23 GETTABLEKS                       R11 R11 K3 ["AssetInfoField"]
       25 GETTABLEKS                       R11 R11 K5 ["DisplayName"]
       27 GETTABLE                         R9 R10 R11
       28 NEWTABLE                         R10 0 0
       30 MOVE                             R11 R7
       31 LOADNIL                          R12
       32 LOADNIL                          R13
       33 FORGPREP                         R11
       34 GETTABLE                         R16 R8 R15
       35 GETUPVAL                         R17 0
       36 GETTABLEKS                       R17 R17 K4 ["AssetType"]
       38 GETTABLEKS                       R17 R17 K6 ["Folder"]
       40 JUMPIFNOTEQ                      R16 R17 ; [+14]
       42 MOVE                             R18 R15
       43 MOVE                             R19 R2
       44 NAMECALL                         R16 R0 K7 ["_passesFilters"]
       46 CALL                             R16 3 1
       47 JUMPIFNOT                        R16 ; [+7]
       48 FASTCALL2                        TABLE_INSERT R10 R14 ; [+5]
       50 MOVE                             R17 R10
       51 MOVE                             R18 R14
       52 GETIMPORT                        R16 K10 [table.insert]
       54 CALL                             R16 2 0
       55 FORGLOOP                         R11 2 ; [-22]
       57 GETIMPORT                        R11 K12 [table.sort]
       59 MOVE                             R12 R10
       60 NEWCLOSURE                       R13 P0
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R1
       63 CALL                             R11 2 0
       64 GETTABLEKS                       R12 R4 K13 ["FolderCount"]
       66 JUMPIFNOT                        R12 ; [+9]
       67 GETTABLEKS                       R12 R4 K13 ["FolderCount"]
       69 LENGTH                           R13 R10
       70 FASTCALL2                        MATH_MIN R12 R13 ; [+3]
       72 GETIMPORT                        R11 K16 [math.min]
       74 CALL                             R11 2 1
       75 JUMP                             ; [+1]
       76 LENGTH                           R11 R10
       77 LOADN                            R12 0
       78 JUMPIFNOTLT                      R12 R11 ; [+35]
       80 NEWTABLE                         R12 0 0
       82 LOADN                            R15 1
       83 MOVE                             R13 R11
       84 LOADN                            R14 1
       85 FORNPREP                         R13
       86 GETTABLE                         R18 R10 R15
       87 FASTCALL2                        TABLE_INSERT R12 R18 ; [+4]
       89 MOVE                             R17 R12
       90 GETIMPORT                        R16 K10 [table.insert]
       92 CALL                             R16 2 0
       93 FORNLOOP                         R13
       94 GETIMPORT                        R13 K18 [next]
       96 MOVE                             R14 R3
       97 CALL                             R13 1 1
       98 JUMPIFEQKNIL                     R13 ; [+9]
      100 GETIMPORT                        R13 K12 [table.sort]
      102 MOVE                             R14 R12
      103 NEWCLOSURE                       R15 P1
      104 CAPTURE                          VAL R0
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R3
      107 CALL                             R13 2 0
      108 GETUPVAL                         R13 1
      109 GETTABLEKS                       R13 R13 K19 ["append"]
      111 MOVE                             R14 R6
      112 MOVE                             R15 R12
      113 CALL                             R13 2 0
      114 NEWTABLE                         R12 0 0
      116 GETTABLEKS                       R13 R4 K20 ["AssetTypes"]
      118 LOADNIL                          R14
      119 LOADNIL                          R15
      120 FORGPREP                         R13
      121 LOADB                            R18 1
      122 SETTABLE                         R18 R12 R17
      123 FORGLOOP                         R13 2 ; [-3]
      125 GETUPVAL                         R15 0
      126 GETTABLEKS                       R15 R15 K4 ["AssetType"]
      128 GETTABLEKS                       R15 R15 K21 ["Place"]
      130 GETTABLE                         R14 R12 R15
      131 JUMPIFNOTEQKB                    R14 TRUE ; [+12]
      133 GETTABLEKS                       R14 R4 K22 ["SearchTerm"]
      135 JUMPIFEQKNIL                     R14 ; [+8]
      137 GETTABLEKS                       R14 R4 K22 ["SearchTerm"]
      139 JUMPIFEQKS                       R14 K23 [""] ; [+4]
      141 GETTABLEKS                       R13 R4 K22 ["SearchTerm"]
      143 JUMP                             ; [+1]
      144 LOADNIL                          R13
      145 NEWTABLE                         R14 0 0
      147 MOVE                             R15 R7
      148 LOADNIL                          R16
      149 LOADNIL                          R17
      150 FORGPREP                         R15
      151 GETTABLE                         R20 R8 R19
      152 GETUPVAL                         R22 0
      153 GETTABLEKS                       R22 R22 K4 ["AssetType"]
      155 GETTABLEKS                       R22 R22 K6 ["Folder"]
      157 JUMPIFNOTEQ                      R20 R22 ; [+3]
      159 LOADB                            R21 0
      160 JUMP                             ; [+30]
      161 GETUPVAL                         R22 0
      162 GETTABLEKS                       R22 R22 K4 ["AssetType"]
      164 GETTABLEKS                       R22 R22 K21 ["Place"]
      166 JUMPIFNOTEQ                      R20 R22 ; [+12]
      168 GETUPVAL                         R23 0
      169 GETTABLEKS                       R23 R23 K4 ["AssetType"]
      171 GETTABLEKS                       R23 R23 K21 ["Place"]
      173 GETTABLE                         R22 R12 R23
      174 JUMPIFEQKB                       R22 TRUE ; [+2]
      176 LOADB                            R21 0 +1
      177 LOADB                            R21 1
      178 JUMP                             ; [+12]
      179 LOADB                            R21 1
      180 GETIMPORT                        R22 K18 [next]
      182 MOVE                             R23 R12
      183 CALL                             R22 1 1
      184 JUMPIFEQKNIL                     R22 ; [+6]
      186 GETTABLE                         R22 R12 R20
      187 JUMPIFEQKB                       R22 TRUE ; [+2]
      189 LOADB                            R21 0 +1
      190 LOADB                            R21 1
      191 JUMPIFNOT                        R21 ; [+38]
      192 MOVE                             R23 R19
      193 MOVE                             R24 R2
      194 NAMECALL                         R21 R0 K7 ["_passesFilters"]
      196 CALL                             R21 3 1
      197 JUMPIFNOT                        R21 ; [+32]
      198 GETUPVAL                         R21 0
      199 GETTABLEKS                       R21 R21 K4 ["AssetType"]
      201 GETTABLEKS                       R21 R21 K21 ["Place"]
      203 JUMPIFNOTEQ                      R20 R21 ; [+19]
      205 JUMPIFNOT                        R13 ; [+17]
      206 GETTABLE                         R21 R9 R19
      207 FASTCALL1                        TYPE R21 ; [+3]
      208 MOVE                             R23 R21
      209 GETIMPORT                        R22 K25 [type]
      211 CALL                             R22 1 1
      212 JUMPIFNOTEQKS                    R22 K26 ["string"] ; [+17]
      214 GETUPVAL                         R22 2
      215 MOVE                             R23 R21
      216 NEWTABLE                         R24 0 1
      218 MOVE                             R25 R13
      219 SETLIST                          R24 R25 1 [1]
      221 CALL                             R22 2 1
      222 JUMPIFNOT                        R22 ; [+7]
      223 FASTCALL2                        TABLE_INSERT R14 R18 ; [+5]
      225 MOVE                             R22 R14
      226 MOVE                             R23 R18
      227 GETIMPORT                        R21 K10 [table.insert]
      229 CALL                             R21 2 0
      230 FORGLOOP                         R15 2 ; [-80]
      232 GETIMPORT                        R15 K12 [table.sort]
      234 MOVE                             R16 R14
      235 NEWCLOSURE                       R17 P2
      236 CAPTURE                          VAL R0
      237 CAPTURE                          VAL R1
      238 CAPTURE                          VAL R3
      239 CALL                             R15 2 0
      240 GETUPVAL                         R15 1
      241 GETTABLEKS                       R15 R15 K19 ["append"]
      243 MOVE                             R16 R6
      244 MOVE                             R17 R14
      245 CALL                             R15 2 0
      246 MOVE                             R15 R6
      247 MOVE                             R16 R11
      248 RETURN                           R15 2

PROTO_35:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 GETUPVAL                         R6 1
        4 GETUPVAL                         R7 2
        5 NAMECALL                         R2 R2 K0 ["_compareItemPaths"]
        7 CALL                             R2 5 -1
        8 RETURN                           R2 -1

PROTO_36:
        0 GETIMPORT                        R8 K1 [next]
        2 MOVE                             R9 R5
        3 CALL                             R8 1 1
        4 JUMPIFNOTEQKNIL                  R8 ; [+2]
        6 LOADB                            R7 0 +1
        7 LOADB                            R7 1
        8 NEWTABLE                         R8 0 0
       10 MOVE                             R9 R3
       11 LOADNIL                          R10
       12 LOADNIL                          R11
       13 FORGPREP                         R9
       14 LOADB                            R14 1
       15 SETTABLE                         R14 R8 R13
       16 FORGLOOP                         R9 2 ; [-3]
       18 MOVE                             R9 R1
       19 LOADNIL                          R10
       20 LOADNIL                          R11
       21 FORGPREP                         R9
       22 MOVE                             R16 R4
       23 MOVE                             R17 R13
       24 NAMECALL                         R14 R0 K2 ["_getItemIndex"]
       26 CALL                             R14 3 1
       27 JUMPIFNOT                        R14 ; [+19]
       28 JUMPIFNOT                        R7 ; [+6]
       29 MOVE                             R17 R14
       30 MOVE                             R18 R5
       31 NAMECALL                         R15 R0 K3 ["_passesFilters"]
       33 CALL                             R15 3 1
       34 JUMPIFNOT                        R15 ; [+12]
       35 GETTABLE                         R15 R8 R13
       36 JUMPIF                           R15 ; [+10]
       37 GETUPVAL                         R15 0
       38 MOVE                             R16 R3
       39 MOVE                             R17 R13
       40 NEWCLOSURE                       R18 P0
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R6
       44 CALL                             R15 3 0
       45 LOADB                            R15 1
       46 SETTABLE                         R15 R8 R13
       47 FORGLOOP                         R9 2 ; [-26]
       49 LENGTH                           R9 R2
       50 LOADN                            R10 0
       51 JUMPIFNOTLT                      R10 R9 ; [+29]
       53 NEWTABLE                         R9 0 0
       55 MOVE                             R10 R2
       56 LOADNIL                          R11
       57 LOADNIL                          R12
       58 FORGPREP                         R10
       59 LOADB                            R15 1
       60 SETTABLE                         R15 R9 R14
       61 FORGLOOP                         R10 2 ; [-3]
       63 LOADN                            R10 1
       64 LOADN                            R13 1
       65 LENGTH                           R11 R3
       66 LOADN                            R12 1
       67 FORNPREP                         R11
       68 GETTABLE                         R14 R3 R13
       69 GETTABLE                         R15 R9 R14
       70 JUMPIF                           R15 ; [+2]
       71 SETTABLE                         R14 R3 R10
       72 ADDK                             R10 R10 K4 [1]
       73 FORNLOOP                         R11
       74 LENGTH                           R13 R3
       75 MOVE                             R11 R10
       76 LOADN                            R12 -1
       77 FORNPREP                         R11
       78 LOADNIL                          R14
       79 SETTABLE                         R14 R3 R13
       80 FORNLOOP                         R11
       81 RETURN                           R0 0

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
       52 GETTABLEKS                       R7 R7 K14 ["hasMatchingTerm"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K8 ["Src"]
       59 GETTABLEKS                       R8 R8 K11 ["Util"]
       61 GETTABLEKS                       R8 R8 K15 ["logIfDebug"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K8 ["Src"]
       68 GETTABLEKS                       R9 R9 K11 ["Util"]
       70 GETTABLEKS                       R9 R9 K16 ["binaryInsert"]
       72 CALL                             R8 1 1
       73 GETTABLEKS                       R9 R1 K11 ["Util"]
       75 GETTABLEKS                       R10 R9 K17 ["Signal"]
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K8 ["Src"]
       81 GETTABLEKS                       R12 R12 K18 ["Resources"]
       83 GETTABLEKS                       R12 R12 K19 ["Constants"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K8 ["Src"]
       90 GETTABLEKS                       R13 R13 K20 ["Flags"]
       92 GETTABLEKS                       R13 R13 K21 ["getFFlagAmrEnableDraftStatus"]
       94 CALL                             R12 1 1
       95 NEWTABLE                         R13 32 0
       97 SETTABLEKS                       R13 R13 K22 ["__index"]
       99 DUPCLOSURE                       R14 K23 [PROTO_0]
      100 DUPCLOSURE                       R15 K24 [PROTO_1]
      101 CAPTURE                          VAL R2
      102 DUPCLOSURE                       R16 K25 [PROTO_2]
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R10
      107 SETTABLEKS                       R16 R13 K26 ["new"]
      109 DUPCLOSURE                       R16 K27 [PROTO_3]
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R2
      112 SETTABLEKS                       R16 R13 K28 ["reset"]
      114 DUPCLOSURE                       R16 K29 [PROTO_4]
      115 SETTABLEKS                       R16 R13 K30 ["updateItemField"]
      117 DUPCLOSURE                       R16 K31 [PROTO_5]
      118 SETTABLEKS                       R16 R13 K32 ["getTotalItemCount"]
      120 DUPCLOSURE                       R16 K33 [PROTO_6]
      121 SETTABLEKS                       R16 R13 K34 ["getMaxItems"]
      123 DUPCLOSURE                       R16 K35 [PROTO_7]
      124 CAPTURE                          VAL R3
      125 SETTABLEKS                       R16 R13 K36 ["getScopeItemCount"]
      127 DUPCLOSURE                       R16 K37 [PROTO_8]
      128 SETTABLEKS                       R16 R13 K38 ["scopeHasFieldValue"]
      130 DUPCLOSURE                       R16 K39 [PROTO_9]
      131 CAPTURE                          VAL R11
      132 SETTABLEKS                       R16 R13 K40 ["getScopeCacheFetchProgress"]
      134 DUPCLOSURE                       R16 K41 [PROTO_10]
      135 CAPTURE                          VAL R3
      136 SETTABLEKS                       R16 R13 K42 ["getItemField"]
      138 DUPCLOSURE                       R16 K43 [PROTO_11]
      139 SETTABLEKS                       R16 R13 K44 ["moveItem"]
      141 DUPCLOSURE                       R16 K45 [PROTO_12]
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R3
      144 SETTABLEKS                       R16 R13 K46 ["_getItemAtIndex"]
      146 DUPCLOSURE                       R16 K47 [PROTO_13]
      147 SETTABLEKS                       R16 R13 K48 ["_hasItem"]
      149 DUPCLOSURE                       R16 K49 [PROTO_14]
      150 SETTABLEKS                       R16 R13 K50 ["getData"]
      152 DUPCLOSURE                       R16 K51 [PROTO_15]
      153 SETTABLEKS                       R16 R13 K52 ["_getItemIndex"]
      155 DUPCLOSURE                       R16 K53 [PROTO_16]
      156 SETTABLEKS                       R16 R13 K54 ["getItem"]
      158 DUPCLOSURE                       R16 K55 [PROTO_17]
      159 CAPTURE                          VAL R2
      160 CAPTURE                          VAL R3
      161 SETTABLEKS                       R16 R13 K56 ["_updateItem"]
      163 DUPCLOSURE                       R16 K57 [PROTO_18]
      164 CAPTURE                          VAL R7
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R12
      167 SETTABLEKS                       R16 R13 K58 ["addItem"]
      169 DUPCLOSURE                       R16 K59 [PROTO_19]
      170 CAPTURE                          VAL R7
      171 SETTABLEKS                       R16 R13 K60 ["_swapAndPop"]
      173 DUPCLOSURE                       R16 K61 [PROTO_20]
      174 CAPTURE                          VAL R7
      175 SETTABLEKS                       R16 R13 K62 ["removeItem"]
      177 DUPCLOSURE                       R16 K63 [PROTO_21]
      178 SETTABLEKS                       R16 R13 K64 ["hasScope"]
      180 DUPCLOSURE                       R16 K65 [PROTO_22]
      181 SETTABLEKS                       R16 R13 K66 ["getScope"]
      183 DUPCLOSURE                       R16 K67 [PROTO_23]
      184 CAPTURE                          VAL R11
      185 CAPTURE                          VAL R7
      186 SETTABLEKS                       R16 R13 K68 ["addRecent"]
      188 DUPCLOSURE                       R16 K69 [PROTO_24]
      189 CAPTURE                          VAL R11
      190 SETTABLEKS                       R16 R13 K70 ["clearRecent"]
      192 DUPCLOSURE                       R16 K71 [PROTO_25]
      193 SETTABLEKS                       R16 R13 K72 ["addScope"]
      195 DUPCLOSURE                       R16 K73 [PROTO_26]
      196 SETTABLEKS                       R16 R13 K74 ["removeScope"]
      198 DUPCLOSURE                       R16 K75 [PROTO_27]
      199 CAPTURE                          VAL R5
      200 SETTABLEKS                       R16 R13 K76 ["_passesFilters"]
      202 DUPCLOSURE                       R16 K77 [PROTO_28]
      203 CAPTURE                          VAL R3
      204 CAPTURE                          VAL R4
      205 SETTABLEKS                       R16 R13 K78 ["_compareItemPaths"]
      207 DUPCLOSURE                       R16 K79 [PROTO_30]
      208 CAPTURE                          VAL R3
      209 SETTABLEKS                       R16 R13 K80 ["getSortedFilteredPaths"]
      211 DUPCLOSURE                       R16 K81 [PROTO_34]
      212 CAPTURE                          VAL R2
      213 CAPTURE                          VAL R3
      214 CAPTURE                          VAL R6
      215 SETTABLEKS                       R16 R13 K82 ["getSortedFilteredPathsForSearch"]
      217 DUPCLOSURE                       R16 K83 [PROTO_36]
      218 CAPTURE                          VAL R8
      219 SETTABLEKS                       R16 R13 K84 ["updateSortedFilteredPaths"]
      221 RETURN                           R13 1
