PROTO_0:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R7 R7 K0 ["FoundationToggleVisualUpdate"]
        8 JUMPIFNOT                        R7 ; [+66]
        9 JUMPIFNOT                        R1 ; [+6]
       10 GETTABLEKS                       R7 R1 K1 ["backgroundStyle"]
       12 JUMPIFNOT                        R7 ; [+3]
       13 GETTABLEKS                       R2 R1 K1 ["backgroundStyle"]
       15 JUMP                             ; [+6]
       16 GETTABLEKS                       R7 R0 K2 ["Color"]
       18 GETTABLEKS                       R7 R7 K3 ["Content"]
       20 GETTABLEKS                       R2 R7 K4 ["Default"]
       22 JUMPIFNOT                        R1 ; [+6]
       23 GETTABLEKS                       R7 R1 K5 ["hoverStyle"]
       25 JUMPIFNOT                        R7 ; [+3]
       26 GETTABLEKS                       R3 R1 K5 ["hoverStyle"]
       28 JUMP                             ; [+6]
       29 GETTABLEKS                       R7 R0 K2 ["Color"]
       31 GETTABLEKS                       R7 R7 K3 ["Content"]
       33 GETTABLEKS                       R3 R7 K6 ["Emphasis"]
       35 JUMPIFNOT                        R1 ; [+6]
       36 GETTABLEKS                       R7 R1 K7 ["checkedStyle"]
       38 JUMPIFNOT                        R7 ; [+3]
       39 GETTABLEKS                       R4 R1 K7 ["checkedStyle"]
       41 JUMP                             ; [+6]
       42 GETTABLEKS                       R7 R0 K2 ["Color"]
       44 GETTABLEKS                       R7 R7 K8 ["ActionSubEmphasis"]
       46 GETTABLEKS                       R4 R7 K9 ["Background"]
       48 JUMPIFNOT                        R1 ; [+6]
       49 GETTABLEKS                       R7 R1 K10 ["labelStyle"]
       51 JUMPIFNOT                        R7 ; [+3]
       52 GETTABLEKS                       R5 R1 K10 ["labelStyle"]
       54 JUMP                             ; [+6]
       55 GETTABLEKS                       R7 R0 K2 ["Color"]
       57 GETTABLEKS                       R7 R7 K3 ["Content"]
       59 GETTABLEKS                       R5 R7 K4 ["Default"]
       61 JUMPIFNOT                        R1 ; [+6]
       62 GETTABLEKS                       R7 R1 K11 ["labelHoverStyle"]
       64 JUMPIFNOT                        R7 ; [+3]
       65 GETTABLEKS                       R6 R1 K11 ["labelHoverStyle"]
       67 JUMP                             ; [+40]
       68 GETTABLEKS                       R7 R0 K2 ["Color"]
       70 GETTABLEKS                       R7 R7 K3 ["Content"]
       72 GETTABLEKS                       R6 R7 K6 ["Emphasis"]
       74 JUMP                             ; [+33]
       75 GETTABLEKS                       R7 R0 K2 ["Color"]
       77 GETTABLEKS                       R7 R7 K3 ["Content"]
       79 GETTABLEKS                       R2 R7 K4 ["Default"]
       81 GETTABLEKS                       R7 R0 K2 ["Color"]
       83 GETTABLEKS                       R7 R7 K3 ["Content"]
       85 GETTABLEKS                       R3 R7 K6 ["Emphasis"]
       87 GETTABLEKS                       R7 R0 K2 ["Color"]
       89 GETTABLEKS                       R7 R7 K3 ["Content"]
       91 GETTABLEKS                       R5 R7 K4 ["Default"]
       93 GETTABLEKS                       R7 R0 K2 ["Color"]
       95 GETTABLEKS                       R7 R7 K3 ["Content"]
       97 GETTABLEKS                       R6 R7 K6 ["Emphasis"]
       99 JUMPIFNOT                        R1 ; [+2]
      100 MOVE                             R4 R1
      101 JUMP                             ; [+6]
      102 GETTABLEKS                       R7 R0 K2 ["Color"]
      104 GETTABLEKS                       R7 R7 K8 ["ActionSubEmphasis"]
      106 GETTABLEKS                       R4 R7 K9 ["Background"]
      108 DUPTABLE                         R7 K14 [{"Default", "Hover", "Checked"}]
      109 GETUPVAL                         R8 1
      110 GETTABLEKS                       R8 R8 K15 ["createState"]
      112 DUPTABLE                         R9 K17 [{"backgroundStyle", "strokeStyle", "labelStyle"}]
      113 DUPTABLE                         R10 K20 [{"Color3", "Transparency"}]
      114 GETTABLEKS                       R11 R2 K18 ["Color3"]
      116 SETTABLEKS                       R11 R10 K18 ["Color3"]
      118 JUMPIFNOT                        R1 ; [+8]
      119 GETTABLEKS                       R12 R1 K1 ["backgroundStyle"]
      121 JUMPIFNOT                        R12 ; [+5]
      122 GETTABLEKS                       R11 R1 K1 ["backgroundStyle"]
      124 GETTABLEKS                       R11 R11 K19 ["Transparency"]
      126 JUMP                             ; [+1]
      127 LOADN                            R11 1
      128 SETTABLEKS                       R11 R10 K19 ["Transparency"]
      130 SETTABLEKS                       R10 R9 K1 ["backgroundStyle"]
      132 SETTABLEKS                       R2 R9 K16 ["strokeStyle"]
      134 SETTABLEKS                       R5 R9 K10 ["labelStyle"]
      136 DUPTABLE                         R10 K23 [{"default", "transparency"}]
      137 GETUPVAL                         R11 1
      138 GETTABLEKS                       R11 R11 K24 ["transition"]
      140 GETUPVAL                         R12 2
      141 GETTABLEKS                       R12 R12 K4 ["Default"]
      143 DUPTABLE                         R13 K27 [{["duration"] = 0.2}]
      144 CALL                             R11 2 1
      145 SETTABLEKS                       R11 R10 K21 ["default"]
      147 GETUPVAL                         R11 1
      148 GETTABLEKS                       R11 R11 K24 ["transition"]
      150 DUPTABLE                         R12 K29 [{["easingStyle"], ["duration"] = 0.2}]
      151 GETIMPORT                        R13 K33 [Enum.EasingStyle.Linear]
      153 SETTABLEKS                       R13 R12 K28 ["easingStyle"]
      155 CALL                             R11 1 1
      156 SETTABLEKS                       R11 R10 K22 ["transparency"]
      158 CALL                             R8 2 1
      159 SETTABLEKS                       R8 R7 K4 ["Default"]
      161 GETUPVAL                         R8 1
      162 GETTABLEKS                       R8 R8 K15 ["createState"]
      164 DUPTABLE                         R9 K17 [{"backgroundStyle", "strokeStyle", "labelStyle"}]
      165 DUPTABLE                         R10 K20 [{"Color3", "Transparency"}]
      166 GETTABLEKS                       R11 R3 K18 ["Color3"]
      168 SETTABLEKS                       R11 R10 K18 ["Color3"]
      170 JUMPIFNOT                        R1 ; [+8]
      171 GETTABLEKS                       R12 R1 K5 ["hoverStyle"]
      173 JUMPIFNOT                        R12 ; [+5]
      174 GETTABLEKS                       R11 R1 K5 ["hoverStyle"]
      176 GETTABLEKS                       R11 R11 K19 ["Transparency"]
      178 JUMP                             ; [+1]
      179 LOADN                            R11 1
      180 SETTABLEKS                       R11 R10 K19 ["Transparency"]
      182 SETTABLEKS                       R10 R9 K1 ["backgroundStyle"]
      184 SETTABLEKS                       R3 R9 K16 ["strokeStyle"]
      186 SETTABLEKS                       R6 R9 K10 ["labelStyle"]
      188 DUPTABLE                         R10 K23 [{"default", "transparency"}]
      189 GETUPVAL                         R11 1
      190 GETTABLEKS                       R11 R11 K24 ["transition"]
      192 GETUPVAL                         R12 2
      193 GETTABLEKS                       R12 R12 K4 ["Default"]
      195 DUPTABLE                         R13 K35 [{["duration"] = 0}]
      196 CALL                             R11 2 1
      197 SETTABLEKS                       R11 R10 K21 ["default"]
      199 GETUPVAL                         R11 1
      200 GETTABLEKS                       R11 R11 K24 ["transition"]
      202 DUPTABLE                         R12 K36 [{["easingStyle"], ["duration"] = 0}]
      203 GETIMPORT                        R13 K33 [Enum.EasingStyle.Linear]
      205 SETTABLEKS                       R13 R12 K28 ["easingStyle"]
      207 CALL                             R11 1 1
      208 SETTABLEKS                       R11 R10 K22 ["transparency"]
      210 CALL                             R8 2 1
      211 SETTABLEKS                       R8 R7 K12 ["Hover"]
      213 GETUPVAL                         R8 1
      214 GETTABLEKS                       R8 R8 K15 ["createState"]
      216 DUPTABLE                         R9 K17 [{"backgroundStyle", "strokeStyle", "labelStyle"}]
      217 SETTABLEKS                       R4 R9 K1 ["backgroundStyle"]
      219 SETTABLEKS                       R4 R9 K16 ["strokeStyle"]
      221 SETTABLEKS                       R6 R9 K10 ["labelStyle"]
      223 DUPTABLE                         R10 K23 [{"default", "transparency"}]
      224 GETUPVAL                         R11 1
      225 GETTABLEKS                       R11 R11 K24 ["transition"]
      227 GETUPVAL                         R12 2
      228 GETTABLEKS                       R12 R12 K4 ["Default"]
      230 DUPTABLE                         R13 K27 [{["duration"] = 0.2}]
      231 CALL                             R11 2 1
      232 SETTABLEKS                       R11 R10 K21 ["default"]
      234 GETUPVAL                         R11 1
      235 GETTABLEKS                       R11 R11 K24 ["transition"]
      237 DUPTABLE                         R12 K29 [{["easingStyle"], ["duration"] = 0.2}]
      238 GETIMPORT                        R13 K33 [Enum.EasingStyle.Linear]
      240 SETTABLEKS                       R13 R12 K28 ["easingStyle"]
      242 CALL                             R11 1 1
      243 SETTABLEKS                       R11 R10 K22 ["transparency"]
      245 CALL                             R8 2 1
      246 SETTABLEKS                       R8 R7 K13 ["Checked"]
      248 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["Types"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Providers"]
       20 GETTABLEKS                       R4 R4 K10 ["Style"]
       22 GETTABLEKS                       R4 R4 K11 ["Tokens"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K12 ["Utility"]
       29 GETTABLEKS                       R5 R5 K13 ["Flags"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R1 K14 ["React"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R1 K15 ["Motion"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R6 K16 ["TransitionPreset"]
       44 DUPCLOSURE                       R8 K17 [PROTO_0]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R7
       48 RETURN                           R8 1
