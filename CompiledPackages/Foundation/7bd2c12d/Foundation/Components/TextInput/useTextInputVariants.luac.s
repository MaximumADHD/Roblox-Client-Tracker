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
        7 DUPTABLE                         R2 K12 [{"bgStyle", "tag"}]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K13 ["FoundationNumberInputFixScrubbableBG"]
       11 JUMPIFNOT                        R4 ; [+7]
       12 GETTABLEKS                       R3 R0 K14 ["Color"]
       14 GETTABLEKS                       R3 R3 K15 ["Shift"]
       16 GETTABLEKS                       R3 R3 K16 ["Shift_100"]
       18 JUMP                             ; [+1]
       19 LOADNIL                          R3
       20 SETTABLEKS                       R3 R2 K11 ["bgStyle"]
       22 NEWTABLE                         R3 2 0
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K13 ["FoundationNumberInputFixScrubbableBG"]
       27 SETTABLEKS                       R4 R3 K9 ["row align-y-center"]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K13 ["FoundationNumberInputFixScrubbableBG"]
       32 NOT                              R4 R5
       33 SETTABLEKS                       R4 R3 K17 ["row align-y-center bg-shift-100"]
       35 SETTABLEKS                       R3 R2 K6 ["tag"]
       37 SETTABLEKS                       R2 R1 K2 ["outerView"]
       39 DUPTABLE                         R2 K19 [{["tag"] = "gui-object-defaults clip text-align-x-left text-align-y-center content-emphasis"}]
       40 SETTABLEKS                       R2 R1 K3 ["textBox"]
       42 DUPTABLE                         R2 K21 [{"style"}]
       43 GETTABLEKS                       R3 R0 K14 ["Color"]
       45 GETTABLEKS                       R3 R3 K22 ["Content"]
       47 GETTABLEKS                       R3 R3 K23 ["Muted"]
       49 SETTABLEKS                       R3 R2 K20 ["style"]
       51 SETTABLEKS                       R2 R1 K4 ["icon"]
       53 DUPTABLE                         R2 K25 [{"canvas", "outerContainer"}]
       54 DUPTABLE                         R3 K26 [{"tag"}]
       55 GETUPVAL                         R5 0
       56 GETTABLEKS                       R5 R5 K27 ["FoundationUIStrokeInner"]
       58 JUMPIFNOT                        R5 ; [+2]
       59 LOADK                            R4 K28 ["size-full-0"]
       60 JUMP                             ; [+1]
       61 LOADK                            R4 K29 ["auto-y size-full-0"]
       62 SETTABLEKS                       R4 R3 K6 ["tag"]
       64 SETTABLEKS                       R3 R2 K24 ["canvas"]
       66 DUPTABLE                         R3 K26 [{"tag"}]
       67 GETUPVAL                         R5 0
       68 GETTABLEKS                       R5 R5 K27 ["FoundationUIStrokeInner"]
       70 JUMPIFNOT                        R5 ; [+2]
       71 LOADK                            R4 K28 ["size-full-0"]
       72 JUMP                             ; [+1]
       73 LOADK                            R4 K29 ["auto-y size-full-0"]
       74 SETTABLEKS                       R4 R3 K6 ["tag"]
       76 SETTABLEKS                       R3 R2 K0 ["outerContainer"]
       78 NEWTABLE                         R3 4 0
       80 GETUPVAL                         R4 1
       81 GETTABLEKS                       R4 R4 K30 ["XSmall"]
       83 GETUPVAL                         R5 2
       84 DUPTABLE                         R6 K46 [{["canvasTag"] = "size-full-600", ["outerContainerTag"] = "radius-small", ["radius"], ["innerContainerTag"] = "gap-small", ["outerViewTag"], ["horizontalPadding"], ["gap"], ["textBoxTag"] = "text-body-small", ["typography"], ["iconSize"], ["minContainerHeight"]}]
       85 GETTABLEKS                       R7 R0 K47 ["Radius"]
       87 GETTABLEKS                       R7 R7 K48 ["Small"]
       89 SETTABLEKS                       R7 R6 K35 ["radius"]
       91 GETUPVAL                         R8 0
       92 GETTABLEKS                       R8 R8 K27 ["FoundationUIStrokeInner"]
       94 JUMPIFNOT                        R8 ; [+2]
       95 LOADK                            R7 K49 ["size-full-600 radius-small gap-small"]
       96 JUMP                             ; [+1]
       97 LOADK                            R7 K50 [""]
       98 SETTABLEKS                       R7 R6 K38 ["outerViewTag"]
      100 GETTABLEKS                       R7 R0 K51 ["Padding"]
      102 GETTABLEKS                       R7 R7 K30 ["XSmall"]
      104 SETTABLEKS                       R7 R6 K39 ["horizontalPadding"]
      106 GETTABLEKS                       R7 R0 K52 ["Gap"]
      108 GETTABLEKS                       R7 R7 K48 ["Small"]
      110 SETTABLEKS                       R7 R6 K40 ["gap"]
      112 GETTABLEKS                       R7 R0 K53 ["Typography"]
      114 GETTABLEKS                       R7 R7 K54 ["BodySmall"]
      116 SETTABLEKS                       R7 R6 K43 ["typography"]
      118 GETUPVAL                         R7 3
      119 GETTABLEKS                       R7 R7 K30 ["XSmall"]
      121 SETTABLEKS                       R7 R6 K44 ["iconSize"]
      123 GETTABLEKS                       R7 R0 K55 ["Size"]
      125 GETTABLEKS                       R7 R7 K56 ["Size_600"]
      127 SETTABLEKS                       R7 R6 K45 ["minContainerHeight"]
      129 CALL                             R5 1 1
      130 SETTABLE                         R5 R3 R4
      131 GETUPVAL                         R4 1
      132 GETTABLEKS                       R4 R4 K48 ["Small"]
      134 GETUPVAL                         R5 2
      135 DUPTABLE                         R6 K61 [{["canvasTag"] = "size-full-800", ["outerContainerTag"] = "radius-medium", ["radius"], ["innerContainerTag"] = "gap-medium", ["outerViewTag"], ["horizontalPadding"], ["gap"], ["textBoxTag"] = "text-body-medium", ["typography"], ["iconSize"], ["minContainerHeight"]}]
      136 GETTABLEKS                       R7 R0 K47 ["Radius"]
      138 GETTABLEKS                       R7 R7 K62 ["Medium"]
      140 SETTABLEKS                       R7 R6 K35 ["radius"]
      142 GETUPVAL                         R8 0
      143 GETTABLEKS                       R8 R8 K27 ["FoundationUIStrokeInner"]
      145 JUMPIFNOT                        R8 ; [+2]
      146 LOADK                            R7 K63 ["size-full-800 radius-medium gap-medium"]
      147 JUMP                             ; [+1]
      148 LOADK                            R7 K50 [""]
      149 SETTABLEKS                       R7 R6 K38 ["outerViewTag"]
      151 GETTABLEKS                       R7 R0 K51 ["Padding"]
      153 GETTABLEKS                       R7 R7 K48 ["Small"]
      155 SETTABLEKS                       R7 R6 K39 ["horizontalPadding"]
      157 GETTABLEKS                       R7 R0 K52 ["Gap"]
      159 GETTABLEKS                       R7 R7 K62 ["Medium"]
      161 SETTABLEKS                       R7 R6 K40 ["gap"]
      163 GETTABLEKS                       R7 R0 K53 ["Typography"]
      165 GETTABLEKS                       R7 R7 K64 ["BodyMedium"]
      167 SETTABLEKS                       R7 R6 K43 ["typography"]
      169 GETUPVAL                         R7 3
      170 GETTABLEKS                       R7 R7 K30 ["XSmall"]
      172 SETTABLEKS                       R7 R6 K44 ["iconSize"]
      174 GETTABLEKS                       R7 R0 K55 ["Size"]
      176 GETTABLEKS                       R7 R7 K65 ["Size_800"]
      178 SETTABLEKS                       R7 R6 K45 ["minContainerHeight"]
      180 CALL                             R5 1 1
      181 SETTABLE                         R5 R3 R4
      182 GETUPVAL                         R4 1
      183 GETTABLEKS                       R4 R4 K62 ["Medium"]
      185 GETUPVAL                         R5 2
      186 DUPTABLE                         R6 K68 [{["canvasTag"] = "size-full-1000", ["outerContainerTag"] = "radius-medium", ["radius"], ["innerContainerTag"] = "gap-large", ["outerViewTag"], ["horizontalPadding"], ["gap"], ["textBoxTag"] = "text-body-medium", ["typography"], ["iconSize"], ["minContainerHeight"]}]
      187 GETTABLEKS                       R7 R0 K47 ["Radius"]
      189 GETTABLEKS                       R7 R7 K62 ["Medium"]
      191 SETTABLEKS                       R7 R6 K35 ["radius"]
      193 GETUPVAL                         R8 0
      194 GETTABLEKS                       R8 R8 K27 ["FoundationUIStrokeInner"]
      196 JUMPIFNOT                        R8 ; [+2]
      197 LOADK                            R7 K69 ["size-full-1000 radius-medium gap-large"]
      198 JUMP                             ; [+1]
      199 LOADK                            R7 K50 [""]
      200 SETTABLEKS                       R7 R6 K38 ["outerViewTag"]
      202 GETTABLEKS                       R7 R0 K51 ["Padding"]
      204 GETTABLEKS                       R7 R7 K48 ["Small"]
      206 SETTABLEKS                       R7 R6 K39 ["horizontalPadding"]
      208 GETTABLEKS                       R7 R0 K52 ["Gap"]
      210 GETTABLEKS                       R7 R7 K70 ["Large"]
      212 SETTABLEKS                       R7 R6 K40 ["gap"]
      214 GETTABLEKS                       R7 R0 K53 ["Typography"]
      216 GETTABLEKS                       R7 R7 K64 ["BodyMedium"]
      218 SETTABLEKS                       R7 R6 K43 ["typography"]
      220 GETUPVAL                         R7 3
      221 GETTABLEKS                       R7 R7 K48 ["Small"]
      223 SETTABLEKS                       R7 R6 K44 ["iconSize"]
      225 GETTABLEKS                       R7 R0 K55 ["Size"]
      227 GETTABLEKS                       R7 R7 K71 ["Size_1000"]
      229 SETTABLEKS                       R7 R6 K45 ["minContainerHeight"]
      231 CALL                             R5 1 1
      232 SETTABLE                         R5 R3 R4
      233 GETUPVAL                         R4 1
      234 GETTABLEKS                       R4 R4 K70 ["Large"]
      236 GETUPVAL                         R5 2
      237 DUPTABLE                         R6 K74 [{["canvasTag"] = "size-full-1200", ["outerContainerTag"] = "radius-medium", ["radius"], ["innerContainerTag"] = "gap-large", ["outerViewTag"], ["horizontalPadding"], ["gap"], ["textBoxTag"] = "text-body-large", ["typography"], ["iconSize"], ["minContainerHeight"]}]
      238 GETTABLEKS                       R7 R0 K47 ["Radius"]
      240 GETTABLEKS                       R7 R7 K62 ["Medium"]
      242 SETTABLEKS                       R7 R6 K35 ["radius"]
      244 GETUPVAL                         R8 0
      245 GETTABLEKS                       R8 R8 K27 ["FoundationUIStrokeInner"]
      247 JUMPIFNOT                        R8 ; [+2]
      248 LOADK                            R7 K75 ["size-full-1200 radius-medium gap-large"]
      249 JUMP                             ; [+1]
      250 LOADK                            R7 K50 [""]
      251 SETTABLEKS                       R7 R6 K38 ["outerViewTag"]
      253 GETTABLEKS                       R7 R0 K51 ["Padding"]
      255 GETTABLEKS                       R7 R7 K62 ["Medium"]
      257 SETTABLEKS                       R7 R6 K39 ["horizontalPadding"]
      259 GETTABLEKS                       R7 R0 K52 ["Gap"]
      261 GETTABLEKS                       R7 R7 K70 ["Large"]
      263 SETTABLEKS                       R7 R6 K40 ["gap"]
      265 GETTABLEKS                       R7 R0 K53 ["Typography"]
      267 GETTABLEKS                       R7 R7 K76 ["BodyLarge"]
      269 SETTABLEKS                       R7 R6 K43 ["typography"]
      271 GETUPVAL                         R7 3
      272 GETTABLEKS                       R7 R7 K48 ["Small"]
      274 SETTABLEKS                       R7 R6 K44 ["iconSize"]
      276 GETTABLEKS                       R7 R0 K55 ["Size"]
      278 GETTABLEKS                       R7 R7 K77 ["Size_1200"]
      280 SETTABLEKS                       R7 R6 K45 ["minContainerHeight"]
      282 CALL                             R5 1 1
      283 SETTABLE                         R5 R3 R4
      284 DUPTABLE                         R4 K81 [{"common", "sizes", "multiline"}]
      285 SETTABLEKS                       R1 R4 K78 ["common"]
      287 SETTABLEKS                       R3 R4 K79 ["sizes"]
      289 SETTABLEKS                       R2 R4 K80 ["multiline"]
      291 RETURN                           R4 1

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
