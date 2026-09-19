PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K1 ["Value"]
        3 ORK                              R0 R1 K0 [""]
        4 GETUPVAL                         R1 1
        5 JUMPIFNOTEQ                      R0 R1 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K1 ["Value"]
       12 ORK                              R1 R2 K0 [""]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onExpressionChanged"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+5]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["NODE_EXPRESSION_MIN_NUM_LINES"]
        8 RETURN                           R2 1
        9 LOADN                            R3 0
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K1 ["NODE_VIEW_CHILD_HEIGHT"]
       13 SUB                              R4 R1 R5
       14 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       16 GETIMPORT                        R2 K4 [math.max]
       18 CALL                             R2 2 1
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K0 ["NODE_EXPRESSION_MIN_NUM_LINES"]
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K5 ["NODE_EXPRESSION_LINE_HEIGHT"]
       25 DIV                              R6 R2 R7
       26 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       27 GETIMPORT                        R5 K7 [math.floor]
       29 CALL                             R5 1 1
       30 ADD                              R3 R4 R5
       31 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeControlledHeight"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useState"]
        7 GETTABLEKS                       R4 R0 K3 ["Value"]
        9 ORK                              R3 R4 K2 [""]
       10 CALL                             R2 1 2
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K4 ["useEffect"]
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R3
       18 NEWTABLE                         R6 0 1
       20 GETTABLEKS                       R7 R0 K3 ["Value"]
       22 SETLIST                          R6 R7 1 [1]
       24 CALL                             R4 2 0
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K5 ["useCallback"]
       28 NEWCLOSURE                       R5 P1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R2
       31 NEWTABLE                         R6 0 2
       33 MOVE                             R7 R2
       34 GETTABLEKS                       R8 R0 K6 ["onExpressionChanged"]
       36 SETLIST                          R6 R7 2 [1]
       38 CALL                             R4 2 1
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R5 R5 K7 ["useContext"]
       42 GETUPVAL                         R6 2
       43 GETTABLEKS                       R6 R6 K8 ["Context"]
       45 CALL                             R5 1 1
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R6 R6 K9 ["useMemo"]
       49 NEWCLOSURE                       R7 P2
       50 CAPTURE                          VAL R5
       51 CAPTURE                          UPVAL U3
       52 NEWTABLE                         R8 0 1
       54 GETTABLEKS                       R9 R5 K10 ["observeControlledHeight"]
       56 SETLIST                          R8 R9 1 [1]
       58 CALL                             R6 2 1
       59 GETUPVAL                         R7 4
       60 GETTABLEKS                       R7 R7 K11 ["useSignalState"]
       62 MOVE                             R8 R6
       63 CALL                             R7 1 1
       64 GETUPVAL                         R8 1
       65 GETTABLEKS                       R8 R8 K12 ["createElement"]
       67 GETUPVAL                         R9 5
       68 GETTABLEKS                       R9 R9 K13 ["View"]
       70 DUPTABLE                         R10 K17 [{"tag", "LayoutOrder", "testId"}]
       71 GETUPVAL                         R11 5
       72 GETTABLEKS                       R11 R11 K18 ["Hooks"]
       74 GETTABLEKS                       R11 R11 K19 ["useDefaultTags"]
       76 GETTABLEKS                       R12 R0 K20 ["tags"]
       78 LOADK                            R13 K21 ["col auto-y gap-small size-full-700 padding-xsmall"]
       79 CALL                             R11 2 1
       80 SETTABLEKS                       R11 R10 K14 ["tag"]
       82 GETTABLEKS                       R11 R0 K15 ["LayoutOrder"]
       84 SETTABLEKS                       R11 R10 K15 ["LayoutOrder"]
       86 GETTABLEKS                       R11 R0 K16 ["testId"]
       88 SETTABLEKS                       R11 R10 K16 ["testId"]
       90 DUPTABLE                         R11 K23 [{"ExpressionTextInput"}]
       91 GETUPVAL                         R12 1
       92 GETTABLEKS                       R12 R12 K12 ["createElement"]
       94 GETUPVAL                         R13 5
       95 GETTABLEKS                       R13 R13 K24 ["TextArea"]
       97 DUPTABLE                         R14 K33 [{["LayoutOrder"], ["label"] = "", ["testId"] = "ExpressionInput", ["text"], ["width"], ["numLines"], ["size"], ["onFocusLost"], ["onChanged"]}]
       98 MOVE                             R15 R1
       99 CALL                             R15 0 1
      100 SETTABLEKS                       R15 R14 K15 ["LayoutOrder"]
      102 SETTABLEKS                       R2 R14 K27 ["text"]
      104 GETIMPORT                        R15 K36 [UDim.new]
      106 LOADN                            R16 1
      107 LOADN                            R17 0
      108 CALL                             R15 2 1
      109 SETTABLEKS                       R15 R14 K28 ["width"]
      111 SETTABLEKS                       R7 R14 K29 ["numLines"]
      113 GETUPVAL                         R15 5
      114 GETTABLEKS                       R15 R15 K37 ["Enums"]
      116 GETTABLEKS                       R15 R15 K38 ["InputSize"]
      118 GETTABLEKS                       R15 R15 K39 ["XSmall"]
      120 SETTABLEKS                       R15 R14 K30 ["size"]
      122 SETTABLEKS                       R4 R14 K31 ["onFocusLost"]
      124 SETTABLEKS                       R3 R14 K32 ["onChanged"]
      126 CALL                             R12 2 1
      127 SETTABLEKS                       R12 R11 K22 ["ExpressionTextInput"]
      129 CALL                             R8 3 -1
      130 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["CompositorNode"]
       13 GETTABLEKS                       R2 R2 K8 ["CompositorNodeComponentContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Constants"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R4 K11 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K10 ["Parent"]
       46 GETTABLEKS                       R7 R7 K14 ["Signals"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K10 ["Parent"]
       53 GETTABLEKS                       R8 R8 K15 ["SignalsReact"]
       55 CALL                             R7 1 1
       56 DUPCLOSURE                       R8 K16 [PROTO_4]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R3
       63 RETURN                           R8 1
