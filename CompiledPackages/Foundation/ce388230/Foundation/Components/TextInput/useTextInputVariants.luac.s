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
       13 DUPTABLE                         R2 K11 [{"bgStyle", "tag"}]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K12 ["FoundationNumberInputFixScrubbableBG"]
       17 JUMPIFNOT                        R4 ; [+7]
       18 GETTABLEKS                       R3 R0 K13 ["Color"]
       20 GETTABLEKS                       R3 R3 K14 ["Shift"]
       22 GETTABLEKS                       R3 R3 K15 ["Shift_100"]
       24 JUMP                             ; [+1]
       25 LOADNIL                          R3
       26 SETTABLEKS                       R3 R2 K10 ["bgStyle"]
       28 NEWTABLE                         R3 2 0
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K12 ["FoundationNumberInputFixScrubbableBG"]
       33 SETTABLEKS                       R4 R3 K9 ["row align-y-center"]
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K12 ["FoundationNumberInputFixScrubbableBG"]
       38 NOT                              R4 R5
       39 SETTABLEKS                       R4 R3 K16 ["row align-y-center bg-shift-100"]
       41 SETTABLEKS                       R3 R2 K6 ["tag"]
       43 SETTABLEKS                       R2 R1 K2 ["outerView"]
       45 DUPTABLE                         R2 K7 [{"tag"}]
       46 LOADK                            R3 K17 ["gui-object-defaults clip text-align-x-left text-align-y-center content-emphasis"]
       47 SETTABLEKS                       R3 R2 K6 ["tag"]
       49 SETTABLEKS                       R2 R1 K3 ["textBox"]
       51 DUPTABLE                         R2 K19 [{"style"}]
       52 GETTABLEKS                       R3 R0 K13 ["Color"]
       54 GETTABLEKS                       R3 R3 K20 ["Content"]
       56 GETTABLEKS                       R3 R3 K21 ["Muted"]
       58 SETTABLEKS                       R3 R2 K18 ["style"]
       60 SETTABLEKS                       R2 R1 K4 ["icon"]
       62 DUPTABLE                         R2 K23 [{"canvas", "outerContainer"}]
       63 DUPTABLE                         R3 K7 [{"tag"}]
       64 GETUPVAL                         R5 0
       65 GETTABLEKS                       R5 R5 K24 ["FoundationUIStrokeInner"]
       67 JUMPIFNOT                        R5 ; [+2]
       68 LOADK                            R4 K25 ["size-full-0"]
       69 JUMP                             ; [+1]
       70 LOADK                            R4 K26 ["auto-y size-full-0"]
       71 SETTABLEKS                       R4 R3 K6 ["tag"]
       73 SETTABLEKS                       R3 R2 K22 ["canvas"]
       75 DUPTABLE                         R3 K7 [{"tag"}]
       76 GETUPVAL                         R5 0
       77 GETTABLEKS                       R5 R5 K24 ["FoundationUIStrokeInner"]
       79 JUMPIFNOT                        R5 ; [+2]
       80 LOADK                            R4 K25 ["size-full-0"]
       81 JUMP                             ; [+1]
       82 LOADK                            R4 K26 ["auto-y size-full-0"]
       83 SETTABLEKS                       R4 R3 K6 ["tag"]
       85 SETTABLEKS                       R3 R2 K0 ["outerContainer"]
       87 NEWTABLE                         R3 4 0
       89 GETUPVAL                         R4 1
       90 GETTABLEKS                       R4 R4 K27 ["XSmall"]
       92 GETUPVAL                         R5 2
       93 DUPTABLE                         R6 K39 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "outerViewTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
       94 LOADK                            R7 K40 ["size-full-600"]
       95 SETTABLEKS                       R7 R6 K28 ["canvasTag"]
       97 LOADK                            R7 K41 ["radius-small"]
       98 SETTABLEKS                       R7 R6 K29 ["outerContainerTag"]
      100 GETTABLEKS                       R7 R0 K42 ["Radius"]
      102 GETTABLEKS                       R7 R7 K43 ["Small"]
      104 SETTABLEKS                       R7 R6 K30 ["radius"]
      106 LOADK                            R7 K44 ["gap-small"]
      107 SETTABLEKS                       R7 R6 K31 ["innerContainerTag"]
      109 GETUPVAL                         R8 0
      110 GETTABLEKS                       R8 R8 K24 ["FoundationUIStrokeInner"]
      112 JUMPIFNOT                        R8 ; [+2]
      113 LOADK                            R7 K45 ["size-full-600 radius-small gap-small"]
      114 JUMP                             ; [+1]
      115 LOADK                            R7 K46 [""]
      116 SETTABLEKS                       R7 R6 K32 ["outerViewTag"]
      118 GETTABLEKS                       R7 R0 K47 ["Padding"]
      120 GETTABLEKS                       R7 R7 K27 ["XSmall"]
      122 SETTABLEKS                       R7 R6 K33 ["horizontalPadding"]
      124 GETTABLEKS                       R7 R0 K48 ["Gap"]
      126 GETTABLEKS                       R7 R7 K43 ["Small"]
      128 SETTABLEKS                       R7 R6 K34 ["gap"]
      130 LOADK                            R7 K49 ["text-body-small"]
      131 SETTABLEKS                       R7 R6 K35 ["textBoxTag"]
      133 GETTABLEKS                       R7 R0 K50 ["Typography"]
      135 GETTABLEKS                       R7 R7 K51 ["BodySmall"]
      137 SETTABLEKS                       R7 R6 K36 ["typography"]
      139 GETUPVAL                         R7 3
      140 GETTABLEKS                       R7 R7 K27 ["XSmall"]
      142 SETTABLEKS                       R7 R6 K37 ["iconSize"]
      144 GETTABLEKS                       R7 R0 K52 ["Size"]
      146 GETTABLEKS                       R7 R7 K53 ["Size_600"]
      148 SETTABLEKS                       R7 R6 K38 ["minContainerHeight"]
      150 CALL                             R5 1 1
      151 SETTABLE                         R5 R3 R4
      152 GETUPVAL                         R4 1
      153 GETTABLEKS                       R4 R4 K43 ["Small"]
      155 GETUPVAL                         R5 2
      156 DUPTABLE                         R6 K39 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "outerViewTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
      157 LOADK                            R7 K54 ["size-full-800"]
      158 SETTABLEKS                       R7 R6 K28 ["canvasTag"]
      160 LOADK                            R7 K55 ["radius-medium"]
      161 SETTABLEKS                       R7 R6 K29 ["outerContainerTag"]
      163 GETTABLEKS                       R7 R0 K42 ["Radius"]
      165 GETTABLEKS                       R7 R7 K56 ["Medium"]
      167 SETTABLEKS                       R7 R6 K30 ["radius"]
      169 LOADK                            R7 K57 ["gap-medium"]
      170 SETTABLEKS                       R7 R6 K31 ["innerContainerTag"]
      172 GETUPVAL                         R8 0
      173 GETTABLEKS                       R8 R8 K24 ["FoundationUIStrokeInner"]
      175 JUMPIFNOT                        R8 ; [+2]
      176 LOADK                            R7 K58 ["size-full-800 radius-medium gap-medium"]
      177 JUMP                             ; [+1]
      178 LOADK                            R7 K46 [""]
      179 SETTABLEKS                       R7 R6 K32 ["outerViewTag"]
      181 GETTABLEKS                       R7 R0 K47 ["Padding"]
      183 GETTABLEKS                       R7 R7 K43 ["Small"]
      185 SETTABLEKS                       R7 R6 K33 ["horizontalPadding"]
      187 GETTABLEKS                       R7 R0 K48 ["Gap"]
      189 GETTABLEKS                       R7 R7 K56 ["Medium"]
      191 SETTABLEKS                       R7 R6 K34 ["gap"]
      193 LOADK                            R7 K59 ["text-body-medium"]
      194 SETTABLEKS                       R7 R6 K35 ["textBoxTag"]
      196 GETTABLEKS                       R7 R0 K50 ["Typography"]
      198 GETTABLEKS                       R7 R7 K60 ["BodyMedium"]
      200 SETTABLEKS                       R7 R6 K36 ["typography"]
      202 GETUPVAL                         R7 3
      203 GETTABLEKS                       R7 R7 K27 ["XSmall"]
      205 SETTABLEKS                       R7 R6 K37 ["iconSize"]
      207 GETTABLEKS                       R7 R0 K52 ["Size"]
      209 GETTABLEKS                       R7 R7 K61 ["Size_800"]
      211 SETTABLEKS                       R7 R6 K38 ["minContainerHeight"]
      213 CALL                             R5 1 1
      214 SETTABLE                         R5 R3 R4
      215 GETUPVAL                         R4 1
      216 GETTABLEKS                       R4 R4 K56 ["Medium"]
      218 GETUPVAL                         R5 2
      219 DUPTABLE                         R6 K39 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "outerViewTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
      220 LOADK                            R7 K62 ["size-full-1000"]
      221 SETTABLEKS                       R7 R6 K28 ["canvasTag"]
      223 LOADK                            R7 K55 ["radius-medium"]
      224 SETTABLEKS                       R7 R6 K29 ["outerContainerTag"]
      226 GETTABLEKS                       R7 R0 K42 ["Radius"]
      228 GETTABLEKS                       R7 R7 K56 ["Medium"]
      230 SETTABLEKS                       R7 R6 K30 ["radius"]
      232 LOADK                            R7 K63 ["gap-large"]
      233 SETTABLEKS                       R7 R6 K31 ["innerContainerTag"]
      235 GETUPVAL                         R8 0
      236 GETTABLEKS                       R8 R8 K24 ["FoundationUIStrokeInner"]
      238 JUMPIFNOT                        R8 ; [+2]
      239 LOADK                            R7 K64 ["size-full-1000 radius-medium gap-large"]
      240 JUMP                             ; [+1]
      241 LOADK                            R7 K46 [""]
      242 SETTABLEKS                       R7 R6 K32 ["outerViewTag"]
      244 GETTABLEKS                       R7 R0 K47 ["Padding"]
      246 GETTABLEKS                       R7 R7 K43 ["Small"]
      248 SETTABLEKS                       R7 R6 K33 ["horizontalPadding"]
      250 GETTABLEKS                       R7 R0 K48 ["Gap"]
      252 GETTABLEKS                       R7 R7 K65 ["Large"]
      254 SETTABLEKS                       R7 R6 K34 ["gap"]
      256 LOADK                            R7 K59 ["text-body-medium"]
      257 SETTABLEKS                       R7 R6 K35 ["textBoxTag"]
      259 GETTABLEKS                       R7 R0 K50 ["Typography"]
      261 GETTABLEKS                       R7 R7 K60 ["BodyMedium"]
      263 SETTABLEKS                       R7 R6 K36 ["typography"]
      265 GETUPVAL                         R7 3
      266 GETTABLEKS                       R7 R7 K43 ["Small"]
      268 SETTABLEKS                       R7 R6 K37 ["iconSize"]
      270 GETTABLEKS                       R7 R0 K52 ["Size"]
      272 GETTABLEKS                       R7 R7 K66 ["Size_1000"]
      274 SETTABLEKS                       R7 R6 K38 ["minContainerHeight"]
      276 CALL                             R5 1 1
      277 SETTABLE                         R5 R3 R4
      278 GETUPVAL                         R4 1
      279 GETTABLEKS                       R4 R4 K65 ["Large"]
      281 GETUPVAL                         R5 2
      282 DUPTABLE                         R6 K39 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "outerViewTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
      283 LOADK                            R7 K67 ["size-full-1200"]
      284 SETTABLEKS                       R7 R6 K28 ["canvasTag"]
      286 LOADK                            R7 K55 ["radius-medium"]
      287 SETTABLEKS                       R7 R6 K29 ["outerContainerTag"]
      289 GETTABLEKS                       R7 R0 K42 ["Radius"]
      291 GETTABLEKS                       R7 R7 K56 ["Medium"]
      293 SETTABLEKS                       R7 R6 K30 ["radius"]
      295 LOADK                            R7 K63 ["gap-large"]
      296 SETTABLEKS                       R7 R6 K31 ["innerContainerTag"]
      298 GETUPVAL                         R8 0
      299 GETTABLEKS                       R8 R8 K24 ["FoundationUIStrokeInner"]
      301 JUMPIFNOT                        R8 ; [+2]
      302 LOADK                            R7 K68 ["size-full-1200 radius-medium gap-large"]
      303 JUMP                             ; [+1]
      304 LOADK                            R7 K46 [""]
      305 SETTABLEKS                       R7 R6 K32 ["outerViewTag"]
      307 GETTABLEKS                       R7 R0 K47 ["Padding"]
      309 GETTABLEKS                       R7 R7 K56 ["Medium"]
      311 SETTABLEKS                       R7 R6 K33 ["horizontalPadding"]
      313 GETTABLEKS                       R7 R0 K48 ["Gap"]
      315 GETTABLEKS                       R7 R7 K65 ["Large"]
      317 SETTABLEKS                       R7 R6 K34 ["gap"]
      319 LOADK                            R7 K69 ["text-body-large"]
      320 SETTABLEKS                       R7 R6 K35 ["textBoxTag"]
      322 GETTABLEKS                       R7 R0 K50 ["Typography"]
      324 GETTABLEKS                       R7 R7 K70 ["BodyLarge"]
      326 SETTABLEKS                       R7 R6 K36 ["typography"]
      328 GETUPVAL                         R7 3
      329 GETTABLEKS                       R7 R7 K43 ["Small"]
      331 SETTABLEKS                       R7 R6 K37 ["iconSize"]
      333 GETTABLEKS                       R7 R0 K52 ["Size"]
      335 GETTABLEKS                       R7 R7 K71 ["Size_1200"]
      337 SETTABLEKS                       R7 R6 K38 ["minContainerHeight"]
      339 CALL                             R5 1 1
      340 SETTABLE                         R5 R3 R4
      341 DUPTABLE                         R4 K75 [{"common", "sizes", "multiline"}]
      342 SETTABLEKS                       R1 R4 K72 ["common"]
      344 SETTABLEKS                       R3 R4 K73 ["sizes"]
      346 SETTABLEKS                       R2 R4 K74 ["multiline"]
      348 RETURN                           R4 1

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
