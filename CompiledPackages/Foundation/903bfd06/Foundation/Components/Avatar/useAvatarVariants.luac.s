PROTO_0:
        0 DUPTABLE                         R1 K3 [{"container", "avatar", "indicatorBackplate"}]
        1 DUPTABLE                         R2 K5 [{"tag"}]
        2 LOADK                            R3 K6 ["radius-circle"]
        3 SETTABLEKS                       R3 R2 K4 ["tag"]
        5 SETTABLEKS                       R2 R1 K0 ["container"]
        7 DUPTABLE                         R2 K5 [{"tag"}]
        8 LOADK                            R3 K7 ["size-full radius-circle"]
        9 SETTABLEKS                       R3 R2 K4 ["tag"]
       11 SETTABLEKS                       R2 R1 K1 ["avatar"]
       13 DUPTABLE                         R2 K10 [{"ZIndex", "tag", "padding"}]
       14 LOADN                            R3 2
       15 SETTABLEKS                       R3 R2 K8 ["ZIndex"]
       17 LOADK                            R3 K11 ["position-bottom-right anchor-bottom-right auto-xy radius-circle bg-surface-0"]
       18 SETTABLEKS                       R3 R2 K4 ["tag"]
       20 GETIMPORT                        R3 K14 [UDim2.fromOffset]
       22 LOADN                            R4 3
       23 LOADN                            R5 3
       24 CALL                             R3 2 1
       25 SETTABLEKS                       R3 R2 K9 ["padding"]
       27 SETTABLEKS                       R2 R1 K2 ["indicatorBackplate"]
       29 NEWTABLE                         R2 4 0
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K15 ["XSmall"]
       34 DUPTABLE                         R4 K17 [{"indicator"}]
       35 DUPTABLE                         R5 K19 [{"size"}]
       36 GETTABLEKS                       R6 R0 K20 ["Size"]
       38 GETTABLEKS                       R6 R6 K21 ["Size_150"]
       40 SETTABLEKS                       R6 R5 K18 ["size"]
       42 SETTABLEKS                       R5 R4 K16 ["indicator"]
       44 SETTABLE                         R4 R2 R3
       45 GETUPVAL                         R3 0
       46 GETTABLEKS                       R3 R3 K22 ["Small"]
       48 DUPTABLE                         R4 K17 [{"indicator"}]
       49 DUPTABLE                         R5 K19 [{"size"}]
       50 GETTABLEKS                       R6 R0 K20 ["Size"]
       52 GETTABLEKS                       R6 R6 K21 ["Size_150"]
       54 SETTABLEKS                       R6 R5 K18 ["size"]
       56 SETTABLEKS                       R5 R4 K16 ["indicator"]
       58 SETTABLE                         R4 R2 R3
       59 GETUPVAL                         R3 0
       60 GETTABLEKS                       R3 R3 K23 ["Medium"]
       62 DUPTABLE                         R4 K17 [{"indicator"}]
       63 DUPTABLE                         R5 K19 [{"size"}]
       64 GETTABLEKS                       R6 R0 K20 ["Size"]
       66 GETTABLEKS                       R6 R6 K24 ["Size_200"]
       68 SETTABLEKS                       R6 R5 K18 ["size"]
       70 SETTABLEKS                       R5 R4 K16 ["indicator"]
       72 SETTABLE                         R4 R2 R3
       73 GETUPVAL                         R3 0
       74 GETTABLEKS                       R3 R3 K25 ["Large"]
       76 DUPTABLE                         R4 K17 [{"indicator"}]
       77 DUPTABLE                         R5 K19 [{"size"}]
       78 GETTABLEKS                       R6 R0 K20 ["Size"]
       80 GETTABLEKS                       R6 R6 K24 ["Size_200"]
       82 SETTABLEKS                       R6 R5 K18 ["size"]
       84 SETTABLEKS                       R5 R4 K16 ["indicator"]
       86 SETTABLE                         R4 R2 R3
       87 NEWTABLE                         R3 4 0
       89 GETUPVAL                         R4 1
       90 GETTABLEKS                       R4 R4 K26 ["InExperience"]
       92 NEWTABLE                         R5 0 0
       94 SETTABLE                         R5 R3 R4
       95 GETUPVAL                         R4 1
       96 GETTABLEKS                       R4 R4 K27 ["Away"]
       98 DUPTABLE                         R5 K17 [{"indicator"}]
       99 DUPTABLE                         R6 K30 [{"shape", "variant"}]
      100 GETUPVAL                         R7 2
      101 GETTABLEKS                       R7 R7 K31 ["Ring"]
      103 SETTABLEKS                       R7 R6 K28 ["shape"]
      105 GETUPVAL                         R7 3
      106 GETTABLEKS                       R7 R7 K32 ["Neutral"]
      108 SETTABLEKS                       R7 R6 K29 ["variant"]
      110 SETTABLEKS                       R6 R5 K16 ["indicator"]
      112 SETTABLE                         R5 R3 R4
      113 GETUPVAL                         R4 1
      114 GETTABLEKS                       R4 R4 K33 ["Active"]
      116 DUPTABLE                         R5 K17 [{"indicator"}]
      117 DUPTABLE                         R6 K30 [{"shape", "variant"}]
      118 GETUPVAL                         R7 2
      119 GETTABLEKS                       R7 R7 K34 ["Circle"]
      121 SETTABLEKS                       R7 R6 K28 ["shape"]
      123 GETUPVAL                         R7 3
      124 GETTABLEKS                       R7 R7 K35 ["Success"]
      126 SETTABLEKS                       R7 R6 K29 ["variant"]
      128 SETTABLEKS                       R6 R5 K16 ["indicator"]
      130 SETTABLE                         R5 R3 R4
      131 GETUPVAL                         R4 1
      132 GETTABLEKS                       R4 R4 K36 ["None"]
      134 NEWTABLE                         R5 0 0
      136 SETTABLE                         R5 R3 R4
      137 NEWTABLE                         R4 4 0
      139 GETUPVAL                         R5 0
      140 GETTABLEKS                       R5 R5 K15 ["XSmall"]
      142 GETTABLEKS                       R6 R0 K37 ["Stroke"]
      144 GETTABLEKS                       R6 R6 K38 ["Standard"]
      146 SETTABLE                         R6 R4 R5
      147 GETUPVAL                         R5 0
      148 GETTABLEKS                       R5 R5 K22 ["Small"]
      150 GETTABLEKS                       R6 R0 K37 ["Stroke"]
      152 GETTABLEKS                       R6 R6 K39 ["Thick"]
      154 SETTABLE                         R6 R4 R5
      155 GETUPVAL                         R5 0
      156 GETTABLEKS                       R5 R5 K23 ["Medium"]
      158 GETTABLEKS                       R6 R0 K37 ["Stroke"]
      160 GETTABLEKS                       R6 R6 K39 ["Thick"]
      162 SETTABLE                         R6 R4 R5
      163 GETUPVAL                         R5 0
      164 GETTABLEKS                       R5 R5 K25 ["Large"]
      166 GETTABLEKS                       R6 R0 K37 ["Stroke"]
      168 GETTABLEKS                       R6 R6 K40 ["Thicker"]
      170 SETTABLE                         R6 R4 R5
      171 DUPTABLE                         R5 K45 [{"common", "sizes", "presence", "iconSizeStrokes"}]
      172 SETTABLEKS                       R1 R5 K41 ["common"]
      174 SETTABLEKS                       R2 R5 K42 ["sizes"]
      176 SETTABLEKS                       R3 R5 K43 ["presence"]
      178 SETTABLEKS                       R4 R5 K44 ["iconSizeStrokes"]
      180 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["useVariants"]
        3 LOADK                            R6 K1 ["Avatar"]
        4 GETUPVAL                         R7 1
        5 MOVE                             R8 R0
        6 CALL                             R5 3 1
        7 NOT                              R6 R4
        8 JUMPIFNOT                        R6 ; [+13]
        9 LOADB                            R6 1
       10 GETUPVAL                         R7 2
       11 GETTABLEKS                       R7 R7 K2 ["Active"]
       13 JUMPIFEQ                         R2 R7 ; [+8]
       15 GETUPVAL                         R7 2
       16 GETTABLEKS                       R7 R7 K3 ["Away"]
       18 JUMPIFEQ                         R2 R7 ; [+2]
       20 LOADB                            R6 0 +1
       21 LOADB                            R6 1
       22 JUMPIF                           R4 ; [+12]
       23 GETUPVAL                         R8 2
       24 GETTABLEKS                       R8 R8 K4 ["InExperience"]
       26 JUMPIFNOTEQ                      R2 R8 ; [+8]
       28 GETTABLEKS                       R7 R0 K5 ["Color"]
       30 GETTABLEKS                       R7 R7 K6 ["System"]
       32 GETTABLEKS                       R7 R7 K7 ["Emphasis"]
       34 JUMP                             ; [+1]
       35 MOVE                             R7 R3
       36 JUMPIF                           R4 ; [+5]
       37 GETTABLEKS                       R8 R0 K8 ["Stroke"]
       39 GETTABLEKS                       R8 R8 K9 ["Thicker"]
       41 JUMP                             ; [+3]
       42 GETTABLEKS                       R9 R5 K10 ["iconSizeStrokes"]
       44 GETTABLE                         R8 R9 R1
       45 GETUPVAL                         R9 3
       46 GETTABLEKS                       R10 R5 K11 ["common"]
       48 GETTABLEKS                       R12 R5 K12 ["sizes"]
       50 GETTABLE                         R11 R12 R1
       51 GETTABLEKS                       R13 R5 K13 ["presence"]
       53 GETTABLE                         R12 R13 R2
       54 DUPTABLE                         R13 K16 [{"container", "indicator"}]
       55 DUPTABLE                         R14 K19 [{"stroke", "backgroundStyle"}]
       56 JUMPIFNOT                        R7 ; [+16]
       57 DUPTABLE                         R15 K22 [{"Color", "Transparency", "Thickness"}]
       58 GETUPVAL                         R16 4
       59 MOVE                             R17 R7
       60 LOADK                            R18 K23 ["Color3"]
       61 CALL                             R16 2 1
       62 SETTABLEKS                       R16 R15 K5 ["Color"]
       64 GETUPVAL                         R16 4
       65 MOVE                             R17 R7
       66 LOADK                            R18 K20 ["Transparency"]
       67 CALL                             R16 2 1
       68 SETTABLEKS                       R16 R15 K20 ["Transparency"]
       70 SETTABLEKS                       R8 R15 K21 ["Thickness"]
       72 JUMP                             ; [+1]
       73 LOADNIL                          R15
       74 SETTABLEKS                       R15 R14 K17 ["stroke"]
       76 SETTABLEKS                       R3 R14 K18 ["backgroundStyle"]
       78 SETTABLEKS                       R14 R13 K14 ["container"]
       80 DUPTABLE                         R14 K25 [{"isVisible"}]
       81 SETTABLEKS                       R6 R14 K24 ["isVisible"]
       83 SETTABLEKS                       R14 R13 K15 ["indicator"]
       85 CALL                             R9 4 -1
       86 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R2 K7 ["composeStyleVariant"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Providers"]
       18 GETTABLEKS                       R3 R3 K9 ["Style"]
       20 GETTABLEKS                       R3 R3 K10 ["Tokens"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Providers"]
       27 GETTABLEKS                       R4 R4 K9 ["Style"]
       29 GETTABLEKS                       R4 R4 K11 ["VariantsContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K12 ["Enums"]
       36 GETTABLEKS                       R5 R5 K13 ["InputSize"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K12 ["Enums"]
       43 GETTABLEKS                       R6 R6 K14 ["UserPresence"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K12 ["Enums"]
       50 GETTABLEKS                       R7 R7 K15 ["IndicatorVariant"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K12 ["Enums"]
       57 GETTABLEKS                       R8 R8 K16 ["IndicatorShape"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K17 ["Components"]
       64 GETTABLEKS                       R9 R9 K18 ["Types"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K6 ["Utility"]
       71 GETTABLEKS                       R10 R10 K19 ["indexBindable"]
       73 CALL                             R9 1 1
       74 DUPCLOSURE                       R10 K20 [PROTO_0]
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R6
       79 DUPCLOSURE                       R11 K21 [PROTO_1]
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R9
       85 RETURN                           R11 1
