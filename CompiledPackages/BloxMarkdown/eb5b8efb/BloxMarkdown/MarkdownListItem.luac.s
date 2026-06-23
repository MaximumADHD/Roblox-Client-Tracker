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
       20 GETTABLEKS                       R6 R2 K11 ["TextLabel"]
       22 GETIMPORT                        R7 K6 [require]
       24 GETIMPORT                        R8 K1 [script]
       26 GETTABLEKS                       R8 R8 K4 ["Parent"]
       28 GETTABLEKS                       R8 R8 K12 ["InlineContent"]
       30 CALL                             R7 1 1
       31 MOVE                             R8 R4
       32 LOADK                            R9 K13 ["MarkdownListItem"]
       33 DUPTABLE                         R10 K20 [{"node", "linkCallback", "editorCtx", "blockIndex", "itemIndex", "LayoutOrder"}]
       34 NEWTABLE                         R11 0 0
       36 SETTABLEKS                       R11 R10 K14 ["node"]
       38 LOADNIL                          R11
       39 SETTABLEKS                       R11 R10 K15 ["linkCallback"]
       41 LOADNIL                          R11
       42 SETTABLEKS                       R11 R10 K16 ["editorCtx"]
       44 LOADN                            R11 0
       45 SETTABLEKS                       R11 R10 K17 ["blockIndex"]
       47 LOADN                            R11 0
       48 SETTABLEKS                       R11 R10 K18 ["itemIndex"]
       50 LOADN                            R11 0
       51 SETTABLEKS                       R11 R10 K19 ["LayoutOrder"]
       53 NEWTABLE                         R11 0 1
       55 MOVE                             R12 R5
       56 NEWTABLE                         R13 2 2
       58 LOADK                            R16 K21 ["md-list-item auto-y fill-x"]
       59 SETTABLEKS                       R16 R13 K22 ["Tags"]
       61 MOVE                             R16 R3
       62 LOADK                            R17 K19 ["LayoutOrder"]
       63 CALL                             R16 1 1
       64 SETTABLEKS                       R16 R13 K19 ["LayoutOrder"]
       66 MOVE                             R14 R6
       67 DUPTABLE                         R15 K24 [{"Tags", "Text", "LayoutOrder"}]
       68 LOADK                            R16 K25 ["md-list-bullet"]
       69 SETTABLEKS                       R16 R15 K22 ["Tags"]
       71 MOVE                             R16 R3
       72 LOADK                            R17 K26 ["bulletText"]
       73 CALL                             R16 1 1
       74 SETTABLEKS                       R16 R15 K23 ["Text"]
       76 LOADN                            R16 1
       77 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
       79 CALL                             R14 1 1
       80 MOVE                             R15 R5
       81 NEWTABLE                         R16 4 1
       83 LOADK                            R18 K27 ["box auto-y"]
       84 SETTABLEKS                       R18 R16 K22 ["Tags"]
       86 GETIMPORT                        R18 K30 [UDim2.new]
       88 LOADN                            R19 1
       89 LOADN                            R20 236
       90 LOADN                            R21 0
       91 LOADN                            R22 0
       92 CALL                             R18 4 1
       93 SETTABLEKS                       R18 R16 K31 ["Size"]
       95 LOADN                            R18 2
       96 SETTABLEKS                       R18 R16 K19 ["LayoutOrder"]
       98 MOVE                             R17 R7
       99 DUPTABLE                         R18 K34 [{"nodes", "linkCallback", "editorCtx", "blockIndex", "path", "LayoutOrder"}]
      100 MOVE                             R19 R3
      101 LOADK                            R20 K35 ["inlineNodes"]
      102 CALL                             R19 1 1
      103 SETTABLEKS                       R19 R18 K32 ["nodes"]
      105 MOVE                             R19 R3
      106 LOADK                            R20 K15 ["linkCallback"]
      107 CALL                             R19 1 1
      108 SETTABLEKS                       R19 R18 K15 ["linkCallback"]
      110 MOVE                             R19 R3
      111 LOADK                            R20 K16 ["editorCtx"]
      112 CALL                             R19 1 1
      113 SETTABLEKS                       R19 R18 K16 ["editorCtx"]
      115 MOVE                             R19 R3
      116 LOADK                            R20 K17 ["blockIndex"]
      117 CALL                             R19 1 1
      118 SETTABLEKS                       R19 R18 K17 ["blockIndex"]
      120 MOVE                             R19 R3
      121 LOADK                            R20 K36 ["itemPath"]
      122 CALL                             R19 1 1
      123 SETTABLEKS                       R19 R18 K33 ["path"]
      125 LOADN                            R19 1
      126 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
      128 CALL                             R17 1 -1
      129 SETLIST                          R16 R17 -1 [1]
      131 CALL                             R15 1 -1
      132 SETLIST                          R13 R14 -1 [1]
      134 CALL                             R12 1 -1
      135 SETLIST                          R11 R12 -1 [1]
      137 DUPCLOSURE                       R12 K37 [PROTO_3]
      138 CALL                             R8 4 1
      139 RETURN                           R8 1
