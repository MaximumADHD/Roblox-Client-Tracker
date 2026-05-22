PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["node"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R4 R1 K1 ["name"]
        8 GETTABLE                         R2 R3 R4
        9 JUMPIF                           R2 ; [+6]
       10 GETIMPORT                        R3 K3 [warn]
       12 LOADK                            R4 K4 ["[MarkdownBlock] No template for node type:"]
       13 GETTABLEKS                       R5 R1 K1 ["name"]
       15 CALL                             R3 2 0
       16 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["createComputed"]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 LOADK                            R4 K1 ["block-template"]
        6 CALL                             R2 2 1
        7 DUPTABLE                         R3 K10 [{"node", "linkCallback", "editorCtx", "blockIndex", "LayoutOrder", "componentModules", "componentStore", "updateComponentStore"}]
        8 GETTABLEKS                       R4 R0 K2 ["node"]
       10 SETTABLEKS                       R4 R3 K2 ["node"]
       12 GETTABLEKS                       R4 R0 K3 ["linkCallback"]
       14 SETTABLEKS                       R4 R3 K3 ["linkCallback"]
       16 GETTABLEKS                       R4 R0 K4 ["editorCtx"]
       18 SETTABLEKS                       R4 R3 K4 ["editorCtx"]
       20 GETTABLEKS                       R4 R0 K5 ["blockIndex"]
       22 SETTABLEKS                       R4 R3 K5 ["blockIndex"]
       24 GETTABLEKS                       R4 R0 K6 ["LayoutOrder"]
       26 SETTABLEKS                       R4 R3 K6 ["LayoutOrder"]
       28 GETTABLEKS                       R4 R0 K7 ["componentModules"]
       30 SETTABLEKS                       R4 R3 K7 ["componentModules"]
       32 GETTABLEKS                       R4 R0 K8 ["componentStore"]
       34 SETTABLEKS                       R4 R3 K8 ["componentStore"]
       36 GETTABLEKS                       R4 R0 K9 ["updateComponentStore"]
       38 SETTABLEKS                       R4 R3 K9 ["updateComponentStore"]
       40 DUPTABLE                         R4 K13 [{"blockTemplate", "blockParams"}]
       41 SETTABLEKS                       R2 R4 K11 ["blockTemplate"]
       43 SETTABLEKS                       R3 R4 K12 ["blockParams"]
       45 RETURN                           R4 1

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
       16 GETTABLEKS                       R4 R1 K9 ["Put"]
       18 DUPTABLE                         R5 K19 [{"HEADING", "PARAGRAPH", "LIST", "CODE_BLOCK", "TABLE", "DIVIDER", "IMAGE", "QUOTE", "COMPONENT"}]
       19 GETIMPORT                        R6 K5 [require]
       21 GETIMPORT                        R7 K1 [script]
       23 GETTABLEKS                       R7 R7 K20 ["Parent"]
       25 GETTABLEKS                       R7 R7 K21 ["MarkdownHeading"]
       27 CALL                             R6 1 1
       28 SETTABLEKS                       R6 R5 K10 ["HEADING"]
       30 GETIMPORT                        R6 K5 [require]
       32 GETIMPORT                        R7 K1 [script]
       34 GETTABLEKS                       R7 R7 K20 ["Parent"]
       36 GETTABLEKS                       R7 R7 K22 ["MarkdownParagraph"]
       38 CALL                             R6 1 1
       39 SETTABLEKS                       R6 R5 K11 ["PARAGRAPH"]
       41 GETIMPORT                        R6 K5 [require]
       43 GETIMPORT                        R7 K1 [script]
       45 GETTABLEKS                       R7 R7 K20 ["Parent"]
       47 GETTABLEKS                       R7 R7 K23 ["MarkdownList"]
       49 CALL                             R6 1 1
       50 SETTABLEKS                       R6 R5 K12 ["LIST"]
       52 GETIMPORT                        R6 K5 [require]
       54 GETIMPORT                        R7 K1 [script]
       56 GETTABLEKS                       R7 R7 K20 ["Parent"]
       58 GETTABLEKS                       R7 R7 K24 ["MarkdownCodeBlock"]
       60 CALL                             R6 1 1
       61 SETTABLEKS                       R6 R5 K13 ["CODE_BLOCK"]
       63 GETIMPORT                        R6 K5 [require]
       65 GETIMPORT                        R7 K1 [script]
       67 GETTABLEKS                       R7 R7 K20 ["Parent"]
       69 GETTABLEKS                       R7 R7 K25 ["MarkdownTable"]
       71 CALL                             R6 1 1
       72 SETTABLEKS                       R6 R5 K14 ["TABLE"]
       74 GETIMPORT                        R6 K5 [require]
       76 GETIMPORT                        R7 K1 [script]
       78 GETTABLEKS                       R7 R7 K20 ["Parent"]
       80 GETTABLEKS                       R7 R7 K26 ["MarkdownDivider"]
       82 CALL                             R6 1 1
       83 SETTABLEKS                       R6 R5 K15 ["DIVIDER"]
       85 GETIMPORT                        R6 K5 [require]
       87 GETIMPORT                        R7 K1 [script]
       89 GETTABLEKS                       R7 R7 K20 ["Parent"]
       91 GETTABLEKS                       R7 R7 K27 ["MarkdownImage"]
       93 CALL                             R6 1 1
       94 SETTABLEKS                       R6 R5 K16 ["IMAGE"]
       96 GETIMPORT                        R6 K5 [require]
       98 GETIMPORT                        R7 K1 [script]
      100 GETTABLEKS                       R7 R7 K20 ["Parent"]
      102 GETTABLEKS                       R7 R7 K28 ["MarkdownQuote"]
      104 CALL                             R6 1 1
      105 SETTABLEKS                       R6 R5 K17 ["QUOTE"]
      107 GETIMPORT                        R6 K5 [require]
      109 GETIMPORT                        R7 K1 [script]
      111 GETTABLEKS                       R7 R7 K20 ["Parent"]
      113 GETTABLEKS                       R7 R7 K29 ["MarkdownComponent"]
      115 CALL                             R6 1 1
      116 SETTABLEKS                       R6 R5 K18 ["COMPONENT"]
      118 MOVE                             R6 R3
      119 LOADK                            R7 K30 ["MarkdownBlock"]
      120 DUPTABLE                         R8 K39 [{"node", "linkCallback", "editorCtx", "blockIndex", "LayoutOrder", "componentModules", "componentStore", "updateComponentStore"}]
      121 NEWTABLE                         R9 0 0
      123 SETTABLEKS                       R9 R8 K31 ["node"]
      125 DUPCLOSURE                       R9 K40 [PROTO_0]
      126 SETTABLEKS                       R9 R8 K32 ["linkCallback"]
      128 LOADNIL                          R9
      129 SETTABLEKS                       R9 R8 K33 ["editorCtx"]
      131 LOADN                            R9 0
      132 SETTABLEKS                       R9 R8 K34 ["blockIndex"]
      134 LOADN                            R9 0
      135 SETTABLEKS                       R9 R8 K35 ["LayoutOrder"]
      137 NEWTABLE                         R9 0 0
      139 SETTABLEKS                       R9 R8 K36 ["componentModules"]
      141 LOADNIL                          R9
      142 SETTABLEKS                       R9 R8 K37 ["componentStore"]
      144 LOADNIL                          R9
      145 SETTABLEKS                       R9 R8 K38 ["updateComponentStore"]
      147 NEWTABLE                         R9 0 1
      149 MOVE                             R10 R4
      150 DUPTABLE                         R11 K43 [{"Template", "params"}]
      151 MOVE                             R12 R2
      152 LOADK                            R13 K44 ["blockTemplate"]
      153 CALL                             R12 1 1
      154 SETTABLEKS                       R12 R11 K41 ["Template"]
      156 MOVE                             R12 R2
      157 LOADK                            R13 K45 ["blockParams"]
      158 CALL                             R12 1 1
      159 SETTABLEKS                       R12 R11 K42 ["params"]
      161 CALL                             R10 1 -1
      162 SETLIST                          R9 R10 -1 [1]
      164 DUPCLOSURE                       R10 K46 [PROTO_2]
      165 CAPTURE                          VAL R5
      166 CALL                             R6 4 1
      167 RETURN                           R6 1
