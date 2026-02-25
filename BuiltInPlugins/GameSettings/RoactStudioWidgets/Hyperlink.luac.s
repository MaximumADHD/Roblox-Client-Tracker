PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["calculateTextSize"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 1
        7 GETIMPORT                        R4 K3 [UDim2.new]
        9 LOADN                            R5 0
       10 GETTABLEKS                       R6 R3 K4 ["X"]
       12 LOADN                            R7 0
       13 GETTABLEKS                       R8 R3 K5 ["Y"]
       15 CALL                             R4 4 -1
       16 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Enabled"]
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R0 R1 K2 ["onEnter"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["props"]
       12 GETTABLEKS                       R1 R2 K3 ["Mouse"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Enabled"]
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R0 R1 K2 ["onLeave"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["props"]
       12 GETTABLEKS                       R1 R2 K3 ["Mouse"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Enabled"]
        5 JUMPIFNOT                        R0 ; [+13]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K2 ["OnClick"]
       11 JUMPIFEQKNIL                     R0 ; [+7]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K0 ["props"]
       16 GETTABLEKS                       R0 R1 K2 ["OnClick"]
       18 CALL                             R0 0 0
       19 RETURN                           R0 0

PROTO_4:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K2 ["props"]
        5 GETTABLEKS                       R2 R3 K3 ["TextSize"]
        7 ORK                              R1 R2 K1 [22]
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 1
       10 CALL                             R2 1 1
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R3 R4 K4 ["createElement"]
       14 LOADK                            R4 K5 ["TextButton"]
       15 NEWTABLE                         R5 16 0
       17 LOADN                            R6 1
       18 SETTABLEKS                       R6 R5 K6 ["BackgroundTransparency"]
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R7 R8 K2 ["props"]
       23 GETTABLEKS                       R6 R7 K7 ["Text"]
       25 SETTABLEKS                       R6 R5 K7 ["Text"]
       27 SETTABLEKS                       R1 R5 K3 ["TextSize"]
       29 GETIMPORT                        R6 K11 [Enum.Font.SourceSans]
       31 SETTABLEKS                       R6 R5 K9 ["Font"]
       33 GETTABLEKS                       R6 R2 K12 ["HyperlinkColor"]
       35 SETTABLEKS                       R6 R5 K13 ["TextColor3"]
       37 GETUPVAL                         R8 1
       38 GETTABLEKS                       R7 R8 K2 ["props"]
       40 GETTABLEKS                       R6 R7 K14 ["Size"]
       42 JUMPIF                           R6 ; [+24]
       43 GETUPVAL                         R9 1
       44 GETTABLEKS                       R8 R9 K2 ["props"]
       46 GETTABLEKS                       R7 R8 K7 ["Text"]
       48 GETIMPORT                        R8 K11 [Enum.Font.SourceSans]
       50 GETUPVAL                         R10 0
       51 GETTABLEKS                       R9 R10 K15 ["calculateTextSize"]
       53 MOVE                             R10 R7
       54 MOVE                             R11 R1
       55 MOVE                             R12 R8
       56 CALL                             R9 3 1
       57 GETIMPORT                        R10 K18 [UDim2.new]
       59 LOADN                            R11 0
       60 GETTABLEKS                       R12 R9 K19 ["X"]
       62 LOADN                            R13 0
       63 GETTABLEKS                       R14 R9 K20 ["Y"]
       65 CALL                             R10 4 1
       66 MOVE                             R6 R10
       67 SETTABLEKS                       R6 R5 K14 ["Size"]
       69 GETUPVAL                         R7 1
       70 GETTABLEKS                       R6 R7 K21 ["Position"]
       72 SETTABLEKS                       R6 R5 K21 ["Position"]
       74 GETIMPORT                        R6 K24 [Enum.TextXAlignment.Left]
       76 SETTABLEKS                       R6 R5 K22 ["TextXAlignment"]
       78 GETUPVAL                         R8 1
       79 GETTABLEKS                       R7 R8 K2 ["props"]
       81 GETTABLEKS                       R6 R7 K25 ["LayoutOrder"]
       83 SETTABLEKS                       R6 R5 K25 ["LayoutOrder"]
       85 GETUPVAL                         R8 3
       86 GETTABLEKS                       R7 R8 K26 ["Event"]
       88 GETTABLEKS                       R6 R7 K27 ["MouseEnter"]
       90 NEWCLOSURE                       R7 P1
       91 CAPTURE                          UPVAL U1
       92 CAPTURE                          UPVAL U4
       93 SETTABLE                         R7 R5 R6
       94 GETUPVAL                         R8 3
       95 GETTABLEKS                       R7 R8 K26 ["Event"]
       97 GETTABLEKS                       R6 R7 K28 ["MouseLeave"]
       99 NEWCLOSURE                       R7 P2
      100 CAPTURE                          UPVAL U1
      101 CAPTURE                          UPVAL U4
      102 SETTABLE                         R7 R5 R6
      103 GETUPVAL                         R8 3
      104 GETTABLEKS                       R7 R8 K26 ["Event"]
      106 GETTABLEKS                       R6 R7 K29 ["Activated"]
      108 NEWCLOSURE                       R7 P3
      109 CAPTURE                          UPVAL U1
      110 SETTABLE                         R7 R5 R6
      111 CALL                             R3 2 -1
      112 RETURN                           R3 -1

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K0 ["createElement"]
        9 GETUPVAL                         R3 4
       10 DUPTABLE                         R4 K2 [{"render"}]
       11 SETTABLEKS                       R1 R4 K1 ["render"]
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"HyperlinkColor"}]
        1 GETTABLEKS                       R4 R0 K2 ["props"]
        3 GETTABLEKS                       R3 R4 K3 ["Style"]
        5 JUMPIFNOT                        R3 ; [+7]
        6 GETTABLEKS                       R4 R0 K2 ["props"]
        8 GETTABLEKS                       R3 R4 K3 ["Style"]
       10 GETTABLEKS                       R2 R3 K0 ["HyperlinkColor"]
       12 JUMPIF                           R2 ; [+4]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K4 ["getHyperlinkTextTextColor"]
       16 CALL                             R2 0 1
       17 SETTABLEKS                       R2 R1 K0 ["HyperlinkColor"]
       19 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R4 K3 [script]
        5 GETTABLEKS                       R3 R4 K4 ["Parent"]
        7 GETTABLEKS                       R2 R3 K5 ["Internal"]
        9 GETTABLEKS                       R1 R2 K6 ["RequireRoact"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R5 K3 [script]
       16 GETTABLEKS                       R4 R5 K4 ["Parent"]
       18 GETTABLEKS                       R3 R4 K5 ["Internal"]
       20 GETTABLEKS                       R2 R3 K7 ["Mouse"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K1 [require]
       25 GETIMPORT                        R6 K3 [script]
       27 GETTABLEKS                       R5 R6 K4 ["Parent"]
       29 GETTABLEKS                       R4 R5 K5 ["Internal"]
       31 GETTABLEKS                       R3 R4 K8 ["Text"]
       33 CALL                             R2 1 1
       34 GETIMPORT                        R3 K1 [require]
       36 GETIMPORT                        R7 K3 [script]
       38 GETTABLEKS                       R6 R7 K4 ["Parent"]
       40 GETTABLEKS                       R5 R6 K5 ["Internal"]
       42 GETTABLEKS                       R4 R5 K9 ["ThemeChangeListener"]
       44 CALL                             R3 1 1
       45 GETIMPORT                        R4 K1 [require]
       47 GETIMPORT                        R8 K3 [script]
       49 GETTABLEKS                       R7 R8 K4 ["Parent"]
       51 GETTABLEKS                       R6 R7 K5 ["Internal"]
       53 GETTABLEKS                       R5 R6 K10 ["Theme"]
       55 CALL                             R4 1 1
       56 LOADNIL                          R5
       57 GETTABLEKS                       R6 R0 K11 ["PureComponent"]
       59 LOADK                            R8 K12 ["hyperlink"]
       60 NAMECALL                         R6 R6 K13 ["extend"]
       62 CALL                             R6 2 1
       63 NEWCLOSURE                       R7 P0
       64 CAPTURE                          VAL R2
       65 CAPTURE                          REF R5
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R3
       69 SETTABLEKS                       R7 R6 K14 ["render"]
       71 DUPCLOSURE                       R5 K15 [PROTO_6]
       72 CAPTURE                          VAL R4
       73 CLOSEUPVALS                      R5
       74 RETURN                           R6 1
