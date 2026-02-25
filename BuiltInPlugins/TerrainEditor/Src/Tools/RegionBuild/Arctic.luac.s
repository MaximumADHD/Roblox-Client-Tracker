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
       66 LOADK                            R13 K30 [0.3]
       67 SETTABLE                         R13 R11 R12
       68 GETTABLEKS                       R12 R3 K31 ["BlendingEdge"]
       70 LOADNIL                          R13
       71 SETTABLE                         R13 R11 R12
       72 GETTABLEKS                       R12 R3 K32 ["NoiseScale"]
       74 LOADK                            R13 K30 [0.3]
       75 SETTABLE                         R13 R11 R12
       76 GETTABLEKS                       R12 R3 K33 ["Material"]
       78 DUPTABLE                         R13 K40 [{"Unit", "FallbackMaterial", "Min", "Max", "MaterialIndex", "MaterialList"}]
       79 GETTABLEKS                       R14 R6 K41 ["Percentage"]
       81 SETTABLEKS                       R14 R13 K34 ["Unit"]
       83 GETIMPORT                        R14 K44 [Enum.Material.Ice]
       85 SETTABLEKS                       R14 R13 K35 ["FallbackMaterial"]
       87 LOADN                            R14 0
       88 SETTABLEKS                       R14 R13 K36 ["Min"]
       90 LOADN                            R14 1
       91 SETTABLEKS                       R14 R13 K37 ["Max"]
       93 LOADN                            R14 1
       94 SETTABLEKS                       R14 R13 K38 ["MaterialIndex"]
       96 NEWTABLE                         R14 0 2
       98 DUPTABLE                         R15 K50 [{"Material", "MinHeight", "MaxHeight", "MinSlope", "MaxSlope", "Priority"}]
       99 GETIMPORT                        R16 K52 [Enum.Material.Snow]
      101 SETTABLEKS                       R16 R15 K33 ["Material"]
      103 LOADN                            R16 0
      104 SETTABLEKS                       R16 R15 K45 ["MinHeight"]
      106 LOADN                            R16 1
      107 SETTABLEKS                       R16 R15 K46 ["MaxHeight"]
      109 LOADN                            R16 0
      110 SETTABLEKS                       R16 R15 K47 ["MinSlope"]
      112 LOADN                            R16 15
      113 SETTABLEKS                       R16 R15 K48 ["MaxSlope"]
      115 LOADN                            R16 0
      116 SETTABLEKS                       R16 R15 K49 ["Priority"]
      118 DUPTABLE                         R16 K50 [{"Material", "MinHeight", "MaxHeight", "MinSlope", "MaxSlope", "Priority"}]
      119 GETIMPORT                        R17 K44 [Enum.Material.Ice]
      121 SETTABLEKS                       R17 R16 K33 ["Material"]
      123 LOADN                            R17 0
      124 SETTABLEKS                       R17 R16 K45 ["MinHeight"]
      126 LOADN                            R17 1
      127 SETTABLEKS                       R17 R16 K46 ["MaxHeight"]
      129 LOADN                            R17 0
      130 SETTABLEKS                       R17 R16 K47 ["MinSlope"]
      132 LOADN                            R17 90
      133 SETTABLEKS                       R17 R16 K48 ["MaxSlope"]
      135 LOADN                            R17 1
      136 SETTABLEKS                       R17 R16 K49 ["Priority"]
      138 SETLIST                          R14 R15 2 [1]
      140 SETTABLEKS                       R14 R13 K39 ["MaterialList"]
      142 SETTABLE                         R13 R11 R12
      143 GETTABLEKS                       R12 R3 K53 ["PlacementMode"]
      145 LOADB                            R13 1
      146 SETTABLE                         R13 R11 R12
      147 GETTABLEKS                       R12 R3 K54 ["Size"]
      149 LOADK                            R13 K55 [{512, 128, 512}]
      150 SETTABLE                         R13 R11 R12
      151 GETTABLEKS                       R12 R3 K56 ["SnapToVoxels"]
      153 LOADB                            R13 1
      154 SETTABLE                         R13 R11 R12
      155 GETTABLEKS                       R12 R3 K57 ["Transform"]
      157 GETIMPORT                        R13 K59 [CFrame.new]
      159 CALL                             R13 0 1
      160 SETTABLE                         R13 R11 R12
      161 SETTABLEKS                       R11 R10 K16 ["Defaults"]
      163 GETTABLEKS                       R11 R4 K10 ["BuildSettings"]
      165 SETTABLEKS                       R11 R10 K17 ["Id"]
      167 SETLIST                          R9 R10 1 [1]
      169 NEWTABLE                         R10 0 2
      171 DUPTABLE                         R11 K61 [{"Id", "Schema"}]
      172 GETTABLEKS                       R12 R5 K62 ["Region"]
      174 SETTABLEKS                       R12 R11 K17 ["Id"]
      176 DUPTABLE                         R12 K65 [{"Type", "Wireframe", "Rotation"}]
      177 GETTABLEKS                       R13 R5 K62 ["Region"]
      179 SETTABLEKS                       R13 R12 K63 ["Type"]
      181 LOADB                            R13 0
      182 SETTABLEKS                       R13 R12 K64 ["Wireframe"]
      184 LOADB                            R13 0
      185 SETTABLEKS                       R13 R12 K26 ["Rotation"]
      187 SETTABLEKS                       R12 R11 K60 ["Schema"]
      189 DUPTABLE                         R12 K61 [{"Id", "Schema"}]
      190 GETTABLEKS                       R13 R5 K66 ["Placement"]
      192 SETTABLEKS                       R13 R12 K17 ["Id"]
      194 DUPTABLE                         R13 K67 [{"Type"}]
      195 GETTABLEKS                       R14 R5 K66 ["Placement"]
      197 SETTABLEKS                       R14 R13 K63 ["Type"]
      199 SETTABLEKS                       R13 R12 K60 ["Schema"]
      201 SETLIST                          R10 R11 2 [1]
      203 GETTABLEKS                       R13 R8 K68 ["Arctic"]
      205 GETTABLEKS                       R14 R7 K69 ["None"]
      207 MOVE                             R15 R9
      208 MOVE                             R16 R10
      209 NAMECALL                         R11 R1 K24 ["new"]
      211 CALL                             R11 5 1
      212 RETURN                           R11 1
