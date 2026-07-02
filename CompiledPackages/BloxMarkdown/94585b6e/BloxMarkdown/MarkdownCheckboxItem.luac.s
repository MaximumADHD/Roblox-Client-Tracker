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
        3 LOADK                            R2 K2 ["BloxMarkdown"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Blox"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["expr"]
       16 GETIMPORT                        R4 K6 [require]
       18 GETTABLEKS                       R5 R1 K9 ["BuilderIcons"]
       20 CALL                             R4 1 1
       21 GETTABLEKS                       R5 R2 K10 ["template"]
       23 GETTABLEKS                       R6 R2 K11 ["Frame"]
       25 GETTABLEKS                       R7 R2 K12 ["TextLabel"]
       27 GETTABLEKS                       R8 R2 K13 ["TextButton"]
       29 GETTABLEKS                       R9 R2 K14 ["If"]
       31 GETIMPORT                        R10 K6 [require]
       33 GETIMPORT                        R11 K1 [script]
       35 GETTABLEKS                       R11 R11 K4 ["Parent"]
       37 GETTABLEKS                       R11 R11 K15 ["InlineContent"]
       39 CALL                             R10 1 1
       40 MOVE                             R11 R5
       41 LOADK                            R12 K16 ["MarkdownCheckboxItem"]
       42 DUPTABLE                         R13 K25 [{["node"], ["linkCallback"] = , ["editorCtx"] = , ["blockIndex"] = 0, ["itemIndex"] = 0, ["LayoutOrder"] = 0}]
       43 NEWTABLE                         R14 0 0
       45 SETTABLEKS                       R14 R13 K17 ["node"]
       47 NEWTABLE                         R14 0 1
       49 MOVE                             R15 R6
       50 NEWTABLE                         R16 2 2
       52 LOADK                            R19 K26 ["md-checkbox-item auto-y fill-x"]
       53 SETTABLEKS                       R19 R16 K27 ["Tags"]
       55 MOVE                             R19 R3
       56 LOADK                            R20 K24 ["LayoutOrder"]
       57 CALL                             R19 1 1
       58 SETTABLEKS                       R19 R16 K24 ["LayoutOrder"]
       60 MOVE                             R17 R6
       61 NEWTABLE                         R18 2 2
       63 MOVE                             R21 R3
       64 LOADK                            R22 K28 ["checkboxTags"]
       65 CALL                             R21 1 1
       66 SETTABLEKS                       R21 R18 K27 ["Tags"]
       68 LOADN                            R21 1
       69 SETTABLEKS                       R21 R18 K24 ["LayoutOrder"]
       71 MOVE                             R19 R9
       72 DUPTABLE                         R20 K33 [{["when"], ["order"] = 1, ["Then"]}]
       73 MOVE                             R21 R3
       74 LOADK                            R22 K34 ["isChecked"]
       75 CALL                             R21 1 1
       76 SETTABLEKS                       R21 R20 K29 ["when"]
       78 MOVE                             R21 R5
       79 NEWTABLE                         R22 0 1
       81 MOVE                             R23 R7
       82 DUPTABLE                         R24 K38 [{["Tags"] = "md-checkbox-mark", ["Text"], ["FontFace"]}]
       83 GETTABLEKS                       R25 R4 K39 ["Icon"]
       85 GETTABLEKS                       R25 R25 K40 ["Check"]
       87 SETTABLEKS                       R25 R24 K36 ["Text"]
       89 GETTABLEKS                       R26 R4 K41 ["Font"]
       91 GETTABLEKS                       R27 R4 K42 ["IconVariant"]
       93 GETTABLEKS                       R27 R27 K43 ["Filled"]
       95 GETTABLE                         R25 R26 R27
       96 SETTABLEKS                       R25 R24 K37 ["FontFace"]
       98 CALL                             R23 1 -1
       99 SETLIST                          R22 R23 -1 [1]
      101 CALL                             R21 1 1
      102 SETTABLEKS                       R21 R20 K32 ["Then"]
      104 CALL                             R19 1 1
      105 MOVE                             R20 R8
      106 DUPTABLE                         R21 K50 [{["Size"], ["BackgroundTransparency"] = 1, ["Text"] = "", ["ZIndex"] = 2, ["OnActivated"]}]
      107 GETIMPORT                        R22 K53 [UDim2.new]
      109 LOADN                            R23 1
      110 LOADN                            R24 0
      111 LOADN                            R25 1
      112 LOADN                            R26 0
      113 CALL                             R22 4 1
      114 SETTABLEKS                       R22 R21 K44 ["Size"]
      116 MOVE                             R22 R3
      117 LOADK                            R23 K54 ["onToggle"]
      118 CALL                             R22 1 1
      119 SETTABLEKS                       R22 R21 K49 ["OnActivated"]
      121 CALL                             R20 1 -1
      122 SETLIST                          R18 R19 -1 [1]
      124 CALL                             R17 1 1
      125 MOVE                             R18 R6
      126 NEWTABLE                         R19 4 1
      128 LOADK                            R21 K55 ["box auto-y"]
      129 SETTABLEKS                       R21 R19 K27 ["Tags"]
      131 GETIMPORT                        R21 K53 [UDim2.new]
      133 LOADN                            R22 1
      134 LOADN                            R23 -30
      135 LOADN                            R24 0
      136 LOADN                            R25 0
      137 CALL                             R21 4 1
      138 SETTABLEKS                       R21 R19 K44 ["Size"]
      140 LOADN                            R21 2
      141 SETTABLEKS                       R21 R19 K24 ["LayoutOrder"]
      143 MOVE                             R20 R10
      144 DUPTABLE                         R21 K58 [{["nodes"], ["linkCallback"], ["editorCtx"], ["blockIndex"], ["path"], ["LayoutOrder"] = 1}]
      145 MOVE                             R22 R3
      146 LOADK                            R23 K59 ["node.children"]
      147 CALL                             R22 1 1
      148 SETTABLEKS                       R22 R21 K56 ["nodes"]
      150 MOVE                             R22 R3
      151 LOADK                            R23 K18 ["linkCallback"]
      152 CALL                             R22 1 1
      153 SETTABLEKS                       R22 R21 K18 ["linkCallback"]
      155 MOVE                             R22 R3
      156 LOADK                            R23 K20 ["editorCtx"]
      157 CALL                             R22 1 1
      158 SETTABLEKS                       R22 R21 K20 ["editorCtx"]
      160 MOVE                             R22 R3
      161 LOADK                            R23 K21 ["blockIndex"]
      162 CALL                             R22 1 1
      163 SETTABLEKS                       R22 R21 K21 ["blockIndex"]
      165 MOVE                             R22 R3
      166 LOADK                            R23 K60 ["itemPath"]
      167 CALL                             R22 1 1
      168 SETTABLEKS                       R22 R21 K57 ["path"]
      170 CALL                             R20 1 -1
      171 SETLIST                          R19 R20 -1 [1]
      173 CALL                             R18 1 -1
      174 SETLIST                          R16 R17 -1 [1]
      176 CALL                             R15 1 -1
      177 SETLIST                          R14 R15 -1 [1]
      179 DUPCLOSURE                       R15 K61 [PROTO_4]
      180 CALL                             R11 4 1
      181 RETURN                           R11 1
