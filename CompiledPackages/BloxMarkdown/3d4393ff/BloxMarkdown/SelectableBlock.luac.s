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
       35 GETIMPORT                        R8 K15 [Color3.fromRGB]
       37 LOADN                            R9 56
       38 LOADN                            R10 132
       39 LOADN                            R11 244
       40 CALL                             R8 3 1
       41 MOVE                             R9 R4
       42 LOADK                            R10 K16 ["SelectableBlock"]
       43 DUPTABLE                         R11 K20 [{"editorCtx", "blockIndex", "LayoutOrder"}]
       44 LOADNIL                          R12
       45 SETTABLEKS                       R12 R11 K17 ["editorCtx"]
       47 LOADN                            R12 0
       48 SETTABLEKS                       R12 R11 K18 ["blockIndex"]
       50 LOADN                            R12 0
       51 SETTABLEKS                       R12 R11 K19 ["LayoutOrder"]
       53 NEWTABLE                         R12 0 1
       55 MOVE                             R13 R5
       56 NEWTABLE                         R14 8 2
       58 LOADK                            R17 K21 ["wrapper"]
       59 SETTABLEKS                       R17 R14 K22 ["ref"]
       61 GETIMPORT                        R17 K25 [UDim2.new]
       63 LOADN                            R18 1
       64 LOADN                            R19 0
       65 LOADN                            R20 0
       66 LOADN                            R21 0
       67 CALL                             R17 4 1
       68 SETTABLEKS                       R17 R14 K26 ["Size"]
       70 GETIMPORT                        R17 K30 [Enum.AutomaticSize.Y]
       72 SETTABLEKS                       R17 R14 K28 ["AutomaticSize"]
       74 LOADN                            R17 1
       75 SETTABLEKS                       R17 R14 K31 ["BackgroundTransparency"]
       77 MOVE                             R17 R2
       78 LOADK                            R18 K19 ["LayoutOrder"]
       79 CALL                             R17 1 1
       80 SETTABLEKS                       R17 R14 K19 ["LayoutOrder"]
       82 MOVE                             R15 R5
       83 DUPTABLE                         R16 K36 [{"Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "BorderColor3", "ZIndex"}]
       84 GETIMPORT                        R17 K25 [UDim2.new]
       86 LOADN                            R18 1
       87 LOADN                            R19 0
       88 LOADN                            R20 1
       89 LOADN                            R21 0
       90 CALL                             R17 4 1
       91 SETTABLEKS                       R17 R16 K26 ["Size"]
       93 SETTABLEKS                       R7 R16 K32 ["BackgroundColor3"]
       95 MOVE                             R17 R2
       96 LOADK                            R18 K37 ["overlayTransparency"]
       97 CALL                             R17 1 1
       98 SETTABLEKS                       R17 R16 K31 ["BackgroundTransparency"]
      100 MOVE                             R17 R2
      101 LOADK                            R18 K38 ["borderSize"]
      102 CALL                             R17 1 1
      103 SETTABLEKS                       R17 R16 K33 ["BorderSizePixel"]
      105 SETTABLEKS                       R8 R16 K34 ["BorderColor3"]
      107 LOADN                            R17 10
      108 SETTABLEKS                       R17 R16 K35 ["ZIndex"]
      110 CALL                             R15 1 1
      111 MOVE                             R16 R6
      112 DUPTABLE                         R17 K41 [{"Size", "BackgroundTransparency", "Text", "ZIndex", "OnActivated"}]
      113 GETIMPORT                        R18 K25 [UDim2.new]
      115 LOADN                            R19 1
      116 LOADN                            R20 0
      117 LOADN                            R21 1
      118 LOADN                            R22 0
      119 CALL                             R18 4 1
      120 SETTABLEKS                       R18 R17 K26 ["Size"]
      122 LOADN                            R18 1
      123 SETTABLEKS                       R18 R17 K31 ["BackgroundTransparency"]
      125 LOADK                            R18 K42 [""]
      126 SETTABLEKS                       R18 R17 K39 ["Text"]
      128 LOADN                            R18 11
      129 SETTABLEKS                       R18 R17 K35 ["ZIndex"]
      131 MOVE                             R18 R2
      132 LOADK                            R19 K43 ["onBlockClick"]
      133 CALL                             R18 1 1
      134 SETTABLEKS                       R18 R17 K40 ["OnActivated"]
      136 CALL                             R16 1 -1
      137 SETLIST                          R14 R15 -1 [1]
      139 CALL                             R13 1 -1
      140 SETLIST                          R12 R13 -1 [1]
      142 DUPCLOSURE                       R13 K44 [PROTO_4]
      143 CAPTURE                          VAL R3
      144 CALL                             R9 4 1
      145 RETURN                           R9 1
