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
       70 LOADN                            R13 0
       71 SETTABLE                         R13 R11 R12
       72 GETTABLEKS                       R12 R3 K32 ["FillBottom"]
       74 LOADK                            R13 K33 [0.5]
       75 SETTABLE                         R13 R11 R12
       76 GETTABLEKS                       R12 R3 K34 ["NoiseScale"]
       78 LOADK                            R13 K30 [0.3]
       79 SETTABLE                         R13 R11 R12
       80 GETTABLEKS                       R12 R3 K35 ["Material"]
       82 DUPTABLE                         R13 K43 [{"FallbackMaterial", "Unit", "Min", "Max", "MaterialIndex", "MaterialList", "FillMaterial"}]
       83 GETIMPORT                        R14 K46 [Enum.Material.Grass]
       85 SETTABLEKS                       R14 R13 K36 ["FallbackMaterial"]
       87 GETTABLEKS                       R14 R6 K47 ["Percentage"]
       89 SETTABLEKS                       R14 R13 K37 ["Unit"]
       91 LOADN                            R14 0
       92 SETTABLEKS                       R14 R13 K38 ["Min"]
       94 LOADN                            R14 1
       95 SETTABLEKS                       R14 R13 K39 ["Max"]
       97 LOADN                            R14 1
       98 SETTABLEKS                       R14 R13 K40 ["MaterialIndex"]
      100 NEWTABLE                         R14 0 1
      102 DUPTABLE                         R15 K53 [{"Material", "MinHeight", "MaxHeight", "MinSlope", "MaxSlope", "Priority"}]
      103 GETIMPORT                        R16 K46 [Enum.Material.Grass]
      105 SETTABLEKS                       R16 R15 K35 ["Material"]
      107 LOADN                            R16 0
      108 SETTABLEKS                       R16 R15 K48 ["MinHeight"]
      110 LOADN                            R16 1
      111 SETTABLEKS                       R16 R15 K49 ["MaxHeight"]
      113 LOADN                            R16 0
      114 SETTABLEKS                       R16 R15 K50 ["MinSlope"]
      116 LOADN                            R16 90
      117 SETTABLEKS                       R16 R15 K51 ["MaxSlope"]
      119 LOADN                            R16 0
      120 SETTABLEKS                       R16 R15 K52 ["Priority"]
      122 SETLIST                          R14 R15 1 [1]
      124 SETTABLEKS                       R14 R13 K41 ["MaterialList"]
      126 GETIMPORT                        R14 K55 [Enum.Material.Sandstone]
      128 SETTABLEKS                       R14 R13 K42 ["FillMaterial"]
      130 SETTABLE                         R13 R11 R12
      131 GETTABLEKS                       R12 R3 K56 ["PlacementMode"]
      133 LOADB                            R13 1
      134 SETTABLE                         R13 R11 R12
      135 GETTABLEKS                       R12 R3 K57 ["RimHeight"]
      137 LOADK                            R13 K58 [0.15]
      138 SETTABLE                         R13 R11 R12
      139 GETTABLEKS                       R12 R3 K59 ["Size"]
      141 LOADK                            R13 K60 [{512, 152, 512}]
      142 SETTABLE                         R13 R11 R12
      143 GETTABLEKS                       R12 R3 K61 ["SnapToVoxels"]
      145 LOADB                            R13 1
      146 SETTABLE                         R13 R11 R12
      147 GETTABLEKS                       R12 R3 K62 ["Transform"]
      149 GETIMPORT                        R13 K64 [CFrame.new]
      151 CALL                             R13 0 1
      152 SETTABLE                         R13 R11 R12
      153 SETTABLEKS                       R11 R10 K16 ["Defaults"]
      155 GETTABLEKS                       R11 R4 K10 ["BuildSettings"]
      157 SETTABLEKS                       R11 R10 K17 ["Id"]
      159 SETLIST                          R9 R10 1 [1]
      161 NEWTABLE                         R10 0 2
      163 DUPTABLE                         R11 K66 [{"Id", "Schema"}]
      164 GETTABLEKS                       R12 R5 K67 ["Region"]
      166 SETTABLEKS                       R12 R11 K17 ["Id"]
      168 DUPTABLE                         R12 K70 [{"Type", "Wireframe", "Rotation"}]
      169 GETTABLEKS                       R13 R5 K67 ["Region"]
      171 SETTABLEKS                       R13 R12 K68 ["Type"]
      173 LOADB                            R13 0
      174 SETTABLEKS                       R13 R12 K69 ["Wireframe"]
      176 LOADB                            R13 0
      177 SETTABLEKS                       R13 R12 K26 ["Rotation"]
      179 SETTABLEKS                       R12 R11 K65 ["Schema"]
      181 DUPTABLE                         R12 K66 [{"Id", "Schema"}]
      182 GETTABLEKS                       R13 R5 K71 ["Placement"]
      184 SETTABLEKS                       R13 R12 K17 ["Id"]
      186 DUPTABLE                         R13 K72 [{"Type"}]
      187 GETTABLEKS                       R14 R5 K71 ["Placement"]
      189 SETTABLEKS                       R14 R13 K68 ["Type"]
      191 SETTABLEKS                       R13 R12 K65 ["Schema"]
      193 SETLIST                          R10 R11 2 [1]
      195 GETTABLEKS                       R13 R8 K73 ["Crater"]
      197 GETTABLEKS                       R14 R7 K74 ["None"]
      199 MOVE                             R15 R9
      200 MOVE                             R16 R10
      201 NAMECALL                         R11 R1 K24 ["new"]
      203 CALL                             R11 5 1
      204 RETURN                           R11 1
