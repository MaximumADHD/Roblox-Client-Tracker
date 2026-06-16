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
        3 LOADK                            R2 K2 ["Packages"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Blox"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K7 ["expr"]
       14 GETTABLEKS                       R3 R1 K8 ["template"]
       16 GETTABLEKS                       R4 R1 K9 ["Frame"]
       18 GETTABLEKS                       R5 R1 K10 ["For"]
       20 GETTABLEKS                       R6 R1 K11 ["If"]
       22 GETIMPORT                        R7 K5 [require]
       24 GETIMPORT                        R8 K1 [script]
       26 GETTABLEKS                       R8 R8 K12 ["Parent"]
       28 GETTABLEKS                       R8 R8 K13 ["MarkdownListItem"]
       30 CALL                             R7 1 1
       31 GETIMPORT                        R8 K5 [require]
       33 GETIMPORT                        R9 K1 [script]
       35 GETTABLEKS                       R9 R9 K12 ["Parent"]
       37 GETTABLEKS                       R9 R9 K14 ["MarkdownCheckboxItem"]
       39 CALL                             R8 1 1
       40 MOVE                             R9 R3
       41 LOADK                            R10 K15 ["MarkdownList"]
       42 DUPTABLE                         R11 K21 [{"node", "linkCallback", "editorCtx", "blockIndex", "LayoutOrder"}]
       43 NEWTABLE                         R12 0 0
       45 SETTABLEKS                       R12 R11 K16 ["node"]
       47 LOADNIL                          R12
       48 SETTABLEKS                       R12 R11 K17 ["linkCallback"]
       50 LOADNIL                          R12
       51 SETTABLEKS                       R12 R11 K18 ["editorCtx"]
       53 LOADN                            R12 0
       54 SETTABLEKS                       R12 R11 K19 ["blockIndex"]
       56 LOADN                            R12 0
       57 SETTABLEKS                       R12 R11 K20 ["LayoutOrder"]
       59 NEWTABLE                         R12 0 1
       61 MOVE                             R13 R4
       62 NEWTABLE                         R14 4 1
       64 LOADK                            R16 K22 ["list"]
       65 SETTABLEKS                       R16 R14 K23 ["Name"]
       67 LOADK                            R16 K24 ["md-list auto-y fill-x"]
       68 SETTABLEKS                       R16 R14 K25 ["Tags"]
       70 MOVE                             R16 R2
       71 LOADK                            R17 K20 ["LayoutOrder"]
       72 CALL                             R16 1 1
       73 SETTABLEKS                       R16 R14 K20 ["LayoutOrder"]
       75 MOVE                             R15 R5
       76 DUPTABLE                         R16 K29 [{"items", "keyBy", "Each"}]
       77 MOVE                             R17 R2
       78 LOADK                            R18 K30 ["listItems"]
       79 CALL                             R17 1 1
       80 SETTABLEKS                       R17 R16 K26 ["items"]
       82 DUPCLOSURE                       R17 K31 [PROTO_0]
       83 SETTABLEKS                       R17 R16 K27 ["keyBy"]
       85 MOVE                             R17 R3
       86 NEWTABLE                         R18 0 2
       88 LOADK                            R19 K32 ["idx"]
       89 LOADK                            R20 K33 ["item"]
       90 SETLIST                          R18 R19 2 [1]
       92 NEWTABLE                         R19 0 1
       94 MOVE                             R20 R6
       95 DUPTABLE                         R21 K38 [{"when", "order", "Then", "Else"}]
       96 MOVE                             R22 R2
       97 LOADK                            R23 K39 ["item.attributes and item.attributes.checkbox"]
       98 CALL                             R22 1 1
       99 SETTABLEKS                       R22 R21 K34 ["when"]
      101 MOVE                             R22 R2
      102 LOADK                            R23 K32 ["idx"]
      103 CALL                             R22 1 1
      104 SETTABLEKS                       R22 R21 K35 ["order"]
      106 MOVE                             R22 R3
      107 NEWTABLE                         R23 0 1
      109 MOVE                             R24 R8
      110 DUPTABLE                         R25 K41 [{"node", "linkCallback", "editorCtx", "blockIndex", "itemIndex", "LayoutOrder"}]
      111 MOVE                             R26 R2
      112 LOADK                            R27 K33 ["item"]
      113 CALL                             R26 1 1
      114 SETTABLEKS                       R26 R25 K16 ["node"]
      116 MOVE                             R26 R2
      117 LOADK                            R27 K17 ["linkCallback"]
      118 CALL                             R26 1 1
      119 SETTABLEKS                       R26 R25 K17 ["linkCallback"]
      121 MOVE                             R26 R2
      122 LOADK                            R27 K18 ["editorCtx"]
      123 CALL                             R26 1 1
      124 SETTABLEKS                       R26 R25 K18 ["editorCtx"]
      126 MOVE                             R26 R2
      127 LOADK                            R27 K19 ["blockIndex"]
      128 CALL                             R26 1 1
      129 SETTABLEKS                       R26 R25 K19 ["blockIndex"]
      131 MOVE                             R26 R2
      132 LOADK                            R27 K32 ["idx"]
      133 CALL                             R26 1 1
      134 SETTABLEKS                       R26 R25 K40 ["itemIndex"]
      136 MOVE                             R26 R2
      137 LOADK                            R27 K32 ["idx"]
      138 CALL                             R26 1 1
      139 SETTABLEKS                       R26 R25 K20 ["LayoutOrder"]
      141 CALL                             R24 1 -1
      142 SETLIST                          R23 R24 -1 [1]
      144 CALL                             R22 1 1
      145 SETTABLEKS                       R22 R21 K36 ["Then"]
      147 MOVE                             R22 R3
      148 NEWTABLE                         R23 0 1
      150 MOVE                             R24 R7
      151 DUPTABLE                         R25 K41 [{"node", "linkCallback", "editorCtx", "blockIndex", "itemIndex", "LayoutOrder"}]
      152 MOVE                             R26 R2
      153 LOADK                            R27 K33 ["item"]
      154 CALL                             R26 1 1
      155 SETTABLEKS                       R26 R25 K16 ["node"]
      157 MOVE                             R26 R2
      158 LOADK                            R27 K17 ["linkCallback"]
      159 CALL                             R26 1 1
      160 SETTABLEKS                       R26 R25 K17 ["linkCallback"]
      162 MOVE                             R26 R2
      163 LOADK                            R27 K18 ["editorCtx"]
      164 CALL                             R26 1 1
      165 SETTABLEKS                       R26 R25 K18 ["editorCtx"]
      167 MOVE                             R26 R2
      168 LOADK                            R27 K19 ["blockIndex"]
      169 CALL                             R26 1 1
      170 SETTABLEKS                       R26 R25 K19 ["blockIndex"]
      172 MOVE                             R26 R2
      173 LOADK                            R27 K32 ["idx"]
      174 CALL                             R26 1 1
      175 SETTABLEKS                       R26 R25 K40 ["itemIndex"]
      177 MOVE                             R26 R2
      178 LOADK                            R27 K32 ["idx"]
      179 CALL                             R26 1 1
      180 SETTABLEKS                       R26 R25 K20 ["LayoutOrder"]
      182 CALL                             R24 1 -1
      183 SETLIST                          R23 R24 -1 [1]
      185 CALL                             R22 1 1
      186 SETTABLEKS                       R22 R21 K37 ["Else"]
      188 CALL                             R20 1 -1
      189 SETLIST                          R19 R20 -1 [1]
      191 CALL                             R17 2 1
      192 SETTABLEKS                       R17 R16 K28 ["Each"]
      194 CALL                             R15 1 -1
      195 SETLIST                          R14 R15 -1 [1]
      197 CALL                             R13 1 -1
      198 SETLIST                          R12 R13 -1 [1]
      200 DUPCLOSURE                       R13 K42 [PROTO_1]
      201 CALL                             R9 4 1
      202 RETURN                           R9 1
