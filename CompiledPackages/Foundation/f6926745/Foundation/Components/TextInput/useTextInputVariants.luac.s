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
        1 DUPTABLE                         R2 K9 [{"bgStyle", "strokeStyle", "strokeThickness", "tag"}]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K10 ["FoundationTextInputRemoveBackgroundStyle"]
        5 JUMPIFNOT                        R4 ; [+2]
        6 LOADNIL                          R3
        7 JUMP                             ; [+6]
        8 GETTABLEKS                       R3 R0 K11 ["Color"]
       10 GETTABLEKS                       R3 R3 K12 ["Shift"]
       12 GETTABLEKS                       R3 R3 K13 ["Shift_100"]
       14 SETTABLEKS                       R3 R2 K5 ["bgStyle"]
       16 GETTABLEKS                       R3 R0 K11 ["Color"]
       18 GETTABLEKS                       R3 R3 K14 ["Stroke"]
       20 GETTABLEKS                       R3 R3 K15 ["Emphasis"]
       22 SETTABLEKS                       R3 R2 K6 ["strokeStyle"]
       24 GETTABLEKS                       R3 R0 K14 ["Stroke"]
       26 GETTABLEKS                       R3 R3 K16 ["Standard"]
       28 SETTABLEKS                       R3 R2 K7 ["strokeThickness"]
       30 LOADK                            R3 K17 ["row"]
       31 SETTABLEKS                       R3 R2 K8 ["tag"]
       33 SETTABLEKS                       R2 R1 K0 ["container"]
       35 DUPTABLE                         R2 K18 [{"tag"}]
       36 LOADK                            R3 K19 ["text-align-x-left text-align-y-center clip content-emphasis gui-object-defaults"]
       37 SETTABLEKS                       R3 R2 K8 ["tag"]
       39 SETTABLEKS                       R2 R1 K1 ["textBox"]
       41 DUPTABLE                         R2 K21 [{"style"}]
       42 GETTABLEKS                       R3 R0 K11 ["Color"]
       44 GETTABLEKS                       R3 R3 K22 ["Content"]
       46 GETTABLEKS                       R3 R3 K23 ["Muted"]
       48 SETTABLEKS                       R3 R2 K20 ["style"]
       50 SETTABLEKS                       R2 R1 K2 ["icon"]
       52 DUPTABLE                         R2 K18 [{"tag"}]
       53 LOADK                            R3 K24 ["auto-xy"]
       54 SETTABLEKS                       R3 R2 K8 ["tag"]
       56 SETTABLEKS                       R2 R1 K3 ["clearButton"]
       58 NEWTABLE                         R2 4 0
       60 GETUPVAL                         R3 1
       61 GETTABLEKS                       R3 R3 K25 ["XSmall"]
       63 GETUPVAL                         R4 2
       64 DUPTABLE                         R5 K34 [{"radius", "containerTag", "horizontalPadding", "typography", "iconSize", "minContainerHeight", "clearButtonIcon", "clearButtonPadding"}]
       65 GETTABLEKS                       R6 R0 K35 ["Radius"]
       67 GETTABLEKS                       R6 R6 K36 ["Small"]
       69 SETTABLEKS                       R6 R5 K26 ["radius"]
       71 LOADK                            R6 K37 ["size-full-600 gap-small"]
       72 SETTABLEKS                       R6 R5 K27 ["containerTag"]
       74 GETTABLEKS                       R6 R0 K38 ["Padding"]
       76 GETTABLEKS                       R6 R6 K25 ["XSmall"]
       78 SETTABLEKS                       R6 R5 K28 ["horizontalPadding"]
       80 GETTABLEKS                       R6 R0 K39 ["Typography"]
       82 GETTABLEKS                       R6 R6 K40 ["BodySmall"]
       84 SETTABLEKS                       R6 R5 K29 ["typography"]
       86 GETUPVAL                         R6 3
       87 GETTABLEKS                       R6 R6 K25 ["XSmall"]
       89 SETTABLEKS                       R6 R5 K30 ["iconSize"]
       91 GETTABLEKS                       R6 R0 K41 ["Size"]
       93 GETTABLEKS                       R6 R6 K42 ["Size_600"]
       95 SETTABLEKS                       R6 R5 K31 ["minContainerHeight"]
       97 GETUPVAL                         R6 4
       98 GETTABLEKS                       R6 R6 K43 ["Icon"]
      100 GETTABLEKS                       R6 R6 K25 ["XSmall"]
      102 SETTABLEKS                       R6 R5 K32 ["clearButtonIcon"]
      104 GETTABLEKS                       R6 R0 K38 ["Padding"]
      106 GETTABLEKS                       R6 R6 K25 ["XSmall"]
      108 SETTABLEKS                       R6 R5 K33 ["clearButtonPadding"]
      110 CALL                             R4 1 1
      111 SETTABLE                         R4 R2 R3
      112 GETUPVAL                         R3 1
      113 GETTABLEKS                       R3 R3 K36 ["Small"]
      115 GETUPVAL                         R4 2
      116 DUPTABLE                         R5 K34 [{"radius", "containerTag", "horizontalPadding", "typography", "iconSize", "minContainerHeight", "clearButtonIcon", "clearButtonPadding"}]
      117 GETTABLEKS                       R6 R0 K35 ["Radius"]
      119 GETTABLEKS                       R6 R6 K44 ["Medium"]
      121 SETTABLEKS                       R6 R5 K26 ["radius"]
      123 LOADK                            R6 K45 ["size-full-800 gap-medium"]
      124 SETTABLEKS                       R6 R5 K27 ["containerTag"]
      126 GETTABLEKS                       R6 R0 K38 ["Padding"]
      128 GETTABLEKS                       R6 R6 K36 ["Small"]
      130 SETTABLEKS                       R6 R5 K28 ["horizontalPadding"]
      132 GETTABLEKS                       R6 R0 K39 ["Typography"]
      134 GETTABLEKS                       R6 R6 K46 ["BodyMedium"]
      136 SETTABLEKS                       R6 R5 K29 ["typography"]
      138 GETUPVAL                         R6 3
      139 GETTABLEKS                       R6 R6 K25 ["XSmall"]
      141 SETTABLEKS                       R6 R5 K30 ["iconSize"]
      143 GETTABLEKS                       R6 R0 K41 ["Size"]
      145 GETTABLEKS                       R6 R6 K47 ["Size_800"]
      147 SETTABLEKS                       R6 R5 K31 ["minContainerHeight"]
      149 GETUPVAL                         R6 4
      150 GETTABLEKS                       R6 R6 K43 ["Icon"]
      152 GETTABLEKS                       R6 R6 K25 ["XSmall"]
      154 SETTABLEKS                       R6 R5 K32 ["clearButtonIcon"]
      156 GETTABLEKS                       R6 R0 K41 ["Size"]
      158 GETTABLEKS                       R6 R6 K48 ["Size_150"]
      160 SETTABLEKS                       R6 R5 K33 ["clearButtonPadding"]
      162 CALL                             R4 1 1
      163 SETTABLE                         R4 R2 R3
      164 GETUPVAL                         R3 1
      165 GETTABLEKS                       R3 R3 K44 ["Medium"]
      167 GETUPVAL                         R4 2
      168 DUPTABLE                         R5 K34 [{"radius", "containerTag", "horizontalPadding", "typography", "iconSize", "minContainerHeight", "clearButtonIcon", "clearButtonPadding"}]
      169 GETTABLEKS                       R6 R0 K35 ["Radius"]
      171 GETTABLEKS                       R6 R6 K44 ["Medium"]
      173 SETTABLEKS                       R6 R5 K26 ["radius"]
      175 LOADK                            R6 K49 ["size-full-1000 gap-large"]
      176 SETTABLEKS                       R6 R5 K27 ["containerTag"]
      178 GETTABLEKS                       R6 R0 K38 ["Padding"]
      180 GETTABLEKS                       R6 R6 K36 ["Small"]
      182 SETTABLEKS                       R6 R5 K28 ["horizontalPadding"]
      184 GETTABLEKS                       R6 R0 K39 ["Typography"]
      186 GETTABLEKS                       R6 R6 K46 ["BodyMedium"]
      188 SETTABLEKS                       R6 R5 K29 ["typography"]
      190 GETUPVAL                         R6 3
      191 GETTABLEKS                       R6 R6 K36 ["Small"]
      193 SETTABLEKS                       R6 R5 K30 ["iconSize"]
      195 GETTABLEKS                       R6 R0 K41 ["Size"]
      197 GETTABLEKS                       R6 R6 K50 ["Size_1000"]
      199 SETTABLEKS                       R6 R5 K31 ["minContainerHeight"]
      201 GETUPVAL                         R6 4
      202 GETTABLEKS                       R6 R6 K43 ["Icon"]
      204 GETTABLEKS                       R6 R6 K51 ["X"]
      206 SETTABLEKS                       R6 R5 K32 ["clearButtonIcon"]
      208 GETTABLEKS                       R6 R0 K38 ["Padding"]
      210 GETTABLEKS                       R6 R6 K36 ["Small"]
      212 SETTABLEKS                       R6 R5 K33 ["clearButtonPadding"]
      214 CALL                             R4 1 1
      215 SETTABLE                         R4 R2 R3
      216 GETUPVAL                         R3 1
      217 GETTABLEKS                       R3 R3 K52 ["Large"]
      219 GETUPVAL                         R4 2
      220 DUPTABLE                         R5 K34 [{"radius", "containerTag", "horizontalPadding", "typography", "iconSize", "minContainerHeight", "clearButtonIcon", "clearButtonPadding"}]
      221 GETTABLEKS                       R6 R0 K35 ["Radius"]
      223 GETTABLEKS                       R6 R6 K44 ["Medium"]
      225 SETTABLEKS                       R6 R5 K26 ["radius"]
      227 LOADK                            R6 K53 ["size-full-1200 gap-large"]
      228 SETTABLEKS                       R6 R5 K27 ["containerTag"]
      230 GETTABLEKS                       R6 R0 K38 ["Padding"]
      232 GETTABLEKS                       R6 R6 K44 ["Medium"]
      234 SETTABLEKS                       R6 R5 K28 ["horizontalPadding"]
      236 GETTABLEKS                       R6 R0 K39 ["Typography"]
      238 GETTABLEKS                       R6 R6 K54 ["BodyLarge"]
      240 SETTABLEKS                       R6 R5 K29 ["typography"]
      242 GETUPVAL                         R6 3
      243 GETTABLEKS                       R6 R6 K36 ["Small"]
      245 SETTABLEKS                       R6 R5 K30 ["iconSize"]
      247 GETTABLEKS                       R6 R0 K41 ["Size"]
      249 GETTABLEKS                       R6 R6 K55 ["Size_1200"]
      251 SETTABLEKS                       R6 R5 K31 ["minContainerHeight"]
      253 GETUPVAL                         R6 4
      254 GETTABLEKS                       R6 R6 K43 ["Icon"]
      256 GETTABLEKS                       R6 R6 K51 ["X"]
      258 SETTABLEKS                       R6 R5 K32 ["clearButtonIcon"]
      260 GETTABLEKS                       R6 R0 K38 ["Padding"]
      262 GETTABLEKS                       R6 R6 K36 ["Small"]
      264 SETTABLEKS                       R6 R5 K33 ["clearButtonPadding"]
      266 CALL                             R4 1 1
      267 SETTABLE                         R4 R2 R3
      268 DUPTABLE                         R3 K58 [{"common", "sizes"}]
      269 SETTABLEKS                       R1 R3 K56 ["common"]
      271 SETTABLEKS                       R2 R3 K57 ["sizes"]
      273 RETURN                           R3 1

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
       48 JUMPIFEQKNIL                     R5 ; [+5]
       50 GETTABLEKS                       R17 R8 K10 ["hoverState"]
       52 GETTABLE                         R16 R17 R5
       53 JUMP                             ; [+2]
       54 NEWTABLE                         R16 0 0
       56 JUMPIFEQKNIL                     R4 ; [+5]
       58 GETTABLEKS                       R18 R8 K11 ["focusedState"]
       60 GETTABLE                         R17 R18 R4
       61 JUMP                             ; [+2]
       62 NEWTABLE                         R17 0 0
       64 JUMPIFEQKNIL                     R6 ; [+5]
       66 GETTABLEKS                       R19 R8 K12 ["errorState"]
       68 GETTABLE                         R18 R19 R6
       69 JUMP                             ; [+2]
       70 NEWTABLE                         R18 0 0
       72 GETUPVAL                         R20 3
       73 GETTABLEKS                       R20 R20 K7 ["Utility"]
       75 JUMPIFNOTEQ                      R2 R20 ; [+3]
       77 MOVE                             R19 R9
       78 JUMP                             ; [+2]
       79 NEWTABLE                         R19 0 0
       81 CALL                             R10 9 -1
       82 RETURN                           R10 -1

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
      103 RETURN                           R15 1
