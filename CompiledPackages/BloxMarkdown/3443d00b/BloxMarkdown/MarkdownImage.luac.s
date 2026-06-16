PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["node"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K1 ["attributes"]
        7 JUMPIFNOT                        R2 ; [+10]
        8 GETTABLEKS                       R2 R1 K1 ["attributes"]
       10 GETTABLEKS                       R2 R2 K2 ["url"]
       12 JUMPIFNOT                        R2 ; [+5]
       13 GETTABLEKS                       R2 R1 K1 ["attributes"]
       15 GETTABLEKS                       R2 R2 K2 ["url"]
       17 RETURN                           R2 1
       18 GETTABLEKS                       R2 R1 K3 ["children"]
       20 JUMPIFNOT                        R2 ; [+20]
       21 GETTABLEKS                       R2 R1 K3 ["children"]
       23 LOADNIL                          R3
       24 LOADNIL                          R4
       25 FORGPREP                         R2
       26 GETTABLEKS                       R7 R6 K4 ["name"]
       28 JUMPIFNOTEQKS                    R7 K5 ["IMAGE"] ; [+10]
       30 GETTABLEKS                       R7 R6 K1 ["attributes"]
       32 JUMPIFNOT                        R7 ; [+6]
       33 GETTABLEKS                       R8 R6 K1 ["attributes"]
       35 GETTABLEKS                       R8 R8 K2 ["url"]
       37 ORK                              R7 R8 K6 [""]
       38 RETURN                           R7 1
       39 FORGLOOP                         R2 2 ; [-14]
       41 LOADK                            R2 K6 [""]
       42 RETURN                           R2 1

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+2]
        4 LOADK                            R1 K0 [0.75]
        5 RETURN                           R1 1
        6 LOADN                            R1 1
        7 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+2]
        4 LOADN                            R1 2
        5 RETURN                           R1 1
        6 LOADN                            R1 0
        7 RETURN                           R1 1

