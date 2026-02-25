PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["creator"]
        3 GETTABLEKS                       R0 R1 K1 ["type"]
        5 JUMPIFNOTEQKS                    R0 K2 ["Group"] ; [+18]
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R2 2
        9 NAMECALL                         R0 R0 K3 ["GetGroupInfoAsync"]
       11 CALL                             R0 2 1
       12 GETTABLEKS                       R1 R0 K4 ["Name"]
       14 JUMPIFNOT                        R1 ; [+30]
       15 GETUPVAL                         R2 3
       16 GETUPVAL                         R4 4
       17 GETUPVAL                         R5 5
       18 MOVE                             R6 R1
       19 CALL                             R4 2 -1
       20 NAMECALL                         R2 R2 K5 ["dispatch"]
       22 CALL                             R2 -1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R1 R2 K0 ["creator"]
       27 GETTABLEKS                       R0 R1 K1 ["type"]
       29 JUMPIFNOTEQKS                    R0 K6 ["User"] ; [+15]
       31 GETUPVAL                         R0 6
       32 GETUPVAL                         R2 2
       33 NAMECALL                         R0 R0 K7 ["GetNameFromUserIdAsync"]
       35 CALL                             R0 2 1
       36 JUMPIFNOT                        R0 ; [+8]
       37 GETUPVAL                         R1 3
       38 GETUPVAL                         R3 4
       39 GETUPVAL                         R4 5
       40 MOVE                             R5 R0
       41 CALL                             R3 2 -1
       42 NAMECALL                         R1 R1 K5 ["dispatch"]
       44 CALL                             R1 -1 0
       45 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETTABLEKS                       R3 R1 K1 ["data"]
       10 LENGTH                           R2 R3
       11 JUMPIFNOTEQKN                    R2 K2 [0] ; [+2]
       13 RETURN                           R0 0
       14 NEWTABLE                         R2 0 0
       16 GETIMPORT                        R3 K4 [ipairs]
       18 GETTABLEKS                       R4 R1 K1 ["data"]
       20 CALL                             R3 1 3
       21 FORGPREP_INEXT                   R3
       22 GETTABLEKS                       R8 R7 K5 ["id"]
       24 GETTABLEKS                       R10 R7 K6 ["creator"]
       26 GETTABLEKS                       R9 R10 K7 ["targetId"]
       28 GETTABLEKS                       R10 R7 K8 ["name"]
       30 GETTABLEKS                       R11 R7 K9 ["typeId"]
       32 GETIMPORT                        R13 K13 [Enum.AssetType.Image]
       34 GETTABLEKS                       R12 R13 K14 ["Value"]
       36 JUMPIFNOTEQ                      R11 R12 ; [+17]
       38 GETIMPORT                        R12 K17 [string.find]
       40 GETTABLEKS                       R13 R7 K8 ["name"]
       42 LOADK                            R14 K18 ["Images/"]
       43 CALL                             R12 2 1
       44 JUMPIFNOT                        R12 ; [+9]
       45 GETIMPORT                        R12 K20 [string.gsub]
       47 GETTABLEKS                       R13 R7 K8 ["name"]
       49 LOADK                            R14 K18 ["Images/"]
       50 LOADK                            R15 K21 [""]
       51 CALL                             R12 3 1
       52 MOVE                             R10 R12
       53 JUMP                             ; [+93]
       54 GETIMPORT                        R13 K23 [Enum.AssetType.MeshPart]
       56 GETTABLEKS                       R12 R13 K14 ["Value"]
       58 JUMPIFNOTEQ                      R11 R12 ; [+17]
       60 GETIMPORT                        R12 K17 [string.find]
       62 GETTABLEKS                       R13 R7 K8 ["name"]
       64 LOADK                            R14 K24 ["Meshes/"]
       65 CALL                             R12 2 1
       66 JUMPIFNOT                        R12 ; [+9]
       67 GETIMPORT                        R12 K20 [string.gsub]
       69 GETTABLEKS                       R13 R7 K8 ["name"]
       71 LOADK                            R14 K24 ["Meshes/"]
       72 LOADK                            R15 K21 [""]
       73 CALL                             R12 3 1
       74 MOVE                             R10 R12
       75 JUMP                             ; [+71]
       76 GETUPVAL                         R12 2
       77 CALL                             R12 0 1
       78 JUMPIFNOT                        R12 ; [+22]
       79 GETIMPORT                        R13 K26 [Enum.AssetType.Audio]
       81 GETTABLEKS                       R12 R13 K14 ["Value"]
       83 JUMPIFNOTEQ                      R11 R12 ; [+17]
       85 GETIMPORT                        R12 K17 [string.find]
       87 GETTABLEKS                       R13 R7 K8 ["name"]
       89 LOADK                            R14 K27 ["Audio/"]
       90 CALL                             R12 2 1
       91 JUMPIFNOT                        R12 ; [+9]
       92 GETIMPORT                        R12 K20 [string.gsub]
       94 GETTABLEKS                       R13 R7 K8 ["name"]
       96 LOADK                            R14 K27 ["Audio/"]
       97 LOADK                            R15 K21 [""]
       98 CALL                             R12 3 1
       99 MOVE                             R10 R12
      100 JUMP                             ; [+46]
      101 GETUPVAL                         R12 3
      102 CALL                             R12 0 1
      103 JUMPIFNOT                        R12 ; [+22]
      104 GETIMPORT                        R13 K29 [Enum.AssetType.Video]
      106 GETTABLEKS                       R12 R13 K14 ["Value"]
      108 JUMPIFNOTEQ                      R11 R12 ; [+17]
      110 GETIMPORT                        R12 K17 [string.find]
      112 GETTABLEKS                       R13 R7 K8 ["name"]
      114 LOADK                            R14 K30 ["Video/"]
      115 CALL                             R12 2 1
      116 JUMPIFNOT                        R12 ; [+9]
      117 GETIMPORT                        R12 K20 [string.gsub]
      119 GETTABLEKS                       R13 R7 K8 ["name"]
      121 LOADK                            R14 K30 ["Video/"]
      122 LOADK                            R15 K21 [""]
      123 CALL                             R12 3 1
      124 MOVE                             R10 R12
      125 JUMP                             ; [+21]
      126 GETIMPORT                        R13 K32 [Enum.AssetType.Model]
      128 GETTABLEKS                       R12 R13 K14 ["Value"]
      130 JUMPIFNOTEQ                      R11 R12 ; [+16]
      132 GETIMPORT                        R12 K17 [string.find]
      134 GETTABLEKS                       R13 R7 K33 ["Name"]
      136 LOADK                            R14 K34 ["Models/"]
      137 CALL                             R12 2 1
      138 JUMPIFNOT                        R12 ; [+8]
      139 GETIMPORT                        R12 K20 [string.gsub]
      141 GETTABLEKS                       R13 R7 K33 ["Name"]
      143 LOADK                            R14 K34 ["Models/"]
      144 LOADK                            R15 K21 [""]
      145 CALL                             R12 3 1
      146 MOVE                             R10 R12
      147 GETTABLEKS                       R12 R7 K35 ["created"]
      149 GETTABLEKS                       R13 R7 K36 ["updated"]
      151 DUPTABLE                         R14 K39 [{"Asset", "Creator"}]
      152 DUPTABLE                         R15 K47 [{"Id", "Type", "TypeId", "Name", "Description", "AssetGenres", "Created", "Updated"}]
      153 GETTABLEKS                       R16 R7 K5 ["id"]
      155 SETTABLEKS                       R16 R15 K40 ["Id"]
      157 GETTABLEKS                       R16 R7 K48 ["type"]
      159 SETTABLEKS                       R16 R15 K41 ["Type"]
      161 SETTABLEKS                       R11 R15 K42 ["TypeId"]
      163 SETTABLEKS                       R10 R15 K33 ["Name"]
      165 GETTABLEKS                       R16 R7 K49 ["description"]
      167 SETTABLEKS                       R16 R15 K43 ["Description"]
      169 GETTABLEKS                       R16 R7 K50 ["genres"]
      171 SETTABLEKS                       R16 R15 K44 ["AssetGenres"]
      173 SETTABLEKS                       R12 R15 K45 ["Created"]
      175 SETTABLEKS                       R13 R15 K46 ["Updated"]
      177 SETTABLEKS                       R15 R14 K37 ["Asset"]
      179 DUPTABLE                         R15 K52 [{"Type", "TypeId", "TargetId", "Name"}]
      180 GETTABLEKS                       R17 R7 K6 ["creator"]
      182 GETTABLEKS                       R16 R17 K48 ["type"]
      184 SETTABLEKS                       R16 R15 K41 ["Type"]
      186 GETTABLEKS                       R17 R7 K6 ["creator"]
      188 GETTABLEKS                       R16 R17 K9 ["typeId"]
      190 SETTABLEKS                       R16 R15 K42 ["TypeId"]
      192 GETTABLEKS                       R17 R7 K6 ["creator"]
      194 GETTABLEKS                       R16 R17 K7 ["targetId"]
      196 SETTABLEKS                       R16 R15 K51 ["TargetId"]
      198 LOADK                            R16 K21 [""]
      199 SETTABLEKS                       R16 R15 K33 ["Name"]
      201 SETTABLEKS                       R15 R14 K38 ["Creator"]
      203 SETTABLE                         R14 R2 R8
      204 GETIMPORT                        R14 K54 [spawn]
      206 NEWCLOSURE                       R15 P0
      207 CAPTURE                          VAL R7
      208 CAPTURE                          UPVAL U4
      209 CAPTURE                          VAL R9
      210 CAPTURE                          UPVAL U5
      211 CAPTURE                          UPVAL U6
      212 CAPTURE                          VAL R8
      213 CAPTURE                          UPVAL U7
      214 CALL                             R14 1 0
      215 GETUPVAL                         R14 5
      216 GETUPVAL                         R16 8
      217 MOVE                             R17 R8
      218 GETTABLEKS                       R18 R7 K9 ["typeId"]
      220 CALL                             R16 2 -1
      221 NAMECALL                         R14 R14 K55 ["dispatch"]
      223 CALL                             R14 -1 0
      224 FORGLOOP                         R3 2 [inext] ; [-203]
      226 GETUPVAL                         R3 5
      227 GETUPVAL                         R5 9
      228 MOVE                             R6 R2
      229 CALL                             R5 1 -1
      230 NAMECALL                         R3 R3 K55 ["dispatch"]
      232 CALL                             R3 -1 0
      233 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETIMPORT                        R1 K1 [error]
        7 LOADK                            R2 K2 ["Failed to load data for Asset Preview"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 GETUPVAL                         R3 0
        5 CALL                             R2 1 3
        6 FORGPREP_INEXT                   R2
        7 LOADB                            R7 1
        8 SETTABLE                         R7 R1 R6
        9 FORGLOOP                         R2 2 [inext] ; [-3]
       11 GETUPVAL                         R4 1
       12 MOVE                             R5 R1
       13 CALL                             R4 1 -1
       14 NAMECALL                         R2 R0 K2 ["dispatch"]
       16 CALL                             R2 -1 0
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R5 R6 K3 ["Develop"]
       20 GETTABLEKS                       R4 R5 K4 ["V1"]
       22 GETTABLEKS                       R3 R4 K5 ["Assets"]
       24 GETTABLEKS                       R2 R3 K6 ["assets"]
       26 GETUPVAL                         R3 0
       27 CALL                             R2 1 1
       28 NAMECALL                         R2 R2 K7 ["makeRequest"]
       30 CALL                             R2 1 1
       31 NEWCLOSURE                       R4 P0
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          UPVAL U7
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U8
       39 CAPTURE                          UPVAL U9
       40 CAPTURE                          UPVAL U10
       41 CAPTURE                          UPVAL U1
       42 DUPCLOSURE                       R5 K8 [PROTO_2]
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          UPVAL U4
       45 NAMECALL                         R2 R2 K9 ["andThen"]
       47 CALL                             R2 3 0
       48 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["Players"]
       12 NAMECALL                         R1 R1 K6 ["GetService"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K4 [game]
       17 LOADK                            R4 K7 ["GroupService"]
       18 NAMECALL                         R2 R2 K6 ["GetService"]
       20 CALL                             R2 2 1
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Src"]
       25 GETTABLEKS                       R5 R6 K11 ["Thunks"]
       27 GETTABLEKS                       R4 R5 K12 ["GetRootTreeViewInstance"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K9 [require]
       32 GETTABLEKS                       R7 R0 K10 ["Src"]
       34 GETTABLEKS                       R6 R7 K13 ["Actions"]
       36 GETTABLEKS                       R5 R6 K14 ["SetAssetPreviewData"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K9 [require]
       41 GETTABLEKS                       R8 R0 K10 ["Src"]
       43 GETTABLEKS                       R7 R8 K13 ["Actions"]
       45 GETTABLEKS                       R6 R7 K15 ["SetAssetOwnerName"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R10 R0 K10 ["Src"]
       52 GETTABLEKS                       R9 R10 K16 ["Util"]
       54 GETTABLEKS                       R8 R9 K17 ["AssetManagerUtilities"]
       56 CALL                             R7 1 1
       57 GETTABLEKS                       R6 R7 K18 ["enableAudioImport"]
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R11 R0 K10 ["Src"]
       63 GETTABLEKS                       R10 R11 K16 ["Util"]
       65 GETTABLEKS                       R9 R10 K17 ["AssetManagerUtilities"]
       67 CALL                             R8 1 1
       68 GETTABLEKS                       R7 R8 K19 ["enableVideoImport"]
       70 GETIMPORT                        R10 K9 [require]
       72 GETTABLEKS                       R12 R0 K20 ["Packages"]
       74 GETTABLEKS                       R11 R12 K21 ["Framework"]
       76 CALL                             R10 1 1
       77 GETTABLEKS                       R9 R10 K16 ["Util"]
       79 GETTABLEKS                       R8 R9 K22 ["sendResultToKibana"]
       81 GETIMPORT                        R9 K4 [game]
       83 LOADK                            R11 K23 ["NewPackageAnalyticsWithRefactor2"]
       84 NAMECALL                         R9 R9 K24 ["GetFastFlag"]
       86 CALL                             R9 2 1
       87 DUPCLOSURE                       R10 K25 [PROTO_4]
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R3
       97 RETURN                           R10 1
