PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["node"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADK                            R2 K1 ["•"]
        7 RETURN                           R2 1
        8 GETTABLEKS                       R3 R1 K2 ["attributes"]
       10 JUMPIFNOT                        R3 ; [+5]
       11 GETTABLEKS                       R2 R1 K2 ["attributes"]
       13 GETTABLEKS                       R2 R2 K3 ["prefix"]
       15 JUMPIF                           R2 ; [+1]
       16 LOADK                            R2 K4 ["-"]
       17 JUMPIFEQKS                       R2 K5 ["*"] ; [+3]
       19 JUMPIFNOTEQKS                    R2 K4 ["-"] ; [+3]
       21 LOADK                            R3 K1 ["•"]
       22 RETURN                           R3 1
       23 RETURN                           R2 1

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["node"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETTABLEKS                       R3 R1 K1 ["children"]
        8 JUMPIFNOT                        R3 ; [+3]
        9 GETTABLEKS                       R2 R1 K1 ["children"]
       11 RETURN                           R2 1
       12 NEWTABLE                         R2 0 0
       14 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["createComputed"]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 LOADK                            R4 K1 ["bullet-text"]
        5 CALL                             R2 2 1
        6 GETTABLEKS                       R3 R1 K0 ["createComputed"]
        8 NEWCLOSURE                       R4 P1
        9 CAPTURE                          VAL R0
       10 LOADK                            R5 K2 ["item-path"]
       11 CALL                             R3 2 1
       12 GETTABLEKS                       R4 R1 K0 ["createComputed"]
       14 NEWCLOSURE                       R5 P2
       15 CAPTURE                          VAL R0
       16 LOADK                            R6 K3 ["list-item-inline-nodes"]
       17 CALL                             R4 2 1
       18 DUPTABLE                         R5 K12 [{"node", "bulletText", "itemPath", "inlineNodes", "linkCallback", "editorCtx", "blockIndex", "LayoutOrder"}]
       19 GETTABLEKS                       R6 R0 K4 ["node"]
       21 SETTABLEKS                       R6 R5 K4 ["node"]
       23 SETTABLEKS                       R2 R5 K5 ["bulletText"]
       25 SETTABLEKS                       R3 R5 K6 ["itemPath"]
       27 SETTABLEKS                       R4 R5 K7 ["inlineNodes"]
       29 GETTABLEKS                       R6 R0 K8 ["linkCallback"]
       31 SETTABLEKS                       R6 R5 K8 ["linkCallback"]
       33 GETTABLEKS                       R6 R0 K9 ["editorCtx"]
       35 SETTABLEKS                       R6 R5 K9 ["editorCtx"]
       37 GETTABLEKS                       R6 R0 K10 ["blockIndex"]
       39 SETTABLEKS                       R6 R5 K10 ["blockIndex"]
       41 GETTABLEKS                       R6 R0 K11 ["LayoutOrder"]
       43 SETTABLEKS                       R6 R5 K11 ["LayoutOrder"]
       45 RETURN                           R5 1

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
       18 GETTABLEKS                       R5 R1 K10 ["TextLabel"]
       20 GETIMPORT                        R6 K5 [require]
       22 GETIMPORT                        R7 K1 [script]
       24 GETTABLEKS                       R7 R7 K11 ["Parent"]
       26 GETTABLEKS                       R7 R7 K12 ["InlineContent"]
       28 CALL                             R6 1 1
       29 MOVE                             R7 R3
       30 LOADK                            R8 K13 ["MarkdownListItem"]
       31 DUPTABLE                         R9 K20 [{"node", "linkCallback", "editorCtx", "blockIndex", "itemIndex", "LayoutOrder"}]
       32 NEWTABLE                         R10 0 0
       34 SETTABLEKS                       R10 R9 K14 ["node"]
       36 LOADNIL                          R10
       37 SETTABLEKS                       R10 R9 K15 ["linkCallback"]
       39 LOADNIL                          R10
       40 SETTABLEKS                       R10 R9 K16 ["editorCtx"]
       42 LOADN                            R10 0
       43 SETTABLEKS                       R10 R9 K17 ["blockIndex"]
       45 LOADN                            R10 0
       46 SETTABLEKS                       R10 R9 K18 ["itemIndex"]
       48 LOADN                            R10 0
       49 SETTABLEKS                       R10 R9 K19 ["LayoutOrder"]
       51 NEWTABLE                         R10 0 1
       53 MOVE                             R11 R4
       54 NEWTABLE                         R12 2 2
       56 LOADK                            R15 K21 ["md-list-item auto-y fill-x"]
       57 SETTABLEKS                       R15 R12 K22 ["Tags"]
       59 MOVE                             R15 R2
       60 LOADK                            R16 K19 ["LayoutOrder"]
       61 CALL                             R15 1 1
       62 SETTABLEKS                       R15 R12 K19 ["LayoutOrder"]
       64 MOVE                             R13 R5
       65 DUPTABLE                         R14 K24 [{"Tags", "Text", "LayoutOrder"}]
       66 LOADK                            R15 K25 ["md-list-bullet"]
       67 SETTABLEKS                       R15 R14 K22 ["Tags"]
       69 MOVE                             R15 R2
       70 LOADK                            R16 K26 ["bulletText"]
       71 CALL                             R15 1 1
       72 SETTABLEKS                       R15 R14 K23 ["Text"]
       74 LOADN                            R15 1
       75 SETTABLEKS                       R15 R14 K19 ["LayoutOrder"]
       77 CALL                             R13 1 1
       78 MOVE                             R14 R4
       79 NEWTABLE                         R15 4 1
       81 LOADK                            R17 K27 ["box auto-y"]
       82 SETTABLEKS                       R17 R15 K22 ["Tags"]
       84 GETIMPORT                        R17 K30 [UDim2.new]
       86 LOADN                            R18 1
       87 LOADN                            R19 236
       88 LOADN                            R20 0
       89 LOADN                            R21 0
       90 CALL                             R17 4 1
       91 SETTABLEKS                       R17 R15 K31 ["Size"]
       93 LOADN                            R17 2
       94 SETTABLEKS                       R17 R15 K19 ["LayoutOrder"]
       96 MOVE                             R16 R6
       97 DUPTABLE                         R17 K34 [{"nodes", "linkCallback", "editorCtx", "blockIndex", "path", "LayoutOrder"}]
       98 MOVE                             R18 R2
       99 LOADK                            R19 K35 ["inlineNodes"]
      100 CALL                             R18 1 1
      101 SETTABLEKS                       R18 R17 K32 ["nodes"]
      103 MOVE                             R18 R2
      104 LOADK                            R19 K15 ["linkCallback"]
      105 CALL                             R18 1 1
      106 SETTABLEKS                       R18 R17 K15 ["linkCallback"]
      108 MOVE                             R18 R2
      109 LOADK                            R19 K16 ["editorCtx"]
      110 CALL                             R18 1 1
      111 SETTABLEKS                       R18 R17 K16 ["editorCtx"]
      113 MOVE                             R18 R2
      114 LOADK                            R19 K17 ["blockIndex"]
      115 CALL                             R18 1 1
      116 SETTABLEKS                       R18 R17 K17 ["blockIndex"]
      118 MOVE                             R18 R2
      119 LOADK                            R19 K36 ["itemPath"]
      120 CALL                             R18 1 1
      121 SETTABLEKS                       R18 R17 K33 ["path"]
      123 LOADN                            R18 1
      124 SETTABLEKS                       R18 R17 K19 ["LayoutOrder"]
      126 CALL                             R16 1 -1
      127 SETLIST                          R15 R16 -1 [1]
      129 CALL                             R14 1 -1
      130 SETLIST                          R12 R13 -1 [1]
      132 CALL                             R11 1 -1
      133 SETLIST                          R10 R11 -1 [1]
      135 DUPCLOSURE                       R11 K37 [PROTO_3]
      136 CALL                             R7 4 1
      137 RETURN                           R7 1
