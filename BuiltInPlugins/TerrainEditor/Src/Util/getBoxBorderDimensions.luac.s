PROTO_0:
        0 DUPTABLE                         R3 K12 [{"TopFront", "BottomFront", "LeftFront", "RightFront", "TopBack", "BottomBack", "LeftBack", "RightBack", "TopLeft", "BottomLeft", "TopRight", "BottomRight"}]
        1 DUPTABLE                         R4 K15 [{"Transform", "Size"}]
        2 GETIMPORT                        R6 K18 [CFrame.new]
        4 LOADN                            R7 0
        5 GETTABLEKS                       R9 R1 K20 ["Y"]
        7 DIVK                             R8 R9 K19 [2]
        8 GETTABLEKS                       R10 R1 K21 ["Z"]
       10 DIVK                             R9 R10 K19 [2]
       11 CALL                             R6 3 1
       12 MUL                              R5 R0 R6
       13 SETTABLEKS                       R5 R4 K13 ["Transform"]
       15 GETTABLEKS                       R7 R1 K22 ["X"]
       17 ADD                              R6 R7 R2
       18 FASTCALL3                        VECTOR R6 R2 R2
       20 MOVE                             R7 R2
       21 MOVE                             R8 R2
       22 GETIMPORT                        R5 K24 [Vector3.new]
       24 CALL                             R5 3 1
       25 SETTABLEKS                       R5 R4 K14 ["Size"]
       27 SETTABLEKS                       R4 R3 K0 ["TopFront"]
       29 DUPTABLE                         R4 K15 [{"Transform", "Size"}]
       30 GETIMPORT                        R6 K18 [CFrame.new]
       32 LOADN                            R7 0
       33 GETTABLEKS                       R10 R1 K20 ["Y"]
       35 MINUS                            R9 R10
       36 DIVK                             R8 R9 K19 [2]
       37 GETTABLEKS                       R10 R1 K21 ["Z"]
       39 DIVK                             R9 R10 K19 [2]
       40 CALL                             R6 3 1
       41 MUL                              R5 R0 R6
       42 SETTABLEKS                       R5 R4 K13 ["Transform"]
       44 GETTABLEKS                       R7 R1 K22 ["X"]
       46 ADD                              R6 R7 R2
       47 FASTCALL3                        VECTOR R6 R2 R2
       49 MOVE                             R7 R2
       50 MOVE                             R8 R2
       51 GETIMPORT                        R5 K24 [Vector3.new]
       53 CALL                             R5 3 1
       54 SETTABLEKS                       R5 R4 K14 ["Size"]
       56 SETTABLEKS                       R4 R3 K1 ["BottomFront"]
       58 DUPTABLE                         R4 K15 [{"Transform", "Size"}]
       59 GETIMPORT                        R6 K18 [CFrame.new]
       61 GETTABLEKS                       R9 R1 K22 ["X"]
       63 MINUS                            R8 R9
       64 DIVK                             R7 R8 K19 [2]
       65 LOADN                            R8 0
       66 GETTABLEKS                       R10 R1 K21 ["Z"]
       68 DIVK                             R9 R10 K19 [2]
       69 CALL                             R6 3 1
       70 MUL                              R5 R0 R6
       71 SETTABLEKS                       R5 R4 K13 ["Transform"]
       73 GETTABLEKS                       R8 R1 K20 ["Y"]
       75 ADD                              R7 R8 R2
       76 FASTCALL3                        VECTOR R2 R7 R2
       78 MOVE                             R6 R2
       79 MOVE                             R8 R2
       80 GETIMPORT                        R5 K24 [Vector3.new]
       82 CALL                             R5 3 1
       83 SETTABLEKS                       R5 R4 K14 ["Size"]
       85 SETTABLEKS                       R4 R3 K2 ["LeftFront"]
       87 DUPTABLE                         R4 K15 [{"Transform", "Size"}]
       88 GETIMPORT                        R6 K18 [CFrame.new]
       90 GETTABLEKS                       R8 R1 K22 ["X"]
       92 DIVK                             R7 R8 K19 [2]
       93 LOADN                            R8 0
       94 GETTABLEKS                       R10 R1 K21 ["Z"]
       96 DIVK                             R9 R10 K19 [2]
       97 CALL                             R6 3 1
       98 MUL                              R5 R0 R6
       99 SETTABLEKS                       R5 R4 K13 ["Transform"]
      101 GETTABLEKS                       R8 R1 K20 ["Y"]
      103 ADD                              R7 R8 R2
      104 FASTCALL3                        VECTOR R2 R7 R2
      106 MOVE                             R6 R2
      107 MOVE                             R8 R2
      108 GETIMPORT                        R5 K24 [Vector3.new]
      110 CALL                             R5 3 1
      111 SETTABLEKS                       R5 R4 K14 ["Size"]
      113 SETTABLEKS                       R4 R3 K3 ["RightFront"]
      115 DUPTABLE                         R4 K15 [{"Transform", "Size"}]
      116 GETIMPORT                        R6 K18 [CFrame.new]
      118 LOADN                            R7 0
      119 GETTABLEKS                       R9 R1 K20 ["Y"]
      121 DIVK                             R8 R9 K19 [2]
      122 GETTABLEKS                       R11 R1 K21 ["Z"]
      124 MINUS                            R10 R11
      125 DIVK                             R9 R10 K19 [2]
      126 CALL                             R6 3 1
      127 MUL                              R5 R0 R6
      128 SETTABLEKS                       R5 R4 K13 ["Transform"]
      130 GETTABLEKS                       R7 R1 K22 ["X"]
      132 ADD                              R6 R7 R2
      133 FASTCALL3                        VECTOR R6 R2 R2
      135 MOVE                             R7 R2
      136 MOVE                             R8 R2
      137 GETIMPORT                        R5 K24 [Vector3.new]
      139 CALL                             R5 3 1
      140 SETTABLEKS                       R5 R4 K14 ["Size"]
      142 SETTABLEKS                       R4 R3 K4 ["TopBack"]
      144 DUPTABLE                         R4 K15 [{"Transform", "Size"}]
      145 GETIMPORT                        R6 K18 [CFrame.new]
      147 LOADN                            R7 0
      148 GETTABLEKS                       R10 R1 K20 ["Y"]
      150 MINUS                            R9 R10
      151 DIVK                             R8 R9 K19 [2]
      152 GETTABLEKS                       R11 R1 K21 ["Z"]
      154 MINUS                            R10 R11
      155 DIVK                             R9 R10 K19 [2]
      156 CALL                             R6 3 1
      157 MUL                              R5 R0 R6
      158 SETTABLEKS                       R5 R4 K13 ["Transform"]
      160 GETTABLEKS                       R7 R1 K22 ["X"]
      162 ADD                              R6 R7 R2
      163 FASTCALL3                        VECTOR R6 R2 R2
      165 MOVE                             R7 R2
      166 MOVE                             R8 R2
      167 GETIMPORT                        R5 K24 [Vector3.new]
      169 CALL                             R5 3 1
      170 SETTABLEKS                       R5 R4 K14 ["Size"]
      172 SETTABLEKS                       R4 R3 K5 ["BottomBack"]
      174 DUPTABLE                         R4 K15 [{"Transform", "Size"}]
      175 GETIMPORT                        R6 K18 [CFrame.new]
      177 GETTABLEKS                       R9 R1 K22 ["X"]
      179 MINUS                            R8 R9
      180 DIVK                             R7 R8 K19 [2]
      181 LOADN                            R8 0
      182 GETTABLEKS                       R11 R1 K21 ["Z"]
      184 MINUS                            R10 R11
      185 DIVK                             R9 R10 K19 [2]
      186 CALL                             R6 3 1
      187 MUL                              R5 R0 R6
      188 SETTABLEKS                       R5 R4 K13 ["Transform"]
      190 GETTABLEKS                       R8 R1 K20 ["Y"]
      192 ADD                              R7 R8 R2
      193 FASTCALL3                        VECTOR R2 R7 R2
      195 MOVE                             R6 R2
      196 MOVE                             R8 R2
      197 GETIMPORT                        R5 K24 [Vector3.new]
      199 CALL                             R5 3 1
      200 SETTABLEKS                       R5 R4 K14 ["Size"]
      202 SETTABLEKS                       R4 R3 K6 ["LeftBack"]
      204 DUPTABLE                         R4 K15 [{"Transform", "Size"}]
      205 GETIMPORT                        R6 K18 [CFrame.new]
      207 GETTABLEKS                       R8 R1 K22 ["X"]
      209 DIVK                             R7 R8 K19 [2]
      210 LOADN                            R8 0
      211 GETTABLEKS                       R11 R1 K21 ["Z"]
      213 MINUS                            R10 R11
      214 DIVK                             R9 R10 K19 [2]
      215 CALL                             R6 3 1
      216 MUL                              R5 R0 R6
      217 SETTABLEKS                       R5 R4 K13 ["Transform"]
      219 GETTABLEKS                       R8 R1 K20 ["Y"]
      221 ADD                              R7 R8 R2
      222 FASTCALL3                        VECTOR R2 R7 R2
      224 MOVE                             R6 R2
      225 MOVE                             R8 R2
      226 GETIMPORT                        R5 K24 [Vector3.new]
      228 CALL                             R5 3 1
      229 SETTABLEKS                       R5 R4 K14 ["Size"]
      231 SETTABLEKS                       R4 R3 K7 ["RightBack"]
      233 DUPTABLE                         R4 K15 [{"Transform", "Size"}]
      234 GETIMPORT                        R6 K18 [CFrame.new]
      236 GETTABLEKS                       R9 R1 K22 ["X"]
      238 MINUS                            R8 R9
      239 DIVK                             R7 R8 K19 [2]
      240 GETTABLEKS                       R9 R1 K20 ["Y"]
      242 DIVK                             R8 R9 K19 [2]
      243 LOADN                            R9 0
      244 CALL                             R6 3 1
      245 MUL                              R5 R0 R6
      246 SETTABLEKS                       R5 R4 K13 ["Transform"]
      248 GETTABLEKS                       R9 R1 K21 ["Z"]
      250 ADD                              R8 R9 R2
      251 FASTCALL3                        VECTOR R2 R2 R8
      253 MOVE                             R6 R2
      254 MOVE                             R7 R2
      255 GETIMPORT                        R5 K24 [Vector3.new]
      257 CALL                             R5 3 1
      258 SETTABLEKS                       R5 R4 K14 ["Size"]
      260 SETTABLEKS                       R4 R3 K8 ["TopLeft"]
      262 DUPTABLE                         R4 K15 [{"Transform", "Size"}]
      263 GETIMPORT                        R6 K18 [CFrame.new]
      265 GETTABLEKS                       R9 R1 K22 ["X"]
      267 MINUS                            R8 R9
      268 DIVK                             R7 R8 K19 [2]
      269 GETTABLEKS                       R10 R1 K20 ["Y"]
      271 MINUS                            R9 R10
      272 DIVK                             R8 R9 K19 [2]
      273 LOADN                            R9 0
      274 CALL                             R6 3 1
      275 MUL                              R5 R0 R6
      276 SETTABLEKS                       R5 R4 K13 ["Transform"]
      278 GETTABLEKS                       R9 R1 K21 ["Z"]
      280 ADD                              R8 R9 R2
      281 FASTCALL3                        VECTOR R2 R2 R8
      283 MOVE                             R6 R2
      284 MOVE                             R7 R2
      285 GETIMPORT                        R5 K24 [Vector3.new]
      287 CALL                             R5 3 1
      288 SETTABLEKS                       R5 R4 K14 ["Size"]
      290 SETTABLEKS                       R4 R3 K9 ["BottomLeft"]
      292 DUPTABLE                         R4 K15 [{"Transform", "Size"}]
      293 GETIMPORT                        R6 K18 [CFrame.new]
      295 GETTABLEKS                       R8 R1 K22 ["X"]
      297 DIVK                             R7 R8 K19 [2]
      298 GETTABLEKS                       R9 R1 K20 ["Y"]
      300 DIVK                             R8 R9 K19 [2]
      301 LOADN                            R9 0
      302 CALL                             R6 3 1
      303 MUL                              R5 R0 R6
      304 SETTABLEKS                       R5 R4 K13 ["Transform"]
      306 GETTABLEKS                       R9 R1 K21 ["Z"]
      308 ADD                              R8 R9 R2
      309 FASTCALL3                        VECTOR R2 R2 R8
      311 MOVE                             R6 R2
      312 MOVE                             R7 R2
      313 GETIMPORT                        R5 K24 [Vector3.new]
      315 CALL                             R5 3 1
      316 SETTABLEKS                       R5 R4 K14 ["Size"]
      318 SETTABLEKS                       R4 R3 K10 ["TopRight"]
      320 DUPTABLE                         R4 K15 [{"Transform", "Size"}]
      321 GETIMPORT                        R6 K18 [CFrame.new]
      323 GETTABLEKS                       R8 R1 K22 ["X"]
      325 DIVK                             R7 R8 K19 [2]
      326 GETTABLEKS                       R10 R1 K20 ["Y"]
      328 MINUS                            R9 R10
      329 DIVK                             R8 R9 K19 [2]
      330 LOADN                            R9 0
      331 CALL                             R6 3 1
      332 MUL                              R5 R0 R6
      333 SETTABLEKS                       R5 R4 K13 ["Transform"]
      335 GETTABLEKS                       R9 R1 K21 ["Z"]
      337 ADD                              R8 R9 R2
      338 FASTCALL3                        VECTOR R2 R2 R8
      340 MOVE                             R6 R2
      341 MOVE                             R7 R2
      342 GETIMPORT                        R5 K24 [Vector3.new]
      344 CALL                             R5 3 1
      345 SETTABLEKS                       R5 R4 K14 ["Size"]
      347 SETTABLEKS                       R4 R3 K11 ["BottomRight"]
      349 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
