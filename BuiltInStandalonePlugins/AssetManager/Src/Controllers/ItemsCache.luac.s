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
       12 JUMPIF                           R3 ; [+2]
       13 GETUPVAL                         R3 1
       14 CALL                             R3 0 1
       15 SETTABLEKS                       R3 R2 K4 ["_maxItems"]
       17 NEWTABLE                         R3 0 0
       19 SETTABLEKS                       R3 R2 K5 ["_indexMap"]
       21 NEWTABLE                         R3 0 0
       23 SETTABLEKS                       R3 R2 K6 ["_scopeQueue"]
       25 NEWTABLE                         R3 0 0
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R4 R5 K7 ["getEnumAsList"]
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R5 R7 K8 ["AssetInfoField"]
       33 CALL                             R4 1 3
       34 FORGPREP                         R4
       35 NEWTABLE                         R9 0 0
       37 SETTABLE                         R9 R3 R8
       38 FORGLOOP                         R4 2 ; [-4]
       40 SETTABLEKS                       R3 R2 K9 ["_dataArrays"]
       42 GETUPVAL                         R5 3
       43 GETTABLEKS                       R4 R5 K10 ["new"]
       45 CALL                             R4 0 1
       46 SETTABLEKS                       R4 R2 K11 ["OnItemChanged"]
       48 RETURN                           R2 1

