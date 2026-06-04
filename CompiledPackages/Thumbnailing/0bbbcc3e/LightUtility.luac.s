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
        1 JUMPIF                           R1 ; [+40]
        2 DUPTABLE                         R1 K13 [{"brightness", "ambient", "colorShiftBottom", "colorShiftTop", "environmentDiffuseScale", "environmentSpecularScale", "globalShadows", "shadowSoftness", "outdoorAmbient", "clockTime", "geographicLatitude", "exposureCompensation", "timeOfDay"}]
        3 LOADK                            R2 K14 ["1"]
        4 SETTABLEKS                       R2 R1 K0 ["brightness"]
        6 LOADK                            R2 K15 ["124,124,124"]
        7 SETTABLEKS                       R2 R1 K1 ["ambient"]
        9 LOADK                            R2 K16 ["108,94,66"]
       10 SETTABLEKS                       R2 R1 K2 ["colorShiftBottom"]
       12 LOADK                            R2 K17 ["94,100,172"]
       13 SETTABLEKS                       R2 R1 K3 ["colorShiftTop"]
       15 LOADK                            R2 K18 ["0"]
       16 SETTABLEKS                       R2 R1 K4 ["environmentDiffuseScale"]
       18 LOADK                            R2 K14 ["1"]
       19 SETTABLEKS                       R2 R1 K5 ["environmentSpecularScale"]
       21 LOADK                            R2 K19 ["true"]
       22 SETTABLEKS                       R2 R1 K6 ["globalShadows"]
       24 LOADK                            R2 K18 ["0"]
       25 SETTABLEKS                       R2 R1 K7 ["shadowSoftness"]
       27 LOADK                            R2 K20 ["0,0,0"]
       28 SETTABLEKS                       R2 R1 K8 ["outdoorAmbient"]
       30 LOADK                            R2 K21 ["9.5"]
       31 SETTABLEKS                       R2 R1 K9 ["clockTime"]
       33 LOADK                            R2 K22 ["330"]
       34 SETTABLEKS                       R2 R1 K10 ["geographicLatitude"]
       36 LOADK                            R2 K18 ["0"]
       37 SETTABLEKS                       R2 R1 K11 ["exposureCompensation"]
       39 LOADK                            R2 K23 ["09:30:00"]
       40 SETTABLEKS                       R2 R1 K12 ["timeOfDay"]
       42 MOVE                             R0 R1
       43 GETUPVAL                         R1 0
       44 GETTABLEKS                       R3 R0 K0 ["brightness"]
       46 JUMPIFNOT                        R3 ; [+7]
       47 GETTABLEKS                       R3 R0 K0 ["brightness"]
       49 FASTCALL1                        TONUMBER R3 ; [+2]
       50 GETIMPORT                        R2 K25 [tonumber]
       52 CALL                             R2 1 1
       53 JUMPIF                           R2 ; [+1]
       54 LOADN                            R2 1
       55 SETTABLEKS                       R2 R1 K26 ["Brightness"]
       57 GETTABLEKS                       R2 R0 K1 ["ambient"]
       59 JUMPIFNOT                        R2 ; [+7]
       60 GETTABLEKS                       R1 R0 K1 ["ambient"]
       62 LOADK                            R3 K27 [","]
       63 NAMECALL                         R1 R1 K28 ["split"]
       65 CALL                             R1 2 1
       66 JUMPIF                           R1 ; [+7]
       67 NEWTABLE                         R1 0 3
       69 LOADK                            R2 K29 ["124"]
       70 LOADK                            R3 K29 ["124"]
       71 LOADK                            R4 K29 ["124"]
       72 SETLIST                          R1 R2 3 [1]
       74 GETUPVAL                         R2 0
       75 GETIMPORT                        R3 K32 [Color3.fromRGB]
       77 GETTABLEN                        R5 R1 1
       78 FASTCALL1                        TONUMBER R5 ; [+2]
       79 GETIMPORT                        R4 K25 [tonumber]
       81 CALL                             R4 1 1
       82 GETTABLEN                        R6 R1 2
       83 FASTCALL1                        TONUMBER R6 ; [+2]
       84 GETIMPORT                        R5 K25 [tonumber]
       86 CALL                             R5 1 1
       87 GETTABLEN                        R7 R1 3
       88 FASTCALL1                        TONUMBER R7 ; [+2]
       89 GETIMPORT                        R6 K25 [tonumber]
       91 CALL                             R6 1 1
       92 CALL                             R3 3 1
       93 SETTABLEKS                       R3 R2 K33 ["Ambient"]
       95 GETTABLEKS                       R3 R0 K2 ["colorShiftBottom"]
       97 JUMPIFNOT                        R3 ; [+7]
       98 GETTABLEKS                       R2 R0 K2 ["colorShiftBottom"]
      100 LOADK                            R4 K27 [","]
      101 NAMECALL                         R2 R2 K28 ["split"]
      103 CALL                             R2 2 1
      104 JUMPIF                           R2 ; [+7]
      105 NEWTABLE                         R2 0 3
      107 LOADK                            R3 K34 ["108"]
      108 LOADK                            R4 K35 ["94"]
      109 LOADK                            R5 K36 ["66"]
      110 SETLIST                          R2 R3 3 [1]
      112 GETTABLEKS                       R4 R0 K3 ["colorShiftTop"]
      114 JUMPIFNOT                        R4 ; [+7]
      115 GETTABLEKS                       R3 R0 K3 ["colorShiftTop"]
      117 LOADK                            R5 K27 [","]
      118 NAMECALL                         R3 R3 K28 ["split"]
      120 CALL                             R3 2 1
      121 JUMPIF                           R3 ; [+7]
      122 NEWTABLE                         R3 0 3
      124 LOADK                            R4 K35 ["94"]
      125 LOADK                            R5 K37 ["100"]
      126 LOADK                            R6 K38 ["172"]
      127 SETLIST                          R3 R4 3 [1]
      129 GETUPVAL                         R4 0
      130 GETIMPORT                        R5 K32 [Color3.fromRGB]
      132 GETTABLEN                        R7 R2 1
      133 FASTCALL1                        TONUMBER R7 ; [+2]
      134 GETIMPORT                        R6 K25 [tonumber]
      136 CALL                             R6 1 1
      137 GETTABLEN                        R8 R2 2
      138 FASTCALL1                        TONUMBER R8 ; [+2]
      139 GETIMPORT                        R7 K25 [tonumber]
      141 CALL                             R7 1 1
      142 GETTABLEN                        R9 R2 3
      143 FASTCALL1                        TONUMBER R9 ; [+2]
      144 GETIMPORT                        R8 K25 [tonumber]
      146 CALL                             R8 1 1
      147 CALL                             R5 3 1
      148 SETTABLEKS                       R5 R4 K39 ["ColorShift_Bottom"]
      150 GETUPVAL                         R4 0
      151 GETIMPORT                        R5 K32 [Color3.fromRGB]
      153 GETTABLEN                        R7 R3 1
      154 FASTCALL1                        TONUMBER R7 ; [+2]
      155 GETIMPORT                        R6 K25 [tonumber]
      157 CALL                             R6 1 1
      158 GETTABLEN                        R8 R3 2
      159 FASTCALL1                        TONUMBER R8 ; [+2]
      160 GETIMPORT                        R7 K25 [tonumber]
      162 CALL                             R7 1 1
      163 GETTABLEN                        R9 R3 3
      164 FASTCALL1                        TONUMBER R9 ; [+2]
      165 GETIMPORT                        R8 K25 [tonumber]
      167 CALL                             R8 1 1
      168 CALL                             R5 3 1
      169 SETTABLEKS                       R5 R4 K40 ["ColorShift_Top"]
      171 GETUPVAL                         R4 0
      172 GETTABLEKS                       R6 R0 K4 ["environmentDiffuseScale"]
      174 JUMPIFNOT                        R6 ; [+7]
      175 GETTABLEKS                       R6 R0 K4 ["environmentDiffuseScale"]
      177 FASTCALL1                        TONUMBER R6 ; [+2]
      178 GETIMPORT                        R5 K25 [tonumber]
      180 CALL                             R5 1 1
      181 JUMPIF                           R5 ; [+1]
      182 LOADN                            R5 0
      183 SETTABLEKS                       R5 R4 K41 ["EnvironmentDiffuseScale"]
      185 GETUPVAL                         R4 0
      186 GETTABLEKS                       R6 R0 K5 ["environmentSpecularScale"]
      188 JUMPIFNOT                        R6 ; [+7]
      189 GETTABLEKS                       R6 R0 K5 ["environmentSpecularScale"]
      191 FASTCALL1                        TONUMBER R6 ; [+2]
      192 GETIMPORT                        R5 K25 [tonumber]
      194 CALL                             R5 1 1
      195 JUMPIF                           R5 ; [+1]
      196 LOADN                            R5 1
      197 SETTABLEKS                       R5 R4 K42 ["EnvironmentSpecularScale"]
      199 GETUPVAL                         R4 0
      200 GETTABLEKS                       R6 R0 K6 ["globalShadows"]
      202 JUMPIFNOT                        R6 ; [+5]
      203 LOADB                            R5 1
      204 GETTABLEKS                       R6 R0 K6 ["globalShadows"]
      206 JUMPIFEQKS                       R6 K19 ["true"] ; [+2]
      208 LOADB                            R5 0
      209 SETTABLEKS                       R5 R4 K43 ["GlobalShadows"]
      211 GETUPVAL                         R4 0
      212 GETTABLEKS                       R6 R0 K7 ["shadowSoftness"]
      214 JUMPIFNOT                        R6 ; [+7]
      215 GETTABLEKS                       R6 R0 K7 ["shadowSoftness"]
      217 FASTCALL1                        TONUMBER R6 ; [+2]
      218 GETIMPORT                        R5 K25 [tonumber]
      220 CALL                             R5 1 1
      221 JUMPIF                           R5 ; [+1]
      222 LOADN                            R5 0
      223 SETTABLEKS                       R5 R4 K44 ["ShadowSoftness"]
      225 GETTABLEKS                       R5 R0 K8 ["outdoorAmbient"]
      227 JUMPIFNOT                        R5 ; [+7]
      228 GETTABLEKS                       R4 R0 K8 ["outdoorAmbient"]
      230 LOADK                            R6 K27 [","]
      231 NAMECALL                         R4 R4 K28 ["split"]
      233 CALL                             R4 2 1
      234 JUMPIF                           R4 ; [+7]
      235 NEWTABLE                         R4 0 3
      237 LOADK                            R5 K18 ["0"]
      238 LOADK                            R6 K18 ["0"]
      239 LOADK                            R7 K18 ["0"]
      240 SETLIST                          R4 R5 3 [1]
      242 GETUPVAL                         R5 0
      243 GETIMPORT                        R6 K32 [Color3.fromRGB]
      245 GETTABLEN                        R8 R4 1
      246 FASTCALL1                        TONUMBER R8 ; [+2]
      247 GETIMPORT                        R7 K25 [tonumber]
      249 CALL                             R7 1 1
      250 GETTABLEN                        R9 R4 2
      251 FASTCALL1                        TONUMBER R9 ; [+2]
      252 GETIMPORT                        R8 K25 [tonumber]
      254 CALL                             R8 1 1
      255 GETTABLEN                        R10 R4 3
      256 FASTCALL1                        TONUMBER R10 ; [+2]
      257 GETIMPORT                        R9 K25 [tonumber]
      259 CALL                             R9 1 1
      260 CALL                             R6 3 1
      261 SETTABLEKS                       R6 R5 K45 ["OutdoorAmbient"]
      263 GETUPVAL                         R5 0
      264 GETTABLEKS                       R7 R0 K9 ["clockTime"]
      266 JUMPIFNOT                        R7 ; [+7]
      267 GETTABLEKS                       R7 R0 K9 ["clockTime"]
      269 FASTCALL1                        TONUMBER R7 ; [+2]
      270 GETIMPORT                        R6 K25 [tonumber]
      272 CALL                             R6 1 1
      273 JUMPIF                           R6 ; [+1]
      274 LOADK                            R6 K46 [9.5]
      275 SETTABLEKS                       R6 R5 K47 ["ClockTime"]
      277 GETUPVAL                         R5 0
      278 GETTABLEKS                       R7 R0 K10 ["geographicLatitude"]
      280 JUMPIFNOT                        R7 ; [+7]
      281 GETTABLEKS                       R7 R0 K10 ["geographicLatitude"]
      283 FASTCALL1                        TONUMBER R7 ; [+2]
      284 GETIMPORT                        R6 K25 [tonumber]
      286 CALL                             R6 1 1
      287 JUMPIF                           R6 ; [+1]
      288 LOADN                            R6 74
      289 SETTABLEKS                       R6 R5 K48 ["GeographicLatitude"]
      291 GETUPVAL                         R5 0
      292 GETTABLEKS                       R7 R0 K11 ["exposureCompensation"]
      294 JUMPIFNOT                        R7 ; [+7]
      295 GETTABLEKS                       R7 R0 K11 ["exposureCompensation"]
      297 FASTCALL1                        TONUMBER R7 ; [+2]
      298 GETIMPORT                        R6 K25 [tonumber]
      300 CALL                             R6 1 1
      301 JUMPIF                           R6 ; [+1]
      302 LOADN                            R6 0
      303 SETTABLEKS                       R6 R5 K49 ["ExposureCompensation"]
      305 GETUPVAL                         R5 0
      306 GETTABLEKS                       R7 R0 K12 ["timeOfDay"]
      308 ORK                              R6 R7 K23 ["09:30:00"]
      309 SETTABLEKS                       R6 R5 K50 ["TimeOfDay"]
      311 RETURN                           R0 0

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
        1 JUMPIF                           R1 ; [+71]
        2 DUPTABLE                         R1 K2 [{"keyLight", "fillLight"}]
        3 DUPTABLE                         R2 K8 [{"partCFrame", "color", "brightness", "range", "angle"}]
        4 GETIMPORT                        R4 K11 [CFrame.new]
        6 LOADK                            R5 K12 [2.219]
        7 LOADK                            R6 K13 [103.178]
        8 LOADK                            R7 K14 [4.675]
        9 CALL                             R4 3 1
       10 GETIMPORT                        R5 K16 [CFrame.Angles]
       12 LOADN                            R6 30
       13 LOADN                            R7 60
       14 LOADN                            R8 166
       15 CALL                             R5 3 1
       16 MUL                              R3 R4 R5
       17 SETTABLEKS                       R3 R2 K3 ["partCFrame"]
       19 GETIMPORT                        R3 K19 [Color3.fromRGB]
       21 LOADN                            R4 218
       22 LOADN                            R5 196
       23 LOADN                            R6 144
       24 CALL                             R3 3 1
       25 SETTABLEKS                       R3 R2 K4 ["color"]
       27 LOADK                            R3 K20 [11.2]
       28 SETTABLEKS                       R3 R2 K5 ["brightness"]
       30 LOADN                            R3 12
       31 SETTABLEKS                       R3 R2 K6 ["range"]
       33 LOADN                            R3 54
       34 SETTABLEKS                       R3 R2 K7 ["angle"]
       36 SETTABLEKS                       R2 R1 K0 ["keyLight"]
       38 DUPTABLE                         R2 K8 [{"partCFrame", "color", "brightness", "range", "angle"}]
       39 GETIMPORT                        R4 K11 [CFrame.new]
       41 LOADK                            R5 K21 [3.554]
       42 LOADK                            R6 K22 [107.01]
       43 LOADK                            R7 K23 [-1.036]
       44 CALL                             R4 3 1
       45 GETIMPORT                        R5 K16 [CFrame.Angles]
       47 LOADN                            R6 241
       48 LOADN                            R7 90
       49 LOADN                            R8 166
       50 CALL                             R5 3 1
       51 MUL                              R3 R4 R5
       52 SETTABLEKS                       R3 R2 K3 ["partCFrame"]
       54 GETIMPORT                        R3 K19 [Color3.fromRGB]
       56 LOADN                            R4 255
       57 LOADN                            R5 255
       58 LOADN                            R6 255
       59 CALL                             R3 3 1
       60 SETTABLEKS                       R3 R2 K4 ["color"]
       62 LOADK                            R3 K24 [1.6]
       63 SETTABLEKS                       R3 R2 K5 ["brightness"]
       65 LOADN                            R3 12
       66 SETTABLEKS                       R3 R2 K6 ["range"]
       68 LOADN                            R3 36
       69 SETTABLEKS                       R3 R2 K7 ["angle"]
       71 SETTABLEKS                       R2 R1 K1 ["fillLight"]
       73 MOVE                             R0 R1
       74 GETTABLEKS                       R1 R0 K0 ["keyLight"]
       76 JUMPIFNOT                        R1 ; [+7]
       77 GETUPVAL                         R1 0
       78 GETTABLEKS                       R1 R1 K25 ["SetupSpotLight"]
       80 GETTABLEKS                       R2 R0 K0 ["keyLight"]
       82 LOADK                            R3 K26 ["KeyLight"]
       83 CALL                             R1 2 0
       84 GETTABLEKS                       R1 R0 K1 ["fillLight"]
       86 JUMPIFNOT                        R1 ; [+7]
       87 GETUPVAL                         R1 0
       88 GETTABLEKS                       R1 R1 K25 ["SetupSpotLight"]
       90 GETTABLEKS                       R2 R0 K1 ["fillLight"]
       92 LOADK                            R3 K27 ["FillLight"]
       93 CALL                             R1 2 0
       94 RETURN                           R0 0

