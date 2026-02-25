PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R1 R2 K0 ["createElement"]
        6 LOADK                            R2 K1 ["Frame"]
        7 DUPTABLE                         R3 K6 [{"BackgroundTransparency", "BorderSizePixel", "Size", "LayoutOrder"}]
        8 LOADN                            R4 1
        9 SETTABLEKS                       R4 R3 K2 ["BackgroundTransparency"]
       11 LOADN                            R4 0
       12 SETTABLEKS                       R4 R3 K3 ["BorderSizePixel"]
       14 GETIMPORT                        R4 K9 [UDim2.new]
       16 LOADN                            R5 1
       17 LOADN                            R6 0
       18 LOADN                            R7 0
       19 GETUPVAL                         R10 1
       20 GETTABLEKS                       R9 R10 K11 ["MaxHeight"]
       22 ORK                              R8 R9 K10 [100]
       23 CALL                             R4 4 1
       24 SETTABLEKS                       R4 R3 K4 ["Size"]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R5 R6 K5 ["LayoutOrder"]
       29 ORK                              R4 R5 K12 [1]
       30 SETTABLEKS                       R4 R3 K5 ["LayoutOrder"]
       32 DUPTABLE                         R4 K15 [{"Title", "Content"}]
       33 GETUPVAL                         R6 2
       34 GETTABLEKS                       R5 R6 K0 ["createElement"]
       36 LOADK                            R6 K16 ["TextLabel"]
       37 DUPTABLE                         R7 K23 [{"BackgroundTransparency", "BorderSizePixel", "Size", "TextColor3", "Font", "TextSize", "TextXAlignment", "TextYAlignment", "Text"}]
       38 LOADN                            R8 1
       39 SETTABLEKS                       R8 R7 K2 ["BackgroundTransparency"]
       41 LOADN                            R8 0
       42 SETTABLEKS                       R8 R7 K3 ["BorderSizePixel"]
       44 GETIMPORT                        R8 K9 [UDim2.new]
       46 LOADN                            R9 0
       47 LOADN                            R10 180
       48 LOADN                            R11 1
       49 LOADN                            R12 0
       50 CALL                             R8 4 1
       51 SETTABLEKS                       R8 R7 K4 ["Size"]
       53 GETTABLEKS                       R8 R0 K24 ["TextColor"]
       55 SETTABLEKS                       R8 R7 K17 ["TextColor3"]
       57 GETUPVAL                         R10 1
       58 GETTABLEKS                       R9 R10 K18 ["Font"]
       60 JUMPIFEQKNIL                     R9 ; [+5]
       62 GETUPVAL                         R9 1
       63 GETTABLEKS                       R8 R9 K18 ["Font"]
       65 JUMPIF                           R8 ; [+2]
       66 GETIMPORT                        R8 K27 [Enum.Font.SourceSans]
       68 SETTABLEKS                       R8 R7 K18 ["Font"]
       70 LOADN                            R8 22
       71 SETTABLEKS                       R8 R7 K19 ["TextSize"]
       73 GETIMPORT                        R8 K29 [Enum.TextXAlignment.Left]
       75 SETTABLEKS                       R8 R7 K20 ["TextXAlignment"]
       77 GETUPVAL                         R10 1
       78 GETTABLEKS                       R9 R10 K30 ["TitleTextYAlignment"]
       80 JUMPIFNOTEQKNIL                  R9 ; [+4]
       82 GETIMPORT                        R8 K32 [Enum.TextYAlignment.Top]
       84 JUMPIF                           R8 ; [+3]
       85 GETUPVAL                         R9 1
       86 GETTABLEKS                       R8 R9 K30 ["TitleTextYAlignment"]
       88 SETTABLEKS                       R8 R7 K21 ["TextYAlignment"]
       90 GETUPVAL                         R9 1
       91 GETTABLEKS                       R8 R9 K13 ["Title"]
       93 SETTABLEKS                       R8 R7 K22 ["Text"]
       95 CALL                             R5 2 1
       96 SETTABLEKS                       R5 R4 K13 ["Title"]
       98 GETUPVAL                         R6 2
       99 GETTABLEKS                       R5 R6 K0 ["createElement"]
      101 LOADK                            R6 K1 ["Frame"]
      102 DUPTABLE                         R7 K35 [{"BackgroundTransparency", "BorderSizePixel", "Size", "AnchorPoint", "Position"}]
      103 LOADN                            R8 1
      104 SETTABLEKS                       R8 R7 K2 ["BackgroundTransparency"]
      106 LOADN                            R8 0
      107 SETTABLEKS                       R8 R7 K3 ["BorderSizePixel"]
      109 GETIMPORT                        R8 K9 [UDim2.new]
      111 LOADN                            R9 1
      112 LOADN                            R10 76
      113 LOADN                            R11 1
      114 LOADN                            R12 0
      115 CALL                             R8 4 1
      116 SETTABLEKS                       R8 R7 K4 ["Size"]
      118 GETIMPORT                        R8 K37 [Vector2.new]
      120 LOADN                            R9 1
      121 LOADN                            R10 0
      122 CALL                             R8 2 1
      123 SETTABLEKS                       R8 R7 K33 ["AnchorPoint"]
      125 GETIMPORT                        R8 K9 [UDim2.new]
      127 LOADN                            R9 1
      128 LOADN                            R10 0
      129 LOADN                            R11 0
      130 LOADN                            R12 0
      131 CALL                             R8 4 1
      132 SETTABLEKS                       R8 R7 K34 ["Position"]
      134 GETUPVAL                         R9 1
      135 GETUPVAL                         R11 2
      136 GETTABLEKS                       R10 R11 K38 ["Children"]
      138 GETTABLE                         R8 R9 R10
      139 CALL                             R5 3 1
      140 SETTABLEKS                       R5 R4 K14 ["Content"]
      142 CALL                             R1 3 -1
      143 RETURN                           R1 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["createElement"]
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K2 [{"render"}]
        9 SETTABLEKS                       R1 R4 K1 ["render"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"TextColor"}]
        1 GETTABLEKS                       R3 R0 K2 ["Style"]
        3 JUMPIFNOT                        R3 ; [+10]
        4 GETTABLEKS                       R4 R0 K2 ["Style"]
        6 GETTABLEKS                       R3 R4 K0 ["TextColor"]
        8 JUMPIFNOT                        R3 ; [+5]
        9 GETTABLEKS                       R3 R0 K2 ["Style"]
       11 GETTABLEKS                       R2 R3 K0 ["TextColor"]
       13 JUMPIF                           R2 ; [+4]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K3 ["getTitleTextColor"]
       17 CALL                             R2 0 1
       18 SETTABLEKS                       R2 R1 K0 ["TextColor"]
       20 RETURN                           R1 1

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
       20 GETTABLEKS                       R2 R3 K7 ["ThemeChangeListener"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K1 [require]
       25 GETIMPORT                        R6 K3 [script]
       27 GETTABLEKS                       R5 R6 K4 ["Parent"]
       29 GETTABLEKS                       R4 R5 K5 ["Internal"]
       31 GETTABLEKS                       R3 R4 K8 ["Theme"]
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
