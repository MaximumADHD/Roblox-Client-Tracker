PROTO_0:
        0 DUPTABLE                         R1 K2 [{"Color", "LightMode"}]
        1 DUPTABLE                         R2 K7 [{"Shift", "ActionEmphasis", "ActionSoftEmphasis", "ActionSubEmphasis"}]
        2 DUPTABLE                         R3 K12 [{"Shift_100", "Shift_200", "Shift_300", "Shift_400"}]
        3 DUPTABLE                         R4 K16 [{["Color3"], ["Transparency"] = 0.96}]
        4 GETIMPORT                        R5 K18 [Color3.fromRGB]
        6 LOADN                            R6 27
        7 LOADN                            R7 37
        8 LOADN                            R8 75
        9 CALL                             R5 3 1
       10 SETTABLEKS                       R5 R4 K13 ["Color3"]
       12 SETTABLEKS                       R4 R3 K8 ["Shift_100"]
       14 DUPTABLE                         R4 K20 [{["Color3"], ["Transparency"] = 0.92}]
       15 GETIMPORT                        R5 K18 [Color3.fromRGB]
       17 LOADN                            R6 27
       18 LOADN                            R7 37
       19 LOADN                            R8 75
       20 CALL                             R5 3 1
       21 SETTABLEKS                       R5 R4 K13 ["Color3"]
       23 SETTABLEKS                       R4 R3 K9 ["Shift_200"]
       25 DUPTABLE                         R4 K22 [{["Color3"], ["Transparency"] = 0.88}]
       26 GETIMPORT                        R5 K18 [Color3.fromRGB]
       28 LOADN                            R6 27
       29 LOADN                            R7 37
       30 LOADN                            R8 75
       31 CALL                             R5 3 1
       32 SETTABLEKS                       R5 R4 K13 ["Color3"]
       34 SETTABLEKS                       R4 R3 K10 ["Shift_300"]
       36 DUPTABLE                         R4 K24 [{["Color3"], ["Transparency"] = 0.84}]
       37 GETIMPORT                        R5 K18 [Color3.fromRGB]
       39 LOADN                            R6 27
       40 LOADN                            R7 37
       41 LOADN                            R8 75
       42 CALL                             R5 3 1
       43 SETTABLEKS                       R5 R4 K13 ["Color3"]
       45 SETTABLEKS                       R4 R3 K11 ["Shift_400"]
       47 SETTABLEKS                       R3 R2 K3 ["Shift"]
       49 DUPTABLE                         R3 K28 [{"Background", "Foreground", "Border"}]
       50 DUPTABLE                         R4 K30 [{["Color3"], ["Transparency"] = 0}]
       51 GETIMPORT                        R5 K18 [Color3.fromRGB]
       53 LOADN                            R6 51
       54 LOADN                            R7 95
       55 LOADN                            R8 255
       56 CALL                             R5 3 1
       57 SETTABLEKS                       R5 R4 K13 ["Color3"]
       59 SETTABLEKS                       R4 R3 K25 ["Background"]
       61 DUPTABLE                         R4 K30 [{["Color3"], ["Transparency"] = 0}]
       62 GETIMPORT                        R5 K18 [Color3.fromRGB]
       64 LOADN                            R6 247
       65 LOADN                            R7 247
       66 LOADN                            R8 248
       67 CALL                             R5 3 1
       68 SETTABLEKS                       R5 R4 K13 ["Color3"]
       70 SETTABLEKS                       R4 R3 K26 ["Foreground"]
       72 DUPTABLE                         R4 K32 [{["Color3"], ["Transparency"] = 1}]
       73 GETIMPORT                        R5 K18 [Color3.fromRGB]
       75 LOADN                            R6 0
       76 LOADN                            R7 0
       77 LOADN                            R8 0
       78 CALL                             R5 3 1
       79 SETTABLEKS                       R5 R4 K13 ["Color3"]
       81 SETTABLEKS                       R4 R3 K27 ["Border"]
       83 SETTABLEKS                       R3 R2 K4 ["ActionEmphasis"]
       85 DUPTABLE                         R3 K28 [{"Background", "Foreground", "Border"}]
       86 DUPTABLE                         R4 K34 [{["Color3"], ["Transparency"] = 0.7}]
       87 GETIMPORT                        R5 K18 [Color3.fromRGB]
       89 LOADN                            R6 51
       90 LOADN                            R7 95
       91 LOADN                            R8 255
       92 CALL                             R5 3 1
       93 SETTABLEKS                       R5 R4 K13 ["Color3"]
       95 SETTABLEKS                       R4 R3 K25 ["Background"]
       97 DUPTABLE                         R4 K30 [{["Color3"], ["Transparency"] = 0}]
       98 GETIMPORT                        R5 K18 [Color3.fromRGB]
      100 LOADN                            R6 0
      101 LOADN                            R7 20
      102 LOADN                            R8 92
      103 CALL                             R5 3 1
      104 SETTABLEKS                       R5 R4 K13 ["Color3"]
      106 SETTABLEKS                       R4 R3 K26 ["Foreground"]
      108 DUPTABLE                         R4 K32 [{["Color3"], ["Transparency"] = 1}]
      109 GETIMPORT                        R5 K18 [Color3.fromRGB]
      111 LOADN                            R6 0
      112 LOADN                            R7 0
      113 LOADN                            R8 0
      114 CALL                             R5 3 1
      115 SETTABLEKS                       R5 R4 K13 ["Color3"]
      117 SETTABLEKS                       R4 R3 K27 ["Border"]
      119 SETTABLEKS                       R3 R2 K5 ["ActionSoftEmphasis"]
      121 DUPTABLE                         R3 K28 [{"Background", "Foreground", "Border"}]
      122 DUPTABLE                         R4 K30 [{["Color3"], ["Transparency"] = 0}]
      123 GETIMPORT                        R5 K18 [Color3.fromRGB]
      125 LOADN                            R6 32
      126 LOADN                            R7 34
      127 LOADN                            R8 39
      128 CALL                             R5 3 1
      129 SETTABLEKS                       R5 R4 K13 ["Color3"]
      131 SETTABLEKS                       R4 R3 K25 ["Background"]
      133 DUPTABLE                         R4 K30 [{["Color3"], ["Transparency"] = 0}]
      134 GETIMPORT                        R5 K18 [Color3.fromRGB]
      136 LOADN                            R6 247
      137 LOADN                            R7 247
      138 LOADN                            R8 248
      139 CALL                             R5 3 1
      140 SETTABLEKS                       R5 R4 K13 ["Color3"]
      142 SETTABLEKS                       R4 R3 K26 ["Foreground"]
      144 DUPTABLE                         R4 K32 [{["Color3"], ["Transparency"] = 1}]
      145 GETIMPORT                        R5 K18 [Color3.fromRGB]
      147 LOADN                            R6 0
      148 LOADN                            R7 0
      149 LOADN                            R8 0
      150 CALL                             R5 3 1
      151 SETTABLEKS                       R5 R4 K13 ["Color3"]
      153 SETTABLEKS                       R4 R3 K27 ["Border"]
      155 SETTABLEKS                       R3 R2 K6 ["ActionSubEmphasis"]
      157 SETTABLEKS                       R2 R1 K0 ["Color"]
      159 DUPTABLE                         R2 K37 [{"None", "Surface"}]
      160 DUPTABLE                         R3 K32 [{["Color3"], ["Transparency"] = 1}]
      161 GETIMPORT                        R4 K18 [Color3.fromRGB]
      163 LOADN                            R5 0
      164 LOADN                            R6 0
      165 LOADN                            R7 0
      166 CALL                             R4 3 1
      167 SETTABLEKS                       R4 R3 K13 ["Color3"]
      169 SETTABLEKS                       R3 R2 K35 ["None"]
      171 DUPTABLE                         R3 K42 [{"Surface_0", "Surface_100", "Surface_200", "Surface_300"}]
      172 DUPTABLE                         R4 K30 [{["Color3"], ["Transparency"] = 0}]
      173 GETIMPORT                        R5 K18 [Color3.fromRGB]
      175 LOADN                            R6 255
      176 LOADN                            R7 255
      177 LOADN                            R8 255
      178 CALL                             R5 3 1
      179 SETTABLEKS                       R5 R4 K13 ["Color3"]
      181 SETTABLEKS                       R4 R3 K38 ["Surface_0"]
      183 DUPTABLE                         R4 K30 [{["Color3"], ["Transparency"] = 0}]
      184 GETIMPORT                        R5 K18 [Color3.fromRGB]
      186 LOADN                            R6 247
      187 LOADN                            R7 247
      188 LOADN                            R8 248
      189 CALL                             R5 3 1
      190 SETTABLEKS                       R5 R4 K13 ["Color3"]
      192 SETTABLEKS                       R4 R3 K39 ["Surface_100"]
      194 DUPTABLE                         R4 K30 [{["Color3"], ["Transparency"] = 0}]
      195 GETIMPORT                        R5 K18 [Color3.fromRGB]
      197 LOADN                            R6 255
      198 LOADN                            R7 255
      199 LOADN                            R8 255
      200 CALL                             R5 3 1
      201 SETTABLEKS                       R5 R4 K13 ["Color3"]
      203 SETTABLEKS                       R4 R3 K40 ["Surface_200"]
      205 DUPTABLE                         R4 K30 [{["Color3"], ["Transparency"] = 0}]
      206 GETIMPORT                        R5 K18 [Color3.fromRGB]
      208 LOADN                            R6 247
      209 LOADN                            R7 247
      210 LOADN                            R8 248
      211 CALL                             R5 3 1
      212 SETTABLEKS                       R5 R4 K13 ["Color3"]
      214 SETTABLEKS                       R4 R3 K41 ["Surface_300"]
      216 SETTABLEKS                       R3 R2 K36 ["Surface"]
      218 SETTABLEKS                       R2 R1 K1 ["LightMode"]
      220 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
