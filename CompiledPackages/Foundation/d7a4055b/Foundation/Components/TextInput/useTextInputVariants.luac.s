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
        1 DUPTABLE                         R2 K7 [{["tag"] = "bg-shift-100"}]
        2 SETTABLEKS                       R2 R1 K0 ["outerContainer"]
        4 DUPTABLE                         R2 K9 [{["tag"] = "row align-y-center"}]
        5 SETTABLEKS                       R2 R1 K1 ["innerContainer"]
        7 DUPTABLE                         R2 K11 [{["tag"] = "gui-object-defaults clip text-align-x-left text-align-y-center content-emphasis"}]
        8 SETTABLEKS                       R2 R1 K2 ["textBox"]
       10 DUPTABLE                         R2 K13 [{"style"}]
       11 GETTABLEKS                       R3 R0 K14 ["Color"]
       13 GETTABLEKS                       R3 R3 K15 ["Content"]
       15 GETTABLEKS                       R3 R3 K16 ["Muted"]
       17 SETTABLEKS                       R3 R2 K12 ["style"]
       19 SETTABLEKS                       R2 R1 K3 ["icon"]
       21 DUPTABLE                         R2 K18 [{"canvas", "outerContainer"}]
       22 DUPTABLE                         R3 K20 [{["tag"] = "auto-y size-full-0"}]
       23 SETTABLEKS                       R3 R2 K17 ["canvas"]
       25 DUPTABLE                         R3 K20 [{["tag"] = "auto-y size-full-0"}]
       26 SETTABLEKS                       R3 R2 K0 ["outerContainer"]
       28 NEWTABLE                         R3 4 0
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K21 ["XSmall"]
       33 GETUPVAL                         R5 1
       34 DUPTABLE                         R6 K36 [{["canvasTag"] = "size-full-600", ["outerContainerTag"] = "radius-small", ["radius"], ["innerContainerTag"] = "gap-small", ["horizontalPadding"], ["gap"], ["textBoxTag"] = "text-body-small", ["typography"], ["iconSize"], ["minContainerHeight"]}]
       35 GETTABLEKS                       R7 R0 K37 ["Radius"]
       37 GETTABLEKS                       R7 R7 K38 ["Small"]
       39 SETTABLEKS                       R7 R6 K26 ["radius"]
       41 GETTABLEKS                       R7 R0 K39 ["Padding"]
       43 GETTABLEKS                       R7 R7 K21 ["XSmall"]
       45 SETTABLEKS                       R7 R6 K29 ["horizontalPadding"]
       47 GETTABLEKS                       R7 R0 K40 ["Gap"]
       49 GETTABLEKS                       R7 R7 K38 ["Small"]
       51 SETTABLEKS                       R7 R6 K30 ["gap"]
       53 GETTABLEKS                       R7 R0 K41 ["Typography"]
       55 GETTABLEKS                       R7 R7 K42 ["BodySmall"]
       57 SETTABLEKS                       R7 R6 K33 ["typography"]
       59 GETUPVAL                         R7 2
       60 GETTABLEKS                       R7 R7 K21 ["XSmall"]
       62 SETTABLEKS                       R7 R6 K34 ["iconSize"]
       64 GETTABLEKS                       R7 R0 K43 ["Size"]
       66 GETTABLEKS                       R7 R7 K44 ["Size_600"]
       68 SETTABLEKS                       R7 R6 K35 ["minContainerHeight"]
       70 CALL                             R5 1 1
       71 SETTABLE                         R5 R3 R4
       72 GETUPVAL                         R4 0
       73 GETTABLEKS                       R4 R4 K38 ["Small"]
       75 GETUPVAL                         R5 1
       76 DUPTABLE                         R6 K49 [{["canvasTag"] = "size-full-800", ["outerContainerTag"] = "radius-medium", ["radius"], ["innerContainerTag"] = "gap-medium", ["horizontalPadding"], ["gap"], ["textBoxTag"] = "text-body-medium", ["typography"], ["iconSize"], ["minContainerHeight"]}]
       77 GETUPVAL                         R8 3
       78 GETTABLEKS                       R8 R8 K50 ["FoundationInputInnerRadiusFix"]
       80 JUMPIFNOT                        R8 ; [+5]
       81 GETTABLEKS                       R7 R0 K37 ["Radius"]
       83 GETTABLEKS                       R7 R7 K51 ["Medium"]
       85 JUMP                             ; [+4]
       86 GETTABLEKS                       R7 R0 K37 ["Radius"]
       88 GETTABLEKS                       R7 R7 K38 ["Small"]
       90 SETTABLEKS                       R7 R6 K26 ["radius"]
       92 GETTABLEKS                       R7 R0 K39 ["Padding"]
       94 GETTABLEKS                       R7 R7 K38 ["Small"]
       96 SETTABLEKS                       R7 R6 K29 ["horizontalPadding"]
       98 GETTABLEKS                       R7 R0 K40 ["Gap"]
      100 GETTABLEKS                       R7 R7 K51 ["Medium"]
      102 SETTABLEKS                       R7 R6 K30 ["gap"]
      104 GETTABLEKS                       R7 R0 K41 ["Typography"]
      106 GETTABLEKS                       R7 R7 K52 ["BodyMedium"]
      108 SETTABLEKS                       R7 R6 K33 ["typography"]
      110 GETUPVAL                         R7 2
      111 GETTABLEKS                       R7 R7 K21 ["XSmall"]
      113 SETTABLEKS                       R7 R6 K34 ["iconSize"]
      115 GETTABLEKS                       R7 R0 K43 ["Size"]
      117 GETTABLEKS                       R7 R7 K53 ["Size_800"]
      119 SETTABLEKS                       R7 R6 K35 ["minContainerHeight"]
      121 CALL                             R5 1 1
      122 SETTABLE                         R5 R3 R4
      123 GETUPVAL                         R4 0
      124 GETTABLEKS                       R4 R4 K51 ["Medium"]
      126 GETUPVAL                         R5 1
      127 DUPTABLE                         R6 K56 [{["canvasTag"] = "size-full-1000", ["outerContainerTag"] = "radius-medium", ["radius"], ["innerContainerTag"] = "gap-large", ["horizontalPadding"], ["gap"], ["textBoxTag"] = "text-body-medium", ["typography"], ["iconSize"], ["minContainerHeight"]}]
      128 GETUPVAL                         R8 3
      129 GETTABLEKS                       R8 R8 K50 ["FoundationInputInnerRadiusFix"]
      131 JUMPIFNOT                        R8 ; [+5]
      132 GETTABLEKS                       R7 R0 K37 ["Radius"]
      134 GETTABLEKS                       R7 R7 K51 ["Medium"]
      136 JUMP                             ; [+4]
      137 GETTABLEKS                       R7 R0 K37 ["Radius"]
      139 GETTABLEKS                       R7 R7 K38 ["Small"]
      141 SETTABLEKS                       R7 R6 K26 ["radius"]
      143 GETTABLEKS                       R7 R0 K39 ["Padding"]
      145 GETTABLEKS                       R7 R7 K38 ["Small"]
      147 SETTABLEKS                       R7 R6 K29 ["horizontalPadding"]
      149 GETTABLEKS                       R7 R0 K40 ["Gap"]
      151 GETTABLEKS                       R7 R7 K57 ["Large"]
      153 SETTABLEKS                       R7 R6 K30 ["gap"]
      155 GETTABLEKS                       R7 R0 K41 ["Typography"]
      157 GETTABLEKS                       R7 R7 K52 ["BodyMedium"]
      159 SETTABLEKS                       R7 R6 K33 ["typography"]
      161 GETUPVAL                         R7 2
      162 GETTABLEKS                       R7 R7 K38 ["Small"]
      164 SETTABLEKS                       R7 R6 K34 ["iconSize"]
      166 GETTABLEKS                       R7 R0 K43 ["Size"]
      168 GETTABLEKS                       R7 R7 K58 ["Size_1000"]
      170 SETTABLEKS                       R7 R6 K35 ["minContainerHeight"]
      172 CALL                             R5 1 1
      173 SETTABLE                         R5 R3 R4
      174 GETUPVAL                         R4 0
      175 GETTABLEKS                       R4 R4 K57 ["Large"]
      177 GETUPVAL                         R5 1
      178 DUPTABLE                         R6 K61 [{["canvasTag"] = "size-full-1200", ["outerContainerTag"] = "radius-medium", ["radius"], ["innerContainerTag"] = "gap-large", ["horizontalPadding"], ["gap"], ["textBoxTag"] = "text-body-large", ["typography"], ["iconSize"], ["minContainerHeight"]}]
      179 GETTABLEKS                       R7 R0 K37 ["Radius"]
      181 GETTABLEKS                       R7 R7 K51 ["Medium"]
      183 SETTABLEKS                       R7 R6 K26 ["radius"]
      185 GETTABLEKS                       R7 R0 K39 ["Padding"]
      187 GETTABLEKS                       R7 R7 K51 ["Medium"]
      189 SETTABLEKS                       R7 R6 K29 ["horizontalPadding"]
      191 GETTABLEKS                       R7 R0 K40 ["Gap"]
      193 GETTABLEKS                       R7 R7 K57 ["Large"]
      195 SETTABLEKS                       R7 R6 K30 ["gap"]
      197 GETTABLEKS                       R7 R0 K41 ["Typography"]
      199 GETTABLEKS                       R7 R7 K62 ["BodyLarge"]
      201 SETTABLEKS                       R7 R6 K33 ["typography"]
      203 GETUPVAL                         R7 2
      204 GETTABLEKS                       R7 R7 K38 ["Small"]
      206 SETTABLEKS                       R7 R6 K34 ["iconSize"]
      208 GETTABLEKS                       R7 R0 K43 ["Size"]
      210 GETTABLEKS                       R7 R7 K63 ["Size_1200"]
      212 SETTABLEKS                       R7 R6 K35 ["minContainerHeight"]
      214 CALL                             R5 1 1
      215 SETTABLE                         R5 R3 R4
      216 DUPTABLE                         R4 K67 [{"common", "sizes", "multiline"}]
      217 SETTABLEKS                       R1 R4 K64 ["common"]
      219 SETTABLEKS                       R3 R4 K65 ["sizes"]
      221 SETTABLEKS                       R2 R4 K66 ["multiline"]
      223 RETURN                           R4 1

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
       46 GETTABLEKS                       R7 R0 K11 ["Utility"]
       48 GETTABLEKS                       R7 R7 K16 ["Flags"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K13 ["Providers"]
       55 GETTABLEKS                       R8 R8 K14 ["Style"]
       57 GETTABLEKS                       R8 R8 K17 ["VariantsContext"]
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
