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
       47 DUPTABLE                         R13 K25 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
       48 SETTABLEKS                       R7 R13 K3 ["Selectable"]
       50 GETTABLEKS                       R14 R0 K21 ["NextSelectionUp"]
       52 SETTABLEKS                       R14 R13 K21 ["NextSelectionUp"]
       54 GETTABLEKS                       R14 R0 K22 ["NextSelectionDown"]
       56 SETTABLEKS                       R14 R13 K22 ["NextSelectionDown"]
       58 GETTABLEKS                       R14 R0 K23 ["NextSelectionLeft"]
       60 SETTABLEKS                       R14 R13 K23 ["NextSelectionLeft"]
       62 GETTABLEKS                       R14 R0 K24 ["NextSelectionRight"]
       64 SETTABLEKS                       R14 R13 K24 ["NextSelectionRight"]
       66 SETTABLEKS                       R13 R12 K6 ["selection"]
       68 SETTABLEKS                       R3 R12 K7 ["onAbsoluteCanvasSizeChanged"]
       70 SETTABLEKS                       R3 R12 K8 ["onAbsoluteWindowSizeChanged"]
       72 GETTABLEKS                       R14 R4 K26 ["content"]
       74 GETTABLEKS                       R13 R14 K9 ["tag"]
       76 SETTABLEKS                       R13 R12 K9 ["tag"]
       78 CALL                             R10 2 1
       79 DUPTABLE                         R11 K29 [{"ScrollPadding", "ScrollContent"}]
       80 GETUPVAL                         R13 3
       81 GETTABLEKS                       R12 R13 K4 ["createElement"]
       83 LOADK                            R13 K30 ["UIPadding"]
       84 DUPTABLE                         R14 K32 [{"PaddingRight"}]
       85 GETIMPORT                        R15 K34 [UDim.new]
       87 LOADN                            R16 0
       88 MOVE                             R17 R2
       89 CALL                             R15 2 1
       90 SETTABLEKS                       R15 R14 K31 ["PaddingRight"]
       92 CALL                             R12 2 1
       93 SETTABLEKS                       R12 R11 K27 ["ScrollPadding"]
       95 GETUPVAL                         R13 3
       96 GETTABLEKS                       R12 R13 K4 ["createElement"]
       98 GETUPVAL                         R14 3
       99 GETTABLEKS                       R13 R14 K35 ["Fragment"]
      101 LOADNIL                          R14
      102 GETTABLEKS                       R15 R0 K36 ["children"]
      104 CALL                             R12 3 1
      105 SETTABLEKS                       R12 R11 K28 ["ScrollContent"]
      107 CALL                             R8 3 -1
      108 RETURN                           R8 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["ScrollView"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R6 K10 ["Types"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K11 ["Utility"]
       32 GETTABLEKS                       R6 R7 K12 ["withCommonProps"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETIMPORT                        R9 K1 [script]
       39 GETTABLEKS                       R8 R9 K4 ["Parent"]
       41 GETTABLEKS                       R7 R8 K13 ["useScrollBarPadding"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R8 K6 [require]
       46 GETIMPORT                        R12 K1 [script]
       48 GETTABLEKS                       R11 R12 K4 ["Parent"]
       50 GETTABLEKS                       R10 R11 K4 ["Parent"]
       52 GETTABLEKS                       R9 R10 K14 ["useDialogVariants"]
       54 CALL                             R8 1 1
       55 GETTABLEKS                       R7 R8 K14 ["useDialogVariants"]
       57 GETIMPORT                        R8 K6 [require]
       59 GETIMPORT                        R12 K1 [script]
       61 GETTABLEKS                       R11 R12 K4 ["Parent"]
       63 GETTABLEKS                       R10 R11 K4 ["Parent"]
       65 GETTABLEKS                       R9 R10 K15 ["useDialog"]
       67 CALL                             R8 1 1
       68 DUPCLOSURE                       R9 K16 [PROTO_0]
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R5
       75 RETURN                           R9 1
