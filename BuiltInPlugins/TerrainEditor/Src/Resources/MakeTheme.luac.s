PROTO_0:
        0 NEWTABLE                         R1 4 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["Sphere"]
        5 LOADK                            R4 K1 ["%*TerrainBrushTypeSphere.png"]
        6 MOVE                             R6 R0
        7 NAMECALL                         R4 R4 K2 ["format"]
        9 CALL                             R4 2 1
       10 MOVE                             R3 R4
       11 SETTABLE                         R3 R1 R2
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K3 ["Cube"]
       15 LOADK                            R4 K4 ["%*TerrainBrushTypeCube.png"]
       16 MOVE                             R6 R0
       17 NAMECALL                         R4 R4 K2 ["format"]
       19 CALL                             R4 2 1
       20 MOVE                             R3 R4
       21 SETTABLE                         R3 R1 R2
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R2 R3 K5 ["Cylinder"]
       25 LOADK                            R4 K6 ["%*TerrainBrushTypeCylinder.png"]
       26 MOVE                             R6 R0
       27 NAMECALL                         R4 R4 K2 ["format"]
       29 CALL                             R4 2 1
       30 MOVE                             R3 R4
       31 SETTABLE                         R3 R1 R2
       32 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 4 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["Both"]
        5 LOADK                            R4 K1 ["%*FlattenModeRemoveAboveFillBelow.png"]
        6 MOVE                             R6 R0
        7 NAMECALL                         R4 R4 K2 ["format"]
        9 CALL                             R4 2 1
       10 MOVE                             R3 R4
       11 SETTABLE                         R3 R1 R2
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K3 ["Erode"]
       15 LOADK                            R4 K4 ["%*FlattenModeRemoveAbove.png"]
       16 MOVE                             R6 R0
       17 NAMECALL                         R4 R4 K2 ["format"]
       19 CALL                             R4 2 1
       20 MOVE                             R3 R4
       21 SETTABLE                         R3 R1 R2
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R2 R3 K5 ["Grow"]
       25 LOADK                            R4 K6 ["%*FlattenModeFillBelow.png"]
       26 MOVE                             R6 R0
       27 NAMECALL                         R4 R4 K2 ["format"]
       29 CALL                             R4 2 1
       30 MOVE                             R3 R4
       31 SETTABLE                         R3 R1 R2
       32 RETURN                           R1 1

