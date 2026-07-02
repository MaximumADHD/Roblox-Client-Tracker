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
       16 GETTABLEKS                       R10 R2 K3 ["hasPadding"]
       18 GETTABLEKS                       R11 R2 K4 ["isCircular"]
       20 CALL                             R5 6 1
       21 GETIMPORT                        R6 K7 [UDim.new]
       23 LOADN                            R7 0
       24 GETTABLEKS                       R8 R5 K8 ["container"]
       26 GETTABLEKS                       R8 R8 K9 ["radius"]
       28 CALL                             R6 2 1
       29 GETUPVAL                         R7 5
       30 GETTABLEKS                       R7 R7 K10 ["useMemo"]
       32 NEWCLOSURE                       R8 P0
       33 CAPTURE                          VAL R6
       34 CAPTURE                          VAL R3
       35 NEWTABLE                         R9 0 2
       37 MOVE                             R10 R3
       38 MOVE                             R11 R6
       39 SETLIST                          R9 R10 2 [1]
       41 CALL                             R7 2 1
       42 GETUPVAL                         R8 5
       43 GETTABLEKS                       R8 R8 K11 ["createElement"]
       45 GETUPVAL                         R9 6
       46 GETUPVAL                         R10 7
       47 MOVE                             R11 R2
       48 DUPTABLE                         R12 K23 [{"Size", "onActivated", "selection", "isDisabled", "padding", "cornerRadius", "stateLayer", "cursor", "tag", "GroupTransparency", "ref"}]
       49 GETTABLEKS                       R13 R5 K8 ["container"]
       51 GETTABLEKS                       R13 R13 K0 ["size"]
       53 SETTABLEKS                       R13 R12 K12 ["Size"]
       55 GETTABLEKS                       R13 R2 K13 ["onActivated"]
       57 SETTABLEKS                       R13 R12 K13 ["onActivated"]
       59 DUPTABLE                         R13 K29 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
       60 GETTABLEKS                       R15 R2 K15 ["isDisabled"]
       62 JUMPIFNOT                        R15 ; [+2]
       63 LOADB                            R14 0
       64 JUMP                             ; [+2]
       65 GETTABLEKS                       R14 R2 K24 ["Selectable"]
       67 SETTABLEKS                       R14 R13 K24 ["Selectable"]
       69 GETTABLEKS                       R14 R2 K25 ["NextSelectionUp"]
       71 SETTABLEKS                       R14 R13 K25 ["NextSelectionUp"]
       73 GETTABLEKS                       R14 R2 K26 ["NextSelectionDown"]
       75 SETTABLEKS                       R14 R13 K26 ["NextSelectionDown"]
       77 GETTABLEKS                       R14 R2 K27 ["NextSelectionLeft"]
       79 SETTABLEKS                       R14 R13 K27 ["NextSelectionLeft"]
       81 GETTABLEKS                       R14 R2 K28 ["NextSelectionRight"]
       83 SETTABLEKS                       R14 R13 K28 ["NextSelectionRight"]
       85 SETTABLEKS                       R13 R12 K14 ["selection"]
       87 GETTABLEKS                       R13 R2 K15 ["isDisabled"]
       89 SETTABLEKS                       R13 R12 K15 ["isDisabled"]
       91 GETTABLEKS                       R13 R5 K8 ["container"]
       93 GETTABLEKS                       R13 R13 K16 ["padding"]
       95 SETTABLEKS                       R13 R12 K16 ["padding"]
       97 SETTABLEKS                       R6 R12 K17 ["cornerRadius"]
       99 GETTABLEKS                       R13 R5 K8 ["container"]
      101 GETTABLEKS                       R13 R13 K18 ["stateLayer"]
      103 SETTABLEKS                       R13 R12 K18 ["stateLayer"]
      105 SETTABLEKS                       R7 R12 K19 ["cursor"]
      107 GETTABLEKS                       R13 R5 K8 ["container"]
      109 GETTABLEKS                       R13 R13 K20 ["tag"]
      111 SETTABLEKS                       R13 R12 K20 ["tag"]
      113 GETTABLEKS                       R14 R2 K15 ["isDisabled"]
      115 JUMPIFNOT                        R14 ; [+4]
      116 GETUPVAL                         R13 8
      117 GETTABLEKS                       R13 R13 K30 ["DISABLED_TRANSPARENCY"]
      119 JUMP                             ; [+1]
      120 LOADNIL                          R13
      121 SETTABLEKS                       R13 R12 K21 ["GroupTransparency"]
      123 SETTABLEKS                       R1 R12 K22 ["ref"]
      125 CALL                             R10 2 1
      126 DUPTABLE                         R11 K32 [{"Icon"}]
      127 GETUPVAL                         R12 5
      128 GETTABLEKS                       R12 R12 K11 ["createElement"]
      130 GETUPVAL                         R13 9
      131 DUPTABLE                         R14 K35 [{"name", "variant", "size", "style"}]
      132 GETUPVAL                         R15 10
      133 GETTABLEKS                       R15 R15 K31 ["Icon"]
      135 GETTABLEKS                       R15 R15 K36 ["X"]
      137 SETTABLEKS                       R15 R14 K33 ["name"]
      139 GETUPVAL                         R15 11
      140 GETTABLEKS                       R15 R15 K37 ["Regular"]
      142 SETTABLEKS                       R15 R14 K1 ["variant"]
      144 GETTABLEKS                       R15 R5 K38 ["content"]
      146 GETTABLEKS                       R15 R15 K39 ["iconSize"]
      148 SETTABLEKS                       R15 R14 K0 ["size"]
      150 GETTABLEKS                       R15 R5 K38 ["content"]
      152 GETTABLEKS                       R15 R15 K34 ["style"]
      154 SETTABLEKS                       R15 R14 K34 ["style"]
      156 CALL                             R12 2 1
      157 SETTABLEKS                       R12 R11 K31 ["Icon"]
      159 CALL                             R8 3 -1
      160 RETURN                           R8 -1

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
      118 DUPTABLE                         R18 K38 [{["isDisabled"] = False, ["size"], ["variant"], ["isCircular"] = False, ["hasPadding"] = True, ["testId"] = "--foundation-close-affordance"}]
      119 GETTABLEKS                       R19 R5 K39 ["Medium"]
      121 SETTABLEKS                       R19 R18 K31 ["size"]
      123 GETTABLEKS                       R19 R8 K40 ["OverMedia"]
      125 SETTABLEKS                       R19 R18 K32 ["variant"]
      127 DUPCLOSURE                       R19 K41 [PROTO_1]
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R18
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R17
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R12
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R6
      140 GETTABLEKS                       R20 R4 K42 ["memo"]
      142 GETTABLEKS                       R21 R4 K43 ["forwardRef"]
      144 MOVE                             R22 R19
      145 CALL                             R21 1 -1
      146 CALL                             R20 -1 -1
      147 RETURN                           R20 -1
