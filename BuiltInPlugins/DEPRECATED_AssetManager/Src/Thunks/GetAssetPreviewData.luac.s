PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["creator"]
        3 GETTABLEKS                       R0 R0 K1 ["type"]
        5 JUMPIFNOTEQKS                    R0 K2 ["User"] ; [+7]
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R2 2
        9 NAMECALL                         R0 R0 K3 ["GetNameFromUserIdAsync"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K0 ["creator"]
       16 GETTABLEKS                       R0 R0 K1 ["type"]
       18 JUMPIFNOTEQKS                    R0 K4 ["Group"] ; [+9]
       20 GETUPVAL                         R0 3
       21 GETUPVAL                         R2 2
       22 NAMECALL                         R0 R0 K5 ["GetGroupInfoAsync"]
       24 CALL                             R0 2 1
       25 GETTABLEKS                       R0 R0 K6 ["Name"]
       27 RETURN                           R0 1
       28 GETIMPORT                        R0 K8 [error]
       30 LOADK                            R1 K9 ["Invalid creator type"]
       31 CALL                             R0 1 0
       32 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 2
        8 JUMPIF                           R0 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 4
       11 GETUPVAL                         R4 5
       12 GETUPVAL                         R5 6
       13 MOVE                             R6 R1
       14 CALL                             R4 2 -1
       15 NAMECALL                         R2 R2 K2 ["dispatch"]
       17 CALL                             R2 -1 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETTABLEKS                       R3 R1 K1 ["data"]
        8 LENGTH                           R2 R3
        9 JUMPIFNOTEQKN                    R2 K2 [0] ; [+2]
       11 RETURN                           R0 0
       12 NEWTABLE                         R2 0 0
       14 GETIMPORT                        R3 K4 [ipairs]
       16 GETTABLEKS                       R4 R1 K1 ["data"]
       18 CALL                             R3 1 3
       19 FORGPREP_INEXT                   R3
       20 GETTABLEKS                       R8 R7 K5 ["id"]
       22 GETTABLEKS                       R9 R7 K6 ["creator"]
       24 GETTABLEKS                       R9 R9 K7 ["targetId"]
       26 GETTABLEKS                       R10 R7 K8 ["name"]
       28 GETTABLEKS                       R11 R7 K9 ["typeId"]
       30 GETIMPORT                        R12 K13 [Enum.AssetType.Image]
       32 GETTABLEKS                       R12 R12 K14 ["Value"]
       34 JUMPIFNOTEQ                      R11 R12 ; [+17]
       36 GETIMPORT                        R12 K17 [string.find]
       38 GETTABLEKS                       R13 R7 K8 ["name"]
       40 LOADK                            R14 K18 ["Images/"]
       41 CALL                             R12 2 1
       42 JUMPIFNOT                        R12 ; [+9]
       43 GETIMPORT                        R12 K20 [string.gsub]
       45 GETTABLEKS                       R13 R7 K8 ["name"]
       47 LOADK                            R14 K18 ["Images/"]
       48 LOADK                            R15 K21 [""]
       49 CALL                             R12 3 1
       50 MOVE                             R10 R12
       51 JUMP                             ; [+93]
       52 GETIMPORT                        R12 K23 [Enum.AssetType.MeshPart]
       54 GETTABLEKS                       R12 R12 K14 ["Value"]
       56 JUMPIFNOTEQ                      R11 R12 ; [+17]
       58 GETIMPORT                        R12 K17 [string.find]
       60 GETTABLEKS                       R13 R7 K8 ["name"]
       62 LOADK                            R14 K24 ["Meshes/"]
       63 CALL                             R12 2 1
       64 JUMPIFNOT                        R12 ; [+9]
       65 GETIMPORT                        R12 K20 [string.gsub]
       67 GETTABLEKS                       R13 R7 K8 ["name"]
       69 LOADK                            R14 K24 ["Meshes/"]
       70 LOADK                            R15 K21 [""]
       71 CALL                             R12 3 1
       72 MOVE                             R10 R12
       73 JUMP                             ; [+71]
       74 GETUPVAL                         R12 1
       75 CALL                             R12 0 1
       76 JUMPIFNOT                        R12 ; [+22]
       77 GETIMPORT                        R12 K26 [Enum.AssetType.Audio]
       79 GETTABLEKS                       R12 R12 K14 ["Value"]
       81 JUMPIFNOTEQ                      R11 R12 ; [+17]
       83 GETIMPORT                        R12 K17 [string.find]
       85 GETTABLEKS                       R13 R7 K8 ["name"]
       87 LOADK                            R14 K27 ["Audio/"]
       88 CALL                             R12 2 1
       89 JUMPIFNOT                        R12 ; [+9]
       90 GETIMPORT                        R12 K20 [string.gsub]
       92 GETTABLEKS                       R13 R7 K8 ["name"]
       94 LOADK                            R14 K27 ["Audio/"]
       95 LOADK                            R15 K21 [""]
       96 CALL                             R12 3 1
       97 MOVE                             R10 R12
       98 JUMP                             ; [+46]
       99 GETUPVAL                         R12 2
      100 CALL                             R12 0 1
      101 JUMPIFNOT                        R12 ; [+22]
      102 GETIMPORT                        R12 K29 [Enum.AssetType.Video]
      104 GETTABLEKS                       R12 R12 K14 ["Value"]
      106 JUMPIFNOTEQ                      R11 R12 ; [+17]
      108 GETIMPORT                        R12 K17 [string.find]
      110 GETTABLEKS                       R13 R7 K8 ["name"]
      112 LOADK                            R14 K30 ["Video/"]
      113 CALL                             R12 2 1
      114 JUMPIFNOT                        R12 ; [+9]
      115 GETIMPORT                        R12 K20 [string.gsub]
      117 GETTABLEKS                       R13 R7 K8 ["name"]
      119 LOADK                            R14 K30 ["Video/"]
      120 LOADK                            R15 K21 [""]
      121 CALL                             R12 3 1
      122 MOVE                             R10 R12
      123 JUMP                             ; [+21]
      124 GETIMPORT                        R12 K32 [Enum.AssetType.Model]
      126 GETTABLEKS                       R12 R12 K14 ["Value"]
      128 JUMPIFNOTEQ                      R11 R12 ; [+16]
      130 GETIMPORT                        R12 K17 [string.find]
      132 GETTABLEKS                       R13 R7 K33 ["Name"]
      134 LOADK                            R14 K34 ["Models/"]
      135 CALL                             R12 2 1
      136 JUMPIFNOT                        R12 ; [+8]
      137 GETIMPORT                        R12 K20 [string.gsub]
      139 GETTABLEKS                       R13 R7 K33 ["Name"]
      141 LOADK                            R14 K34 ["Models/"]
      142 LOADK                            R15 K21 [""]
      143 CALL                             R12 3 1
      144 MOVE                             R10 R12
      145 GETTABLEKS                       R12 R7 K35 ["created"]
      147 GETTABLEKS                       R13 R7 K36 ["updated"]
      149 DUPTABLE                         R14 K39 [{"Asset", "Creator"}]
      150 DUPTABLE                         R15 K47 [{"Id", "Type", "TypeId", "Name", "Description", "AssetGenres", "Created", "Updated"}]
      151 GETTABLEKS                       R16 R7 K5 ["id"]
      153 SETTABLEKS                       R16 R15 K40 ["Id"]
      155 GETTABLEKS                       R16 R7 K48 ["type"]
      157 SETTABLEKS                       R16 R15 K41 ["Type"]
      159 SETTABLEKS                       R11 R15 K42 ["TypeId"]
      161 SETTABLEKS                       R10 R15 K33 ["Name"]
      163 GETTABLEKS                       R16 R7 K49 ["description"]
      165 SETTABLEKS                       R16 R15 K43 ["Description"]
      167 GETTABLEKS                       R16 R7 K50 ["genres"]
      169 SETTABLEKS                       R16 R15 K44 ["AssetGenres"]
      171 SETTABLEKS                       R12 R15 K45 ["Created"]
      173 SETTABLEKS                       R13 R15 K46 ["Updated"]
      175 SETTABLEKS                       R15 R14 K37 ["Asset"]
      177 DUPTABLE                         R15 K52 [{["Type"], ["TypeId"], ["TargetId"], ["Name"] = ""}]
      178 GETTABLEKS                       R16 R7 K6 ["creator"]
      180 GETTABLEKS                       R16 R16 K48 ["type"]
      182 SETTABLEKS                       R16 R15 K41 ["Type"]
      184 GETTABLEKS                       R16 R7 K6 ["creator"]
      186 GETTABLEKS                       R16 R16 K9 ["typeId"]
      188 SETTABLEKS                       R16 R15 K42 ["TypeId"]
      190 GETTABLEKS                       R16 R7 K6 ["creator"]
      192 GETTABLEKS                       R16 R16 K7 ["targetId"]
      194 SETTABLEKS                       R16 R15 K51 ["TargetId"]
      196 SETTABLEKS                       R15 R14 K38 ["Creator"]
      198 SETTABLE                         R14 R2 R8
      199 GETIMPORT                        R14 K55 [task.spawn]
      201 NEWCLOSURE                       R15 P0
      202 CAPTURE                          VAL R7
      203 CAPTURE                          UPVAL U3
      204 CAPTURE                          VAL R9
      205 CAPTURE                          UPVAL U4
      206 CAPTURE                          UPVAL U5
      207 CAPTURE                          UPVAL U6
      208 CAPTURE                          VAL R8
      209 CALL                             R14 1 0
      210 GETUPVAL                         R14 5
      211 GETUPVAL                         R16 7
      212 MOVE                             R17 R8
      213 GETTABLEKS                       R18 R7 K9 ["typeId"]
      215 CALL                             R16 2 -1
      216 NAMECALL                         R14 R14 K56 ["dispatch"]
      218 CALL                             R14 -1 0
      219 FORGLOOP                         R3 2 [inext] ; [-200]
      221 GETUPVAL                         R3 5
      222 GETUPVAL                         R5 8
      223 MOVE                             R6 R2
      224 CALL                             R5 1 -1
      225 NAMECALL                         R3 R3 K56 ["dispatch"]
      227 CALL                             R3 -1 0
      228 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETIMPORT                        R1 K1 [error]
        5 LOADK                            R2 K2 ["Failed to load data for Asset Preview"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_4:
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
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K3 ["Develop"]
       20 GETTABLEKS                       R2 R2 K4 ["V1"]
       22 GETTABLEKS                       R2 R2 K5 ["Assets"]
       24 GETTABLEKS                       R2 R2 K6 ["assets"]
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
       40 CAPTURE                          UPVAL U1
       41 DUPCLOSURE                       R5 K8 [PROTO_3]
       42 CAPTURE                          UPVAL U3
       43 NAMECALL                         R2 R2 K9 ["andThen"]
       45 CALL                             R2 3 0
       46 RETURN                           R0 0

PROTO_5:
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
       11 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["Players"]
       12 NAMECALL                         R1 R1 K6 ["GetService"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K4 [game]
       17 LOADK                            R4 K7 ["GroupService"]
       18 NAMECALL                         R2 R2 K6 ["GetService"]
       20 CALL                             R2 2 1
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Src"]
       25 GETTABLEKS                       R4 R4 K11 ["Thunks"]
       27 GETTABLEKS                       R4 R4 K12 ["GetRootTreeViewInstance"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K9 [require]
       32 GETTABLEKS                       R5 R0 K10 ["Src"]
       34 GETTABLEKS                       R5 R5 K13 ["Actions"]
       36 GETTABLEKS                       R5 R5 K14 ["SetAssetPreviewData"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K9 [require]
       41 GETTABLEKS                       R6 R0 K10 ["Src"]
       43 GETTABLEKS                       R6 R6 K13 ["Actions"]
       45 GETTABLEKS                       R6 R6 K15 ["SetAssetOwnerName"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K9 [require]
       50 GETTABLEKS                       R7 R0 K10 ["Src"]
       52 GETTABLEKS                       R7 R7 K16 ["Util"]
       54 GETTABLEKS                       R7 R7 K17 ["AssetManagerUtilities"]
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R6 R6 K18 ["enableAudioImport"]
       59 GETIMPORT                        R7 K9 [require]
       61 GETTABLEKS                       R8 R0 K10 ["Src"]
       63 GETTABLEKS                       R8 R8 K16 ["Util"]
       65 GETTABLEKS                       R8 R8 K17 ["AssetManagerUtilities"]
       67 CALL                             R7 1 1
       68 GETTABLEKS                       R7 R7 K19 ["enableVideoImport"]
       70 GETIMPORT                        R8 K9 [require]
       72 GETTABLEKS                       R9 R0 K20 ["Packages"]
       74 GETTABLEKS                       R9 R9 K21 ["Framework"]
       76 CALL                             R8 1 1
       77 GETTABLEKS                       R8 R8 K16 ["Util"]
       79 GETTABLEKS                       R8 R8 K22 ["sendResultToKibana"]
       81 DUPCLOSURE                       R9 K23 [PROTO_5]
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R3
       90 RETURN                           R9 1
