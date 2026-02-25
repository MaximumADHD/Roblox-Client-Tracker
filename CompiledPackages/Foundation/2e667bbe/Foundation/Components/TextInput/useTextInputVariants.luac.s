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
       42 DUPTABLE                         R2 K24 [{"tag", "Font", "FontSize", "LineHeight"}]
       43 GETTABLEKS                       R3 R0 K25 ["textBoxTag"]
       45 SETTABLEKS                       R3 R2 K6 ["tag"]
       47 GETTABLEKS                       R4 R0 K26 ["typography"]
       49 GETTABLEKS                       R3 R4 K21 ["Font"]
       51 SETTABLEKS                       R3 R2 K21 ["Font"]
       53 GETTABLEKS                       R4 R0 K26 ["typography"]
       55 GETTABLEKS                       R3 R4 K22 ["FontSize"]
       57 SETTABLEKS                       R3 R2 K22 ["FontSize"]
       59 GETTABLEKS                       R4 R0 K26 ["typography"]
       61 GETTABLEKS                       R3 R4 K23 ["LineHeight"]
       63 SETTABLEKS                       R3 R2 K23 ["LineHeight"]
       65 SETTABLEKS                       R2 R1 K3 ["textBox"]
       67 DUPTABLE                         R2 K28 [{"size"}]
       68 GETTABLEKS                       R3 R0 K29 ["iconSize"]
       70 SETTABLEKS                       R3 R2 K27 ["size"]
       72 SETTABLEKS                       R2 R1 K4 ["icon"]
       74 RETURN                           R1 1

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
      110 GETTABLEKS                       R8 R0 K32 ["Radius"]
      112 GETTABLEKS                       R7 R8 K33 ["Small"]
      114 SETTABLEKS                       R7 R6 K21 ["radius"]
      116 LOADK                            R7 K44 ["gap-medium"]
      117 SETTABLEKS                       R7 R6 K22 ["innerContainerTag"]
      119 GETTABLEKS                       R8 R0 K35 ["Padding"]
      121 GETTABLEKS                       R7 R8 K33 ["Small"]
      123 SETTABLEKS                       R7 R6 K23 ["horizontalPadding"]
      125 GETTABLEKS                       R8 R0 K36 ["Gap"]
      127 GETTABLEKS                       R7 R8 K45 ["Medium"]
      129 SETTABLEKS                       R7 R6 K24 ["gap"]
      131 LOADK                            R7 K46 ["text-body-medium"]
      132 SETTABLEKS                       R7 R6 K25 ["textBoxTag"]
      134 GETTABLEKS                       R8 R0 K38 ["Typography"]
      136 GETTABLEKS                       R7 R8 K47 ["BodyMedium"]
      138 SETTABLEKS                       R7 R6 K26 ["typography"]
      140 GETUPVAL                         R8 2
      141 GETTABLEKS                       R7 R8 K18 ["XSmall"]
      143 SETTABLEKS                       R7 R6 K27 ["iconSize"]
      145 GETTABLEKS                       R8 R0 K40 ["Size"]
      147 GETTABLEKS                       R7 R8 K48 ["Size_800"]
      149 SETTABLEKS                       R7 R6 K28 ["minContainerHeight"]
      151 CALL                             R5 1 1
      152 SETTABLE                         R5 R3 R4
      153 GETUPVAL                         R5 0
      154 GETTABLEKS                       R4 R5 K45 ["Medium"]
      156 GETUPVAL                         R5 1
      157 DUPTABLE                         R6 K29 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
      158 LOADK                            R7 K49 ["size-full-1000"]
      159 SETTABLEKS                       R7 R6 K19 ["canvasTag"]
      161 LOADK                            R7 K43 ["radius-medium"]
      162 SETTABLEKS                       R7 R6 K20 ["outerContainerTag"]
      164 GETTABLEKS                       R8 R0 K32 ["Radius"]
      166 GETTABLEKS                       R7 R8 K33 ["Small"]
      168 SETTABLEKS                       R7 R6 K21 ["radius"]
      170 LOADK                            R7 K50 ["gap-large"]
      171 SETTABLEKS                       R7 R6 K22 ["innerContainerTag"]
      173 GETTABLEKS                       R8 R0 K35 ["Padding"]
      175 GETTABLEKS                       R7 R8 K33 ["Small"]
      177 SETTABLEKS                       R7 R6 K23 ["horizontalPadding"]
      179 GETTABLEKS                       R8 R0 K36 ["Gap"]
      181 GETTABLEKS                       R7 R8 K51 ["Large"]
      183 SETTABLEKS                       R7 R6 K24 ["gap"]
      185 LOADK                            R7 K46 ["text-body-medium"]
      186 SETTABLEKS                       R7 R6 K25 ["textBoxTag"]
      188 GETTABLEKS                       R8 R0 K38 ["Typography"]
      190 GETTABLEKS                       R7 R8 K47 ["BodyMedium"]
      192 SETTABLEKS                       R7 R6 K26 ["typography"]
      194 GETUPVAL                         R8 2
      195 GETTABLEKS                       R7 R8 K33 ["Small"]
      197 SETTABLEKS                       R7 R6 K27 ["iconSize"]
      199 GETTABLEKS                       R8 R0 K40 ["Size"]
      201 GETTABLEKS                       R7 R8 K52 ["Size_1000"]
      203 SETTABLEKS                       R7 R6 K28 ["minContainerHeight"]
      205 CALL                             R5 1 1
      206 SETTABLE                         R5 R3 R4
      207 GETUPVAL                         R5 0
      208 GETTABLEKS                       R4 R5 K51 ["Large"]
      210 GETUPVAL                         R5 1
      211 DUPTABLE                         R6 K29 [{"canvasTag", "outerContainerTag", "radius", "innerContainerTag", "horizontalPadding", "gap", "textBoxTag", "typography", "iconSize", "minContainerHeight"}]
      212 LOADK                            R7 K53 ["size-full-1200"]
      213 SETTABLEKS                       R7 R6 K19 ["canvasTag"]
      215 LOADK                            R7 K43 ["radius-medium"]
      216 SETTABLEKS                       R7 R6 K20 ["outerContainerTag"]
      218 GETTABLEKS                       R8 R0 K32 ["Radius"]
      220 GETTABLEKS                       R7 R8 K45 ["Medium"]
      222 SETTABLEKS                       R7 R6 K21 ["radius"]
      224 LOADK                            R7 K50 ["gap-large"]
      225 SETTABLEKS                       R7 R6 K22 ["innerContainerTag"]
      227 GETTABLEKS                       R8 R0 K35 ["Padding"]
      229 GETTABLEKS                       R7 R8 K45 ["Medium"]
      231 SETTABLEKS                       R7 R6 K23 ["horizontalPadding"]
      233 GETTABLEKS                       R8 R0 K36 ["Gap"]
      235 GETTABLEKS                       R7 R8 K51 ["Large"]
      237 SETTABLEKS                       R7 R6 K24 ["gap"]
      239 LOADK                            R7 K54 ["text-body-large"]
      240 SETTABLEKS                       R7 R6 K25 ["textBoxTag"]
      242 GETTABLEKS                       R8 R0 K38 ["Typography"]
      244 GETTABLEKS                       R7 R8 K55 ["BodyLarge"]
      246 SETTABLEKS                       R7 R6 K26 ["typography"]
      248 GETUPVAL                         R8 2
      249 GETTABLEKS                       R7 R8 K33 ["Small"]
      251 SETTABLEKS                       R7 R6 K27 ["iconSize"]
      253 GETTABLEKS                       R8 R0 K40 ["Size"]
      255 GETTABLEKS                       R7 R8 K56 ["Size_1200"]
      257 SETTABLEKS                       R7 R6 K28 ["minContainerHeight"]
      259 CALL                             R5 1 1
      260 SETTABLE                         R5 R3 R4
      261 DUPTABLE                         R4 K60 [{"common", "sizes", "multiline"}]
      262 SETTABLEKS                       R1 R4 K57 ["common"]
      264 SETTABLEKS                       R3 R4 K58 ["sizes"]
      266 SETTABLEKS                       R2 R4 K59 ["multiline"]
      268 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["useVariants"]
        3 LOADK                            R4 K1 ["TextInput"]
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R0
        6 CALL                             R3 3 1
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R4 R5 K2 ["FoundationInternalTextInputAutoSize"]
       10 JUMPIF                           R4 ; [+1]
       11 JUMPIFNOT                        R2 ; [+10]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R5 R3 K3 ["common"]
       15 GETTABLEKS                       R7 R3 K4 ["sizes"]
       17 GETTABLE                         R6 R7 R1
       18 GETTABLEKS                       R7 R3 K5 ["multiline"]
       20 CALL                             R4 3 -1
       21 RETURN                           R4 -1
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R5 R3 K3 ["common"]
       25 GETTABLEKS                       R7 R3 K4 ["sizes"]
       27 GETTABLE                         R6 R7 R1
       28 CALL                             R4 2 -1
       29 RETURN                           R4 -1

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
       65 DUPCLOSURE                       R10 K20 [PROTO_2]
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R4
       70 RETURN                           R10 1
