PROTO_0:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 GETUPVAL                         R8 0
        6 GETTABLEKS                       R7 R8 K0 ["FoundationToggleVisualUpdate"]
        8 JUMPIFNOT                        R7 ; [+66]
        9 JUMPIFNOT                        R1 ; [+6]
       10 GETTABLEKS                       R7 R1 K1 ["backgroundStyle"]
       12 JUMPIFNOT                        R7 ; [+3]
       13 GETTABLEKS                       R2 R1 K1 ["backgroundStyle"]
       15 JUMP                             ; [+6]
       16 GETTABLEKS                       R8 R0 K2 ["Color"]
       18 GETTABLEKS                       R7 R8 K3 ["Content"]
       20 GETTABLEKS                       R2 R7 K4 ["Default"]
       22 JUMPIFNOT                        R1 ; [+6]
       23 GETTABLEKS                       R7 R1 K5 ["hoverStyle"]
       25 JUMPIFNOT                        R7 ; [+3]
       26 GETTABLEKS                       R3 R1 K5 ["hoverStyle"]
       28 JUMP                             ; [+6]
       29 GETTABLEKS                       R8 R0 K2 ["Color"]
       31 GETTABLEKS                       R7 R8 K3 ["Content"]
       33 GETTABLEKS                       R3 R7 K6 ["Emphasis"]
       35 JUMPIFNOT                        R1 ; [+6]
       36 GETTABLEKS                       R7 R1 K7 ["checkedStyle"]
       38 JUMPIFNOT                        R7 ; [+3]
       39 GETTABLEKS                       R4 R1 K7 ["checkedStyle"]
       41 JUMP                             ; [+6]
       42 GETTABLEKS                       R8 R0 K2 ["Color"]
       44 GETTABLEKS                       R7 R8 K8 ["ActionSubEmphasis"]
       46 GETTABLEKS                       R4 R7 K9 ["Background"]
       48 JUMPIFNOT                        R1 ; [+6]
       49 GETTABLEKS                       R7 R1 K10 ["labelStyle"]
       51 JUMPIFNOT                        R7 ; [+3]
       52 GETTABLEKS                       R5 R1 K10 ["labelStyle"]
       54 JUMP                             ; [+6]
       55 GETTABLEKS                       R8 R0 K2 ["Color"]
       57 GETTABLEKS                       R7 R8 K3 ["Content"]
       59 GETTABLEKS                       R5 R7 K4 ["Default"]
       61 JUMPIFNOT                        R1 ; [+6]
       62 GETTABLEKS                       R7 R1 K11 ["labelHoverStyle"]
       64 JUMPIFNOT                        R7 ; [+3]
       65 GETTABLEKS                       R6 R1 K11 ["labelHoverStyle"]
       67 JUMP                             ; [+40]
       68 GETTABLEKS                       R8 R0 K2 ["Color"]
       70 GETTABLEKS                       R7 R8 K3 ["Content"]
       72 GETTABLEKS                       R6 R7 K6 ["Emphasis"]
       74 JUMP                             ; [+33]
       75 GETTABLEKS                       R8 R0 K2 ["Color"]
       77 GETTABLEKS                       R7 R8 K3 ["Content"]
       79 GETTABLEKS                       R2 R7 K4 ["Default"]
       81 GETTABLEKS                       R8 R0 K2 ["Color"]
       83 GETTABLEKS                       R7 R8 K3 ["Content"]
       85 GETTABLEKS                       R3 R7 K6 ["Emphasis"]
       87 GETTABLEKS                       R8 R0 K2 ["Color"]
       89 GETTABLEKS                       R7 R8 K3 ["Content"]
       91 GETTABLEKS                       R5 R7 K4 ["Default"]
       93 GETTABLEKS                       R8 R0 K2 ["Color"]
       95 GETTABLEKS                       R7 R8 K3 ["Content"]
       97 GETTABLEKS                       R6 R7 K6 ["Emphasis"]
       99 JUMPIFNOT                        R1 ; [+2]
      100 MOVE                             R4 R1
      101 JUMP                             ; [+6]
      102 GETTABLEKS                       R8 R0 K2 ["Color"]
      104 GETTABLEKS                       R7 R8 K8 ["ActionSubEmphasis"]
      106 GETTABLEKS                       R4 R7 K9 ["Background"]
      108 DUPTABLE                         R7 K14 [{"Default", "Hover", "Checked"}]
      109 GETUPVAL                         R9 1
      110 GETTABLEKS                       R8 R9 K15 ["createState"]
      112 DUPTABLE                         R9 K17 [{"backgroundStyle", "strokeStyle", "labelStyle"}]
      113 DUPTABLE                         R10 K20 [{"Color3", "Transparency"}]
      114 GETTABLEKS                       R11 R2 K18 ["Color3"]
      116 SETTABLEKS                       R11 R10 K18 ["Color3"]
      118 JUMPIFNOT                        R1 ; [+8]
      119 GETTABLEKS                       R12 R1 K1 ["backgroundStyle"]
      121 JUMPIFNOT                        R12 ; [+5]
      122 GETTABLEKS                       R12 R1 K1 ["backgroundStyle"]
      124 GETTABLEKS                       R11 R12 K19 ["Transparency"]
      126 JUMP                             ; [+1]
      127 LOADN                            R11 1
      128 SETTABLEKS                       R11 R10 K19 ["Transparency"]
      130 SETTABLEKS                       R10 R9 K1 ["backgroundStyle"]
      132 SETTABLEKS                       R2 R9 K16 ["strokeStyle"]
      134 SETTABLEKS                       R5 R9 K10 ["labelStyle"]
      136 DUPTABLE                         R10 K23 [{"default", "transparency"}]
      137 GETUPVAL                         R12 1
      138 GETTABLEKS                       R11 R12 K24 ["transition"]
      140 GETUPVAL                         R13 2
      141 GETTABLEKS                       R12 R13 K4 ["Default"]
      143 DUPTABLE                         R13 K26 [{"duration"}]
      144 LOADK                            R14 K27 [0.2]
      145 SETTABLEKS                       R14 R13 K25 ["duration"]
      147 CALL                             R11 2 1
      148 SETTABLEKS                       R11 R10 K21 ["default"]
      150 GETUPVAL                         R12 1
      151 GETTABLEKS                       R11 R12 K24 ["transition"]
      153 DUPTABLE                         R12 K29 [{"easingStyle", "duration"}]
      154 GETIMPORT                        R13 K33 [Enum.EasingStyle.Linear]
      156 SETTABLEKS                       R13 R12 K28 ["easingStyle"]
      158 LOADK                            R13 K27 [0.2]
      159 SETTABLEKS                       R13 R12 K25 ["duration"]
      161 CALL                             R11 1 1
      162 SETTABLEKS                       R11 R10 K22 ["transparency"]
      164 CALL                             R8 2 1
      165 SETTABLEKS                       R8 R7 K4 ["Default"]
      167 GETUPVAL                         R9 1
      168 GETTABLEKS                       R8 R9 K15 ["createState"]
      170 DUPTABLE                         R9 K17 [{"backgroundStyle", "strokeStyle", "labelStyle"}]
      171 DUPTABLE                         R10 K20 [{"Color3", "Transparency"}]
      172 GETTABLEKS                       R11 R3 K18 ["Color3"]
      174 SETTABLEKS                       R11 R10 K18 ["Color3"]
      176 JUMPIFNOT                        R1 ; [+8]
      177 GETTABLEKS                       R12 R1 K5 ["hoverStyle"]
      179 JUMPIFNOT                        R12 ; [+5]
      180 GETTABLEKS                       R12 R1 K5 ["hoverStyle"]
      182 GETTABLEKS                       R11 R12 K19 ["Transparency"]
      184 JUMP                             ; [+1]
      185 LOADN                            R11 1
      186 SETTABLEKS                       R11 R10 K19 ["Transparency"]
      188 SETTABLEKS                       R10 R9 K1 ["backgroundStyle"]
      190 SETTABLEKS                       R3 R9 K16 ["strokeStyle"]
      192 SETTABLEKS                       R6 R9 K10 ["labelStyle"]
      194 DUPTABLE                         R10 K23 [{"default", "transparency"}]
      195 GETUPVAL                         R12 1
      196 GETTABLEKS                       R11 R12 K24 ["transition"]
      198 GETUPVAL                         R13 2
      199 GETTABLEKS                       R12 R13 K4 ["Default"]
      201 DUPTABLE                         R13 K26 [{"duration"}]
      202 LOADN                            R14 0
      203 SETTABLEKS                       R14 R13 K25 ["duration"]
      205 CALL                             R11 2 1
      206 SETTABLEKS                       R11 R10 K21 ["default"]
      208 GETUPVAL                         R12 1
      209 GETTABLEKS                       R11 R12 K24 ["transition"]
      211 DUPTABLE                         R12 K29 [{"easingStyle", "duration"}]
      212 GETIMPORT                        R13 K33 [Enum.EasingStyle.Linear]
      214 SETTABLEKS                       R13 R12 K28 ["easingStyle"]
      216 LOADN                            R13 0
      217 SETTABLEKS                       R13 R12 K25 ["duration"]
      219 CALL                             R11 1 1
      220 SETTABLEKS                       R11 R10 K22 ["transparency"]
      222 CALL                             R8 2 1
      223 SETTABLEKS                       R8 R7 K12 ["Hover"]
      225 GETUPVAL                         R9 1
      226 GETTABLEKS                       R8 R9 K15 ["createState"]
      228 DUPTABLE                         R9 K17 [{"backgroundStyle", "strokeStyle", "labelStyle"}]
      229 SETTABLEKS                       R4 R9 K1 ["backgroundStyle"]
      231 SETTABLEKS                       R4 R9 K16 ["strokeStyle"]
      233 SETTABLEKS                       R6 R9 K10 ["labelStyle"]
      235 DUPTABLE                         R10 K23 [{"default", "transparency"}]
      236 GETUPVAL                         R12 1
      237 GETTABLEKS                       R11 R12 K24 ["transition"]
      239 GETUPVAL                         R13 2
      240 GETTABLEKS                       R12 R13 K4 ["Default"]
      242 DUPTABLE                         R13 K26 [{"duration"}]
      243 LOADK                            R14 K27 [0.2]
      244 SETTABLEKS                       R14 R13 K25 ["duration"]
      246 CALL                             R11 2 1
      247 SETTABLEKS                       R11 R10 K21 ["default"]
      249 GETUPVAL                         R12 1
      250 GETTABLEKS                       R11 R12 K24 ["transition"]
      252 DUPTABLE                         R12 K29 [{"easingStyle", "duration"}]
      253 GETIMPORT                        R13 K33 [Enum.EasingStyle.Linear]
      255 SETTABLEKS                       R13 R12 K28 ["easingStyle"]
      257 LOADK                            R13 K27 [0.2]
      258 SETTABLEKS                       R13 R12 K25 ["duration"]
      260 CALL                             R11 1 1
      261 SETTABLEKS                       R11 R10 K22 ["transparency"]
      263 CALL                             R8 2 1
      264 SETTABLEKS                       R8 R7 K13 ["Checked"]
      266 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R4 K8 ["Types"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R6 R0 K9 ["Providers"]
       20 GETTABLEKS                       R5 R6 K10 ["Style"]
       22 GETTABLEKS                       R4 R5 K11 ["Tokens"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R6 R0 K12 ["Utility"]
       29 GETTABLEKS                       R5 R6 K13 ["Flags"]
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
