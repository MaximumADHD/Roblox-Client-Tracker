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
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K3 ["getBlockSelectionRange"]
       26 MOVE                             R5 R3
       27 MOVE                             R6 R2
       28 LOADN                            R7 1
       29 CALL                             R4 3 1
       30 JUMPIFNOTEQKNIL                  R4 ; [+2]
       32 LOADB                            R5 0 +1
       33 LOADB                            R5 1
       34 RETURN                           R5 1

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
       12 DUPTABLE                         R2 K4 [{"anchor", "focus"}]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K5 ["createPosition"]
       16 MOVE                             R4 R1
       17 LOADN                            R5 1
       18 LOADN                            R6 0
       19 CALL                             R3 3 1
       20 SETTABLEKS                       R3 R2 K2 ["anchor"]
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K5 ["createPosition"]
       25 MOVE                             R4 R1
       26 LOADN                            R5 1
       27 LOADK                            R6 K6 [∞]
       28 CALL                             R3 3 1
       29 SETTABLEKS                       R3 R2 K3 ["focus"]
       31 GETTABLEKS                       R3 R0 K7 ["setSelection"]
       33 MOVE                             R4 R2
       34 CALL                             R3 1 0
       35 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["peek"]
        2 GETTABLEKS                       R3 R1 K1 ["createComputed"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 LOADK                            R5 K2 ["block-selected"]
        8 CALL                             R3 2 1
        9 GETTABLEKS                       R4 R1 K1 ["createComputed"]
       11 NEWCLOSURE                       R5 P1
       12 CAPTURE                          VAL R3
       13 LOADK                            R6 K3 ["overlay-transparency"]
       14 CALL                             R4 2 1
       15 GETTABLEKS                       R5 R1 K1 ["createComputed"]
       17 NEWCLOSURE                       R6 P2
       18 CAPTURE                          VAL R3
       19 LOADK                            R7 K4 ["border-size"]
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
       37 GETIMPORT                        R9 K15 [Color3.fromRGB]
       39 LOADN                            R10 56
       40 LOADN                            R11 132
       41 LOADN                            R12 244
       42 CALL                             R9 3 1
       43 MOVE                             R10 R5
       44 LOADK                            R11 K16 ["SelectableBlock"]
       45 DUPTABLE                         R12 K20 [{"editorCtx", "blockIndex", "LayoutOrder"}]
       46 LOADNIL                          R13
       47 SETTABLEKS                       R13 R12 K17 ["editorCtx"]
       49 LOADN                            R13 0
       50 SETTABLEKS                       R13 R12 K18 ["blockIndex"]
       52 LOADN                            R13 0
       53 SETTABLEKS                       R13 R12 K19 ["LayoutOrder"]
       55 NEWTABLE                         R13 0 1
       57 MOVE                             R14 R6
       58 NEWTABLE                         R15 8 2
       60 LOADK                            R18 K21 ["wrapper"]
       61 SETTABLEKS                       R18 R15 K22 ["ref"]
       63 GETIMPORT                        R18 K25 [UDim2.new]
       65 LOADN                            R19 1
       66 LOADN                            R20 0
       67 LOADN                            R21 0
       68 LOADN                            R22 0
       69 CALL                             R18 4 1
       70 SETTABLEKS                       R18 R15 K26 ["Size"]
       72 GETIMPORT                        R18 K30 [Enum.AutomaticSize.Y]
       74 SETTABLEKS                       R18 R15 K28 ["AutomaticSize"]
       76 LOADN                            R18 1
       77 SETTABLEKS                       R18 R15 K31 ["BackgroundTransparency"]
       79 MOVE                             R18 R3
       80 LOADK                            R19 K19 ["LayoutOrder"]
       81 CALL                             R18 1 1
       82 SETTABLEKS                       R18 R15 K19 ["LayoutOrder"]
       84 MOVE                             R16 R6
       85 DUPTABLE                         R17 K36 [{"Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "BorderColor3", "ZIndex"}]
       86 GETIMPORT                        R18 K25 [UDim2.new]
       88 LOADN                            R19 1
       89 LOADN                            R20 0
       90 LOADN                            R21 1
       91 LOADN                            R22 0
       92 CALL                             R18 4 1
       93 SETTABLEKS                       R18 R17 K26 ["Size"]
       95 SETTABLEKS                       R8 R17 K32 ["BackgroundColor3"]
       97 MOVE                             R18 R3
       98 LOADK                            R19 K37 ["overlayTransparency"]
       99 CALL                             R18 1 1
      100 SETTABLEKS                       R18 R17 K31 ["BackgroundTransparency"]
      102 MOVE                             R18 R3
      103 LOADK                            R19 K38 ["borderSize"]
      104 CALL                             R18 1 1
      105 SETTABLEKS                       R18 R17 K33 ["BorderSizePixel"]
      107 SETTABLEKS                       R9 R17 K34 ["BorderColor3"]
      109 LOADN                            R18 10
      110 SETTABLEKS                       R18 R17 K35 ["ZIndex"]
      112 CALL                             R16 1 1
      113 MOVE                             R17 R7
      114 DUPTABLE                         R18 K41 [{"Size", "BackgroundTransparency", "Text", "ZIndex", "OnActivated"}]
      115 GETIMPORT                        R19 K25 [UDim2.new]
      117 LOADN                            R20 1
      118 LOADN                            R21 0
      119 LOADN                            R22 1
      120 LOADN                            R23 0
      121 CALL                             R19 4 1
      122 SETTABLEKS                       R19 R18 K26 ["Size"]
      124 LOADN                            R19 1
      125 SETTABLEKS                       R19 R18 K31 ["BackgroundTransparency"]
      127 LOADK                            R19 K42 [""]
      128 SETTABLEKS                       R19 R18 K39 ["Text"]
      130 LOADN                            R19 11
      131 SETTABLEKS                       R19 R18 K35 ["ZIndex"]
      133 MOVE                             R19 R3
      134 LOADK                            R20 K43 ["onBlockClick"]
      135 CALL                             R19 1 1
      136 SETTABLEKS                       R19 R18 K40 ["OnActivated"]
      138 CALL                             R17 1 -1
      139 SETLIST                          R15 R16 -1 [1]
      141 CALL                             R14 1 -1
      142 SETLIST                          R13 R14 -1 [1]
      144 DUPCLOSURE                       R14 K44 [PROTO_4]
      145 CAPTURE                          VAL R4
      146 CALL                             R10 4 1
      147 RETURN                           R10 1
