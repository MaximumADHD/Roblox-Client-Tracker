MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Tools"]
       13 GETTABLEKS                       R2 R3 K8 ["BaseTool"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R4 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["BuildSettings"]
       25 GETTABLEKS                       R4 R2 K11 ["Category"]
       27 GETTABLEKS                       R5 R2 K12 ["Gizmo"]
       29 GETTABLEKS                       R6 R2 K13 ["MaterialUnit"]
       31 GETTABLEKS                       R7 R2 K14 ["Tab"]
       33 GETTABLEKS                       R8 R2 K15 ["TerrainType"]
       35 NEWTABLE                         R9 0 1
       37 DUPTABLE                         R10 K18 [{"Defaults", "Id"}]
       38 NEWTABLE                         R11 16 0
       40 GETTABLEKS                       R12 R3 K19 ["AdvancedNoise"]
       42 DUPTABLE                         R13 K21 [{"Children"}]
       43 NEWTABLE                         R14 4 0
       45 GETTABLEKS                       R15 R3 K22 ["Offset"]
       47 GETIMPORT                        R16 K25 [Vector2.new]
       49 LOADN                            R17 0
       50 LOADN                            R18 0
       51 CALL                             R16 2 1
       52 SETTABLE                         R16 R14 R15
       53 GETTABLEKS                       R15 R3 K26 ["Rotation"]
       55 LOADN                            R16 0
       56 SETTABLE                         R16 R14 R15
       57 GETTABLEKS                       R15 R3 K27 ["Seed"]
       59 LOADK                            R16 K28 [0.123]
       60 SETTABLE                         R16 R14 R15
       61 SETTABLEKS                       R14 R13 K20 ["Children"]
       63 SETTABLE                         R13 R11 R12
       64 GETTABLEKS                       R12 R3 K29 ["NoiseStrength"]
       66 LOADK                            R13 K30 [0.45]
       67 SETTABLE                         R13 R11 R12
       68 GETTABLEKS                       R12 R3 K31 ["BankSize"]
       70 LOADK                            R13 K32 [0.5]
       71 SETTABLE                         R13 R11 R12
       72 GETTABLEKS                       R12 R3 K33 ["BlendingEdge"]
       74 LOADN                            R13 0
       75 SETTABLE                         R13 R11 R12
       76 GETTABLEKS                       R12 R3 K34 ["NoiseScale"]
       78 LOADK                            R13 K30 [0.45]
       79 SETTABLE                         R13 R11 R12
       80 GETTABLEKS                       R12 R3 K35 ["Material"]
       82 DUPTABLE                         R13 K42 [{"FallbackMaterial", "Unit", "Min", "Max", "MaterialIndex", "MaterialList"}]
       83 GETIMPORT                        R14 K45 [Enum.Material.Mud]
       85 SETTABLEKS                       R14 R13 K36 ["FallbackMaterial"]
       87 GETTABLEKS                       R14 R6 K46 ["Percentage"]
       89 SETTABLEKS                       R14 R13 K37 ["Unit"]
       91 LOADN                            R14 0
       92 SETTABLEKS                       R14 R13 K38 ["Min"]
       94 LOADN                            R14 1
       95 SETTABLEKS                       R14 R13 K39 ["Max"]
       97 LOADN                            R14 1
       98 SETTABLEKS                       R14 R13 K40 ["MaterialIndex"]
      100 NEWTABLE                         R14 0 3
      102 DUPTABLE                         R15 K52 [{"Material", "MinHeight", "MaxHeight", "MinSlope", "MaxSlope", "Priority"}]
      103 GETIMPORT                        R16 K54 [Enum.Material.Grass]
      105 SETTABLEKS                       R16 R15 K35 ["Material"]
      107 LOADK                            R16 K55 [0.84]
      108 SETTABLEKS                       R16 R15 K47 ["MinHeight"]
      110 LOADN                            R16 1
      111 SETTABLEKS                       R16 R15 K48 ["MaxHeight"]
      113 LOADN                            R16 0
      114 SETTABLEKS                       R16 R15 K49 ["MinSlope"]
      116 LOADN                            R16 30
      117 SETTABLEKS                       R16 R15 K50 ["MaxSlope"]
      119 LOADN                            R16 0
      120 SETTABLEKS                       R16 R15 K51 ["Priority"]
      122 DUPTABLE                         R16 K52 [{"Material", "MinHeight", "MaxHeight", "MinSlope", "MaxSlope", "Priority"}]
      123 GETIMPORT                        R17 K57 [Enum.Material.Rock]
      125 SETTABLEKS                       R17 R16 K35 ["Material"]
      127 LOADN                            R17 0
      128 SETTABLEKS                       R17 R16 K47 ["MinHeight"]
      130 LOADK                            R17 K58 [0.8]
      131 SETTABLEKS                       R17 R16 K48 ["MaxHeight"]
      133 LOADN                            R17 45
      134 SETTABLEKS                       R17 R16 K49 ["MinSlope"]
      136 LOADN                            R17 90
      137 SETTABLEKS                       R17 R16 K50 ["MaxSlope"]
      139 LOADN                            R17 1
      140 SETTABLEKS                       R17 R16 K51 ["Priority"]
      142 DUPTABLE                         R17 K52 [{"Material", "MinHeight", "MaxHeight", "MinSlope", "MaxSlope", "Priority"}]
      143 GETIMPORT                        R18 K60 [Enum.Material.Sand]
      145 SETTABLEKS                       R18 R17 K35 ["Material"]
      147 LOADK                            R18 K61 [0.7]
      148 SETTABLEKS                       R18 R17 K47 ["MinHeight"]
      150 LOADN                            R18 1
      151 SETTABLEKS                       R18 R17 K48 ["MaxHeight"]
      153 LOADN                            R18 0
      154 SETTABLEKS                       R18 R17 K49 ["MinSlope"]
      156 LOADN                            R18 25
      157 SETTABLEKS                       R18 R17 K50 ["MaxSlope"]
      159 LOADN                            R18 2
      160 SETTABLEKS                       R18 R17 K51 ["Priority"]
      162 SETLIST                          R14 R15 3 [1]
      164 SETTABLEKS                       R14 R13 K41 ["MaterialList"]
      166 SETTABLE                         R13 R11 R12
      167 GETTABLEKS                       R12 R3 K62 ["PlacementMode"]
      169 LOADB                            R13 1
      170 SETTABLE                         R13 R11 R12
      171 GETTABLEKS                       R12 R3 K63 ["Size"]
      173 LOADK                            R13 K64 [{512, 128, 512}]
      174 SETTABLE                         R13 R11 R12
      175 GETTABLEKS                       R12 R3 K65 ["SnapToVoxels"]
      177 LOADB                            R13 1
      178 SETTABLE                         R13 R11 R12
      179 GETTABLEKS                       R12 R3 K66 ["Transform"]
      181 GETIMPORT                        R13 K68 [CFrame.new]
      183 CALL                             R13 0 1
      184 SETTABLE                         R13 R11 R12
      185 GETTABLEKS                       R12 R3 K69 ["WaterLevel"]
      187 LOADK                            R13 K58 [0.8]
      188 SETTABLE                         R13 R11 R12
      189 SETTABLEKS                       R11 R10 K16 ["Defaults"]
      191 GETTABLEKS                       R11 R4 K10 ["BuildSettings"]
      193 SETTABLEKS                       R11 R10 K17 ["Id"]
      195 SETLIST                          R9 R10 1 [1]
      197 NEWTABLE                         R10 0 2
      199 DUPTABLE                         R11 K71 [{"Id", "Schema"}]
      200 GETTABLEKS                       R12 R5 K72 ["Region"]
      202 SETTABLEKS                       R12 R11 K17 ["Id"]
      204 DUPTABLE                         R12 K75 [{"Type", "Wireframe", "Rotation"}]
      205 GETTABLEKS                       R13 R5 K72 ["Region"]
      207 SETTABLEKS                       R13 R12 K73 ["Type"]
      209 LOADB                            R13 0
      210 SETTABLEKS                       R13 R12 K74 ["Wireframe"]
      212 LOADB                            R13 0
      213 SETTABLEKS                       R13 R12 K26 ["Rotation"]
      215 SETTABLEKS                       R12 R11 K70 ["Schema"]
      217 DUPTABLE                         R12 K71 [{"Id", "Schema"}]
      218 GETTABLEKS                       R13 R5 K76 ["Placement"]
      220 SETTABLEKS                       R13 R12 K17 ["Id"]
      222 DUPTABLE                         R13 K77 [{"Type"}]
      223 GETTABLEKS                       R14 R5 K76 ["Placement"]
      225 SETTABLEKS                       R14 R13 K73 ["Type"]
      227 SETTABLEKS                       R13 R12 K70 ["Schema"]
      229 SETLIST                          R10 R11 2 [1]
      231 GETTABLEKS                       R13 R8 K78 ["Lake"]
      233 GETTABLEKS                       R14 R7 K79 ["None"]
      235 MOVE                             R15 R9
      236 MOVE                             R16 R10
      237 NAMECALL                         R11 R1 K24 ["new"]
      239 CALL                             R11 5 1
      240 RETURN                           R11 1
