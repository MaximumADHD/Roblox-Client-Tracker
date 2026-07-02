PROTO_0:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["Part"]
        3 CALL                             R2 1 1
        4 LOADB                            R3 1
        5 SETTABLEKS                       R3 R2 K4 ["Anchored"]
        7 LOADN                            R3 1
        8 SETTABLEKS                       R3 R2 K5 ["Transparency"]
       10 GETIMPORT                        R3 K9 [Enum.PartType.Ball]
       12 SETTABLEKS                       R3 R2 K10 ["Shape"]
       14 GETTABLEKS                       R3 R0 K11 ["color"]
       16 SETTABLEKS                       R3 R2 K12 ["Color"]
       18 LOADK                            R4 K13 ["ThumbnailLightAnchor_"]
       19 FASTCALL1                        TOSTRING R1 ; [+3]
       20 MOVE                             R6 R1
       21 GETIMPORT                        R5 K15 [tostring]
       23 CALL                             R5 1 1
       24 CONCAT                           R3 R4 R5
       25 SETTABLEKS                       R3 R2 K16 ["Name"]
       27 GETIMPORT                        R3 K18 [workspace]
       29 SETTABLEKS                       R3 R2 K19 ["Parent"]
       31 GETIMPORT                        R3 K2 [Instance.new]
       33 LOADK                            R4 K20 ["PointLight"]
       34 CALL                             R3 1 1
       35 GETTABLEKS                       R4 R0 K11 ["color"]
       37 SETTABLEKS                       R4 R3 K12 ["Color"]
       39 LOADN                            R4 3
       40 SETTABLEKS                       R4 R3 K21 ["Brightness"]
       42 LOADN                            R4 10
       43 SETTABLEKS                       R4 R3 K22 ["Range"]
       45 LOADB                            R4 1
       46 SETTABLEKS                       R4 R3 K23 ["Shadows"]
       48 LOADK                            R5 K24 ["PointLight_"]
       49 FASTCALL1                        TOSTRING R1 ; [+3]
       50 MOVE                             R7 R1
       51 GETIMPORT                        R6 K15 [tostring]
       53 CALL                             R6 1 1
       54 CONCAT                           R4 R5 R6
       55 SETTABLEKS                       R4 R3 K16 ["Name"]
       57 SETTABLEKS                       R2 R3 K19 ["Parent"]
       59 GETTABLEKS                       R4 R0 K25 ["worldPos"]
       61 SETTABLEKS                       R4 R2 K26 ["Position"]
       63 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R2 0
        1 MOVE                             R3 R0
        2 JUMPIFNOT                        R3 ; [+2]
        3 GETTABLEKS                       R3 R0 K0 ["pointLights"]
        5 JUMPIFNOT                        R3 ; [+32]
        6 GETIMPORT                        R4 K2 [ipairs]
        8 MOVE                             R5 R3
        9 CALL                             R4 1 3
       10 FORGPREP_INEXT                   R4
       11 DUPTABLE                         R9 K5 [{"color", "worldPos"}]
       12 GETUPVAL                         R10 0
       13 GETTABLEKS                       R10 R10 K6 ["Color3FromString"]
       15 GETTABLEKS                       R11 R8 K3 ["color"]
       17 CALL                             R10 1 1
       18 SETTABLEKS                       R10 R9 K3 ["color"]
       20 GETUPVAL                         R11 1
       21 GETTABLEKS                       R11 R11 K7 ["Vector3FromJson"]
       23 GETTABLEKS                       R12 R8 K8 ["pos"]
       25 CALL                             R11 1 1
       26 MUL                              R10 R1 R11
       27 SETTABLEKS                       R10 R9 K4 ["worldPos"]
       29 GETUPVAL                         R10 2
       30 GETTABLEKS                       R10 R10 K9 ["AddLight"]
       32 MOVE                             R11 R9
       33 MOVE                             R12 R7
       34 CALL                             R10 2 0
       35 LOADB                            R2 1
       36 FORGLOOP                         R4 2 [inext] ; [-26]
       38 MOVE                             R4 R0
       39 JUMPIFNOT                        R4 ; [+2]
       40 GETTABLEKS                       R4 R0 K10 ["clockTime"]
       42 JUMPIFNOT                        R4 ; [+4]
       43 GETUPVAL                         R5 3
       44 SETTABLEKS                       R4 R5 K11 ["ClockTime"]
       46 LOADB                            R2 1
       47 MOVE                             R5 R0
       48 JUMPIFNOT                        R5 ; [+2]
       49 GETTABLEKS                       R5 R0 K12 ["brightness"]
       51 JUMPIFNOT                        R5 ; [+4]
       52 GETUPVAL                         R6 3
       53 SETTABLEKS                       R5 R6 K13 ["Brightness"]
       55 LOADB                            R2 1
       56 RETURN                           R2 1