PROTO_2:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["mock"]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 2
        7 CALL                             R2 2 1
        8 MOVE                             R1 R2
        9 JUMP                             ; [+7]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K1 ["new"]
       13 GETUPVAL                         R3 1
       14 GETUPVAL                         R4 2
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 GETUPVAL                         R4 3
       18 NAMECALL                         R2 R1 K2 ["extend"]
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["MaterialFramework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R6 K11 ["Types"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K12 ["BrushSettings"]
       37 GETTABLEKS                       R6 R4 K13 ["BrushShape"]
       39 GETTABLEKS                       R7 R4 K14 ["FlattenMode"]
       41 GETTABLEKS                       R8 R2 K15 ["Style"]
       43 GETTABLEKS                       R9 R8 K16 ["StyleKey"]
       45 GETTABLEKS                       R11 R8 K17 ["Themes"]
       47 GETTABLEKS                       R10 R11 K18 ["DarkTheme"]
       49 GETTABLEKS                       R12 R8 K17 ["Themes"]
       51 GETTABLEKS                       R11 R12 K19 ["LightTheme"]
       53 GETTABLEKS                       R13 R3 K20 ["Resources"]
       55 GETTABLEKS                       R12 R13 K21 ["Theme"]
       57 GETIMPORT                        R13 K5 [require]
       59 GETIMPORT                        R16 K1 [script]
       61 GETTABLEKS                       R15 R16 K22 ["Parent"]
       63 GETTABLEKS                       R14 R15 K21 ["Theme"]
       65 CALL                             R13 1 1
       66 DUPCLOSURE                       R14 K23 [PROTO_0]
       67 CAPTURE                          VAL R6
       68 DUPCLOSURE                       R15 K24 [PROTO_1]
       69 CAPTURE                          VAL R7
       70 GETTABLEKS                       R16 R1 K25 ["join"]
       72 MOVE                             R17 R10
       73 NEWTABLE                         R18 16 0
       75 GETTABLEKS                       R19 R9 K26 ["StudioTheme"]
       77 LOADK                            R20 K27 ["Dark"]
       78 SETTABLE                         R20 R18 R19
       79 GETTABLEKS                       R19 R5 K13 ["BrushShape"]
       81 NEWTABLE                         R20 4 0
       83 GETTABLEKS                       R21 R6 K28 ["Sphere"]
       85 LOADK                            R22 K29 ["rbxasset://studio_svg_textures/Lua/Terrain/Dark/Large/TerrainBrushTypeSphere.png"]
       86 SETTABLE                         R22 R20 R21
       87 GETTABLEKS                       R21 R6 K30 ["Cube"]
       89 LOADK                            R22 K31 ["rbxasset://studio_svg_textures/Lua/Terrain/Dark/Large/TerrainBrushTypeCube.png"]
       90 SETTABLE                         R22 R20 R21
       91 GETTABLEKS                       R21 R6 K32 ["Cylinder"]
       93 LOADK                            R22 K33 ["rbxasset://studio_svg_textures/Lua/Terrain/Dark/Large/TerrainBrushTypeCylinder.png"]
       94 SETTABLE                         R22 R20 R21
       95 SETTABLE                         R20 R18 R19
       96 GETTABLEKS                       R19 R5 K14 ["FlattenMode"]
       98 NEWTABLE                         R20 4 0
      100 GETTABLEKS                       R21 R7 K34 ["Both"]
      102 LOADK                            R22 K35 ["rbxasset://studio_svg_textures/Lua/Terrain/Dark/Large/FlattenModeRemoveAboveFillBelow.png"]
      103 SETTABLE                         R22 R20 R21
      104 GETTABLEKS                       R21 R7 K36 ["Erode"]
      106 LOADK                            R22 K37 ["rbxasset://studio_svg_textures/Lua/Terrain/Dark/Large/FlattenModeRemoveAbove.png"]
      107 SETTABLE                         R22 R20 R21
      108 GETTABLEKS                       R21 R7 K38 ["Grow"]
      110 LOADK                            R22 K39 ["rbxasset://studio_svg_textures/Lua/Terrain/Dark/Large/FlattenModeFillBelow.png"]
      111 SETTABLE                         R22 R20 R21
      112 SETTABLE                         R20 R18 R19
      113 GETTABLEKS                       R19 R9 K40 ["Add"]
      115 LOADK                            R20 K41 ["rbxasset://studio_svg_textures/Lua/TerrainEditor/Dark/Standard/Add.png"]
      116 SETTABLE                         R20 R18 R19
      117 GETTABLEKS                       R19 R9 K42 ["Locked"]
      119 LOADK                            R20 K43 ["rbxasset://studio_svg_textures/Lua/TerrainEditor/Dark/Standard/Locked.png"]
      120 SETTABLE                         R20 R18 R19
      121 GETTABLEKS                       R19 R9 K44 ["Randomize"]
      123 LOADK                            R20 K45 ["rbxasset://studio_svg_textures/Lua/TerrainEditor/Dark/Standard/Randomize.png"]
      124 SETTABLE                         R20 R18 R19
      125 GETTABLEKS                       R19 R9 K46 ["Remove"]
      127 LOADK                            R20 K47 ["rbxasset://studio_svg_textures/Lua/TerrainEditor/Dark/Standard/Remove.png"]
      128 SETTABLE                         R20 R18 R19
      129 GETTABLEKS                       R19 R9 K48 ["Reset"]
      131 LOADK                            R20 K49 ["rbxasset://studio_svg_textures/Lua/TerrainEditor/Dark/Standard/Reset.png"]
      132 SETTABLE                         R20 R18 R19
      133 GETTABLEKS                       R19 R9 K50 ["Unlocked"]
      135 LOADK                            R20 K51 ["rbxasset://studio_svg_textures/Lua/TerrainEditor/Dark/Standard/Unlocked.png"]
      136 SETTABLE                         R20 R18 R19
      137 CALL                             R16 2 1
      138 GETTABLEKS                       R17 R1 K25 ["join"]
      140 MOVE                             R18 R11
      141 NEWTABLE                         R19 16 0
      143 GETTABLEKS                       R20 R9 K26 ["StudioTheme"]
      145 LOADK                            R21 K52 ["Light"]
      146 SETTABLE                         R21 R19 R20
      147 GETTABLEKS                       R20 R5 K13 ["BrushShape"]
      149 NEWTABLE                         R21 4 0
      151 GETTABLEKS                       R22 R6 K28 ["Sphere"]
      153 LOADK                            R23 K53 ["rbxasset://studio_svg_textures/Lua/Terrain/Light/Large/TerrainBrushTypeSphere.png"]
      154 SETTABLE                         R23 R21 R22
      155 GETTABLEKS                       R22 R6 K30 ["Cube"]
      157 LOADK                            R23 K54 ["rbxasset://studio_svg_textures/Lua/Terrain/Light/Large/TerrainBrushTypeCube.png"]
      158 SETTABLE                         R23 R21 R22
      159 GETTABLEKS                       R22 R6 K32 ["Cylinder"]
      161 LOADK                            R23 K55 ["rbxasset://studio_svg_textures/Lua/Terrain/Light/Large/TerrainBrushTypeCylinder.png"]
      162 SETTABLE                         R23 R21 R22
      163 SETTABLE                         R21 R19 R20
      164 GETTABLEKS                       R20 R5 K14 ["FlattenMode"]
      166 NEWTABLE                         R21 4 0
      168 GETTABLEKS                       R22 R7 K34 ["Both"]
      170 LOADK                            R23 K56 ["rbxasset://studio_svg_textures/Lua/Terrain/Light/Large/FlattenModeRemoveAboveFillBelow.png"]
      171 SETTABLE                         R23 R21 R22
      172 GETTABLEKS                       R22 R7 K36 ["Erode"]
      174 LOADK                            R23 K57 ["rbxasset://studio_svg_textures/Lua/Terrain/Light/Large/FlattenModeRemoveAbove.png"]
      175 SETTABLE                         R23 R21 R22
      176 GETTABLEKS                       R22 R7 K38 ["Grow"]
      178 LOADK                            R23 K58 ["rbxasset://studio_svg_textures/Lua/Terrain/Light/Large/FlattenModeFillBelow.png"]
      179 SETTABLE                         R23 R21 R22
      180 SETTABLE                         R21 R19 R20
      181 GETTABLEKS                       R20 R9 K40 ["Add"]
      183 LOADK                            R21 K59 ["rbxasset://studio_svg_textures/Lua/TerrainEditor/Light/Standard/Add.png"]
      184 SETTABLE                         R21 R19 R20
      185 GETTABLEKS                       R20 R9 K42 ["Locked"]
      187 LOADK                            R21 K60 ["rbxasset://studio_svg_textures/Lua/TerrainEditor/Light/Standard/Locked.png"]
      188 SETTABLE                         R21 R19 R20
      189 GETTABLEKS                       R20 R9 K44 ["Randomize"]
      191 LOADK                            R21 K61 ["rbxasset://studio_svg_textures/Lua/TerrainEditor/Light/Standard/Randomize.png"]
      192 SETTABLE                         R21 R19 R20
      193 GETTABLEKS                       R20 R9 K46 ["Remove"]
      195 LOADK                            R21 K62 ["rbxasset://studio_svg_textures/Lua/TerrainEditor/Light/Standard/Remove.png"]
      196 SETTABLE                         R21 R19 R20
      197 GETTABLEKS                       R20 R9 K48 ["Reset"]
      199 LOADK                            R21 K63 ["rbxasset://studio_svg_textures/Lua/TerrainEditor/Light/Standard/Reset.png"]
      200 SETTABLE                         R21 R19 R20
      201 GETTABLEKS                       R20 R9 K50 ["Unlocked"]
      203 LOADK                            R21 K64 ["rbxasset://studio_svg_textures/Lua/TerrainEditor/Light/Standard/Unlocked.png"]
      204 SETTABLE                         R21 R19 R20
      205 CALL                             R17 2 1
      206 DUPCLOSURE                       R18 K65 [PROTO_2]
      207 CAPTURE                          VAL R12
      208 CAPTURE                          VAL R16
      209 CAPTURE                          VAL R17
      210 CAPTURE                          VAL R13
      211 RETURN                           R18 1
