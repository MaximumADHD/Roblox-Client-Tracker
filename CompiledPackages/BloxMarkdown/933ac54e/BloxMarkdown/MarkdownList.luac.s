PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["index"]
        2 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["peek"]
        2 MOVE                             R3 R2
        3 GETTABLEKS                       R4 R0 K1 ["editorCtx"]
        5 CALL                             R3 1 1
        6 MOVE                             R4 R2
        7 GETTABLEKS                       R5 R0 K2 ["blockIndex"]
        9 CALL                             R4 1 1
       10 LOADNIL                          R5
       11 JUMPIFNOT                        R3 ; [+9]
       12 GETTABLEKS                       R6 R3 K3 ["blockStore"]
       14 JUMPIFNOT                        R6 ; [+6]
       15 GETTABLEKS                       R7 R3 K3 ["blockStore"]
       17 GETTABLE                         R6 R7 R4
       18 GETTABLEKS                       R5 R6 K4 ["children"]
       20 JUMP                             ; [+10]
       21 MOVE                             R6 R2
       22 GETTABLEKS                       R7 R0 K5 ["node"]
       24 CALL                             R6 1 1
       25 GETTABLEKS                       R7 R6 K4 ["children"]
       27 JUMPIF                           R7 ; [+2]
       28 NEWTABLE                         R7 0 0
       30 MOVE                             R5 R7
       31 DUPTABLE                         R6 K9 [{"listItems", "linkCallback", "editorCtx", "blockIndex", "LayoutOrder"}]
       32 SETTABLEKS                       R5 R6 K6 ["listItems"]
       34 GETTABLEKS                       R7 R0 K7 ["linkCallback"]
       36 SETTABLEKS                       R7 R6 K7 ["linkCallback"]
       38 GETTABLEKS                       R7 R0 K1 ["editorCtx"]
       40 SETTABLEKS                       R7 R6 K1 ["editorCtx"]
       42 GETTABLEKS                       R7 R0 K2 ["blockIndex"]
       44 SETTABLEKS                       R7 R6 K2 ["blockIndex"]
       46 GETTABLEKS                       R7 R0 K8 ["LayoutOrder"]
       48 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       50 RETURN                           R6 1

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
       16 GETTABLEKS                       R4 R2 K9 ["template"]
       18 GETTABLEKS                       R5 R2 K10 ["Frame"]
       20 GETTABLEKS                       R6 R2 K11 ["For"]
       22 GETTABLEKS                       R7 R2 K12 ["If"]
       24 GETIMPORT                        R8 K6 [require]
       26 GETIMPORT                        R9 K1 [script]
       28 GETTABLEKS                       R9 R9 K4 ["Parent"]
       30 GETTABLEKS                       R9 R9 K13 ["MarkdownListItem"]
       32 CALL                             R8 1 1
       33 GETIMPORT                        R9 K6 [require]
       35 GETIMPORT                        R10 K1 [script]
       37 GETTABLEKS                       R10 R10 K4 ["Parent"]
       39 GETTABLEKS                       R10 R10 K14 ["MarkdownCheckboxItem"]
       41 CALL                             R9 1 1
       42 MOVE                             R10 R4
       43 LOADK                            R11 K15 ["MarkdownList"]
       44 DUPTABLE                         R12 K23 [{["node"], ["linkCallback"] = , ["editorCtx"] = , ["blockIndex"] = 0, ["LayoutOrder"] = 0}]
       45 NEWTABLE                         R13 0 0
       47 SETTABLEKS                       R13 R12 K16 ["node"]
       49 NEWTABLE                         R13 0 1
       51 MOVE                             R14 R5
       52 NEWTABLE                         R15 4 1
       54 LOADK                            R17 K24 ["list"]
       55 SETTABLEKS                       R17 R15 K25 ["Name"]
       57 LOADK                            R17 K26 ["md-list auto-y fill-x"]
       58 SETTABLEKS                       R17 R15 K27 ["Tags"]
       60 MOVE                             R17 R3
       61 LOADK                            R18 K22 ["LayoutOrder"]
       62 CALL                             R17 1 1
       63 SETTABLEKS                       R17 R15 K22 ["LayoutOrder"]
       65 MOVE                             R16 R6
       66 DUPTABLE                         R17 K31 [{"items", "keyBy", "Each"}]
       67 MOVE                             R18 R3
       68 LOADK                            R19 K32 ["listItems"]
       69 CALL                             R18 1 1
       70 SETTABLEKS                       R18 R17 K28 ["items"]
       72 DUPCLOSURE                       R18 K33 [PROTO_0]
       73 SETTABLEKS                       R18 R17 K29 ["keyBy"]
       75 MOVE                             R18 R4
       76 NEWTABLE                         R19 0 2
       78 LOADK                            R20 K34 ["idx"]
       79 LOADK                            R21 K35 ["item"]
       80 SETLIST                          R19 R20 2 [1]
       82 NEWTABLE                         R20 0 1
       84 MOVE                             R21 R7
       85 DUPTABLE                         R22 K40 [{"when", "order", "Then", "Else"}]
       86 MOVE                             R23 R3
       87 LOADK                            R24 K41 ["item.attributes and item.attributes.checkbox"]
       88 CALL                             R23 1 1
       89 SETTABLEKS                       R23 R22 K36 ["when"]
       91 MOVE                             R23 R3
       92 LOADK                            R24 K34 ["idx"]
       93 CALL                             R23 1 1
       94 SETTABLEKS                       R23 R22 K37 ["order"]
       96 MOVE                             R23 R4
       97 NEWTABLE                         R24 0 1
       99 MOVE                             R25 R9
      100 DUPTABLE                         R26 K43 [{"node", "linkCallback", "editorCtx", "blockIndex", "itemIndex", "LayoutOrder"}]
      101 MOVE                             R27 R3
      102 LOADK                            R28 K35 ["item"]
      103 CALL                             R27 1 1
      104 SETTABLEKS                       R27 R26 K16 ["node"]
      106 MOVE                             R27 R3
      107 LOADK                            R28 K17 ["linkCallback"]
      108 CALL                             R27 1 1
      109 SETTABLEKS                       R27 R26 K17 ["linkCallback"]
      111 MOVE                             R27 R3
      112 LOADK                            R28 K19 ["editorCtx"]
      113 CALL                             R27 1 1
      114 SETTABLEKS                       R27 R26 K19 ["editorCtx"]
      116 MOVE                             R27 R3
      117 LOADK                            R28 K20 ["blockIndex"]
      118 CALL                             R27 1 1
      119 SETTABLEKS                       R27 R26 K20 ["blockIndex"]
      121 MOVE                             R27 R3
      122 LOADK                            R28 K34 ["idx"]
      123 CALL                             R27 1 1
      124 SETTABLEKS                       R27 R26 K42 ["itemIndex"]
      126 MOVE                             R27 R3
      127 LOADK                            R28 K34 ["idx"]
      128 CALL                             R27 1 1
      129 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      131 CALL                             R25 1 -1
      132 SETLIST                          R24 R25 -1 [1]
      134 CALL                             R23 1 1
      135 SETTABLEKS                       R23 R22 K38 ["Then"]
      137 MOVE                             R23 R4
      138 NEWTABLE                         R24 0 1
      140 MOVE                             R25 R8
      141 DUPTABLE                         R26 K43 [{"node", "linkCallback", "editorCtx", "blockIndex", "itemIndex", "LayoutOrder"}]
      142 MOVE                             R27 R3
      143 LOADK                            R28 K35 ["item"]
      144 CALL                             R27 1 1
      145 SETTABLEKS                       R27 R26 K16 ["node"]
      147 MOVE                             R27 R3
      148 LOADK                            R28 K17 ["linkCallback"]
      149 CALL                             R27 1 1
      150 SETTABLEKS                       R27 R26 K17 ["linkCallback"]
      152 MOVE                             R27 R3
      153 LOADK                            R28 K19 ["editorCtx"]
      154 CALL                             R27 1 1
      155 SETTABLEKS                       R27 R26 K19 ["editorCtx"]
      157 MOVE                             R27 R3
      158 LOADK                            R28 K20 ["blockIndex"]
      159 CALL                             R27 1 1
      160 SETTABLEKS                       R27 R26 K20 ["blockIndex"]
      162 MOVE                             R27 R3
      163 LOADK                            R28 K34 ["idx"]
      164 CALL                             R27 1 1
      165 SETTABLEKS                       R27 R26 K42 ["itemIndex"]
      167 MOVE                             R27 R3
      168 LOADK                            R28 K34 ["idx"]
      169 CALL                             R27 1 1
      170 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      172 CALL                             R25 1 -1
      173 SETLIST                          R24 R25 -1 [1]
      175 CALL                             R23 1 1
      176 SETTABLEKS                       R23 R22 K39 ["Else"]
      178 CALL                             R21 1 -1
      179 SETLIST                          R20 R21 -1 [1]
      181 CALL                             R18 2 1
      182 SETTABLEKS                       R18 R17 K30 ["Each"]
      184 CALL                             R16 1 -1
      185 SETLIST                          R15 R16 -1 [1]
      187 CALL                             R14 1 -1
      188 SETLIST                          R13 R14 -1 [1]
      190 DUPCLOSURE                       R14 K44 [PROTO_1]
      191 CALL                             R10 4 1
      192 RETURN                           R10 1