PROTO_2:
        0 LOADK                            R2 K0 [{-5, 7, -5}]
        1 MUL                              R1 R0 R2
        2 DUPTABLE                         R2 K3 [{"color", "worldPos"}]
        3 GETIMPORT                        R3 K6 [Color3.new]
        5 LOADN                            R4 1
        6 LOADN                            R5 1
        7 LOADN                            R6 1
        8 CALL                             R3 3 1
        9 SETTABLEKS                       R3 R2 K1 ["color"]
       11 SETTABLEKS                       R1 R2 K2 ["worldPos"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K7 ["AddLight"]
       16 MOVE                             R4 R2
       17 LOADN                            R5 0
       18 CALL                             R3 2 0
       19 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+1]
        2 DUPTABLE                         R1 K23 [{[1] = "1", ["ambient"] = "124,124,124", ["colorShiftBottom"] = "108,94,66", ["colorShiftTop"] = "94,100,172", ["environmentDiffuseScale"] = "0", ["environmentSpecularScale"] = "1", ["globalShadows"] = "true", ["shadowSoftness"] = "0", ["outdoorAmbient"] = "0,0,0", ["clockTime"] = "9.5", ["geographicLatitude"] = "330", ["exposureCompensation"] = "0", ["timeOfDay"] = "09:30:00"}]
        3 MOVE                             R0 R1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R3 R0 K0 ["brightness"]
        7 JUMPIFNOT                        R3 ; [+7]
        8 GETTABLEKS                       R3 R0 K0 ["brightness"]
       10 FASTCALL1                        TONUMBER R3 ; [+2]
       11 GETIMPORT                        R2 K25 [tonumber]
       13 CALL                             R2 1 1
       14 JUMPIF                           R2 ; [+1]
       15 LOADN                            R2 1
       16 SETTABLEKS                       R2 R1 K26 ["Brightness"]
       18 GETTABLEKS                       R2 R0 K2 ["ambient"]
       20 JUMPIFNOT                        R2 ; [+7]
       21 GETTABLEKS                       R1 R0 K2 ["ambient"]
       23 LOADK                            R3 K27 [","]
       24 NAMECALL                         R1 R1 K28 ["split"]
       26 CALL                             R1 2 1
       27 JUMPIF                           R1 ; [+7]
       28 NEWTABLE                         R1 0 3
       30 LOADK                            R2 K29 ["124"]
       31 LOADK                            R3 K29 ["124"]
       32 LOADK                            R4 K29 ["124"]
       33 SETLIST                          R1 R2 3 [1]
       35 GETUPVAL                         R2 0
       36 GETIMPORT                        R3 K32 [Color3.fromRGB]
       38 GETTABLEN                        R5 R1 1
       39 FASTCALL1                        TONUMBER R5 ; [+2]
       40 GETIMPORT                        R4 K25 [tonumber]
       42 CALL                             R4 1 1
       43 GETTABLEN                        R6 R1 2
       44 FASTCALL1                        TONUMBER R6 ; [+2]
       45 GETIMPORT                        R5 K25 [tonumber]
       47 CALL                             R5 1 1
       48 GETTABLEN                        R7 R1 3
       49 FASTCALL1                        TONUMBER R7 ; [+2]
       50 GETIMPORT                        R6 K25 [tonumber]
       52 CALL                             R6 1 1
       53 CALL                             R3 3 1
       54 SETTABLEKS                       R3 R2 K33 ["Ambient"]
       56 GETTABLEKS                       R3 R0 K4 ["colorShiftBottom"]
       58 JUMPIFNOT                        R3 ; [+7]
       59 GETTABLEKS                       R2 R0 K4 ["colorShiftBottom"]
       61 LOADK                            R4 K27 [","]
       62 NAMECALL                         R2 R2 K28 ["split"]
       64 CALL                             R2 2 1
       65 JUMPIF                           R2 ; [+7]
       66 NEWTABLE                         R2 0 3
       68 LOADK                            R3 K34 ["108"]
       69 LOADK                            R4 K35 ["94"]
       70 LOADK                            R5 K36 ["66"]
       71 SETLIST                          R2 R3 3 [1]
       73 GETTABLEKS                       R4 R0 K6 ["colorShiftTop"]
       75 JUMPIFNOT                        R4 ; [+7]
       76 GETTABLEKS                       R3 R0 K6 ["colorShiftTop"]
       78 LOADK                            R5 K27 [","]
       79 NAMECALL                         R3 R3 K28 ["split"]
       81 CALL                             R3 2 1
       82 JUMPIF                           R3 ; [+7]
       83 NEWTABLE                         R3 0 3
       85 LOADK                            R4 K35 ["94"]
       86 LOADK                            R5 K37 ["100"]
       87 LOADK                            R6 K38 ["172"]
       88 SETLIST                          R3 R4 3 [1]
       90 GETUPVAL                         R4 0
       91 GETIMPORT                        R5 K32 [Color3.fromRGB]
       93 GETTABLEN                        R7 R2 1
       94 FASTCALL1                        TONUMBER R7 ; [+2]
       95 GETIMPORT                        R6 K25 [tonumber]
       97 CALL                             R6 1 1
       98 GETTABLEN                        R8 R2 2
       99 FASTCALL1                        TONUMBER R8 ; [+2]
      100 GETIMPORT                        R7 K25 [tonumber]
      102 CALL                             R7 1 1
      103 GETTABLEN                        R9 R2 3
      104 FASTCALL1                        TONUMBER R9 ; [+2]
      105 GETIMPORT                        R8 K25 [tonumber]
      107 CALL                             R8 1 1
      108 CALL                             R5 3 1
      109 SETTABLEKS                       R5 R4 K39 ["ColorShift_Bottom"]
      111 GETUPVAL                         R4 0
      112 GETIMPORT                        R5 K32 [Color3.fromRGB]
      114 GETTABLEN                        R7 R3 1
      115 FASTCALL1                        TONUMBER R7 ; [+2]
      116 GETIMPORT                        R6 K25 [tonumber]
      118 CALL                             R6 1 1
      119 GETTABLEN                        R8 R3 2
      120 FASTCALL1                        TONUMBER R8 ; [+2]
      121 GETIMPORT                        R7 K25 [tonumber]
      123 CALL                             R7 1 1
      124 GETTABLEN                        R9 R3 3
      125 FASTCALL1                        TONUMBER R9 ; [+2]
      126 GETIMPORT                        R8 K25 [tonumber]
      128 CALL                             R8 1 1
      129 CALL                             R5 3 1
      130 SETTABLEKS                       R5 R4 K40 ["ColorShift_Top"]
      132 GETUPVAL                         R4 0
      133 GETTABLEKS                       R6 R0 K8 ["environmentDiffuseScale"]
      135 JUMPIFNOT                        R6 ; [+7]
      136 GETTABLEKS                       R6 R0 K8 ["environmentDiffuseScale"]
      138 FASTCALL1                        TONUMBER R6 ; [+2]
      139 GETIMPORT                        R5 K25 [tonumber]
      141 CALL                             R5 1 1
      142 JUMPIF                           R5 ; [+1]
      143 LOADN                            R5 0
      144 SETTABLEKS                       R5 R4 K41 ["EnvironmentDiffuseScale"]
      146 GETUPVAL                         R4 0
      147 GETTABLEKS                       R6 R0 K10 ["environmentSpecularScale"]
      149 JUMPIFNOT                        R6 ; [+7]
      150 GETTABLEKS                       R6 R0 K10 ["environmentSpecularScale"]
      152 FASTCALL1                        TONUMBER R6 ; [+2]
      153 GETIMPORT                        R5 K25 [tonumber]
      155 CALL                             R5 1 1
      156 JUMPIF                           R5 ; [+1]
      157 LOADN                            R5 1
      158 SETTABLEKS                       R5 R4 K42 ["EnvironmentSpecularScale"]
      160 GETUPVAL                         R4 0
      161 GETTABLEKS                       R6 R0 K11 ["globalShadows"]
      163 JUMPIFNOT                        R6 ; [+5]
      164 LOADB                            R5 1
      165 GETTABLEKS                       R6 R0 K11 ["globalShadows"]
      167 JUMPIFEQKS                       R6 K12 ["true"] ; [+2]
      169 LOADB                            R5 0
      170 SETTABLEKS                       R5 R4 K43 ["GlobalShadows"]
      172 GETUPVAL                         R4 0
      173 GETTABLEKS                       R6 R0 K13 ["shadowSoftness"]
      175 JUMPIFNOT                        R6 ; [+7]
      176 GETTABLEKS                       R6 R0 K13 ["shadowSoftness"]
      178 FASTCALL1                        TONUMBER R6 ; [+2]
      179 GETIMPORT                        R5 K25 [tonumber]
      181 CALL                             R5 1 1
      182 JUMPIF                           R5 ; [+1]
      183 LOADN                            R5 0
      184 SETTABLEKS                       R5 R4 K44 ["ShadowSoftness"]
      186 GETTABLEKS                       R5 R0 K14 ["outdoorAmbient"]
      188 JUMPIFNOT                        R5 ; [+7]
      189 GETTABLEKS                       R4 R0 K14 ["outdoorAmbient"]
      191 LOADK                            R6 K27 [","]
      192 NAMECALL                         R4 R4 K28 ["split"]
      194 CALL                             R4 2 1
      195 JUMPIF                           R4 ; [+7]
      196 NEWTABLE                         R4 0 3
      198 LOADK                            R5 K9 ["0"]
      199 LOADK                            R6 K9 ["0"]
      200 LOADK                            R7 K9 ["0"]
      201 SETLIST                          R4 R5 3 [1]
      203 GETUPVAL                         R5 0
      204 GETIMPORT                        R6 K32 [Color3.fromRGB]
      206 GETTABLEN                        R8 R4 1
      207 FASTCALL1                        TONUMBER R8 ; [+2]
      208 GETIMPORT                        R7 K25 [tonumber]
      210 CALL                             R7 1 1
      211 GETTABLEN                        R9 R4 2
      212 FASTCALL1                        TONUMBER R9 ; [+2]
      213 GETIMPORT                        R8 K25 [tonumber]
      215 CALL                             R8 1 1
      216 GETTABLEN                        R10 R4 3
      217 FASTCALL1                        TONUMBER R10 ; [+2]
      218 GETIMPORT                        R9 K25 [tonumber]
      220 CALL                             R9 1 1
      221 CALL                             R6 3 1
      222 SETTABLEKS                       R6 R5 K45 ["OutdoorAmbient"]
      224 GETUPVAL                         R5 0
      225 GETTABLEKS                       R7 R0 K16 ["clockTime"]
      227 JUMPIFNOT                        R7 ; [+7]
      228 GETTABLEKS                       R7 R0 K16 ["clockTime"]
      230 FASTCALL1                        TONUMBER R7 ; [+2]
      231 GETIMPORT                        R6 K25 [tonumber]
      233 CALL                             R6 1 1
      234 JUMPIF                           R6 ; [+1]
      235 LOADK                            R6 K46 [9.5]
      236 SETTABLEKS                       R6 R5 K47 ["ClockTime"]
      238 GETUPVAL                         R5 0
      239 GETTABLEKS                       R7 R0 K18 ["geographicLatitude"]
      241 JUMPIFNOT                        R7 ; [+7]
      242 GETTABLEKS                       R7 R0 K18 ["geographicLatitude"]
      244 FASTCALL1                        TONUMBER R7 ; [+2]
      245 GETIMPORT                        R6 K25 [tonumber]
      247 CALL                             R6 1 1
      248 JUMPIF                           R6 ; [+1]
      249 LOADN                            R6 330
      250 SETTABLEKS                       R6 R5 K48 ["GeographicLatitude"]
      252 GETUPVAL                         R5 0
      253 GETTABLEKS                       R7 R0 K20 ["exposureCompensation"]
      255 JUMPIFNOT                        R7 ; [+7]
      256 GETTABLEKS                       R7 R0 K20 ["exposureCompensation"]
      258 FASTCALL1                        TONUMBER R7 ; [+2]
      259 GETIMPORT                        R6 K25 [tonumber]
      261 CALL                             R6 1 1
      262 JUMPIF                           R6 ; [+1]
      263 LOADN                            R6 0
      264 SETTABLEKS                       R6 R5 K49 ["ExposureCompensation"]
      266 GETUPVAL                         R5 0
      267 GETTABLEKS                       R7 R0 K21 ["timeOfDay"]
      269 ORK                              R6 R7 K22 ["09:30:00"]
      270 SETTABLEKS                       R6 R5 K50 ["TimeOfDay"]
      272 RETURN                           R0 0

