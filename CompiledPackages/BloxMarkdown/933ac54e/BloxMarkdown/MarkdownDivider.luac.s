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
       39 DUPTABLE                         R11 K23 [{["node"], ["editorCtx"] = , ["blockIndex"] = 0, ["LayoutOrder"] = 0}]
       40 NEWTABLE                         R12 0 0
       42 SETTABLEKS                       R12 R11 K17 ["node"]
       44 NEWTABLE                         R12 0 1
       46 MOVE                             R13 R6
       47 NEWTABLE                         R14 4 3
       49 GETIMPORT                        R18 K26 [UDim2.new]
       51 LOADN                            R19 1
       52 LOADN                            R20 0
       53 LOADN                            R21 0
       54 LOADN                            R22 0
       55 CALL                             R18 4 1
       56 SETTABLEKS                       R18 R14 K27 ["Size"]
       58 GETIMPORT                        R18 K31 [Enum.AutomaticSize.Y]
       60 SETTABLEKS                       R18 R14 K29 ["AutomaticSize"]
       62 LOADN                            R18 1
       63 SETTABLEKS                       R18 R14 K32 ["BackgroundTransparency"]
       65 MOVE                             R18 R3
       66 LOADK                            R19 K22 ["LayoutOrder"]
       67 CALL                             R18 1 1
       68 SETTABLEKS                       R18 R14 K22 ["LayoutOrder"]
       70 MOVE                             R15 R6
       71 DUPTABLE                         R16 K36 [{["Tags"] = "md-divider", ["LayoutOrder"] = 1}]
       72 CALL                             R15 1 1
       73 MOVE                             R16 R6
       74 DUPTABLE                         R17 K42 [{["Size"], ["BackgroundColor3"], ["BackgroundTransparency"], ["BorderSizePixel"], ["BorderColor3"], ["ZIndex"] = 10}]
       75 GETIMPORT                        R18 K26 [UDim2.new]
       77 LOADN                            R19 1
       78 LOADN                            R20 0
       79 LOADN                            R21 1
       80 LOADN                            R22 0
       81 CALL                             R18 4 1
       82 SETTABLEKS                       R18 R17 K27 ["Size"]
       84 SETTABLEKS                       R8 R17 K37 ["BackgroundColor3"]
       86 MOVE                             R18 R3
       87 LOADK                            R19 K43 ["overlayTransparency"]
       88 CALL                             R18 1 1
       89 SETTABLEKS                       R18 R17 K32 ["BackgroundTransparency"]
       91 MOVE                             R18 R3
       92 LOADK                            R19 K44 ["borderSize"]
       93 CALL                             R18 1 1
       94 SETTABLEKS                       R18 R17 K38 ["BorderSizePixel"]
       96 SETTABLEKS                       R8 R17 K39 ["BorderColor3"]
       98 CALL                             R16 1 1
       99 MOVE                             R17 R7
      100 DUPTABLE                         R18 K49 [{["Size"], ["BackgroundTransparency"] = 1, ["Text"] = "", ["ZIndex"] = 11, ["OnActivated"]}]
      101 GETIMPORT                        R19 K26 [UDim2.new]
      103 LOADN                            R20 1
      104 LOADN                            R21 0
      105 LOADN                            R22 1
      106 LOADN                            R23 0
      107 CALL                             R19 4 1
      108 SETTABLEKS                       R19 R18 K27 ["Size"]
      110 MOVE                             R19 R3
      111 LOADK                            R20 K50 ["onBlockClick"]
      112 CALL                             R19 1 1
      113 SETTABLEKS                       R19 R18 K48 ["OnActivated"]
      115 CALL                             R17 1 -1
      116 SETLIST                          R14 R15 -1 [1]
      118 CALL                             R13 1 -1
      119 SETLIST                          R12 R13 -1 [1]
      121 DUPCLOSURE                       R13 K51 [PROTO_4]
      122 CAPTURE                          VAL R4
      123 CALL                             R9 4 1
      124 RETURN                           R9 1
