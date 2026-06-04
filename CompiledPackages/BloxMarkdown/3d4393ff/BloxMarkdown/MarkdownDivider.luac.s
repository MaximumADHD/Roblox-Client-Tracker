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
        3 LOADK                            R2 K2 ["Packages"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Blox"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K7 ["expr"]
       14 GETIMPORT                        R3 K5 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K8 ["Parent"]
       20 GETTABLEKS                       R4 R4 K9 ["EditorState"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R1 K10 ["template"]
       25 GETTABLEKS                       R5 R1 K11 ["Frame"]
       27 GETTABLEKS                       R6 R1 K12 ["TextButton"]
       29 GETIMPORT                        R7 K15 [Color3.fromRGB]
       31 LOADN                            R8 56
       32 LOADN                            R9 132
       33 LOADN                            R10 244
       34 CALL                             R7 3 1
       35 MOVE                             R8 R4
       36 LOADK                            R9 K16 ["MarkdownDivider"]
       37 DUPTABLE                         R10 K21 [{"node", "editorCtx", "blockIndex", "LayoutOrder"}]
       38 NEWTABLE                         R11 0 0
       40 SETTABLEKS                       R11 R10 K17 ["node"]
       42 LOADNIL                          R11
       43 SETTABLEKS                       R11 R10 K18 ["editorCtx"]
       45 LOADN                            R11 0
       46 SETTABLEKS                       R11 R10 K19 ["blockIndex"]
       48 LOADN                            R11 0
       49 SETTABLEKS                       R11 R10 K20 ["LayoutOrder"]
       51 NEWTABLE                         R11 0 1
       53 MOVE                             R12 R5
       54 NEWTABLE                         R13 4 3
       56 GETIMPORT                        R17 K24 [UDim2.new]
       58 LOADN                            R18 1
       59 LOADN                            R19 0
       60 LOADN                            R20 0
       61 LOADN                            R21 0
       62 CALL                             R17 4 1
       63 SETTABLEKS                       R17 R13 K25 ["Size"]
       65 GETIMPORT                        R17 K29 [Enum.AutomaticSize.Y]
       67 SETTABLEKS                       R17 R13 K27 ["AutomaticSize"]
       69 LOADN                            R17 1
       70 SETTABLEKS                       R17 R13 K30 ["BackgroundTransparency"]
       72 MOVE                             R17 R2
       73 LOADK                            R18 K20 ["LayoutOrder"]
       74 CALL                             R17 1 1
       75 SETTABLEKS                       R17 R13 K20 ["LayoutOrder"]
       77 MOVE                             R14 R5
       78 DUPTABLE                         R15 K32 [{"Tags", "LayoutOrder"}]
       79 LOADK                            R16 K33 ["md-divider"]
       80 SETTABLEKS                       R16 R15 K31 ["Tags"]
       82 LOADN                            R16 1
       83 SETTABLEKS                       R16 R15 K20 ["LayoutOrder"]
       85 CALL                             R14 1 1
       86 MOVE                             R15 R5
       87 DUPTABLE                         R16 K38 [{"Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "BorderColor3", "ZIndex"}]
       88 GETIMPORT                        R17 K24 [UDim2.new]
       90 LOADN                            R18 1
       91 LOADN                            R19 0
       92 LOADN                            R20 1
       93 LOADN                            R21 0
       94 CALL                             R17 4 1
       95 SETTABLEKS                       R17 R16 K25 ["Size"]
       97 SETTABLEKS                       R7 R16 K34 ["BackgroundColor3"]
       99 MOVE                             R17 R2
      100 LOADK                            R18 K39 ["overlayTransparency"]
      101 CALL                             R17 1 1
      102 SETTABLEKS                       R17 R16 K30 ["BackgroundTransparency"]
      104 MOVE                             R17 R2
      105 LOADK                            R18 K40 ["borderSize"]
      106 CALL                             R17 1 1
      107 SETTABLEKS                       R17 R16 K35 ["BorderSizePixel"]
      109 SETTABLEKS                       R7 R16 K36 ["BorderColor3"]
      111 LOADN                            R17 10
      112 SETTABLEKS                       R17 R16 K37 ["ZIndex"]
      114 CALL                             R15 1 1
      115 MOVE                             R16 R6
      116 DUPTABLE                         R17 K43 [{"Size", "BackgroundTransparency", "Text", "ZIndex", "OnActivated"}]
      117 GETIMPORT                        R18 K24 [UDim2.new]
      119 LOADN                            R19 1
      120 LOADN                            R20 0
      121 LOADN                            R21 1
      122 LOADN                            R22 0
      123 CALL                             R18 4 1
      124 SETTABLEKS                       R18 R17 K25 ["Size"]
      126 LOADN                            R18 1
      127 SETTABLEKS                       R18 R17 K30 ["BackgroundTransparency"]
      129 LOADK                            R18 K44 [""]
      130 SETTABLEKS                       R18 R17 K41 ["Text"]
      132 LOADN                            R18 11
      133 SETTABLEKS                       R18 R17 K37 ["ZIndex"]
      135 MOVE                             R18 R2
      136 LOADK                            R19 K45 ["onBlockClick"]
      137 CALL                             R18 1 1
      138 SETTABLEKS                       R18 R17 K42 ["OnActivated"]
      140 CALL                             R16 1 -1
      141 SETLIST                          R13 R14 -1 [1]
      143 CALL                             R12 1 -1
      144 SETLIST                          R11 R12 -1 [1]
      146 DUPCLOSURE                       R12 K46 [PROTO_4]
      147 CAPTURE                          VAL R3
      148 CALL                             R8 4 1
      149 RETURN                           R8 1
