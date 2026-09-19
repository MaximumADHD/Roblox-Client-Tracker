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
        9 JUMPIF                           R2 ; [+16]
       10 GETUPVAL                         R3 2
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K2 ["onWarn"]
       14 CALL                             R3 1 1
       15 JUMPIFNOT                        R3 ; [+10]
       16 MOVE                             R4 R3
       17 LOADK                            R6 K3 ["[MarkdownBlock] No template for node type: "]
       18 GETTABLEKS                       R8 R1 K1 ["name"]
       20 FASTCALL1                        TOSTRING R8 ; [+2]
       21 GETIMPORT                        R7 K5 [tostring]
       23 CALL                             R7 1 1
       24 CONCAT                           R5 R6 R7
       25 CALL                             R4 1 0
       26 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["peek"]
        2 GETTABLEKS                       R3 R1 K1 ["createComputed"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R2
        8 LOADK                            R5 K2 ["block-template"]
        9 CALL                             R3 2 1
       10 DUPTABLE                         R4 K12 [{"node", "linkCallback", "editorCtx", "blockIndex", "LayoutOrder", "componentModules", "componentStore", "updateComponentStore", "onWarn"}]
       11 GETTABLEKS                       R5 R0 K3 ["node"]
       13 SETTABLEKS                       R5 R4 K3 ["node"]
       15 GETTABLEKS                       R5 R0 K4 ["linkCallback"]
       17 SETTABLEKS                       R5 R4 K4 ["linkCallback"]
       19 GETTABLEKS                       R5 R0 K5 ["editorCtx"]
       21 SETTABLEKS                       R5 R4 K5 ["editorCtx"]
       23 GETTABLEKS                       R5 R0 K6 ["blockIndex"]
       25 SETTABLEKS                       R5 R4 K6 ["blockIndex"]
       27 GETTABLEKS                       R5 R0 K7 ["LayoutOrder"]
       29 SETTABLEKS                       R5 R4 K7 ["LayoutOrder"]
       31 GETTABLEKS                       R5 R0 K8 ["componentModules"]
       33 SETTABLEKS                       R5 R4 K8 ["componentModules"]
       35 GETTABLEKS                       R5 R0 K9 ["componentStore"]
       37 SETTABLEKS                       R5 R4 K9 ["componentStore"]
       39 GETTABLEKS                       R5 R0 K10 ["updateComponentStore"]
       41 SETTABLEKS                       R5 R4 K10 ["updateComponentStore"]
       43 GETTABLEKS                       R5 R0 K11 ["onWarn"]
       45 SETTABLEKS                       R5 R4 K11 ["onWarn"]
       47 DUPTABLE                         R5 K15 [{"blockTemplate", "blockParams"}]
       48 SETTABLEKS                       R3 R5 K13 ["blockTemplate"]
       50 SETTABLEKS                       R4 R5 K14 ["blockParams"]
       52 RETURN                           R5 1

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
       18 GETTABLEKS                       R5 R2 K10 ["Put"]
       20 DUPTABLE                         R6 K20 [{"HEADING", "PARAGRAPH", "LIST", "CODE_BLOCK", "TABLE", "DIVIDER", "IMAGE", "QUOTE", "COMPONENT"}]
       21 GETIMPORT                        R7 K6 [require]
       23 GETIMPORT                        R8 K1 [script]
       25 GETTABLEKS                       R8 R8 K4 ["Parent"]
       27 GETTABLEKS                       R8 R8 K21 ["MarkdownHeading"]
       29 CALL                             R7 1 1
       30 SETTABLEKS                       R7 R6 K11 ["HEADING"]
       32 GETIMPORT                        R7 K6 [require]
       34 GETIMPORT                        R8 K1 [script]
       36 GETTABLEKS                       R8 R8 K4 ["Parent"]
       38 GETTABLEKS                       R8 R8 K22 ["MarkdownParagraph"]
       40 CALL                             R7 1 1
       41 SETTABLEKS                       R7 R6 K12 ["PARAGRAPH"]
       43 GETIMPORT                        R7 K6 [require]
       45 GETIMPORT                        R8 K1 [script]
       47 GETTABLEKS                       R8 R8 K4 ["Parent"]
       49 GETTABLEKS                       R8 R8 K23 ["MarkdownList"]
       51 CALL                             R7 1 1
       52 SETTABLEKS                       R7 R6 K13 ["LIST"]
       54 GETIMPORT                        R7 K6 [require]
       56 GETIMPORT                        R8 K1 [script]
       58 GETTABLEKS                       R8 R8 K4 ["Parent"]
       60 GETTABLEKS                       R8 R8 K24 ["MarkdownCodeBlock"]
       62 CALL                             R7 1 1
       63 SETTABLEKS                       R7 R6 K14 ["CODE_BLOCK"]
       65 GETIMPORT                        R7 K6 [require]
       67 GETIMPORT                        R8 K1 [script]
       69 GETTABLEKS                       R8 R8 K4 ["Parent"]
       71 GETTABLEKS                       R8 R8 K25 ["MarkdownTable"]
       73 CALL                             R7 1 1
       74 SETTABLEKS                       R7 R6 K15 ["TABLE"]
       76 GETIMPORT                        R7 K6 [require]
       78 GETIMPORT                        R8 K1 [script]
       80 GETTABLEKS                       R8 R8 K4 ["Parent"]
       82 GETTABLEKS                       R8 R8 K26 ["MarkdownDivider"]
       84 CALL                             R7 1 1
       85 SETTABLEKS                       R7 R6 K16 ["DIVIDER"]
       87 GETIMPORT                        R7 K6 [require]
       89 GETIMPORT                        R8 K1 [script]
       91 GETTABLEKS                       R8 R8 K4 ["Parent"]
       93 GETTABLEKS                       R8 R8 K27 ["MarkdownImage"]
       95 CALL                             R7 1 1
       96 SETTABLEKS                       R7 R6 K17 ["IMAGE"]
       98 GETIMPORT                        R7 K6 [require]
      100 GETIMPORT                        R8 K1 [script]
      102 GETTABLEKS                       R8 R8 K4 ["Parent"]
      104 GETTABLEKS                       R8 R8 K28 ["MarkdownQuote"]
      106 CALL                             R7 1 1
      107 SETTABLEKS                       R7 R6 K18 ["QUOTE"]
      109 GETIMPORT                        R7 K6 [require]
      111 GETIMPORT                        R8 K1 [script]
      113 GETTABLEKS                       R8 R8 K4 ["Parent"]
      115 GETTABLEKS                       R8 R8 K29 ["MarkdownComponent"]
      117 CALL                             R7 1 1
      118 SETTABLEKS                       R7 R6 K19 ["COMPONENT"]
      120 MOVE                             R7 R4
      121 LOADK                            R8 K30 ["MarkdownBlock"]
      122 DUPTABLE                         R9 K42 [{["node"], ["linkCallback"], ["editorCtx"] = , ["blockIndex"] = 0, ["LayoutOrder"] = 0, ["componentModules"], ["componentStore"] = , ["updateComponentStore"] = , ["onWarn"] = }]
      123 NEWTABLE                         R10 0 0
      125 SETTABLEKS                       R10 R9 K31 ["node"]
      127 DUPCLOSURE                       R10 K43 [PROTO_0]
      128 SETTABLEKS                       R10 R9 K32 ["linkCallback"]
      130 NEWTABLE                         R10 0 0
      132 SETTABLEKS                       R10 R9 K38 ["componentModules"]
      134 NEWTABLE                         R10 0 1
      136 MOVE                             R11 R5
      137 DUPTABLE                         R12 K46 [{"Template", "params"}]
      138 MOVE                             R13 R3
      139 LOADK                            R14 K47 ["blockTemplate"]
      140 CALL                             R13 1 1
      141 SETTABLEKS                       R13 R12 K44 ["Template"]
      143 MOVE                             R13 R3
      144 LOADK                            R14 K48 ["blockParams"]
      145 CALL                             R13 1 1
      146 SETTABLEKS                       R13 R12 K45 ["params"]
      148 CALL                             R11 1 -1
      149 SETLIST                          R10 R11 -1 [1]
      151 DUPCLOSURE                       R11 K49 [PROTO_2]
      152 CAPTURE                          VAL R6
      153 CALL                             R7 4 1
      154 RETURN                           R7 1
