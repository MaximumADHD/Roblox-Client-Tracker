PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R3 R0 K0 ["TokenValue"]
        4 FASTCALL1                        TYPEOF R3 ; [+2]
        5 GETIMPORT                        R2 K2 [typeof]
        7 CALL                             R2 1 1
        8 JUMPIFEQKS                       R2 K3 ["Color3"] ; [+3]
       10 JUMPIFNOTEQKS                    R2 K4 ["BrickColor"] ; [+29]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K5 ["createElement"]
       15 GETUPVAL                         R4 2
       16 NEWTABLE                         R5 4 0
       18 MOVE                             R6 R1
       19 CALL                             R6 0 1
       20 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       22 JUMPIFNOTEQKS                    R2 K3 ["Color3"] ; [+4]
       24 GETTABLEKS                       R6 R0 K0 ["TokenValue"]
       26 JUMP                             ; [+4]
       27 GETTABLEKS                       R6 R0 K0 ["TokenValue"]
       29 GETTABLEKS                       R6 R6 K7 ["Color"]
       31 SETTABLEKS                       R6 R5 K8 ["BackgroundColor3"]
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K9 ["Tag"]
       36 LOADK                            R7 K10 ["X-Corner Icon16"]
       37 SETTABLE                         R7 R5 R6
       38 CALL                             R3 2 1
       39 JUMP                             ; [+65]
       40 JUMPIFNOTEQKS                    R2 K11 ["ColorSequence"] ; [+31]
       42 GETUPVAL                         R3 1
       43 GETTABLEKS                       R3 R3 K5 ["createElement"]
       45 LOADK                            R4 K12 ["Frame"]
       46 NEWTABLE                         R5 2 0
       48 MOVE                             R6 R1
       49 CALL                             R6 0 1
       50 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       52 GETUPVAL                         R6 1
       53 GETTABLEKS                       R6 R6 K9 ["Tag"]
       55 LOADK                            R7 K13 ["SequencePreviewButton X-Corner X-Stroke"]
       56 SETTABLE                         R7 R5 R6
       57 DUPTABLE                         R6 K15 [{"Gradient"}]
       58 GETUPVAL                         R7 1
       59 GETTABLEKS                       R7 R7 K5 ["createElement"]
       61 LOADK                            R8 K16 ["UIGradient"]
       62 DUPTABLE                         R9 K17 [{"Color"}]
       63 GETTABLEKS                       R10 R0 K0 ["TokenValue"]
       65 SETTABLEKS                       R10 R9 K7 ["Color"]
       67 CALL                             R7 2 1
       68 SETTABLEKS                       R7 R6 K14 ["Gradient"]
       70 CALL                             R3 3 1
       71 JUMP                             ; [+33]
       72 JUMPIFNOTEQKS                    R2 K18 ["NumberSequence"] ; [+31]
       74 GETUPVAL                         R3 1
       75 GETTABLEKS                       R3 R3 K5 ["createElement"]
       77 LOADK                            R4 K12 ["Frame"]
       78 NEWTABLE                         R5 2 0
       80 MOVE                             R6 R1
       81 CALL                             R6 0 1
       82 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       84 GETUPVAL                         R6 1
       85 GETTABLEKS                       R6 R6 K9 ["Tag"]
       87 LOADK                            R7 K13 ["SequencePreviewButton X-Corner X-Stroke"]
       88 SETTABLE                         R7 R5 R6
       89 DUPTABLE                         R6 K15 [{"Gradient"}]
       90 GETUPVAL                         R7 1
       91 GETTABLEKS                       R7 R7 K5 ["createElement"]
       93 LOADK                            R8 K16 ["UIGradient"]
       94 DUPTABLE                         R9 K20 [{"Transparency"}]
       95 GETTABLEKS                       R10 R0 K0 ["TokenValue"]
       97 SETTABLEKS                       R10 R9 K19 ["Transparency"]
       99 CALL                             R7 2 1
      100 SETTABLEKS                       R7 R6 K14 ["Gradient"]
      102 CALL                             R3 3 1
      103 JUMP                             ; [+1]
      104 LOADNIL                          R3
      105 JUMPIFNOTEQKS                    R2 K21 ["Font"] ; [+4]
      107 GETTABLEKS                       R4 R0 K0 ["TokenValue"]
      109 JUMP                             ; [+1]
      110 LOADNIL                          R4
      111 GETUPVAL                         R5 1
      112 GETTABLEKS                       R5 R5 K5 ["createElement"]
      114 GETUPVAL                         R6 2
      115 NEWTABLE                         R7 2 0
      117 GETTABLEKS                       R8 R0 K6 ["LayoutOrder"]
      119 SETTABLEKS                       R8 R7 K6 ["LayoutOrder"]
      121 GETUPVAL                         R8 1
      122 GETTABLEKS                       R8 R8 K9 ["Tag"]
      124 LOADK                            R9 K22 ["X-RowM X-Fit"]
      125 SETTABLE                         R9 R7 R8
      126 DUPTABLE                         R8 K25 [{"LeadingComponent", "Label"}]
      127 SETTABLEKS                       R3 R8 K23 ["LeadingComponent"]
      129 GETUPVAL                         R9 1
      130 GETTABLEKS                       R9 R9 K5 ["createElement"]
      132 GETUPVAL                         R10 3
      133 NEWTABLE                         R11 8 0
      135 MOVE                             R12 R1
      136 CALL                             R12 0 1
      137 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
      139 SETTABLEKS                       R4 R11 K26 ["FontFace"]
      141 GETIMPORT                        R12 K29 [UDim2.fromOffset]
      143 LOADN                            R13 0
      144 GETUPVAL                         R14 4
      145 CALL                             R12 2 1
      146 SETTABLEKS                       R12 R11 K30 ["Size"]
      148 GETUPVAL                         R12 5
      149 GETTABLEKS                       R13 R0 K0 ["TokenValue"]
      151 DUPTABLE                         R14 K32 [{"Fonts"}]
      152 GETTABLEKS                       R15 R0 K31 ["Fonts"]
      154 SETTABLEKS                       R15 R14 K31 ["Fonts"]
      156 CALL                             R12 2 1
      157 SETTABLEKS                       R12 R11 K33 ["Text"]
      159 GETUPVAL                         R12 1
      160 GETTABLEKS                       R12 R12 K9 ["Tag"]
      162 LOADK                            R13 K34 ["X-FitX"]
      163 SETTABLE                         R13 R11 R12
      164 CALL                             R9 2 1
      165 SETTABLEKS                       R9 R8 K24 ["Label"]
      167 CALL                             R5 3 -1
      168 RETURN                           R5 -1

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"Fonts"}]
        1 GETTABLEKS                       R2 R0 K2 ["Asset"]
        3 GETTABLEKS                       R2 R2 K0 ["Fonts"]
        5 SETTABLEKS                       R2 R1 K0 ["Fonts"]
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["RoactRodux"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["React"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["Framework"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K9 ["UI"]
       34 GETTABLEKS                       R4 R4 K10 ["Pane"]
       36 GETTABLEKS                       R5 R3 K9 ["UI"]
       38 GETTABLEKS                       R5 R5 K11 ["TextLabel"]
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R7 R0 K12 ["Src"]
       44 GETTABLEKS                       R7 R7 K13 ["Hooks"]
       46 GETTABLEKS                       R7 R7 K14 ["useLayoutOrderCounter"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R8 R0 K12 ["Src"]
       53 GETTABLEKS                       R8 R8 K15 ["Resources"]
       55 GETTABLEKS                       R8 R8 K16 ["PluginStyles"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K4 [require]
       60 GETTABLEKS                       R9 R0 K12 ["Src"]
       62 GETTABLEKS                       R9 R9 K17 ["Reducers"]
       64 GETTABLEKS                       R9 R9 K18 ["RootReducer"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K4 [require]
       69 GETTABLEKS                       R10 R0 K12 ["Src"]
       71 GETTABLEKS                       R10 R10 K19 ["Types"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K4 [require]
       76 GETIMPORT                        R11 K1 [script]
       78 GETTABLEKS                       R11 R11 K2 ["Parent"]
       80 GETTABLEKS                       R11 R11 K20 ["attributeValueToString"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K4 [require]
       85 GETIMPORT                        R12 K1 [script]
       87 GETTABLEKS                       R12 R12 K2 ["Parent"]
       89 GETTABLEKS                       R12 R12 K19 ["Types"]
       91 CALL                             R11 1 1
       92 LOADK                            R14 K21 ["TokenTooltipRowHeight"]
       93 NAMECALL                         R12 R7 K22 ["GetAttribute"]
       95 CALL                             R12 2 1
       96 DUPCLOSURE                       R13 K23 [PROTO_0]
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R10
      103 GETTABLEKS                       R14 R1 K24 ["connect"]
      105 DUPCLOSURE                       R15 K25 [PROTO_1]
      106 CALL                             R14 1 1
      107 MOVE                             R15 R13
      108 CALL                             R14 1 -1
      109 RETURN                           R14 -1
