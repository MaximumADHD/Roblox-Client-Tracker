PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["createElement"]
        6 LOADK                            R2 K1 ["Frame"]
        7 DUPTABLE                         R3 K8 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"], ["LayoutOrder"]}]
        8 GETIMPORT                        R4 K11 [UDim2.new]
       10 LOADN                            R5 1
       11 LOADN                            R6 0
       12 LOADN                            R7 0
       13 GETUPVAL                         R9 1
       14 GETTABLEKS                       R9 R9 K13 ["MaxHeight"]
       16 ORK                              R8 R9 K12 [100]
       17 CALL                             R4 4 1
       18 SETTABLEKS                       R4 R3 K6 ["Size"]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K7 ["LayoutOrder"]
       23 ORK                              R4 R5 K3 [1]
       24 SETTABLEKS                       R4 R3 K7 ["LayoutOrder"]
       26 DUPTABLE                         R4 K16 [{"Title", "Content"}]
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R5 R5 K0 ["createElement"]
       30 LOADK                            R6 K17 ["TextLabel"]
       31 DUPTABLE                         R7 K25 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"], ["TextColor3"], ["Font"], ["TextSize"] = 22, ["TextXAlignment"], ["TextYAlignment"], ["Text"]}]
       32 GETIMPORT                        R8 K11 [UDim2.new]
       34 LOADN                            R9 0
       35 LOADN                            R10 180
       36 LOADN                            R11 1
       37 LOADN                            R12 0
       38 CALL                             R8 4 1
       39 SETTABLEKS                       R8 R7 K6 ["Size"]
       41 GETTABLEKS                       R8 R0 K26 ["TextColor"]
       43 SETTABLEKS                       R8 R7 K18 ["TextColor3"]
       45 GETUPVAL                         R9 1
       46 GETTABLEKS                       R9 R9 K19 ["Font"]
       48 JUMPIFEQKNIL                     R9 ; [+5]
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R8 R8 K19 ["Font"]
       53 JUMPIF                           R8 ; [+2]
       54 GETIMPORT                        R8 K29 [Enum.Font.SourceSans]
       56 SETTABLEKS                       R8 R7 K19 ["Font"]
       58 GETIMPORT                        R8 K31 [Enum.TextXAlignment.Left]
       60 SETTABLEKS                       R8 R7 K22 ["TextXAlignment"]
       62 GETUPVAL                         R9 1
       63 GETTABLEKS                       R9 R9 K32 ["TitleTextYAlignment"]
       65 JUMPIFNOTEQKNIL                  R9 ; [+4]
       67 GETIMPORT                        R8 K34 [Enum.TextYAlignment.Top]
       69 JUMPIF                           R8 ; [+3]
       70 GETUPVAL                         R8 1
       71 GETTABLEKS                       R8 R8 K32 ["TitleTextYAlignment"]
       73 SETTABLEKS                       R8 R7 K23 ["TextYAlignment"]
       75 GETUPVAL                         R8 1
       76 GETTABLEKS                       R8 R8 K14 ["Title"]
       78 SETTABLEKS                       R8 R7 K24 ["Text"]
       80 CALL                             R5 2 1
       81 SETTABLEKS                       R5 R4 K14 ["Title"]
       83 GETUPVAL                         R5 2
       84 GETTABLEKS                       R5 R5 K0 ["createElement"]
       86 LOADK                            R6 K1 ["Frame"]
       87 DUPTABLE                         R7 K37 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"], ["AnchorPoint"], ["Position"]}]
       88 GETIMPORT                        R8 K11 [UDim2.new]
       90 LOADN                            R9 1
       91 LOADN                            R10 -180
       92 LOADN                            R11 1
       93 LOADN                            R12 0
       94 CALL                             R8 4 1
       95 SETTABLEKS                       R8 R7 K6 ["Size"]
       97 GETIMPORT                        R8 K39 [Vector2.new]
       99 LOADN                            R9 1
      100 LOADN                            R10 0
      101 CALL                             R8 2 1
      102 SETTABLEKS                       R8 R7 K35 ["AnchorPoint"]
      104 GETIMPORT                        R8 K11 [UDim2.new]
      106 LOADN                            R9 1
      107 LOADN                            R10 0
      108 LOADN                            R11 0
      109 LOADN                            R12 0
      110 CALL                             R8 4 1
      111 SETTABLEKS                       R8 R7 K36 ["Position"]
      113 GETUPVAL                         R9 1
      114 GETUPVAL                         R10 2
      115 GETTABLEKS                       R10 R10 K40 ["Children"]
      117 GETTABLE                         R8 R9 R10
      118 CALL                             R5 3 1
      119 SETTABLEKS                       R5 R4 K15 ["Content"]
      121 CALL                             R1 3 -1
      122 RETURN                           R1 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["createElement"]
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K2 [{"render"}]
        9 SETTABLEKS                       R1 R4 K1 ["render"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"TextColor"}]
        1 GETTABLEKS                       R3 R0 K2 ["Style"]
        3 JUMPIFNOT                        R3 ; [+10]
        4 GETTABLEKS                       R3 R0 K2 ["Style"]
        6 GETTABLEKS                       R3 R3 K0 ["TextColor"]
        8 JUMPIFNOT                        R3 ; [+5]
        9 GETTABLEKS                       R2 R0 K2 ["Style"]
       11 GETTABLEKS                       R2 R2 K0 ["TextColor"]
       13 JUMPIF                           R2 ; [+4]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K3 ["getTitleTextColor"]
       17 CALL                             R2 0 1
       18 SETTABLEKS                       R2 R1 K0 ["TextColor"]
       20 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Internal"]
        9 GETTABLEKS                       R1 R1 K6 ["RequireRoact"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K5 ["Internal"]
       20 GETTABLEKS                       R2 R2 K7 ["ThemeChangeListener"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K1 [require]
       25 GETIMPORT                        R3 K3 [script]
       27 GETTABLEKS                       R3 R3 K4 ["Parent"]
       29 GETTABLEKS                       R3 R3 K5 ["Internal"]
       31 GETTABLEKS                       R3 R3 K8 ["Theme"]
       33 CALL                             R2 1 1
       34 LOADNIL                          R3
       35 NEWCLOSURE                       R4 P0
       36 CAPTURE                          REF R3
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R1
       39 DUPCLOSURE                       R3 K9 [PROTO_2]
       40 CAPTURE                          VAL R2
       41 CLOSEUPVALS                      R3
       42 RETURN                           R4 1
