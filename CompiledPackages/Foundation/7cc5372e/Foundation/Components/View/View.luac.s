PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["GroupTransparency"]
        3 JUMPIFEQKNIL                     R0 ; [+21]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K0 ["GroupTransparency"]
        8 FASTCALL1                        TYPE R1 ; [+2]
        9 GETIMPORT                        R0 K2 [type]
       11 CALL                             R0 1 1
       12 JUMPIFNOTEQKS                    R0 K3 ["table"] ; [+3]
       14 LOADB                            R0 1
       15 RETURN                           R0 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R1 R2 K0 ["GroupTransparency"]
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
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R0 R1 K0 ["isDisabled"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["FoundationDisableStylingPolyfill"]
        3 JUMPIF                           R3 ; [+8]
        4 GETUPVAL                         R2 1
        5 LOADK                            R3 K1 ["View"]
        6 GETTABLEKS                       R4 R0 K2 ["tag"]
        8 LOADK                            R5 K3 ["gui-object-defaults"]
        9 GETUPVAL                         R6 2
       10 CALL                             R2 4 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 GETUPVAL                         R3 3
       14 MOVE                             R4 R0
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R6 R7 K0 ["FoundationDisableStylingPolyfill"]
       18 JUMPIF                           R6 ; [+2]
       19 MOVE                             R5 R2
       20 JUMP                             ; [+1]
       21 GETUPVAL                         R5 2
       22 CALL                             R3 2 1
       23 GETTABLEKS                       R5 R3 K4 ["backgroundStyle"]
       25 JUMPIFEQKNIL                     R5 ; [+3]
       27 LOADK                            R4 K5 ["gui-object-defaults x-default-transparency"]
       28 JUMP                             ; [+1]
       29 LOADK                            R4 K3 ["gui-object-defaults"]
       30 GETUPVAL                         R5 4
       31 GETTABLEKS                       R6 R3 K2 ["tag"]
       33 MOVE                             R7 R4
       34 CALL                             R5 2 1
       35 GETUPVAL                         R6 5
       36 MOVE                             R7 R5
       37 CALL                             R6 1 1
       38 LOADB                            R7 1
       39 GETTABLEKS                       R8 R3 K6 ["onStateChanged"]
       41 JUMPIFNOTEQKNIL                  R8 ; [+12]
       43 LOADB                            R7 1
       44 GETTABLEKS                       R8 R3 K7 ["onActivated"]
       46 JUMPIFNOTEQKNIL                  R8 ; [+7]
       48 GETTABLEKS                       R8 R3 K8 ["onSecondaryActivated"]
       50 JUMPIFNOTEQKNIL                  R8 ; [+2]
       52 LOADB                            R7 0 +1
       53 LOADB                            R7 1
       54 GETUPVAL                         R9 6
       55 GETTABLEKS                       R8 R9 K9 ["useMemo"]
       57 NEWCLOSURE                       R9 P0
       58 CAPTURE                          VAL R3
       59 NEWTABLE                         R10 0 1
       61 GETTABLEKS                       R11 R3 K10 ["GroupTransparency"]
       63 SETLIST                          R10 R11 1 [1]
       65 CALL                             R8 2 1
       66 GETUPVAL                         R10 6
       67 GETTABLEKS                       R9 R10 K9 ["useMemo"]
       69 NEWCLOSURE                       R10 P1
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R3
       73 CAPTURE                          UPVAL U7
       74 NEWTABLE                         R11 0 2
       76 MOVE                             R12 R8
       77 MOVE                             R13 R7
       78 SETLIST                          R11 R12 2 [1]
       80 CALL                             R9 2 1
       81 GETUPVAL                         R10 8
       82 MOVE                             R11 R3
       83 NEWTABLE                         R12 4 0
       85 JUMPIFNOTEQKS                    R9 K11 ["ImageButton"] ; [+3]
       87 LOADB                            R13 0
       88 JUMP                             ; [+1]
       89 LOADNIL                          R13
       90 SETTABLEKS                       R13 R12 K12 ["AutoButtonColor"]
       92 JUMPIFNOT                        R8 ; [+3]
       93 GETTABLEKS                       R13 R3 K10 ["GroupTransparency"]
       95 JUMP                             ; [+1]
       96 LOADNIL                          R13
       97 SETTABLEKS                       R13 R12 K10 ["GroupTransparency"]
       99 SETTABLEKS                       R1 R12 K13 ["ref"]
      101 GETUPVAL                         R14 6
      102 GETTABLEKS                       R13 R14 K14 ["Tag"]
      104 SETTABLE                         R6 R12 R13
      105 CALL                             R10 2 1
      106 JUMPIFNOT                        R7 ; [+2]
      107 GETUPVAL                         R11 9
      108 JUMP                             ; [+1]
      109 MOVE                             R11 R9
      110 DUPTABLE                         R12 K19 [{"component", "onActivated", "onSecondaryActivated", "onStateChanged", "stateLayer", "isDisabled", "cursor"}]
      111 SETTABLEKS                       R9 R12 K15 ["component"]
      113 GETTABLEKS                       R13 R3 K7 ["onActivated"]
      115 SETTABLEKS                       R13 R12 K7 ["onActivated"]
      117 GETTABLEKS                       R13 R3 K8 ["onSecondaryActivated"]
      119 SETTABLEKS                       R13 R12 K8 ["onSecondaryActivated"]
      121 GETTABLEKS                       R13 R3 K6 ["onStateChanged"]
      123 SETTABLEKS                       R13 R12 K6 ["onStateChanged"]
      125 GETTABLEKS                       R13 R3 K16 ["stateLayer"]
      127 SETTABLEKS                       R13 R12 K16 ["stateLayer"]
      129 GETTABLEKS                       R13 R3 K17 ["isDisabled"]
      131 SETTABLEKS                       R13 R12 K17 ["isDisabled"]
      133 GETTABLEKS                       R13 R3 K18 ["cursor"]
      135 SETTABLEKS                       R13 R12 K18 ["cursor"]
      137 JUMPIFNOT                        R7 ; [+20]
      138 GETUPVAL                         R15 0
      139 GETTABLEKS                       R14 R15 K20 ["FoundationMigrateCryoToDash"]
      141 JUMPIFNOT                        R14 ; [+7]
      142 GETUPVAL                         R14 10
      143 GETTABLEKS                       R13 R14 K21 ["union"]
      145 MOVE                             R14 R10
      146 MOVE                             R15 R12
      147 CALL                             R13 2 1
      148 JUMP                             ; [+10]
      149 GETUPVAL                         R15 11
      150 GETTABLEKS                       R14 R15 K22 ["Dictionary"]
      152 GETTABLEKS                       R13 R14 K21 ["union"]
      154 MOVE                             R14 R10
      155 MOVE                             R15 R12
      156 CALL                             R13 2 1
      157 JUMP                             ; [+1]
      158 MOVE                             R13 R10
      159 GETUPVAL                         R15 6
      160 GETTABLEKS                       R14 R15 K23 ["createElement"]
      162 MOVE                             R15 R11
      163 MOVE                             R16 R13
      164 GETUPVAL                         R17 12
      165 MOVE                             R18 R3
      166 CALL                             R17 1 -1
      167 CALL                             R14 -1 -1
      168 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R4 K8 ["Flags"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["React"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R1 K10 ["Cryo"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R1 K11 ["Dash"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R8 R0 K7 ["Utility"]
       35 GETTABLEKS                       R7 R8 K12 ["Logger"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R9 R0 K13 ["Components"]
       42 GETTABLEKS                       R8 R9 K14 ["Interactable"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R10 R0 K13 ["Components"]
       49 GETTABLEKS                       R9 R10 K15 ["Types"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R11 R0 K7 ["Utility"]
       56 GETTABLEKS                       R10 R11 K16 ["withDefaults"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R12 R0 K7 ["Utility"]
       63 GETTABLEKS                       R11 R12 K17 ["useDefaultTags"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K6 [require]
       68 GETTABLEKS                       R13 R0 K7 ["Utility"]
       70 GETTABLEKS                       R12 R13 K18 ["withGuiObjectProps"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K6 [require]
       75 GETTABLEKS                       R14 R0 K7 ["Utility"]
       77 GETTABLEKS                       R13 R14 K19 ["useStyledDefaults"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K6 [require]
       82 GETTABLEKS                       R15 R0 K7 ["Utility"]
       84 GETTABLEKS                       R14 R15 K20 ["GuiObjectChildren"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K6 [require]
       89 GETTABLEKS                       R17 R0 K21 ["Providers"]
       91 GETTABLEKS                       R16 R17 K22 ["Style"]
       93 GETTABLEKS                       R15 R16 K23 ["useStyleTags"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K6 [require]
       98 GETTABLEKS                       R17 R0 K24 ["Enums"]
      100 GETTABLEKS                       R16 R17 K25 ["ControlState"]
      102 CALL                             R15 1 1
      103 DUPTABLE                         R16 K30 [{"layout", "AutoLocalize", "BorderSizePixel", "isDisabled"}]
      104 DUPTABLE                         R17 K32 [{"SortOrder"}]
      105 GETIMPORT                        R18 K35 [Enum.SortOrder.LayoutOrder]
      107 SETTABLEKS                       R18 R17 K31 ["SortOrder"]
      109 SETTABLEKS                       R17 R16 K26 ["layout"]
      111 LOADB                            R17 0
      112 SETTABLEKS                       R17 R16 K27 ["AutoLocalize"]
      114 LOADN                            R17 0
      115 SETTABLEKS                       R17 R16 K28 ["BorderSizePixel"]
      117 LOADB                            R17 0
      118 SETTABLEKS                       R17 R16 K29 ["isDisabled"]
      120 DUPCLOSURE                       R17 K36 [PROTO_2]
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R5
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R13
      134 GETTABLEKS                       R18 R3 K37 ["memo"]
      136 GETTABLEKS                       R19 R3 K38 ["forwardRef"]
      138 MOVE                             R20 R17
      139 CALL                             R19 1 -1
      140 CALL                             R18 -1 -1
      141 RETURN                           R18 -1
