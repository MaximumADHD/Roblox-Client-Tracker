PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GroupTransparency"]
        3 JUMPIFEQKNIL                     R0 ; [+21]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["GroupTransparency"]
        8 FASTCALL1                        TYPE R1 ; [+2]
        9 GETIMPORT                        R0 K2 [type]
       11 CALL                             R0 1 1
       12 JUMPIFNOTEQKS                    R0 K3 ["table"] ; [+3]
       14 LOADB                            R0 1
       15 RETURN                           R0 1
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K0 ["GroupTransparency"]
       19 LOADN                            R2 0
       20 JUMPIFLT                         R2 R1 ; [+2]
       22 LOADB                            R0 0 +1
       23 LOADB                            R0 1
       24 RETURN                           R0 1
       25 LOADB                            R0 0
       26 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+13]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["isDisabled"]
        7 JUMPIF                           R0 ; [+5]
        8 GETUPVAL                         R0 3
        9 LOADK                            R2 K1 ["Some state changes are not supported with GroupTransparency"]
       10 NAMECALL                         R0 R0 K2 ["warning"]
       12 CALL                             R0 2 0
       13 LOADK                            R0 K3 ["CanvasGroup"]
       14 RETURN                           R0 1
       15 GETUPVAL                         R0 1
       16 JUMPIFNOT                        R0 ; [+2]
       17 LOADK                            R0 K4 ["ImageButton"]
       18 RETURN                           R0 1
       19 LOADK                            R0 K5 ["Frame"]
       20 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R4 R2 K0 ["backgroundStyle"]
        6 JUMPIFEQKNIL                     R4 ; [+3]
        8 LOADK                            R3 K1 ["gui-object-defaults x-default-transparency"]
        9 JUMP                             ; [+1]
       10 LOADK                            R3 K2 ["gui-object-defaults"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R5 R2 K3 ["tag"]
       14 MOVE                             R6 R3
       15 CALL                             R4 2 1
       16 GETUPVAL                         R5 3
       17 MOVE                             R6 R4
       18 CALL                             R5 1 1
       19 LOADB                            R6 1
       20 GETTABLEKS                       R7 R2 K4 ["onStateChanged"]
       22 JUMPIFNOTEQKNIL                  R7 ; [+12]
       24 LOADB                            R6 1
       25 GETTABLEKS                       R7 R2 K5 ["onActivated"]
       27 JUMPIFNOTEQKNIL                  R7 ; [+7]
       29 GETTABLEKS                       R7 R2 K6 ["onSecondaryActivated"]
       31 JUMPIFNOTEQKNIL                  R7 ; [+2]
       33 LOADB                            R6 0 +1
       34 LOADB                            R6 1
       35 GETUPVAL                         R7 4
       36 GETTABLEKS                       R7 R7 K7 ["useMemo"]
       38 NEWCLOSURE                       R8 P0
       39 CAPTURE                          VAL R2
       40 NEWTABLE                         R9 0 1
       42 GETTABLEKS                       R10 R2 K8 ["GroupTransparency"]
       44 SETLIST                          R9 R10 1 [1]
       46 CALL                             R7 2 1
       47 GETUPVAL                         R8 4
       48 GETTABLEKS                       R8 R8 K7 ["useMemo"]
       50 NEWCLOSURE                       R9 P1
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R2
       54 CAPTURE                          UPVAL U5
       55 NEWTABLE                         R10 0 2
       57 MOVE                             R11 R7
       58 MOVE                             R12 R6
       59 SETLIST                          R10 R11 2 [1]
       61 CALL                             R8 2 1
       62 GETUPVAL                         R9 6
       63 MOVE                             R10 R2
       64 NEWTABLE                         R11 4 0
       66 JUMPIFNOTEQKS                    R8 K9 ["ImageButton"] ; [+3]
       68 LOADB                            R12 0
       69 JUMP                             ; [+1]
       70 LOADNIL                          R12
       71 SETTABLEKS                       R12 R11 K10 ["AutoButtonColor"]
       73 JUMPIFNOT                        R7 ; [+3]
       74 GETTABLEKS                       R12 R2 K8 ["GroupTransparency"]
       76 JUMP                             ; [+1]
       77 LOADNIL                          R12
       78 SETTABLEKS                       R12 R11 K8 ["GroupTransparency"]
       80 SETTABLEKS                       R1 R11 K11 ["ref"]
       82 GETUPVAL                         R12 4
       83 GETTABLEKS                       R12 R12 K12 ["Tag"]
       85 SETTABLE                         R5 R11 R12
       86 CALL                             R9 2 1
       87 GETUPVAL                         R10 7
       88 GETTABLEKS                       R10 R10 K13 ["FoundationBuildingBlocksRemoveDashUnion"]
       90 JUMPIFNOT                        R10 ; [+39]
       91 MOVE                             R10 R8
       92 JUMPIFNOT                        R6 ; [+27]
       93 GETUPVAL                         R10 8
       94 SETTABLEKS                       R8 R9 K14 ["component"]
       96 GETTABLEKS                       R11 R2 K5 ["onActivated"]
       98 SETTABLEKS                       R11 R9 K5 ["onActivated"]
      100 GETTABLEKS                       R11 R2 K6 ["onSecondaryActivated"]
      102 SETTABLEKS                       R11 R9 K6 ["onSecondaryActivated"]
      104 GETTABLEKS                       R11 R2 K4 ["onStateChanged"]
      106 SETTABLEKS                       R11 R9 K4 ["onStateChanged"]
      108 GETTABLEKS                       R11 R2 K15 ["stateLayer"]
      110 SETTABLEKS                       R11 R9 K15 ["stateLayer"]
      112 GETTABLEKS                       R11 R2 K16 ["isDisabled"]
      114 SETTABLEKS                       R11 R9 K16 ["isDisabled"]
      116 GETTABLEKS                       R11 R2 K17 ["cursor"]
      118 SETTABLEKS                       R11 R9 K17 ["cursor"]
      120 GETUPVAL                         R11 4
      121 GETTABLEKS                       R11 R11 K18 ["createElement"]
      123 MOVE                             R12 R10
      124 MOVE                             R13 R9
      125 GETUPVAL                         R14 9
      126 MOVE                             R15 R2
      127 CALL                             R14 1 -1
      128 CALL                             R11 -1 -1
      129 RETURN                           R11 -1
      130 JUMPIFNOT                        R6 ; [+2]
      131 GETUPVAL                         R10 8
      132 JUMP                             ; [+1]
      133 MOVE                             R10 R8
      134 DUPTABLE                         R11 K19 [{"component", "onActivated", "onSecondaryActivated", "onStateChanged", "stateLayer", "isDisabled", "cursor"}]
      135 SETTABLEKS                       R8 R11 K14 ["component"]
      137 GETTABLEKS                       R12 R2 K5 ["onActivated"]
      139 SETTABLEKS                       R12 R11 K5 ["onActivated"]
      141 GETTABLEKS                       R12 R2 K6 ["onSecondaryActivated"]
      143 SETTABLEKS                       R12 R11 K6 ["onSecondaryActivated"]
      145 GETTABLEKS                       R12 R2 K4 ["onStateChanged"]
      147 SETTABLEKS                       R12 R11 K4 ["onStateChanged"]
      149 GETTABLEKS                       R12 R2 K15 ["stateLayer"]
      151 SETTABLEKS                       R12 R11 K15 ["stateLayer"]
      153 GETTABLEKS                       R12 R2 K16 ["isDisabled"]
      155 SETTABLEKS                       R12 R11 K16 ["isDisabled"]
      157 GETTABLEKS                       R12 R2 K17 ["cursor"]
      159 SETTABLEKS                       R12 R11 K17 ["cursor"]
      161 JUMPIFNOT                        R6 ; [+7]
      162 GETUPVAL                         R12 10
      163 GETTABLEKS                       R12 R12 K20 ["union"]
      165 MOVE                             R13 R9
      166 MOVE                             R14 R11
      167 CALL                             R12 2 1
      168 JUMP                             ; [+1]
      169 MOVE                             R12 R9
      170 GETUPVAL                         R13 4
      171 GETTABLEKS                       R13 R13 K18 ["createElement"]
      173 MOVE                             R14 R10
      174 MOVE                             R15 R12
      175 GETUPVAL                         R16 9
      176 MOVE                             R17 R2
      177 CALL                             R16 1 -1
      178 CALL                             R13 -1 -1
      179 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R5 K10 ["Flags"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Utility"]
       30 GETTABLEKS                       R6 R6 K11 ["Logger"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K12 ["Components"]
       37 GETTABLEKS                       R7 R7 K13 ["Interactable"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Utility"]
       44 GETTABLEKS                       R8 R8 K14 ["GuiObjectChildren"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K12 ["Components"]
       51 GETTABLEKS                       R9 R9 K15 ["Types"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K9 ["Utility"]
       58 GETTABLEKS                       R10 R10 K16 ["useDefaultTags"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K9 ["Utility"]
       65 GETTABLEKS                       R11 R11 K17 ["withDefaults"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K9 ["Utility"]
       72 GETTABLEKS                       R12 R12 K18 ["withGuiObjectProps"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K19 ["Providers"]
       79 GETTABLEKS                       R13 R13 K20 ["Style"]
       81 GETTABLEKS                       R13 R13 K21 ["useStyleTags"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R14 R0 K22 ["Enums"]
       88 GETTABLEKS                       R14 R14 K23 ["ControlState"]
       90 CALL                             R13 1 1
       91 DUPTABLE                         R14 K30 [{["layout"], ["AutoLocalize"] = False, ["BorderSizePixel"] = 0, ["isDisabled"] = False}]
       92 DUPTABLE                         R15 K32 [{"SortOrder"}]
       93 GETIMPORT                        R16 K35 [Enum.SortOrder.LayoutOrder]
       95 SETTABLEKS                       R16 R15 K31 ["SortOrder"]
       97 SETTABLEKS                       R15 R14 K24 ["layout"]
       99 DUPCLOSURE                       R15 K36 [PROTO_2]
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R14
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R2
      111 GETTABLEKS                       R16 R3 K37 ["memo"]
      113 GETTABLEKS                       R17 R3 K38 ["forwardRef"]
      115 MOVE                             R18 R15
      116 CALL                             R17 1 -1
      117 CALL                             R16 -1 -1
      118 RETURN                           R16 -1
