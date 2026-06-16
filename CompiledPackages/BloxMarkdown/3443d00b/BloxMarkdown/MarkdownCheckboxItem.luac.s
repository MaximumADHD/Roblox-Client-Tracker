PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["editorCtx"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+30]
        6 GETTABLEKS                       R2 R1 K1 ["blockStore"]
        8 JUMPIFNOT                        R2 ; [+27]
        9 GETUPVAL                         R2 0
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K2 ["blockIndex"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K3 ["itemIndex"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R7 R1 K1 ["blockStore"]
       21 GETTABLE                         R6 R7 R2
       22 GETTABLEKS                       R6 R6 K4 ["children"]
       24 GETTABLE                         R5 R6 R3
       25 GETTABLEKS                       R5 R5 K5 ["attributes"]
       27 GETTABLEKS                       R5 R5 K6 ["checked"]
       29 MOVE                             R6 R0
       30 CALL                             R5 1 1
       31 JUMPIFEQKB                       R5 TRUE ; [+2]
       33 LOADB                            R4 0 +1
       34 LOADB                            R4 1
       35 RETURN                           R4 1
       36 GETUPVAL                         R2 1
       37 GETTABLEKS                       R2 R2 K7 ["node"]
       39 MOVE                             R3 R0
       40 CALL                             R2 1 1
       41 GETTABLEKS                       R3 R2 K5 ["attributes"]
       43 JUMPIFNOT                        R3 ; [+8]
       44 GETTABLEKS                       R4 R2 K5 ["attributes"]
       46 GETTABLEKS                       R4 R4 K6 ["checked"]
       48 JUMPIFEQKB                       R4 TRUE ; [+2]
       50 LOADB                            R3 0 +1
       51 LOADB                            R3 1
       52 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADK                            R2 K0 ["md-checkbox-box md-checkbox-checked"]
        5 RETURN                           R2 1
        6 LOADK                            R2 K1 ["md-checkbox-box"]
        7 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["editorCtx"]
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETTABLEKS                       R1 R0 K1 ["updateBlocks"]
        8 JUMPIFNOT                        R1 ; [+3]
        9 GETTABLEKS                       R1 R0 K2 ["blockStore"]
       11 JUMPIF                           R1 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 0
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K3 ["blockIndex"]
       17 CALL                             R1 1 1
       18 GETUPVAL                         R2 0
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K4 ["itemIndex"]
       22 CALL                             R2 1 1
       23 GETUPVAL                         R3 0
       24 GETUPVAL                         R4 2
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R0 K2 ["blockStore"]
       28 GETTABLEKS                       R5 R0 K1 ["updateBlocks"]
       30 GETTABLE                         R7 R4 R1
       31 GETTABLEKS                       R7 R7 K5 ["children"]
       33 GETTABLE                         R6 R7 R2
       34 GETTABLEKS                       R6 R6 K6 ["attributes"]
       36 GETTABLEKS                       R6 R6 K7 ["checked"]
       38 CALL                             R5 1 1
       39 NOT                              R7 R3
       40 NAMECALL                         R5 R5 K8 ["set"]
       42 CALL                             R5 2 0
       43 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["itemIndex"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 NEWTABLE                         R2 0 1
        8 MOVE                             R3 R1
        9 SETLIST                          R2 R3 1 [1]
       11 RETURN                           R2 1
       12 LOADNIL                          R2
       13 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["peek"]
        2 GETTABLEKS                       R3 R1 K1 ["createComputed"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R0
        7 LOADK                            R5 K2 ["is-checked"]
        8 CALL                             R3 2 1
        9 GETTABLEKS                       R4 R1 K1 ["createComputed"]
       11 NEWCLOSURE                       R5 P1
       12 CAPTURE                          VAL R3
       13 LOADK                            R6 K3 ["checkbox-tags"]
       14 CALL                             R4 2 1
       15 NEWCLOSURE                       R5 P2
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R3
       19 GETTABLEKS                       R6 R1 K1 ["createComputed"]
       21 NEWCLOSURE                       R7 P3
       22 CAPTURE                          VAL R0
       23 LOADK                            R8 K4 ["item-path"]
       24 CALL                             R6 2 1
       25 DUPTABLE                         R7 K14 [{"node", "isChecked", "checkboxTags", "onToggle", "itemPath", "linkCallback", "editorCtx", "blockIndex", "LayoutOrder"}]
       26 GETTABLEKS                       R8 R0 K5 ["node"]
       28 SETTABLEKS                       R8 R7 K5 ["node"]
       30 SETTABLEKS                       R3 R7 K6 ["isChecked"]
       32 SETTABLEKS                       R4 R7 K7 ["checkboxTags"]
       34 SETTABLEKS                       R5 R7 K8 ["onToggle"]
       36 SETTABLEKS                       R6 R7 K9 ["itemPath"]
       38 GETTABLEKS                       R8 R0 K10 ["linkCallback"]
       40 SETTABLEKS                       R8 R7 K10 ["linkCallback"]
       42 GETTABLEKS                       R8 R0 K11 ["editorCtx"]
       44 SETTABLEKS                       R8 R7 K11 ["editorCtx"]
       46 GETTABLEKS                       R8 R0 K12 ["blockIndex"]
       48 SETTABLEKS                       R8 R7 K12 ["blockIndex"]
       50 GETTABLEKS                       R8 R0 K13 ["LayoutOrder"]
       52 SETTABLEKS                       R8 R7 K13 ["LayoutOrder"]
       54 RETURN                           R7 1

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
       16 GETTABLEKS                       R4 R0 K8 ["BuilderIcons"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R1 K9 ["template"]
       21 GETTABLEKS                       R5 R1 K10 ["Frame"]
       23 GETTABLEKS                       R6 R1 K11 ["TextLabel"]
       25 GETTABLEKS                       R7 R1 K12 ["TextButton"]
       27 GETTABLEKS                       R8 R1 K13 ["If"]
       29 GETIMPORT                        R9 K5 [require]
       31 GETIMPORT                        R10 K1 [script]
       33 GETTABLEKS                       R10 R10 K14 ["Parent"]
       35 GETTABLEKS                       R10 R10 K15 ["InlineContent"]
       37 CALL                             R9 1 1
       38 MOVE                             R10 R4
       39 LOADK                            R11 K16 ["MarkdownCheckboxItem"]
       40 DUPTABLE                         R12 K23 [{"node", "linkCallback", "editorCtx", "blockIndex", "itemIndex", "LayoutOrder"}]
       41 NEWTABLE                         R13 0 0
       43 SETTABLEKS                       R13 R12 K17 ["node"]
       45 LOADNIL                          R13
       46 SETTABLEKS                       R13 R12 K18 ["linkCallback"]
       48 LOADNIL                          R13
       49 SETTABLEKS                       R13 R12 K19 ["editorCtx"]
       51 LOADN                            R13 0
       52 SETTABLEKS                       R13 R12 K20 ["blockIndex"]
       54 LOADN                            R13 0
       55 SETTABLEKS                       R13 R12 K21 ["itemIndex"]
       57 LOADN                            R13 0
       58 SETTABLEKS                       R13 R12 K22 ["LayoutOrder"]
       60 NEWTABLE                         R13 0 1
       62 MOVE                             R14 R5
       63 NEWTABLE                         R15 2 2
       65 LOADK                            R18 K24 ["md-checkbox-item auto-y fill-x"]
       66 SETTABLEKS                       R18 R15 K25 ["Tags"]
       68 MOVE                             R18 R2
       69 LOADK                            R19 K22 ["LayoutOrder"]
       70 CALL                             R18 1 1
       71 SETTABLEKS                       R18 R15 K22 ["LayoutOrder"]
       73 MOVE                             R16 R5
       74 NEWTABLE                         R17 2 2
       76 MOVE                             R20 R2
       77 LOADK                            R21 K26 ["checkboxTags"]
       78 CALL                             R20 1 1
       79 SETTABLEKS                       R20 R17 K25 ["Tags"]
       81 LOADN                            R20 1
       82 SETTABLEKS                       R20 R17 K22 ["LayoutOrder"]
       84 MOVE                             R18 R8
       85 DUPTABLE                         R19 K30 [{"when", "order", "Then"}]
       86 MOVE                             R20 R2
       87 LOADK                            R21 K31 ["isChecked"]
       88 CALL                             R20 1 1
       89 SETTABLEKS                       R20 R19 K27 ["when"]
       91 LOADN                            R20 1
       92 SETTABLEKS                       R20 R19 K28 ["order"]
       94 MOVE                             R20 R4
       95 NEWTABLE                         R21 0 1
       97 MOVE                             R22 R6
       98 DUPTABLE                         R23 K34 [{"Tags", "Text", "FontFace"}]
       99 LOADK                            R24 K35 ["md-checkbox-mark"]
      100 SETTABLEKS                       R24 R23 K25 ["Tags"]
      102 GETTABLEKS                       R24 R3 K36 ["Icon"]
      104 GETTABLEKS                       R24 R24 K37 ["Check"]
      106 SETTABLEKS                       R24 R23 K32 ["Text"]
      108 GETTABLEKS                       R25 R3 K38 ["Font"]
      110 GETTABLEKS                       R26 R3 K39 ["IconVariant"]
      112 GETTABLEKS                       R26 R26 K40 ["Filled"]
      114 GETTABLE                         R24 R25 R26
      115 SETTABLEKS                       R24 R23 K33 ["FontFace"]
      117 CALL                             R22 1 -1
      118 SETLIST                          R21 R22 -1 [1]
      120 CALL                             R20 1 1
      121 SETTABLEKS                       R20 R19 K29 ["Then"]
      123 CALL                             R18 1 1
      124 MOVE                             R19 R7
      125 DUPTABLE                         R20 K45 [{"Size", "BackgroundTransparency", "Text", "ZIndex", "OnActivated"}]
      126 GETIMPORT                        R21 K48 [UDim2.new]
      128 LOADN                            R22 1
      129 LOADN                            R23 0
      130 LOADN                            R24 1
      131 LOADN                            R25 0
      132 CALL                             R21 4 1
      133 SETTABLEKS                       R21 R20 K41 ["Size"]
      135 LOADN                            R21 1
      136 SETTABLEKS                       R21 R20 K42 ["BackgroundTransparency"]
      138 LOADK                            R21 K49 [""]
      139 SETTABLEKS                       R21 R20 K32 ["Text"]
      141 LOADN                            R21 2
      142 SETTABLEKS                       R21 R20 K43 ["ZIndex"]
      144 MOVE                             R21 R2
      145 LOADK                            R22 K50 ["onToggle"]
      146 CALL                             R21 1 1
      147 SETTABLEKS                       R21 R20 K44 ["OnActivated"]
      149 CALL                             R19 1 -1
      150 SETLIST                          R17 R18 -1 [1]
      152 CALL                             R16 1 1
      153 MOVE                             R17 R5
      154 NEWTABLE                         R18 4 1
      156 LOADK                            R20 K51 ["box auto-y"]
      157 SETTABLEKS                       R20 R18 K25 ["Tags"]
      159 GETIMPORT                        R20 K48 [UDim2.new]
      161 LOADN                            R21 1
      162 LOADN                            R22 226
      163 LOADN                            R23 0
      164 LOADN                            R24 0
      165 CALL                             R20 4 1
      166 SETTABLEKS                       R20 R18 K41 ["Size"]
      168 LOADN                            R20 2
      169 SETTABLEKS                       R20 R18 K22 ["LayoutOrder"]
      171 MOVE                             R19 R9
      172 DUPTABLE                         R20 K54 [{"nodes", "linkCallback", "editorCtx", "blockIndex", "path", "LayoutOrder"}]
      173 MOVE                             R21 R2
      174 LOADK                            R22 K55 ["node.children"]
      175 CALL                             R21 1 1
      176 SETTABLEKS                       R21 R20 K52 ["nodes"]
      178 MOVE                             R21 R2
      179 LOADK                            R22 K18 ["linkCallback"]
      180 CALL                             R21 1 1
      181 SETTABLEKS                       R21 R20 K18 ["linkCallback"]
      183 MOVE                             R21 R2
      184 LOADK                            R22 K19 ["editorCtx"]
      185 CALL                             R21 1 1
      186 SETTABLEKS                       R21 R20 K19 ["editorCtx"]
      188 MOVE                             R21 R2
      189 LOADK                            R22 K20 ["blockIndex"]
      190 CALL                             R21 1 1
      191 SETTABLEKS                       R21 R20 K20 ["blockIndex"]
      193 MOVE                             R21 R2
      194 LOADK                            R22 K56 ["itemPath"]
      195 CALL                             R21 1 1
      196 SETTABLEKS                       R21 R20 K53 ["path"]
      198 LOADN                            R21 1
      199 SETTABLEKS                       R21 R20 K22 ["LayoutOrder"]
      201 CALL                             R19 1 -1
      202 SETLIST                          R18 R19 -1 [1]
      204 CALL                             R17 1 -1
      205 SETLIST                          R15 R16 -1 [1]
      207 CALL                             R14 1 -1
      208 SETLIST                          R13 R14 -1 [1]
      210 DUPCLOSURE                       R14 K57 [PROTO_4]
      211 CALL                             R10 4 1
      212 RETURN                           R10 1
