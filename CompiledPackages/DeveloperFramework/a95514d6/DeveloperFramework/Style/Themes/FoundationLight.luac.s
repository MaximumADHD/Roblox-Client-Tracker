PROTO_0:
        0 DUPTABLE                         R1 K2 [{"Color", "LightMode"}]
        1 DUPTABLE                         R2 K7 [{"Shift", "ActionEmphasis", "ActionSoftEmphasis", "ActionSubEmphasis"}]
        2 DUPTABLE                         R3 K12 [{"Shift_100", "Shift_200", "Shift_300", "Shift_400"}]
        3 DUPTABLE                         R4 K15 [{"Color3", "Transparency"}]
        4 GETIMPORT                        R5 K17 [Color3.fromRGB]
        6 LOADN                            R6 27
        7 LOADN                            R7 37
        8 LOADN                            R8 75
        9 CALL                             R5 3 1
       10 SETTABLEKS                       R5 R4 K13 ["Color3"]
       12 LOADK                            R5 K18 [0.96]
       13 SETTABLEKS                       R5 R4 K14 ["Transparency"]
       15 SETTABLEKS                       R4 R3 K8 ["Shift_100"]
       17 DUPTABLE                         R4 K15 [{"Color3", "Transparency"}]
       18 GETIMPORT                        R5 K17 [Color3.fromRGB]
       20 LOADN                            R6 27
       21 LOADN                            R7 37
       22 LOADN                            R8 75
       23 CALL                             R5 3 1
       24 SETTABLEKS                       R5 R4 K13 ["Color3"]
       26 LOADK                            R5 K19 [0.92]
       27 SETTABLEKS                       R5 R4 K14 ["Transparency"]
       29 SETTABLEKS                       R4 R3 K9 ["Shift_200"]
       31 DUPTABLE                         R4 K15 [{"Color3", "Transparency"}]
       32 GETIMPORT                        R5 K17 [Color3.fromRGB]
       34 LOADN                            R6 27
       35 LOADN                            R7 37
       36 LOADN                            R8 75
       37 CALL                             R5 3 1
       38 SETTABLEKS                       R5 R4 K13 ["Color3"]
       40 LOADK                            R5 K20 [0.88]
       41 SETTABLEKS                       R5 R4 K14 ["Transparency"]
       43 SETTABLEKS                       R4 R3 K10 ["Shift_300"]
       45 DUPTABLE                         R4 K15 [{"Color3", "Transparency"}]
       46 GETIMPORT                        R5 K17 [Color3.fromRGB]
       48 LOADN                            R6 27
       49 LOADN                            R7 37
       50 LOADN                            R8 75
       51 CALL                             R5 3 1
       52 SETTABLEKS                       R5 R4 K13 ["Color3"]
       54 LOADK                            R5 K21 [0.84]
       55 SETTABLEKS                       R5 R4 K14 ["Transparency"]
       57 SETTABLEKS                       R4 R3 K11 ["Shift_400"]
       59 SETTABLEKS                       R3 R2 K3 ["Shift"]
       61 DUPTABLE                         R3 K25 [{"Background", "Foreground", "Border"}]
       62 DUPTABLE                         R4 K15 [{"Color3", "Transparency"}]
       63 GETIMPORT                        R5 K17 [Color3.fromRGB]
       65 LOADN                            R6 51
       66 LOADN                            R7 95
       67 LOADN                            R8 255
       68 CALL                             R5 3 1
       69 SETTABLEKS                       R5 R4 K13 ["Color3"]
       71 LOADN                            R5 0
       72 SETTABLEKS                       R5 R4 K14 ["Transparency"]
       74 SETTABLEKS                       R4 R3 K22 ["Background"]
       76 DUPTABLE                         R4 K15 [{"Color3", "Transparency"}]
       77 GETIMPORT                        R5 K17 [Color3.fromRGB]
       79 LOADN                            R6 247
       80 LOADN                            R7 247
       81 LOADN                            R8 248
       82 CALL                             R5 3 1
       83 SETTABLEKS                       R5 R4 K13 ["Color3"]
       85 LOADN                            R5 0
       86 SETTABLEKS                       R5 R4 K14 ["Transparency"]
       88 SETTABLEKS                       R4 R3 K23 ["Foreground"]
       90 DUPTABLE                         R4 K15 [{"Color3", "Transparency"}]
       91 GETIMPORT                        R5 K17 [Color3.fromRGB]
       93 LOADN                            R6 0
       94 LOADN                            R7 0
       95 LOADN                            R8 0
       96 CALL                             R5 3 1
       97 SETTABLEKS                       R5 R4 K13 ["Color3"]
       99 LOADN                            R5 1
      100 SETTABLEKS                       R5 R4 K14 ["Transparency"]
      102 SETTABLEKS                       R4 R3 K24 ["Border"]
      104 SETTABLEKS                       R3 R2 K4 ["ActionEmphasis"]
      106 DUPTABLE                         R3 K25 [{"Background", "Foreground", "Border"}]
      107 DUPTABLE                         R4 K15 [{"Color3", "Transparency"}]
      108 GETIMPORT                        R5 K17 [Color3.fromRGB]
      110 LOADN                            R6 51
      111 LOADN                            R7 95
      112 LOADN                            R8 255
      113 CALL                             R5 3 1
      114 SETTABLEKS                       R5 R4 K13 ["Color3"]
      116 LOADK                            R5 K26 [0.7]
      117 SETTABLEKS                       R5 R4 K14 ["Transparency"]
      119 SETTABLEKS                       R4 R3 K22 ["Background"]
      121 DUPTABLE                         R4 K15 [{"Color3", "Transparency"}]
      122 GETIMPORT                        R5 K17 [Color3.fromRGB]
      124 LOADN                            R6 0
      125 LOADN                            R7 20
      126 LOADN                            R8 92
      127 CALL                             R5 3 1
      128 SETTABLEKS                       R5 R4 K13 ["Color3"]
      130 LOADN                            R5 0
      131 SETTABLEKS                       R5 R4 K14 ["Transparency"]
      133 SETTABLEKS                       R4 R3 K23 ["Foreground"]
      135 DUPTABLE                         R4 K15 [{"Color3", "Transparency"}]
      136 GETIMPORT                        R5 K17 [Color3.fromRGB]
      138 LOADN                            R6 0
      139 LOADN                            R7 0
      140 LOADN                            R8 0
      141 CALL                             R5 3 1
      142 SETTABLEKS                       R5 R4 K13 ["Color3"]
      144 LOADN                            R5 1
      145 SETTABLEKS                       R5 R4 K14 ["Transparency"]
      147 SETTABLEKS                       R4 R3 K24 ["Border"]
      149 SETTABLEKS                       R3 R2 K5 ["ActionSoftEmphasis"]
      151 DUPTABLE                         R3 K25 [{"Background", "Foreground", "Border"}]
      152 DUPTABLE                         R4 K15 [{"Color3", "Transparency"}]
      153 GETIMPORT                        R5 K17 [Color3.fromRGB]
      155 LOADN                            R6 32
      156 LOADN                            R7 34
      157 LOADN                            R8 39
      158 CALL                             R5 3 1
      159 SETTABLEKS                       R5 R4 K13 ["Color3"]
      161 LOADN                            R5 0
      162 SETTABLEKS                       R5 R4 K14 ["Transparency"]
      164 SETTABLEKS                       R4 R3 K22 ["Background"]
      166 DUPTABLE                         R4 K15 [{"Color3", "Transparency"}]
      167 GETIMPORT                        R5 K17 [Color3.fromRGB]
      169 LOADN                            R6 247
      170 LOADN                            R7 247
      171 LOADN                            R8 248
      172 CALL                             R5 3 1
      173 SETTABLEKS                       R5 R4 K13 ["Color3"]
      175 LOADN                            R5 0
      176 SETTABLEKS                       R5 R4 K14 ["Transparency"]
      178 SETTABLEKS                       R4 R3 K23 ["Foreground"]
      180 DUPTABLE                         R4 K15 [{"Color3", "Transparency"}]
      181 GETIMPORT                        R5 K17 [Color3.fromRGB]
      183 LOADN                            R6 0
      184 LOADN                            R7 0
      185 LOADN                            R8 0
      186 CALL                             R5 3 1
      187 SETTABLEKS                       R5 R4 K13 ["Color3"]
      189 LOADN                            R5 1
      190 SETTABLEKS                       R5 R4 K14 ["Transparency"]
      192 SETTABLEKS                       R4 R3 K24 ["Border"]
      194 SETTABLEKS                       R3 R2 K6 ["ActionSubEmphasis"]
      196 SETTABLEKS                       R2 R1 K0 ["Color"]
      198 DUPTABLE                         R2 K29 [{"None", "Surface"}]
      199 DUPTABLE                         R3 K15 [{"Color3", "Transparency"}]
      200 GETIMPORT                        R4 K17 [Color3.fromRGB]
      202 LOADN                            R5 0
      203 LOADN                            R6 0
      204 LOADN                            R7 0
      205 CALL                             R4 3 1
      206 SETTABLEKS                       R4 R3 K13 ["Color3"]
      208 LOADN                            R4 1
      209 SETTABLEKS                       R4 R3 K14 ["Transparency"]
      211 SETTABLEKS                       R3 R2 K27 ["None"]
      213 DUPTABLE                         R3 K34 [{"Surface_0", "Surface_100", "Surface_200", "Surface_300"}]
      214 DUPTABLE                         R4 K15 [{"Color3", "Transparency"}]
      215 GETIMPORT                        R5 K17 [Color3.fromRGB]
      217 LOADN                            R6 255
      218 LOADN                            R7 255
      219 LOADN                            R8 255
      220 CALL                             R5 3 1
      221 SETTABLEKS                       R5 R4 K13 ["Color3"]
      223 LOADN                            R5 0
      224 SETTABLEKS                       R5 R4 K14 ["Transparency"]
      226 SETTABLEKS                       R4 R3 K30 ["Surface_0"]
      228 DUPTABLE                         R4 K15 [{"Color3", "Transparency"}]
      229 GETIMPORT                        R5 K17 [Color3.fromRGB]
      231 LOADN                            R6 247
      232 LOADN                            R7 247
      233 LOADN                            R8 248
      234 CALL                             R5 3 1
      235 SETTABLEKS                       R5 R4 K13 ["Color3"]
      237 LOADN                            R5 0
      238 SETTABLEKS                       R5 R4 K14 ["Transparency"]
      240 SETTABLEKS                       R4 R3 K31 ["Surface_100"]
      242 DUPTABLE                         R4 K15 [{"Color3", "Transparency"}]
      243 GETIMPORT                        R5 K17 [Color3.fromRGB]
      245 LOADN                            R6 255
      246 LOADN                            R7 255
      247 LOADN                            R8 255
      248 CALL                             R5 3 1
      249 SETTABLEKS                       R5 R4 K13 ["Color3"]
      251 LOADN                            R5 0
      252 SETTABLEKS                       R5 R4 K14 ["Transparency"]
      254 SETTABLEKS                       R4 R3 K32 ["Surface_200"]
      256 DUPTABLE                         R4 K15 [{"Color3", "Transparency"}]
      257 GETIMPORT                        R5 K17 [Color3.fromRGB]
      259 LOADN                            R6 247
      260 LOADN                            R7 247
      261 LOADN                            R8 248
      262 CALL                             R5 3 1
      263 SETTABLEKS                       R5 R4 K13 ["Color3"]
      265 LOADN                            R5 0
      266 SETTABLEKS                       R5 R4 K14 ["Transparency"]
      268 SETTABLEKS                       R4 R3 K33 ["Surface_300"]
      270 SETTABLEKS                       R3 R2 K28 ["Surface"]
      272 SETTABLEKS                       R2 R1 K1 ["LightMode"]
      274 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