PROTO_7:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+34]
        2 DUPTABLE                         R1 K11 [{"rotation", "keyCFrame", "keyBrightness", "keyRange", "keyAngle", "keyColor", "fillCFrame", "fillBrightness", "fillRange", "fillAngle", "fillColor"}]
        3 LOADK                            R2 K12 ["105"]
        4 SETTABLEKS                       R2 R1 K0 ["rotation"]
        6 LOADK                            R2 K13 ["2.219,103.178,4.675,30,60,-90"]
        7 SETTABLEKS                       R2 R1 K1 ["keyCFrame"]
        9 LOADK                            R2 K14 ["11.2"]
       10 SETTABLEKS                       R2 R1 K2 ["keyBrightness"]
       12 LOADK                            R2 K15 ["12"]
       13 SETTABLEKS                       R2 R1 K3 ["keyRange"]
       15 LOADK                            R2 K16 ["54"]
       16 SETTABLEKS                       R2 R1 K4 ["keyAngle"]
       18 LOADK                            R2 K17 ["218,196,144"]
       19 SETTABLEKS                       R2 R1 K5 ["keyColor"]
       21 LOADK                            R2 K18 ["3.554,107.01,-1.036,-15,90,-90"]
       22 SETTABLEKS                       R2 R1 K6 ["fillCFrame"]
       24 LOADK                            R2 K19 ["1.6"]
       25 SETTABLEKS                       R2 R1 K7 ["fillBrightness"]
       27 LOADK                            R2 K15 ["12"]
       28 SETTABLEKS                       R2 R1 K8 ["fillRange"]
       30 LOADK                            R2 K20 ["36"]
       31 SETTABLEKS                       R2 R1 K9 ["fillAngle"]
       33 LOADK                            R2 K21 ["255,255,255"]
       34 SETTABLEKS                       R2 R1 K10 ["fillColor"]
       36 MOVE                             R0 R1
       37 GETTABLEKS                       R2 R0 K0 ["rotation"]
       39 JUMPIFNOT                        R2 ; [+7]
       40 GETTABLEKS                       R2 R0 K0 ["rotation"]
       42 FASTCALL1                        TONUMBER R2 ; [+2]
       43 GETIMPORT                        R1 K23 [tonumber]
       45 CALL                             R1 1 1
       46 JUMPIF                           R1 ; [+1]
       47 LOADN                            R1 105
       48 GETIMPORT                        R2 K26 [CFrame.Angles]
       50 LOADN                            R3 0
       51 FASTCALL1                        MATH_RAD R1 ; [+3]
       52 MOVE                             R5 R1
       53 GETIMPORT                        R4 K29 [math.rad]
       55 CALL                             R4 1 1
       56 LOADN                            R5 0
       57 CALL                             R2 3 1
       58 GETTABLEKS                       R4 R0 K1 ["keyCFrame"]
       60 JUMPIFNOT                        R4 ; [+7]
       61 GETTABLEKS                       R3 R0 K1 ["keyCFrame"]
       63 LOADK                            R5 K30 [","]
       64 NAMECALL                         R3 R3 K31 ["split"]
       66 CALL                             R3 2 1
       67 JUMPIF                           R3 ; [+10]
       68 NEWTABLE                         R3 0 6
       70 LOADK                            R4 K32 ["2.219"]
       71 LOADK                            R5 K33 ["103.178"]
       72 LOADK                            R6 K34 ["4.675"]
       73 LOADK                            R7 K35 ["30"]
       74 LOADK                            R8 K36 ["60"]
       75 LOADK                            R9 K37 ["-90"]
       76 SETLIST                          R3 R4 6 [1]
       78 GETIMPORT                        R7 K39 [CFrame.new]
       80 GETTABLEN                        R10 R3 1
       81 FASTCALL1                        TONUMBER R10 ; [+2]
       82 GETIMPORT                        R9 K23 [tonumber]
       84 CALL                             R9 1 1
       85 ORK                              R8 R9 K40 [0]
       86 GETTABLEN                        R11 R3 2
       87 FASTCALL1                        TONUMBER R11 ; [+2]
       88 GETIMPORT                        R10 K23 [tonumber]
       90 CALL                             R10 1 1
       91 ORK                              R9 R10 K40 [0]
       92 GETTABLEN                        R12 R3 3
       93 FASTCALL1                        TONUMBER R12 ; [+2]
       94 GETIMPORT                        R11 K23 [tonumber]
       96 CALL                             R11 1 1
       97 ORK                              R10 R11 K40 [0]
       98 CALL                             R7 3 1
       99 GETIMPORT                        R8 K26 [CFrame.Angles]
      101 GETTABLEN                        R12 R3 4
      102 FASTCALL1                        TONUMBER R12 ; [+2]
      103 GETIMPORT                        R11 K23 [tonumber]
      105 CALL                             R11 1 1
      106 ORK                              R10 R11 K40 [0]
      107 FASTCALL1                        MATH_RAD R10 ; [+2]
      108 GETIMPORT                        R9 K29 [math.rad]
      110 CALL                             R9 1 1
      111 GETTABLEN                        R13 R3 5
      112 FASTCALL1                        TONUMBER R13 ; [+2]
      113 GETIMPORT                        R12 K23 [tonumber]
      115 CALL                             R12 1 1
      116 ORK                              R11 R12 K40 [0]
      117 FASTCALL1                        MATH_RAD R11 ; [+2]
      118 GETIMPORT                        R10 K29 [math.rad]
      120 CALL                             R10 1 1
      121 GETTABLEN                        R14 R3 6
      122 FASTCALL1                        TONUMBER R14 ; [+2]
      123 GETIMPORT                        R13 K23 [tonumber]
      125 CALL                             R13 1 1
      126 ORK                              R12 R13 K40 [0]
      127 FASTCALL1                        MATH_RAD R12 ; [+2]
      128 GETIMPORT                        R11 K29 [math.rad]
      130 CALL                             R11 1 1
      131 CALL                             R8 3 1
      132 MUL                              R6 R7 R8
      133 NAMECALL                         R4 R2 K41 ["ToWorldSpace"]
      135 CALL                             R4 2 1
      136 GETTABLEKS                       R6 R0 K6 ["fillCFrame"]
      138 JUMPIFNOT                        R6 ; [+7]
      139 GETTABLEKS                       R5 R0 K6 ["fillCFrame"]
      141 LOADK                            R7 K30 [","]
      142 NAMECALL                         R5 R5 K31 ["split"]
      144 CALL                             R5 2 1
      145 JUMPIF                           R5 ; [+10]
      146 NEWTABLE                         R5 0 6
      148 LOADK                            R6 K42 ["3.554"]
      149 LOADK                            R7 K43 ["107.01"]
      150 LOADK                            R8 K44 ["-1.036"]
      151 LOADK                            R9 K45 ["-15"]
      152 LOADK                            R10 K46 ["90"]
      153 LOADK                            R11 K37 ["-90"]
      154 SETLIST                          R5 R6 6 [1]
      156 GETIMPORT                        R9 K39 [CFrame.new]
      158 GETTABLEN                        R12 R5 1
      159 FASTCALL1                        TONUMBER R12 ; [+2]
      160 GETIMPORT                        R11 K23 [tonumber]
      162 CALL                             R11 1 1
      163 ORK                              R10 R11 K40 [0]
      164 GETTABLEN                        R13 R5 2
      165 FASTCALL1                        TONUMBER R13 ; [+2]
      166 GETIMPORT                        R12 K23 [tonumber]
      168 CALL                             R12 1 1
      169 ORK                              R11 R12 K40 [0]
      170 GETTABLEN                        R14 R5 3
      171 FASTCALL1                        TONUMBER R14 ; [+2]
      172 GETIMPORT                        R13 K23 [tonumber]
      174 CALL                             R13 1 1
      175 ORK                              R12 R13 K40 [0]
      176 CALL                             R9 3 1
      177 GETIMPORT                        R10 K26 [CFrame.Angles]
      179 GETTABLEN                        R14 R5 4
      180 FASTCALL1                        TONUMBER R14 ; [+2]
      181 GETIMPORT                        R13 K23 [tonumber]
      183 CALL                             R13 1 1
      184 ORK                              R12 R13 K40 [0]
      185 FASTCALL1                        MATH_RAD R12 ; [+2]
      186 GETIMPORT                        R11 K29 [math.rad]
      188 CALL                             R11 1 1
      189 GETTABLEN                        R15 R5 5
      190 FASTCALL1                        TONUMBER R15 ; [+2]
      191 GETIMPORT                        R14 K23 [tonumber]
      193 CALL                             R14 1 1
      194 ORK                              R13 R14 K40 [0]
      195 FASTCALL1                        MATH_RAD R13 ; [+2]
      196 GETIMPORT                        R12 K29 [math.rad]
      198 CALL                             R12 1 1
      199 GETTABLEN                        R16 R5 6
      200 FASTCALL1                        TONUMBER R16 ; [+2]
      201 GETIMPORT                        R15 K23 [tonumber]
      203 CALL                             R15 1 1
      204 ORK                              R14 R15 K40 [0]
      205 FASTCALL1                        MATH_RAD R14 ; [+2]
      206 GETIMPORT                        R13 K29 [math.rad]
      208 CALL                             R13 1 1
      209 CALL                             R10 3 1
      210 MUL                              R8 R9 R10
      211 NAMECALL                         R6 R2 K41 ["ToWorldSpace"]
      213 CALL                             R6 2 1
      214 GETTABLEKS                       R8 R0 K2 ["keyBrightness"]
      216 JUMPIFNOT                        R8 ; [+7]
      217 GETTABLEKS                       R8 R0 K2 ["keyBrightness"]
      219 FASTCALL1                        TONUMBER R8 ; [+2]
      220 GETIMPORT                        R7 K23 [tonumber]
      222 CALL                             R7 1 1
      223 JUMPIF                           R7 ; [+1]
      224 LOADK                            R7 K47 [11.2]
      225 GETTABLEKS                       R9 R0 K3 ["keyRange"]
      227 JUMPIFNOT                        R9 ; [+7]
      228 GETTABLEKS                       R9 R0 K3 ["keyRange"]
      230 FASTCALL1                        TONUMBER R9 ; [+2]
      231 GETIMPORT                        R8 K23 [tonumber]
      233 CALL                             R8 1 1
      234 JUMPIF                           R8 ; [+1]
      235 LOADN                            R8 12
      236 GETTABLEKS                       R10 R0 K4 ["keyAngle"]
      238 JUMPIFNOT                        R10 ; [+7]
      239 GETTABLEKS                       R10 R0 K4 ["keyAngle"]
      241 FASTCALL1                        TONUMBER R10 ; [+2]
      242 GETIMPORT                        R9 K23 [tonumber]
      244 CALL                             R9 1 1
      245 JUMPIF                           R9 ; [+1]
      246 LOADN                            R9 54
      247 GETTABLEKS                       R11 R0 K5 ["keyColor"]
      249 JUMPIFNOT                        R11 ; [+7]
      250 GETTABLEKS                       R10 R0 K5 ["keyColor"]
      252 LOADK                            R12 K30 [","]
      253 NAMECALL                         R10 R10 K31 ["split"]
      255 CALL                             R10 2 1
      256 JUMPIF                           R10 ; [+7]
      257 NEWTABLE                         R10 0 3
      259 LOADK                            R11 K48 ["218"]
      260 LOADK                            R12 K49 ["196"]
      261 LOADK                            R13 K50 ["144"]
      262 SETLIST                          R10 R11 3 [1]
      264 GETTABLEKS                       R12 R0 K7 ["fillBrightness"]
      266 JUMPIFNOT                        R12 ; [+7]
      267 GETTABLEKS                       R12 R0 K7 ["fillBrightness"]
      269 FASTCALL1                        TONUMBER R12 ; [+2]
      270 GETIMPORT                        R11 K23 [tonumber]
      272 CALL                             R11 1 1
      273 JUMPIF                           R11 ; [+1]
      274 LOADK                            R11 K51 [1.6]
      275 GETTABLEKS                       R13 R0 K8 ["fillRange"]
      277 JUMPIFNOT                        R13 ; [+7]
      278 GETTABLEKS                       R13 R0 K8 ["fillRange"]
      280 FASTCALL1                        TONUMBER R13 ; [+2]
      281 GETIMPORT                        R12 K23 [tonumber]
      283 CALL                             R12 1 1
      284 JUMPIF                           R12 ; [+1]
      285 LOADN                            R12 12
      286 GETTABLEKS                       R14 R0 K9 ["fillAngle"]
      288 JUMPIFNOT                        R14 ; [+7]
      289 GETTABLEKS                       R14 R0 K9 ["fillAngle"]
      291 FASTCALL1                        TONUMBER R14 ; [+2]
      292 GETIMPORT                        R13 K23 [tonumber]
      294 CALL                             R13 1 1
      295 JUMPIF                           R13 ; [+1]
      296 LOADN                            R13 36
      297 GETTABLEKS                       R15 R0 K10 ["fillColor"]
      299 JUMPIFNOT                        R15 ; [+7]
      300 GETTABLEKS                       R14 R0 K10 ["fillColor"]
      302 LOADK                            R16 K30 [","]
      303 NAMECALL                         R14 R14 K31 ["split"]
      305 CALL                             R14 2 1
      306 JUMPIF                           R14 ; [+7]
      307 NEWTABLE                         R14 0 3
      309 LOADK                            R15 K52 ["255"]
      310 LOADK                            R16 K52 ["255"]
      311 LOADK                            R17 K52 ["255"]
      312 SETLIST                          R14 R15 3 [1]
      314 GETUPVAL                         R15 0
      315 GETTABLEKS                       R15 R15 K53 ["SetupSpotLightsIn3PointLighting"]
      317 DUPTABLE                         R16 K56 [{"keyLight", "fillLight"}]
      318 DUPTABLE                         R17 K62 [{"partCFrame", "color", "brightness", "range", "angle"}]
      319 SETTABLEKS                       R4 R17 K57 ["partCFrame"]
      321 GETIMPORT                        R18 K65 [Color3.fromRGB]
      323 GETTABLEN                        R20 R10 1
      324 FASTCALL1                        TONUMBER R20 ; [+2]
      325 GETIMPORT                        R19 K23 [tonumber]
      327 CALL                             R19 1 1
      328 GETTABLEN                        R21 R10 2
      329 FASTCALL1                        TONUMBER R21 ; [+2]
      330 GETIMPORT                        R20 K23 [tonumber]
      332 CALL                             R20 1 1
      333 GETTABLEN                        R22 R10 3
      334 FASTCALL1                        TONUMBER R22 ; [+2]
      335 GETIMPORT                        R21 K23 [tonumber]
      337 CALL                             R21 1 1
      338 CALL                             R18 3 1
      339 SETTABLEKS                       R18 R17 K58 ["color"]
      341 SETTABLEKS                       R7 R17 K59 ["brightness"]
      343 SETTABLEKS                       R8 R17 K60 ["range"]
      345 SETTABLEKS                       R9 R17 K61 ["angle"]
      347 SETTABLEKS                       R17 R16 K54 ["keyLight"]
      349 DUPTABLE                         R17 K62 [{"partCFrame", "color", "brightness", "range", "angle"}]
      350 SETTABLEKS                       R6 R17 K57 ["partCFrame"]
      352 GETIMPORT                        R18 K65 [Color3.fromRGB]
      354 GETTABLEN                        R20 R14 1
      355 FASTCALL1                        TONUMBER R20 ; [+2]
      356 GETIMPORT                        R19 K23 [tonumber]
      358 CALL                             R19 1 1
      359 GETTABLEN                        R21 R14 2
      360 FASTCALL1                        TONUMBER R21 ; [+2]
      361 GETIMPORT                        R20 K23 [tonumber]
      363 CALL                             R20 1 1
      364 GETTABLEN                        R22 R14 3
      365 FASTCALL1                        TONUMBER R22 ; [+2]
      366 GETIMPORT                        R21 K23 [tonumber]
      368 CALL                             R21 1 1
      369 CALL                             R18 3 1
      370 SETTABLEKS                       R18 R17 K58 ["color"]
      372 SETTABLEKS                       R11 R17 K59 ["brightness"]
      374 SETTABLEKS                       R12 R17 K60 ["range"]
      376 SETTABLEKS                       R13 R17 K61 ["angle"]
      378 SETTABLEKS                       R17 R16 K55 ["fillLight"]
      380 CALL                             R15 1 0
      381 RETURN                           R0 0

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
