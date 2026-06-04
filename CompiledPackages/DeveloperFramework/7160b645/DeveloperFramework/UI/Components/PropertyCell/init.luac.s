PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Renderers"]
        4 JUMPIFNOT                        R3 ; [+8]
        5 GETTABLEKS                       R3 R1 K1 ["Renderers"]
        7 GETTABLEKS                       R4 R1 K2 ["Schema"]
        9 GETTABLEKS                       R4 R4 K3 ["Type"]
       11 GETTABLE                         R2 R3 R4
       12 JUMPIF                           R2 ; [+8]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K1 ["Renderers"]
       16 GETTABLEKS                       R4 R1 K2 ["Schema"]
       18 GETTABLEKS                       R4 R4 K3 ["Type"]
       20 GETTABLE                         R2 R3 R4
       21 JUMPIF                           R2 ; [+15]
       22 GETTABLEKS                       R3 R1 K2 ["Schema"]
       24 GETTABLEKS                       R3 R3 K3 ["Type"]
       26 JUMPIFEQKS                       R3 K4 ["Empty"] ; [+10]
       28 GETIMPORT                        R3 K6 [error]
       30 LOADK                            R5 K7 ["No renderer found for property schema "]
       31 GETTABLEKS                       R6 R1 K2 ["Schema"]
       33 GETTABLEKS                       R6 R6 K3 ["Type"]
       35 CONCAT                           R4 R5 R6
       36 CALL                             R3 1 0
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R3 R3 K8 ["createElement"]
       40 GETUPVAL                         R4 2
       41 GETUPVAL                         R5 3
       42 DUPTABLE                         R6 K16 [{"AnchorPoint", "AutomaticSize", "ClipsDescendants", "LayoutOrder", "Position", "Size", "VerticalAlignment"}]
       43 GETTABLEKS                       R7 R1 K9 ["AnchorPoint"]
       45 SETTABLEKS                       R7 R6 K9 ["AnchorPoint"]
       47 GETTABLEKS                       R7 R1 K10 ["AutomaticSize"]
       49 SETTABLEKS                       R7 R6 K10 ["AutomaticSize"]
       51 GETTABLEKS                       R8 R1 K10 ["AutomaticSize"]
       53 NOT                              R7 R8
       54 SETTABLEKS                       R7 R6 K11 ["ClipsDescendants"]
       56 GETTABLEKS                       R7 R1 K12 ["LayoutOrder"]
       58 SETTABLEKS                       R7 R6 K12 ["LayoutOrder"]
       60 GETTABLEKS                       R7 R1 K13 ["Position"]
       62 SETTABLEKS                       R7 R6 K13 ["Position"]
       64 GETTABLEKS                       R7 R1 K14 ["Size"]
       66 SETTABLEKS                       R7 R6 K14 ["Size"]
       68 GETTABLEKS                       R7 R1 K15 ["VerticalAlignment"]
       70 JUMPIF                           R7 ; [+2]
       71 GETIMPORT                        R7 K19 [Enum.VerticalAlignment.Center]
       73 SETTABLEKS                       R7 R6 K15 ["VerticalAlignment"]
       75 GETUPVAL                         R8 4
       76 JUMPIFNOT                        R8 ; [+14]
       77 NEWTABLE                         R7 1 0
       79 GETUPVAL                         R8 5
       80 GETTABLEKS                       R8 R8 K20 ["Tag"]
       82 GETUPVAL                         R9 6
       83 LOADK                            R10 K21 ["Component-PropertyCell"]
       84 GETUPVAL                         R12 5
       85 GETTABLEKS                       R12 R12 K20 ["Tag"]
       87 GETTABLE                         R11 R1 R12
       88 CALL                             R9 2 1
       89 SETTABLE                         R9 R7 R8
       90 JUMP                             ; [+1]
       91 LOADNIL                          R7
       92 CALL                             R5 2 1
       93 DUPTABLE                         R6 K24 [{"Content", "Layout"}]
       94 JUMPIFNOT                        R2 ; [+7]
       95 GETUPVAL                         R7 1
       96 GETTABLEKS                       R7 R7 K8 ["createElement"]
       98 MOVE                             R8 R2
       99 MOVE                             R9 R1
      100 CALL                             R7 2 1
      101 JUMP                             ; [+1]
      102 LOADNIL                          R7
      103 SETTABLEKS                       R7 R6 K22 ["Content"]
      105 GETUPVAL                         R8 7
      106 CALL                             R8 0 1
      107 JUMPIFNOT                        R8 ; [+19]
      108 GETUPVAL                         R7 1
      109 GETTABLEKS                       R7 R7 K8 ["createElement"]
      111 LOADK                            R8 K25 ["UIListLayout"]
      112 DUPTABLE                         R9 K28 [{"HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
      113 GETIMPORT                        R10 K30 [Enum.HorizontalAlignment.Left]
      115 SETTABLEKS                       R10 R9 K26 ["HorizontalAlignment"]
      117 GETIMPORT                        R10 K31 [Enum.SortOrder.LayoutOrder]
      119 SETTABLEKS                       R10 R9 K27 ["SortOrder"]
      121 GETIMPORT                        R10 K19 [Enum.VerticalAlignment.Center]
      123 SETTABLEKS                       R10 R9 K15 ["VerticalAlignment"]
      125 CALL                             R7 2 1
      126 JUMP                             ; [+1]
      127 LOADNIL                          R7
      128 SETTABLEKS                       R7 R6 K23 ["Layout"]
      130 CALL                             R3 3 1
      131 GETTABLEKS                       R4 R1 K32 ["Tooltip"]
      133 JUMPIFNOT                        R4 ; [+22]
      134 GETUPVAL                         R4 1
      135 GETTABLEKS                       R4 R4 K8 ["createElement"]
      137 GETUPVAL                         R5 8
      138 DUPTABLE                         R6 K35 [{"Child", "Text", "LayoutOrder"}]
      139 SETTABLEKS                       R3 R6 K33 ["Child"]
      141 GETTABLEKS                       R7 R1 K32 ["Tooltip"]
      143 SETTABLEKS                       R7 R6 K34 ["Text"]
      145 GETUPVAL                         R8 9
      146 CALL                             R8 0 1
      147 JUMPIFNOT                        R8 ; [+3]
      148 GETTABLEKS                       R7 R1 K12 ["LayoutOrder"]
      150 JUMP                             ; [+1]
      151 LOADNIL                          R7
      152 SETTABLEKS                       R7 R6 K12 ["LayoutOrder"]
      154 CALL                             R4 2 -1
      155 RETURN                           R4 -1
      156 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETTABLEKS                       R5 R0 K4 ["Parent"]
       27 LOADK                            R7 K10 ["React"]
       28 NAMECALL                         R5 R5 K11 ["FindFirstChild"]
       30 CALL                             R5 2 1
       31 JUMPIFNOT                        R5 ; [+8]
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R5 R0 K4 ["Parent"]
       36 GETTABLEKS                       R5 R5 K10 ["React"]
       38 CALL                             R4 1 1
       39 JUMP                             ; [+1]
       40 LOADNIL                          R4
       41 GETIMPORT                        R5 K6 [require]
       43 GETTABLEKS                       R6 R0 K12 ["Styling"]
       45 GETTABLEKS                       R6 R6 K13 ["supportsStyleSheets"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K6 [require]
       50 GETTABLEKS                       R7 R0 K12 ["Styling"]
       52 GETTABLEKS                       R7 R7 K14 ["joinTags"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K6 [require]
       57 GETTABLEKS                       R8 R0 K4 ["Parent"]
       59 GETTABLEKS                       R8 R8 K15 ["Dash"]
       61 CALL                             R7 1 1
       62 GETTABLEKS                       R8 R7 K16 ["assign"]
       64 GETTABLEKS                       R9 R0 K2 ["UI"]
       66 GETTABLEKS                       R9 R9 K17 ["Components"]
       68 GETIMPORT                        R10 K6 [require]
       70 GETTABLEKS                       R11 R9 K18 ["Pane"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K6 [require]
       75 GETTABLEKS                       R12 R9 K19 ["Tooltip"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K6 [require]
       80 GETTABLEKS                       R13 R0 K20 ["SharedFlags"]
       82 GETTABLEKS                       R13 R13 K21 ["getFFlagDevFrameworkPropertyCellLayoutOrderFix"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K6 [require]
       87 GETTABLEKS                       R14 R0 K20 ["SharedFlags"]
       89 GETTABLEKS                       R14 R14 K22 ["getFFlagDevFrameworkFormAlignment"]
       91 CALL                             R13 1 1
       92 GETTABLEKS                       R14 R1 K23 ["PureComponent"]
       94 LOADK                            R16 K24 ["PropertyCell"]
       95 NAMECALL                         R14 R14 K25 ["extend"]
       97 CALL                             R14 2 1
       98 NEWCLOSURE                       R15 P0
       99 CAPTURE                          REF R14
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R12
      109 SETTABLEKS                       R15 R14 K26 ["render"]
      111 GETIMPORT                        R15 K6 [require]
      113 GETIMPORT                        R16 K1 [script]
      115 GETTABLEKS                       R16 R16 K27 ["Renderers"]
      117 CALL                             R15 1 1
      118 SETTABLEKS                       R15 R14 K27 ["Renderers"]
      120 JUMPIF                           R5 ; [+10]
      121 MOVE                             R15 R3
      122 DUPTABLE                         R16 K29 [{"Stylizer"}]
      123 GETTABLEKS                       R17 R2 K28 ["Stylizer"]
      125 SETTABLEKS                       R17 R16 K28 ["Stylizer"]
      127 CALL                             R15 1 1
      128 MOVE                             R16 R14
      129 CALL                             R15 1 1
      130 MOVE                             R14 R15
      131 CLOSEUPVALS                      R14
      132 RETURN                           R14 1
