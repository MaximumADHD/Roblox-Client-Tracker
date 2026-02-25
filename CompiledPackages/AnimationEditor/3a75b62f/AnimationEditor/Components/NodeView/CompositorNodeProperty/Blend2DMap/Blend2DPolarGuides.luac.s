PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["getStepFromSpread"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["MaxRadius"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K1 ["MaxRadius"]
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
       29 GETUPVAL                         R8 2
       30 GETTABLEKS                       R7 R8 K8 ["createElement"]
       32 GETUPVAL                         R8 3
       33 DUPTABLE                         R9 K11 [{"Radius", "Color3"}]
       34 SETTABLEKS                       R5 R9 K9 ["Radius"]
       36 GETUPVAL                         R11 1
       37 GETTABLEKS                       R10 R11 K10 ["Color3"]
       39 SETTABLEKS                       R10 R9 K10 ["Color3"]
       41 CALL                             R7 2 1
       42 SETTABLE                         R7 R0 R6
       43 FORNLOOP                         R3
       44 GETUPVAL                         R4 1
       45 GETTABLEKS                       R3 R4 K1 ["MaxRadius"]
       47 JUMPIFNOTLT                      R2 R3 ; [+27]
       49 LOADK                            R4 K5 ["circle-"]
       50 GETUPVAL                         R7 1
       51 GETTABLEKS                       R6 R7 K1 ["MaxRadius"]
       53 FASTCALL1                        TOSTRING R6 ; [+2]
       54 GETIMPORT                        R5 K7 [tostring]
       56 CALL                             R5 1 1
       57 CONCAT                           R3 R4 R5
       58 GETUPVAL                         R5 2
       59 GETTABLEKS                       R4 R5 K8 ["createElement"]
       61 GETUPVAL                         R5 3
       62 DUPTABLE                         R6 K11 [{"Radius", "Color3"}]
       63 GETUPVAL                         R8 1
       64 GETTABLEKS                       R7 R8 K1 ["MaxRadius"]
       66 SETTABLEKS                       R7 R6 K9 ["Radius"]
       68 GETUPVAL                         R8 1
       69 GETTABLEKS                       R7 R8 K10 ["Color3"]
       71 SETTABLEKS                       R7 R6 K10 ["Color3"]
       73 CALL                             R4 2 1
       74 SETTABLE                         R4 R0 R3
       75 GETUPVAL                         R4 2
       76 GETTABLEKS                       R3 R4 K8 ["createElement"]
       78 GETUPVAL                         R5 2
       79 GETTABLEKS                       R4 R5 K12 ["Fragment"]
       81 NEWTABLE                         R5 0 0
       83 MOVE                             R6 R0
       84 CALL                             R3 3 -1
       85 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["Fragment"]
        6 NEWTABLE                         R2 0 0
        8 DUPTABLE                         R3 K6 [{"XAxis", "YAxis", "Diag1", "Diag2"}]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K0 ["createElement"]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R5 R6 K7 ["Curve"]
       15 DUPTABLE                         R6 K10 [{"Color3", "Points"}]
       16 GETUPVAL                         R8 2
       17 GETTABLEKS                       R7 R8 K8 ["Color3"]
       19 SETTABLEKS                       R7 R6 K8 ["Color3"]
       21 NEWTABLE                         R7 0 2
       23 DUPTABLE                         R8 K12 [{"Position"}]
       24 GETIMPORT                        R9 K15 [Vector2.new]
       26 GETUPVAL                         R12 2
       27 GETTABLEKS                       R11 R12 K16 ["MaxRadius"]
       29 MINUS                            R10 R11
       30 LOADN                            R11 0
       31 CALL                             R9 2 1
       32 SETTABLEKS                       R9 R8 K11 ["Position"]
       34 DUPTABLE                         R9 K12 [{"Position"}]
       35 GETIMPORT                        R10 K15 [Vector2.new]
       37 GETUPVAL                         R12 2
       38 GETTABLEKS                       R11 R12 K16 ["MaxRadius"]
       40 LOADN                            R12 0
       41 CALL                             R10 2 1
       42 SETTABLEKS                       R10 R9 K11 ["Position"]
       44 SETLIST                          R7 R8 2 [1]
       46 SETTABLEKS                       R7 R6 K9 ["Points"]
       48 CALL                             R4 2 1
       49 SETTABLEKS                       R4 R3 K2 ["XAxis"]
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R4 R5 K0 ["createElement"]
       54 GETUPVAL                         R6 1
       55 GETTABLEKS                       R5 R6 K7 ["Curve"]
       57 DUPTABLE                         R6 K10 [{"Color3", "Points"}]
       58 GETUPVAL                         R8 2
       59 GETTABLEKS                       R7 R8 K8 ["Color3"]
       61 SETTABLEKS                       R7 R6 K8 ["Color3"]
       63 NEWTABLE                         R7 0 2
       65 DUPTABLE                         R8 K12 [{"Position"}]
       66 GETIMPORT                        R9 K15 [Vector2.new]
       68 LOADN                            R10 0
       69 GETUPVAL                         R13 2
       70 GETTABLEKS                       R12 R13 K16 ["MaxRadius"]
       72 MINUS                            R11 R12
       73 CALL                             R9 2 1
       74 SETTABLEKS                       R9 R8 K11 ["Position"]
       76 DUPTABLE                         R9 K12 [{"Position"}]
       77 GETIMPORT                        R10 K15 [Vector2.new]
       79 LOADN                            R11 0
       80 GETUPVAL                         R13 2
       81 GETTABLEKS                       R12 R13 K16 ["MaxRadius"]
       83 CALL                             R10 2 1
       84 SETTABLEKS                       R10 R9 K11 ["Position"]
       86 SETLIST                          R7 R8 2 [1]
       88 SETTABLEKS                       R7 R6 K9 ["Points"]
       90 CALL                             R4 2 1
       91 SETTABLEKS                       R4 R3 K3 ["YAxis"]
       93 GETUPVAL                         R5 0
       94 GETTABLEKS                       R4 R5 K0 ["createElement"]
       96 GETUPVAL                         R6 1
       97 GETTABLEKS                       R5 R6 K7 ["Curve"]
       99 DUPTABLE                         R6 K10 [{"Color3", "Points"}]
      100 GETUPVAL                         R8 2
      101 GETTABLEKS                       R7 R8 K8 ["Color3"]
      103 SETTABLEKS                       R7 R6 K8 ["Color3"]
      105 NEWTABLE                         R7 0 2
      107 DUPTABLE                         R8 K12 [{"Position"}]
      108 GETIMPORT                        R10 K15 [Vector2.new]
      110 GETUPVAL                         R13 2
      111 GETTABLEKS                       R12 R13 K16 ["MaxRadius"]
      113 MINUS                            R11 R12
      114 GETUPVAL                         R14 2
      115 GETTABLEKS                       R13 R14 K16 ["MaxRadius"]
      117 MINUS                            R12 R13
      118 CALL                             R10 2 1
      119 MULK                             R9 R10 K17 [0.7071]
      120 SETTABLEKS                       R9 R8 K11 ["Position"]
      122 DUPTABLE                         R9 K12 [{"Position"}]
      123 GETIMPORT                        R11 K15 [Vector2.new]
      125 GETUPVAL                         R13 2
      126 GETTABLEKS                       R12 R13 K16 ["MaxRadius"]
      128 GETUPVAL                         R14 2
      129 GETTABLEKS                       R13 R14 K16 ["MaxRadius"]
      131 CALL                             R11 2 1
      132 MULK                             R10 R11 K17 [0.7071]
      133 SETTABLEKS                       R10 R9 K11 ["Position"]
      135 SETLIST                          R7 R8 2 [1]
      137 SETTABLEKS                       R7 R6 K9 ["Points"]
      139 CALL                             R4 2 1
      140 SETTABLEKS                       R4 R3 K4 ["Diag1"]
      142 GETUPVAL                         R5 0
      143 GETTABLEKS                       R4 R5 K0 ["createElement"]
      145 GETUPVAL                         R6 1
      146 GETTABLEKS                       R5 R6 K7 ["Curve"]
      148 DUPTABLE                         R6 K10 [{"Color3", "Points"}]
      149 GETUPVAL                         R8 2
      150 GETTABLEKS                       R7 R8 K8 ["Color3"]
      152 SETTABLEKS                       R7 R6 K8 ["Color3"]
      154 NEWTABLE                         R7 0 2
      156 DUPTABLE                         R8 K12 [{"Position"}]
      157 GETIMPORT                        R10 K15 [Vector2.new]
      159 GETUPVAL                         R13 2
      160 GETTABLEKS                       R12 R13 K16 ["MaxRadius"]
      162 MINUS                            R11 R12
      163 GETUPVAL                         R13 2
      164 GETTABLEKS                       R12 R13 K16 ["MaxRadius"]
      166 CALL                             R10 2 1
      167 MULK                             R9 R10 K17 [0.7071]
      168 SETTABLEKS                       R9 R8 K11 ["Position"]
      170 DUPTABLE                         R9 K12 [{"Position"}]
      171 GETIMPORT                        R11 K15 [Vector2.new]
      173 GETUPVAL                         R13 2
      174 GETTABLEKS                       R12 R13 K16 ["MaxRadius"]
      176 GETUPVAL                         R15 2
      177 GETTABLEKS                       R14 R15 K16 ["MaxRadius"]
      179 MINUS                            R13 R14
      180 CALL                             R11 2 1
      181 MULK                             R10 R11 K17 [0.7071]
      182 SETTABLEKS                       R10 R9 K11 ["Position"]
      184 SETLIST                          R7 R8 2 [1]
      186 SETTABLEKS                       R7 R6 K9 ["Points"]
      188 CALL                             R4 2 1
      189 SETTABLEKS                       R4 R3 K5 ["Diag2"]
      191 CALL                             R0 3 -1
      192 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U2
        8 NEWTABLE                         R3 0 2
       10 GETTABLEKS                       R4 R0 K1 ["MaxRadius"]
       12 GETTABLEKS                       R5 R0 K2 ["Color3"]
       14 SETLIST                          R3 R4 2 [1]
       16 CALL                             R1 2 1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K0 ["useMemo"]
       20 NEWCLOSURE                       R3 P1
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          VAL R0
       24 NEWTABLE                         R4 0 2
       26 GETTABLEKS                       R5 R0 K1 ["MaxRadius"]
       28 GETTABLEKS                       R6 R0 K2 ["Color3"]
       30 SETLIST                          R4 R5 2 [1]
       32 CALL                             R2 2 1
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R3 R4 K3 ["createElement"]
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R4 R5 K4 ["Fragment"]
       39 NEWTABLE                         R5 0 0
       41 DUPTABLE                         R6 K7 [{"Circles", "Axes"}]
       42 SETTABLEKS                       R1 R6 K5 ["Circles"]
       44 SETTABLEKS                       R2 R6 K6 ["Axes"]
       46 CALL                             R3 3 -1
       47 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R7 R0 K8 ["Components"]
       18 GETTABLEKS                       R6 R7 K9 ["NodeView"]
       20 GETTABLEKS                       R5 R6 K10 ["CompositorNodeProperty"]
       22 GETTABLEKS                       R4 R5 K11 ["Blend2DMap"]
       24 GETTABLEKS                       R3 R4 K12 ["Circle"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R5 R0 K6 ["Parent"]
       31 GETTABLEKS                       R4 R5 K13 ["Graphing"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R8 R0 K8 ["Components"]
       38 GETTABLEKS                       R7 R8 K9 ["NodeView"]
       40 GETTABLEKS                       R6 R7 K10 ["CompositorNodeProperty"]
       42 GETTABLEKS                       R5 R6 K14 ["PropertyUtils"]
       44 CALL                             R4 1 1
       45 DUPCLOSURE                       R5 K15 [PROTO_2]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R3
       50 RETURN                           R5 1
