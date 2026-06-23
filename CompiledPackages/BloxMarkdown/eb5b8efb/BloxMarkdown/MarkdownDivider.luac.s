PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["editorCtx"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R2 R1 K1 ["getSelection"]
        8 JUMPIF                           R2 ; [+2]
        9 LOADB                            R2 0
       10 RETURN                           R2 1
       11 GETTABLEKS                       R2 R1 K1 ["getSelection"]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 1
       15 JUMPIF                           R2 ; [+2]
       16 LOADB                            R3 0
       17 RETURN                           R3 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K2 ["blockIndex"]
       21 MOVE                             R4 R0
       22 CALL                             R3 1 1
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R5 R5 K3 ["getBlockSelectionRange"]
       26 MOVE                             R6 R3
       27 MOVE                             R7 R2
       28 LOADN                            R8 1
       29 CALL                             R5 3 1
       30 JUMPIFNOTEQKNIL                  R5 ; [+2]
       32 LOADB                            R4 0 +1
       33 LOADB                            R4 1
       34 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+2]
        4 LOADK                            R1 K0 [0.75]
        5 RETURN                           R1 1
        6 LOADN                            R1 1
        7 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+2]
        4 LOADN                            R1 2
        5 RETURN                           R1 1
        6 LOADN                            R1 0
        7 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["editorCtx"]
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["blockIndex"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R0 K2 ["setSelection"]
       14 DUPTABLE                         R3 K5 [{"anchor", "focus"}]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K6 ["createPosition"]
       18 MOVE                             R5 R1
       19 LOADN                            R6 1
       20 LOADN                            R7 0
       21 CALL                             R4 3 1
       22 SETTABLEKS                       R4 R3 K3 ["anchor"]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K6 ["createPosition"]
       27 MOVE                             R5 R1
       28 LOADN                            R6 1
       29 LOADK                            R7 K7 [∞]
       30 CALL                             R4 3 1
       31 SETTABLEKS                       R4 R3 K4 ["focus"]
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["peek"]
        2 GETTABLEKS                       R3 R1 K1 ["createComputed"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 LOADK                            R5 K2 ["divider-selected"]
        8 CALL                             R3 2 1
        9 GETTABLEKS                       R4 R1 K1 ["createComputed"]
       11 NEWCLOSURE                       R5 P1
       12 CAPTURE                          VAL R3
       13 LOADK                            R6 K3 ["divider-overlay"]
       14 CALL                             R4 2 1
       15 GETTABLEKS                       R5 R1 K1 ["createComputed"]
       17 NEWCLOSURE                       R6 P2
       18 CAPTURE                          VAL R3
       19 LOADK                            R7 K4 ["divider-border"]
       20 CALL                             R5 2 1
       21 NEWCLOSURE                       R6 P3
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U0
       25 DUPTABLE                         R7 K9 [{"overlayTransparency", "borderSize", "onBlockClick", "LayoutOrder"}]
       26 SETTABLEKS                       R4 R7 K5 ["overlayTransparency"]
       28 SETTABLEKS                       R5 R7 K6 ["borderSize"]
       30 SETTABLEKS                       R6 R7 K7 ["onBlockClick"]
       32 GETTABLEKS                       R8 R0 K8 ["LayoutOrder"]
       34 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       36 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["BloxMarkdown"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Blox"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["expr"]
       16 GETIMPORT                        R4 K6 [require]
       18 GETIMPORT                        R5 K1 [script]
       20 GETTABLEKS                       R5 R5 K4 ["Parent"]
       22 GETTABLEKS                       R5 R5 K9 ["EditorState"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R2 K10 ["template"]
       27 GETTABLEKS                       R6 R2 K11 ["Frame"]
       29 GETTABLEKS                       R7 R2 K12 ["TextButton"]
       31 GETIMPORT                        R8 K15 [Color3.fromRGB]
       33 LOADN                            R9 56
       34 LOADN                            R10 132
       35 LOADN                            R11 244
       36 CALL                             R8 3 1
       37 MOVE                             R9 R5
       38 LOADK                            R10 K16 ["MarkdownDivider"]
       39 DUPTABLE                         R11 K21 [{"node", "editorCtx", "blockIndex", "LayoutOrder"}]
       40 NEWTABLE                         R12 0 0
       42 SETTABLEKS                       R12 R11 K17 ["node"]
       44 LOADNIL                          R12
       45 SETTABLEKS                       R12 R11 K18 ["editorCtx"]
       47 LOADN                            R12 0
       48 SETTABLEKS                       R12 R11 K19 ["blockIndex"]
       50 LOADN                            R12 0
       51 SETTABLEKS                       R12 R11 K20 ["LayoutOrder"]
       53 NEWTABLE                         R12 0 1
       55 MOVE                             R13 R6
       56 NEWTABLE                         R14 4 3
       58 GETIMPORT                        R18 K24 [UDim2.new]
       60 LOADN                            R19 1
       61 LOADN                            R20 0
       62 LOADN                            R21 0
       63 LOADN                            R22 0
       64 CALL                             R18 4 1
       65 SETTABLEKS                       R18 R14 K25 ["Size"]
       67 GETIMPORT                        R18 K29 [Enum.AutomaticSize.Y]
       69 SETTABLEKS                       R18 R14 K27 ["AutomaticSize"]
       71 LOADN                            R18 1
       72 SETTABLEKS                       R18 R14 K30 ["BackgroundTransparency"]
       74 MOVE                             R18 R3
       75 LOADK                            R19 K20 ["LayoutOrder"]
       76 CALL                             R18 1 1
       77 SETTABLEKS                       R18 R14 K20 ["LayoutOrder"]
       79 MOVE                             R15 R6
       80 DUPTABLE                         R16 K32 [{"Tags", "LayoutOrder"}]
       81 LOADK                            R17 K33 ["md-divider"]
       82 SETTABLEKS                       R17 R16 K31 ["Tags"]
       84 LOADN                            R17 1
       85 SETTABLEKS                       R17 R16 K20 ["LayoutOrder"]
       87 CALL                             R15 1 1
       88 MOVE                             R16 R6
       89 DUPTABLE                         R17 K38 [{"Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "BorderColor3", "ZIndex"}]
       90 GETIMPORT                        R18 K24 [UDim2.new]
       92 LOADN                            R19 1
       93 LOADN                            R20 0
       94 LOADN                            R21 1
       95 LOADN                            R22 0
       96 CALL                             R18 4 1
       97 SETTABLEKS                       R18 R17 K25 ["Size"]
       99 SETTABLEKS                       R8 R17 K34 ["BackgroundColor3"]
      101 MOVE                             R18 R3
      102 LOADK                            R19 K39 ["overlayTransparency"]
      103 CALL                             R18 1 1
      104 SETTABLEKS                       R18 R17 K30 ["BackgroundTransparency"]
      106 MOVE                             R18 R3
      107 LOADK                            R19 K40 ["borderSize"]
      108 CALL                             R18 1 1
      109 SETTABLEKS                       R18 R17 K35 ["BorderSizePixel"]
      111 SETTABLEKS                       R8 R17 K36 ["BorderColor3"]
      113 LOADN                            R18 10
      114 SETTABLEKS                       R18 R17 K37 ["ZIndex"]
      116 CALL                             R16 1 1
      117 MOVE                             R17 R7
      118 DUPTABLE                         R18 K43 [{"Size", "BackgroundTransparency", "Text", "ZIndex", "OnActivated"}]
      119 GETIMPORT                        R19 K24 [UDim2.new]
      121 LOADN                            R20 1
      122 LOADN                            R21 0
      123 LOADN                            R22 1
      124 LOADN                            R23 0
      125 CALL                             R19 4 1
      126 SETTABLEKS                       R19 R18 K25 ["Size"]
      128 LOADN                            R19 1
      129 SETTABLEKS                       R19 R18 K30 ["BackgroundTransparency"]
      131 LOADK                            R19 K44 [""]
      132 SETTABLEKS                       R19 R18 K41 ["Text"]
      134 LOADN                            R19 11
      135 SETTABLEKS                       R19 R18 K37 ["ZIndex"]
      137 MOVE                             R19 R3
      138 LOADK                            R20 K45 ["onBlockClick"]
      139 CALL                             R19 1 1
      140 SETTABLEKS                       R19 R18 K42 ["OnActivated"]
      142 CALL                             R17 1 -1
      143 SETLIST                          R14 R15 -1 [1]
      145 CALL                             R13 1 -1
      146 SETLIST                          R12 R13 -1 [1]
      148 DUPCLOSURE                       R13 K46 [PROTO_4]
      149 CAPTURE                          VAL R4
      150 CALL                             R9 4 1
      151 RETURN                           R9 1
