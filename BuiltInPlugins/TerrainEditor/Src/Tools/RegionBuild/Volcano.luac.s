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
       72 GETTABLEKS                       R12 R3 K32 ["CraterDepth"]
       74 LOADK                            R13 K33 [0.6]
       75 SETTABLE                         R13 R11 R12
       76 GETTABLEKS                       R12 R3 K34 ["CraterRadius"]
       78 LOADK                            R13 K35 [0.1]
       79 SETTABLE                         R13 R11 R12
       80 GETTABLEKS                       R12 R3 K36 ["NoiseScale"]
       82 LOADK                            R13 K37 [0.2]
       83 SETTABLE                         R13 R11 R12
       84 GETTABLEKS                       R12 R3 K38 ["Material"]
       86 DUPTABLE                         R13 K46 [{"FallbackMaterial", "Unit", "Min", "Max", "MaterialIndex", "MaterialList", "FillMaterial"}]
       87 GETIMPORT                        R14 K49 [Enum.Material.Rock]
       89 SETTABLEKS                       R14 R13 K39 ["FallbackMaterial"]
       91 GETTABLEKS                       R14 R6 K50 ["Percentage"]
       93 SETTABLEKS                       R14 R13 K40 ["Unit"]
       95 LOADN                            R14 0
       96 SETTABLEKS                       R14 R13 K41 ["Min"]
       98 LOADN                            R14 1
       99 SETTABLEKS                       R14 R13 K42 ["Max"]
      101 LOADN                            R14 1
      102 SETTABLEKS                       R14 R13 K43 ["MaterialIndex"]
      104 NEWTABLE                         R14 0 3
      106 DUPTABLE                         R15 K56 [{"Material", "MinHeight", "MaxHeight", "MinSlope", "MaxSlope", "Priority"}]
      107 GETIMPORT                        R16 K49 [Enum.Material.Rock]
      109 SETTABLEKS                       R16 R15 K38 ["Material"]
      111 LOADK                            R16 K35 [0.1]
      112 SETTABLEKS                       R16 R15 K51 ["MinHeight"]
      114 LOADK                            R16 K57 [0.7]
      115 SETTABLEKS                       R16 R15 K52 ["MaxHeight"]
      117 LOADN                            R16 0
      118 SETTABLEKS                       R16 R15 K53 ["MinSlope"]
      120 LOADN                            R16 45
      121 SETTABLEKS                       R16 R15 K54 ["MaxSlope"]
      123 LOADN                            R16 0
      124 SETTABLEKS                       R16 R15 K55 ["Priority"]
      126 DUPTABLE                         R16 K56 [{"Material", "MinHeight", "MaxHeight", "MinSlope", "MaxSlope", "Priority"}]
      127 GETIMPORT                        R17 K59 [Enum.Material.Grass]
      129 SETTABLEKS                       R17 R16 K38 ["Material"]
      131 LOADN                            R17 0
      132 SETTABLEKS                       R17 R16 K51 ["MinHeight"]
      134 LOADK                            R17 K30 [0.5]
      135 SETTABLEKS                       R17 R16 K52 ["MaxHeight"]
      137 LOADN                            R17 0
      138 SETTABLEKS                       R17 R16 K53 ["MinSlope"]
      140 LOADN                            R17 30
      141 SETTABLEKS                       R17 R16 K54 ["MaxSlope"]
      143 LOADN                            R17 1
      144 SETTABLEKS                       R17 R16 K55 ["Priority"]
      146 DUPTABLE                         R17 K56 [{"Material", "MinHeight", "MaxHeight", "MinSlope", "MaxSlope", "Priority"}]
      147 GETIMPORT                        R18 K61 [Enum.Material.Basalt]
      149 SETTABLEKS                       R18 R17 K38 ["Material"]
      151 LOADK                            R18 K30 [0.5]
      152 SETTABLEKS                       R18 R17 K51 ["MinHeight"]
      154 LOADN                            R18 1
      155 SETTABLEKS                       R18 R17 K52 ["MaxHeight"]
      157 LOADN                            R18 10
      158 SETTABLEKS                       R18 R17 K53 ["MinSlope"]
      160 LOADN                            R18 90
      161 SETTABLEKS                       R18 R17 K54 ["MaxSlope"]
      163 LOADN                            R18 2
      164 SETTABLEKS                       R18 R17 K55 ["Priority"]
      166 SETLIST                          R14 R15 3 [1]
      168 SETTABLEKS                       R14 R13 K44 ["MaterialList"]
      170 GETIMPORT                        R14 K63 [Enum.Material.CrackedLava]
      172 SETTABLEKS                       R14 R13 K45 ["FillMaterial"]
      174 SETTABLE                         R13 R11 R12
      175 GETTABLEKS                       R12 R3 K64 ["PlacementMode"]
      177 LOADB                            R13 1
      178 SETTABLE                         R13 R11 R12
      179 GETTABLEKS                       R12 R3 K65 ["Size"]
      181 LOADK                            R13 K66 [{512, 152, 512}]
      182 SETTABLE                         R13 R11 R12
      183 GETTABLEKS                       R12 R3 K67 ["SnapToVoxels"]
      185 LOADB                            R13 1
      186 SETTABLE                         R13 R11 R12
      187 GETTABLEKS                       R12 R3 K68 ["Transform"]
      189 GETIMPORT                        R13 K70 [CFrame.new]
      191 CALL                             R13 0 1
      192 SETTABLE                         R13 R11 R12
      193 SETTABLEKS                       R11 R10 K16 ["Defaults"]
      195 GETTABLEKS                       R11 R4 K10 ["BuildSettings"]
      197 SETTABLEKS                       R11 R10 K17 ["Id"]
      199 SETLIST                          R9 R10 1 [1]
      201 NEWTABLE                         R10 0 2
      203 DUPTABLE                         R11 K72 [{"Id", "Schema"}]
      204 GETTABLEKS                       R12 R5 K73 ["Region"]
      206 SETTABLEKS                       R12 R11 K17 ["Id"]
      208 DUPTABLE                         R12 K76 [{"Type", "Wireframe", "Rotation"}]
      209 GETTABLEKS                       R13 R5 K73 ["Region"]
      211 SETTABLEKS                       R13 R12 K74 ["Type"]
      213 LOADB                            R13 0
      214 SETTABLEKS                       R13 R12 K75 ["Wireframe"]
      216 LOADB                            R13 0
      217 SETTABLEKS                       R13 R12 K26 ["Rotation"]
      219 SETTABLEKS                       R12 R11 K71 ["Schema"]
      221 DUPTABLE                         R12 K72 [{"Id", "Schema"}]
      222 GETTABLEKS                       R13 R5 K77 ["Placement"]
      224 SETTABLEKS                       R13 R12 K17 ["Id"]
      226 DUPTABLE                         R13 K78 [{"Type"}]
      227 GETTABLEKS                       R14 R5 K77 ["Placement"]
      229 SETTABLEKS                       R14 R13 K74 ["Type"]
      231 SETTABLEKS                       R13 R12 K71 ["Schema"]
      233 SETLIST                          R10 R11 2 [1]
      235 GETTABLEKS                       R13 R8 K79 ["Volcano"]
      237 GETTABLEKS                       R14 R7 K80 ["None"]
      239 MOVE                             R15 R9
      240 MOVE                             R16 R10
      241 NAMECALL                         R11 R1 K24 ["new"]
      243 CALL                             R11 5 1
      244 RETURN                           R11 1
