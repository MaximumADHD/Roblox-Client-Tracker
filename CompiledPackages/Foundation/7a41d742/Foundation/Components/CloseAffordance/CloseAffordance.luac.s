PROTO_0:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["radius"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K4 ["Size"]
        7 GETTABLEKS                       R1 R1 K5 ["Size_150"]
        9 SETTABLEKS                       R1 R0 K1 ["offset"]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K6 ["Stroke"]
       14 GETTABLEKS                       R1 R1 K7 ["Thicker"]
       16 SETTABLEKS                       R1 R0 K2 ["borderWidth"]
       18 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 CALL                             R4 0 1
        8 GETUPVAL                         R5 4
        9 MOVE                             R6 R3
       10 GETTABLEKS                       R7 R2 K0 ["size"]
       12 GETTABLEKS                       R8 R2 K1 ["variant"]
       14 GETTABLEKS                       R9 R4 K2 ["colorMode"]
       16 CALL                             R5 4 1
       17 GETIMPORT                        R6 K5 [UDim.new]
       19 LOADN                            R7 0
       20 GETTABLEKS                       R8 R5 K6 ["container"]
       22 GETTABLEKS                       R8 R8 K7 ["radius"]
       24 CALL                             R6 2 1
       25 GETUPVAL                         R7 5
       26 GETTABLEKS                       R7 R7 K8 ["useMemo"]
       28 NEWCLOSURE                       R8 P0
       29 CAPTURE                          VAL R6
       30 CAPTURE                          VAL R3
       31 NEWTABLE                         R9 0 2
       33 MOVE                             R10 R3
       34 MOVE                             R11 R6
       35 SETLIST                          R9 R10 2 [1]
       37 CALL                             R7 2 1
       38 GETUPVAL                         R8 5
       39 GETTABLEKS                       R8 R8 K9 ["createElement"]
       41 GETUPVAL                         R9 6
       42 GETUPVAL                         R10 7
       43 MOVE                             R11 R2
       44 DUPTABLE                         R12 K21 [{"Size", "onActivated", "selection", "isDisabled", "padding", "cornerRadius", "stateLayer", "cursor", "tag", "GroupTransparency", "ref"}]
       45 GETTABLEKS                       R13 R5 K6 ["container"]
       47 GETTABLEKS                       R13 R13 K0 ["size"]
       49 SETTABLEKS                       R13 R12 K10 ["Size"]
       51 GETTABLEKS                       R13 R2 K11 ["onActivated"]
       53 SETTABLEKS                       R13 R12 K11 ["onActivated"]
       55 DUPTABLE                         R13 K27 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
       56 GETTABLEKS                       R15 R2 K13 ["isDisabled"]
       58 JUMPIFNOT                        R15 ; [+2]
       59 LOADB                            R14 0
       60 JUMP                             ; [+2]
       61 GETTABLEKS                       R14 R2 K22 ["Selectable"]
       63 SETTABLEKS                       R14 R13 K22 ["Selectable"]
       65 GETTABLEKS                       R14 R2 K23 ["NextSelectionUp"]
       67 SETTABLEKS                       R14 R13 K23 ["NextSelectionUp"]
       69 GETTABLEKS                       R14 R2 K24 ["NextSelectionDown"]
       71 SETTABLEKS                       R14 R13 K24 ["NextSelectionDown"]
       73 GETTABLEKS                       R14 R2 K25 ["NextSelectionLeft"]
       75 SETTABLEKS                       R14 R13 K25 ["NextSelectionLeft"]
       77 GETTABLEKS                       R14 R2 K26 ["NextSelectionRight"]
       79 SETTABLEKS                       R14 R13 K26 ["NextSelectionRight"]
       81 SETTABLEKS                       R13 R12 K12 ["selection"]
       83 GETTABLEKS                       R13 R2 K13 ["isDisabled"]
       85 SETTABLEKS                       R13 R12 K13 ["isDisabled"]
       87 GETTABLEKS                       R13 R5 K6 ["container"]
       89 GETTABLEKS                       R13 R13 K14 ["padding"]
       91 SETTABLEKS                       R13 R12 K14 ["padding"]
       93 SETTABLEKS                       R6 R12 K15 ["cornerRadius"]
       95 GETTABLEKS                       R13 R5 K6 ["container"]
       97 GETTABLEKS                       R13 R13 K16 ["stateLayer"]
       99 SETTABLEKS                       R13 R12 K16 ["stateLayer"]
      101 SETTABLEKS                       R7 R12 K17 ["cursor"]
      103 GETTABLEKS                       R13 R5 K6 ["container"]
      105 GETTABLEKS                       R13 R13 K18 ["tag"]
      107 SETTABLEKS                       R13 R12 K18 ["tag"]
      109 GETTABLEKS                       R14 R2 K13 ["isDisabled"]
      111 JUMPIFNOT                        R14 ; [+4]
      112 GETUPVAL                         R13 8
      113 GETTABLEKS                       R13 R13 K28 ["DISABLED_TRANSPARENCY"]
      115 JUMP                             ; [+1]
      116 LOADNIL                          R13
      117 SETTABLEKS                       R13 R12 K19 ["GroupTransparency"]
      119 SETTABLEKS                       R1 R12 K20 ["ref"]
      121 CALL                             R10 2 1
      122 DUPTABLE                         R11 K30 [{"Icon"}]
      123 GETUPVAL                         R12 5
      124 GETTABLEKS                       R12 R12 K9 ["createElement"]
      126 GETUPVAL                         R13 9
      127 DUPTABLE                         R14 K33 [{"name", "variant", "size", "style"}]
      128 LOADK                            R15 K34 ["x"]
      129 SETTABLEKS                       R15 R14 K31 ["name"]
      131 GETUPVAL                         R15 10
      132 GETTABLEKS                       R15 R15 K35 ["Regular"]
      134 SETTABLEKS                       R15 R14 K1 ["variant"]
      136 GETTABLEKS                       R15 R5 K36 ["content"]
      138 GETTABLEKS                       R15 R15 K37 ["iconSize"]
      140 SETTABLEKS                       R15 R14 K0 ["size"]
      142 GETTABLEKS                       R15 R5 K36 ["content"]
      144 GETTABLEKS                       R15 R15 K32 ["style"]
      146 SETTABLEKS                       R15 R14 K32 ["style"]
      148 CALL                             R12 2 1
      149 SETTABLEKS                       R12 R11 K29 ["Icon"]
      151 CALL                             R8 3 -1
      152 RETURN                           R8 -1

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
       18 GETTABLEKS                       R4 R4 K9 ["Icon"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R1 K10 ["React"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R6 K12 ["InputSize"]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R6 R2 K13 ["IconVariant"]
       35 GETIMPORT                        R7 K6 [require]
       37 GETTABLEKS                       R8 R0 K11 ["Enums"]
       39 GETTABLEKS                       R8 R8 K14 ["IconSize"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K6 [require]
       44 GETTABLEKS                       R9 R0 K11 ["Enums"]
       46 GETTABLEKS                       R9 R9 K15 ["CloseAffordanceVariant"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K6 [require]
       51 GETTABLEKS                       R10 R0 K11 ["Enums"]
       53 GETTABLEKS                       R10 R10 K16 ["Radius"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K6 [require]
       58 GETTABLEKS                       R11 R0 K17 ["Providers"]
       60 GETTABLEKS                       R11 R11 K18 ["Style"]
       62 GETTABLEKS                       R11 R11 K19 ["useTokens"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K6 [require]
       67 GETTABLEKS                       R12 R0 K17 ["Providers"]
       69 GETTABLEKS                       R12 R12 K18 ["Style"]
       71 GETTABLEKS                       R12 R12 K20 ["PresentationContext"]
       73 CALL                             R11 1 1
       74 GETTABLEKS                       R11 R11 K21 ["usePresentationContext"]
       76 GETIMPORT                        R12 K6 [require]
       78 GETTABLEKS                       R13 R0 K22 ["Utility"]
       80 GETTABLEKS                       R13 R13 K23 ["withCommonProps"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K6 [require]
       85 GETTABLEKS                       R14 R0 K22 ["Utility"]
       87 GETTABLEKS                       R14 R14 K24 ["withDefaults"]
       89 CALL                             R13 1 1
       90 GETIMPORT                        R14 K6 [require]
       92 GETTABLEKS                       R15 R0 K25 ["Constants"]
       94 CALL                             R14 1 1
       95 GETIMPORT                        R15 K6 [require]
       97 GETTABLEKS                       R16 R0 K8 ["Components"]
       99 GETTABLEKS                       R16 R16 K26 ["Types"]
      101 CALL                             R15 1 1
      102 GETIMPORT                        R16 K6 [require]
      104 GETTABLEKS                       R17 R0 K8 ["Components"]
      106 GETTABLEKS                       R17 R17 K27 ["View"]
      108 CALL                             R16 1 1
      109 GETIMPORT                        R17 K6 [require]
      111 GETIMPORT                        R18 K1 [script]
      113 GETTABLEKS                       R18 R18 K4 ["Parent"]
      115 GETTABLEKS                       R18 R18 K28 ["useCloseAffordanceVariants"]
      117 CALL                             R17 1 1
      118 DUPTABLE                         R18 K33 [{"isDisabled", "size", "variant", "testId"}]
      119 LOADB                            R19 0
      120 SETTABLEKS                       R19 R18 K29 ["isDisabled"]
      122 GETTABLEKS                       R19 R5 K34 ["Medium"]
      124 SETTABLEKS                       R19 R18 K30 ["size"]
      126 GETTABLEKS                       R19 R8 K35 ["OverMedia"]
      128 SETTABLEKS                       R19 R18 K31 ["variant"]
      130 LOADK                            R19 K36 ["--foundation-close-affordance"]
      131 SETTABLEKS                       R19 R18 K32 ["testId"]
      133 DUPCLOSURE                       R19 K37 [PROTO_1]
      134 CAPTURE                          VAL R13
      135 CAPTURE                          VAL R18
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R17
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R16
      141 CAPTURE                          VAL R12
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R3
      144 CAPTURE                          VAL R6
      145 GETTABLEKS                       R20 R4 K38 ["memo"]
      147 GETTABLEKS                       R21 R4 K39 ["forwardRef"]
      149 MOVE                             R22 R19
      150 CALL                             R21 1 -1
      151 CALL                             R20 -1 -1
      152 RETURN                           R20 -1
