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
       29 GETTABLEKS                       R7 R2 K12 ["ImageLabel"]
       31 GETTABLEKS                       R8 R2 K13 ["TextButton"]
       33 GETIMPORT                        R9 K16 [UDim2.fromOffset]
       35 LOADN                            R10 200
       36 LOADN                            R11 150
       37 CALL                             R9 2 1
       38 GETIMPORT                        R10 K19 [Color3.fromRGB]
       40 LOADN                            R11 56
       41 LOADN                            R12 132
       42 LOADN                            R13 244
       43 CALL                             R10 3 1
       44 MOVE                             R11 R5
       45 LOADK                            R12 K20 ["MarkdownImage"]
       46 DUPTABLE                         R13 K25 [{"node", "editorCtx", "blockIndex", "LayoutOrder"}]
       47 NEWTABLE                         R14 0 0
       49 SETTABLEKS                       R14 R13 K21 ["node"]
       51 LOADNIL                          R14
       52 SETTABLEKS                       R14 R13 K22 ["editorCtx"]
       54 LOADN                            R14 0
       55 SETTABLEKS                       R14 R13 K23 ["blockIndex"]
       57 LOADN                            R14 0
       58 SETTABLEKS                       R14 R13 K24 ["LayoutOrder"]
       60 NEWTABLE                         R14 0 1
       62 MOVE                             R15 R6
       63 NEWTABLE                         R16 4 3
       65 GETIMPORT                        R20 K27 [UDim2.new]
       67 LOADN                            R21 1
       68 LOADN                            R22 0
       69 LOADN                            R23 0
       70 LOADN                            R24 0
       71 CALL                             R20 4 1
       72 SETTABLEKS                       R20 R16 K28 ["Size"]
       74 GETIMPORT                        R20 K32 [Enum.AutomaticSize.Y]
       76 SETTABLEKS                       R20 R16 K30 ["AutomaticSize"]
       78 LOADN                            R20 1
       79 SETTABLEKS                       R20 R16 K33 ["BackgroundTransparency"]
       81 MOVE                             R20 R3
       82 LOADK                            R21 K24 ["LayoutOrder"]
       83 CALL                             R20 1 1
       84 SETTABLEKS                       R20 R16 K24 ["LayoutOrder"]
       86 MOVE                             R17 R6
       87 NEWTABLE                         R18 2 1
       89 LOADK                            R20 K34 ["box auto-xy"]
       90 SETTABLEKS                       R20 R18 K35 ["Tags"]
       92 LOADN                            R20 1
       93 SETTABLEKS                       R20 R18 K24 ["LayoutOrder"]
       95 MOVE                             R19 R7
       96 DUPTABLE                         R20 K37 [{"Tags", "Image", "Size", "LayoutOrder"}]
       97 LOADK                            R21 K38 ["md-image"]
       98 SETTABLEKS                       R21 R20 K35 ["Tags"]
      100 MOVE                             R21 R3
      101 LOADK                            R22 K39 ["imageUrl"]
      102 CALL                             R21 1 1
      103 SETTABLEKS                       R21 R20 K36 ["Image"]
      105 SETTABLEKS                       R9 R20 K28 ["Size"]
      107 LOADN                            R21 1
      108 SETTABLEKS                       R21 R20 K24 ["LayoutOrder"]
      110 CALL                             R19 1 -1
      111 SETLIST                          R18 R19 -1 [1]
      113 CALL                             R17 1 1
      114 MOVE                             R18 R6
      115 DUPTABLE                         R19 K44 [{"Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "BorderColor3", "ZIndex"}]
      116 GETIMPORT                        R20 K27 [UDim2.new]
      118 LOADN                            R21 1
      119 LOADN                            R22 0
      120 LOADN                            R23 1
      121 LOADN                            R24 0
      122 CALL                             R20 4 1
      123 SETTABLEKS                       R20 R19 K28 ["Size"]
      125 SETTABLEKS                       R10 R19 K40 ["BackgroundColor3"]
      127 MOVE                             R20 R3
      128 LOADK                            R21 K45 ["overlayTransparency"]
      129 CALL                             R20 1 1
      130 SETTABLEKS                       R20 R19 K33 ["BackgroundTransparency"]
      132 MOVE                             R20 R3
      133 LOADK                            R21 K46 ["borderSize"]
      134 CALL                             R20 1 1
      135 SETTABLEKS                       R20 R19 K41 ["BorderSizePixel"]
      137 SETTABLEKS                       R10 R19 K42 ["BorderColor3"]
      139 LOADN                            R20 10
      140 SETTABLEKS                       R20 R19 K43 ["ZIndex"]
      142 CALL                             R18 1 1
      143 MOVE                             R19 R8
      144 DUPTABLE                         R20 K49 [{"Size", "BackgroundTransparency", "Text", "ZIndex", "OnActivated"}]
      145 GETIMPORT                        R21 K27 [UDim2.new]
      147 LOADN                            R22 1
      148 LOADN                            R23 0
      149 LOADN                            R24 1
      150 LOADN                            R25 0
      151 CALL                             R21 4 1
      152 SETTABLEKS                       R21 R20 K28 ["Size"]
      154 LOADN                            R21 1
      155 SETTABLEKS                       R21 R20 K33 ["BackgroundTransparency"]
      157 LOADK                            R21 K50 [""]
      158 SETTABLEKS                       R21 R20 K47 ["Text"]
      160 LOADN                            R21 11
      161 SETTABLEKS                       R21 R20 K43 ["ZIndex"]
      163 MOVE                             R21 R3
      164 LOADK                            R22 K51 ["onBlockClick"]
      165 CALL                             R21 1 1
      166 SETTABLEKS                       R21 R20 K48 ["OnActivated"]
      168 CALL                             R19 1 -1
      169 SETLIST                          R16 R17 -1 [1]
      171 CALL                             R15 1 -1
      172 SETLIST                          R14 R15 -1 [1]
      174 DUPCLOSURE                       R15 K52 [PROTO_5]
      175 CAPTURE                          VAL R4
      176 CALL                             R11 4 1
      177 RETURN                           R11 1