PROTO_4:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R3 R0 K1 ["lightType"]
        7 ORK                              R2 R3 K0 ["SpotLight"]
        8 OR                               R1 R1 R2
        9 GETIMPORT                        R3 K4 [Instance.new]
       11 LOADK                            R4 K5 ["Part"]
       12 CALL                             R3 1 1
       13 LOADB                            R4 1
       14 SETTABLEKS                       R4 R3 K6 ["Anchored"]
       16 LOADN                            R4 1
       17 SETTABLEKS                       R4 R3 K7 ["Transparency"]
       19 GETTABLEKS                       R5 R0 K9 ["partSize"]
       21 ORK                              R4 R5 K8 [{4, 1, 2}]
       22 SETTABLEKS                       R4 R3 K10 ["Size"]
       24 GETTABLEKS                       R4 R0 K11 ["partType"]
       26 JUMPIF                           R4 ; [+2]
       27 GETIMPORT                        R4 K15 [Enum.PartType.Block]
       29 SETTABLEKS                       R4 R3 K16 ["Shape"]
       31 LOADK                            R5 K17 ["ThumbnailLightAnchor_"]
       32 FASTCALL1                        TOSTRING R1 ; [+3]
       33 MOVE                             R7 R1
       34 GETIMPORT                        R6 K19 [tostring]
       36 CALL                             R6 1 1
       37 CONCAT                           R4 R5 R6
       38 SETTABLEKS                       R4 R3 K20 ["Name"]
       40 GETIMPORT                        R4 K22 [workspace]
       42 SETTABLEKS                       R4 R3 K23 ["Parent"]
       44 GETIMPORT                        R4 K4 [Instance.new]
       46 MOVE                             R5 R2
       47 CALL                             R4 1 1
       48 GETTABLEKS                       R6 R0 K24 ["enabled"]
       50 JUMPIFEQKNIL                     R6 ; [+4]
       52 GETTABLEKS                       R5 R0 K24 ["enabled"]
       54 JUMP                             ; [+1]
       55 LOADB                            R5 1
       56 SETTABLEKS                       R5 R4 K25 ["Enabled"]
       58 GETTABLEKS                       R5 R0 K26 ["color"]
       60 JUMPIF                           R5 ; [+6]
       61 GETIMPORT                        R5 K29 [Color3.fromRGB]
       63 LOADN                            R6 255
       64 LOADN                            R7 255
       65 LOADN                            R8 255
       66 CALL                             R5 3 1
       67 SETTABLEKS                       R5 R4 K30 ["Color"]
       69 GETTABLEKS                       R6 R0 K32 ["brightness"]
       71 ORK                              R5 R6 K31 [10]
       72 SETTABLEKS                       R5 R4 K33 ["Brightness"]
       74 GETTABLEKS                       R6 R0 K35 ["range"]
       76 ORK                              R5 R6 K34 [12]
       77 SETTABLEKS                       R5 R4 K36 ["Range"]
       79 GETTABLEKS                       R6 R0 K38 ["angle"]
       81 ORK                              R5 R6 K37 [30]
       82 SETTABLEKS                       R5 R4 K39 ["Angle"]
       84 GETTABLEKS                       R6 R0 K40 ["shadows"]
       86 JUMPIFEQKNIL                     R6 ; [+4]
       88 GETTABLEKS                       R5 R0 K40 ["shadows"]
       90 JUMP                             ; [+1]
       91 LOADB                            R5 1
       92 SETTABLEKS                       R5 R4 K41 ["Shadows"]
       94 FASTCALL1                        TOSTRING R1 ; [+3]
       95 MOVE                             R6 R1
       96 GETIMPORT                        R5 K19 [tostring]
       98 CALL                             R5 1 1
       99 SETTABLEKS                       R5 R4 K20 ["Name"]
      101 SETTABLEKS                       R3 R4 K23 ["Parent"]
      103 GETTABLEKS                       R5 R0 K42 ["partCFrame"]
      105 SETTABLEKS                       R5 R3 K43 ["CFrame"]
      107 RETURN                           R0 0

