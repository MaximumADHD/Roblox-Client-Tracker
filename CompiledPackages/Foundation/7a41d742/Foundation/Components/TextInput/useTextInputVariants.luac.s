PROTO_0:
        0 DUPTABLE                         R1 K6 [{"canvas", "outerContainer", "innerContainer", "outerView", "textBox", "icon"}]
        1 DUPTABLE                         R2 K8 [{"tag"}]
        2 GETTABLEKS                       R3 R0 K9 ["canvasTag"]
        4 SETTABLEKS                       R3 R2 K7 ["tag"]
        6 SETTABLEKS                       R2 R1 K0 ["canvas"]
        8 DUPTABLE                         R2 K11 [{"tag", "minHeight"}]
        9 GETTABLEKS                       R3 R0 K12 ["outerContainerTag"]
       11 SETTABLEKS                       R3 R2 K7 ["tag"]
       13 GETTABLEKS                       R3 R0 K13 ["minContainerHeight"]
       15 SETTABLEKS                       R3 R2 K10 ["minHeight"]
       17 SETTABLEKS                       R2 R1 K1 ["outerContainer"]
       19 DUPTABLE                         R2 K17 [{"tag", "horizontalPadding", "gap", "radius"}]
       20 GETTABLEKS                       R3 R0 K18 ["innerContainerTag"]
       22 SETTABLEKS                       R3 R2 K7 ["tag"]
       24 GETIMPORT                        R3 K21 [UDim.new]
       26 LOADN                            R4 0
       27 GETTABLEKS                       R5 R0 K14 ["horizontalPadding"]
       29 CALL                             R3 2 1
       30 SETTABLEKS                       R3 R2 K14 ["horizontalPadding"]
       32 GETTABLEKS                       R3 R0 K15 ["gap"]
       34 SETTABLEKS                       R3 R2 K15 ["gap"]
       36 GETTABLEKS                       R3 R0 K16 ["radius"]
       38 SETTABLEKS                       R3 R2 K16 ["radius"]
       40 SETTABLEKS                       R2 R1 K2 ["innerContainer"]
       42 DUPTABLE                         R2 K8 [{"tag"}]
       43 GETTABLEKS                       R3 R0 K22 ["outerViewTag"]
       45 SETTABLEKS                       R3 R2 K7 ["tag"]
       47 SETTABLEKS                       R2 R1 K3 ["outerView"]
       49 DUPTABLE                         R2 K24 [{"tag", "fontStyle"}]
       50 GETTABLEKS                       R3 R0 K25 ["textBoxTag"]
       52 SETTABLEKS                       R3 R2 K7 ["tag"]
       54 GETTABLEKS                       R3 R0 K26 ["typography"]
       56 SETTABLEKS                       R3 R2 K23 ["fontStyle"]
       58 SETTABLEKS                       R2 R1 K4 ["textBox"]
       60 DUPTABLE                         R2 K28 [{"size"}]
       61 GETTABLEKS                       R3 R0 K29 ["iconSize"]
       63 SETTABLEKS                       R3 R2 K27 ["size"]
       65 SETTABLEKS                       R2 R1 K5 ["icon"]
       67 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K5 [{"outerContainer", "innerContainer", "outerView", "textBox", "icon"}]
        1 DUPTABLE                         R2 K7 [{"tag"}]
        2 LOADK                            R3 K8 ["bg-shift-100"]
        3 SETTABLEKS                       R3 R2 K6 ["tag"]
        5 SETTABLEKS                       R2 R1 K0 ["outerContainer"]
        7 DUPTABLE                         R2 K7 [{"tag"}]
        8 LOADK                            R3 K9 ["row align-y-center"]
        9 SETTABLEKS                       R3 R2 K6 ["tag"]
       11 SETTABLEKS                       R2 R1 K1 ["innerContainer"]
       13 DUPTABLE                         R2 K7 [{"tag"}]
       14 LOADK                            R3 K10 ["row align-y-center bg-shift-100"]
       15 SETTABLEKS                       R3 R2 K6 ["tag"]
       17 SETTABLEKS                       R2 R1 K2 ["outerView"]
       19 DUPTABLE                         R2 K7 [{"tag"}]
       20 LOADK                            R3 K11 ["gui-object-defaults clip text-align-x-left text-align-y-center content-emphasis"]
       21 SETTABLEKS                       R3 R2 K6 ["tag"]
       23 SETTABLEKS                       R2 R1 K3 ["textBox"]
       25 DUPTABLE                         R2 K13 [{"style"}]
       26 GETTABLEKS                       R3 R0 K14 ["Color"]
       28 GETTABLEKS                       R3 R3 K15 ["Content"]
       30 GETTABLEKS                       R3 R3 K16 ["Muted"]
       32 SETTABLEKS                       R3 R2 K12 ["style"]
       34 SETTABLEKS                       R2 R1 K4 ["icon"]
       36 DUPTABLE                         R2 K18 [{"canvas", "outerContainer"}]
       37 DUPTABLE                         R3 K7 [{"tag"}]
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K19 ["FoundationUIStrokeInner"]
       41 JUMPIFNOT                        R5 ; [+2]
       42 LOADK                            R4 K20 ["size-full-0"]
       43 JUMP                             ; [+1]
       44 LOADK                            R4 K21 ["auto-y size-full-0"]
       45 SETTABLEKS                       R4 R3 K6 ["tag"]
       47 SETTABLEKS                       R3 R2 K17 ["canvas"]
       49 DUPTABLE                         R3 K7 [{"tag"}]
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R5 R5 K19 ["FoundationUIStrokeInner"]
       53 JUMPIFNOT                        R5 ; [+2]
       54 LOADK                            R4 K20 ["size-full-0"]
       55 JUMP                             ; [+1]
       56 LOADK                            R4 K21 ["auto-y size-full-0"]
       57 SETTABLEKS                       R4 R3 K6 ["tag"]
       59 SETTABLEKS                       R3 R2 K0 ["outerContainer"]
       61 NEWTABLE                         R3 4 0
       63 GETUPVAL                         R4 1
       64 GETTABLEKS                       R4 R4 K22 ["XSmall"]
       66 GETUPVAL                         R5 2
       67 DUPTABLE                         R6 K34 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "outerViewTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
       68 LOADK                            R7 K35 ["size-full-600"]
       69 SETTABLEKS                       R7 R6 K23 ["canvasTag"]
       71 LOADK                            R7 K36 ["radius-small"]
       72 SETTABLEKS                       R7 R6 K24 ["outerContainerTag"]
       74 GETTABLEKS                       R7 R0 K37 ["Radius"]
       76 GETTABLEKS                       R7 R7 K38 ["Small"]
       78 SETTABLEKS                       R7 R6 K25 ["radius"]
       80 LOADK                            R7 K39 ["gap-small"]
       81 SETTABLEKS                       R7 R6 K26 ["innerContainerTag"]
       83 GETUPVAL                         R8 0
       84 GETTABLEKS                       R8 R8 K19 ["FoundationUIStrokeInner"]
       86 JUMPIFNOT                        R8 ; [+2]
       87 LOADK                            R7 K40 ["size-full-600 radius-small gap-small"]
       88 JUMP                             ; [+1]
       89 LOADK                            R7 K41 [""]
       90 SETTABLEKS                       R7 R6 K27 ["outerViewTag"]
       92 GETTABLEKS                       R7 R0 K42 ["Padding"]
       94 GETTABLEKS                       R7 R7 K22 ["XSmall"]
       96 SETTABLEKS                       R7 R6 K28 ["horizontalPadding"]
       98 GETTABLEKS                       R7 R0 K43 ["Gap"]
      100 GETTABLEKS                       R7 R7 K38 ["Small"]
      102 SETTABLEKS                       R7 R6 K29 ["gap"]
      104 LOADK                            R7 K44 ["text-body-small"]
      105 SETTABLEKS                       R7 R6 K30 ["textBoxTag"]
      107 GETTABLEKS                       R7 R0 K45 ["Typography"]
      109 GETTABLEKS                       R7 R7 K46 ["BodySmall"]
      111 SETTABLEKS                       R7 R6 K31 ["typography"]
      113 GETUPVAL                         R7 3
      114 GETTABLEKS                       R7 R7 K22 ["XSmall"]
      116 SETTABLEKS                       R7 R6 K32 ["iconSize"]
      118 GETTABLEKS                       R7 R0 K47 ["Size"]
      120 GETTABLEKS                       R7 R7 K48 ["Size_600"]
      122 SETTABLEKS                       R7 R6 K33 ["minContainerHeight"]
      124 CALL                             R5 1 1
      125 SETTABLE                         R5 R3 R4
      126 GETUPVAL                         R4 1
      127 GETTABLEKS                       R4 R4 K38 ["Small"]
      129 GETUPVAL                         R5 2
      130 DUPTABLE                         R6 K34 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "outerViewTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
      131 LOADK                            R7 K49 ["size-full-800"]
      132 SETTABLEKS                       R7 R6 K23 ["canvasTag"]
      134 LOADK                            R7 K50 ["radius-medium"]
      135 SETTABLEKS                       R7 R6 K24 ["outerContainerTag"]
      137 GETTABLEKS                       R7 R0 K37 ["Radius"]
      139 GETTABLEKS                       R7 R7 K51 ["Medium"]
      141 SETTABLEKS                       R7 R6 K25 ["radius"]
      143 LOADK                            R7 K52 ["gap-medium"]
      144 SETTABLEKS                       R7 R6 K26 ["innerContainerTag"]
      146 GETUPVAL                         R8 0
      147 GETTABLEKS                       R8 R8 K19 ["FoundationUIStrokeInner"]
      149 JUMPIFNOT                        R8 ; [+2]
      150 LOADK                            R7 K53 ["size-full-800 radius-medium gap-medium"]
      151 JUMP                             ; [+1]
      152 LOADK                            R7 K41 [""]
      153 SETTABLEKS                       R7 R6 K27 ["outerViewTag"]
      155 GETTABLEKS                       R7 R0 K42 ["Padding"]
      157 GETTABLEKS                       R7 R7 K38 ["Small"]
      159 SETTABLEKS                       R7 R6 K28 ["horizontalPadding"]
      161 GETTABLEKS                       R7 R0 K43 ["Gap"]
      163 GETTABLEKS                       R7 R7 K51 ["Medium"]
      165 SETTABLEKS                       R7 R6 K29 ["gap"]
      167 LOADK                            R7 K54 ["text-body-medium"]
      168 SETTABLEKS                       R7 R6 K30 ["textBoxTag"]
      170 GETTABLEKS                       R7 R0 K45 ["Typography"]
      172 GETTABLEKS                       R7 R7 K55 ["BodyMedium"]
      174 SETTABLEKS                       R7 R6 K31 ["typography"]
      176 GETUPVAL                         R7 3
      177 GETTABLEKS                       R7 R7 K22 ["XSmall"]
      179 SETTABLEKS                       R7 R6 K32 ["iconSize"]
      181 GETTABLEKS                       R7 R0 K47 ["Size"]
      183 GETTABLEKS                       R7 R7 K56 ["Size_800"]
      185 SETTABLEKS                       R7 R6 K33 ["minContainerHeight"]
      187 CALL                             R5 1 1
      188 SETTABLE                         R5 R3 R4
      189 GETUPVAL                         R4 1
      190 GETTABLEKS                       R4 R4 K51 ["Medium"]
      192 GETUPVAL                         R5 2
      193 DUPTABLE                         R6 K34 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "outerViewTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
      194 LOADK                            R7 K57 ["size-full-1000"]
      195 SETTABLEKS                       R7 R6 K23 ["canvasTag"]
      197 LOADK                            R7 K50 ["radius-medium"]
      198 SETTABLEKS                       R7 R6 K24 ["outerContainerTag"]
      200 GETTABLEKS                       R7 R0 K37 ["Radius"]
      202 GETTABLEKS                       R7 R7 K51 ["Medium"]
      204 SETTABLEKS                       R7 R6 K25 ["radius"]
      206 LOADK                            R7 K58 ["gap-large"]
      207 SETTABLEKS                       R7 R6 K26 ["innerContainerTag"]
      209 GETUPVAL                         R8 0
      210 GETTABLEKS                       R8 R8 K19 ["FoundationUIStrokeInner"]
      212 JUMPIFNOT                        R8 ; [+2]
      213 LOADK                            R7 K59 ["size-full-1000 radius-medium gap-large"]
      214 JUMP                             ; [+1]
      215 LOADK                            R7 K41 [""]
      216 SETTABLEKS                       R7 R6 K27 ["outerViewTag"]
      218 GETTABLEKS                       R7 R0 K42 ["Padding"]
      220 GETTABLEKS                       R7 R7 K38 ["Small"]
      222 SETTABLEKS                       R7 R6 K28 ["horizontalPadding"]
      224 GETTABLEKS                       R7 R0 K43 ["Gap"]
      226 GETTABLEKS                       R7 R7 K60 ["Large"]
      228 SETTABLEKS                       R7 R6 K29 ["gap"]
      230 LOADK                            R7 K54 ["text-body-medium"]
      231 SETTABLEKS                       R7 R6 K30 ["textBoxTag"]
      233 GETTABLEKS                       R7 R0 K45 ["Typography"]
      235 GETTABLEKS                       R7 R7 K55 ["BodyMedium"]
      237 SETTABLEKS                       R7 R6 K31 ["typography"]
      239 GETUPVAL                         R7 3
      240 GETTABLEKS                       R7 R7 K38 ["Small"]
      242 SETTABLEKS                       R7 R6 K32 ["iconSize"]
      244 GETTABLEKS                       R7 R0 K47 ["Size"]
      246 GETTABLEKS                       R7 R7 K61 ["Size_1000"]
      248 SETTABLEKS                       R7 R6 K33 ["minContainerHeight"]
      250 CALL                             R5 1 1
      251 SETTABLE                         R5 R3 R4
      252 GETUPVAL                         R4 1
      253 GETTABLEKS                       R4 R4 K60 ["Large"]
      255 GETUPVAL                         R5 2
      256 DUPTABLE                         R6 K34 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "outerViewTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
      257 LOADK                            R7 K62 ["size-full-1200"]
      258 SETTABLEKS                       R7 R6 K23 ["canvasTag"]
      260 LOADK                            R7 K50 ["radius-medium"]
      261 SETTABLEKS                       R7 R6 K24 ["outerContainerTag"]
      263 GETTABLEKS                       R7 R0 K37 ["Radius"]
      265 GETTABLEKS                       R7 R7 K51 ["Medium"]
      267 SETTABLEKS                       R7 R6 K25 ["radius"]
      269 LOADK                            R7 K58 ["gap-large"]
      270 SETTABLEKS                       R7 R6 K26 ["innerContainerTag"]
      272 GETUPVAL                         R8 0
      273 GETTABLEKS                       R8 R8 K19 ["FoundationUIStrokeInner"]
      275 JUMPIFNOT                        R8 ; [+2]
      276 LOADK                            R7 K63 ["size-full-1200 radius-medium gap-large"]
      277 JUMP                             ; [+1]
      278 LOADK                            R7 K41 [""]
      279 SETTABLEKS                       R7 R6 K27 ["outerViewTag"]
      281 GETTABLEKS                       R7 R0 K42 ["Padding"]
      283 GETTABLEKS                       R7 R7 K51 ["Medium"]
      285 SETTABLEKS                       R7 R6 K28 ["horizontalPadding"]
      287 GETTABLEKS                       R7 R0 K43 ["Gap"]
      289 GETTABLEKS                       R7 R7 K60 ["Large"]
      291 SETTABLEKS                       R7 R6 K29 ["gap"]
      293 LOADK                            R7 K64 ["text-body-large"]
      294 SETTABLEKS                       R7 R6 K30 ["textBoxTag"]
      296 GETTABLEKS                       R7 R0 K45 ["Typography"]
      298 GETTABLEKS                       R7 R7 K65 ["BodyLarge"]
      300 SETTABLEKS                       R7 R6 K31 ["typography"]
      302 GETUPVAL                         R7 3
      303 GETTABLEKS                       R7 R7 K38 ["Small"]
      305 SETTABLEKS                       R7 R6 K32 ["iconSize"]
      307 GETTABLEKS                       R7 R0 K47 ["Size"]
      309 GETTABLEKS                       R7 R7 K66 ["Size_1200"]
      311 SETTABLEKS                       R7 R6 K33 ["minContainerHeight"]
      313 CALL                             R5 1 1
      314 SETTABLE                         R5 R3 R4
      315 DUPTABLE                         R4 K70 [{"common", "sizes", "multiline"}]
      316 SETTABLEKS                       R1 R4 K67 ["common"]
      318 SETTABLEKS                       R3 R4 K68 ["sizes"]
      320 SETTABLEKS                       R2 R4 K69 ["multiline"]
      322 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useVariants"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R3 K9 ["InputSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Enums"]
       25 GETTABLEKS                       R4 R4 K10 ["IconSize"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Utility"]
       32 GETTABLEKS                       R5 R5 K12 ["composeStyleVariant"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Providers"]
       39 GETTABLEKS                       R6 R6 K14 ["Style"]
       41 GETTABLEKS                       R6 R6 K15 ["Tokens"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K13 ["Providers"]
       48 GETTABLEKS                       R7 R7 K14 ["Style"]
       50 GETTABLEKS                       R7 R7 K16 ["VariantsContext"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K11 ["Utility"]
       57 GETTABLEKS                       R8 R8 K17 ["Flags"]
       59 CALL                             R7 1 1
       60 DUPCLOSURE                       R8 K18 [PROTO_0]
       61 DUPCLOSURE                       R9 K19 [PROTO_1]
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R3
       66 DUPCLOSURE                       R10 K20 [PROTO_2]
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R4
       70 RETURN                           R10 1
