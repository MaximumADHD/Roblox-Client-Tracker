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
        1 DUPTABLE                         R2 K8 [{["tag"] = "bg-shift-100"}]
        2 SETTABLEKS                       R2 R1 K0 ["outerContainer"]
        4 DUPTABLE                         R2 K10 [{["tag"] = "row align-y-center"}]
        5 SETTABLEKS                       R2 R1 K1 ["innerContainer"]
        7 DUPTABLE                         R2 K12 [{["tag"] = "row align-y-center bg-shift-100"}]
        8 SETTABLEKS                       R2 R1 K2 ["outerView"]
       10 DUPTABLE                         R2 K14 [{["tag"] = "gui-object-defaults clip text-align-x-left text-align-y-center content-emphasis"}]
       11 SETTABLEKS                       R2 R1 K3 ["textBox"]
       13 DUPTABLE                         R2 K16 [{"style"}]
       14 GETTABLEKS                       R3 R0 K17 ["Color"]
       16 GETTABLEKS                       R3 R3 K18 ["Content"]
       18 GETTABLEKS                       R3 R3 K19 ["Muted"]
       20 SETTABLEKS                       R3 R2 K15 ["style"]
       22 SETTABLEKS                       R2 R1 K4 ["icon"]
       24 DUPTABLE                         R2 K21 [{"canvas", "outerContainer"}]
       25 DUPTABLE                         R3 K22 [{"tag"}]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K23 ["FoundationUIStrokeInner"]
       29 JUMPIFNOT                        R5 ; [+2]
       30 LOADK                            R4 K24 ["size-full-0"]
       31 JUMP                             ; [+1]
       32 LOADK                            R4 K25 ["auto-y size-full-0"]
       33 SETTABLEKS                       R4 R3 K6 ["tag"]
       35 SETTABLEKS                       R3 R2 K20 ["canvas"]
       37 DUPTABLE                         R3 K22 [{"tag"}]
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K23 ["FoundationUIStrokeInner"]
       41 JUMPIFNOT                        R5 ; [+2]
       42 LOADK                            R4 K24 ["size-full-0"]
       43 JUMP                             ; [+1]
       44 LOADK                            R4 K25 ["auto-y size-full-0"]
       45 SETTABLEKS                       R4 R3 K6 ["tag"]
       47 SETTABLEKS                       R3 R2 K0 ["outerContainer"]
       49 NEWTABLE                         R3 4 0
       51 GETUPVAL                         R4 1
       52 GETTABLEKS                       R4 R4 K26 ["XSmall"]
       54 GETUPVAL                         R5 2
       55 DUPTABLE                         R6 K42 [{["canvasTag"] = "size-full-600", ["outerContainerTag"] = "radius-small", ["radius"], ["innerContainerTag"] = "gap-small", ["outerViewTag"], ["horizontalPadding"], ["gap"], ["textBoxTag"] = "text-body-small", ["typography"], ["iconSize"], ["minContainerHeight"]}]
       56 GETTABLEKS                       R7 R0 K43 ["Radius"]
       58 GETTABLEKS                       R7 R7 K44 ["Small"]
       60 SETTABLEKS                       R7 R6 K31 ["radius"]
       62 GETUPVAL                         R8 0
       63 GETTABLEKS                       R8 R8 K23 ["FoundationUIStrokeInner"]
       65 JUMPIFNOT                        R8 ; [+2]
       66 LOADK                            R7 K45 ["size-full-600 radius-small gap-small"]
       67 JUMP                             ; [+1]
       68 LOADK                            R7 K46 [""]
       69 SETTABLEKS                       R7 R6 K34 ["outerViewTag"]
       71 GETTABLEKS                       R7 R0 K47 ["Padding"]
       73 GETTABLEKS                       R7 R7 K26 ["XSmall"]
       75 SETTABLEKS                       R7 R6 K35 ["horizontalPadding"]
       77 GETTABLEKS                       R7 R0 K48 ["Gap"]
       79 GETTABLEKS                       R7 R7 K44 ["Small"]
       81 SETTABLEKS                       R7 R6 K36 ["gap"]
       83 GETTABLEKS                       R7 R0 K49 ["Typography"]
       85 GETTABLEKS                       R7 R7 K50 ["BodySmall"]
       87 SETTABLEKS                       R7 R6 K39 ["typography"]
       89 GETUPVAL                         R7 3
       90 GETTABLEKS                       R7 R7 K26 ["XSmall"]
       92 SETTABLEKS                       R7 R6 K40 ["iconSize"]
       94 GETTABLEKS                       R7 R0 K51 ["Size"]
       96 GETTABLEKS                       R7 R7 K52 ["Size_600"]
       98 SETTABLEKS                       R7 R6 K41 ["minContainerHeight"]
      100 CALL                             R5 1 1
      101 SETTABLE                         R5 R3 R4
      102 GETUPVAL                         R4 1
      103 GETTABLEKS                       R4 R4 K44 ["Small"]
      105 GETUPVAL                         R5 2
      106 DUPTABLE                         R6 K57 [{["canvasTag"] = "size-full-800", ["outerContainerTag"] = "radius-medium", ["radius"], ["innerContainerTag"] = "gap-medium", ["outerViewTag"], ["horizontalPadding"], ["gap"], ["textBoxTag"] = "text-body-medium", ["typography"], ["iconSize"], ["minContainerHeight"]}]
      107 GETTABLEKS                       R7 R0 K43 ["Radius"]
      109 GETTABLEKS                       R7 R7 K58 ["Medium"]
      111 SETTABLEKS                       R7 R6 K31 ["radius"]
      113 GETUPVAL                         R8 0
      114 GETTABLEKS                       R8 R8 K23 ["FoundationUIStrokeInner"]
      116 JUMPIFNOT                        R8 ; [+2]
      117 LOADK                            R7 K59 ["size-full-800 radius-medium gap-medium"]
      118 JUMP                             ; [+1]
      119 LOADK                            R7 K46 [""]
      120 SETTABLEKS                       R7 R6 K34 ["outerViewTag"]
      122 GETTABLEKS                       R7 R0 K47 ["Padding"]
      124 GETTABLEKS                       R7 R7 K44 ["Small"]
      126 SETTABLEKS                       R7 R6 K35 ["horizontalPadding"]
      128 GETTABLEKS                       R7 R0 K48 ["Gap"]
      130 GETTABLEKS                       R7 R7 K58 ["Medium"]
      132 SETTABLEKS                       R7 R6 K36 ["gap"]
      134 GETTABLEKS                       R7 R0 K49 ["Typography"]
      136 GETTABLEKS                       R7 R7 K60 ["BodyMedium"]
      138 SETTABLEKS                       R7 R6 K39 ["typography"]
      140 GETUPVAL                         R7 3
      141 GETTABLEKS                       R7 R7 K26 ["XSmall"]
      143 SETTABLEKS                       R7 R6 K40 ["iconSize"]
      145 GETTABLEKS                       R7 R0 K51 ["Size"]
      147 GETTABLEKS                       R7 R7 K61 ["Size_800"]
      149 SETTABLEKS                       R7 R6 K41 ["minContainerHeight"]
      151 CALL                             R5 1 1
      152 SETTABLE                         R5 R3 R4
      153 GETUPVAL                         R4 1
      154 GETTABLEKS                       R4 R4 K58 ["Medium"]
      156 GETUPVAL                         R5 2
      157 DUPTABLE                         R6 K64 [{["canvasTag"] = "size-full-1000", ["outerContainerTag"] = "radius-medium", ["radius"], ["innerContainerTag"] = "gap-large", ["outerViewTag"], ["horizontalPadding"], ["gap"], ["textBoxTag"] = "text-body-medium", ["typography"], ["iconSize"], ["minContainerHeight"]}]
      158 GETTABLEKS                       R7 R0 K43 ["Radius"]
      160 GETTABLEKS                       R7 R7 K58 ["Medium"]
      162 SETTABLEKS                       R7 R6 K31 ["radius"]
      164 GETUPVAL                         R8 0
      165 GETTABLEKS                       R8 R8 K23 ["FoundationUIStrokeInner"]
      167 JUMPIFNOT                        R8 ; [+2]
      168 LOADK                            R7 K65 ["size-full-1000 radius-medium gap-large"]
      169 JUMP                             ; [+1]
      170 LOADK                            R7 K46 [""]
      171 SETTABLEKS                       R7 R6 K34 ["outerViewTag"]
      173 GETTABLEKS                       R7 R0 K47 ["Padding"]
      175 GETTABLEKS                       R7 R7 K44 ["Small"]
      177 SETTABLEKS                       R7 R6 K35 ["horizontalPadding"]
      179 GETTABLEKS                       R7 R0 K48 ["Gap"]
      181 GETTABLEKS                       R7 R7 K66 ["Large"]
      183 SETTABLEKS                       R7 R6 K36 ["gap"]
      185 GETTABLEKS                       R7 R0 K49 ["Typography"]
      187 GETTABLEKS                       R7 R7 K60 ["BodyMedium"]
      189 SETTABLEKS                       R7 R6 K39 ["typography"]
      191 GETUPVAL                         R7 3
      192 GETTABLEKS                       R7 R7 K44 ["Small"]
      194 SETTABLEKS                       R7 R6 K40 ["iconSize"]
      196 GETTABLEKS                       R7 R0 K51 ["Size"]
      198 GETTABLEKS                       R7 R7 K67 ["Size_1000"]
      200 SETTABLEKS                       R7 R6 K41 ["minContainerHeight"]
      202 CALL                             R5 1 1
      203 SETTABLE                         R5 R3 R4
      204 GETUPVAL                         R4 1
      205 GETTABLEKS                       R4 R4 K66 ["Large"]
      207 GETUPVAL                         R5 2
      208 DUPTABLE                         R6 K70 [{["canvasTag"] = "size-full-1200", ["outerContainerTag"] = "radius-medium", ["radius"], ["innerContainerTag"] = "gap-large", ["outerViewTag"], ["horizontalPadding"], ["gap"], ["textBoxTag"] = "text-body-large", ["typography"], ["iconSize"], ["minContainerHeight"]}]
      209 GETTABLEKS                       R7 R0 K43 ["Radius"]
      211 GETTABLEKS                       R7 R7 K58 ["Medium"]
      213 SETTABLEKS                       R7 R6 K31 ["radius"]
      215 GETUPVAL                         R8 0
      216 GETTABLEKS                       R8 R8 K23 ["FoundationUIStrokeInner"]
      218 JUMPIFNOT                        R8 ; [+2]
      219 LOADK                            R7 K71 ["size-full-1200 radius-medium gap-large"]
      220 JUMP                             ; [+1]
      221 LOADK                            R7 K46 [""]
      222 SETTABLEKS                       R7 R6 K34 ["outerViewTag"]
      224 GETTABLEKS                       R7 R0 K47 ["Padding"]
      226 GETTABLEKS                       R7 R7 K58 ["Medium"]
      228 SETTABLEKS                       R7 R6 K35 ["horizontalPadding"]
      230 GETTABLEKS                       R7 R0 K48 ["Gap"]
      232 GETTABLEKS                       R7 R7 K66 ["Large"]
      234 SETTABLEKS                       R7 R6 K36 ["gap"]
      236 GETTABLEKS                       R7 R0 K49 ["Typography"]
      238 GETTABLEKS                       R7 R7 K72 ["BodyLarge"]
      240 SETTABLEKS                       R7 R6 K39 ["typography"]
      242 GETUPVAL                         R7 3
      243 GETTABLEKS                       R7 R7 K44 ["Small"]
      245 SETTABLEKS                       R7 R6 K40 ["iconSize"]
      247 GETTABLEKS                       R7 R0 K51 ["Size"]
      249 GETTABLEKS                       R7 R7 K73 ["Size_1200"]
      251 SETTABLEKS                       R7 R6 K41 ["minContainerHeight"]
      253 CALL                             R5 1 1
      254 SETTABLE                         R5 R3 R4
      255 DUPTABLE                         R4 K77 [{"common", "sizes", "multiline"}]
      256 SETTABLEKS                       R1 R4 K74 ["common"]
      258 SETTABLEKS                       R3 R4 K75 ["sizes"]
      260 SETTABLEKS                       R2 R4 K76 ["multiline"]
      262 RETURN                           R4 1

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
