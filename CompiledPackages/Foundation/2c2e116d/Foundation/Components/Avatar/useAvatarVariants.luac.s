PROTO_0:
        0 DUPTABLE                         R1 K3 [{"container", "avatar", "indicatorBackplate"}]
        1 DUPTABLE                         R2 K6 [{["tag"] = "radius-circle"}]
        2 SETTABLEKS                       R2 R1 K0 ["container"]
        4 DUPTABLE                         R2 K8 [{["tag"] = "size-full radius-circle"}]
        5 SETTABLEKS                       R2 R1 K1 ["avatar"]
        7 DUPTABLE                         R2 K13 [{["ZIndex"] = 2, ["tag"] = "position-bottom-right anchor-bottom-right auto-xy radius-circle bg-surface-0", ["padding"]}]
        8 GETIMPORT                        R3 K16 [UDim2.fromOffset]
       10 LOADN                            R4 3
       11 LOADN                            R5 3
       12 CALL                             R3 2 1
       13 SETTABLEKS                       R3 R2 K12 ["padding"]
       15 SETTABLEKS                       R2 R1 K2 ["indicatorBackplate"]
       17 NEWTABLE                         R2 4 0
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K17 ["XSmall"]
       22 DUPTABLE                         R4 K19 [{"indicator"}]
       23 DUPTABLE                         R5 K21 [{"size"}]
       24 GETTABLEKS                       R6 R0 K22 ["Size"]
       26 GETTABLEKS                       R6 R6 K23 ["Size_150"]
       28 SETTABLEKS                       R6 R5 K20 ["size"]
       30 SETTABLEKS                       R5 R4 K18 ["indicator"]
       32 SETTABLE                         R4 R2 R3
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K24 ["Small"]
       36 DUPTABLE                         R4 K19 [{"indicator"}]
       37 DUPTABLE                         R5 K21 [{"size"}]
       38 GETTABLEKS                       R6 R0 K22 ["Size"]
       40 GETTABLEKS                       R6 R6 K23 ["Size_150"]
       42 SETTABLEKS                       R6 R5 K20 ["size"]
       44 SETTABLEKS                       R5 R4 K18 ["indicator"]
       46 SETTABLE                         R4 R2 R3
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K25 ["Medium"]
       50 DUPTABLE                         R4 K19 [{"indicator"}]
       51 DUPTABLE                         R5 K21 [{"size"}]
       52 GETTABLEKS                       R6 R0 K22 ["Size"]
       54 GETTABLEKS                       R6 R6 K26 ["Size_200"]
       56 SETTABLEKS                       R6 R5 K20 ["size"]
       58 SETTABLEKS                       R5 R4 K18 ["indicator"]
       60 SETTABLE                         R4 R2 R3
       61 GETUPVAL                         R3 0
       62 GETTABLEKS                       R3 R3 K27 ["Large"]
       64 DUPTABLE                         R4 K19 [{"indicator"}]
       65 DUPTABLE                         R5 K21 [{"size"}]
       66 GETTABLEKS                       R6 R0 K22 ["Size"]
       68 GETTABLEKS                       R6 R6 K26 ["Size_200"]
       70 SETTABLEKS                       R6 R5 K20 ["size"]
       72 SETTABLEKS                       R5 R4 K18 ["indicator"]
       74 SETTABLE                         R4 R2 R3
       75 NEWTABLE                         R3 4 0
       77 GETUPVAL                         R4 1
       78 GETTABLEKS                       R4 R4 K28 ["InExperience"]
       80 NEWTABLE                         R5 0 0
       82 SETTABLE                         R5 R3 R4
       83 GETUPVAL                         R4 1
       84 GETTABLEKS                       R4 R4 K29 ["Away"]
       86 DUPTABLE                         R5 K19 [{"indicator"}]
       87 DUPTABLE                         R6 K32 [{"shape", "variant"}]
       88 GETUPVAL                         R7 2
       89 GETTABLEKS                       R7 R7 K33 ["Ring"]
       91 SETTABLEKS                       R7 R6 K30 ["shape"]
       93 GETUPVAL                         R7 3
       94 GETTABLEKS                       R7 R7 K34 ["Neutral"]
       96 SETTABLEKS                       R7 R6 K31 ["variant"]
       98 SETTABLEKS                       R6 R5 K18 ["indicator"]
      100 SETTABLE                         R5 R3 R4
      101 GETUPVAL                         R4 1
      102 GETTABLEKS                       R4 R4 K35 ["Active"]
      104 DUPTABLE                         R5 K19 [{"indicator"}]
      105 DUPTABLE                         R6 K32 [{"shape", "variant"}]
      106 GETUPVAL                         R7 2
      107 GETTABLEKS                       R7 R7 K36 ["Circle"]
      109 SETTABLEKS                       R7 R6 K30 ["shape"]
      111 GETUPVAL                         R7 3
      112 GETTABLEKS                       R7 R7 K37 ["Success"]
      114 SETTABLEKS                       R7 R6 K31 ["variant"]
      116 SETTABLEKS                       R6 R5 K18 ["indicator"]
      118 SETTABLE                         R5 R3 R4
      119 GETUPVAL                         R4 1
      120 GETTABLEKS                       R4 R4 K38 ["None"]
      122 NEWTABLE                         R5 0 0
      124 SETTABLE                         R5 R3 R4
      125 NEWTABLE                         R4 4 0
      127 GETUPVAL                         R5 0
      128 GETTABLEKS                       R5 R5 K17 ["XSmall"]
      130 GETTABLEKS                       R6 R0 K39 ["Stroke"]
      132 GETTABLEKS                       R6 R6 K40 ["Standard"]
      134 SETTABLE                         R6 R4 R5
      135 GETUPVAL                         R5 0
      136 GETTABLEKS                       R5 R5 K24 ["Small"]
      138 GETTABLEKS                       R6 R0 K39 ["Stroke"]
      140 GETTABLEKS                       R6 R6 K41 ["Thick"]
      142 SETTABLE                         R6 R4 R5
      143 GETUPVAL                         R5 0
      144 GETTABLEKS                       R5 R5 K25 ["Medium"]
      146 GETTABLEKS                       R6 R0 K39 ["Stroke"]
      148 GETTABLEKS                       R6 R6 K41 ["Thick"]
      150 SETTABLE                         R6 R4 R5
      151 GETUPVAL                         R5 0
      152 GETTABLEKS                       R5 R5 K27 ["Large"]
      154 GETTABLEKS                       R6 R0 K39 ["Stroke"]
      156 GETTABLEKS                       R6 R6 K42 ["Thicker"]
      158 SETTABLE                         R6 R4 R5
      159 DUPTABLE                         R5 K47 [{"common", "sizes", "presence", "iconSizeStrokes"}]
      160 SETTABLEKS                       R1 R5 K43 ["common"]
      162 SETTABLEKS                       R2 R5 K44 ["sizes"]
      164 SETTABLEKS                       R3 R5 K45 ["presence"]
      166 SETTABLEKS                       R4 R5 K46 ["iconSizeStrokes"]
      168 RETURN                           R5 1

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
