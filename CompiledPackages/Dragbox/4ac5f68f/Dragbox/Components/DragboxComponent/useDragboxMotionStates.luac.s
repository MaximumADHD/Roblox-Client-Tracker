PROTO_0:
        0 DUPTABLE                         R0 K3 [{[1], ["Transparency"] = 1}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["Color3"]
        4 SETTABLEKS                       R1 R0 K0 ["Color3"]
        6 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R0 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["Color3"]
        4 SETTABLEKS                       R1 R0 K0 ["Color3"]
        6 LOADN                            R2 0
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K1 ["Transparency"]
       10 ORK                              R4 R5 K4 [0]
       11 SUBK                             R3 R4 K3 [0.1]
       12 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       14 GETIMPORT                        R1 K7 [math.max]
       16 CALL                             R1 2 1
       17 SETTABLEKS                       R1 R0 K1 ["Transparency"]
       19 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R0 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["Color3"]
        4 SETTABLEKS                       R1 R0 K0 ["Color3"]
        6 LOADN                            R2 0
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K1 ["Transparency"]
       10 ORK                              R4 R5 K4 [0]
       11 SUBK                             R3 R4 K3 [0.2]
       12 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       14 GETIMPORT                        R1 K7 [math.max]
       16 CALL                             R1 2 1
       17 SETTABLEKS                       R1 R0 K1 ["Transparency"]
       19 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["useMemo"]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R1
        5 NEWTABLE                         R6 0 1
        7 MOVE                             R7 R1
        8 SETLIST                          R6 R7 1 [1]
       10 CALL                             R4 2 1
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K0 ["useMemo"]
       14 NEWCLOSURE                       R6 P1
       15 CAPTURE                          VAL R1
       16 NEWTABLE                         R7 0 1
       18 MOVE                             R8 R1
       19 SETLIST                          R7 R8 1 [1]
       21 CALL                             R5 2 1
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K0 ["useMemo"]
       25 NEWCLOSURE                       R7 P2
       26 CAPTURE                          VAL R1
       27 NEWTABLE                         R8 0 1
       29 MOVE                             R9 R1
       30 SETLIST                          R8 R9 1 [1]
       32 CALL                             R6 2 1
       33 OR                               R7 R3 R2
       34 DUPTABLE                         R8 K5 [{"Default", "Hover", "Pressed", "Dragging"}]
       35 GETUPVAL                         R9 1
       36 GETTABLEKS                       R9 R9 K6 ["createState"]
       38 DUPTABLE                         R10 K15 [{["transparency"] = 0, ["backgroundColor3"], ["backgroundTransparency"], ["strokeColor3"], ["strokeTransparency"], ["knobColor3"], ["knobTransparency"]}]
       39 GETTABLEKS                       R11 R0 K16 ["Color3"]
       41 SETTABLEKS                       R11 R10 K9 ["backgroundColor3"]
       43 GETTABLEKS                       R11 R0 K17 ["Transparency"]
       45 SETTABLEKS                       R11 R10 K10 ["backgroundTransparency"]
       47 GETTABLEKS                       R11 R4 K16 ["Color3"]
       49 SETTABLEKS                       R11 R10 K11 ["strokeColor3"]
       51 GETTABLEKS                       R11 R4 K17 ["Transparency"]
       53 SETTABLEKS                       R11 R10 K12 ["strokeTransparency"]
       55 GETTABLEKS                       R11 R2 K16 ["Color3"]
       57 SETTABLEKS                       R11 R10 K13 ["knobColor3"]
       59 GETTABLEKS                       R11 R2 K17 ["Transparency"]
       61 SETTABLEKS                       R11 R10 K14 ["knobTransparency"]
       63 DUPTABLE                         R11 K19 [{"default"}]
       64 GETUPVAL                         R12 1
       65 GETTABLEKS                       R12 R12 K20 ["transition"]
       67 GETUPVAL                         R13 2
       68 GETTABLEKS                       R13 R13 K1 ["Default"]
       70 DUPTABLE                         R14 K23 [{["duration"] = 0.15}]
       71 CALL                             R12 2 1
       72 SETTABLEKS                       R12 R11 K18 ["default"]
       74 CALL                             R9 2 1
       75 SETTABLEKS                       R9 R8 K1 ["Default"]
       77 GETUPVAL                         R9 1
       78 GETTABLEKS                       R9 R9 K6 ["createState"]
       80 DUPTABLE                         R10 K15 [{["transparency"] = 0, ["backgroundColor3"], ["backgroundTransparency"], ["strokeColor3"], ["strokeTransparency"], ["knobColor3"], ["knobTransparency"]}]
       81 GETTABLEKS                       R11 R0 K16 ["Color3"]
       83 SETTABLEKS                       R11 R10 K9 ["backgroundColor3"]
       85 GETTABLEKS                       R11 R0 K17 ["Transparency"]
       87 SETTABLEKS                       R11 R10 K10 ["backgroundTransparency"]
       89 GETTABLEKS                       R11 R5 K16 ["Color3"]
       91 SETTABLEKS                       R11 R10 K11 ["strokeColor3"]
       93 GETTABLEKS                       R11 R5 K17 ["Transparency"]
       95 SETTABLEKS                       R11 R10 K12 ["strokeTransparency"]
       97 GETTABLEKS                       R11 R2 K16 ["Color3"]
       99 SETTABLEKS                       R11 R10 K13 ["knobColor3"]
      101 GETTABLEKS                       R11 R2 K17 ["Transparency"]
      103 SETTABLEKS                       R11 R10 K14 ["knobTransparency"]
      105 DUPTABLE                         R11 K19 [{"default"}]
      106 GETUPVAL                         R12 1
      107 GETTABLEKS                       R12 R12 K20 ["transition"]
      109 GETUPVAL                         R13 2
      110 GETTABLEKS                       R13 R13 K1 ["Default"]
      112 DUPTABLE                         R14 K25 [{["duration"] = 0.1}]
      113 CALL                             R12 2 1
      114 SETTABLEKS                       R12 R11 K18 ["default"]
      116 CALL                             R9 2 1
      117 SETTABLEKS                       R9 R8 K2 ["Hover"]
      119 GETUPVAL                         R9 1
      120 GETTABLEKS                       R9 R9 K6 ["createState"]
      122 DUPTABLE                         R10 K15 [{["transparency"] = 0, ["backgroundColor3"], ["backgroundTransparency"], ["strokeColor3"], ["strokeTransparency"], ["knobColor3"], ["knobTransparency"]}]
      123 GETTABLEKS                       R11 R0 K16 ["Color3"]
      125 SETTABLEKS                       R11 R10 K9 ["backgroundColor3"]
      127 GETTABLEKS                       R11 R0 K17 ["Transparency"]
      129 SETTABLEKS                       R11 R10 K10 ["backgroundTransparency"]
      131 GETTABLEKS                       R11 R6 K16 ["Color3"]
      133 SETTABLEKS                       R11 R10 K11 ["strokeColor3"]
      135 GETTABLEKS                       R11 R6 K17 ["Transparency"]
      137 SETTABLEKS                       R11 R10 K12 ["strokeTransparency"]
      139 GETTABLEKS                       R11 R7 K16 ["Color3"]
      141 SETTABLEKS                       R11 R10 K13 ["knobColor3"]
      143 GETTABLEKS                       R11 R7 K17 ["Transparency"]
      145 SETTABLEKS                       R11 R10 K14 ["knobTransparency"]
      147 DUPTABLE                         R11 K19 [{"default"}]
      148 GETUPVAL                         R12 1
      149 GETTABLEKS                       R12 R12 K20 ["transition"]
      151 GETUPVAL                         R13 2
      152 GETTABLEKS                       R13 R13 K1 ["Default"]
      154 DUPTABLE                         R14 K27 [{["duration"] = 0.05}]
      155 CALL                             R12 2 1
      156 SETTABLEKS                       R12 R11 K18 ["default"]
      158 CALL                             R9 2 1
      159 SETTABLEKS                       R9 R8 K3 ["Pressed"]
      161 GETUPVAL                         R9 1
      162 GETTABLEKS                       R9 R9 K6 ["createState"]
      164 DUPTABLE                         R10 K15 [{["transparency"] = 0, ["backgroundColor3"], ["backgroundTransparency"], ["strokeColor3"], ["strokeTransparency"], ["knobColor3"], ["knobTransparency"]}]
      165 GETTABLEKS                       R11 R0 K16 ["Color3"]
      167 SETTABLEKS                       R11 R10 K9 ["backgroundColor3"]
      169 GETTABLEKS                       R11 R0 K17 ["Transparency"]
      171 SETTABLEKS                       R11 R10 K10 ["backgroundTransparency"]
      173 GETTABLEKS                       R11 R6 K16 ["Color3"]
      175 SETTABLEKS                       R11 R10 K11 ["strokeColor3"]
      177 GETTABLEKS                       R11 R6 K17 ["Transparency"]
      179 SETTABLEKS                       R11 R10 K12 ["strokeTransparency"]
      181 GETTABLEKS                       R11 R7 K16 ["Color3"]
      183 SETTABLEKS                       R11 R10 K13 ["knobColor3"]
      185 GETTABLEKS                       R11 R7 K17 ["Transparency"]
      187 SETTABLEKS                       R11 R10 K14 ["knobTransparency"]
      189 DUPTABLE                         R11 K19 [{"default"}]
      190 GETUPVAL                         R12 1
      191 GETTABLEKS                       R12 R12 K20 ["transition"]
      193 GETUPVAL                         R13 2
      194 GETTABLEKS                       R13 R13 K1 ["Default"]
      196 DUPTABLE                         R14 K25 [{["duration"] = 0.1}]
      197 CALL                             R12 2 1
      198 SETTABLEKS                       R12 R11 K18 ["default"]
      200 CALL                             R9 2 1
      201 SETTABLEKS                       R9 R8 K4 ["Dragging"]
      203 RETURN                           R8 1

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
       23 GETTABLEKS                       R6 R0 K10 ["Components"]
       25 GETTABLEKS                       R6 R6 K11 ["DragboxComponent"]
       27 GETTABLEKS                       R6 R6 K12 ["DragboxTypes"]
       29 CALL                             R5 1 1
       30 DUPCLOSURE                       R6 K13 [PROTO_3]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R4
       34 RETURN                           R6 1
