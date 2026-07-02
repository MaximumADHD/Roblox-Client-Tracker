PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADB                            R3 0
        3 CALL                             R2 1 -1
        4 NAMECALL                         R0 R0 K0 ["dispatch"]
        6 CALL                             R0 -1 0
        7 GETIMPORT                        R0 K2 [error]
        9 LOADK                            R1 K3 ["Failed to load places"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 LOADB                            R4 0
        6 CALL                             R3 1 -1
        7 NAMECALL                         R1 R1 K0 ["dispatch"]
        9 CALL                             R1 -1 0
       10 GETIMPORT                        R1 K2 [error]
       12 LOADK                            R2 K3 ["Failed to load packages"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETIMPORT                        R2 K2 [pairs]
        6 GETTABLEKS                       R3 R1 K3 ["data"]
        8 CALL                             R2 1 3
        9 FORGPREP_NEXT                    R2
       10 DUPTABLE                         R7 K7 [{"reviewStatus", "isModerated", "moderationStatus"}]
       11 GETTABLEKS                       R8 R6 K4 ["reviewStatus"]
       13 SETTABLEKS                       R8 R7 K4 ["reviewStatus"]
       15 GETTABLEKS                       R8 R6 K5 ["isModerated"]
       17 SETTABLEKS                       R8 R7 K5 ["isModerated"]
       19 GETTABLEKS                       R8 R6 K6 ["moderationStatus"]
       21 SETTABLEKS                       R8 R7 K6 ["moderationStatus"]
       23 SETGLOBAL                        R7 K8 ["assetModerationData"]
       25 GETUPVAL                         R7 0
       26 GETUPVAL                         R8 1
       27 GETTABLEKS                       R8 R8 K9 ["Dictionary"]
       29 GETTABLEKS                       R8 R8 K10 ["join"]
       31 GETUPVAL                         R9 0
       32 GETTABLEKS                       R9 R9 K11 ["assetsModerationData"]
       34 NEWTABLE                         R10 1 0
       36 GETTABLEKS                       R11 R6 K12 ["id"]
       38 GETGLOBAL                        R12 K8 ["assetModerationData"]
       40 SETTABLE                         R12 R10 R11
       41 CALL                             R8 2 1
       42 SETTABLEKS                       R8 R7 K11 ["assetsModerationData"]
       44 FORGLOOP                         R2 2 ; [-35]
       46 GETUPVAL                         R2 2
       47 GETUPVAL                         R4 3
       48 GETUPVAL                         R5 0
       49 GETTABLEKS                       R5 R5 K11 ["assetsModerationData"]
       51 CALL                             R4 1 -1
       52 NAMECALL                         R2 R2 K13 ["dispatch"]
       54 CALL                             R2 -1 0
       55 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Failed to load asset information"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R3 R1 K1 ["NextPageToken"]
        7 SETTABLEKS                       R3 R2 K2 ["nextPageCursor"]
        9 GETIMPORT                        R2 K4 [pairs]
       11 GETTABLEKS                       R3 R1 K5 ["Aliases"]
       13 CALL                             R2 1 3
       14 FORGPREP_NEXT                    R2
       15 GETUPVAL                         R7 1
       16 GETIMPORT                        R8 K9 [Enum.AssetType.Image]
       18 JUMPIFNOTEQ                      R7 R8 ; [+8]
       20 GETIMPORT                        R7 K12 [string.find]
       22 GETTABLEKS                       R8 R6 K13 ["Name"]
       24 LOADK                            R9 K14 ["Images/"]
       25 CALL                             R7 2 1
       26 JUMPIF                           R7 ; [+54]
       27 GETUPVAL                         R7 1
       28 GETIMPORT                        R8 K16 [Enum.AssetType.MeshPart]
       30 JUMPIFNOTEQ                      R7 R8 ; [+8]
       32 GETIMPORT                        R7 K12 [string.find]
       34 GETTABLEKS                       R8 R6 K13 ["Name"]
       36 LOADK                            R9 K17 ["Meshes/"]
       37 CALL                             R7 2 1
       38 JUMPIF                           R7 ; [+42]
       39 GETUPVAL                         R7 2
       40 CALL                             R7 0 1
       41 JUMPIFNOT                        R7 ; [+12]
       42 GETUPVAL                         R7 1
       43 GETIMPORT                        R8 K19 [Enum.AssetType.Audio]
       45 JUMPIFNOTEQ                      R7 R8 ; [+8]
       47 GETIMPORT                        R7 K12 [string.find]
       49 GETTABLEKS                       R8 R6 K13 ["Name"]
       51 LOADK                            R9 K20 ["Audio/"]
       52 CALL                             R7 2 1
       53 JUMPIF                           R7 ; [+27]
       54 GETUPVAL                         R7 3
       55 CALL                             R7 0 1
       56 JUMPIFNOT                        R7 ; [+12]
       57 GETUPVAL                         R7 1
       58 GETIMPORT                        R8 K22 [Enum.AssetType.Video]
       60 JUMPIFNOTEQ                      R7 R8 ; [+8]
       62 GETIMPORT                        R7 K12 [string.find]
       64 GETTABLEKS                       R8 R6 K13 ["Name"]
       66 LOADK                            R9 K23 ["Video/"]
       67 CALL                             R7 2 1
       68 JUMPIF                           R7 ; [+12]
       69 GETUPVAL                         R7 1
       70 GETIMPORT                        R8 K25 [Enum.AssetType.Model]
       72 JUMPIFNOTEQ                      R7 R8 ; [+171]
       74 GETIMPORT                        R7 K12 [string.find]
       76 GETTABLEKS                       R8 R6 K13 ["Name"]
       78 LOADK                            R9 K26 ["Models/"]
       79 CALL                             R7 2 1
       80 JUMPIFNOT                        R7 ; [+163]
       81 NEWTABLE                         R7 8 0
       83 GETTABLEKS                       R9 R6 K27 ["TargetId"]
       85 FASTCALL1                        TOSTRING R9 ; [+2]
       86 GETIMPORT                        R8 K29 [tostring]
       88 CALL                             R8 1 1
       89 GETUPVAL                         R9 1
       90 SETTABLEKS                       R9 R7 K30 ["assetType"]
       92 GETTABLEKS                       R9 R6 K31 ["Asset"]
       94 SETTABLEKS                       R9 R7 K32 ["asset"]
       96 GETTABLEKS                       R9 R6 K27 ["TargetId"]
       98 SETTABLEKS                       R9 R7 K33 ["id"]
      100 GETUPVAL                         R9 1
      101 GETIMPORT                        R10 K9 [Enum.AssetType.Image]
      103 JUMPIFNOTEQ                      R9 R10 ; [+18]
      105 GETIMPORT                        R9 K12 [string.find]
      107 GETTABLEKS                       R10 R6 K13 ["Name"]
      109 LOADK                            R11 K14 ["Images/"]
      110 CALL                             R9 2 1
      111 JUMPIFNOT                        R9 ; [+10]
      112 GETIMPORT                        R9 K35 [string.gsub]
      114 GETTABLEKS                       R10 R6 K13 ["Name"]
      116 LOADK                            R11 K14 ["Images/"]
      117 LOADK                            R12 K36 [""]
      118 CALL                             R9 3 1
      119 SETTABLEKS                       R9 R7 K37 ["name"]
      121 JUMP                             ; [+93]
      122 GETUPVAL                         R9 1
      123 GETIMPORT                        R10 K16 [Enum.AssetType.MeshPart]
      125 JUMPIFNOTEQ                      R9 R10 ; [+18]
      127 GETIMPORT                        R9 K12 [string.find]
      129 GETTABLEKS                       R10 R6 K13 ["Name"]
      131 LOADK                            R11 K17 ["Meshes/"]
      132 CALL                             R9 2 1
      133 JUMPIFNOT                        R9 ; [+10]
      134 GETIMPORT                        R9 K35 [string.gsub]
      136 GETTABLEKS                       R10 R6 K13 ["Name"]
      138 LOADK                            R11 K17 ["Meshes/"]
      139 LOADK                            R12 K36 [""]
      140 CALL                             R9 3 1
      141 SETTABLEKS                       R9 R7 K37 ["name"]
      143 JUMP                             ; [+71]
      144 GETUPVAL                         R9 2
      145 CALL                             R9 0 1
      146 JUMPIFNOT                        R9 ; [+22]
      147 GETUPVAL                         R9 1
      148 GETIMPORT                        R10 K19 [Enum.AssetType.Audio]
      150 JUMPIFNOTEQ                      R9 R10 ; [+18]
      152 GETIMPORT                        R9 K12 [string.find]
      154 GETTABLEKS                       R10 R6 K13 ["Name"]
      156 LOADK                            R11 K20 ["Audio/"]
      157 CALL                             R9 2 1
      158 JUMPIFNOT                        R9 ; [+10]
      159 GETIMPORT                        R9 K35 [string.gsub]
      161 GETTABLEKS                       R10 R6 K13 ["Name"]
      163 LOADK                            R11 K20 ["Audio/"]
      164 LOADK                            R12 K36 [""]
      165 CALL                             R9 3 1
      166 SETTABLEKS                       R9 R7 K37 ["name"]
      168 JUMP                             ; [+46]
      169 GETUPVAL                         R9 3
      170 CALL                             R9 0 1
      171 JUMPIFNOT                        R9 ; [+22]
      172 GETUPVAL                         R9 1
      173 GETIMPORT                        R10 K22 [Enum.AssetType.Video]
      175 JUMPIFNOTEQ                      R9 R10 ; [+18]
      177 GETIMPORT                        R9 K12 [string.find]
      179 GETTABLEKS                       R10 R6 K13 ["Name"]
      181 LOADK                            R11 K23 ["Video/"]
      182 CALL                             R9 2 1
      183 JUMPIFNOT                        R9 ; [+10]
      184 GETIMPORT                        R9 K35 [string.gsub]
      186 GETTABLEKS                       R10 R6 K13 ["Name"]
      188 LOADK                            R11 K23 ["Video/"]
      189 LOADK                            R12 K36 [""]
      190 CALL                             R9 3 1
      191 SETTABLEKS                       R9 R7 K37 ["name"]
      193 JUMP                             ; [+21]
      194 GETUPVAL                         R9 1
      195 GETIMPORT                        R10 K25 [Enum.AssetType.Model]
      197 JUMPIFNOTEQ                      R9 R10 ; [+17]
      199 GETIMPORT                        R9 K12 [string.find]
      201 GETTABLEKS                       R10 R6 K13 ["Name"]
      203 LOADK                            R11 K26 ["Models/"]
      204 CALL                             R9 2 1
      205 JUMPIFNOT                        R9 ; [+9]
      206 GETIMPORT                        R9 K35 [string.gsub]
      208 GETTABLEKS                       R10 R6 K13 ["Name"]
      210 LOADK                            R11 K26 ["Models/"]
      211 LOADK                            R12 K36 [""]
      212 CALL                             R9 3 1
      213 SETTABLEKS                       R9 R7 K37 ["name"]
      215 GETUPVAL                         R9 4
      216 SETTABLEKS                       R9 R7 K38 ["layoutOrder"]
      218 GETUPVAL                         R9 0
      219 GETUPVAL                         R10 5
      220 GETTABLEKS                       R10 R10 K39 ["Dictionary"]
      222 GETTABLEKS                       R10 R10 K40 ["join"]
      224 GETUPVAL                         R11 0
      225 GETTABLEKS                       R11 R11 K41 ["assets"]
      227 NEWTABLE                         R12 1 0
      229 SETTABLE                         R7 R12 R8
      230 CALL                             R10 2 1
      231 SETTABLEKS                       R10 R9 K41 ["assets"]
      233 GETUPVAL                         R10 4
      234 ADDK                             R9 R10 K42 [1]
      235 SETUPVAL                         R9 4
      236 GETUPVAL                         R10 6
      237 GETTABLEKS                       R11 R7 K33 ["id"]
      239 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
      241 GETIMPORT                        R9 K45 [table.insert]
      243 CALL                             R9 2 0
      244 FORGLOOP                         R2 2 ; [-230]
      246 GETUPVAL                         R2 7
      247 GETUPVAL                         R4 8
      248 LOADB                            R5 0
      249 CALL                             R4 1 -1
      250 NAMECALL                         R2 R2 K46 ["dispatch"]
      252 CALL                             R2 -1 0
      253 GETUPVAL                         R2 7
      254 GETUPVAL                         R4 9
      255 GETUPVAL                         R5 0
      256 GETUPVAL                         R6 4
      257 CALL                             R4 2 -1
      258 NAMECALL                         R2 R2 K46 ["dispatch"]
      260 CALL                             R2 -1 0
      261 GETUPVAL                         R2 11
      262 GETTABLEKS                       R2 R2 K47 ["Develop"]
      264 GETTABLEKS                       R2 R2 K48 ["V1"]
      266 GETTABLEKS                       R2 R2 K49 ["Assets"]
      268 GETTABLEKS                       R2 R2 K41 ["assets"]
      270 GETUPVAL                         R3 6
      271 CALL                             R2 1 1
      272 NAMECALL                         R2 R2 K50 ["makeRequest"]
      274 CALL                             R2 1 1
      275 NEWCLOSURE                       R4 P0
      276 CAPTURE                          UPVAL U0
      277 CAPTURE                          UPVAL U5
      278 CAPTURE                          UPVAL U7
      279 CAPTURE                          UPVAL U12
      280 DUPCLOSURE                       R5 K51 [PROTO_5]
      281 NAMECALL                         R2 R2 K52 ["andThen"]
      283 CALL                             R2 3 1
      284 SETUPVAL                         R2 10
      285 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADB                            R3 0
        3 CALL                             R2 1 -1
        4 NAMECALL                         R0 R0 K0 ["dispatch"]
        6 CALL                             R0 -1 0
        7 GETIMPORT                        R0 K2 [error]
        9 LOADK                            R1 K3 ["Failed to load aliases"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETIMPORT                        R2 K2 [pairs]
        4 GETTABLEKS                       R3 R1 K3 ["data"]
        6 CALL                             R2 1 3
        7 FORGPREP_NEXT                    R2
        8 DUPTABLE                         R7 K7 [{"reviewStatus", "isModerated", "moderationStatus"}]
        9 GETTABLEKS                       R8 R6 K4 ["reviewStatus"]
       11 SETTABLEKS                       R8 R7 K4 ["reviewStatus"]
       13 GETTABLEKS                       R8 R6 K5 ["isModerated"]
       15 SETTABLEKS                       R8 R7 K5 ["isModerated"]
       17 GETTABLEKS                       R8 R6 K6 ["moderationStatus"]
       19 SETTABLEKS                       R8 R7 K6 ["moderationStatus"]
       21 SETGLOBAL                        R7 K8 ["assetModerationData"]
       23 GETUPVAL                         R7 0
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R8 R8 K9 ["Dictionary"]
       27 GETTABLEKS                       R8 R8 K10 ["join"]
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R9 R9 K11 ["assetsModerationData"]
       32 NEWTABLE                         R10 1 0
       34 GETTABLEKS                       R11 R6 K12 ["id"]
       36 GETGLOBAL                        R12 K8 ["assetModerationData"]
       38 SETTABLE                         R12 R10 R11
       39 CALL                             R8 2 1
       40 SETTABLEKS                       R8 R7 K11 ["assetsModerationData"]
       42 FORGLOOP                         R2 2 ; [-35]
       44 GETUPVAL                         R2 2
       45 GETUPVAL                         R4 3
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K11 ["assetsModerationData"]
       49 CALL                             R4 1 -1
       50 NAMECALL                         R2 R2 K13 ["dispatch"]
       52 CALL                             R2 -1 0
       53 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Failed to load asset information"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R1 K1 ["FinalPage"]
        6 JUMPIF                           R2 ; [+6]
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R4 1
        9 ADDK                             R3 R4 K2 [1]
       10 SETTABLEKS                       R3 R2 K3 ["pageNumber"]
       12 JUMP                             ; [+4]
       13 GETUPVAL                         R2 0
       14 LOADNIL                          R3
       15 SETTABLEKS                       R3 R2 K3 ["pageNumber"]
       17 GETIMPORT                        R2 K5 [pairs]
       19 GETTABLEKS                       R3 R1 K6 ["Aliases"]
       21 CALL                             R2 1 3
       22 FORGPREP_NEXT                    R2
       23 GETUPVAL                         R7 2
       24 GETIMPORT                        R8 K10 [Enum.AssetType.Image]
       26 JUMPIFNOTEQ                      R7 R8 ; [+8]
       28 GETIMPORT                        R7 K13 [string.find]
       30 GETTABLEKS                       R8 R6 K14 ["Name"]
       32 LOADK                            R9 K15 ["Images/"]
       33 CALL                             R7 2 1
       34 JUMPIF                           R7 ; [+54]
       35 GETUPVAL                         R7 2
       36 GETIMPORT                        R8 K17 [Enum.AssetType.MeshPart]
       38 JUMPIFNOTEQ                      R7 R8 ; [+8]
       40 GETIMPORT                        R7 K13 [string.find]
       42 GETTABLEKS                       R8 R6 K14 ["Name"]
       44 LOADK                            R9 K18 ["Meshes/"]
       45 CALL                             R7 2 1
       46 JUMPIF                           R7 ; [+42]
       47 GETUPVAL                         R7 3
       48 CALL                             R7 0 1
       49 JUMPIFNOT                        R7 ; [+12]
       50 GETUPVAL                         R7 2
       51 GETIMPORT                        R8 K20 [Enum.AssetType.Audio]
       53 JUMPIFNOTEQ                      R7 R8 ; [+8]
       55 GETIMPORT                        R7 K13 [string.find]
       57 GETTABLEKS                       R8 R6 K14 ["Name"]
       59 LOADK                            R9 K21 ["Audio/"]
       60 CALL                             R7 2 1
       61 JUMPIF                           R7 ; [+27]
       62 GETUPVAL                         R7 4
       63 CALL                             R7 0 1
       64 JUMPIFNOT                        R7 ; [+12]
       65 GETUPVAL                         R7 2
       66 GETIMPORT                        R8 K23 [Enum.AssetType.Video]
       68 JUMPIFNOTEQ                      R7 R8 ; [+8]
       70 GETIMPORT                        R7 K13 [string.find]
       72 GETTABLEKS                       R8 R6 K14 ["Name"]
       74 LOADK                            R9 K24 ["Video/"]
       75 CALL                             R7 2 1
       76 JUMPIF                           R7 ; [+12]
       77 GETUPVAL                         R7 2
       78 GETIMPORT                        R8 K26 [Enum.AssetType.Model]
       80 JUMPIFNOTEQ                      R7 R8 ; [+171]
       82 GETIMPORT                        R7 K13 [string.find]
       84 GETTABLEKS                       R8 R6 K14 ["Name"]
       86 LOADK                            R9 K27 ["Models/"]
       87 CALL                             R7 2 1
       88 JUMPIFNOT                        R7 ; [+163]
       89 NEWTABLE                         R7 8 0
       91 GETTABLEKS                       R9 R6 K28 ["TargetId"]
       93 FASTCALL1                        TOSTRING R9 ; [+2]
       94 GETIMPORT                        R8 K30 [tostring]
       96 CALL                             R8 1 1
       97 GETUPVAL                         R9 2
       98 SETTABLEKS                       R9 R7 K31 ["assetType"]
      100 GETTABLEKS                       R9 R6 K32 ["Asset"]
      102 SETTABLEKS                       R9 R7 K33 ["asset"]
      104 GETTABLEKS                       R9 R6 K28 ["TargetId"]
      106 SETTABLEKS                       R9 R7 K34 ["id"]
      108 GETUPVAL                         R9 2
      109 GETIMPORT                        R10 K10 [Enum.AssetType.Image]
      111 JUMPIFNOTEQ                      R9 R10 ; [+18]
      113 GETIMPORT                        R9 K13 [string.find]
      115 GETTABLEKS                       R10 R6 K14 ["Name"]
      117 LOADK                            R11 K15 ["Images/"]
      118 CALL                             R9 2 1
      119 JUMPIFNOT                        R9 ; [+10]
      120 GETIMPORT                        R9 K36 [string.gsub]
      122 GETTABLEKS                       R10 R6 K14 ["Name"]
      124 LOADK                            R11 K15 ["Images/"]
      125 LOADK                            R12 K37 [""]
      126 CALL                             R9 3 1
      127 SETTABLEKS                       R9 R7 K38 ["name"]
      129 JUMP                             ; [+93]
      130 GETUPVAL                         R9 2
      131 GETIMPORT                        R10 K17 [Enum.AssetType.MeshPart]
      133 JUMPIFNOTEQ                      R9 R10 ; [+18]
      135 GETIMPORT                        R9 K13 [string.find]
      137 GETTABLEKS                       R10 R6 K14 ["Name"]
      139 LOADK                            R11 K18 ["Meshes/"]
      140 CALL                             R9 2 1
      141 JUMPIFNOT                        R9 ; [+10]
      142 GETIMPORT                        R9 K36 [string.gsub]
      144 GETTABLEKS                       R10 R6 K14 ["Name"]
      146 LOADK                            R11 K18 ["Meshes/"]
      147 LOADK                            R12 K37 [""]
      148 CALL                             R9 3 1
      149 SETTABLEKS                       R9 R7 K38 ["name"]
      151 JUMP                             ; [+71]
      152 GETUPVAL                         R9 3
      153 CALL                             R9 0 1
      154 JUMPIFNOT                        R9 ; [+22]
      155 GETUPVAL                         R9 2
      156 GETIMPORT                        R10 K20 [Enum.AssetType.Audio]
      158 JUMPIFNOTEQ                      R9 R10 ; [+18]
      160 GETIMPORT                        R9 K13 [string.find]
      162 GETTABLEKS                       R10 R6 K14 ["Name"]
      164 LOADK                            R11 K21 ["Audio/"]
      165 CALL                             R9 2 1
      166 JUMPIFNOT                        R9 ; [+10]
      167 GETIMPORT                        R9 K36 [string.gsub]
      169 GETTABLEKS                       R10 R6 K14 ["Name"]
      171 LOADK                            R11 K21 ["Audio/"]
      172 LOADK                            R12 K37 [""]
      173 CALL                             R9 3 1
      174 SETTABLEKS                       R9 R7 K38 ["name"]
      176 JUMP                             ; [+46]
      177 GETUPVAL                         R9 4
      178 CALL                             R9 0 1
      179 JUMPIFNOT                        R9 ; [+22]
      180 GETUPVAL                         R9 2
      181 GETIMPORT                        R10 K23 [Enum.AssetType.Video]
      183 JUMPIFNOTEQ                      R9 R10 ; [+18]
      185 GETIMPORT                        R9 K13 [string.find]
      187 GETTABLEKS                       R10 R6 K14 ["Name"]
      189 LOADK                            R11 K24 ["Video/"]
      190 CALL                             R9 2 1
      191 JUMPIFNOT                        R9 ; [+10]
      192 GETIMPORT                        R9 K36 [string.gsub]
      194 GETTABLEKS                       R10 R6 K14 ["Name"]
      196 LOADK                            R11 K24 ["Video/"]
      197 LOADK                            R12 K37 [""]
      198 CALL                             R9 3 1
      199 SETTABLEKS                       R9 R7 K38 ["name"]
      201 JUMP                             ; [+21]
      202 GETUPVAL                         R9 2
      203 GETIMPORT                        R10 K26 [Enum.AssetType.Model]
      205 JUMPIFNOTEQ                      R9 R10 ; [+17]
      207 GETIMPORT                        R9 K13 [string.find]
      209 GETTABLEKS                       R10 R6 K14 ["Name"]
      211 LOADK                            R11 K27 ["Models/"]
      212 CALL                             R9 2 1
      213 JUMPIFNOT                        R9 ; [+9]
      214 GETIMPORT                        R9 K36 [string.gsub]
      216 GETTABLEKS                       R10 R6 K14 ["Name"]
      218 LOADK                            R11 K27 ["Models/"]
      219 LOADK                            R12 K37 [""]
      220 CALL                             R9 3 1
      221 SETTABLEKS                       R9 R7 K38 ["name"]
      223 GETUPVAL                         R9 5
      224 SETTABLEKS                       R9 R7 K39 ["layoutOrder"]
      226 GETUPVAL                         R9 0
      227 GETUPVAL                         R10 6
      228 GETTABLEKS                       R10 R10 K40 ["Dictionary"]
      230 GETTABLEKS                       R10 R10 K41 ["join"]
      232 GETUPVAL                         R11 0
      233 GETTABLEKS                       R11 R11 K42 ["assets"]
      235 NEWTABLE                         R12 1 0
      237 SETTABLE                         R7 R12 R8
      238 CALL                             R10 2 1
      239 SETTABLEKS                       R10 R9 K42 ["assets"]
      241 GETUPVAL                         R10 5
      242 ADDK                             R9 R10 K2 [1]
      243 SETUPVAL                         R9 5
      244 GETUPVAL                         R10 7
      245 GETTABLEKS                       R11 R7 K34 ["id"]
      247 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
      249 GETIMPORT                        R9 K45 [table.insert]
      251 CALL                             R9 2 0
      252 FORGLOOP                         R2 2 ; [-230]
      254 GETUPVAL                         R2 8
      255 GETUPVAL                         R4 9
      256 LOADB                            R5 0
      257 CALL                             R4 1 -1
      258 NAMECALL                         R2 R2 K46 ["dispatch"]
      260 CALL                             R2 -1 0
      261 GETUPVAL                         R2 8
      262 GETUPVAL                         R4 10
      263 GETUPVAL                         R5 0
      264 GETUPVAL                         R6 5
      265 CALL                             R4 2 -1
      266 NAMECALL                         R2 R2 K46 ["dispatch"]
      268 CALL                             R2 -1 0
      269 GETUPVAL                         R2 12
      270 GETTABLEKS                       R2 R2 K47 ["Develop"]
      272 GETTABLEKS                       R2 R2 K48 ["V1"]
      274 GETTABLEKS                       R2 R2 K49 ["Assets"]
      276 GETTABLEKS                       R2 R2 K42 ["assets"]
      278 GETUPVAL                         R3 7
      279 CALL                             R2 1 1
      280 NAMECALL                         R2 R2 K50 ["makeRequest"]
      282 CALL                             R2 1 1
      283 NEWCLOSURE                       R4 P0
      284 CAPTURE                          UPVAL U0
      285 CAPTURE                          UPVAL U6
      286 CAPTURE                          UPVAL U8
      287 CAPTURE                          UPVAL U13
      288 DUPCLOSURE                       R5 K51 [PROTO_9]
      289 NAMECALL                         R2 R2 K52 ["andThen"]
      291 CALL                             R2 3 1
      292 SETUPVAL                         R2 11
      293 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADB                            R3 0
        3 CALL                             R2 1 -1
        4 NAMECALL                         R0 R0 K0 ["dispatch"]
        6 CALL                             R0 -1 0
        7 GETIMPORT                        R0 K2 [error]
        9 LOADK                            R1 K3 ["Failed to load aliases"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETIMPORT                        R2 K2 [pairs]
        4 GETTABLEKS                       R3 R1 K3 ["data"]
        6 CALL                             R2 1 3
        7 FORGPREP_NEXT                    R2
        8 DUPTABLE                         R7 K7 [{"reviewStatus", "isModerated", "moderationStatus"}]
        9 GETTABLEKS                       R8 R6 K4 ["reviewStatus"]
       11 SETTABLEKS                       R8 R7 K4 ["reviewStatus"]
       13 GETTABLEKS                       R8 R6 K5 ["isModerated"]
       15 SETTABLEKS                       R8 R7 K5 ["isModerated"]
       17 GETTABLEKS                       R8 R6 K6 ["moderationStatus"]
       19 SETTABLEKS                       R8 R7 K6 ["moderationStatus"]
       21 SETGLOBAL                        R7 K8 ["assetModerationData"]
       23 GETUPVAL                         R7 0
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R8 R8 K9 ["Dictionary"]
       27 GETTABLEKS                       R8 R8 K10 ["join"]
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R9 R9 K11 ["assetsModerationData"]
       32 NEWTABLE                         R10 1 0
       34 GETTABLEKS                       R11 R6 K12 ["id"]
       36 GETGLOBAL                        R12 K8 ["assetModerationData"]
       38 SETTABLE                         R12 R10 R11
       39 CALL                             R8 2 1
       40 SETTABLEKS                       R8 R7 K11 ["assetsModerationData"]
       42 FORGLOOP                         R2 2 ; [-35]
       44 GETUPVAL                         R2 2
       45 GETUPVAL                         R4 3
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K11 ["assetsModerationData"]
       49 CALL                             R4 1 -1
       50 NAMECALL                         R2 R2 K13 ["dispatch"]
       52 CALL                             R2 -1 0
       53 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Failed to load asset information"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R3 R1 K1 ["previousPageCursor"]
       10 SETTABLEKS                       R3 R2 K1 ["previousPageCursor"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R3 R1 K2 ["nextPageCursor"]
       15 SETTABLEKS                       R3 R2 K2 ["nextPageCursor"]
       17 GETIMPORT                        R2 K4 [pairs]
       19 GETTABLEKS                       R3 R1 K5 ["data"]
       21 CALL                             R2 1 3
       22 FORGPREP_NEXT                    R2
       23 GETUPVAL                         R7 2
       24 SETTABLEKS                       R7 R6 K6 ["assetType"]
       26 GETTABLEKS                       R8 R6 K7 ["id"]
       28 FASTCALL1                        TOSTRING R8 ; [+2]
       29 GETIMPORT                        R7 K9 [tostring]
       31 CALL                             R7 1 1
       32 GETUPVAL                         R8 3
       33 SETTABLEKS                       R8 R6 K10 ["layoutOrder"]
       35 GETUPVAL                         R8 1
       36 GETUPVAL                         R9 4
       37 GETTABLEKS                       R9 R9 K11 ["Dictionary"]
       39 GETTABLEKS                       R9 R9 K12 ["join"]
       41 GETUPVAL                         R10 1
       42 GETTABLEKS                       R10 R10 K13 ["assets"]
       44 NEWTABLE                         R11 1 0
       46 SETTABLE                         R6 R11 R7
       47 CALL                             R9 2 1
       48 SETTABLEKS                       R9 R8 K13 ["assets"]
       50 GETUPVAL                         R9 3
       51 ADDK                             R8 R9 K14 [1]
       52 SETUPVAL                         R8 3
       53 GETUPVAL                         R9 5
       54 GETTABLEKS                       R10 R6 K7 ["id"]
       56 FASTCALL2                        TABLE_INSERT R9 R10 ; [+3]
       58 GETIMPORT                        R8 K17 [table.insert]
       60 CALL                             R8 2 0
       61 FORGLOOP                         R2 2 ; [-39]
       63 GETUPVAL                         R2 6
       64 GETUPVAL                         R4 7
       65 LOADB                            R5 0
       66 CALL                             R4 1 -1
       67 NAMECALL                         R2 R2 K18 ["dispatch"]
       69 CALL                             R2 -1 0
       70 GETUPVAL                         R2 6
       71 GETUPVAL                         R4 8
       72 GETUPVAL                         R5 1
       73 GETUPVAL                         R6 3
       74 CALL                             R4 2 -1
       75 NAMECALL                         R2 R2 K18 ["dispatch"]
       77 CALL                             R2 -1 0
       78 GETUPVAL                         R2 10
       79 GETTABLEKS                       R2 R2 K19 ["Develop"]
       81 GETTABLEKS                       R2 R2 K20 ["V1"]
       83 GETTABLEKS                       R2 R2 K21 ["Assets"]
       85 GETTABLEKS                       R2 R2 K13 ["assets"]
       87 GETUPVAL                         R3 5
       88 CALL                             R2 1 1
       89 NAMECALL                         R2 R2 K22 ["makeRequest"]
       91 CALL                             R2 1 1
       92 NEWCLOSURE                       R4 P0
       93 CAPTURE                          UPVAL U1
       94 CAPTURE                          UPVAL U4
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          UPVAL U11
       97 DUPCLOSURE                       R5 K23 [PROTO_13]
       98 NAMECALL                         R2 R2 K24 ["andThen"]
      100 CALL                             R2 3 1
      101 SETUPVAL                         R2 9
      102 RETURN                           R0 0

PROTO_15:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 LOADNIL                          R2
        4 GETUPVAL                         R3 0
        5 JUMPIFNOTEQKNIL                  R3 ; [+3]
        7 LOADB                            R2 1
        8 JUMP                             ; [+1]
        9 GETUPVAL                         R2 0
       10 LOADNIL                          R3
       11 DUPTABLE                         R4 K3 [{["index"] = 0}]
       12 NEWTABLE                         R5 0 0
       14 SETTABLEKS                       R5 R4 K4 ["assets"]
       16 NEWTABLE                         R5 0 0
       18 SETTABLEKS                       R5 R4 K5 ["assetsModerationData"]
       20 NEWTABLE                         R5 0 0
       22 LOADN                            R6 1
       23 GETUPVAL                         R7 1
       24 JUMPIF                           R7 ; [+5]
       25 GETUPVAL                         R7 2
       26 JUMPIFNOT                        R7 ; [+10]
       27 GETUPVAL                         R7 2
       28 JUMPIFEQKN                       R7 K6 [1] ; [+8]
       30 GETTABLEKS                       R7 R1 K7 ["AssetManagerReducer"]
       32 GETTABLEKS                       R4 R7 K8 ["assetsTable"]
       34 GETTABLEKS                       R7 R4 K1 ["index"]
       36 ADDK                             R6 R7 K6 [1]
       37 JUMPIFNOT                        R2 ; [+6]
       38 GETUPVAL                         R9 3
       39 LOADB                            R10 1
       40 CALL                             R9 1 -1
       41 NAMECALL                         R7 R0 K9 ["dispatch"]
       43 CALL                             R7 -1 0
       44 GETUPVAL                         R7 4
       45 GETIMPORT                        R8 K13 [Enum.AssetType.Place]
       47 JUMPIFNOTEQ                      R7 R8 ; [+29]
       49 GETUPVAL                         R7 5
       50 GETTABLEKS                       R7 R7 K14 ["Develop"]
       52 GETTABLEKS                       R7 R7 K15 ["V2"]
       54 GETTABLEKS                       R7 R7 K16 ["Universes"]
       56 GETTABLEKS                       R7 R7 K17 ["places"]
       58 GETIMPORT                        R8 K19 [game]
       60 GETTABLEKS                       R8 R8 K20 ["GameId"]
       62 GETUPVAL                         R9 1
       63 GETUPVAL                         R10 6
       64 CALL                             R7 3 1
       65 NAMECALL                         R7 R7 K21 ["makeRequest"]
       67 CALL                             R7 1 1
       68 DUPCLOSURE                       R9 K22 [PROTO_0]
       69 NEWCLOSURE                       R10 P1
       70 CAPTURE                          VAL R0
       71 CAPTURE                          UPVAL U3
       72 NAMECALL                         R7 R7 K23 ["andThen"]
       74 CALL                             R7 3 1
       75 MOVE                             R3 R7
       76 JUMP                             ; [+150]
       77 GETUPVAL                         R7 4
       78 GETIMPORT                        R8 K25 [Enum.AssetType.Package]
       80 JUMPIFNOTEQ                      R7 R8 ; [+31]
       82 GETUPVAL                         R7 5
       83 GETTABLEKS                       R7 R7 K26 ["APIS"]
       85 GETTABLEKS                       R7 R7 K27 ["Packages"]
       87 GETTABLEKS                       R7 R7 K28 ["V1"]
       89 GETTABLEKS                       R7 R7 K29 ["packages"]
       91 GETIMPORT                        R8 K19 [game]
       93 GETTABLEKS                       R8 R8 K20 ["GameId"]
       95 GETUPVAL                         R9 1
       96 GETUPVAL                         R10 6
       97 CALL                             R7 3 1
       98 NAMECALL                         R7 R7 K21 ["makeRequest"]
      100 CALL                             R7 1 1
      101 DUPCLOSURE                       R9 K30 [PROTO_2]
      102 CAPTURE                          UPVAL U7
      103 NEWCLOSURE                       R10 P3
      104 CAPTURE                          UPVAL U7
      105 CAPTURE                          VAL R0
      106 CAPTURE                          UPVAL U3
      107 NAMECALL                         R7 R7 K23 ["andThen"]
      109 CALL                             R7 3 1
      110 MOVE                             R3 R7
      111 JUMP                             ; [+115]
      112 GETUPVAL                         R7 4
      113 GETIMPORT                        R8 K32 [Enum.AssetType.Image]
      115 JUMPIFEQ                         R7 R8 ; [+27]
      117 GETUPVAL                         R7 4
      118 GETIMPORT                        R8 K34 [Enum.AssetType.MeshPart]
      120 JUMPIFEQ                         R7 R8 ; [+22]
      122 GETUPVAL                         R7 8
      123 CALL                             R7 0 1
      124 JUMPIFNOT                        R7 ; [+5]
      125 GETUPVAL                         R7 4
      126 GETIMPORT                        R8 K36 [Enum.AssetType.Audio]
      128 JUMPIFEQ                         R7 R8 ; [+14]
      130 GETUPVAL                         R7 9
      131 CALL                             R7 0 1
      132 JUMPIFNOT                        R7 ; [+5]
      133 GETUPVAL                         R7 4
      134 GETIMPORT                        R8 K38 [Enum.AssetType.Video]
      136 JUMPIFEQ                         R7 R8 ; [+6]
      138 GETUPVAL                         R7 4
      139 GETIMPORT                        R8 K40 [Enum.AssetType.Model]
      141 JUMPIFNOTEQ                      R7 R8 ; [+85]
      143 GETUPVAL                         R7 10
      144 JUMPIFNOT                        R7 ; [+38]
      145 GETUPVAL                         R7 5
      146 GETTABLEKS                       R7 R7 K26 ["APIS"]
      148 GETTABLEKS                       R7 R7 K41 ["ContentAliasesApi"]
      150 GETTABLEKS                       R7 R7 K42 ["aliases"]
      152 GETIMPORT                        R8 K19 [game]
      154 GETTABLEKS                       R8 R8 K20 ["GameId"]
      156 GETUPVAL                         R9 6
      157 GETUPVAL                         R10 1
      158 CALL                             R7 3 1
      159 NAMECALL                         R7 R7 K21 ["makeRequest"]
      161 CALL                             R7 1 1
      162 NEWCLOSURE                       R9 P4
      163 CAPTURE                          REF R4
      164 CAPTURE                          UPVAL U4
      165 CAPTURE                          UPVAL U8
      166 CAPTURE                          UPVAL U9
      167 CAPTURE                          REF R6
      168 CAPTURE                          UPVAL U11
      169 CAPTURE                          VAL R5
      170 CAPTURE                          VAL R0
      171 CAPTURE                          UPVAL U3
      172 CAPTURE                          UPVAL U12
      173 CAPTURE                          REF R3
      174 CAPTURE                          UPVAL U5
      175 CAPTURE                          UPVAL U13
      176 NEWCLOSURE                       R10 P5
      177 CAPTURE                          VAL R0
      178 CAPTURE                          UPVAL U3
      179 NAMECALL                         R7 R7 K23 ["andThen"]
      181 CALL                             R7 3 0
      182 JUMP                             ; [+44]
      183 LOADNIL                          R7
      184 GETUPVAL                         R8 2
      185 JUMPIF                           R8 ; [+2]
      186 LOADN                            R7 1
      187 JUMP                             ; [+1]
      188 GETUPVAL                         R7 2
      189 GETUPVAL                         R8 5
      190 GETTABLEKS                       R8 R8 K43 ["API"]
      192 GETTABLEKS                       R8 R8 K16 ["Universes"]
      194 GETTABLEKS                       R8 R8 K44 ["getAliases"]
      196 GETIMPORT                        R9 K19 [game]
      198 GETTABLEKS                       R9 R9 K20 ["GameId"]
      200 MOVE                             R10 R7
      201 CALL                             R8 2 1
      202 NAMECALL                         R8 R8 K21 ["makeRequest"]
      204 CALL                             R8 1 1
      205 NEWCLOSURE                       R10 P6
      206 CAPTURE                          REF R4
      207 CAPTURE                          REF R7
      208 CAPTURE                          UPVAL U4
      209 CAPTURE                          UPVAL U8
      210 CAPTURE                          UPVAL U9
      211 CAPTURE                          REF R6
      212 CAPTURE                          UPVAL U11
      213 CAPTURE                          VAL R5
      214 CAPTURE                          VAL R0
      215 CAPTURE                          UPVAL U3
      216 CAPTURE                          UPVAL U12
      217 CAPTURE                          REF R3
      218 CAPTURE                          UPVAL U5
      219 CAPTURE                          UPVAL U13
      220 NEWCLOSURE                       R11 P7
      221 CAPTURE                          VAL R0
      222 CAPTURE                          UPVAL U3
      223 NAMECALL                         R8 R8 K23 ["andThen"]
      225 CALL                             R8 3 0
      226 CLOSEUPVALS                      R7
      227 GETUPVAL                         R7 4
      228 GETIMPORT                        R8 K13 [Enum.AssetType.Place]
      230 JUMPIFEQ                         R7 R8 ; [+6]
      232 GETUPVAL                         R7 4
      233 GETIMPORT                        R8 K25 [Enum.AssetType.Package]
      235 JUMPIFNOTEQ                      R7 R8 ; [+17]
      237 NEWCLOSURE                       R9 P8
      238 CAPTURE                          UPVAL U7
      239 CAPTURE                          REF R4
      240 CAPTURE                          UPVAL U4
      241 CAPTURE                          REF R6
      242 CAPTURE                          UPVAL U11
      243 CAPTURE                          VAL R5
      244 CAPTURE                          VAL R0
      245 CAPTURE                          UPVAL U3
      246 CAPTURE                          UPVAL U12
      247 CAPTURE                          REF R3
      248 CAPTURE                          UPVAL U5
      249 CAPTURE                          UPVAL U13
      250 NAMECALL                         R7 R3 K23 ["andThen"]
      252 CALL                             R7 2 0
      253 CLOSEUPVALS                      R3
      254 RETURN                           R0 0

PROTO_16:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          VAL R4
        2 CAPTURE                          VAL R2
        3 CAPTURE                          VAL R3
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U6
       13 CAPTURE                          UPVAL U7
       14 CAPTURE                          UPVAL U8
       15 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Actions"]
       22 GETTABLEKS                       R3 R3 K9 ["SetAssets"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Src"]
       29 GETTABLEKS                       R4 R4 K8 ["Actions"]
       31 GETTABLEKS                       R4 R4 K10 ["SetAssetsModerationData"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K7 ["Src"]
       38 GETTABLEKS                       R5 R5 K8 ["Actions"]
       40 GETTABLEKS                       R5 R5 K11 ["SetIsFetchingAssets"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R6 R0 K7 ["Src"]
       47 GETTABLEKS                       R6 R6 K12 ["Thunks"]
       49 GETTABLEKS                       R6 R6 K13 ["GetAssetResponse"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K4 [require]
       54 GETTABLEKS                       R7 R0 K7 ["Src"]
       56 GETTABLEKS                       R7 R7 K14 ["Util"]
       58 GETTABLEKS                       R7 R7 K15 ["Screens"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K4 [require]
       63 GETTABLEKS                       R8 R0 K7 ["Src"]
       65 GETTABLEKS                       R8 R8 K14 ["Util"]
       67 GETTABLEKS                       R8 R8 K16 ["AssetManagerUtilities"]
       69 CALL                             R7 1 1
       70 GETTABLEKS                       R7 R7 K17 ["enableAudioImport"]
       72 GETIMPORT                        R8 K4 [require]
       74 GETTABLEKS                       R9 R0 K7 ["Src"]
       76 GETTABLEKS                       R9 R9 K14 ["Util"]
       78 GETTABLEKS                       R9 R9 K16 ["AssetManagerUtilities"]
       80 CALL                             R8 1 1
       81 GETTABLEKS                       R8 R8 K18 ["enableVideoImport"]
       83 GETIMPORT                        R9 K4 [require]
       85 GETTABLEKS                       R10 R0 K5 ["Packages"]
       87 GETTABLEKS                       R10 R10 K19 ["Framework"]
       89 CALL                             R9 1 1
       90 GETTABLEKS                       R9 R9 K14 ["Util"]
       92 GETTABLEKS                       R9 R9 K20 ["sendResultToKibana"]
       94 GETIMPORT                        R10 K22 [game]
       96 LOADK                            R12 K23 ["StudioAssetManagerAssetFetchNumber"]
       97 NAMECALL                         R10 R10 K24 ["GetFastInt"]
       99 CALL                             R10 2 1
      100 GETIMPORT                        R11 K22 [game]
      102 LOADK                            R13 K25 ["AssetManagerMigrateAliasesEndpoint2"]
      103 NAMECALL                         R11 R11 K26 ["GetFastFlag"]
      105 CALL                             R11 2 1
      106 DUPCLOSURE                       R12 K27 [PROTO_16]
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R8
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R3
      116 RETURN                           R12 1
