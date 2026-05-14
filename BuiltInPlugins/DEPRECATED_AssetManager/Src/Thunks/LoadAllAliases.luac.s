PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETIMPORT                        R2 K2 [pairs]
        6 GETTABLEKS                       R3 R1 K3 ["Aliases"]
        8 CALL                             R2 1 3
        9 FORGPREP_NEXT                    R2
       10 GETUPVAL                         R7 0
       11 GETIMPORT                        R8 K7 [Enum.AssetType.Image]
       13 JUMPIFNOTEQ                      R7 R8 ; [+8]
       15 GETIMPORT                        R7 K10 [string.find]
       17 GETTABLEKS                       R8 R6 K11 ["Name"]
       19 LOADK                            R9 K12 ["Images/"]
       20 CALL                             R7 2 1
       21 JUMPIF                           R7 ; [+54]
       22 GETUPVAL                         R7 0
       23 GETIMPORT                        R8 K14 [Enum.AssetType.MeshPart]
       25 JUMPIFNOTEQ                      R7 R8 ; [+8]
       27 GETIMPORT                        R7 K10 [string.find]
       29 GETTABLEKS                       R8 R6 K11 ["Name"]
       31 LOADK                            R9 K15 ["Meshes/"]
       32 CALL                             R7 2 1
       33 JUMPIF                           R7 ; [+42]
       34 GETUPVAL                         R7 1
       35 CALL                             R7 0 1
       36 JUMPIFNOT                        R7 ; [+12]
       37 GETUPVAL                         R7 0
       38 GETIMPORT                        R8 K17 [Enum.AssetType.Audio]
       40 JUMPIFNOTEQ                      R7 R8 ; [+8]
       42 GETIMPORT                        R7 K10 [string.find]
       44 GETTABLEKS                       R8 R6 K11 ["Name"]
       46 LOADK                            R9 K18 ["Audio/"]
       47 CALL                             R7 2 1
       48 JUMPIF                           R7 ; [+27]
       49 GETUPVAL                         R7 2
       50 CALL                             R7 0 1
       51 JUMPIFNOT                        R7 ; [+12]
       52 GETUPVAL                         R7 0
       53 GETIMPORT                        R8 K20 [Enum.AssetType.Video]
       55 JUMPIFNOTEQ                      R7 R8 ; [+8]
       57 GETIMPORT                        R7 K10 [string.find]
       59 GETTABLEKS                       R8 R6 K11 ["Name"]
       61 LOADK                            R9 K21 ["Video/"]
       62 CALL                             R7 2 1
       63 JUMPIF                           R7 ; [+12]
       64 GETUPVAL                         R7 0
       65 GETIMPORT                        R8 K23 [Enum.AssetType.Model]
       67 JUMPIFNOTEQ                      R7 R8 ; [+163]
       69 GETIMPORT                        R7 K10 [string.find]
       71 GETTABLEKS                       R8 R6 K11 ["Name"]
       73 LOADK                            R9 K24 ["Models/"]
       74 CALL                             R7 2 1
       75 JUMPIFNOT                        R7 ; [+155]
       76 NEWTABLE                         R7 8 0
       78 GETTABLEKS                       R9 R6 K25 ["TargetId"]
       80 FASTCALL1                        TOSTRING R9 ; [+2]
       81 GETIMPORT                        R8 K27 [tostring]
       83 CALL                             R8 1 1
       84 GETUPVAL                         R9 0
       85 SETTABLEKS                       R9 R7 K28 ["assetType"]
       87 GETTABLEKS                       R9 R6 K29 ["Asset"]
       89 SETTABLEKS                       R9 R7 K30 ["asset"]
       91 GETTABLEKS                       R9 R6 K25 ["TargetId"]
       93 SETTABLEKS                       R9 R7 K31 ["id"]
       95 GETUPVAL                         R9 0
       96 GETIMPORT                        R10 K7 [Enum.AssetType.Image]
       98 JUMPIFNOTEQ                      R9 R10 ; [+18]
      100 GETIMPORT                        R9 K10 [string.find]
      102 GETTABLEKS                       R10 R6 K11 ["Name"]
      104 LOADK                            R11 K12 ["Images/"]
      105 CALL                             R9 2 1
      106 JUMPIFNOT                        R9 ; [+10]
      107 GETIMPORT                        R9 K33 [string.gsub]
      109 GETTABLEKS                       R10 R6 K11 ["Name"]
      111 LOADK                            R11 K12 ["Images/"]
      112 LOADK                            R12 K34 [""]
      113 CALL                             R9 3 1
      114 SETTABLEKS                       R9 R7 K35 ["name"]
      116 JUMP                             ; [+93]
      117 GETUPVAL                         R9 0
      118 GETIMPORT                        R10 K14 [Enum.AssetType.MeshPart]
      120 JUMPIFNOTEQ                      R9 R10 ; [+18]
      122 GETIMPORT                        R9 K10 [string.find]
      124 GETTABLEKS                       R10 R6 K11 ["Name"]
      126 LOADK                            R11 K15 ["Meshes/"]
      127 CALL                             R9 2 1
      128 JUMPIFNOT                        R9 ; [+10]
      129 GETIMPORT                        R9 K33 [string.gsub]
      131 GETTABLEKS                       R10 R6 K11 ["Name"]
      133 LOADK                            R11 K15 ["Meshes/"]
      134 LOADK                            R12 K34 [""]
      135 CALL                             R9 3 1
      136 SETTABLEKS                       R9 R7 K35 ["name"]
      138 JUMP                             ; [+71]
      139 GETUPVAL                         R9 1
      140 CALL                             R9 0 1
      141 JUMPIFNOT                        R9 ; [+22]
      142 GETUPVAL                         R9 0
      143 GETIMPORT                        R10 K17 [Enum.AssetType.Audio]
      145 JUMPIFNOTEQ                      R9 R10 ; [+18]
      147 GETIMPORT                        R9 K10 [string.find]
      149 GETTABLEKS                       R10 R6 K11 ["Name"]
      151 LOADK                            R11 K18 ["Audio/"]
      152 CALL                             R9 2 1
      153 JUMPIFNOT                        R9 ; [+10]
      154 GETIMPORT                        R9 K33 [string.gsub]
      156 GETTABLEKS                       R10 R6 K11 ["Name"]
      158 LOADK                            R11 K18 ["Audio/"]
      159 LOADK                            R12 K34 [""]
      160 CALL                             R9 3 1
      161 SETTABLEKS                       R9 R7 K35 ["name"]
      163 JUMP                             ; [+46]
      164 GETUPVAL                         R9 2
      165 CALL                             R9 0 1
      166 JUMPIFNOT                        R9 ; [+22]
      167 GETUPVAL                         R9 0
      168 GETIMPORT                        R10 K20 [Enum.AssetType.Video]
      170 JUMPIFNOTEQ                      R9 R10 ; [+18]
      172 GETIMPORT                        R9 K10 [string.find]
      174 GETTABLEKS                       R10 R6 K11 ["Name"]
      176 LOADK                            R11 K21 ["Video/"]
      177 CALL                             R9 2 1
      178 JUMPIFNOT                        R9 ; [+10]
      179 GETIMPORT                        R9 K33 [string.gsub]
      181 GETTABLEKS                       R10 R6 K11 ["Name"]
      183 LOADK                            R11 K21 ["Video/"]
      184 LOADK                            R12 K34 [""]
      185 CALL                             R9 3 1
      186 SETTABLEKS                       R9 R7 K35 ["name"]
      188 JUMP                             ; [+21]
      189 GETUPVAL                         R9 0
      190 GETIMPORT                        R10 K23 [Enum.AssetType.Model]
      192 JUMPIFNOTEQ                      R9 R10 ; [+17]
      194 GETIMPORT                        R9 K10 [string.find]
      196 GETTABLEKS                       R10 R6 K11 ["Name"]
      198 LOADK                            R11 K24 ["Models/"]
      199 CALL                             R9 2 1
      200 JUMPIFNOT                        R9 ; [+9]
      201 GETIMPORT                        R9 K33 [string.gsub]
      203 GETTABLEKS                       R10 R6 K11 ["Name"]
      205 LOADK                            R11 K24 ["Models/"]
      206 LOADK                            R12 K34 [""]
      207 CALL                             R9 3 1
      208 SETTABLEKS                       R9 R7 K35 ["name"]
      210 GETUPVAL                         R9 3
      211 SETTABLEKS                       R9 R7 K36 ["layoutOrder"]
      213 GETUPVAL                         R9 4
      214 GETUPVAL                         R10 5
      215 GETTABLEKS                       R10 R10 K37 ["Dictionary"]
      217 GETTABLEKS                       R10 R10 K38 ["join"]
      219 GETUPVAL                         R11 4
      220 GETTABLEKS                       R11 R11 K39 ["assets"]
      222 NEWTABLE                         R12 1 0
      224 SETTABLE                         R7 R12 R8
      225 CALL                             R10 2 1
      226 SETTABLEKS                       R10 R9 K39 ["assets"]
      228 GETUPVAL                         R10 3
      229 ADDK                             R9 R10 K40 [1]
      230 SETUPVAL                         R9 3
      231 FORGLOOP                         R2 2 ; [-222]
      233 GETTABLEKS                       R2 R1 K41 ["NextPageToken"]
      235 JUMPIFNOT                        R2 ; [+5]
      236 GETUPVAL                         R2 6
      237 GETTABLEKS                       R3 R1 K41 ["NextPageToken"]
      239 CALL                             R2 1 -1
      240 RETURN                           R2 -1
      241 GETUPVAL                         R2 4
      242 GETUPVAL                         R3 3
      243 RETURN                           R2 2

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K3 [Enum.AssetType.Image]
        3 JUMPIFEQ                         R1 R2 ; [+27]
        5 GETUPVAL                         R1 0
        6 GETIMPORT                        R2 K5 [Enum.AssetType.MeshPart]
        8 JUMPIFEQ                         R1 R2 ; [+22]
       10 GETUPVAL                         R1 1
       11 CALL                             R1 0 1
       12 JUMPIFNOT                        R1 ; [+5]
       13 GETUPVAL                         R1 0
       14 GETIMPORT                        R2 K7 [Enum.AssetType.Audio]
       16 JUMPIFEQ                         R1 R2 ; [+14]
       18 GETUPVAL                         R1 2
       19 CALL                             R1 0 1
       20 JUMPIFNOT                        R1 ; [+5]
       21 GETUPVAL                         R1 0
       22 GETIMPORT                        R2 K9 [Enum.AssetType.Video]
       24 JUMPIFEQ                         R1 R2 ; [+6]
       26 GETUPVAL                         R1 0
       27 GETIMPORT                        R2 K11 [Enum.AssetType.Model]
       29 JUMPIFNOTEQ                      R1 R2 ; [+30]
       31 GETUPVAL                         R1 3
       32 GETTABLEKS                       R1 R1 K12 ["APIS"]
       34 GETTABLEKS                       R1 R1 K13 ["ContentAliasesApi"]
       36 GETTABLEKS                       R1 R1 K14 ["aliases"]
       38 GETIMPORT                        R2 K16 [game]
       40 GETTABLEKS                       R2 R2 K17 ["GameId"]
       42 GETUPVAL                         R3 4
       43 MOVE                             R4 R0
       44 CALL                             R1 3 1
       45 NAMECALL                         R1 R1 K18 ["makeRequest"]
       47 CALL                             R1 1 1
       48 NEWCLOSURE                       R3 P0
       49 CAPTURE                          UPVAL U0
       50 CAPTURE                          UPVAL U1
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          UPVAL U5
       53 CAPTURE                          UPVAL U6
       54 CAPTURE                          UPVAL U7
       55 CAPTURE                          UPVAL U8
       56 NAMECALL                         R1 R1 K19 ["andThen"]
       58 CALL                             R1 2 -1
       59 RETURN                           R1 -1
       60 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETIMPORT                        R2 K2 [pairs]
        6 GETTABLEKS                       R3 R1 K3 ["Aliases"]
        8 CALL                             R2 1 3
        9 FORGPREP_NEXT                    R2
       10 GETUPVAL                         R7 0
       11 GETIMPORT                        R8 K7 [Enum.AssetType.Image]
       13 JUMPIFNOTEQ                      R7 R8 ; [+8]
       15 GETIMPORT                        R7 K10 [string.find]
       17 GETTABLEKS                       R8 R6 K11 ["Name"]
       19 LOADK                            R9 K12 ["Images/"]
       20 CALL                             R7 2 1
       21 JUMPIF                           R7 ; [+54]
       22 GETUPVAL                         R7 0
       23 GETIMPORT                        R8 K14 [Enum.AssetType.MeshPart]
       25 JUMPIFNOTEQ                      R7 R8 ; [+8]
       27 GETIMPORT                        R7 K10 [string.find]
       29 GETTABLEKS                       R8 R6 K11 ["Name"]
       31 LOADK                            R9 K15 ["Meshes/"]
       32 CALL                             R7 2 1
       33 JUMPIF                           R7 ; [+42]
       34 GETUPVAL                         R7 1
       35 CALL                             R7 0 1
       36 JUMPIFNOT                        R7 ; [+12]
       37 GETUPVAL                         R7 0
       38 GETIMPORT                        R8 K17 [Enum.AssetType.Audio]
       40 JUMPIFNOTEQ                      R7 R8 ; [+8]
       42 GETIMPORT                        R7 K10 [string.find]
       44 GETTABLEKS                       R8 R6 K11 ["Name"]
       46 LOADK                            R9 K18 ["Audio/"]
       47 CALL                             R7 2 1
       48 JUMPIF                           R7 ; [+27]
       49 GETUPVAL                         R7 2
       50 CALL                             R7 0 1
       51 JUMPIFNOT                        R7 ; [+12]
       52 GETUPVAL                         R7 0
       53 GETIMPORT                        R8 K20 [Enum.AssetType.Video]
       55 JUMPIFNOTEQ                      R7 R8 ; [+8]
       57 GETIMPORT                        R7 K10 [string.find]
       59 GETTABLEKS                       R8 R6 K11 ["Name"]
       61 LOADK                            R9 K21 ["Video/"]
       62 CALL                             R7 2 1
       63 JUMPIF                           R7 ; [+12]
       64 GETUPVAL                         R7 0
       65 GETIMPORT                        R8 K23 [Enum.AssetType.Model]
       67 JUMPIFNOTEQ                      R7 R8 ; [+163]
       69 GETIMPORT                        R7 K10 [string.find]
       71 GETTABLEKS                       R8 R6 K11 ["Name"]
       73 LOADK                            R9 K24 ["Models/"]
       74 CALL                             R7 2 1
       75 JUMPIFNOT                        R7 ; [+155]
       76 NEWTABLE                         R7 8 0
       78 GETTABLEKS                       R9 R6 K25 ["TargetId"]
       80 FASTCALL1                        TOSTRING R9 ; [+2]
       81 GETIMPORT                        R8 K27 [tostring]
       83 CALL                             R8 1 1
       84 GETUPVAL                         R9 0
       85 SETTABLEKS                       R9 R7 K28 ["assetType"]
       87 GETTABLEKS                       R9 R6 K29 ["Asset"]
       89 SETTABLEKS                       R9 R7 K30 ["asset"]
       91 GETTABLEKS                       R9 R6 K25 ["TargetId"]
       93 SETTABLEKS                       R9 R7 K31 ["id"]
       95 GETUPVAL                         R9 0
       96 GETIMPORT                        R10 K7 [Enum.AssetType.Image]
       98 JUMPIFNOTEQ                      R9 R10 ; [+18]
      100 GETIMPORT                        R9 K10 [string.find]
      102 GETTABLEKS                       R10 R6 K11 ["Name"]
      104 LOADK                            R11 K12 ["Images/"]
      105 CALL                             R9 2 1
      106 JUMPIFNOT                        R9 ; [+10]
      107 GETIMPORT                        R9 K33 [string.gsub]
      109 GETTABLEKS                       R10 R6 K11 ["Name"]
      111 LOADK                            R11 K12 ["Images/"]
      112 LOADK                            R12 K34 [""]
      113 CALL                             R9 3 1
      114 SETTABLEKS                       R9 R7 K35 ["name"]
      116 JUMP                             ; [+93]
      117 GETUPVAL                         R9 0
      118 GETIMPORT                        R10 K14 [Enum.AssetType.MeshPart]
      120 JUMPIFNOTEQ                      R9 R10 ; [+18]
      122 GETIMPORT                        R9 K10 [string.find]
      124 GETTABLEKS                       R10 R6 K11 ["Name"]
      126 LOADK                            R11 K15 ["Meshes/"]
      127 CALL                             R9 2 1
      128 JUMPIFNOT                        R9 ; [+10]
      129 GETIMPORT                        R9 K33 [string.gsub]
      131 GETTABLEKS                       R10 R6 K11 ["Name"]
      133 LOADK                            R11 K15 ["Meshes/"]
      134 LOADK                            R12 K34 [""]
      135 CALL                             R9 3 1
      136 SETTABLEKS                       R9 R7 K35 ["name"]
      138 JUMP                             ; [+71]
      139 GETUPVAL                         R9 1
      140 CALL                             R9 0 1
      141 JUMPIFNOT                        R9 ; [+22]
      142 GETUPVAL                         R9 0
      143 GETIMPORT                        R10 K17 [Enum.AssetType.Audio]
      145 JUMPIFNOTEQ                      R9 R10 ; [+18]
      147 GETIMPORT                        R9 K10 [string.find]
      149 GETTABLEKS                       R10 R6 K11 ["Name"]
      151 LOADK                            R11 K18 ["Audio/"]
      152 CALL                             R9 2 1
      153 JUMPIFNOT                        R9 ; [+10]
      154 GETIMPORT                        R9 K33 [string.gsub]
      156 GETTABLEKS                       R10 R6 K11 ["Name"]
      158 LOADK                            R11 K18 ["Audio/"]
      159 LOADK                            R12 K34 [""]
      160 CALL                             R9 3 1
      161 SETTABLEKS                       R9 R7 K35 ["name"]
      163 JUMP                             ; [+46]
      164 GETUPVAL                         R9 2
      165 CALL                             R9 0 1
      166 JUMPIFNOT                        R9 ; [+22]
      167 GETUPVAL                         R9 0
      168 GETIMPORT                        R10 K20 [Enum.AssetType.Video]
      170 JUMPIFNOTEQ                      R9 R10 ; [+18]
      172 GETIMPORT                        R9 K10 [string.find]
      174 GETTABLEKS                       R10 R6 K11 ["Name"]
      176 LOADK                            R11 K21 ["Video/"]
      177 CALL                             R9 2 1
      178 JUMPIFNOT                        R9 ; [+10]
      179 GETIMPORT                        R9 K33 [string.gsub]
      181 GETTABLEKS                       R10 R6 K11 ["Name"]
      183 LOADK                            R11 K21 ["Video/"]
      184 LOADK                            R12 K34 [""]
      185 CALL                             R9 3 1
      186 SETTABLEKS                       R9 R7 K35 ["name"]
      188 JUMP                             ; [+21]
      189 GETUPVAL                         R9 0
      190 GETIMPORT                        R10 K23 [Enum.AssetType.Model]
      192 JUMPIFNOTEQ                      R9 R10 ; [+17]
      194 GETIMPORT                        R9 K10 [string.find]
      196 GETTABLEKS                       R10 R6 K11 ["Name"]
      198 LOADK                            R11 K24 ["Models/"]
      199 CALL                             R9 2 1
      200 JUMPIFNOT                        R9 ; [+9]
      201 GETIMPORT                        R9 K33 [string.gsub]
      203 GETTABLEKS                       R10 R6 K11 ["Name"]
      205 LOADK                            R11 K24 ["Models/"]
      206 LOADK                            R12 K34 [""]
      207 CALL                             R9 3 1
      208 SETTABLEKS                       R9 R7 K35 ["name"]
      210 GETUPVAL                         R9 3
      211 SETTABLEKS                       R9 R7 K36 ["layoutOrder"]
      213 GETUPVAL                         R9 4
      214 GETUPVAL                         R10 5
      215 GETTABLEKS                       R10 R10 K37 ["Dictionary"]
      217 GETTABLEKS                       R10 R10 K38 ["join"]
      219 GETUPVAL                         R11 4
      220 GETTABLEKS                       R11 R11 K39 ["assets"]
      222 NEWTABLE                         R12 1 0
      224 SETTABLE                         R7 R12 R8
      225 CALL                             R10 2 1
      226 SETTABLEKS                       R10 R9 K39 ["assets"]
      228 GETUPVAL                         R10 3
      229 ADDK                             R9 R10 K40 [1]
      230 SETUPVAL                         R9 3
      231 FORGLOOP                         R2 2 ; [-222]
      233 GETTABLEKS                       R2 R1 K41 ["FinalPage"]
      235 JUMPIF                           R2 ; [+5]
      236 GETUPVAL                         R2 6
      237 GETUPVAL                         R4 7
      238 ADDK                             R3 R4 K40 [1]
      239 CALL                             R2 1 -1
      240 RETURN                           R2 -1
      241 GETUPVAL                         R2 4
      242 GETUPVAL                         R3 3
      243 RETURN                           R2 2

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K3 [Enum.AssetType.Image]
        3 JUMPIFEQ                         R1 R2 ; [+27]
        5 GETUPVAL                         R1 0
        6 GETIMPORT                        R2 K5 [Enum.AssetType.MeshPart]
        8 JUMPIFEQ                         R1 R2 ; [+22]
       10 GETUPVAL                         R1 1
       11 CALL                             R1 0 1
       12 JUMPIFNOT                        R1 ; [+5]
       13 GETUPVAL                         R1 0
       14 GETIMPORT                        R2 K7 [Enum.AssetType.Audio]
       16 JUMPIFEQ                         R1 R2 ; [+14]
       18 GETUPVAL                         R1 2
       19 CALL                             R1 0 1
       20 JUMPIFNOT                        R1 ; [+5]
       21 GETUPVAL                         R1 0
       22 GETIMPORT                        R2 K9 [Enum.AssetType.Video]
       24 JUMPIFEQ                         R1 R2 ; [+6]
       26 GETUPVAL                         R1 0
       27 GETIMPORT                        R2 K11 [Enum.AssetType.Model]
       29 JUMPIFNOTEQ                      R1 R2 ; [+30]
       31 GETUPVAL                         R1 3
       32 GETTABLEKS                       R1 R1 K12 ["API"]
       34 GETTABLEKS                       R1 R1 K13 ["Universes"]
       36 GETTABLEKS                       R1 R1 K14 ["getAliases"]
       38 GETIMPORT                        R2 K16 [game]
       40 GETTABLEKS                       R2 R2 K17 ["GameId"]
       42 MOVE                             R3 R0
       43 CALL                             R1 2 1
       44 NAMECALL                         R1 R1 K18 ["makeRequest"]
       46 CALL                             R1 1 1
       47 NEWCLOSURE                       R3 P0
       48 CAPTURE                          UPVAL U0
       49 CAPTURE                          UPVAL U1
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          UPVAL U5
       53 CAPTURE                          UPVAL U6
       54 CAPTURE                          UPVAL U7
       55 CAPTURE                          VAL R0
       56 NAMECALL                         R1 R1 K19 ["andThen"]
       58 CALL                             R1 2 -1
       59 RETURN                           R1 -1
       60 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R3 1 0
        2 NEWTABLE                         R4 0 0
        4 SETTABLEKS                       R4 R3 K0 ["assets"]
        6 LOADN                            R4 1
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          REF R4
       14 CAPTURE                          VAL R3
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R5
       17 NEWCLOSURE                       R6 P1
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          REF R4
       23 CAPTURE                          VAL R3
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R6
       26 GETUPVAL                         R7 4
       27 JUMPIFNOT                        R7 ; [+4]
       28 MOVE                             R7 R5
       29 CALL                             R7 0 -1
       30 CLOSEUPVALS                      R4
       31 RETURN                           R7 -1
       32 MOVE                             R7 R6
       33 LOADN                            R8 1
       34 CALL                             R7 1 -1
       35 CLOSEUPVALS                      R4
       36 RETURN                           R7 -1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 LOADB                            R6 0
        3 CALL                             R5 1 -1
        4 NAMECALL                         R3 R3 K0 ["dispatch"]
        6 CALL                             R3 -1 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 2
        9 MOVE                             R6 R0
       10 MOVE                             R7 R1
       11 CALL                             R5 2 -1
       12 NAMECALL                         R3 R3 K0 ["dispatch"]
       14 CALL                             R3 -1 0
       15 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R4 0
        4 LOADB                            R5 1
        5 CALL                             R4 1 -1
        6 NAMECALL                         R2 R0 K1 ["dispatch"]
        8 CALL                             R2 -1 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K2 ["resolve"]
       12 GETUPVAL                         R3 2
       13 GETUPVAL                         R4 3
       14 GETUPVAL                         R5 4
       15 MOVE                             R6 R1
       16 CALL                             R3 3 -1
       17 CALL                             R2 -1 1
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U5
       22 NEWCLOSURE                       R5 P1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U0
       25 NAMECALL                         R2 R2 K3 ["andThen"]
       27 CALL                             R2 3 -1
       28 RETURN                           R2 -1

