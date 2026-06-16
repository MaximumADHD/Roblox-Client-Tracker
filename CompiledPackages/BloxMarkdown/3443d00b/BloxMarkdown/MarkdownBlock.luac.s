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
      120 DUPTABLE                         R8 K40 [{"node", "linkCallback", "editorCtx", "blockIndex", "LayoutOrder", "componentModules", "componentStore", "updateComponentStore", "onWarn"}]
      121 NEWTABLE                         R9 0 0
      123 SETTABLEKS                       R9 R8 K31 ["node"]
      125 DUPCLOSURE                       R9 K41 [PROTO_0]
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
      147 LOADNIL                          R9
      148 SETTABLEKS                       R9 R8 K39 ["onWarn"]
      150 NEWTABLE                         R9 0 1
      152 MOVE                             R10 R4
      153 DUPTABLE                         R11 K44 [{"Template", "params"}]
      154 MOVE                             R12 R2
      155 LOADK                            R13 K45 ["blockTemplate"]
      156 CALL                             R12 1 1
      157 SETTABLEKS                       R12 R11 K42 ["Template"]
      159 MOVE                             R12 R2
      160 LOADK                            R13 K46 ["blockParams"]
      161 CALL                             R12 1 1
      162 SETTABLEKS                       R12 R11 K43 ["params"]
      164 CALL                             R10 1 -1
      165 SETLIST                          R9 R10 -1 [1]
      167 DUPCLOSURE                       R10 K47 [PROTO_2]
      168 CAPTURE                          VAL R5
      169 CALL                             R6 4 1
      170 RETURN                           R6 1
