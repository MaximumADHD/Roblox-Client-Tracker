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
       45 DUPTABLE                         R12 K22 [{["editorCtx"] = , ["blockIndex"] = 0, ["LayoutOrder"] = 0}]
       46 NEWTABLE                         R13 0 1
       48 MOVE                             R14 R6
       49 NEWTABLE                         R15 8 2
       51 LOADK                            R18 K23 ["wrapper"]
       52 SETTABLEKS                       R18 R15 K24 ["ref"]
       54 GETIMPORT                        R18 K27 [UDim2.new]
       56 LOADN                            R19 1
       57 LOADN                            R20 0
       58 LOADN                            R21 0
       59 LOADN                            R22 0
       60 CALL                             R18 4 1
       61 SETTABLEKS                       R18 R15 K28 ["Size"]
       63 GETIMPORT                        R18 K32 [Enum.AutomaticSize.Y]
       65 SETTABLEKS                       R18 R15 K30 ["AutomaticSize"]
       67 LOADN                            R18 1
       68 SETTABLEKS                       R18 R15 K33 ["BackgroundTransparency"]
       70 MOVE                             R18 R3
       71 LOADK                            R19 K21 ["LayoutOrder"]
       72 CALL                             R18 1 1
       73 SETTABLEKS                       R18 R15 K21 ["LayoutOrder"]
       75 MOVE                             R16 R6
       76 DUPTABLE                         R17 K39 [{["Size"], ["BackgroundColor3"], ["BackgroundTransparency"], ["BorderSizePixel"], ["BorderColor3"], ["ZIndex"] = 10}]
       77 GETIMPORT                        R18 K27 [UDim2.new]
       79 LOADN                            R19 1
       80 LOADN                            R20 0
       81 LOADN                            R21 1
       82 LOADN                            R22 0
       83 CALL                             R18 4 1
       84 SETTABLEKS                       R18 R17 K28 ["Size"]
       86 SETTABLEKS                       R8 R17 K34 ["BackgroundColor3"]
       88 MOVE                             R18 R3
       89 LOADK                            R19 K40 ["overlayTransparency"]
       90 CALL                             R18 1 1
       91 SETTABLEKS                       R18 R17 K33 ["BackgroundTransparency"]
       93 MOVE                             R18 R3
       94 LOADK                            R19 K41 ["borderSize"]
       95 CALL                             R18 1 1
       96 SETTABLEKS                       R18 R17 K35 ["BorderSizePixel"]
       98 SETTABLEKS                       R9 R17 K36 ["BorderColor3"]
      100 CALL                             R16 1 1
      101 MOVE                             R17 R7
      102 DUPTABLE                         R18 K47 [{["Size"], ["BackgroundTransparency"] = 1, ["Text"] = "", ["ZIndex"] = 11, ["OnActivated"]}]
      103 GETIMPORT                        R19 K27 [UDim2.new]
      105 LOADN                            R20 1
      106 LOADN                            R21 0
      107 LOADN                            R22 1
      108 LOADN                            R23 0
      109 CALL                             R19 4 1
      110 SETTABLEKS                       R19 R18 K28 ["Size"]
      112 MOVE                             R19 R3
      113 LOADK                            R20 K48 ["onBlockClick"]
      114 CALL                             R19 1 1
      115 SETTABLEKS                       R19 R18 K46 ["OnActivated"]
      117 CALL                             R17 1 -1
      118 SETLIST                          R15 R16 -1 [1]
      120 CALL                             R14 1 -1
      121 SETLIST                          R13 R14 -1 [1]
      123 DUPCLOSURE                       R14 K49 [PROTO_4]
      124 CAPTURE                          VAL R4
      125 CALL                             R10 4 1
      126 RETURN                           R10 1
