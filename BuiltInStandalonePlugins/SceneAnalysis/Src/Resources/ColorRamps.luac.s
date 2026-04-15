PROTO_0:
        0 GETIMPORT                        R3 K2 [Color3.new]
        2 LOADN                            R4 0
        3 LOADN                            R5 0
        4 LOADN                            R6 0
        5 CALL                             R3 3 1
        6 LOADK                            R4 K3 [0.25]
        7 NAMECALL                         R1 R0 K4 ["Lerp"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["darkenForHeader"]
        6 GETIMPORT                        R1 K4 [table.freeze]
        8 NEWTABLE                         R2 0 5
       10 GETIMPORT                        R3 K7 [Color3.fromHex]
       12 LOADK                            R4 K8 ["#4a2882"]
       13 CALL                             R3 1 1
       14 GETIMPORT                        R4 K7 [Color3.fromHex]
       16 LOADK                            R5 K9 ["#5c6aa7"]
       17 CALL                             R4 1 1
       18 GETIMPORT                        R5 K7 [Color3.fromHex]
       20 LOADK                            R6 K10 ["#4ea4a4"]
       21 CALL                             R5 1 1
       22 GETIMPORT                        R6 K7 [Color3.fromHex]
       24 LOADK                            R7 K11 ["#86d5a0"]
       25 CALL                             R6 1 1
       26 GETIMPORT                        R7 K7 [Color3.fromHex]
       28 LOADK                            R8 K12 ["#eee5a5"]
       29 CALL                             R7 1 -1
       30 SETLIST                          R2 R3 -1 [1]
       32 CALL                             R1 1 1
       33 SETTABLEKS                       R1 R0 K13 ["Default"]
       35 GETIMPORT                        R1 K4 [table.freeze]
       37 NEWTABLE                         R2 0 5
       39 GETIMPORT                        R3 K15 [Color3.fromRGB]
       41 LOADN                            R4 26
       42 LOADN                            R5 87
       43 LOADN                            R6 129
       44 CALL                             R3 3 1
       45 GETIMPORT                        R4 K15 [Color3.fromRGB]
       47 LOADN                            R5 47
       48 LOADN                            R6 140
       49 LOADN                            R7 186
       50 CALL                             R4 3 1
       51 GETIMPORT                        R5 K15 [Color3.fromRGB]
       53 LOADN                            R6 66
       54 LOADN                            R7 168
       55 LOADN                            R8 108
       56 CALL                             R5 3 1
       57 GETIMPORT                        R6 K7 [Color3.fromHex]
       59 LOADK                            R7 K11 ["#86d5a0"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K7 [Color3.fromHex]
       63 LOADK                            R8 K12 ["#eee5a5"]
       64 CALL                             R7 1 -1
       65 SETLIST                          R2 R3 -1 [1]
       67 CALL                             R1 1 1
       68 SETTABLEKS                       R1 R0 K16 ["IceBlue"]
       70 GETIMPORT                        R1 K4 [table.freeze]
       72 NEWTABLE                         R2 0 5
       74 GETIMPORT                        R3 K15 [Color3.fromRGB]
       76 LOADN                            R4 21
       77 LOADN                            R5 78
       78 LOADN                            R6 22
       79 CALL                             R3 3 1
       80 GETIMPORT                        R4 K15 [Color3.fromRGB]
       82 LOADN                            R5 50
       83 LOADN                            R6 129
       84 LOADN                            R7 83
       85 CALL                             R4 3 1
       86 GETIMPORT                        R5 K15 [Color3.fromRGB]
       88 LOADN                            R6 80
       89 LOADN                            R7 189
       90 LOADN                            R8 77
       91 CALL                             R5 3 1
       92 GETIMPORT                        R6 K15 [Color3.fromRGB]
       94 LOADN                            R7 165
       95 LOADN                            R8 196
       96 LOADN                            R9 67
       97 CALL                             R6 3 1
       98 GETIMPORT                        R7 K7 [Color3.fromHex]
      100 LOADK                            R8 K12 ["#eee5a5"]
      101 CALL                             R7 1 -1
      102 SETLIST                          R2 R3 -1 [1]
      104 CALL                             R1 1 1
      105 SETTABLEKS                       R1 R0 K17 ["Forest"]
      107 GETIMPORT                        R1 K4 [table.freeze]
      109 DUPTABLE                         R2 K31 [{"Opaque", "Transparent", "Terrain", "Grass", "UI", "Decal", "Cloud", "GenericPostProcess", "SSAO", "DOF", "Particles", "Sky", "Shadows"}]
      110 GETIMPORT                        R3 K15 [Color3.fromRGB]
      112 LOADN                            R4 40
      113 LOADN                            R5 123
      114 LOADN                            R6 168
      115 CALL                             R3 3 1
      116 SETTABLEKS                       R3 R2 K18 ["Opaque"]
      118 GETIMPORT                        R3 K15 [Color3.fromRGB]
      120 LOADN                            R4 56
      121 LOADN                            R5 160
      122 LOADN                            R6 203
      123 CALL                             R3 3 1
      124 SETTABLEKS                       R3 R2 K19 ["Transparent"]
      126 GETIMPORT                        R3 K15 [Color3.fromRGB]
      128 LOADN                            R4 42
      129 LOADN                            R5 132
      130 LOADN                            R6 37
      131 CALL                             R3 3 1
      132 SETTABLEKS                       R3 R2 K20 ["Terrain"]
      134 GETIMPORT                        R3 K15 [Color3.fromRGB]
      136 LOADN                            R4 82
      137 LOADN                            R5 207
      138 LOADN                            R6 131
      139 CALL                             R3 3 1
      140 SETTABLEKS                       R3 R2 K21 ["Grass"]
      142 GETIMPORT                        R3 K15 [Color3.fromRGB]
      144 LOADN                            R4 145
      145 LOADN                            R5 179
      146 LOADN                            R6 49
      147 CALL                             R3 3 1
      148 SETTABLEKS                       R3 R2 K22 ["UI"]
      150 GETIMPORT                        R3 K15 [Color3.fromRGB]
      152 LOADN                            R4 88
      153 LOADN                            R5 197
      154 LOADN                            R6 232
      155 CALL                             R3 3 1
      156 SETTABLEKS                       R3 R2 K23 ["Decal"]
      158 GETIMPORT                        R3 K15 [Color3.fromRGB]
      160 LOADN                            R4 124
      161 LOADN                            R5 217
      162 LOADN                            R6 244
      163 CALL                             R3 3 1
      164 SETTABLEKS                       R3 R2 K24 ["Cloud"]
      166 GETIMPORT                        R3 K15 [Color3.fromRGB]
      168 LOADN                            R4 74
      169 LOADN                            R5 187
      170 LOADN                            R6 119
      171 CALL                             R3 3 1
      172 SETTABLEKS                       R3 R2 K25 ["GenericPostProcess"]
      174 GETIMPORT                        R3 K15 [Color3.fromRGB]
      176 LOADN                            R4 33
      177 LOADN                            R5 105
      178 LOADN                            R6 149
      179 CALL                             R3 3 1
      180 SETTABLEKS                       R3 R2 K26 ["SSAO"]
      182 GETIMPORT                        R3 K15 [Color3.fromRGB]
      184 LOADN                            R4 66
      185 LOADN                            R5 168
      186 LOADN                            R6 108
      187 CALL                             R3 3 1
      188 SETTABLEKS                       R3 R2 K27 ["DOF"]
      190 GETIMPORT                        R3 K15 [Color3.fromRGB]
      192 LOADN                            R4 165
      193 LOADN                            R5 196
      194 LOADN                            R6 67
      195 CALL                             R3 3 1
      196 SETTABLEKS                       R3 R2 K28 ["Particles"]
      198 GETIMPORT                        R3 K15 [Color3.fromRGB]
      200 LOADN                            R4 191
      201 LOADN                            R5 214
      202 LOADN                            R6 115
      203 CALL                             R3 3 1
      204 SETTABLEKS                       R3 R2 K29 ["Sky"]
      206 GETIMPORT                        R3 K15 [Color3.fromRGB]
      208 LOADN                            R4 81
      209 LOADN                            R5 37
      210 LOADN                            R6 155
      211 CALL                             R3 3 1
      212 SETTABLEKS                       R3 R2 K30 ["Shadows"]
      214 CALL                             R1 1 1
      215 SETTABLEKS                       R1 R0 K32 ["TriangleCategories"]
      217 GETIMPORT                        R1 K4 [table.freeze]
      219 MOVE                             R2 R0
      220 CALL                             R1 1 -1
      221 RETURN                           R1 -1
