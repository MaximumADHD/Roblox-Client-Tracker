PROTO_0:
        0 DUPTABLE                         R1 K4 [{"container", "textBox", "icon", "clearButton"}]
        1 DUPTABLE                         R2 K9 [{"minHeight", "horizontalPadding", "radius", "tag"}]
        2 GETTABLEKS                       R3 R0 K10 ["minContainerHeight"]
        4 SETTABLEKS                       R3 R2 K5 ["minHeight"]
        6 GETIMPORT                        R3 K13 [UDim.new]
        8 LOADN                            R4 0
        9 GETTABLEKS                       R5 R0 K6 ["horizontalPadding"]
       11 CALL                             R3 2 1
       12 SETTABLEKS                       R3 R2 K6 ["horizontalPadding"]
       14 GETTABLEKS                       R3 R0 K7 ["radius"]
       16 SETTABLEKS                       R3 R2 K7 ["radius"]
       18 GETTABLEKS                       R3 R0 K14 ["containerTag"]
       20 SETTABLEKS                       R3 R2 K8 ["tag"]
       22 SETTABLEKS                       R2 R1 K0 ["container"]
       24 DUPTABLE                         R2 K16 [{"fontStyle"}]
       25 GETTABLEKS                       R3 R0 K17 ["typography"]
       27 SETTABLEKS                       R3 R2 K15 ["fontStyle"]
       29 SETTABLEKS                       R2 R1 K1 ["textBox"]
       31 DUPTABLE                         R2 K19 [{"size"}]
       32 GETTABLEKS                       R3 R0 K20 ["iconSize"]
       34 SETTABLEKS                       R3 R2 K18 ["size"]
       36 SETTABLEKS                       R2 R1 K2 ["icon"]
       38 DUPTABLE                         R2 K22 [{"icon", "padding"}]
       39 GETTABLEKS                       R3 R0 K23 ["clearButtonIcon"]
       41 SETTABLEKS                       R3 R2 K2 ["icon"]
       43 GETTABLEKS                       R3 R0 K24 ["clearButtonPadding"]
       45 SETTABLEKS                       R3 R2 K21 ["padding"]
       47 SETTABLEKS                       R2 R1 K3 ["clearButton"]
       49 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K4 [{"container", "textBox", "icon", "clearButton"}]
        1 DUPTABLE                         R2 K10 [{["bgStyle"], ["strokeStyle"], ["strokeThickness"], ["tag"] = "row"}]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K11 ["FoundationTextInputRemoveBackgroundStyle"]
        5 JUMPIFNOT                        R4 ; [+2]
        6 LOADNIL                          R3
        7 JUMP                             ; [+6]
        8 GETTABLEKS                       R3 R0 K12 ["Color"]
       10 GETTABLEKS                       R3 R3 K13 ["Shift"]
       12 GETTABLEKS                       R3 R3 K14 ["Shift_100"]
       14 SETTABLEKS                       R3 R2 K5 ["bgStyle"]
       16 GETTABLEKS                       R3 R0 K12 ["Color"]
       18 GETTABLEKS                       R3 R3 K15 ["Stroke"]
       20 GETTABLEKS                       R3 R3 K16 ["Emphasis"]
       22 SETTABLEKS                       R3 R2 K6 ["strokeStyle"]
       24 GETTABLEKS                       R3 R0 K15 ["Stroke"]
       26 GETTABLEKS                       R3 R3 K17 ["Standard"]
       28 SETTABLEKS                       R3 R2 K7 ["strokeThickness"]
       30 SETTABLEKS                       R2 R1 K0 ["container"]
       32 DUPTABLE                         R2 K19 [{["tag"] = "text-align-x-left text-align-y-center clip content-emphasis gui-object-defaults"}]
       33 SETTABLEKS                       R2 R1 K1 ["textBox"]
       35 DUPTABLE                         R2 K21 [{"style"}]
       36 GETTABLEKS                       R3 R0 K12 ["Color"]
       38 GETTABLEKS                       R3 R3 K22 ["Content"]
       40 GETTABLEKS                       R3 R3 K23 ["Muted"]
       42 SETTABLEKS                       R3 R2 K20 ["style"]
       44 SETTABLEKS                       R2 R1 K2 ["icon"]
       46 DUPTABLE                         R2 K25 [{["tag"] = "auto-xy"}]
       47 SETTABLEKS                       R2 R1 K3 ["clearButton"]
       49 NEWTABLE                         R2 4 0
       51 GETUPVAL                         R3 1
       52 GETTABLEKS                       R3 R3 K26 ["XSmall"]
       54 GETUPVAL                         R4 2
       55 DUPTABLE                         R5 K36 [{["radius"], ["containerTag"] = "size-full-600 gap-small", ["horizontalPadding"], ["typography"], ["iconSize"], ["minContainerHeight"], ["clearButtonIcon"], ["clearButtonPadding"]}]
       56 GETTABLEKS                       R6 R0 K37 ["Radius"]
       58 GETTABLEKS                       R6 R6 K38 ["Small"]
       60 SETTABLEKS                       R6 R5 K27 ["radius"]
       62 GETTABLEKS                       R6 R0 K39 ["Padding"]
       64 GETTABLEKS                       R6 R6 K26 ["XSmall"]
       66 SETTABLEKS                       R6 R5 K30 ["horizontalPadding"]
       68 GETTABLEKS                       R6 R0 K40 ["Typography"]
       70 GETTABLEKS                       R6 R6 K41 ["BodySmall"]
       72 SETTABLEKS                       R6 R5 K31 ["typography"]
       74 GETUPVAL                         R6 3
       75 GETTABLEKS                       R6 R6 K26 ["XSmall"]
       77 SETTABLEKS                       R6 R5 K32 ["iconSize"]
       79 GETTABLEKS                       R6 R0 K42 ["Size"]
       81 GETTABLEKS                       R6 R6 K43 ["Size_600"]
       83 SETTABLEKS                       R6 R5 K33 ["minContainerHeight"]
       85 GETUPVAL                         R6 4
       86 GETTABLEKS                       R6 R6 K44 ["Icon"]
       88 GETTABLEKS                       R6 R6 K26 ["XSmall"]
       90 SETTABLEKS                       R6 R5 K34 ["clearButtonIcon"]
       92 GETTABLEKS                       R6 R0 K39 ["Padding"]
       94 GETTABLEKS                       R6 R6 K26 ["XSmall"]
       96 SETTABLEKS                       R6 R5 K35 ["clearButtonPadding"]
       98 CALL                             R4 1 1
       99 SETTABLE                         R4 R2 R3
      100 GETUPVAL                         R3 1
      101 GETTABLEKS                       R3 R3 K38 ["Small"]
      103 GETUPVAL                         R4 2
      104 DUPTABLE                         R5 K46 [{["radius"], ["containerTag"] = "size-full-800 gap-medium", ["horizontalPadding"], ["typography"], ["iconSize"], ["minContainerHeight"], ["clearButtonIcon"], ["clearButtonPadding"]}]
      105 GETTABLEKS                       R6 R0 K37 ["Radius"]
      107 GETTABLEKS                       R6 R6 K47 ["Medium"]
      109 SETTABLEKS                       R6 R5 K27 ["radius"]
      111 GETTABLEKS                       R6 R0 K39 ["Padding"]
      113 GETTABLEKS                       R6 R6 K38 ["Small"]
      115 SETTABLEKS                       R6 R5 K30 ["horizontalPadding"]
      117 GETTABLEKS                       R6 R0 K40 ["Typography"]
      119 GETTABLEKS                       R6 R6 K48 ["BodyMedium"]
      121 SETTABLEKS                       R6 R5 K31 ["typography"]
      123 GETUPVAL                         R6 3
      124 GETTABLEKS                       R6 R6 K26 ["XSmall"]
      126 SETTABLEKS                       R6 R5 K32 ["iconSize"]
      128 GETTABLEKS                       R6 R0 K42 ["Size"]
      130 GETTABLEKS                       R6 R6 K49 ["Size_800"]
      132 SETTABLEKS                       R6 R5 K33 ["minContainerHeight"]
      134 GETUPVAL                         R6 4
      135 GETTABLEKS                       R6 R6 K44 ["Icon"]
      137 GETTABLEKS                       R6 R6 K26 ["XSmall"]
      139 SETTABLEKS                       R6 R5 K34 ["clearButtonIcon"]
      141 GETTABLEKS                       R6 R0 K42 ["Size"]
      143 GETTABLEKS                       R6 R6 K50 ["Size_150"]
      145 SETTABLEKS                       R6 R5 K35 ["clearButtonPadding"]
      147 CALL                             R4 1 1
      148 SETTABLE                         R4 R2 R3
      149 GETUPVAL                         R3 1
      150 GETTABLEKS                       R3 R3 K47 ["Medium"]
      152 GETUPVAL                         R4 2
      153 DUPTABLE                         R5 K52 [{["radius"], ["containerTag"] = "size-full-1000 gap-large", ["horizontalPadding"], ["typography"], ["iconSize"], ["minContainerHeight"], ["clearButtonIcon"], ["clearButtonPadding"]}]
      154 GETTABLEKS                       R6 R0 K37 ["Radius"]
      156 GETTABLEKS                       R6 R6 K47 ["Medium"]
      158 SETTABLEKS                       R6 R5 K27 ["radius"]
      160 GETUPVAL                         R7 0
      161 GETTABLEKS                       R7 R7 K53 ["FoundationSupportPrefixSuffixNumberInput"]
      163 JUMPIFNOT                        R7 ; [+5]
      164 GETTABLEKS                       R6 R0 K39 ["Padding"]
      166 GETTABLEKS                       R6 R6 K47 ["Medium"]
      168 JUMP                             ; [+4]
      169 GETTABLEKS                       R6 R0 K39 ["Padding"]
      171 GETTABLEKS                       R6 R6 K38 ["Small"]
      173 SETTABLEKS                       R6 R5 K30 ["horizontalPadding"]
      175 GETTABLEKS                       R6 R0 K40 ["Typography"]
      177 GETTABLEKS                       R6 R6 K48 ["BodyMedium"]
      179 SETTABLEKS                       R6 R5 K31 ["typography"]
      181 GETUPVAL                         R6 3
      182 GETTABLEKS                       R6 R6 K38 ["Small"]
      184 SETTABLEKS                       R6 R5 K32 ["iconSize"]
      186 GETTABLEKS                       R6 R0 K42 ["Size"]
      188 GETTABLEKS                       R6 R6 K54 ["Size_1000"]
      190 SETTABLEKS                       R6 R5 K33 ["minContainerHeight"]
      192 GETUPVAL                         R6 4
      193 GETTABLEKS                       R6 R6 K44 ["Icon"]
      195 GETTABLEKS                       R6 R6 K55 ["X"]
      197 SETTABLEKS                       R6 R5 K34 ["clearButtonIcon"]
      199 GETTABLEKS                       R6 R0 K39 ["Padding"]
      201 GETTABLEKS                       R6 R6 K38 ["Small"]
      203 SETTABLEKS                       R6 R5 K35 ["clearButtonPadding"]
      205 CALL                             R4 1 1
      206 SETTABLE                         R4 R2 R3
      207 GETUPVAL                         R3 1
      208 GETTABLEKS                       R3 R3 K56 ["Large"]
      210 GETUPVAL                         R4 2
      211 DUPTABLE                         R5 K58 [{["radius"], ["containerTag"] = "size-full-1200 gap-large", ["horizontalPadding"], ["typography"], ["iconSize"], ["minContainerHeight"], ["clearButtonIcon"], ["clearButtonPadding"]}]
      212 GETTABLEKS                       R6 R0 K37 ["Radius"]
      214 GETTABLEKS                       R6 R6 K47 ["Medium"]
      216 SETTABLEKS                       R6 R5 K27 ["radius"]
      218 GETTABLEKS                       R6 R0 K39 ["Padding"]
      220 GETTABLEKS                       R6 R6 K47 ["Medium"]
      222 SETTABLEKS                       R6 R5 K30 ["horizontalPadding"]
      224 GETTABLEKS                       R6 R0 K40 ["Typography"]
      226 GETTABLEKS                       R6 R6 K59 ["BodyLarge"]
      228 SETTABLEKS                       R6 R5 K31 ["typography"]
      230 GETUPVAL                         R6 3
      231 GETTABLEKS                       R6 R6 K38 ["Small"]
      233 SETTABLEKS                       R6 R5 K32 ["iconSize"]
      235 GETTABLEKS                       R6 R0 K42 ["Size"]
      237 GETTABLEKS                       R6 R6 K60 ["Size_1200"]
      239 SETTABLEKS                       R6 R5 K33 ["minContainerHeight"]
      241 GETUPVAL                         R6 4
      242 GETTABLEKS                       R6 R6 K44 ["Icon"]
      244 GETTABLEKS                       R6 R6 K55 ["X"]
      246 SETTABLEKS                       R6 R5 K34 ["clearButtonIcon"]
      248 GETTABLEKS                       R6 R0 K39 ["Padding"]
      250 GETTABLEKS                       R6 R6 K38 ["Small"]
      252 SETTABLEKS                       R6 R5 K35 ["clearButtonPadding"]
      254 CALL                             R4 1 1
      255 SETTABLE                         R4 R2 R3
      256 DUPTABLE                         R3 K63 [{"common", "sizes"}]
      257 SETTABLEKS                       R1 R3 K61 ["common"]
      259 SETTABLEKS                       R2 R3 K62 ["sizes"]
      261 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R7 R7 K0 ["useVariants"]
        3 LOADK                            R8 K1 ["TextInput"]
        4 GETUPVAL                         R9 1
        5 MOVE                             R10 R0
        6 CALL                             R7 3 1
        7 GETUPVAL                         R8 0
        8 GETTABLEKS                       R8 R8 K0 ["useVariants"]
       10 LOADK                            R9 K2 ["InputField"]
       11 GETUPVAL                         R10 2
       12 MOVE                             R11 R0
       13 CALL                             R8 3 1
       14 GETTABLEKS                       R10 R8 K3 ["variants"]
       16 MOVE                             R11 R2
       17 JUMPIF                           R11 ; [+3]
       18 GETUPVAL                         R11 3
       19 GETTABLEKS                       R11 R11 K4 ["Standard"]
       21 GETTABLE                         R9 R10 R11
       22 GETUPVAL                         R10 4
       23 GETTABLEKS                       R11 R7 K5 ["common"]
       25 GETTABLEKS                       R13 R8 K6 ["sizes"]
       27 GETTABLE                         R12 R13 R1
       28 GETTABLEKS                       R14 R7 K6 ["sizes"]
       30 GETTABLE                         R13 R14 R1
       31 GETUPVAL                         R15 3
       32 GETTABLEKS                       R15 R15 K7 ["Utility"]
       34 JUMPIFEQ                         R2 R15 ; [+3]
       36 MOVE                             R14 R9
       37 JUMP                             ; [+2]
       38 NEWTABLE                         R14 0 0
       40 JUMPIFNOT                        R3 ; [+4]
       41 GETTABLEKS                       R16 R8 K8 ["radius"]
       43 GETTABLE                         R15 R16 R3
       44 JUMP                             ; [+3]
       45 GETTABLEKS                       R16 R8 K9 ["defaultRadius"]
       47 GETTABLE                         R15 R16 R1
       48 GETUPVAL                         R17 5
       49 GETTABLEKS                       R17 R17 K10 ["FoundationTextInputsBetaUpdate"]
       51 JUMPIFNOT                        R17 ; [+3]
       52 NEWTABLE                         R16 0 0
       54 JUMP                             ; [+8]
       55 JUMPIFEQKNIL                     R5 ; [+5]
       57 GETTABLEKS                       R17 R8 K11 ["hoverState"]
       59 GETTABLE                         R16 R17 R5
       60 JUMP                             ; [+2]
       61 NEWTABLE                         R16 0 0
       63 JUMPIFEQKNIL                     R4 ; [+5]
       65 GETTABLEKS                       R18 R8 K12 ["focusedState"]
       67 GETTABLE                         R17 R18 R4
       68 JUMP                             ; [+2]
       69 NEWTABLE                         R17 0 0
       71 JUMPIFEQKNIL                     R6 ; [+5]
       73 GETTABLEKS                       R19 R8 K13 ["errorState"]
       75 GETTABLE                         R18 R19 R6
       76 JUMP                             ; [+2]
       77 NEWTABLE                         R18 0 0
       79 GETUPVAL                         R20 3
       80 GETTABLEKS                       R20 R20 K7 ["Utility"]
       82 JUMPIFNOTEQ                      R2 R20 ; [+3]
       84 MOVE                             R19 R9
       85 JUMP                             ; [+2]
       86 NEWTABLE                         R19 0 0
       88 CALL                             R10 9 -1
       89 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Types"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Enums"]
       25 GETTABLEKS                       R5 R5 K11 ["InputSize"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Enums"]
       32 GETTABLEKS                       R6 R6 K12 ["InputVariant"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Enums"]
       39 GETTABLEKS                       R7 R7 K13 ["IconSize"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K10 ["Enums"]
       46 GETTABLEKS                       R8 R8 K14 ["Radius"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K15 ["Utility"]
       53 GETTABLEKS                       R9 R9 K16 ["Flags"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K15 ["Utility"]
       60 GETTABLEKS                       R10 R10 K17 ["composeStyleVariant"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K8 ["Components"]
       67 GETTABLEKS                       R11 R11 K18 ["InputField"]
       69 GETTABLEKS                       R11 R11 K19 ["getInputVariantsFactory"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R12 R0 K20 ["Providers"]
       76 GETTABLEKS                       R12 R12 K21 ["Style"]
       78 GETTABLEKS                       R12 R12 K22 ["Tokens"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K6 [require]
       83 GETTABLEKS                       R13 R0 K20 ["Providers"]
       85 GETTABLEKS                       R13 R13 K21 ["Style"]
       87 GETTABLEKS                       R13 R13 K23 ["VariantsContext"]
       89 CALL                             R12 1 1
       90 DUPCLOSURE                       R13 K24 [PROTO_0]
       91 DUPCLOSURE                       R14 K25 [PROTO_1]
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R13
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R2
       97 DUPCLOSURE                       R15 K26 [PROTO_2]
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R8
      104 RETURN                           R15 1
