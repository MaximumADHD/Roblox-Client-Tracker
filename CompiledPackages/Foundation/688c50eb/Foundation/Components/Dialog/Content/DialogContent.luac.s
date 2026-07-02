PROTO_0:
        0 GETIMPORT                        R1 K2 [UDim.new]
        2 LOADN                            R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_1:
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
       24 GETUPVAL                         R8 3
       25 GETTABLEKS                       R8 R8 K4 ["createElement"]
       27 GETUPVAL                         R9 4
       28 GETUPVAL                         R10 5
       29 MOVE                             R11 R0
       30 DUPTABLE                         R12 K11 [{"scroll", "layout", "selection", "onAbsoluteCanvasSizeChanged", "onAbsoluteWindowSizeChanged", "tag"}]
       31 DUPTABLE                         R13 K15 [{"AutomaticCanvasSize", "CanvasSize", "scrollBarVisibility"}]
       32 GETIMPORT                        R14 K19 [Enum.AutomaticSize.Y]
       34 SETTABLEKS                       R14 R13 K12 ["AutomaticCanvasSize"]
       36 GETIMPORT                        R14 K22 [UDim2.new]
       38 LOADN                            R15 0
       39 LOADN                            R16 0
       40 LOADN                            R17 0
       41 LOADN                            R18 0
       42 CALL                             R14 4 1
       43 SETTABLEKS                       R14 R13 K13 ["CanvasSize"]
       45 JUMPIFNOT                        R1 ; [+4]
       46 GETUPVAL                         R14 6
       47 GETTABLEKS                       R14 R14 K23 ["Auto"]
       49 JUMP                             ; [+3]
       50 GETUPVAL                         R14 6
       51 GETTABLEKS                       R14 R14 K24 ["None"]
       53 SETTABLEKS                       R14 R13 K14 ["scrollBarVisibility"]
       55 SETTABLEKS                       R13 R12 K5 ["scroll"]
       57 DUPTABLE                         R13 K28 [{"FillDirection", "HorizontalFlex", "SortOrder"}]
       58 GETIMPORT                        R14 K30 [Enum.FillDirection.Vertical]
       60 SETTABLEKS                       R14 R13 K25 ["FillDirection"]
       62 GETIMPORT                        R14 K33 [Enum.UIFlexAlignment.Fill]
       64 SETTABLEKS                       R14 R13 K26 ["HorizontalFlex"]
       66 GETIMPORT                        R14 K35 [Enum.SortOrder.LayoutOrder]
       68 SETTABLEKS                       R14 R13 K27 ["SortOrder"]
       70 SETTABLEKS                       R13 R12 K6 ["layout"]
       72 DUPTABLE                         R13 K40 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
       73 SETTABLEKS                       R7 R13 K3 ["Selectable"]
       75 GETTABLEKS                       R14 R0 K36 ["NextSelectionUp"]
       77 SETTABLEKS                       R14 R13 K36 ["NextSelectionUp"]
       79 GETTABLEKS                       R14 R0 K37 ["NextSelectionDown"]
       81 SETTABLEKS                       R14 R13 K37 ["NextSelectionDown"]
       83 GETTABLEKS                       R14 R0 K38 ["NextSelectionLeft"]
       85 SETTABLEKS                       R14 R13 K38 ["NextSelectionLeft"]
       87 GETTABLEKS                       R14 R0 K39 ["NextSelectionRight"]
       89 SETTABLEKS                       R14 R13 K39 ["NextSelectionRight"]
       91 SETTABLEKS                       R13 R12 K7 ["selection"]
       93 SETTABLEKS                       R3 R12 K8 ["onAbsoluteCanvasSizeChanged"]
       95 SETTABLEKS                       R3 R12 K9 ["onAbsoluteWindowSizeChanged"]
       97 GETTABLEKS                       R13 R4 K41 ["content"]
       99 GETTABLEKS                       R13 R13 K10 ["tag"]
      101 SETTABLEKS                       R13 R12 K10 ["tag"]
      103 CALL                             R10 2 1
      104 DUPTABLE                         R11 K44 [{"ScrollPadding", "ScrollContent"}]
      105 GETUPVAL                         R12 3
      106 GETTABLEKS                       R12 R12 K4 ["createElement"]
      108 LOADK                            R13 K45 ["UIPadding"]
      109 DUPTABLE                         R14 K47 [{"PaddingRight"}]
      110 DUPCLOSURE                       R17 K48 [PROTO_0]
      111 NAMECALL                         R15 R2 K49 ["map"]
      113 CALL                             R15 2 1
      114 SETTABLEKS                       R15 R14 K46 ["PaddingRight"]
      116 CALL                             R12 2 1
      117 SETTABLEKS                       R12 R11 K42 ["ScrollPadding"]
      119 GETUPVAL                         R12 3
      120 GETTABLEKS                       R12 R12 K4 ["createElement"]
      122 GETUPVAL                         R13 3
      123 GETTABLEKS                       R13 R13 K50 ["Fragment"]
      125 LOADNIL                          R14
      126 GETTABLEKS                       R15 R0 K51 ["children"]
      128 CALL                             R12 3 1
      129 SETTABLEKS                       R12 R11 K43 ["ScrollContent"]
      131 CALL                             R8 3 -1
      132 RETURN                           R8 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["ScrollView"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["Types"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Enums"]
       32 GETTABLEKS                       R6 R6 K12 ["Visibility"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K13 ["Utility"]
       39 GETTABLEKS                       R7 R7 K14 ["withCommonProps"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETIMPORT                        R8 K1 [script]
       46 GETTABLEKS                       R8 R8 K4 ["Parent"]
       48 GETTABLEKS                       R8 R8 K15 ["useScrollBarPadding"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETIMPORT                        R9 K1 [script]
       55 GETTABLEKS                       R9 R9 K4 ["Parent"]
       57 GETTABLEKS                       R9 R9 K4 ["Parent"]
       59 GETTABLEKS                       R9 R9 K16 ["useDialogVariants"]
       61 CALL                             R8 1 1
       62 GETTABLEKS                       R8 R8 K16 ["useDialogVariants"]
       64 GETIMPORT                        R9 K6 [require]
       66 GETIMPORT                        R10 K1 [script]
       68 GETTABLEKS                       R10 R10 K4 ["Parent"]
       70 GETTABLEKS                       R10 R10 K4 ["Parent"]
       72 GETTABLEKS                       R10 R10 K17 ["useDialog"]
       74 CALL                             R9 1 1
       75 DUPCLOSURE                       R10 K18 [PROTO_1]
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R5
       83 RETURN                           R10 1
