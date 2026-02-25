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
       66 LOADK                            R13 K30 [0.5]
       67 SETTABLE                         R13 R11 R12
       68 GETTABLEKS                       R12 R3 K31 ["BlendingEdge"]
       70 LOADN                            R13 0
       71 SETTABLE                         R13 R11 R12
       72 GETTABLEKS                       R12 R3 K32 ["NoiseScale"]
       74 LOADK                            R13 K33 [0.2]
       75 SETTABLE                         R13 R11 R12
       76 GETTABLEKS                       R12 R3 K34 ["Material"]
       78 DUPTABLE                         R13 K41 [{"FallbackMaterial", "Unit", "Min", "Max", "MaterialIndex", "MaterialList"}]
       79 GETIMPORT                        R14 K44 [Enum.Material.Basalt]
       81 SETTABLEKS                       R14 R13 K35 ["FallbackMaterial"]
       83 GETTABLEKS                       R14 R6 K45 ["Percentage"]
       85 SETTABLEKS                       R14 R13 K36 ["Unit"]
       87 LOADN                            R14 0
       88 SETTABLEKS                       R14 R13 K37 ["Min"]
       90 LOADN                            R14 1
       91 SETTABLEKS                       R14 R13 K38 ["Max"]
       93 LOADN                            R14 1
       94 SETTABLEKS                       R14 R13 K39 ["MaterialIndex"]
       96 NEWTABLE                         R14 0 4
       98 DUPTABLE                         R15 K51 [{"Material", "MinHeight", "MaxHeight", "MinSlope", "MaxSlope", "Priority"}]
       99 GETIMPORT                        R16 K53 [Enum.Material.Rock]
      101 SETTABLEKS                       R16 R15 K34 ["Material"]
      103 LOADN                            R16 0
      104 SETTABLEKS                       R16 R15 K46 ["MinHeight"]
      106 LOADK                            R16 K54 [0.7]
      107 SETTABLEKS                       R16 R15 K47 ["MaxHeight"]
      109 LOADN                            R16 40
      110 SETTABLEKS                       R16 R15 K48 ["MinSlope"]
      112 LOADN                            R16 90
      113 SETTABLEKS                       R16 R15 K49 ["MaxSlope"]
      115 LOADN                            R16 0
      116 SETTABLEKS                       R16 R15 K50 ["Priority"]
      118 DUPTABLE                         R16 K51 [{"Material", "MinHeight", "MaxHeight", "MinSlope", "MaxSlope", "Priority"}]
      119 GETIMPORT                        R17 K56 [Enum.Material.Grass]
      121 SETTABLEKS                       R17 R16 K34 ["Material"]
      123 LOADN                            R17 0
      124 SETTABLEKS                       R17 R16 K46 ["MinHeight"]
      126 LOADK                            R17 K57 [0.3]
      127 SETTABLEKS                       R17 R16 K47 ["MaxHeight"]
      129 LOADN                            R17 0
      130 SETTABLEKS                       R17 R16 K48 ["MinSlope"]
      132 LOADN                            R17 90
      133 SETTABLEKS                       R17 R16 K49 ["MaxSlope"]
      135 LOADN                            R17 1
      136 SETTABLEKS                       R17 R16 K50 ["Priority"]
      138 DUPTABLE                         R17 K51 [{"Material", "MinHeight", "MaxHeight", "MinSlope", "MaxSlope", "Priority"}]
      139 GETIMPORT                        R18 K59 [Enum.Material.Snow]
      141 SETTABLEKS                       R18 R17 K34 ["Material"]
      143 LOADK                            R18 K60 [0.55]
      144 SETTABLEKS                       R18 R17 K46 ["MinHeight"]
      146 LOADK                            R18 K61 [0.83]
      147 SETTABLEKS                       R18 R17 K47 ["MaxHeight"]
      149 LOADN                            R18 30
      150 SETTABLEKS                       R18 R17 K48 ["MinSlope"]
      152 LOADN                            R18 90
      153 SETTABLEKS                       R18 R17 K49 ["MaxSlope"]
      155 LOADN                            R18 2
      156 SETTABLEKS                       R18 R17 K50 ["Priority"]
      158 DUPTABLE                         R18 K51 [{"Material", "MinHeight", "MaxHeight", "MinSlope", "MaxSlope", "Priority"}]
      159 GETIMPORT                        R19 K59 [Enum.Material.Snow]
      161 SETTABLEKS                       R19 R18 K34 ["Material"]
      163 LOADK                            R19 K62 [0.74]
      164 SETTABLEKS                       R19 R18 K46 ["MinHeight"]
      166 LOADN                            R19 1
      167 SETTABLEKS                       R19 R18 K47 ["MaxHeight"]
      169 LOADN                            R19 0
      170 SETTABLEKS                       R19 R18 K48 ["MinSlope"]
      172 LOADN                            R19 90
      173 SETTABLEKS                       R19 R18 K49 ["MaxSlope"]
      175 LOADN                            R19 3
      176 SETTABLEKS                       R19 R18 K50 ["Priority"]
      178 SETLIST                          R14 R15 4 [1]
      180 SETTABLEKS                       R14 R13 K40 ["MaterialList"]
      182 SETTABLE                         R13 R11 R12
      183 GETTABLEKS                       R12 R3 K63 ["PlacementMode"]
      185 LOADB                            R13 1
      186 SETTABLE                         R13 R11 R12
      187 GETTABLEKS                       R12 R3 K64 ["Size"]
      189 LOADK                            R13 K65 [{512, 200, 512}]
      190 SETTABLE                         R13 R11 R12
      191 GETTABLEKS                       R12 R3 K66 ["SnapToVoxels"]
      193 LOADB                            R13 1
      194 SETTABLE                         R13 R11 R12
      195 GETTABLEKS                       R12 R3 K67 ["Transform"]
      197 GETIMPORT                        R13 K69 [CFrame.new]
      199 CALL                             R13 0 1
      200 SETTABLE                         R13 R11 R12
      201 SETTABLEKS                       R11 R10 K16 ["Defaults"]
      203 GETTABLEKS                       R11 R4 K10 ["BuildSettings"]
      205 SETTABLEKS                       R11 R10 K17 ["Id"]
      207 SETLIST                          R9 R10 1 [1]
      209 NEWTABLE                         R10 0 2
      211 DUPTABLE                         R11 K71 [{"Id", "Schema"}]
      212 GETTABLEKS                       R12 R5 K72 ["Region"]
      214 SETTABLEKS                       R12 R11 K17 ["Id"]
      216 DUPTABLE                         R12 K75 [{"Type", "Wireframe", "Rotation"}]
      217 GETTABLEKS                       R13 R5 K72 ["Region"]
      219 SETTABLEKS                       R13 R12 K73 ["Type"]
      221 LOADB                            R13 0
      222 SETTABLEKS                       R13 R12 K74 ["Wireframe"]
      224 LOADB                            R13 0
      225 SETTABLEKS                       R13 R12 K26 ["Rotation"]
      227 SETTABLEKS                       R12 R11 K70 ["Schema"]
      229 DUPTABLE                         R12 K71 [{"Id", "Schema"}]
      230 GETTABLEKS                       R13 R5 K76 ["Placement"]
      232 SETTABLEKS                       R13 R12 K17 ["Id"]
      234 DUPTABLE                         R13 K77 [{"Type"}]
      235 GETTABLEKS                       R14 R5 K76 ["Placement"]
      237 SETTABLEKS                       R14 R13 K73 ["Type"]
      239 SETTABLEKS                       R13 R12 K70 ["Schema"]
      241 SETLIST                          R10 R11 2 [1]
      243 GETTABLEKS                       R13 R8 K78 ["Mountain"]
      245 GETTABLEKS                       R14 R7 K79 ["None"]
      247 MOVE                             R15 R9
      248 MOVE                             R16 R10
      249 NAMECALL                         R11 R1 K24 ["new"]
      251 CALL                             R11 5 1
      252 RETURN                           R11 1