PROTO_5:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 LOADK                            R2 K0 ["SpotLight"]
        6 SETTABLEKS                       R2 R0 K1 ["lightType"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["SetupSceneLight"]
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_6:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+53]
        2 DUPTABLE                         R1 K2 [{"keyLight", "fillLight"}]
        3 DUPTABLE                         R2 K11 [{["partCFrame"], ["color"], ["brightness"] = 11.2, ["range"] = 12, ["angle"] = 54}]
        4 GETIMPORT                        R4 K14 [CFrame.new]
        6 LOADK                            R5 K15 [2.219]
        7 LOADK                            R6 K16 [103.178]
        8 LOADK                            R7 K17 [4.675]
        9 CALL                             R4 3 1
       10 GETIMPORT                        R5 K19 [CFrame.Angles]
       12 LOADN                            R6 30
       13 LOADN                            R7 60
       14 LOADN                            R8 -90
       15 CALL                             R5 3 1
       16 MUL                              R3 R4 R5
       17 SETTABLEKS                       R3 R2 K3 ["partCFrame"]
       19 GETIMPORT                        R3 K22 [Color3.fromRGB]
       21 LOADN                            R4 218
       22 LOADN                            R5 196
       23 LOADN                            R6 144
       24 CALL                             R3 3 1
       25 SETTABLEKS                       R3 R2 K4 ["color"]
       27 SETTABLEKS                       R2 R1 K0 ["keyLight"]
       29 DUPTABLE                         R2 K25 [{["partCFrame"], ["color"], ["brightness"] = 1.6, ["range"] = 12, ["angle"] = 36}]
       30 GETIMPORT                        R4 K14 [CFrame.new]
       32 LOADK                            R5 K26 [3.554]
       33 LOADK                            R6 K27 [107.01]
       34 LOADK                            R7 K28 [-1.036]
       35 CALL                             R4 3 1
       36 GETIMPORT                        R5 K19 [CFrame.Angles]
       38 LOADN                            R6 -15
       39 LOADN                            R7 90
       40 LOADN                            R8 -90
       41 CALL                             R5 3 1
       42 MUL                              R3 R4 R5
       43 SETTABLEKS                       R3 R2 K3 ["partCFrame"]
       45 GETIMPORT                        R3 K22 [Color3.fromRGB]
       47 LOADN                            R4 255
       48 LOADN                            R5 255
       49 LOADN                            R6 255
       50 CALL                             R3 3 1
       51 SETTABLEKS                       R3 R2 K4 ["color"]
       53 SETTABLEKS                       R2 R1 K1 ["fillLight"]
       55 MOVE                             R0 R1
       56 GETTABLEKS                       R1 R0 K0 ["keyLight"]
       58 JUMPIFNOT                        R1 ; [+7]
       59 GETUPVAL                         R1 0
       60 GETTABLEKS                       R1 R1 K29 ["SetupSpotLight"]
       62 GETTABLEKS                       R2 R0 K0 ["keyLight"]
       64 LOADK                            R3 K30 ["KeyLight"]
       65 CALL                             R1 2 0
       66 GETTABLEKS                       R1 R0 K1 ["fillLight"]
       68 JUMPIFNOT                        R1 ; [+7]
       69 GETUPVAL                         R1 0
       70 GETTABLEKS                       R1 R1 K29 ["SetupSpotLight"]
       72 GETTABLEKS                       R2 R0 K1 ["fillLight"]
       74 LOADK                            R3 K31 ["FillLight"]
       75 CALL                             R1 2 0
       76 RETURN                           R0 0