PROTO_4:
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

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["peek"]
        2 GETTABLEKS                       R3 R1 K1 ["createComputed"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R0
        6 LOADK                            R5 K2 ["image-url"]
        7 CALL                             R3 2 1
        8 GETTABLEKS                       R4 R1 K1 ["createComputed"]
       10 NEWCLOSURE                       R5 P1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U0
       13 LOADK                            R6 K3 ["image-selected"]
       14 CALL                             R4 2 1
       15 GETTABLEKS                       R5 R1 K1 ["createComputed"]
       17 NEWCLOSURE                       R6 P2
       18 CAPTURE                          VAL R4
       19 LOADK                            R7 K4 ["image-overlay"]
       20 CALL                             R5 2 1
       21 GETTABLEKS                       R6 R1 K1 ["createComputed"]
       23 NEWCLOSURE                       R7 P3
       24 CAPTURE                          VAL R4
       25 LOADK                            R8 K5 ["image-border"]
       26 CALL                             R6 2 1
       27 NEWCLOSURE                       R7 P4
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U0
       31 DUPTABLE                         R8 K11 [{"imageUrl", "overlayTransparency", "borderSize", "onBlockClick", "LayoutOrder"}]
       32 SETTABLEKS                       R3 R8 K6 ["imageUrl"]
       34 SETTABLEKS                       R5 R8 K7 ["overlayTransparency"]
       36 SETTABLEKS                       R6 R8 K8 ["borderSize"]
       38 SETTABLEKS                       R7 R8 K9 ["onBlockClick"]
       40 GETTABLEKS                       R9 R0 K10 ["LayoutOrder"]
       42 SETTABLEKS                       R9 R8 K10 ["LayoutOrder"]
       44 RETURN                           R8 1

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
       27 GETTABLEKS                       R6 R1 K12 ["ImageLabel"]
       29 GETTABLEKS                       R7 R1 K13 ["TextButton"]
       31 GETIMPORT                        R8 K16 [UDim2.fromOffset]
       33 LOADN                            R9 200
       34 LOADN                            R10 150
       35 CALL                             R8 2 1
       36 GETIMPORT                        R9 K19 [Color3.fromRGB]
       38 LOADN                            R10 56
       39 LOADN                            R11 132
       40 LOADN                            R12 244
       41 CALL                             R9 3 1
       42 MOVE                             R10 R4
       43 LOADK                            R11 K20 ["MarkdownImage"]
       44 DUPTABLE                         R12 K25 [{"node", "editorCtx", "blockIndex", "LayoutOrder"}]
       45 NEWTABLE                         R13 0 0
       47 SETTABLEKS                       R13 R12 K21 ["node"]
       49 LOADNIL                          R13
       50 SETTABLEKS                       R13 R12 K22 ["editorCtx"]
       52 LOADN                            R13 0
       53 SETTABLEKS                       R13 R12 K23 ["blockIndex"]
       55 LOADN                            R13 0
       56 SETTABLEKS                       R13 R12 K24 ["LayoutOrder"]
       58 NEWTABLE                         R13 0 1
       60 MOVE                             R14 R5
       61 NEWTABLE                         R15 4 3
       63 GETIMPORT                        R19 K27 [UDim2.new]
       65 LOADN                            R20 1
       66 LOADN                            R21 0
       67 LOADN                            R22 0
       68 LOADN                            R23 0
       69 CALL                             R19 4 1
       70 SETTABLEKS                       R19 R15 K28 ["Size"]
       72 GETIMPORT                        R19 K32 [Enum.AutomaticSize.Y]
       74 SETTABLEKS                       R19 R15 K30 ["AutomaticSize"]
       76 LOADN                            R19 1
       77 SETTABLEKS                       R19 R15 K33 ["BackgroundTransparency"]
       79 MOVE                             R19 R2
       80 LOADK                            R20 K24 ["LayoutOrder"]
       81 CALL                             R19 1 1
       82 SETTABLEKS                       R19 R15 K24 ["LayoutOrder"]
       84 MOVE                             R16 R5
       85 NEWTABLE                         R17 2 1
       87 LOADK                            R19 K34 ["box auto-xy"]
       88 SETTABLEKS                       R19 R17 K35 ["Tags"]
       90 LOADN                            R19 1
       91 SETTABLEKS                       R19 R17 K24 ["LayoutOrder"]
       93 MOVE                             R18 R6
       94 DUPTABLE                         R19 K37 [{"Tags", "Image", "Size", "LayoutOrder"}]
       95 LOADK                            R20 K38 ["md-image"]
       96 SETTABLEKS                       R20 R19 K35 ["Tags"]
       98 MOVE                             R20 R2
       99 LOADK                            R21 K39 ["imageUrl"]
      100 CALL                             R20 1 1
      101 SETTABLEKS                       R20 R19 K36 ["Image"]
      103 SETTABLEKS                       R8 R19 K28 ["Size"]
      105 LOADN                            R20 1
      106 SETTABLEKS                       R20 R19 K24 ["LayoutOrder"]
      108 CALL                             R18 1 -1
      109 SETLIST                          R17 R18 -1 [1]
      111 CALL                             R16 1 1
      112 MOVE                             R17 R5
      113 DUPTABLE                         R18 K44 [{"Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "BorderColor3", "ZIndex"}]
      114 GETIMPORT                        R19 K27 [UDim2.new]
      116 LOADN                            R20 1
      117 LOADN                            R21 0
      118 LOADN                            R22 1
      119 LOADN                            R23 0
      120 CALL                             R19 4 1
      121 SETTABLEKS                       R19 R18 K28 ["Size"]
      123 SETTABLEKS                       R9 R18 K40 ["BackgroundColor3"]
      125 MOVE                             R19 R2
      126 LOADK                            R20 K45 ["overlayTransparency"]
      127 CALL                             R19 1 1
      128 SETTABLEKS                       R19 R18 K33 ["BackgroundTransparency"]
      130 MOVE                             R19 R2
      131 LOADK                            R20 K46 ["borderSize"]
      132 CALL                             R19 1 1
      133 SETTABLEKS                       R19 R18 K41 ["BorderSizePixel"]
      135 SETTABLEKS                       R9 R18 K42 ["BorderColor3"]
      137 LOADN                            R19 10
      138 SETTABLEKS                       R19 R18 K43 ["ZIndex"]
      140 CALL                             R17 1 1
      141 MOVE                             R18 R7
      142 DUPTABLE                         R19 K49 [{"Size", "BackgroundTransparency", "Text", "ZIndex", "OnActivated"}]
      143 GETIMPORT                        R20 K27 [UDim2.new]
      145 LOADN                            R21 1
      146 LOADN                            R22 0
      147 LOADN                            R23 1
      148 LOADN                            R24 0
      149 CALL                             R20 4 1
      150 SETTABLEKS                       R20 R19 K28 ["Size"]
      152 LOADN                            R20 1
      153 SETTABLEKS                       R20 R19 K33 ["BackgroundTransparency"]
      155 LOADK                            R20 K50 [""]
      156 SETTABLEKS                       R20 R19 K47 ["Text"]
      158 LOADN                            R20 11
      159 SETTABLEKS                       R20 R19 K43 ["ZIndex"]
      161 MOVE                             R20 R2
      162 LOADK                            R21 K51 ["onBlockClick"]
      163 CALL                             R20 1 1
      164 SETTABLEKS                       R20 R19 K48 ["OnActivated"]
      166 CALL                             R18 1 -1
      167 SETLIST                          R15 R16 -1 [1]
      169 CALL                             R14 1 -1
      170 SETLIST                          R13 R14 -1 [1]
      172 DUPCLOSURE                       R14 K52 [PROTO_5]
      173 CAPTURE                          VAL R3
      174 CALL                             R10 4 1
      175 RETURN                           R10 1
