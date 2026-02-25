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
       70 LOADNIL                          R13
       71 SETTABLE                         R13 R11 R12
       72 GETTABLEKS                       R12 R3 K32 ["NoiseScale"]
       74 LOADK                            R13 K33 [0.3]
       75 SETTABLE                         R13 R11 R12
       76 GETTABLEKS                       R12 R3 K34 ["Material"]
       78 DUPTABLE                         R13 K41 [{"FallbackMaterial", "Unit", "Min", "Max", "MaterialIndex", "MaterialList"}]
       79 GETIMPORT                        R14 K44 [Enum.Material.Grass]
       81 SETTABLEKS                       R14 R13 K35 ["FallbackMaterial"]
       83 GETTABLEKS                       R14 R6 K45 ["Percentage"]
       85 SETTABLEKS                       R14 R13 K36 ["Unit"]
       87 LOADN                            R14 0
       88 SETTABLEKS                       R14 R13 K37 ["Min"]
       90 LOADN                            R14 1
       91 SETTABLEKS                       R14 R13 K38 ["Max"]
       93 LOADN                            R14 1
       94 SETTABLEKS                       R14 R13 K39 ["MaterialIndex"]
       96 NEWTABLE                         R14 0 1
       98 DUPTABLE                         R15 K51 [{"Material", "MinHeight", "MaxHeight", "MinSlope", "MaxSlope", "Priority"}]
       99 GETIMPORT                        R16 K44 [Enum.Material.Grass]
      101 SETTABLEKS                       R16 R15 K34 ["Material"]
      103 LOADN                            R16 0
      104 SETTABLEKS                       R16 R15 K46 ["MinHeight"]
      106 LOADN                            R16 1
      107 SETTABLEKS                       R16 R15 K47 ["MaxHeight"]
      109 LOADN                            R16 0
      110 SETTABLEKS                       R16 R15 K48 ["MinSlope"]
      112 LOADN                            R16 90
      113 SETTABLEKS                       R16 R15 K49 ["MaxSlope"]
      115 LOADN                            R16 0
      116 SETTABLEKS                       R16 R15 K50 ["Priority"]
      118 SETLIST                          R14 R15 1 [1]
      120 SETTABLEKS                       R14 R13 K40 ["MaterialList"]
      122 SETTABLE                         R13 R11 R12
      123 GETTABLEKS                       R12 R3 K52 ["PlacementMode"]
      125 LOADB                            R13 1
      126 SETTABLE                         R13 R11 R12
      127 GETTABLEKS                       R12 R3 K53 ["Size"]
      129 LOADK                            R13 K54 [{512, 64, 512}]
      130 SETTABLE                         R13 R11 R12
      131 GETTABLEKS                       R12 R3 K55 ["SnapToVoxels"]
      133 LOADB                            R13 1
      134 SETTABLE                         R13 R11 R12
      135 GETTABLEKS                       R12 R3 K56 ["Transform"]
      137 GETIMPORT                        R13 K58 [CFrame.new]
      139 CALL                             R13 0 1
      140 SETTABLE                         R13 R11 R12
      141 SETTABLEKS                       R11 R10 K16 ["Defaults"]
      143 GETTABLEKS                       R11 R4 K10 ["BuildSettings"]
      145 SETTABLEKS                       R11 R10 K17 ["Id"]
      147 SETLIST                          R9 R10 1 [1]
      149 NEWTABLE                         R10 0 2
      151 DUPTABLE                         R11 K60 [{"Id", "Schema"}]
      152 GETTABLEKS                       R12 R5 K61 ["Region"]
      154 SETTABLEKS                       R12 R11 K17 ["Id"]
      156 DUPTABLE                         R12 K64 [{"Type", "Wireframe", "Rotation"}]
      157 GETTABLEKS                       R13 R5 K61 ["Region"]
      159 SETTABLEKS                       R13 R12 K62 ["Type"]
      161 LOADB                            R13 0
      162 SETTABLEKS                       R13 R12 K63 ["Wireframe"]
      164 LOADB                            R13 0
      165 SETTABLEKS                       R13 R12 K26 ["Rotation"]
      167 SETTABLEKS                       R12 R11 K59 ["Schema"]
      169 DUPTABLE                         R12 K60 [{"Id", "Schema"}]
      170 GETTABLEKS                       R13 R5 K65 ["Placement"]
      172 SETTABLEKS                       R13 R12 K17 ["Id"]
      174 DUPTABLE                         R13 K66 [{"Type"}]
      175 GETTABLEKS                       R14 R5 K65 ["Placement"]
      177 SETTABLEKS                       R14 R13 K62 ["Type"]
      179 SETTABLEKS                       R13 R12 K59 ["Schema"]
      181 SETLIST                          R10 R11 2 [1]
      183 GETTABLEKS                       R13 R8 K67 ["Plain"]
      185 GETTABLEKS                       R14 R7 K68 ["None"]
      187 MOVE                             R15 R9
      188 MOVE                             R16 R10
      189 NAMECALL                         R11 R1 K24 ["new"]
      191 CALL                             R11 5 1
      192 RETURN                           R11 1