PROTO_7:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+1]
        2 DUPTABLE                         R1 K21 [{[1] = "105", ["keyCFrame"] = "2.219,103.178,4.675,30,60,-90", ["keyBrightness"] = "11.2", ["keyRange"] = "12", ["keyAngle"] = "54", ["keyColor"] = "218,196,144", ["fillCFrame"] = "3.554,107.01,-1.036,-15,90,-90", ["fillBrightness"] = "1.6", ["fillRange"] = "12", ["fillAngle"] = "36", ["fillColor"] = "255,255,255"}]
        3 MOVE                             R0 R1
        4 GETTABLEKS                       R2 R0 K0 ["rotation"]
        6 JUMPIFNOT                        R2 ; [+7]
        7 GETTABLEKS                       R2 R0 K0 ["rotation"]
        9 FASTCALL1                        TONUMBER R2 ; [+2]
       10 GETIMPORT                        R1 K23 [tonumber]
       12 CALL                             R1 1 1
       13 JUMPIF                           R1 ; [+1]
       14 LOADN                            R1 105
       15 GETIMPORT                        R2 K26 [CFrame.Angles]
       17 LOADN                            R3 0
       18 FASTCALL1                        MATH_RAD R1 ; [+3]
       19 MOVE                             R5 R1
       20 GETIMPORT                        R4 K29 [math.rad]
       22 CALL                             R4 1 1
       23 LOADN                            R5 0
       24 CALL                             R2 3 1
       25 GETTABLEKS                       R4 R0 K2 ["keyCFrame"]
       27 JUMPIFNOT                        R4 ; [+7]
       28 GETTABLEKS                       R3 R0 K2 ["keyCFrame"]
       30 LOADK                            R5 K30 [","]
       31 NAMECALL                         R3 R3 K31 ["split"]
       33 CALL                             R3 2 1
       34 JUMPIF                           R3 ; [+10]
       35 NEWTABLE                         R3 0 6
       37 LOADK                            R4 K32 ["2.219"]
       38 LOADK                            R5 K33 ["103.178"]
       39 LOADK                            R6 K34 ["4.675"]
       40 LOADK                            R7 K35 ["30"]
       41 LOADK                            R8 K36 ["60"]
       42 LOADK                            R9 K37 ["-90"]
       43 SETLIST                          R3 R4 6 [1]
       45 GETIMPORT                        R7 K39 [CFrame.new]
       47 GETTABLEN                        R10 R3 1
       48 FASTCALL1                        TONUMBER R10 ; [+2]
       49 GETIMPORT                        R9 K23 [tonumber]
       51 CALL                             R9 1 1
       52 ORK                              R8 R9 K40 [0]
       53 GETTABLEN                        R11 R3 2
       54 FASTCALL1                        TONUMBER R11 ; [+2]
       55 GETIMPORT                        R10 K23 [tonumber]
       57 CALL                             R10 1 1
       58 ORK                              R9 R10 K40 [0]
       59 GETTABLEN                        R12 R3 3
       60 FASTCALL1                        TONUMBER R12 ; [+2]
       61 GETIMPORT                        R11 K23 [tonumber]
       63 CALL                             R11 1 1
       64 ORK                              R10 R11 K40 [0]
       65 CALL                             R7 3 1
       66 GETIMPORT                        R8 K26 [CFrame.Angles]
       68 GETTABLEN                        R12 R3 4
       69 FASTCALL1                        TONUMBER R12 ; [+2]
       70 GETIMPORT                        R11 K23 [tonumber]
       72 CALL                             R11 1 1
       73 ORK                              R10 R11 K40 [0]
       74 FASTCALL1                        MATH_RAD R10 ; [+2]
       75 GETIMPORT                        R9 K29 [math.rad]
       77 CALL                             R9 1 1
       78 GETTABLEN                        R13 R3 5
       79 FASTCALL1                        TONUMBER R13 ; [+2]
       80 GETIMPORT                        R12 K23 [tonumber]
       82 CALL                             R12 1 1
       83 ORK                              R11 R12 K40 [0]
       84 FASTCALL1                        MATH_RAD R11 ; [+2]
       85 GETIMPORT                        R10 K29 [math.rad]
       87 CALL                             R10 1 1
       88 GETTABLEN                        R14 R3 6
       89 FASTCALL1                        TONUMBER R14 ; [+2]
       90 GETIMPORT                        R13 K23 [tonumber]
       92 CALL                             R13 1 1
       93 ORK                              R12 R13 K40 [0]
       94 FASTCALL1                        MATH_RAD R12 ; [+2]
       95 GETIMPORT                        R11 K29 [math.rad]
       97 CALL                             R11 1 1
       98 CALL                             R8 3 1
       99 MUL                              R6 R7 R8
      100 NAMECALL                         R4 R2 K41 ["ToWorldSpace"]
      102 CALL                             R4 2 1
      103 GETTABLEKS                       R6 R0 K12 ["fillCFrame"]
      105 JUMPIFNOT                        R6 ; [+7]
      106 GETTABLEKS                       R5 R0 K12 ["fillCFrame"]
      108 LOADK                            R7 K30 [","]
      109 NAMECALL                         R5 R5 K31 ["split"]
      111 CALL                             R5 2 1
      112 JUMPIF                           R5 ; [+10]
      113 NEWTABLE                         R5 0 6
      115 LOADK                            R6 K42 ["3.554"]
      116 LOADK                            R7 K43 ["107.01"]
      117 LOADK                            R8 K44 ["-1.036"]
      118 LOADK                            R9 K45 ["-15"]
      119 LOADK                            R10 K46 ["90"]
      120 LOADK                            R11 K37 ["-90"]
      121 SETLIST                          R5 R6 6 [1]
      123 GETIMPORT                        R9 K39 [CFrame.new]
      125 GETTABLEN                        R12 R5 1
      126 FASTCALL1                        TONUMBER R12 ; [+2]
      127 GETIMPORT                        R11 K23 [tonumber]
      129 CALL                             R11 1 1
      130 ORK                              R10 R11 K40 [0]
      131 GETTABLEN                        R13 R5 2
      132 FASTCALL1                        TONUMBER R13 ; [+2]
      133 GETIMPORT                        R12 K23 [tonumber]
      135 CALL                             R12 1 1
      136 ORK                              R11 R12 K40 [0]
      137 GETTABLEN                        R14 R5 3
      138 FASTCALL1                        TONUMBER R14 ; [+2]
      139 GETIMPORT                        R13 K23 [tonumber]
      141 CALL                             R13 1 1
      142 ORK                              R12 R13 K40 [0]
      143 CALL                             R9 3 1
      144 GETIMPORT                        R10 K26 [CFrame.Angles]
      146 GETTABLEN                        R14 R5 4
      147 FASTCALL1                        TONUMBER R14 ; [+2]
      148 GETIMPORT                        R13 K23 [tonumber]
      150 CALL                             R13 1 1
      151 ORK                              R12 R13 K40 [0]
      152 FASTCALL1                        MATH_RAD R12 ; [+2]
      153 GETIMPORT                        R11 K29 [math.rad]
      155 CALL                             R11 1 1
      156 GETTABLEN                        R15 R5 5
      157 FASTCALL1                        TONUMBER R15 ; [+2]
      158 GETIMPORT                        R14 K23 [tonumber]
      160 CALL                             R14 1 1
      161 ORK                              R13 R14 K40 [0]
      162 FASTCALL1                        MATH_RAD R13 ; [+2]
      163 GETIMPORT                        R12 K29 [math.rad]
      165 CALL                             R12 1 1
      166 GETTABLEN                        R16 R5 6
      167 FASTCALL1                        TONUMBER R16 ; [+2]
      168 GETIMPORT                        R15 K23 [tonumber]
      170 CALL                             R15 1 1
      171 ORK                              R14 R15 K40 [0]
      172 FASTCALL1                        MATH_RAD R14 ; [+2]
      173 GETIMPORT                        R13 K29 [math.rad]
      175 CALL                             R13 1 1
      176 CALL                             R10 3 1
      177 MUL                              R8 R9 R10
      178 NAMECALL                         R6 R2 K41 ["ToWorldSpace"]
      180 CALL                             R6 2 1
      181 GETTABLEKS                       R8 R0 K4 ["keyBrightness"]
      183 JUMPIFNOT                        R8 ; [+7]
      184 GETTABLEKS                       R8 R0 K4 ["keyBrightness"]
      186 FASTCALL1                        TONUMBER R8 ; [+2]
      187 GETIMPORT                        R7 K23 [tonumber]
      189 CALL                             R7 1 1
      190 JUMPIF                           R7 ; [+1]
      191 LOADK                            R7 K47 [11.2]
      192 GETTABLEKS                       R9 R0 K6 ["keyRange"]
      194 JUMPIFNOT                        R9 ; [+7]
      195 GETTABLEKS                       R9 R0 K6 ["keyRange"]
      197 FASTCALL1                        TONUMBER R9 ; [+2]
      198 GETIMPORT                        R8 K23 [tonumber]
      200 CALL                             R8 1 1
      201 JUMPIF                           R8 ; [+1]
      202 LOADN                            R8 12
      203 GETTABLEKS                       R10 R0 K8 ["keyAngle"]
      205 JUMPIFNOT                        R10 ; [+7]
      206 GETTABLEKS                       R10 R0 K8 ["keyAngle"]
      208 FASTCALL1                        TONUMBER R10 ; [+2]
      209 GETIMPORT                        R9 K23 [tonumber]
      211 CALL                             R9 1 1
      212 JUMPIF                           R9 ; [+1]
      213 LOADN                            R9 54
      214 GETTABLEKS                       R11 R0 K10 ["keyColor"]
      216 JUMPIFNOT                        R11 ; [+7]
      217 GETTABLEKS                       R10 R0 K10 ["keyColor"]
      219 LOADK                            R12 K30 [","]
      220 NAMECALL                         R10 R10 K31 ["split"]
      222 CALL                             R10 2 1
      223 JUMPIF                           R10 ; [+7]
      224 NEWTABLE                         R10 0 3
      226 LOADK                            R11 K48 ["218"]
      227 LOADK                            R12 K49 ["196"]
      228 LOADK                            R13 K50 ["144"]
      229 SETLIST                          R10 R11 3 [1]
      231 GETTABLEKS                       R12 R0 K14 ["fillBrightness"]
      233 JUMPIFNOT                        R12 ; [+7]
      234 GETTABLEKS                       R12 R0 K14 ["fillBrightness"]
      236 FASTCALL1                        TONUMBER R12 ; [+2]
      237 GETIMPORT                        R11 K23 [tonumber]
      239 CALL                             R11 1 1
      240 JUMPIF                           R11 ; [+1]
      241 LOADK                            R11 K51 [1.6]
      242 GETTABLEKS                       R13 R0 K16 ["fillRange"]
      244 JUMPIFNOT                        R13 ; [+7]
      245 GETTABLEKS                       R13 R0 K16 ["fillRange"]
      247 FASTCALL1                        TONUMBER R13 ; [+2]
      248 GETIMPORT                        R12 K23 [tonumber]
      250 CALL                             R12 1 1
      251 JUMPIF                           R12 ; [+1]
      252 LOADN                            R12 12
      253 GETTABLEKS                       R14 R0 K17 ["fillAngle"]
      255 JUMPIFNOT                        R14 ; [+7]
      256 GETTABLEKS                       R14 R0 K17 ["fillAngle"]
      258 FASTCALL1                        TONUMBER R14 ; [+2]
      259 GETIMPORT                        R13 K23 [tonumber]
      261 CALL                             R13 1 1
      262 JUMPIF                           R13 ; [+1]
      263 LOADN                            R13 36
      264 GETTABLEKS                       R15 R0 K19 ["fillColor"]
      266 JUMPIFNOT                        R15 ; [+7]
      267 GETTABLEKS                       R14 R0 K19 ["fillColor"]
      269 LOADK                            R16 K30 [","]
      270 NAMECALL                         R14 R14 K31 ["split"]
      272 CALL                             R14 2 1
      273 JUMPIF                           R14 ; [+7]
      274 NEWTABLE                         R14 0 3
      276 LOADK                            R15 K52 ["255"]
      277 LOADK                            R16 K52 ["255"]
      278 LOADK                            R17 K52 ["255"]
      279 SETLIST                          R14 R15 3 [1]
      281 GETUPVAL                         R15 0
      282 GETTABLEKS                       R15 R15 K53 ["SetupSpotLightsIn3PointLighting"]
      284 DUPTABLE                         R16 K56 [{"keyLight", "fillLight"}]
      285 DUPTABLE                         R17 K62 [{"partCFrame", "color", "brightness", "range", "angle"}]
      286 SETTABLEKS                       R4 R17 K57 ["partCFrame"]
      288 GETIMPORT                        R18 K65 [Color3.fromRGB]
      290 GETTABLEN                        R20 R10 1
      291 FASTCALL1                        TONUMBER R20 ; [+2]
      292 GETIMPORT                        R19 K23 [tonumber]
      294 CALL                             R19 1 1
      295 GETTABLEN                        R21 R10 2
      296 FASTCALL1                        TONUMBER R21 ; [+2]
      297 GETIMPORT                        R20 K23 [tonumber]
      299 CALL                             R20 1 1
      300 GETTABLEN                        R22 R10 3
      301 FASTCALL1                        TONUMBER R22 ; [+2]
      302 GETIMPORT                        R21 K23 [tonumber]
      304 CALL                             R21 1 1
      305 CALL                             R18 3 1
      306 SETTABLEKS                       R18 R17 K58 ["color"]
      308 SETTABLEKS                       R7 R17 K59 ["brightness"]
      310 SETTABLEKS                       R8 R17 K60 ["range"]
      312 SETTABLEKS                       R9 R17 K61 ["angle"]
      314 SETTABLEKS                       R17 R16 K54 ["keyLight"]
      316 DUPTABLE                         R17 K62 [{"partCFrame", "color", "brightness", "range", "angle"}]
      317 SETTABLEKS                       R6 R17 K57 ["partCFrame"]
      319 GETIMPORT                        R18 K65 [Color3.fromRGB]
      321 GETTABLEN                        R20 R14 1
      322 FASTCALL1                        TONUMBER R20 ; [+2]
      323 GETIMPORT                        R19 K23 [tonumber]
      325 CALL                             R19 1 1
      326 GETTABLEN                        R21 R14 2
      327 FASTCALL1                        TONUMBER R21 ; [+2]
      328 GETIMPORT                        R20 K23 [tonumber]
      330 CALL                             R20 1 1
      331 GETTABLEN                        R22 R14 3
      332 FASTCALL1                        TONUMBER R22 ; [+2]
      333 GETIMPORT                        R21 K23 [tonumber]
      335 CALL                             R21 1 1
      336 CALL                             R18 3 1
      337 SETTABLEKS                       R18 R17 K58 ["color"]
      339 SETTABLEKS                       R11 R17 K59 ["brightness"]
      341 SETTABLEKS                       R12 R17 K60 ["range"]
      343 SETTABLEKS                       R13 R17 K61 ["angle"]
      345 SETTABLEKS                       R17 R16 K55 ["fillLight"]
      347 CALL                             R15 1 0
      348 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 GETIMPORT                        R1 K1 [game]
        5 LOADK                            R3 K2 ["Lighting"]
        6 NAMECALL                         R1 R1 K3 ["GetService"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETIMPORT                        R3 K7 [script]
       13 GETTABLEKS                       R3 R3 K8 ["Parent"]
       15 GETTABLEKS                       R3 R3 K9 ["ColorUtility"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETIMPORT                        R4 K7 [script]
       22 GETTABLEKS                       R4 R4 K8 ["Parent"]
       24 GETTABLEKS                       R4 R4 K10 ["VectorUtility"]
       26 CALL                             R3 1 1
       27 DUPCLOSURE                       R4 K11 [PROTO_0]
       28 SETTABLEKS                       R4 R0 K12 ["AddLight"]
       30 DUPCLOSURE                       R4 K13 [PROTO_1]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R4 R0 K14 ["AddLightsFromExtraParams"]
       37 DUPCLOSURE                       R4 K15 [PROTO_2]
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R4 R0 K16 ["AddDefaultPointLightRelativeTo"]
       41 DUPCLOSURE                       R4 K17 [PROTO_3]
       42 CAPTURE                          VAL R1
       43 SETTABLEKS                       R4 R0 K18 ["SetupSunlightWithJsonConfig"]
       45 DUPCLOSURE                       R4 K19 [PROTO_4]
       46 SETTABLEKS                       R4 R0 K20 ["SetupSceneLight"]
       48 DUPCLOSURE                       R4 K21 [PROTO_5]
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R4 R0 K22 ["SetupSpotLight"]
       52 DUPCLOSURE                       R4 K23 [PROTO_6]
       53 CAPTURE                          VAL R0
       54 SETTABLEKS                       R4 R0 K24 ["SetupSpotLightsIn3PointLighting"]
       56 DUPCLOSURE                       R4 K25 [PROTO_7]
       57 CAPTURE                          VAL R0
       58 SETTABLEKS                       R4 R0 K26 ["SetupSpotLightsIn3PointLightingWithJsonConfig"]
       60 RETURN                           R0 1
