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
       45 GETUPVAL                         R15 6
       46 GETTABLEKS                       R15 R15 K23 ["FoundationDialogContentScrollbarFix"]
       48 JUMPIFNOT                        R15 ; [+9]
       49 JUMPIFNOT                        R1 ; [+4]
       50 GETUPVAL                         R14 7
       51 GETTABLEKS                       R14 R14 K24 ["Auto"]
       53 JUMP                             ; [+5]
       54 GETUPVAL                         R14 7
       55 GETTABLEKS                       R14 R14 K25 ["None"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R14
       59 SETTABLEKS                       R14 R13 K14 ["scrollBarVisibility"]
       61 SETTABLEKS                       R13 R12 K5 ["scroll"]
       63 GETUPVAL                         R14 6
       64 GETTABLEKS                       R14 R14 K26 ["FoundationDialogContentScrollbarLayout"]
       66 JUMPIFNOT                        R14 ; [+14]
       67 DUPTABLE                         R13 K30 [{"FillDirection", "HorizontalFlex", "SortOrder"}]
       68 GETIMPORT                        R14 K32 [Enum.FillDirection.Vertical]
       70 SETTABLEKS                       R14 R13 K27 ["FillDirection"]
       72 GETIMPORT                        R14 K35 [Enum.UIFlexAlignment.Fill]
       74 SETTABLEKS                       R14 R13 K28 ["HorizontalFlex"]
       76 GETIMPORT                        R14 K37 [Enum.SortOrder.LayoutOrder]
       78 SETTABLEKS                       R14 R13 K29 ["SortOrder"]
       80 JUMP                             ; [+1]
       81 LOADNIL                          R13
       82 SETTABLEKS                       R13 R12 K6 ["layout"]
       84 DUPTABLE                         R13 K42 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
       85 SETTABLEKS                       R7 R13 K3 ["Selectable"]
       87 GETTABLEKS                       R14 R0 K38 ["NextSelectionUp"]
       89 SETTABLEKS                       R14 R13 K38 ["NextSelectionUp"]
       91 GETTABLEKS                       R14 R0 K39 ["NextSelectionDown"]
       93 SETTABLEKS                       R14 R13 K39 ["NextSelectionDown"]
       95 GETTABLEKS                       R14 R0 K40 ["NextSelectionLeft"]
       97 SETTABLEKS                       R14 R13 K40 ["NextSelectionLeft"]
       99 GETTABLEKS                       R14 R0 K41 ["NextSelectionRight"]
      101 SETTABLEKS                       R14 R13 K41 ["NextSelectionRight"]
      103 SETTABLEKS                       R13 R12 K7 ["selection"]
      105 SETTABLEKS                       R3 R12 K8 ["onAbsoluteCanvasSizeChanged"]
      107 SETTABLEKS                       R3 R12 K9 ["onAbsoluteWindowSizeChanged"]
      109 GETTABLEKS                       R13 R4 K43 ["content"]
      111 GETTABLEKS                       R13 R13 K10 ["tag"]
      113 SETTABLEKS                       R13 R12 K10 ["tag"]
      115 CALL                             R10 2 1
      116 DUPTABLE                         R11 K46 [{"ScrollPadding", "ScrollContent"}]
      117 GETUPVAL                         R12 3
      118 GETTABLEKS                       R12 R12 K4 ["createElement"]
      120 LOADK                            R13 K47 ["UIPadding"]
      121 DUPTABLE                         R14 K49 [{"PaddingRight"}]
      122 GETUPVAL                         R16 6
      123 GETTABLEKS                       R16 R16 K26 ["FoundationDialogContentScrollbarLayout"]
      125 JUMPIFNOT                        R16 ; [+5]
      126 DUPCLOSURE                       R17 K50 [PROTO_0]
      127 NAMECALL                         R15 R2 K51 ["map"]
      129 CALL                             R15 2 1
      130 JUMP                             ; [+5]
      131 GETIMPORT                        R15 K53 [UDim.new]
      133 LOADN                            R16 0
      134 MOVE                             R17 R2
      135 CALL                             R15 2 1
      136 SETTABLEKS                       R15 R14 K48 ["PaddingRight"]
      138 CALL                             R12 2 1
      139 SETTABLEKS                       R12 R11 K44 ["ScrollPadding"]
      141 GETUPVAL                         R12 3
      142 GETTABLEKS                       R12 R12 K4 ["createElement"]
      144 GETUPVAL                         R13 3
      145 GETTABLEKS                       R13 R13 K54 ["Fragment"]
      147 LOADNIL                          R14
      148 GETTABLEKS                       R15 R0 K55 ["children"]
      150 CALL                             R12 3 1
      151 SETTABLEKS                       R12 R11 K45 ["ScrollContent"]
      153 CALL                             R8 3 -1
      154 RETURN                           R8 -1

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
       18 GETTABLEKS                       R4 R4 K9 ["Flags"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R5 K11 ["ScrollView"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Components"]
       32 GETTABLEKS                       R6 R6 K12 ["Types"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K13 ["Enums"]
       39 GETTABLEKS                       R7 R7 K14 ["Visibility"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Utility"]
       46 GETTABLEKS                       R8 R8 K15 ["withCommonProps"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETIMPORT                        R9 K1 [script]
       53 GETTABLEKS                       R9 R9 K4 ["Parent"]
       55 GETTABLEKS                       R9 R9 K16 ["useScrollBarPadding"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETIMPORT                        R10 K1 [script]
       62 GETTABLEKS                       R10 R10 K4 ["Parent"]
       64 GETTABLEKS                       R10 R10 K4 ["Parent"]
       66 GETTABLEKS                       R10 R10 K17 ["useDialogVariants"]
       68 CALL                             R9 1 1
       69 GETTABLEKS                       R9 R9 K17 ["useDialogVariants"]
       71 GETIMPORT                        R10 K6 [require]
       73 GETIMPORT                        R11 K1 [script]
       75 GETTABLEKS                       R11 R11 K4 ["Parent"]
       77 GETTABLEKS                       R11 R11 K4 ["Parent"]
       79 GETTABLEKS                       R11 R11 K18 ["useDialog"]
       81 CALL                             R10 1 1
       82 DUPCLOSURE                       R11 K19 [PROTO_1]
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R6
       91 RETURN                           R11 1
