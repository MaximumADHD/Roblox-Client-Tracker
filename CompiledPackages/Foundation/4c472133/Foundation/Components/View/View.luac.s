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
       87 MOVE                             R10 R8
       88 JUMPIFNOT                        R6 ; [+27]
       89 GETUPVAL                         R10 7
       90 SETTABLEKS                       R8 R9 K13 ["component"]
       92 GETTABLEKS                       R11 R2 K5 ["onActivated"]
       94 SETTABLEKS                       R11 R9 K5 ["onActivated"]
       96 GETTABLEKS                       R11 R2 K6 ["onSecondaryActivated"]
       98 SETTABLEKS                       R11 R9 K6 ["onSecondaryActivated"]
      100 GETTABLEKS                       R11 R2 K4 ["onStateChanged"]
      102 SETTABLEKS                       R11 R9 K4 ["onStateChanged"]
      104 GETTABLEKS                       R11 R2 K14 ["stateLayer"]
      106 SETTABLEKS                       R11 R9 K14 ["stateLayer"]
      108 GETTABLEKS                       R11 R2 K15 ["isDisabled"]
      110 SETTABLEKS                       R11 R9 K15 ["isDisabled"]
      112 GETTABLEKS                       R11 R2 K16 ["cursor"]
      114 SETTABLEKS                       R11 R9 K16 ["cursor"]
      116 GETUPVAL                         R11 4
      117 GETTABLEKS                       R11 R11 K17 ["createElement"]
      119 MOVE                             R12 R10
      120 MOVE                             R13 R9
      121 GETUPVAL                         R14 8
      122 MOVE                             R15 R2
      123 CALL                             R14 1 -1
      124 CALL                             R11 -1 -1
      125 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Utility"]
       18 GETTABLEKS                       R4 R4 K9 ["Logger"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R5 K11 ["Interactable"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Utility"]
       32 GETTABLEKS                       R6 R6 K12 ["GuiObjectChildren"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Components"]
       39 GETTABLEKS                       R7 R7 K13 ["Types"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Utility"]
       46 GETTABLEKS                       R8 R8 K14 ["useDefaultTags"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K8 ["Utility"]
       53 GETTABLEKS                       R9 R9 K15 ["withDefaults"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K8 ["Utility"]
       60 GETTABLEKS                       R10 R10 K16 ["withGuiObjectProps"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K17 ["Providers"]
       67 GETTABLEKS                       R11 R11 K18 ["Style"]
       69 GETTABLEKS                       R11 R11 K19 ["useStyleTags"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R12 R0 K20 ["Enums"]
       76 GETTABLEKS                       R12 R12 K21 ["ControlState"]
       78 CALL                             R11 1 1
       79 DUPTABLE                         R12 K28 [{["layout"], ["AutoLocalize"] = False, ["BorderSizePixel"] = 0, ["isDisabled"] = False}]
       80 DUPTABLE                         R13 K30 [{"SortOrder"}]
       81 GETIMPORT                        R14 K33 [Enum.SortOrder.LayoutOrder]
       83 SETTABLEKS                       R14 R13 K29 ["SortOrder"]
       85 SETTABLEKS                       R13 R12 K22 ["layout"]
       87 DUPCLOSURE                       R13 K34 [PROTO_2]
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R12
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R5
       97 GETTABLEKS                       R14 R2 K35 ["memo"]
       99 GETTABLEKS                       R15 R2 K36 ["forwardRef"]
      101 MOVE                             R16 R13
      102 CALL                             R15 1 -1
      103 CALL                             R14 -1 -1
      104 RETURN                           R14 -1
