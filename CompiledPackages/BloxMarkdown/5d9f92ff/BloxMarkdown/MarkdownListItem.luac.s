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
       33 DUPTABLE                         R10 K22 [{["node"], ["linkCallback"] = , ["editorCtx"] = , ["blockIndex"] = 0, ["itemIndex"] = 0, ["LayoutOrder"] = 0}]
       34 NEWTABLE                         R11 0 0
       36 SETTABLEKS                       R11 R10 K14 ["node"]
       38 NEWTABLE                         R11 0 1
       40 MOVE                             R12 R5
       41 NEWTABLE                         R13 2 2
       43 LOADK                            R16 K23 ["md-list-item auto-y fill-x"]
       44 SETTABLEKS                       R16 R13 K24 ["Tags"]
       46 MOVE                             R16 R3
       47 LOADK                            R17 K21 ["LayoutOrder"]
       48 CALL                             R16 1 1
       49 SETTABLEKS                       R16 R13 K21 ["LayoutOrder"]
       51 MOVE                             R14 R6
       52 DUPTABLE                         R15 K28 [{["Tags"] = "md-list-bullet", ["Text"], ["LayoutOrder"] = 1}]
       53 MOVE                             R16 R3
       54 LOADK                            R17 K29 ["bulletText"]
       55 CALL                             R16 1 1
       56 SETTABLEKS                       R16 R15 K26 ["Text"]
       58 CALL                             R14 1 1
       59 MOVE                             R15 R5
       60 NEWTABLE                         R16 4 1
       62 LOADK                            R18 K30 ["box auto-y"]
       63 SETTABLEKS                       R18 R16 K24 ["Tags"]
       65 GETIMPORT                        R18 K33 [UDim2.new]
       67 LOADN                            R19 1
       68 LOADN                            R20 -20
       69 LOADN                            R21 0
       70 LOADN                            R22 0
       71 CALL                             R18 4 1
       72 SETTABLEKS                       R18 R16 K34 ["Size"]
       74 LOADN                            R18 2
       75 SETTABLEKS                       R18 R16 K21 ["LayoutOrder"]
       77 MOVE                             R17 R7
       78 DUPTABLE                         R18 K37 [{["nodes"], ["linkCallback"], ["editorCtx"], ["blockIndex"], ["path"], ["LayoutOrder"] = 1}]
       79 MOVE                             R19 R3
       80 LOADK                            R20 K38 ["inlineNodes"]
       81 CALL                             R19 1 1
       82 SETTABLEKS                       R19 R18 K35 ["nodes"]
       84 MOVE                             R19 R3
       85 LOADK                            R20 K15 ["linkCallback"]
       86 CALL                             R19 1 1
       87 SETTABLEKS                       R19 R18 K15 ["linkCallback"]
       89 MOVE                             R19 R3
       90 LOADK                            R20 K17 ["editorCtx"]
       91 CALL                             R19 1 1
       92 SETTABLEKS                       R19 R18 K17 ["editorCtx"]
       94 MOVE                             R19 R3
       95 LOADK                            R20 K18 ["blockIndex"]
       96 CALL                             R19 1 1
       97 SETTABLEKS                       R19 R18 K18 ["blockIndex"]
       99 MOVE                             R19 R3
      100 LOADK                            R20 K39 ["itemPath"]
      101 CALL                             R19 1 1
      102 SETTABLEKS                       R19 R18 K36 ["path"]
      104 CALL                             R17 1 -1
      105 SETLIST                          R16 R17 -1 [1]
      107 CALL                             R15 1 -1
      108 SETLIST                          R13 R14 -1 [1]
      110 CALL                             R12 1 -1
      111 SETLIST                          R11 R12 -1 [1]
      113 DUPCLOSURE                       R12 K40 [PROTO_3]
      114 CALL                             R8 4 1
      115 RETURN                           R8 1