PROTO_8:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U3
        7 RETURN                           R2 1

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
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R2 R2 K8 ["Util"]
       25 GETTABLEKS                       R2 R2 K9 ["Promise"]
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K10 ["Src"]
       31 GETTABLEKS                       R4 R4 K8 ["Util"]
       33 GETTABLEKS                       R4 R4 K11 ["AssetManagerUtilities"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R3 R3 K12 ["enableAudioImport"]
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R5 R0 K10 ["Src"]
       42 GETTABLEKS                       R5 R5 K8 ["Util"]
       44 GETTABLEKS                       R5 R5 K11 ["AssetManagerUtilities"]
       46 CALL                             R4 1 1
       47 GETTABLEKS                       R4 R4 K13 ["enableVideoImport"]
       49 GETIMPORT                        R5 K4 [require]
       51 GETTABLEKS                       R6 R0 K10 ["Src"]
       53 GETTABLEKS                       R6 R6 K14 ["Actions"]
       55 GETTABLEKS                       R6 R6 K15 ["SetAssets"]
       57 CALL                             R5 1 1
       58 GETIMPORT                        R6 K4 [require]
       60 GETTABLEKS                       R7 R0 K10 ["Src"]
       62 GETTABLEKS                       R7 R7 K14 ["Actions"]
       64 GETTABLEKS                       R7 R7 K16 ["SetIsFetchingAssets"]
       66 CALL                             R6 1 1
       67 GETIMPORT                        R7 K18 [game]
       69 LOADK                            R9 K19 ["StudioAssetManagerAssetFetchNumber"]
       70 NAMECALL                         R7 R7 K20 ["GetFastInt"]
       72 CALL                             R7 2 1
       73 GETIMPORT                        R8 K18 [game]
       75 LOADK                            R10 K21 ["AssetManagerMigrateAliasesEndpoint2"]
       76 NAMECALL                         R8 R8 K22 ["GetFastFlag"]
       78 CALL                             R8 2 1
       79 DUPCLOSURE                       R9 K23 [PROTO_4]
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R8
       85 DUPCLOSURE                       R10 K24 [PROTO_8]
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R5
       90 RETURN                           R10 1
