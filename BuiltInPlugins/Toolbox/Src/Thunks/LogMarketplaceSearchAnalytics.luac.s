PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
        8 MOVE                             R8 R1
        9 MOVE                             R9 R5
       10 GETIMPORT                        R7 K2 [table.insert]
       12 CALL                             R7 2 0
       13 FORGLOOP                         R2 2 ; [-8]
       15 GETIMPORT                        R2 K4 [table.concat]
       17 MOVE                             R3 R1
       18 LOADK                            R4 K5 [","]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["pageInfo"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["getCurrentTab"]
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K3 ["getSortTypeForPageInfo"]
       13 MOVE                             R5 R2
       14 CALL                             R4 1 1
       15 GETTABLEKS                       R5 R2 K4 ["creator"]
       17 JUMPIFNOT                        R5 ; [+3]
       18 GETTABLEKS                       R6 R5 K5 ["Id"]
       20 JUMPIF                           R6 ; [+1]
       21 LOADNIL                          R6
       22 GETTABLEKS                       R8 R2 K7 ["searchId"]
       24 ORK                              R7 R8 K6 [""]
       25 GETTABLEKS                       R8 R2 K8 ["categoryName"]
       27 GETTABLEKS                       R9 R2 K9 ["includeUnverifiedCreators"]
       29 GETUPVAL                         R10 1
       30 GETTABLEKS                       R10 R10 K10 ["getEngineAssetType"]
       32 GETUPVAL                         R11 1
       33 GETTABLEKS                       R11 R11 K11 ["getCategoryByName"]
       35 MOVE                             R12 R8
       36 CALL                             R11 1 1
       37 GETTABLEKS                       R11 R11 K12 ["assetType"]
       39 CALL                             R10 1 1
       40 GETIMPORT                        R11 K16 [Enum.AssetType.Decal]
       42 JUMPIFNOTEQ                      R10 R11 ; [+3]
       44 GETIMPORT                        R10 K18 [Enum.AssetType.Image]
       46 GETIMPORT                        R11 K21 [string.lower]
       48 GETTABLEKS                       R12 R10 K22 ["Name"]
       50 CALL                             R11 1 1
       51 GETTABLEKS                       R12 R2 K23 ["lastLoggedSearchId"]
       53 JUMPIFNOTEQ                      R12 R7 ; [+12]
       55 GETUPVAL                         R13 2
       56 GETTABLEKS                       R13 R13 K24 ["shouldDebugWarnings"]
       58 CALL                             R13 0 1
       59 JUMPIFNOT                        R13 ; [+5]
       60 GETIMPORT                        R13 K26 [warn]
       62 LOADK                            R14 K27 ["SearchId was already logged for "]
       63 MOVE                             R15 R12
       64 CALL                             R13 2 0
       65 RETURN                           R0 0
       66 GETUPVAL                         R14 3
       67 CALL                             R14 0 1
       68 JUMPIFNOT                        R14 ; [+27]
       69 GETTABLEKS                       R14 R2 K28 ["creatorTargetIds"]
       71 JUMPIFNOT                        R14 ; [+24]
       72 GETTABLEKS                       R14 R2 K28 ["creatorTargetIds"]
       74 NEWTABLE                         R15 0 0
       76 MOVE                             R16 R14
       77 LOADNIL                          R17
       78 LOADNIL                          R18
       79 FORGPREP                         R16
       80 FASTCALL2                        TABLE_INSERT R15 R19 ; [+5]
       82 MOVE                             R22 R15
       83 MOVE                             R23 R19
       84 GETIMPORT                        R21 K31 [table.insert]
       86 CALL                             R21 2 0
       87 FORGLOOP                         R16 2 ; [-8]
       89 GETIMPORT                        R16 K33 [table.concat]
       91 MOVE                             R17 R15
       92 LOADK                            R18 K34 [","]
       93 CALL                             R16 2 1
       94 MOVE                             R13 R16
       95 JUMP                             ; [+1]
       96 LOADNIL                          R13
       97 GETUPVAL                         R15 3
       98 CALL                             R15 0 1
       99 JUMPIFNOT                        R15 ; [+27]
      100 GETTABLEKS                       R15 R2 K35 ["groupTargetIds"]
      102 JUMPIFNOT                        R15 ; [+24]
      103 GETTABLEKS                       R15 R2 K35 ["groupTargetIds"]
      105 NEWTABLE                         R16 0 0
      107 MOVE                             R17 R15
      108 LOADNIL                          R18
      109 LOADNIL                          R19
      110 FORGPREP                         R17
      111 FASTCALL2                        TABLE_INSERT R16 R20 ; [+5]
      113 MOVE                             R23 R16
      114 MOVE                             R24 R20
      115 GETIMPORT                        R22 K31 [table.insert]
      117 CALL                             R22 2 0
      118 FORGLOOP                         R17 2 ; [-8]
      120 GETIMPORT                        R17 K33 [table.concat]
      122 MOVE                             R18 R16
      123 LOADK                            R19 K34 [","]
      124 CALL                             R17 2 1
      125 MOVE                             R14 R17
      126 JUMP                             ; [+1]
      127 LOADNIL                          R14
      128 LOADNIL                          R15
      129 GETUPVAL                         R16 4
      130 CALL                             R16 0 1
      131 JUMPIFNOT                        R16 ; [+13]
      132 GETUPVAL                         R16 1
      133 GETTABLEKS                       R16 R16 K36 ["categoryIsModel"]
      135 MOVE                             R17 R8
      136 CALL                             R16 1 1
      137 JUMPIFNOT                        R16 ; [+7]
      138 GETUPVAL                         R16 5
      139 GETTABLEKS                       R16 R16 K37 ["convertQualityFilterDataToTagsCSV"]
      141 GETTABLEKS                       R17 R2 K38 ["qualityFilterData"]
      143 CALL                             R16 1 1
      144 MOVE                             R15 R16
      145 DUPTABLE                         R16 K51 [{"assetType", "categoryName", "creatorID", "creatorIDs", "excludeGroupCreations", "groupIDs", "originalUserQuery", "originalCorrection", "previousSearchId", "querySource", "searchId", "sort", "toolboxTab", "includeOnlyVerifiedCreators", "qualityFilterTags"}]
      146 SETTABLEKS                       R11 R16 K12 ["assetType"]
      148 SETTABLEKS                       R8 R16 K8 ["categoryName"]
      150 GETUPVAL                         R18 3
      151 CALL                             R18 0 1
      152 JUMPIFNOT                        R18 ; [+2]
      153 LOADNIL                          R17
      154 JUMP                             ; [+1]
      155 MOVE                             R17 R6
      156 SETTABLEKS                       R17 R16 K39 ["creatorID"]
      158 GETUPVAL                         R18 3
      159 CALL                             R18 0 1
      160 JUMPIFNOT                        R18 ; [+2]
      161 OR                               R17 R13 R6
      162 JUMP                             ; [+1]
      163 LOADNIL                          R17
      164 SETTABLEKS                       R17 R16 K40 ["creatorIDs"]
      166 GETUPVAL                         R18 3
      167 CALL                             R18 0 1
      168 JUMPIFNOT                        R18 ; [+3]
      169 GETTABLEKS                       R17 R2 K41 ["excludeGroupCreations"]
      171 JUMP                             ; [+1]
      172 LOADNIL                          R17
      173 SETTABLEKS                       R17 R16 K41 ["excludeGroupCreations"]
      175 GETUPVAL                         R18 3
      176 CALL                             R18 0 1
      177 JUMPIFNOT                        R18 ; [+2]
      178 MOVE                             R17 R14
      179 JUMP                             ; [+1]
      180 LOADNIL                          R17
      181 SETTABLEKS                       R17 R16 K42 ["groupIDs"]
      183 GETUPVAL                         R18 6
      184 ORK                              R17 R18 K6 [""]
      185 SETTABLEKS                       R17 R16 K43 ["originalUserQuery"]
      187 GETUPVAL                         R18 7
      188 ORK                              R17 R18 K6 [""]
      189 SETTABLEKS                       R17 R16 K44 ["originalCorrection"]
      191 SETTABLEKS                       R12 R16 K45 ["previousSearchId"]
      193 GETUPVAL                         R17 8
      194 JUMPIF                           R17 ; [+5]
      195 GETUPVAL                         R17 9
      196 GETTABLEKS                       R17 R17 K52 ["QuerySource"]
      198 GETTABLEKS                       R17 R17 K53 ["OriginalUserQuery"]
      200 SETTABLEKS                       R17 R16 K46 ["querySource"]
      202 SETTABLEKS                       R7 R16 K7 ["searchId"]
      204 SETTABLEKS                       R4 R16 K47 ["sort"]
      206 SETTABLEKS                       R3 R16 K48 ["toolboxTab"]
      208 NOT                              R17 R9
      209 SETTABLEKS                       R17 R16 K49 ["includeOnlyVerifiedCreators"]
      211 SETTABLEKS                       R15 R16 K50 ["qualityFilterTags"]
      213 GETUPVAL                         R17 10
      214 GETTABLEKS                       R17 R17 K54 ["marketplaceSearch"]
      216 GETUPVAL                         R18 11
      217 GETUPVAL                         R20 12
      218 ORK                              R19 R20 K55 [False]
      219 MOVE                             R20 R16
      220 CALL                             R17 3 0
      221 GETUPVAL                         R19 13
      222 MOVE                             R20 R7
      223 CALL                             R19 1 -1
      224 NAMECALL                         R17 R0 K56 ["dispatch"]
      226 CALL                             R17 -1 0
      227 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          VAL R3
        8 CAPTURE                          VAL R4
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U8
       15 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Src"]
       11 GETTABLEKS                       R1 R1 K4 ["Util"]
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["Analytics"]
       17 GETTABLEKS                       R3 R3 K7 ["Analytics"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R0 K3 ["Src"]
       24 GETTABLEKS                       R4 R4 K8 ["Types"]
       26 GETTABLEKS                       R4 R4 K9 ["AnalyticsTypes"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K6 [require]
       31 GETTABLEKS                       R5 R1 K10 ["DebugFlags"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R1 K11 ["PageInfoHelper"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R1 K12 ["AssetQualityUtil"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K3 ["Src"]
       48 GETTABLEKS                       R8 R8 K13 ["Actions"]
       50 GETTABLEKS                       R8 R8 K14 ["UpdateLastLoggedSearchId"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R9 R0 K3 ["Src"]
       57 GETTABLEKS                       R9 R9 K8 ["Types"]
       59 GETTABLEKS                       R9 R9 K15 ["AutocorrectTypes"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K6 [require]
       64 GETTABLEKS                       R10 R0 K3 ["Src"]
       66 GETTABLEKS                       R10 R10 K8 ["Types"]
       68 GETTABLEKS                       R10 R10 K16 ["Category"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K6 [require]
       73 GETTABLEKS                       R11 R0 K3 ["Src"]
       75 GETTABLEKS                       R11 R11 K4 ["Util"]
       77 GETTABLEKS                       R11 R11 K17 ["SharedFlags"]
       79 GETTABLEKS                       R11 R11 K18 ["getFFlagToolboxAddCreationsFilterToListView"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K6 [require]
       84 GETTABLEKS                       R12 R0 K3 ["Src"]
       86 GETTABLEKS                       R12 R12 K19 ["Flags"]
       88 GETTABLEKS                       R12 R12 K20 ["getFFlagQualityFiltersInToolboxSearch"]
       90 CALL                             R11 1 1
       91 DUPCLOSURE                       R12 K21 [PROTO_0]
       92 DUPCLOSURE                       R13 K22 [PROTO_2]
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R7
      102 RETURN                           R13 1
