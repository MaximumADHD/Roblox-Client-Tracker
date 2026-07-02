PROTO_0:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["mock"]
        5 CALL                             R2 0 1
        6 MOVE                             R1 R2
        7 JUMP                             ; [+5]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["new"]
       11 CALL                             R2 0 1
       12 MOVE                             R1 R2
       13 GETUPVAL                         R4 1
       14 NAMECALL                         R2 R1 K2 ["extend"]
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Style"]
       18 GETTABLEKS                       R3 R2 K8 ["Themes"]
       20 GETTABLEKS                       R3 R3 K9 ["StudioTheme"]
       22 DUPTABLE                         R4 K14 [{"App", "TopPanel", "SearchBar", "TextureTable"}]
       23 DUPTABLE                         R5 K18 [{["Padding"] = 4, ["Spacing"] = 4}]
       24 SETTABLEKS                       R5 R4 K10 ["App"]
       26 DUPTABLE                         R5 K23 [{["Size"], ["Padding"] = 2, ["AggregateStats"], ["Refresh"]}]
       27 GETIMPORT                        R6 K26 [UDim2.new]
       29 LOADN                            R7 1
       30 LOADN                            R8 0
       31 LOADN                            R9 0
       32 LOADN                            R10 24
       33 CALL                             R6 4 1
       34 SETTABLEKS                       R6 R5 K19 ["Size"]
       36 DUPTABLE                         R6 K31 [{["TextSize"] = 18, ["NumTextures"], ["TotalMemory"]}]
       37 DUPTABLE                         R7 K32 [{"Size"}]
       38 GETIMPORT                        R8 K26 [UDim2.new]
       40 LOADK                            R9 K33 [0.333333333333333]
       41 LOADN                            R10 -25
       42 LOADN                            R11 1
       43 LOADN                            R12 0
       44 CALL                             R8 4 1
       45 SETTABLEKS                       R8 R7 K19 ["Size"]
       47 SETTABLEKS                       R7 R6 K29 ["NumTextures"]
       49 DUPTABLE                         R7 K32 [{"Size"}]
       50 GETIMPORT                        R8 K35 [UDim2.fromScale]
       52 LOADK                            R9 K33 [0.333333333333333]
       53 LOADN                            R10 1
       54 CALL                             R8 2 1
       55 SETTABLEKS                       R8 R7 K19 ["Size"]
       57 SETTABLEKS                       R7 R6 K30 ["TotalMemory"]
       59 SETTABLEKS                       R6 R5 K21 ["AggregateStats"]
       61 DUPTABLE                         R6 K39 [{"Size", "AnchorPoint", "Position", "Button"}]
       62 GETIMPORT                        R7 K35 [UDim2.fromScale]
       64 LOADK                            R8 K33 [0.333333333333333]
       65 LOADN                            R9 1
       66 CALL                             R7 2 1
       67 SETTABLEKS                       R7 R6 K19 ["Size"]
       69 GETIMPORT                        R7 K41 [Vector2.new]
       71 LOADK                            R8 K42 [0.5]
       72 LOADN                            R9 0
       73 CALL                             R7 2 1
       74 SETTABLEKS                       R7 R6 K36 ["AnchorPoint"]
       76 GETIMPORT                        R7 K26 [UDim2.new]
       78 LOADK                            R8 K42 [0.5]
       79 LOADN                            R9 25
       80 LOADN                            R10 0
       81 LOADN                            R11 0
       82 CALL                             R7 4 1
       83 SETTABLEKS                       R7 R6 K37 ["Position"]
       85 DUPTABLE                         R7 K45 [{["Icon"] = "rbxasset://textures/TextureViewer/refresh_dark_theme.png"}]
       86 SETTABLEKS                       R7 R6 K38 ["Button"]
       88 SETTABLEKS                       R6 R5 K22 ["Refresh"]
       90 SETTABLEKS                       R5 R4 K11 ["TopPanel"]
       92 DUPTABLE                         R5 K32 [{"Size"}]
       93 GETIMPORT                        R6 K26 [UDim2.new]
       95 LOADN                            R7 1
       96 LOADN                            R8 0
       97 LOADN                            R9 0
       98 LOADN                            R10 32
       99 CALL                             R6 4 1
      100 SETTABLEKS                       R6 R5 K19 ["Size"]
      102 SETTABLEKS                       R5 R4 K12 ["SearchBar"]
      104 DUPTABLE                         R5 K49 [{["Size"], ["RowHeight"] = 165, ["TableCell"]}]
      105 GETIMPORT                        R6 K26 [UDim2.new]
      107 LOADN                            R7 1
      108 LOADN                            R8 0
      109 LOADN                            R9 1
      110 LOADN                            R10 -60
      111 CALL                             R6 4 1
      112 SETTABLEKS                       R6 R5 K19 ["Size"]
      114 DUPTABLE                         R6 K55 [{["Style"] = "Box", ["BorderSizePixel"] = 1, ["IdCell"], ["FindSelectCell"]}]
      115 DUPTABLE                         R7 K58 [{"TextInput", "Buttons"}]
      116 DUPTABLE                         R8 K32 [{"Size"}]
      117 GETIMPORT                        R9 K35 [UDim2.fromScale]
      119 LOADN                            R10 1
      120 LOADK                            R11 K33 [0.333333333333333]
      121 CALL                             R9 2 1
      122 SETTABLEKS                       R9 R8 K19 ["Size"]
      124 SETTABLEKS                       R8 R7 K56 ["TextInput"]
      126 DUPTABLE                         R8 K65 [{["ButtonsWrapper"], ["Padding"] = 5, ["CancelIcon"] = "rbxasset://textures/TextureViewer/cancel.png", ["ConfirmIcon"] = "rbxasset://textures/TextureViewer/confirm.png"}]
      127 DUPTABLE                         R9 K32 [{"Size"}]
      128 GETIMPORT                        R10 K35 [UDim2.fromScale]
      130 LOADK                            R11 K66 [0.666666666666667]
      131 LOADK                            R12 K33 [0.333333333333333]
      132 CALL                             R10 2 1
      133 SETTABLEKS                       R10 R9 K19 ["Size"]
      135 SETTABLEKS                       R9 R8 K59 ["ButtonsWrapper"]
      137 SETTABLEKS                       R8 R7 K57 ["Buttons"]
      139 SETTABLEKS                       R7 R6 K53 ["IdCell"]
      141 DUPTABLE                         R7 K70 [{"ZoomText", "PrevButton", "NextButton"}]
      142 DUPTABLE                         R8 K71 [{["Padding"] = 5, ["TextSize"] = 18}]
      143 SETTABLEKS                       R8 R7 K67 ["ZoomText"]
      145 DUPTABLE                         R8 K73 [{["Icon"] = "rbxasset://textures/TextureViewer/arrowleft_black_16.png"}]
      146 SETTABLEKS                       R8 R7 K68 ["PrevButton"]
      148 DUPTABLE                         R8 K75 [{["Icon"] = "rbxasset://textures/TextureViewer/arrowright_black_16.png"}]
      149 SETTABLEKS                       R8 R7 K69 ["NextButton"]
      151 SETTABLEKS                       R7 R6 K54 ["FindSelectCell"]
      153 SETTABLEKS                       R6 R5 K48 ["TableCell"]
      155 SETTABLEKS                       R5 R4 K13 ["TextureTable"]
      157 DUPCLOSURE                       R5 K76 [PROTO_0]
      158 CAPTURE                          VAL R3
      159 CAPTURE                          VAL R4
      160 RETURN                           R5 1
