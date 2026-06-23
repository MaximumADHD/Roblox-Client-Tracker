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
       44 DUPTABLE                         R12 K21 [{"node", "linkCallback", "editorCtx", "blockIndex", "LayoutOrder"}]
       45 NEWTABLE                         R13 0 0
       47 SETTABLEKS                       R13 R12 K16 ["node"]
       49 LOADNIL                          R13
       50 SETTABLEKS                       R13 R12 K17 ["linkCallback"]
       52 LOADNIL                          R13
       53 SETTABLEKS                       R13 R12 K18 ["editorCtx"]
       55 LOADN                            R13 0
       56 SETTABLEKS                       R13 R12 K19 ["blockIndex"]
       58 LOADN                            R13 0
       59 SETTABLEKS                       R13 R12 K20 ["LayoutOrder"]
       61 NEWTABLE                         R13 0 1
       63 MOVE                             R14 R5
       64 NEWTABLE                         R15 4 1
       66 LOADK                            R17 K22 ["list"]
       67 SETTABLEKS                       R17 R15 K23 ["Name"]
       69 LOADK                            R17 K24 ["md-list auto-y fill-x"]
       70 SETTABLEKS                       R17 R15 K25 ["Tags"]
       72 MOVE                             R17 R3
       73 LOADK                            R18 K20 ["LayoutOrder"]
       74 CALL                             R17 1 1
       75 SETTABLEKS                       R17 R15 K20 ["LayoutOrder"]
       77 MOVE                             R16 R6
       78 DUPTABLE                         R17 K29 [{"items", "keyBy", "Each"}]
       79 MOVE                             R18 R3
       80 LOADK                            R19 K30 ["listItems"]
       81 CALL                             R18 1 1
       82 SETTABLEKS                       R18 R17 K26 ["items"]
       84 DUPCLOSURE                       R18 K31 [PROTO_0]
       85 SETTABLEKS                       R18 R17 K27 ["keyBy"]
       87 MOVE                             R18 R4
       88 NEWTABLE                         R19 0 2
       90 LOADK                            R20 K32 ["idx"]
       91 LOADK                            R21 K33 ["item"]
       92 SETLIST                          R19 R20 2 [1]
       94 NEWTABLE                         R20 0 1
       96 MOVE                             R21 R7
       97 DUPTABLE                         R22 K38 [{"when", "order", "Then", "Else"}]
       98 MOVE                             R23 R3
       99 LOADK                            R24 K39 ["item.attributes and item.attributes.checkbox"]
      100 CALL                             R23 1 1
      101 SETTABLEKS                       R23 R22 K34 ["when"]
      103 MOVE                             R23 R3
      104 LOADK                            R24 K32 ["idx"]
      105 CALL                             R23 1 1
      106 SETTABLEKS                       R23 R22 K35 ["order"]
      108 MOVE                             R23 R4
      109 NEWTABLE                         R24 0 1
      111 MOVE                             R25 R9
      112 DUPTABLE                         R26 K41 [{"node", "linkCallback", "editorCtx", "blockIndex", "itemIndex", "LayoutOrder"}]
      113 MOVE                             R27 R3
      114 LOADK                            R28 K33 ["item"]
      115 CALL                             R27 1 1
      116 SETTABLEKS                       R27 R26 K16 ["node"]
      118 MOVE                             R27 R3
      119 LOADK                            R28 K17 ["linkCallback"]
      120 CALL                             R27 1 1
      121 SETTABLEKS                       R27 R26 K17 ["linkCallback"]
      123 MOVE                             R27 R3
      124 LOADK                            R28 K18 ["editorCtx"]
      125 CALL                             R27 1 1
      126 SETTABLEKS                       R27 R26 K18 ["editorCtx"]
      128 MOVE                             R27 R3
      129 LOADK                            R28 K19 ["blockIndex"]
      130 CALL                             R27 1 1
      131 SETTABLEKS                       R27 R26 K19 ["blockIndex"]
      133 MOVE                             R27 R3
      134 LOADK                            R28 K32 ["idx"]
      135 CALL                             R27 1 1
      136 SETTABLEKS                       R27 R26 K40 ["itemIndex"]
      138 MOVE                             R27 R3
      139 LOADK                            R28 K32 ["idx"]
      140 CALL                             R27 1 1
      141 SETTABLEKS                       R27 R26 K20 ["LayoutOrder"]
      143 CALL                             R25 1 -1
      144 SETLIST                          R24 R25 -1 [1]
      146 CALL                             R23 1 1
      147 SETTABLEKS                       R23 R22 K36 ["Then"]
      149 MOVE                             R23 R4
      150 NEWTABLE                         R24 0 1
      152 MOVE                             R25 R8
      153 DUPTABLE                         R26 K41 [{"node", "linkCallback", "editorCtx", "blockIndex", "itemIndex", "LayoutOrder"}]
      154 MOVE                             R27 R3
      155 LOADK                            R28 K33 ["item"]
      156 CALL                             R27 1 1
      157 SETTABLEKS                       R27 R26 K16 ["node"]
      159 MOVE                             R27 R3
      160 LOADK                            R28 K17 ["linkCallback"]
      161 CALL                             R27 1 1
      162 SETTABLEKS                       R27 R26 K17 ["linkCallback"]
      164 MOVE                             R27 R3
      165 LOADK                            R28 K18 ["editorCtx"]
      166 CALL                             R27 1 1
      167 SETTABLEKS                       R27 R26 K18 ["editorCtx"]
      169 MOVE                             R27 R3
      170 LOADK                            R28 K19 ["blockIndex"]
      171 CALL                             R27 1 1
      172 SETTABLEKS                       R27 R26 K19 ["blockIndex"]
      174 MOVE                             R27 R3
      175 LOADK                            R28 K32 ["idx"]
      176 CALL                             R27 1 1
      177 SETTABLEKS                       R27 R26 K40 ["itemIndex"]
      179 MOVE                             R27 R3
      180 LOADK                            R28 K32 ["idx"]
      181 CALL                             R27 1 1
      182 SETTABLEKS                       R27 R26 K20 ["LayoutOrder"]
      184 CALL                             R25 1 -1
      185 SETLIST                          R24 R25 -1 [1]
      187 CALL                             R23 1 1
      188 SETTABLEKS                       R23 R22 K37 ["Else"]
      190 CALL                             R21 1 -1
      191 SETLIST                          R20 R21 -1 [1]
      193 CALL                             R18 2 1
      194 SETTABLEKS                       R18 R17 K28 ["Each"]
      196 CALL                             R16 1 -1
      197 SETLIST                          R15 R16 -1 [1]
      199 CALL                             R14 1 -1
      200 SETLIST                          R13 R14 -1 [1]
      202 DUPCLOSURE                       R14 K42 [PROTO_1]
      203 CALL                             R10 4 1
      204 RETURN                           R10 1
