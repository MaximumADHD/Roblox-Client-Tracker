PROTO_0:
        0 DUPTABLE                         R0 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["Color3"]
        4 SETTABLEKS                       R1 R0 K0 ["Color3"]
        6 LOADN                            R1 1
        7 SETTABLEKS                       R1 R0 K1 ["Transparency"]
        9 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R0 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["Color3"]
        4 SETTABLEKS                       R1 R0 K0 ["Color3"]
        6 LOADN                            R2 0
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K1 ["Transparency"]
       10 ORK                              R4 R5 K4 [0]
       11 SUBK                             R3 R4 K3 [0.1]
       12 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       14 GETIMPORT                        R1 K7 [math.max]
       16 CALL                             R1 2 1
       17 SETTABLEKS                       R1 R0 K1 ["Transparency"]
       19 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R0 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["Color3"]
        4 SETTABLEKS                       R1 R0 K0 ["Color3"]
        6 LOADN                            R2 0
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K1 ["Transparency"]
       10 ORK                              R4 R5 K4 [0]
       11 SUBK                             R3 R4 K3 [0.2]
       12 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       14 GETIMPORT                        R1 K7 [math.max]
       16 CALL                             R1 2 1
       17 SETTABLEKS                       R1 R0 K1 ["Transparency"]
       19 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["useMemo"]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R1
        5 NEWTABLE                         R6 0 1
        7 MOVE                             R7 R1
        8 SETLIST                          R6 R7 1 [1]
       10 CALL                             R4 2 1
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R5 R6 K0 ["useMemo"]
       14 NEWCLOSURE                       R6 P1
       15 CAPTURE                          VAL R1
       16 NEWTABLE                         R7 0 1
       18 MOVE                             R8 R1
       19 SETLIST                          R7 R8 1 [1]
       21 CALL                             R5 2 1
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R6 R7 K0 ["useMemo"]
       25 NEWCLOSURE                       R7 P2
       26 CAPTURE                          VAL R1
       27 NEWTABLE                         R8 0 1
       29 MOVE                             R9 R1
       30 SETLIST                          R8 R9 1 [1]
       32 CALL                             R6 2 1
       33 OR                               R7 R3 R2
       34 DUPTABLE                         R8 K5 [{"Default", "Hover", "Pressed", "Dragging"}]
       35 GETUPVAL                         R10 1
       36 GETTABLEKS                       R9 R10 K6 ["createState"]
       38 DUPTABLE                         R10 K14 [{"transparency", "backgroundColor3", "backgroundTransparency", "strokeColor3", "strokeTransparency", "knobColor3", "knobTransparency"}]
       39 LOADN                            R11 0
       40 SETTABLEKS                       R11 R10 K7 ["transparency"]
       42 GETTABLEKS                       R11 R0 K15 ["Color3"]
       44 SETTABLEKS                       R11 R10 K8 ["backgroundColor3"]
       46 GETTABLEKS                       R11 R0 K16 ["Transparency"]
       48 SETTABLEKS                       R11 R10 K9 ["backgroundTransparency"]
       50 GETTABLEKS                       R11 R4 K15 ["Color3"]
       52 SETTABLEKS                       R11 R10 K10 ["strokeColor3"]
       54 GETTABLEKS                       R11 R4 K16 ["Transparency"]
       56 SETTABLEKS                       R11 R10 K11 ["strokeTransparency"]
       58 GETTABLEKS                       R11 R2 K15 ["Color3"]
       60 SETTABLEKS                       R11 R10 K12 ["knobColor3"]
       62 GETTABLEKS                       R11 R2 K16 ["Transparency"]
       64 SETTABLEKS                       R11 R10 K13 ["knobTransparency"]
       66 DUPTABLE                         R11 K18 [{"default"}]
       67 GETUPVAL                         R13 1
       68 GETTABLEKS                       R12 R13 K19 ["transition"]
       70 GETUPVAL                         R14 2
       71 GETTABLEKS                       R13 R14 K1 ["Default"]
       73 DUPTABLE                         R14 K21 [{"duration"}]
       74 LOADK                            R15 K22 [0.15]
       75 SETTABLEKS                       R15 R14 K20 ["duration"]
       77 CALL                             R12 2 1
       78 SETTABLEKS                       R12 R11 K17 ["default"]
       80 CALL                             R9 2 1
       81 SETTABLEKS                       R9 R8 K1 ["Default"]
       83 GETUPVAL                         R10 1
       84 GETTABLEKS                       R9 R10 K6 ["createState"]
       86 DUPTABLE                         R10 K14 [{"transparency", "backgroundColor3", "backgroundTransparency", "strokeColor3", "strokeTransparency", "knobColor3", "knobTransparency"}]
       87 LOADN                            R11 0
       88 SETTABLEKS                       R11 R10 K7 ["transparency"]
       90 GETTABLEKS                       R11 R0 K15 ["Color3"]
       92 SETTABLEKS                       R11 R10 K8 ["backgroundColor3"]
       94 GETTABLEKS                       R11 R0 K16 ["Transparency"]
       96 SETTABLEKS                       R11 R10 K9 ["backgroundTransparency"]
       98 GETTABLEKS                       R11 R5 K15 ["Color3"]
      100 SETTABLEKS                       R11 R10 K10 ["strokeColor3"]
      102 GETTABLEKS                       R11 R5 K16 ["Transparency"]
      104 SETTABLEKS                       R11 R10 K11 ["strokeTransparency"]
      106 GETTABLEKS                       R11 R2 K15 ["Color3"]
      108 SETTABLEKS                       R11 R10 K12 ["knobColor3"]
      110 GETTABLEKS                       R11 R2 K16 ["Transparency"]
      112 SETTABLEKS                       R11 R10 K13 ["knobTransparency"]
      114 DUPTABLE                         R11 K18 [{"default"}]
      115 GETUPVAL                         R13 1
      116 GETTABLEKS                       R12 R13 K19 ["transition"]
      118 GETUPVAL                         R14 2
      119 GETTABLEKS                       R13 R14 K1 ["Default"]
      121 DUPTABLE                         R14 K21 [{"duration"}]
      122 LOADK                            R15 K23 [0.1]
      123 SETTABLEKS                       R15 R14 K20 ["duration"]
      125 CALL                             R12 2 1
      126 SETTABLEKS                       R12 R11 K17 ["default"]
      128 CALL                             R9 2 1
      129 SETTABLEKS                       R9 R8 K2 ["Hover"]
      131 GETUPVAL                         R10 1
      132 GETTABLEKS                       R9 R10 K6 ["createState"]
      134 DUPTABLE                         R10 K14 [{"transparency", "backgroundColor3", "backgroundTransparency", "strokeColor3", "strokeTransparency", "knobColor3", "knobTransparency"}]
      135 LOADN                            R11 0
      136 SETTABLEKS                       R11 R10 K7 ["transparency"]
      138 GETTABLEKS                       R11 R0 K15 ["Color3"]
      140 SETTABLEKS                       R11 R10 K8 ["backgroundColor3"]
      142 GETTABLEKS                       R11 R0 K16 ["Transparency"]
      144 SETTABLEKS                       R11 R10 K9 ["backgroundTransparency"]
      146 GETTABLEKS                       R11 R6 K15 ["Color3"]
      148 SETTABLEKS                       R11 R10 K10 ["strokeColor3"]
      150 GETTABLEKS                       R11 R6 K16 ["Transparency"]
      152 SETTABLEKS                       R11 R10 K11 ["strokeTransparency"]
      154 GETTABLEKS                       R11 R7 K15 ["Color3"]
      156 SETTABLEKS                       R11 R10 K12 ["knobColor3"]
      158 GETTABLEKS                       R11 R7 K16 ["Transparency"]
      160 SETTABLEKS                       R11 R10 K13 ["knobTransparency"]
      162 DUPTABLE                         R11 K18 [{"default"}]
      163 GETUPVAL                         R13 1
      164 GETTABLEKS                       R12 R13 K19 ["transition"]
      166 GETUPVAL                         R14 2
      167 GETTABLEKS                       R13 R14 K1 ["Default"]
      169 DUPTABLE                         R14 K21 [{"duration"}]
      170 LOADK                            R15 K24 [0.05]
      171 SETTABLEKS                       R15 R14 K20 ["duration"]
      173 CALL                             R12 2 1
      174 SETTABLEKS                       R12 R11 K17 ["default"]
      176 CALL                             R9 2 1
      177 SETTABLEKS                       R9 R8 K3 ["Pressed"]
      179 GETUPVAL                         R10 1
      180 GETTABLEKS                       R9 R10 K6 ["createState"]
      182 DUPTABLE                         R10 K14 [{"transparency", "backgroundColor3", "backgroundTransparency", "strokeColor3", "strokeTransparency", "knobColor3", "knobTransparency"}]
      183 LOADN                            R11 0
      184 SETTABLEKS                       R11 R10 K7 ["transparency"]
      186 GETTABLEKS                       R11 R0 K15 ["Color3"]
      188 SETTABLEKS                       R11 R10 K8 ["backgroundColor3"]
      190 GETTABLEKS                       R11 R0 K16 ["Transparency"]
      192 SETTABLEKS                       R11 R10 K9 ["backgroundTransparency"]
      194 GETTABLEKS                       R11 R6 K15 ["Color3"]
      196 SETTABLEKS                       R11 R10 K10 ["strokeColor3"]
      198 GETTABLEKS                       R11 R6 K16 ["Transparency"]
      200 SETTABLEKS                       R11 R10 K11 ["strokeTransparency"]
      202 GETTABLEKS                       R11 R7 K15 ["Color3"]
      204 SETTABLEKS                       R11 R10 K12 ["knobColor3"]
      206 GETTABLEKS                       R11 R7 K16 ["Transparency"]
      208 SETTABLEKS                       R11 R10 K13 ["knobTransparency"]
      210 DUPTABLE                         R11 K18 [{"default"}]
      211 GETUPVAL                         R13 1
      212 GETTABLEKS                       R12 R13 K19 ["transition"]
      214 GETUPVAL                         R14 2
      215 GETTABLEKS                       R13 R14 K1 ["Default"]
      217 DUPTABLE                         R14 K21 [{"duration"}]
      218 LOADK                            R15 K23 [0.1]
      219 SETTABLEKS                       R15 R14 K20 ["duration"]
      221 CALL                             R12 2 1
      222 SETTABLEKS                       R12 R11 K17 ["default"]
      224 CALL                             R9 2 1
      225 SETTABLEKS                       R9 R8 K4 ["Dragging"]
      227 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dragbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Motion"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["TransitionPreset"]
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R8 R0 K10 ["Components"]
       25 GETTABLEKS                       R7 R8 K11 ["DragboxComponent"]
       27 GETTABLEKS                       R6 R7 K12 ["DragboxTypes"]
       29 CALL                             R5 1 1
       30 DUPCLOSURE                       R6 K13 [PROTO_3]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R4
       34 RETURN                           R6 1
