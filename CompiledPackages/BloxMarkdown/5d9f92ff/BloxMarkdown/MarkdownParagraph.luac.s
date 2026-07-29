PROTO_0:
        0 DUPTABLE                         R2 K5 [{"node", "linkCallback", "editorCtx", "blockIndex", "LayoutOrder"}]
        1 GETTABLEKS                       R3 R0 K0 ["node"]
        3 SETTABLEKS                       R3 R2 K0 ["node"]
        5 GETTABLEKS                       R3 R0 K1 ["linkCallback"]
        7 SETTABLEKS                       R3 R2 K1 ["linkCallback"]
        9 GETTABLEKS                       R3 R0 K2 ["editorCtx"]
       11 SETTABLEKS                       R3 R2 K2 ["editorCtx"]
       13 GETTABLEKS                       R3 R0 K3 ["blockIndex"]
       15 SETTABLEKS                       R3 R2 K3 ["blockIndex"]
       17 GETTABLEKS                       R3 R0 K4 ["LayoutOrder"]
       19 SETTABLEKS                       R3 R2 K4 ["LayoutOrder"]
       21 RETURN                           R2 1

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
       20 GETIMPORT                        R6 K6 [require]
       22 GETIMPORT                        R7 K1 [script]
       24 GETTABLEKS                       R7 R7 K4 ["Parent"]
       26 GETTABLEKS                       R7 R7 K11 ["InlineContent"]
       28 CALL                             R6 1 1
       29 MOVE                             R7 R4
       30 LOADK                            R8 K12 ["MarkdownParagraph"]
       31 DUPTABLE                         R9 K20 [{["node"], ["linkCallback"] = , ["editorCtx"] = , ["blockIndex"] = 0, ["LayoutOrder"] = 0}]
       32 NEWTABLE                         R10 0 0
       34 SETTABLEKS                       R10 R9 K13 ["node"]
       36 NEWTABLE                         R10 0 1
       38 MOVE                             R11 R5
       39 NEWTABLE                         R12 4 1
       41 LOADK                            R14 K21 ["Paragraph"]
       42 SETTABLEKS                       R14 R12 K22 ["Name"]
       44 LOADK                            R14 K23 ["md-paragraph auto-y fill-x"]
       45 SETTABLEKS                       R14 R12 K24 ["Tags"]
       47 MOVE                             R14 R3
       48 LOADK                            R15 K19 ["LayoutOrder"]
       49 CALL                             R14 1 1
       50 SETTABLEKS                       R14 R12 K19 ["LayoutOrder"]
       52 MOVE                             R13 R6
       53 DUPTABLE                         R14 K27 [{["nodes"], ["linkCallback"], ["editorCtx"], ["blockIndex"], ["LayoutOrder"] = 1}]
       54 MOVE                             R15 R3
       55 LOADK                            R16 K28 ["node.children"]
       56 CALL                             R15 1 1
       57 SETTABLEKS                       R15 R14 K25 ["nodes"]
       59 MOVE                             R15 R3
       60 LOADK                            R16 K14 ["linkCallback"]
       61 CALL                             R15 1 1
       62 SETTABLEKS                       R15 R14 K14 ["linkCallback"]
       64 MOVE                             R15 R3
       65 LOADK                            R16 K16 ["editorCtx"]
       66 CALL                             R15 1 1
       67 SETTABLEKS                       R15 R14 K16 ["editorCtx"]
       69 MOVE                             R15 R3
       70 LOADK                            R16 K17 ["blockIndex"]
       71 CALL                             R15 1 1
       72 SETTABLEKS                       R15 R14 K17 ["blockIndex"]
       74 CALL                             R13 1 -1
       75 SETLIST                          R12 R13 -1 [1]
       77 CALL                             R11 1 -1
       78 SETLIST                          R10 R11 -1 [1]
       80 DUPCLOSURE                       R11 K29 [PROTO_0]
       81 CALL                             R7 4 1
       82 RETURN                           R7 1
