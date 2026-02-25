PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Position"]
        6 GETTABLEKS                       R4 R1 K3 ["Size"]
        8 DUPTABLE                         R5 K6 [{"Title", "Close"}]
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R6 R7 K7 ["createElement"]
       12 LOADK                            R7 K8 ["TextLabel"]
       13 DUPTABLE                         R8 K14 [{"TextColor3", "Text", "TextSize", "Font", "Size", "Position", "BackgroundTransparency"}]
       14 GETTABLEKS                       R10 R2 K15 ["tags"]
       16 GETTABLEKS                       R9 R10 K16 ["textColor"]
       18 SETTABLEKS                       R9 R8 K9 ["TextColor3"]
       20 GETTABLEKS                       R9 R1 K10 ["Text"]
       22 SETTABLEKS                       R9 R8 K10 ["Text"]
       24 GETUPVAL                         R10 1
       25 GETTABLEKS                       R9 R10 K17 ["FONT_SIZE_TITLE"]
       27 SETTABLEKS                       R9 R8 K11 ["TextSize"]
       29 GETUPVAL                         R10 1
       30 GETTABLEKS                       R9 R10 K18 ["FONT"]
       32 SETTABLEKS                       R9 R8 K12 ["Font"]
       34 GETIMPORT                        R9 K21 [UDim2.new]
       36 LOADN                            R10 0
       37 GETTABLEKS                       R12 R1 K22 ["textSize"]
       39 GETTABLEKS                       R11 R12 K23 ["X"]
       41 LOADN                            R12 0
       42 GETTABLEKS                       R14 R1 K22 ["textSize"]
       44 GETTABLEKS                       R13 R14 K24 ["Y"]
       46 CALL                             R9 4 1
       47 SETTABLEKS                       R9 R8 K3 ["Size"]
       49 GETIMPORT                        R9 K21 [UDim2.new]
       51 LOADN                            R10 0
       52 LOADN                            R11 3
       53 LOADN                            R12 0
       54 LOADN                            R13 3
       55 CALL                             R9 4 1
       56 SETTABLEKS                       R9 R8 K2 ["Position"]
       58 LOADN                            R9 1
       59 SETTABLEKS                       R9 R8 K13 ["BackgroundTransparency"]
       61 CALL                             R6 2 1
       62 SETTABLEKS                       R6 R5 K4 ["Title"]
       64 GETUPVAL                         R7 0
       65 GETTABLEKS                       R6 R7 K7 ["createElement"]
       67 LOADK                            R7 K25 ["ImageButton"]
       68 NEWTABLE                         R8 8 0
       70 LOADN                            R9 1
       71 SETTABLEKS                       R9 R8 K13 ["BackgroundTransparency"]
       73 GETUPVAL                         R10 2
       74 GETTABLEKS                       R9 R10 K26 ["CLOSE_BUTTON"]
       76 SETTABLEKS                       R9 R8 K27 ["Image"]
       78 GETIMPORT                        R9 K21 [UDim2.new]
       80 LOADN                            R10 0
       81 LOADN                            R11 16
       82 LOADN                            R12 0
       83 LOADN                            R13 16
       84 CALL                             R9 4 1
       85 SETTABLEKS                       R9 R8 K3 ["Size"]
       87 GETTABLEKS                       R10 R2 K15 ["tags"]
       89 GETTABLEKS                       R9 R10 K16 ["textColor"]
       91 SETTABLEKS                       R9 R8 K28 ["ImageColor3"]
       93 GETIMPORT                        R9 K21 [UDim2.new]
       95 LOADN                            R10 0
       96 LOADN                            R13 3
       97 GETTABLEKS                       R15 R1 K22 ["textSize"]
       99 GETTABLEKS                       R14 R15 K23 ["X"]
      101 ADD                              R12 R13 R14
      102 ADDK                             R11 R12 K29 [3]
      103 LOADK                            R12 K30 [0.5]
      104 LOADN                            R13 248
      105 CALL                             R9 4 1
      106 SETTABLEKS                       R9 R8 K2 ["Position"]
      108 GETUPVAL                         R11 0
      109 GETTABLEKS                       R10 R11 K31 ["Event"]
      111 GETTABLEKS                       R9 R10 K32 ["MouseButton1Click"]
      113 GETTABLEKS                       R10 R1 K33 ["onClose"]
      115 SETTABLE                         R10 R8 R9
      116 CALL                             R6 2 1
      117 SETTABLEKS                       R6 R5 K5 ["Close"]
      119 GETUPVAL                         R7 0
      120 GETTABLEKS                       R6 R7 K7 ["createElement"]
      122 GETUPVAL                         R7 3
      123 DUPTABLE                         R8 K36 [{"Background", "BackgroundStyle", "Position", "Size"}]
      124 GETUPVAL                         R9 4
      125 SETTABLEKS                       R9 R8 K34 ["Background"]
      127 LOADK                            R9 K37 ["CatalogTag"]
      128 SETTABLEKS                       R9 R8 K35 ["BackgroundStyle"]
      130 SETTABLEKS                       R3 R8 K2 ["Position"]
      132 SETTABLEKS                       R4 R8 K3 ["Size"]
      134 MOVE                             R9 R5
      135 CALL                             R6 3 -1
      136 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R5 K1 [script]
        3 GETTABLEKS                       R4 R5 K2 ["Parent"]
        5 GETTABLEKS                       R3 R4 K2 ["Parent"]
        7 GETTABLEKS                       R2 R3 K2 ["Parent"]
        9 GETTABLEKS                       R1 R2 K2 ["Parent"]
       11 GETTABLEKS                       R0 R1 K2 ["Parent"]
       13 GETTABLEKS                       R1 R0 K3 ["Packages"]
       15 GETIMPORT                        R2 K5 [require]
       17 GETTABLEKS                       R3 R1 K6 ["Roact"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R4 R0 K7 ["Src"]
       22 GETTABLEKS                       R3 R4 K8 ["Util"]
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R5 R3 K9 ["Constants"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R6 R3 K10 ["Images"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R1 K11 ["Framework"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R7 R6 K12 ["ContextServices"]
       41 GETTABLEKS                       R8 R7 K13 ["withContext"]
       43 GETTABLEKS                       R9 R6 K14 ["UI"]
       45 GETTABLEKS                       R10 R9 K15 ["RoundBox"]
       47 GETTABLEKS                       R12 R6 K14 ["UI"]
       49 GETTABLEKS                       R11 R12 K16 ["Container"]
       51 GETIMPORT                        R12 K5 [require]
       53 GETTABLEKS                       R15 R0 K7 ["Src"]
       55 GETTABLEKS                       R14 R15 K17 ["Flags"]
       57 GETTABLEKS                       R13 R14 K18 ["getFFlagRemoveItemTags"]
       59 CALL                             R12 1 1
       60 MOVE                             R13 R12
       61 CALL                             R13 0 1
       62 JUMPIF                           R13 ; [+25]
       63 GETTABLEKS                       R13 R2 K19 ["PureComponent"]
       65 LOADK                            R15 K20 ["CatalogTag"]
       66 NAMECALL                         R13 R13 K21 ["extend"]
       68 CALL                             R13 2 1
       69 DUPCLOSURE                       R14 K22 [PROTO_0]
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R10
       75 SETTABLEKS                       R14 R13 K23 ["render"]
       77 MOVE                             R14 R8
       78 DUPTABLE                         R15 K25 [{"Stylizer"}]
       79 GETTABLEKS                       R16 R7 K24 ["Stylizer"]
       81 SETTABLEKS                       R16 R15 K24 ["Stylizer"]
       83 CALL                             R14 1 1
       84 MOVE                             R15 R13
       85 CALL                             R14 1 1
       86 MOVE                             R13 R14
       87 RETURN                           R13 1
       88 RETURN                           R0 0
