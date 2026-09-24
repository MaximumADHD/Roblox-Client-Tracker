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
       33 DUPTABLE                         R9 K13 [{"Radius", "Color3", "Thickness", "ObserveThickness"}]
       34 SETTABLEKS                       R5 R9 K9 ["Radius"]
       36 GETUPVAL                         R10 1
       37 GETTABLEKS                       R10 R10 K14 ["GridColor"]
       39 SETTABLEKS                       R10 R9 K10 ["Color3"]
       41 GETUPVAL                         R10 1
       42 GETTABLEKS                       R10 R10 K11 ["Thickness"]
       44 SETTABLEKS                       R10 R9 K11 ["Thickness"]
       46 GETUPVAL                         R10 1
       47 GETTABLEKS                       R10 R10 K12 ["ObserveThickness"]
       49 SETTABLEKS                       R10 R9 K12 ["ObserveThickness"]
       51 CALL                             R7 2 1
       52 SETTABLE                         R7 R0 R6
       53 FORNLOOP                         R3
       54 GETUPVAL                         R3 1
       55 GETTABLEKS                       R3 R3 K1 ["MaxRadius"]
       57 JUMPIFNOTLT                      R2 R3 ; [+37]
       59 LOADK                            R4 K5 ["circle-"]
       60 GETUPVAL                         R6 1
       61 GETTABLEKS                       R6 R6 K1 ["MaxRadius"]
       63 FASTCALL1                        TOSTRING R6 ; [+2]
       64 GETIMPORT                        R5 K7 [tostring]
       66 CALL                             R5 1 1
       67 CONCAT                           R3 R4 R5
       68 GETUPVAL                         R4 2
       69 GETTABLEKS                       R4 R4 K8 ["createElement"]
       71 GETUPVAL                         R5 3
       72 DUPTABLE                         R6 K13 [{"Radius", "Color3", "Thickness", "ObserveThickness"}]
       73 GETUPVAL                         R7 1
       74 GETTABLEKS                       R7 R7 K1 ["MaxRadius"]
       76 SETTABLEKS                       R7 R6 K9 ["Radius"]
       78 GETUPVAL                         R7 1
       79 GETTABLEKS                       R7 R7 K14 ["GridColor"]
       81 SETTABLEKS                       R7 R6 K10 ["Color3"]
       83 GETUPVAL                         R7 1
       84 GETTABLEKS                       R7 R7 K11 ["Thickness"]
       86 SETTABLEKS                       R7 R6 K11 ["Thickness"]
       88 GETUPVAL                         R7 1
       89 GETTABLEKS                       R7 R7 K12 ["ObserveThickness"]
       91 SETTABLEKS                       R7 R6 K12 ["ObserveThickness"]
       93 CALL                             R4 2 1
       94 SETTABLE                         R4 R0 R3
       95 GETUPVAL                         R3 2
       96 GETTABLEKS                       R3 R3 K8 ["createElement"]
       98 GETUPVAL                         R4 2
       99 GETTABLEKS                       R4 R4 K15 ["Fragment"]
      101 NEWTABLE                         R5 0 0
      103 MOVE                             R6 R0
      104 CALL                             R3 3 -1
      105 RETURN                           R3 -1

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
       15 DUPTABLE                         R6 K12 [{"Color3", "Thickness", "ObserveThickness", "Points"}]
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R7 R7 K13 ["AxisColor"]
       19 SETTABLEKS                       R7 R6 K8 ["Color3"]
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R7 R7 K9 ["Thickness"]
       24 SETTABLEKS                       R7 R6 K9 ["Thickness"]
       26 GETUPVAL                         R7 2
       27 GETTABLEKS                       R7 R7 K10 ["ObserveThickness"]
       29 SETTABLEKS                       R7 R6 K10 ["ObserveThickness"]
       31 NEWTABLE                         R7 0 2
       33 DUPTABLE                         R8 K15 [{"Position"}]
       34 GETIMPORT                        R9 K18 [Vector2.new]
       36 GETUPVAL                         R11 2
       37 GETTABLEKS                       R11 R11 K19 ["MaxRadius"]
       39 MINUS                            R10 R11
       40 LOADN                            R11 0
       41 CALL                             R9 2 1
       42 SETTABLEKS                       R9 R8 K14 ["Position"]
       44 DUPTABLE                         R9 K15 [{"Position"}]
       45 GETIMPORT                        R10 K18 [Vector2.new]
       47 GETUPVAL                         R11 2
       48 GETTABLEKS                       R11 R11 K19 ["MaxRadius"]
       50 LOADN                            R12 0
       51 CALL                             R10 2 1
       52 SETTABLEKS                       R10 R9 K14 ["Position"]
       54 SETLIST                          R7 R8 2 [1]
       56 SETTABLEKS                       R7 R6 K11 ["Points"]
       58 CALL                             R4 2 1
       59 SETTABLEKS                       R4 R3 K2 ["XAxis"]
       61 GETUPVAL                         R4 0
       62 GETTABLEKS                       R4 R4 K0 ["createElement"]
       64 GETUPVAL                         R5 1
       65 GETTABLEKS                       R5 R5 K7 ["Curve"]
       67 DUPTABLE                         R6 K12 [{"Color3", "Thickness", "ObserveThickness", "Points"}]
       68 GETUPVAL                         R7 2
       69 GETTABLEKS                       R7 R7 K13 ["AxisColor"]
       71 SETTABLEKS                       R7 R6 K8 ["Color3"]
       73 GETUPVAL                         R7 2
       74 GETTABLEKS                       R7 R7 K9 ["Thickness"]
       76 SETTABLEKS                       R7 R6 K9 ["Thickness"]
       78 GETUPVAL                         R7 2
       79 GETTABLEKS                       R7 R7 K10 ["ObserveThickness"]
       81 SETTABLEKS                       R7 R6 K10 ["ObserveThickness"]
       83 NEWTABLE                         R7 0 2
       85 DUPTABLE                         R8 K15 [{"Position"}]
       86 GETIMPORT                        R9 K18 [Vector2.new]
       88 LOADN                            R10 0
       89 GETUPVAL                         R12 2
       90 GETTABLEKS                       R12 R12 K19 ["MaxRadius"]
       92 MINUS                            R11 R12
       93 CALL                             R9 2 1
       94 SETTABLEKS                       R9 R8 K14 ["Position"]
       96 DUPTABLE                         R9 K15 [{"Position"}]
       97 GETIMPORT                        R10 K18 [Vector2.new]
       99 LOADN                            R11 0
      100 GETUPVAL                         R12 2
      101 GETTABLEKS                       R12 R12 K19 ["MaxRadius"]
      103 CALL                             R10 2 1
      104 SETTABLEKS                       R10 R9 K14 ["Position"]
      106 SETLIST                          R7 R8 2 [1]
      108 SETTABLEKS                       R7 R6 K11 ["Points"]
      110 CALL                             R4 2 1
      111 SETTABLEKS                       R4 R3 K3 ["YAxis"]
      113 GETUPVAL                         R4 0
      114 GETTABLEKS                       R4 R4 K0 ["createElement"]
      116 GETUPVAL                         R5 1
      117 GETTABLEKS                       R5 R5 K7 ["Curve"]
      119 DUPTABLE                         R6 K12 [{"Color3", "Thickness", "ObserveThickness", "Points"}]
      120 GETUPVAL                         R7 2
      121 GETTABLEKS                       R7 R7 K13 ["AxisColor"]
      123 SETTABLEKS                       R7 R6 K8 ["Color3"]
      125 GETUPVAL                         R7 2
      126 GETTABLEKS                       R7 R7 K9 ["Thickness"]
      128 SETTABLEKS                       R7 R6 K9 ["Thickness"]
      130 GETUPVAL                         R7 2
      131 GETTABLEKS                       R7 R7 K10 ["ObserveThickness"]
      133 SETTABLEKS                       R7 R6 K10 ["ObserveThickness"]
      135 NEWTABLE                         R7 0 2
      137 DUPTABLE                         R8 K15 [{"Position"}]
      138 GETIMPORT                        R10 K18 [Vector2.new]
      140 GETUPVAL                         R12 2
      141 GETTABLEKS                       R12 R12 K19 ["MaxRadius"]
      143 MINUS                            R11 R12
      144 GETUPVAL                         R13 2
      145 GETTABLEKS                       R13 R13 K19 ["MaxRadius"]
      147 MINUS                            R12 R13
      148 CALL                             R10 2 1
      149 MULK                             R9 R10 K20 [0.7071]
      150 SETTABLEKS                       R9 R8 K14 ["Position"]
      152 DUPTABLE                         R9 K15 [{"Position"}]
      153 GETIMPORT                        R11 K18 [Vector2.new]
      155 GETUPVAL                         R12 2
      156 GETTABLEKS                       R12 R12 K19 ["MaxRadius"]
      158 GETUPVAL                         R13 2
      159 GETTABLEKS                       R13 R13 K19 ["MaxRadius"]
      161 CALL                             R11 2 1
      162 MULK                             R10 R11 K20 [0.7071]
      163 SETTABLEKS                       R10 R9 K14 ["Position"]
      165 SETLIST                          R7 R8 2 [1]
      167 SETTABLEKS                       R7 R6 K11 ["Points"]
      169 CALL                             R4 2 1
      170 SETTABLEKS                       R4 R3 K4 ["Diag1"]
      172 GETUPVAL                         R4 0
      173 GETTABLEKS                       R4 R4 K0 ["createElement"]
      175 GETUPVAL                         R5 1
      176 GETTABLEKS                       R5 R5 K7 ["Curve"]
      178 DUPTABLE                         R6 K12 [{"Color3", "Thickness", "ObserveThickness", "Points"}]
      179 GETUPVAL                         R7 2
      180 GETTABLEKS                       R7 R7 K13 ["AxisColor"]
      182 SETTABLEKS                       R7 R6 K8 ["Color3"]
      184 GETUPVAL                         R7 2
      185 GETTABLEKS                       R7 R7 K9 ["Thickness"]
      187 SETTABLEKS                       R7 R6 K9 ["Thickness"]
      189 GETUPVAL                         R7 2
      190 GETTABLEKS                       R7 R7 K10 ["ObserveThickness"]
      192 SETTABLEKS                       R7 R6 K10 ["ObserveThickness"]
      194 NEWTABLE                         R7 0 2
      196 DUPTABLE                         R8 K15 [{"Position"}]
      197 GETIMPORT                        R10 K18 [Vector2.new]
      199 GETUPVAL                         R12 2
      200 GETTABLEKS                       R12 R12 K19 ["MaxRadius"]
      202 MINUS                            R11 R12
      203 GETUPVAL                         R12 2
      204 GETTABLEKS                       R12 R12 K19 ["MaxRadius"]
      206 CALL                             R10 2 1
      207 MULK                             R9 R10 K20 [0.7071]
      208 SETTABLEKS                       R9 R8 K14 ["Position"]
      210 DUPTABLE                         R9 K15 [{"Position"}]
      211 GETIMPORT                        R11 K18 [Vector2.new]
      213 GETUPVAL                         R12 2
      214 GETTABLEKS                       R12 R12 K19 ["MaxRadius"]
      216 GETUPVAL                         R14 2
      217 GETTABLEKS                       R14 R14 K19 ["MaxRadius"]
      219 MINUS                            R13 R14
      220 CALL                             R11 2 1
      221 MULK                             R10 R11 K20 [0.7071]
      222 SETTABLEKS                       R10 R9 K14 ["Position"]
      224 SETLIST                          R7 R8 2 [1]
      226 SETTABLEKS                       R7 R6 K11 ["Points"]
      228 CALL                             R4 2 1
      229 SETTABLEKS                       R4 R3 K5 ["Diag2"]
      231 CALL                             R0 3 -1
      232 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U2
        8 NEWTABLE                         R3 0 4
       10 GETTABLEKS                       R4 R0 K1 ["MaxRadius"]
       12 GETTABLEKS                       R5 R0 K2 ["GridColor"]
       14 GETTABLEKS                       R6 R0 K3 ["Thickness"]
       16 GETTABLEKS                       R7 R0 K4 ["ObserveThickness"]
       18 SETLIST                          R3 R4 4 [1]
       20 CALL                             R1 2 1
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K0 ["useMemo"]
       24 NEWCLOSURE                       R3 P1
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R0
       28 NEWTABLE                         R4 0 4
       30 GETTABLEKS                       R5 R0 K1 ["MaxRadius"]
       32 GETTABLEKS                       R6 R0 K5 ["AxisColor"]
       34 GETTABLEKS                       R7 R0 K3 ["Thickness"]
       36 GETTABLEKS                       R8 R0 K4 ["ObserveThickness"]
       38 SETLIST                          R4 R5 4 [1]
       40 CALL                             R2 2 1
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K6 ["createElement"]
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R4 R4 K7 ["Fragment"]
       47 NEWTABLE                         R5 0 0
       49 DUPTABLE                         R6 K10 [{"Circles", "Axes"}]
       50 SETTABLEKS                       R1 R6 K8 ["Circles"]
       52 SETTABLEKS                       R2 R6 K9 ["Axes"]
       54 CALL                             R3 3 -1
       55 RETURN                           R3 -1

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
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Signals"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["NodeView"]
       27 GETTABLEKS                       R4 R4 K11 ["CompositorNodeProperty"]
       29 GETTABLEKS                       R4 R4 K12 ["Blend2DMap"]
       31 GETTABLEKS                       R4 R4 K13 ["Circle"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Parent"]
       38 GETTABLEKS                       R5 R5 K14 ["Graphing"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K9 ["Components"]
       45 GETTABLEKS                       R6 R6 K10 ["NodeView"]
       47 GETTABLEKS                       R6 R6 K11 ["CompositorNodeProperty"]
       49 GETTABLEKS                       R6 R6 K15 ["PropertyUtils"]
       51 CALL                             R5 1 1
       52 DUPCLOSURE                       R6 K16 [PROTO_2]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R4
       57 RETURN                           R6 1
