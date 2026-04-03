PROTO_0:
        0 DUPTABLE                         R1 K5 [{"canvas", "outerContainer", "innerContainer", "textBox", "icon"}]
        1 DUPTABLE                         R2 K7 [{"tag"}]
        2 GETTABLEKS                       R3 R0 K8 ["canvasTag"]
        4 SETTABLEKS                       R3 R2 K6 ["tag"]
        6 SETTABLEKS                       R2 R1 K0 ["canvas"]
        8 DUPTABLE                         R2 K10 [{"tag", "minHeight"}]
        9 GETTABLEKS                       R3 R0 K11 ["outerContainerTag"]
       11 SETTABLEKS                       R3 R2 K6 ["tag"]
       13 GETTABLEKS                       R3 R0 K12 ["minContainerHeight"]
       15 SETTABLEKS                       R3 R2 K9 ["minHeight"]
       17 SETTABLEKS                       R2 R1 K1 ["outerContainer"]
       19 DUPTABLE                         R2 K16 [{"tag", "horizontalPadding", "gap", "radius"}]
       20 GETTABLEKS                       R3 R0 K17 ["innerContainerTag"]
       22 SETTABLEKS                       R3 R2 K6 ["tag"]
       24 GETIMPORT                        R3 K20 [UDim.new]
       26 LOADN                            R4 0
       27 GETTABLEKS                       R5 R0 K13 ["horizontalPadding"]
       29 CALL                             R3 2 1
       30 SETTABLEKS                       R3 R2 K13 ["horizontalPadding"]
       32 GETTABLEKS                       R3 R0 K14 ["gap"]
       34 SETTABLEKS                       R3 R2 K14 ["gap"]
       36 GETTABLEKS                       R3 R0 K15 ["radius"]
       38 SETTABLEKS                       R3 R2 K15 ["radius"]
       40 SETTABLEKS                       R2 R1 K2 ["innerContainer"]
       42 DUPTABLE                         R2 K22 [{"tag", "fontStyle"}]
       43 GETTABLEKS                       R3 R0 K23 ["textBoxTag"]
       45 SETTABLEKS                       R3 R2 K6 ["tag"]
       47 GETTABLEKS                       R3 R0 K24 ["typography"]
       49 SETTABLEKS                       R3 R2 K21 ["fontStyle"]
       51 SETTABLEKS                       R2 R1 K3 ["textBox"]
       53 DUPTABLE                         R2 K26 [{"size"}]
       54 GETTABLEKS                       R3 R0 K27 ["iconSize"]
       56 SETTABLEKS                       R3 R2 K25 ["size"]
       58 SETTABLEKS                       R2 R1 K4 ["icon"]
       60 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K4 [{"outerContainer", "innerContainer", "textBox", "icon"}]
        1 DUPTABLE                         R2 K6 [{"tag"}]
        2 LOADK                            R3 K7 ["bg-shift-100"]
        3 SETTABLEKS                       R3 R2 K5 ["tag"]
        5 SETTABLEKS                       R2 R1 K0 ["outerContainer"]
        7 DUPTABLE                         R2 K6 [{"tag"}]
        8 LOADK                            R3 K8 ["row align-y-center"]
        9 SETTABLEKS                       R3 R2 K5 ["tag"]
       11 SETTABLEKS                       R2 R1 K1 ["innerContainer"]
       13 DUPTABLE                         R2 K6 [{"tag"}]
       14 LOADK                            R3 K9 ["gui-object-defaults clip text-align-x-left text-align-y-center content-emphasis"]
       15 SETTABLEKS                       R3 R2 K5 ["tag"]
       17 SETTABLEKS                       R2 R1 K2 ["textBox"]
       19 DUPTABLE                         R2 K11 [{"style"}]
       20 GETTABLEKS                       R5 R0 K12 ["Color"]
       22 GETTABLEKS                       R4 R5 K13 ["Content"]
       24 GETTABLEKS                       R3 R4 K14 ["Muted"]
       26 SETTABLEKS                       R3 R2 K10 ["style"]
       28 SETTABLEKS                       R2 R1 K3 ["icon"]
       30 DUPTABLE                         R2 K16 [{"canvas", "outerContainer"}]
       31 DUPTABLE                         R3 K6 [{"tag"}]
       32 LOADK                            R4 K17 ["auto-y size-full-0"]
       33 SETTABLEKS                       R4 R3 K5 ["tag"]
       35 SETTABLEKS                       R3 R2 K15 ["canvas"]
       37 DUPTABLE                         R3 K6 [{"tag"}]
       38 LOADK                            R4 K17 ["auto-y size-full-0"]
       39 SETTABLEKS                       R4 R3 K5 ["tag"]
       41 SETTABLEKS                       R3 R2 K0 ["outerContainer"]
       43 NEWTABLE                         R3 4 0
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R4 R5 K18 ["XSmall"]
       48 GETUPVAL                         R5 1
       49 DUPTABLE                         R6 K29 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
       50 LOADK                            R7 K30 ["size-full-600"]
       51 SETTABLEKS                       R7 R6 K19 ["canvasTag"]
       53 LOADK                            R7 K31 ["radius-small"]
       54 SETTABLEKS                       R7 R6 K20 ["outerContainerTag"]
       56 GETTABLEKS                       R8 R0 K32 ["Radius"]
       58 GETTABLEKS                       R7 R8 K33 ["Small"]
       60 SETTABLEKS                       R7 R6 K21 ["radius"]
       62 LOADK                            R7 K34 ["gap-small"]
       63 SETTABLEKS                       R7 R6 K22 ["innerContainerTag"]
       65 GETTABLEKS                       R8 R0 K35 ["Padding"]
       67 GETTABLEKS                       R7 R8 K18 ["XSmall"]
       69 SETTABLEKS                       R7 R6 K23 ["horizontalPadding"]
       71 GETTABLEKS                       R8 R0 K36 ["Gap"]
       73 GETTABLEKS                       R7 R8 K33 ["Small"]
       75 SETTABLEKS                       R7 R6 K24 ["gap"]
       77 LOADK                            R7 K37 ["text-body-small"]
       78 SETTABLEKS                       R7 R6 K25 ["textBoxTag"]
       80 GETTABLEKS                       R8 R0 K38 ["Typography"]
       82 GETTABLEKS                       R7 R8 K39 ["BodySmall"]
       84 SETTABLEKS                       R7 R6 K26 ["typography"]
       86 GETUPVAL                         R8 2
       87 GETTABLEKS                       R7 R8 K18 ["XSmall"]
       89 SETTABLEKS                       R7 R6 K27 ["iconSize"]
       91 GETTABLEKS                       R8 R0 K40 ["Size"]
       93 GETTABLEKS                       R7 R8 K41 ["Size_600"]
       95 SETTABLEKS                       R7 R6 K28 ["minContainerHeight"]
       97 CALL                             R5 1 1
       98 SETTABLE                         R5 R3 R4
       99 GETUPVAL                         R5 0
      100 GETTABLEKS                       R4 R5 K33 ["Small"]
      102 GETUPVAL                         R5 1
      103 DUPTABLE                         R6 K29 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
      104 LOADK                            R7 K42 ["size-full-800"]
      105 SETTABLEKS                       R7 R6 K19 ["canvasTag"]
      107 LOADK                            R7 K43 ["radius-medium"]
      108 SETTABLEKS                       R7 R6 K20 ["outerContainerTag"]
      110 GETUPVAL                         R9 3
      111 GETTABLEKS                       R8 R9 K44 ["FoundationInputInnerRadiusFix"]
      113 JUMPIFNOT                        R8 ; [+5]
      114 GETTABLEKS                       R8 R0 K32 ["Radius"]
      116 GETTABLEKS                       R7 R8 K45 ["Medium"]
      118 JUMP                             ; [+4]
      119 GETTABLEKS                       R8 R0 K32 ["Radius"]
      121 GETTABLEKS                       R7 R8 K33 ["Small"]
      123 SETTABLEKS                       R7 R6 K21 ["radius"]
      125 LOADK                            R7 K46 ["gap-medium"]
      126 SETTABLEKS                       R7 R6 K22 ["innerContainerTag"]
      128 GETTABLEKS                       R8 R0 K35 ["Padding"]
      130 GETTABLEKS                       R7 R8 K33 ["Small"]
      132 SETTABLEKS                       R7 R6 K23 ["horizontalPadding"]
      134 GETTABLEKS                       R8 R0 K36 ["Gap"]
      136 GETTABLEKS                       R7 R8 K45 ["Medium"]
      138 SETTABLEKS                       R7 R6 K24 ["gap"]
      140 LOADK                            R7 K47 ["text-body-medium"]
      141 SETTABLEKS                       R7 R6 K25 ["textBoxTag"]
      143 GETTABLEKS                       R8 R0 K38 ["Typography"]
      145 GETTABLEKS                       R7 R8 K48 ["BodyMedium"]
      147 SETTABLEKS                       R7 R6 K26 ["typography"]
      149 GETUPVAL                         R8 2
      150 GETTABLEKS                       R7 R8 K18 ["XSmall"]
      152 SETTABLEKS                       R7 R6 K27 ["iconSize"]
      154 GETTABLEKS                       R8 R0 K40 ["Size"]
      156 GETTABLEKS                       R7 R8 K49 ["Size_800"]
      158 SETTABLEKS                       R7 R6 K28 ["minContainerHeight"]
      160 CALL                             R5 1 1
      161 SETTABLE                         R5 R3 R4
      162 GETUPVAL                         R5 0
      163 GETTABLEKS                       R4 R5 K45 ["Medium"]
      165 GETUPVAL                         R5 1
      166 DUPTABLE                         R6 K29 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
      167 LOADK                            R7 K50 ["size-full-1000"]
      168 SETTABLEKS                       R7 R6 K19 ["canvasTag"]
      170 LOADK                            R7 K43 ["radius-medium"]
      171 SETTABLEKS                       R7 R6 K20 ["outerContainerTag"]
      173 GETUPVAL                         R9 3
      174 GETTABLEKS                       R8 R9 K44 ["FoundationInputInnerRadiusFix"]
      176 JUMPIFNOT                        R8 ; [+5]
      177 GETTABLEKS                       R8 R0 K32 ["Radius"]
      179 GETTABLEKS                       R7 R8 K45 ["Medium"]
      181 JUMP                             ; [+4]
      182 GETTABLEKS                       R8 R0 K32 ["Radius"]
      184 GETTABLEKS                       R7 R8 K33 ["Small"]
      186 SETTABLEKS                       R7 R6 K21 ["radius"]
      188 LOADK                            R7 K51 ["gap-large"]
      189 SETTABLEKS                       R7 R6 K22 ["innerContainerTag"]
      191 GETTABLEKS                       R8 R0 K35 ["Padding"]
      193 GETTABLEKS                       R7 R8 K33 ["Small"]
      195 SETTABLEKS                       R7 R6 K23 ["horizontalPadding"]
      197 GETTABLEKS                       R8 R0 K36 ["Gap"]
      199 GETTABLEKS                       R7 R8 K52 ["Large"]
      201 SETTABLEKS                       R7 R6 K24 ["gap"]
      203 LOADK                            R7 K47 ["text-body-medium"]
      204 SETTABLEKS                       R7 R6 K25 ["textBoxTag"]
      206 GETTABLEKS                       R8 R0 K38 ["Typography"]
      208 GETTABLEKS                       R7 R8 K48 ["BodyMedium"]
      210 SETTABLEKS                       R7 R6 K26 ["typography"]
      212 GETUPVAL                         R8 2
      213 GETTABLEKS                       R7 R8 K33 ["Small"]
      215 SETTABLEKS                       R7 R6 K27 ["iconSize"]
      217 GETTABLEKS                       R8 R0 K40 ["Size"]
      219 GETTABLEKS                       R7 R8 K53 ["Size_1000"]
      221 SETTABLEKS                       R7 R6 K28 ["minContainerHeight"]
      223 CALL                             R5 1 1
      224 SETTABLE                         R5 R3 R4
      225 GETUPVAL                         R5 0
      226 GETTABLEKS                       R4 R5 K52 ["Large"]
      228 GETUPVAL                         R5 1
      229 DUPTABLE                         R6 K29 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
      230 LOADK                            R7 K54 ["size-full-1200"]
      231 SETTABLEKS                       R7 R6 K19 ["canvasTag"]
      233 LOADK                            R7 K43 ["radius-medium"]
      234 SETTABLEKS                       R7 R6 K20 ["outerContainerTag"]
      236 GETTABLEKS                       R8 R0 K32 ["Radius"]
      238 GETTABLEKS                       R7 R8 K45 ["Medium"]
      240 SETTABLEKS                       R7 R6 K21 ["radius"]
      242 LOADK                            R7 K51 ["gap-large"]
      243 SETTABLEKS                       R7 R6 K22 ["innerContainerTag"]
      245 GETTABLEKS                       R8 R0 K35 ["Padding"]
      247 GETTABLEKS                       R7 R8 K45 ["Medium"]
      249 SETTABLEKS                       R7 R6 K23 ["horizontalPadding"]
      251 GETTABLEKS                       R8 R0 K36 ["Gap"]
      253 GETTABLEKS                       R7 R8 K52 ["Large"]
      255 SETTABLEKS                       R7 R6 K24 ["gap"]
      257 LOADK                            R7 K55 ["text-body-large"]
      258 SETTABLEKS                       R7 R6 K25 ["textBoxTag"]
      260 GETTABLEKS                       R8 R0 K38 ["Typography"]
      262 GETTABLEKS                       R7 R8 K56 ["BodyLarge"]
      264 SETTABLEKS                       R7 R6 K26 ["typography"]
      266 GETUPVAL                         R8 2
      267 GETTABLEKS                       R7 R8 K33 ["Small"]
      269 SETTABLEKS                       R7 R6 K27 ["iconSize"]
      271 GETTABLEKS                       R8 R0 K40 ["Size"]
      273 GETTABLEKS                       R7 R8 K57 ["Size_1200"]
      275 SETTABLEKS                       R7 R6 K28 ["minContainerHeight"]
      277 CALL                             R5 1 1
      278 SETTABLE                         R5 R3 R4
      279 DUPTABLE                         R4 K61 [{"common", "sizes", "multiline"}]
      280 SETTABLEKS                       R1 R4 K58 ["common"]
      282 SETTABLEKS                       R3 R4 K59 ["sizes"]
      284 SETTABLEKS                       R2 R4 K60 ["multiline"]
      286 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useVariants"]
        3 LOADK                            R3 K1 ["TextInput"]
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R0
        6 CALL                             R2 3 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R4 R2 K2 ["common"]
       10 GETTABLEKS                       R6 R2 K3 ["sizes"]
       12 GETTABLE                         R5 R6 R1
       13 GETTABLEKS                       R6 R2 K4 ["multiline"]
       15 CALL                             R3 3 -1
       16 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R4 K9 ["InputSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Enums"]
       25 GETTABLEKS                       R4 R5 K10 ["IconSize"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Utility"]
       32 GETTABLEKS                       R5 R6 K12 ["composeStyleVariant"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K13 ["Providers"]
       39 GETTABLEKS                       R7 R8 K14 ["Style"]
       41 GETTABLEKS                       R6 R7 K15 ["Tokens"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K11 ["Utility"]
       48 GETTABLEKS                       R7 R8 K16 ["Flags"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R10 R0 K13 ["Providers"]
       55 GETTABLEKS                       R9 R10 K14 ["Style"]
       57 GETTABLEKS                       R8 R9 K17 ["VariantsContext"]
       59 CALL                             R7 1 1
       60 DUPCLOSURE                       R8 K18 [PROTO_0]
       61 DUPCLOSURE                       R9 K19 [PROTO_1]
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R6
       66 DUPCLOSURE                       R10 K20 [PROTO_2]
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R4
       70 RETURN                           R10 1