PROTO_2:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_indexMap"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["_scopeQueue"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K2 ["_dataArrays"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K3 ["OnItemChanged"]
       12 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["_indexMap"]
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K1 ["_scopeQueue"]
        8 NEWTABLE                         R1 0 0
       10 SETTABLEKS                       R1 R0 K2 ["_dataArrays"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K3 ["getEnumAsList"]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R2 R4 K4 ["AssetInfoField"]
       18 CALL                             R1 1 3
       19 FORGPREP                         R1
       20 GETTABLEKS                       R6 R0 K2 ["_dataArrays"]
       22 NEWTABLE                         R7 0 0
       24 SETTABLE                         R7 R6 R5
       25 FORGLOOP                         R1 2 ; [-6]
       27 RETURN                           R0 0

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
        4 GETUPVAL                         R4 0
        5 CALL                             R4 0 1
        6 DIV                              R3 R2 R4
        7 RETURN                           R3 1

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

PROTO_11:
        0 GETTABLEKS                       R4 R0 K0 ["_indexMap"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+2]
        4 LOADNIL                          R4
        5 RETURN                           R4 1
        6 GETTABLEKS                       R4 R3 K1 ["PathIndexMap"]
        8 GETTABLE                         R5 R4 R2
        9 RETURN                           R5 1

PROTO_12:
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

PROTO_13:
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
       21 NAMECALL                         R5 R0 K7 ["getTotalItemCount"]
       23 CALL                             R5 1 1
       24 ADDK                             R6 R5 K8 [1]
       25 SETTABLE                         R6 R3 R4
       26 GETTABLEKS                       R8 R0 K9 ["_dataArrays"]
       28 GETTABLEKS                       R7 R8 K6 ["Path"]
       30 FASTCALL2                        TABLE_INSERT R7 R4 ; [+4]
       32 MOVE                             R8 R4
       33 GETIMPORT                        R6 K12 [table.insert]
       35 CALL                             R6 2 0
       36 GETTABLEKS                       R8 R0 K9 ["_dataArrays"]
       38 GETTABLEKS                       R7 R8 K13 ["AssetId"]
       40 GETTABLEKS                       R8 R1 K13 ["AssetId"]
       42 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       44 GETIMPORT                        R6 K12 [table.insert]
       46 CALL                             R6 2 0
       47 GETTABLEKS                       R8 R0 K9 ["_dataArrays"]
       49 GETTABLEKS                       R7 R8 K14 ["AssetType"]
       51 GETTABLEKS                       R8 R1 K14 ["AssetType"]
       53 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       55 GETIMPORT                        R6 K12 [table.insert]
       57 CALL                             R6 2 0
       58 GETTABLEKS                       R8 R0 K9 ["_dataArrays"]
       60 GETTABLEKS                       R7 R8 K15 ["DisplayName"]
       62 GETTABLEKS                       R8 R1 K15 ["DisplayName"]
       64 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       66 GETIMPORT                        R6 K12 [table.insert]
       68 CALL                             R6 2 0
       69 GETTABLEKS                       R8 R0 K9 ["_dataArrays"]
       71 GETTABLEKS                       R7 R8 K16 ["VersionNumber"]
       73 GETTABLEKS                       R9 R1 K16 ["VersionNumber"]
       75 JUMPIFEQKNIL                     R9 ; [+4]
       77 GETTABLEKS                       R8 R1 K16 ["VersionNumber"]
       79 JUMP                             ; [+3]
       80 GETUPVAL                         R9 0
       81 GETTABLEKS                       R8 R9 K17 ["None"]
       83 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       85 GETIMPORT                        R6 K12 [table.insert]
       87 CALL                             R6 2 0
       88 GETTABLEKS                       R8 R0 K9 ["_dataArrays"]
       90 GETTABLEKS                       R7 R8 K18 ["Created"]
       92 GETTABLEKS                       R8 R1 K18 ["Created"]
       94 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       96 GETIMPORT                        R6 K12 [table.insert]
       98 CALL                             R6 2 0
       99 GETTABLEKS                       R8 R0 K9 ["_dataArrays"]
      101 GETTABLEKS                       R7 R8 K19 ["Modified"]
      103 GETTABLEKS                       R8 R1 K19 ["Modified"]
      105 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
      107 GETIMPORT                        R6 K12 [table.insert]
      109 CALL                             R6 2 0
      110 GETTABLEKS                       R8 R0 K9 ["_dataArrays"]
      112 GETTABLEKS                       R7 R8 K20 ["ModerationStatus"]
      114 GETTABLEKS                       R8 R1 K20 ["ModerationStatus"]
      116 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
      118 GETIMPORT                        R6 K12 [table.insert]
      120 CALL                             R6 2 0
      121 GETTABLEKS                       R8 R0 K9 ["_dataArrays"]
      123 GETTABLEKS                       R7 R8 K21 ["Creator"]
      125 GETTABLEKS                       R8 R1 K21 ["Creator"]
      127 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
      129 GETIMPORT                        R6 K12 [table.insert]
      131 CALL                             R6 2 0
      132 GETTABLEKS                       R8 R0 K9 ["_dataArrays"]
      134 GETTABLEKS                       R7 R8 K22 ["SearchRank"]
      136 GETTABLEKS                       R9 R1 K22 ["SearchRank"]
      138 JUMPIFEQKNIL                     R9 ; [+4]
      140 GETTABLEKS                       R8 R1 K22 ["SearchRank"]
      142 JUMP                             ; [+3]
      143 GETUPVAL                         R9 0
      144 GETTABLEKS                       R8 R9 K17 ["None"]
      146 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
      148 GETIMPORT                        R6 K12 [table.insert]
      150 CALL                             R6 2 0
      151 GETTABLEKS                       R8 R0 K9 ["_dataArrays"]
      153 GETTABLEKS                       R7 R8 K23 ["Source"]
      155 GETTABLEKS                       R9 R1 K23 ["Source"]
      157 JUMPIFEQKNIL                     R9 ; [+4]
      159 GETTABLEKS                       R8 R1 K23 ["Source"]
      161 JUMP                             ; [+3]
      162 GETUPVAL                         R9 0
      163 GETTABLEKS                       R8 R9 K17 ["None"]
      165 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
      167 GETIMPORT                        R6 K12 [table.insert]
      169 CALL                             R6 2 0
      170 GETTABLEKS                       R8 R0 K9 ["_dataArrays"]
      172 GETTABLEKS                       R7 R8 K24 ["Archived"]
      174 GETTABLEKS                       R8 R1 K24 ["Archived"]
      176 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
      178 GETIMPORT                        R6 K12 [table.insert]
      180 CALL                             R6 2 0
      181 GETTABLEKS                       R8 R0 K9 ["_dataArrays"]
      183 GETTABLEKS                       R7 R8 K25 ["IsPackage"]
      185 GETTABLEKS                       R9 R1 K25 ["IsPackage"]
      187 JUMPIFEQKNIL                     R9 ; [+4]
      189 GETTABLEKS                       R8 R1 K25 ["IsPackage"]
      191 JUMP                             ; [+3]
      192 GETUPVAL                         R9 0
      193 GETTABLEKS                       R8 R9 K17 ["None"]
      195 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
      197 GETIMPORT                        R6 K12 [table.insert]
      199 CALL                             R6 2 0
      200 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
        0 GETTABLEKS                       R4 R0 K0 ["_indexMap"]
        2 GETTABLE                         R3 R4 R2
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R4 R3 K1 ["PathIndexMap"]
        7 GETTABLE                         R5 R4 R1
        8 MOVE                             R8 R5
        9 NAMECALL                         R6 R0 K2 ["_swapAndPop"]
       11 CALL                             R6 2 0
       12 LOADNIL                          R6
       13 SETTABLE                         R6 R4 R1
       14 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R4 R0 K0 ["_indexMap"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOTEQKNIL                  R3 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["_indexMap"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 GETUPVAL                         R6 1
        4 GETUPVAL                         R7 2
        5 NAMECALL                         R2 R2 K0 ["_compareItemPaths"]
        7 CALL                             R2 5 -1
        8 RETURN                           R2 -1

PROTO_23:
        0 GETTABLEKS                       R5 R0 K0 ["_indexMap"]
        2 GETTABLE                         R4 R5 R1
        3 JUMPIF                           R4 ; [+3]
        4 NEWTABLE                         R5 0 0
        6 RETURN                           R5 1
        7 GETTABLEKS                       R5 R4 K1 ["PathIndexMap"]
        9 NEWTABLE                         R6 0 0
       11 GETIMPORT                        R7 K3 [next]
       13 MOVE                             R8 R2
       14 CALL                             R7 1 1
       15 JUMPIFEQKNIL                     R7 ; [+21]
       17 MOVE                             R7 R5
       18 LOADNIL                          R8
       19 LOADNIL                          R9
       20 FORGPREP                         R7
       21 MOVE                             R14 R11
       22 MOVE                             R15 R2
       23 NAMECALL                         R12 R0 K4 ["_passesFilters"]
       25 CALL                             R12 3 1
       26 JUMPIFNOT                        R12 ; [+7]
       27 FASTCALL2                        TABLE_INSERT R6 R10 ; [+5]
       29 MOVE                             R13 R6
       30 MOVE                             R14 R10
       31 GETIMPORT                        R12 K7 [table.insert]
       33 CALL                             R12 2 0
       34 FORGLOOP                         R7 2 ; [-14]
       36 JUMP                             ; [+6]
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R7 R8 K8 ["keys"]
       40 MOVE                             R8 R5
       41 CALL                             R7 1 1
       42 MOVE                             R6 R7
       43 GETIMPORT                        R7 K10 [table.sort]
       45 MOVE                             R8 R6
       46 NEWCLOSURE                       R9 P0
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R3
       50 CALL                             R7 2 0
       51 RETURN                           R6 1

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
       63 GETTABLEKS                       R11 R12 K16 ["Flags"]
       65 GETTABLEKS                       R10 R11 K17 ["getFIntAmrAssetFetchCount"]
       67 CALL                             R9 1 1
       68 NEWTABLE                         R10 32 0
       70 SETTABLEKS                       R10 R10 K18 ["__index"]
       72 DUPCLOSURE                       R11 K19 [PROTO_0]
       73 DUPCLOSURE                       R12 K20 [PROTO_1]
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R8
       78 SETTABLEKS                       R12 R10 K21 ["new"]
       80 DUPCLOSURE                       R12 K22 [PROTO_2]
       81 SETTABLEKS                       R12 R10 K23 ["destroy"]
       83 DUPCLOSURE                       R12 K24 [PROTO_3]
       84 CAPTURE                          VAL R2
       85 SETTABLEKS                       R12 R10 K25 ["reset"]
       87 DUPCLOSURE                       R12 K26 [PROTO_4]
       88 SETTABLEKS                       R12 R10 K27 ["getTotalItemCount"]
       90 DUPCLOSURE                       R12 K28 [PROTO_5]
       91 SETTABLEKS                       R12 R10 K29 ["getMaxItems"]
       93 DUPCLOSURE                       R12 K30 [PROTO_6]
       94 CAPTURE                          VAL R3
       95 SETTABLEKS                       R12 R10 K31 ["_getScopeItemCount"]
       97 DUPCLOSURE                       R12 K32 [PROTO_7]
       98 CAPTURE                          VAL R9
       99 SETTABLEKS                       R12 R10 K33 ["getScopeCacheFetchProgress"]
      101 DUPCLOSURE                       R12 K34 [PROTO_8]
      102 CAPTURE                          VAL R3
      103 SETTABLEKS                       R12 R10 K35 ["getItemField"]
      105 DUPCLOSURE                       R12 K36 [PROTO_9]
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R3
      108 SETTABLEKS                       R12 R10 K37 ["_getItemAtIndex"]
      110 DUPCLOSURE                       R12 K38 [PROTO_10]
      111 SETTABLEKS                       R12 R10 K39 ["getData"]
      113 DUPCLOSURE                       R12 K40 [PROTO_11]
      114 SETTABLEKS                       R12 R10 K41 ["_getItemIndex"]
      116 DUPCLOSURE                       R12 K42 [PROTO_12]
      117 SETTABLEKS                       R12 R10 K43 ["getItem"]
      119 DUPCLOSURE                       R12 K44 [PROTO_13]
      120 CAPTURE                          VAL R3
      121 SETTABLEKS                       R12 R10 K45 ["addItem"]
      123 DUPCLOSURE                       R12 K46 [PROTO_14]
      124 CAPTURE                          VAL R6
      125 SETTABLEKS                       R12 R10 K47 ["_swapAndPop"]
      127 DUPCLOSURE                       R12 K48 [PROTO_15]
      128 SETTABLEKS                       R12 R10 K49 ["_removeItem"]
      130 DUPCLOSURE                       R12 K50 [PROTO_16]
      131 SETTABLEKS                       R12 R10 K51 ["hasScope"]
      133 DUPCLOSURE                       R12 K52 [PROTO_17]
      134 SETTABLEKS                       R12 R10 K53 ["getScope"]
      136 DUPCLOSURE                       R12 K54 [PROTO_18]
      137 SETTABLEKS                       R12 R10 K55 ["addScope"]
      139 DUPCLOSURE                       R12 K56 [PROTO_19]
      140 SETTABLEKS                       R12 R10 K57 ["_removeScope"]
      142 DUPCLOSURE                       R12 K58 [PROTO_20]
      143 CAPTURE                          VAL R5
      144 SETTABLEKS                       R12 R10 K59 ["_passesFilters"]
      146 DUPCLOSURE                       R12 K60 [PROTO_21]
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R4
      149 SETTABLEKS                       R12 R10 K61 ["_compareItemPaths"]
      151 DUPCLOSURE                       R12 K62 [PROTO_23]
      152 CAPTURE                          VAL R3
      153 SETTABLEKS                       R12 R10 K63 ["getSortedFilteredPaths"]
      155 RETURN                           R10 1
