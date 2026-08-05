PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["getStepFromSpread"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["MaxRadius"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K1 ["MaxRadius"]
       12 DIV                              R4 R5 R1
       13 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       14 GETIMPORT                        R3 K4 [math.floor]
       16 CALL                             R3 1 1
       17 MUL                              R2 R3 R1
       18 MOVE                             R5 R1
       19 MOVE                             R3 R2
       20 MOVE                             R4 R1
       21 FORNPREP                         R3
       22 LOADK                            R7 K5 ["circle-"]
       23 FASTCALL1                        TOSTRING R5 ; [+3]
       24 MOVE                             R9 R5
       25 GETIMPORT                        R8 K7 [tostring]
       27 CALL                             R8 1 1
       28 CONCAT                           R6 R7 R8
       29 GETUPVAL                         R7 2
       30 GETTABLEKS                       R7 R7 K8 ["createElement"]
       32 GETUPVAL                         R8 3
       33 DUPTABLE                         R9 K12 [{"Radius", "Color3", "Thickness"}]
       34 SETTABLEKS                       R5 R9 K9 ["Radius"]
       36 GETUPVAL                         R10 1
       37 GETTABLEKS                       R10 R10 K13 ["GridColor"]
       39 SETTABLEKS                       R10 R9 K10 ["Color3"]
       41 GETUPVAL                         R10 1
       42 GETTABLEKS                       R10 R10 K11 ["Thickness"]
       44 SETTABLEKS                       R10 R9 K11 ["Thickness"]
       46 CALL                             R7 2 1
       47 SETTABLE                         R7 R0 R6
       48 FORNLOOP                         R3
       49 GETUPVAL                         R3 1
       50 GETTABLEKS                       R3 R3 K1 ["MaxRadius"]
       52 JUMPIFNOTLT                      R2 R3 ; [+32]
       54 LOADK                            R4 K5 ["circle-"]
       55 GETUPVAL                         R6 1
       56 GETTABLEKS                       R6 R6 K1 ["MaxRadius"]
       58 FASTCALL1                        TOSTRING R6 ; [+2]
       59 GETIMPORT                        R5 K7 [tostring]
       61 CALL                             R5 1 1
       62 CONCAT                           R3 R4 R5
       63 GETUPVAL                         R4 2
       64 GETTABLEKS                       R4 R4 K8 ["createElement"]
       66 GETUPVAL                         R5 3
       67 DUPTABLE                         R6 K12 [{"Radius", "Color3", "Thickness"}]
       68 GETUPVAL                         R7 1
       69 GETTABLEKS                       R7 R7 K1 ["MaxRadius"]
       71 SETTABLEKS                       R7 R6 K9 ["Radius"]
       73 GETUPVAL                         R7 1
       74 GETTABLEKS                       R7 R7 K13 ["GridColor"]
       76 SETTABLEKS                       R7 R6 K10 ["Color3"]
       78 GETUPVAL                         R7 1
       79 GETTABLEKS                       R7 R7 K11 ["Thickness"]
       81 SETTABLEKS                       R7 R6 K11 ["Thickness"]
       83 CALL                             R4 2 1
       84 SETTABLE                         R4 R0 R3
       85 GETUPVAL                         R3 2
       86 GETTABLEKS                       R3 R3 K8 ["createElement"]
       88 GETUPVAL                         R4 2
       89 GETTABLEKS                       R4 R4 K14 ["Fragment"]
       91 NEWTABLE                         R5 0 0
       93 MOVE                             R6 R0
       94 CALL                             R3 3 -1
       95 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["Fragment"]
        6 NEWTABLE                         R2 0 0
        8 DUPTABLE                         R3 K6 [{"XAxis", "YAxis", "Diag1", "Diag2"}]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K0 ["createElement"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K7 ["Curve"]
       15 DUPTABLE                         R6 K11 [{"Color3", "Thickness", "Points"}]
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R7 R7 K12 ["AxisColor"]
       19 SETTABLEKS                       R7 R6 K8 ["Color3"]
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R7 R7 K9 ["Thickness"]
       24 SETTABLEKS                       R7 R6 K9 ["Thickness"]
       26 NEWTABLE                         R7 0 2
       28 DUPTABLE                         R8 K14 [{"Position"}]
       29 GETIMPORT                        R9 K17 [Vector2.new]
       31 GETUPVAL                         R11 2
       32 GETTABLEKS                       R11 R11 K18 ["MaxRadius"]
       34 MINUS                            R10 R11
       35 LOADN                            R11 0
       36 CALL                             R9 2 1
       37 SETTABLEKS                       R9 R8 K13 ["Position"]
       39 DUPTABLE                         R9 K14 [{"Position"}]
       40 GETIMPORT                        R10 K17 [Vector2.new]
       42 GETUPVAL                         R11 2
       43 GETTABLEKS                       R11 R11 K18 ["MaxRadius"]
       45 LOADN                            R12 0
       46 CALL                             R10 2 1
       47 SETTABLEKS                       R10 R9 K13 ["Position"]
       49 SETLIST                          R7 R8 2 [1]
       51 SETTABLEKS                       R7 R6 K10 ["Points"]
       53 CALL                             R4 2 1
       54 SETTABLEKS                       R4 R3 K2 ["XAxis"]
       56 GETUPVAL                         R4 0
       57 GETTABLEKS                       R4 R4 K0 ["createElement"]
       59 GETUPVAL                         R5 1
       60 GETTABLEKS                       R5 R5 K7 ["Curve"]
       62 DUPTABLE                         R6 K11 [{"Color3", "Thickness", "Points"}]
       63 GETUPVAL                         R7 2
       64 GETTABLEKS                       R7 R7 K12 ["AxisColor"]
       66 SETTABLEKS                       R7 R6 K8 ["Color3"]
       68 GETUPVAL                         R7 2
       69 GETTABLEKS                       R7 R7 K9 ["Thickness"]
       71 SETTABLEKS                       R7 R6 K9 ["Thickness"]
       73 NEWTABLE                         R7 0 2
       75 DUPTABLE                         R8 K14 [{"Position"}]
       76 GETIMPORT                        R9 K17 [Vector2.new]
       78 LOADN                            R10 0
       79 GETUPVAL                         R12 2
       80 GETTABLEKS                       R12 R12 K18 ["MaxRadius"]
       82 MINUS                            R11 R12
       83 CALL                             R9 2 1
       84 SETTABLEKS                       R9 R8 K13 ["Position"]
       86 DUPTABLE                         R9 K14 [{"Position"}]
       87 GETIMPORT                        R10 K17 [Vector2.new]
       89 LOADN                            R11 0
       90 GETUPVAL                         R12 2
       91 GETTABLEKS                       R12 R12 K18 ["MaxRadius"]
       93 CALL                             R10 2 1
       94 SETTABLEKS                       R10 R9 K13 ["Position"]
       96 SETLIST                          R7 R8 2 [1]
       98 SETTABLEKS                       R7 R6 K10 ["Points"]
      100 CALL                             R4 2 1
      101 SETTABLEKS                       R4 R3 K3 ["YAxis"]
      103 GETUPVAL                         R4 0
      104 GETTABLEKS                       R4 R4 K0 ["createElement"]
      106 GETUPVAL                         R5 1
      107 GETTABLEKS                       R5 R5 K7 ["Curve"]
      109 DUPTABLE                         R6 K11 [{"Color3", "Thickness", "Points"}]
      110 GETUPVAL                         R7 2
      111 GETTABLEKS                       R7 R7 K12 ["AxisColor"]
      113 SETTABLEKS                       R7 R6 K8 ["Color3"]
      115 GETUPVAL                         R7 2
      116 GETTABLEKS                       R7 R7 K9 ["Thickness"]
      118 SETTABLEKS                       R7 R6 K9 ["Thickness"]
      120 NEWTABLE                         R7 0 2
      122 DUPTABLE                         R8 K14 [{"Position"}]
      123 GETIMPORT                        R10 K17 [Vector2.new]
      125 GETUPVAL                         R12 2
      126 GETTABLEKS                       R12 R12 K18 ["MaxRadius"]
      128 MINUS                            R11 R12
      129 GETUPVAL                         R13 2
      130 GETTABLEKS                       R13 R13 K18 ["MaxRadius"]
      132 MINUS                            R12 R13
      133 CALL                             R10 2 1
      134 MULK                             R9 R10 K19 [0.7071]
      135 SETTABLEKS                       R9 R8 K13 ["Position"]
      137 DUPTABLE                         R9 K14 [{"Position"}]
      138 GETIMPORT                        R11 K17 [Vector2.new]
      140 GETUPVAL                         R12 2
      141 GETTABLEKS                       R12 R12 K18 ["MaxRadius"]
      143 GETUPVAL                         R13 2
      144 GETTABLEKS                       R13 R13 K18 ["MaxRadius"]
      146 CALL                             R11 2 1
      147 MULK                             R10 R11 K19 [0.7071]
      148 SETTABLEKS                       R10 R9 K13 ["Position"]
      150 SETLIST                          R7 R8 2 [1]
      152 SETTABLEKS                       R7 R6 K10 ["Points"]
      154 CALL                             R4 2 1
      155 SETTABLEKS                       R4 R3 K4 ["Diag1"]
      157 GETUPVAL                         R4 0
      158 GETTABLEKS                       R4 R4 K0 ["createElement"]
      160 GETUPVAL                         R5 1
      161 GETTABLEKS                       R5 R5 K7 ["Curve"]
      163 DUPTABLE                         R6 K11 [{"Color3", "Thickness", "Points"}]
      164 GETUPVAL                         R7 2
      165 GETTABLEKS                       R7 R7 K12 ["AxisColor"]
      167 SETTABLEKS                       R7 R6 K8 ["Color3"]
      169 GETUPVAL                         R7 2
      170 GETTABLEKS                       R7 R7 K9 ["Thickness"]
      172 SETTABLEKS                       R7 R6 K9 ["Thickness"]
      174 NEWTABLE                         R7 0 2
      176 DUPTABLE                         R8 K14 [{"Position"}]
      177 GETIMPORT                        R10 K17 [Vector2.new]
      179 GETUPVAL                         R12 2
      180 GETTABLEKS                       R12 R12 K18 ["MaxRadius"]
      182 MINUS                            R11 R12
      183 GETUPVAL                         R12 2
      184 GETTABLEKS                       R12 R12 K18 ["MaxRadius"]
      186 CALL                             R10 2 1
      187 MULK                             R9 R10 K19 [0.7071]
      188 SETTABLEKS                       R9 R8 K13 ["Position"]
      190 DUPTABLE                         R9 K14 [{"Position"}]
      191 GETIMPORT                        R11 K17 [Vector2.new]
      193 GETUPVAL                         R12 2
      194 GETTABLEKS                       R12 R12 K18 ["MaxRadius"]
      196 GETUPVAL                         R14 2
      197 GETTABLEKS                       R14 R14 K18 ["MaxRadius"]
      199 MINUS                            R13 R14
      200 CALL                             R11 2 1
      201 MULK                             R10 R11 K19 [0.7071]
      202 SETTABLEKS                       R10 R9 K13 ["Position"]
      204 SETLIST                          R7 R8 2 [1]
      206 SETTABLEKS                       R7 R6 K10 ["Points"]
      208 CALL                             R4 2 1
      209 SETTABLEKS                       R4 R3 K5 ["Diag2"]
      211 CALL                             R0 3 -1
      212 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U2
        8 NEWTABLE                         R3 0 3
       10 GETTABLEKS                       R4 R0 K1 ["MaxRadius"]
       12 GETTABLEKS                       R5 R0 K2 ["GridColor"]
       14 GETTABLEKS                       R6 R0 K3 ["Thickness"]
       16 SETLIST                          R3 R4 3 [1]
       18 CALL                             R1 2 1
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K0 ["useMemo"]
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R4 0 3
       28 GETTABLEKS                       R5 R0 K1 ["MaxRadius"]
       30 GETTABLEKS                       R6 R0 K4 ["AxisColor"]
       32 GETTABLEKS                       R7 R0 K3 ["Thickness"]
       34 SETLIST                          R4 R5 3 [1]
       36 CALL                             R2 2 1
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R3 R3 K5 ["createElement"]
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K6 ["Fragment"]
       43 NEWTABLE                         R5 0 0
       45 DUPTABLE                         R6 K9 [{"Circles", "Axes"}]
       46 SETTABLEKS                       R1 R6 K7 ["Circles"]
       48 SETTABLEKS                       R2 R6 K8 ["Axes"]
       50 CALL                             R3 3 -1
       51 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["NodeView"]
       20 GETTABLEKS                       R3 R3 K10 ["CompositorNodeProperty"]
       22 GETTABLEKS                       R3 R3 K11 ["Blend2DMap"]
       24 GETTABLEKS                       R3 R3 K12 ["Circle"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Parent"]
       31 GETTABLEKS                       R4 R4 K13 ["Graphing"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K8 ["Components"]
       38 GETTABLEKS                       R5 R5 K9 ["NodeView"]
       40 GETTABLEKS                       R5 R5 K10 ["CompositorNodeProperty"]
       42 GETTABLEKS                       R5 R5 K14 ["PropertyUtils"]
       44 CALL                             R4 1 1
       45 DUPCLOSURE                       R5 K15 [PROTO_2]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R3
       50 RETURN                           R5 1
