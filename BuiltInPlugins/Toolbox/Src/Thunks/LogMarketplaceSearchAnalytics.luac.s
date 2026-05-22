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
      128 DUPTABLE                         R15 K47 [{"assetType", "categoryName", "creatorID", "creatorIDs", "excludeGroupCreations", "groupIDs", "originalUserQuery", "originalCorrection", "previousSearchId", "querySource", "searchId", "sort", "toolboxTab", "includeOnlyVerifiedCreators"}]
      129 SETTABLEKS                       R11 R15 K12 ["assetType"]
      131 SETTABLEKS                       R8 R15 K8 ["categoryName"]
      133 GETUPVAL                         R17 3
      134 CALL                             R17 0 1
      135 JUMPIFNOT                        R17 ; [+2]
      136 LOADNIL                          R16
      137 JUMP                             ; [+1]
      138 MOVE                             R16 R6
      139 SETTABLEKS                       R16 R15 K36 ["creatorID"]
      141 GETUPVAL                         R17 3
      142 CALL                             R17 0 1
      143 JUMPIFNOT                        R17 ; [+2]
      144 OR                               R16 R13 R6
      145 JUMP                             ; [+1]
      146 LOADNIL                          R16
      147 SETTABLEKS                       R16 R15 K37 ["creatorIDs"]
      149 GETUPVAL                         R17 3
      150 CALL                             R17 0 1
      151 JUMPIFNOT                        R17 ; [+3]
      152 GETTABLEKS                       R16 R2 K38 ["excludeGroupCreations"]
      154 JUMP                             ; [+1]
      155 LOADNIL                          R16
      156 SETTABLEKS                       R16 R15 K38 ["excludeGroupCreations"]
      158 GETUPVAL                         R17 3
      159 CALL                             R17 0 1
      160 JUMPIFNOT                        R17 ; [+2]
      161 MOVE                             R16 R14
      162 JUMP                             ; [+1]
      163 LOADNIL                          R16
      164 SETTABLEKS                       R16 R15 K39 ["groupIDs"]
      166 GETUPVAL                         R17 4
      167 ORK                              R16 R17 K6 [""]
      168 SETTABLEKS                       R16 R15 K40 ["originalUserQuery"]
      170 GETUPVAL                         R17 5
      171 ORK                              R16 R17 K6 [""]
      172 SETTABLEKS                       R16 R15 K41 ["originalCorrection"]
      174 SETTABLEKS                       R12 R15 K42 ["previousSearchId"]
      176 GETUPVAL                         R16 6
      177 JUMPIF                           R16 ; [+5]
      178 GETUPVAL                         R16 7
      179 GETTABLEKS                       R16 R16 K48 ["QuerySource"]
      181 GETTABLEKS                       R16 R16 K49 ["OriginalUserQuery"]
      183 SETTABLEKS                       R16 R15 K43 ["querySource"]
      185 SETTABLEKS                       R7 R15 K7 ["searchId"]
      187 SETTABLEKS                       R4 R15 K44 ["sort"]
      189 SETTABLEKS                       R3 R15 K45 ["toolboxTab"]
      191 NOT                              R16 R9
      192 SETTABLEKS                       R16 R15 K46 ["includeOnlyVerifiedCreators"]
      194 GETUPVAL                         R16 8
      195 GETTABLEKS                       R16 R16 K50 ["marketplaceSearch"]
      197 GETUPVAL                         R17 9
      198 GETUPVAL                         R19 10
      199 ORK                              R18 R19 K51 [False]
      200 MOVE                             R19 R15
      201 CALL                             R16 3 0
      202 GETUPVAL                         R18 11
      203 MOVE                             R19 R7
      204 CALL                             R18 1 -1
      205 NAMECALL                         R16 R0 K52 ["dispatch"]
      207 CALL                             R16 -1 0
      208 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R3
        6 CAPTURE                          VAL R4
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U6
       13 RETURN                           R5 1

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
       41 GETTABLEKS                       R7 R0 K3 ["Src"]
       43 GETTABLEKS                       R7 R7 K12 ["Actions"]
       45 GETTABLEKS                       R7 R7 K13 ["UpdateLastLoggedSearchId"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K6 [require]
       50 GETTABLEKS                       R8 R0 K3 ["Src"]
       52 GETTABLEKS                       R8 R8 K8 ["Types"]
       54 GETTABLEKS                       R8 R8 K14 ["AutocorrectTypes"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K6 [require]
       59 GETTABLEKS                       R9 R0 K3 ["Src"]
       61 GETTABLEKS                       R9 R9 K8 ["Types"]
       63 GETTABLEKS                       R9 R9 K15 ["Category"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K6 [require]
       68 GETTABLEKS                       R10 R0 K3 ["Src"]
       70 GETTABLEKS                       R10 R10 K4 ["Util"]
       72 GETTABLEKS                       R10 R10 K16 ["SharedFlags"]
       74 GETTABLEKS                       R10 R10 K17 ["getFFlagToolboxAddCreationsFilterToListView"]
       76 CALL                             R9 1 1
       77 DUPCLOSURE                       R10 K18 [PROTO_0]
       78 DUPCLOSURE                       R11 K19 [PROTO_2]
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R6
       86 RETURN                           R11 1
