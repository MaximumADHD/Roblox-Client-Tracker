PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 3
        2 GETUPVAL                         R4 1
        3 CALL                             R4 0 1
        4 GETUPVAL                         R5 2
        5 CALL                             R5 0 1
        6 LOADK                            R7 K0 ["%*--content"]
        7 GETTABLEKS                       R9 R5 K1 ["testId"]
        9 NAMECALL                         R7 R7 K2 ["format"]
       11 CALL                             R7 2 1
       12 MOVE                             R6 R7
       13 SETTABLEKS                       R6 R0 K1 ["testId"]
       15 GETTABLEKS                       R7 R0 K3 ["Selectable"]
       17 JUMPIFNOTEQKNIL                  R7 ; [+3]
       19 LOADB                            R6 1
       20 JUMP                             ; [+2]
       21 GETTABLEKS                       R6 R0 K3 ["Selectable"]
       23 AND                              R7 R6 R1
       24 GETUPVAL                         R9 3
       25 GETTABLEKS                       R8 R9 K4 ["createElement"]
       27 GETUPVAL                         R9 4
       28 GETUPVAL                         R10 5
       29 MOVE                             R11 R0
       30 DUPTABLE                         R12 K10 [{"scroll", "selection", "onAbsoluteCanvasSizeChanged", "onAbsoluteWindowSizeChanged", "tag"}]
       31 DUPTABLE                         R13 K13 [{"AutomaticCanvasSize", "CanvasSize"}]
       32 GETIMPORT                        R14 K17 [Enum.AutomaticSize.Y]
       34 SETTABLEKS                       R14 R13 K11 ["AutomaticCanvasSize"]
       36 GETIMPORT                        R14 K20 [UDim2.new]
       38 LOADN                            R15 0
       39 LOADN                            R16 0
       40 LOADN                            R17 0
       41 LOADN                            R18 0
       42 CALL                             R14 4 1
       43 SETTABLEKS                       R14 R13 K12 ["CanvasSize"]
       45 SETTABLEKS                       R13 R12 K5 ["scroll"]
       47 GETUPVAL                         R15 6
       48 GETTABLEKS                       R14 R15 K21 ["FoundationDialogContentSelectable"]
       50 JUMPIFNOT                        R14 ; [+20]
       51 DUPTABLE                         R13 K26 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
       52 SETTABLEKS                       R7 R13 K3 ["Selectable"]
       54 GETTABLEKS                       R14 R0 K22 ["NextSelectionUp"]
       56 SETTABLEKS                       R14 R13 K22 ["NextSelectionUp"]
       58 GETTABLEKS                       R14 R0 K23 ["NextSelectionDown"]
       60 SETTABLEKS                       R14 R13 K23 ["NextSelectionDown"]
       62 GETTABLEKS                       R14 R0 K24 ["NextSelectionLeft"]
       64 SETTABLEKS                       R14 R13 K24 ["NextSelectionLeft"]
       66 GETTABLEKS                       R14 R0 K25 ["NextSelectionRight"]
       68 SETTABLEKS                       R14 R13 K25 ["NextSelectionRight"]
       70 JUMP                             ; [+1]
       71 LOADNIL                          R13
       72 SETTABLEKS                       R13 R12 K6 ["selection"]
       74 SETTABLEKS                       R3 R12 K7 ["onAbsoluteCanvasSizeChanged"]
       76 SETTABLEKS                       R3 R12 K8 ["onAbsoluteWindowSizeChanged"]
       78 GETTABLEKS                       R14 R4 K27 ["content"]
       80 GETTABLEKS                       R13 R14 K9 ["tag"]
       82 SETTABLEKS                       R13 R12 K9 ["tag"]
       84 CALL                             R10 2 1
       85 DUPTABLE                         R11 K30 [{"ScrollPadding", "ScrollContent"}]
       86 GETUPVAL                         R13 3
       87 GETTABLEKS                       R12 R13 K4 ["createElement"]
       89 LOADK                            R13 K31 ["UIPadding"]
       90 DUPTABLE                         R14 K33 [{"PaddingRight"}]
       91 GETIMPORT                        R15 K35 [UDim.new]
       93 LOADN                            R16 0
       94 MOVE                             R17 R2
       95 CALL                             R15 2 1
       96 SETTABLEKS                       R15 R14 K32 ["PaddingRight"]
       98 CALL                             R12 2 1
       99 SETTABLEKS                       R12 R11 K28 ["ScrollPadding"]
      101 GETUPVAL                         R13 3
      102 GETTABLEKS                       R12 R13 K4 ["createElement"]
      104 GETUPVAL                         R14 3
      105 GETTABLEKS                       R13 R14 K36 ["Fragment"]
      107 LOADNIL                          R14
      108 GETTABLEKS                       R15 R0 K37 ["children"]
      110 CALL                             R12 3 1
      111 SETTABLEKS                       R12 R11 K29 ["ScrollContent"]
      113 CALL                             R8 3 -1
      114 RETURN                           R8 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Utility"]
       18 GETTABLEKS                       R4 R5 K9 ["Flags"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R6 K11 ["ScrollView"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Components"]
       32 GETTABLEKS                       R6 R7 K12 ["Types"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K8 ["Utility"]
       39 GETTABLEKS                       R7 R8 K13 ["withCommonProps"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETIMPORT                        R10 K1 [script]
       46 GETTABLEKS                       R9 R10 K4 ["Parent"]
       48 GETTABLEKS                       R8 R9 K14 ["useScrollBarPadding"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R9 K6 [require]
       53 GETIMPORT                        R13 K1 [script]
       55 GETTABLEKS                       R12 R13 K4 ["Parent"]
       57 GETTABLEKS                       R11 R12 K4 ["Parent"]
       59 GETTABLEKS                       R10 R11 K15 ["useDialogVariants"]
       61 CALL                             R9 1 1
       62 GETTABLEKS                       R8 R9 K15 ["useDialogVariants"]
       64 GETIMPORT                        R9 K6 [require]
       66 GETIMPORT                        R13 K1 [script]
       68 GETTABLEKS                       R12 R13 K4 ["Parent"]
       70 GETTABLEKS                       R11 R12 K4 ["Parent"]
       72 GETTABLEKS                       R10 R11 K16 ["useDialog"]
       74 CALL                             R9 1 1
       75 DUPCLOSURE                       R10 K17 [PROTO_0]
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R3
       83 RETURN                           R10 1
