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
       31 DUPTABLE                         R9 K18 [{"node", "linkCallback", "editorCtx", "blockIndex", "LayoutOrder"}]
       32 NEWTABLE                         R10 0 0
       34 SETTABLEKS                       R10 R9 K13 ["node"]
       36 LOADNIL                          R10
       37 SETTABLEKS                       R10 R9 K14 ["linkCallback"]
       39 LOADNIL                          R10
       40 SETTABLEKS                       R10 R9 K15 ["editorCtx"]
       42 LOADN                            R10 0
       43 SETTABLEKS                       R10 R9 K16 ["blockIndex"]
       45 LOADN                            R10 0
       46 SETTABLEKS                       R10 R9 K17 ["LayoutOrder"]
       48 NEWTABLE                         R10 0 1
       50 MOVE                             R11 R5
       51 NEWTABLE                         R12 4 1
       53 LOADK                            R14 K19 ["Paragraph"]
       54 SETTABLEKS                       R14 R12 K20 ["Name"]
       56 LOADK                            R14 K21 ["md-paragraph auto-y fill-x"]
       57 SETTABLEKS                       R14 R12 K22 ["Tags"]
       59 MOVE                             R14 R3
       60 LOADK                            R15 K17 ["LayoutOrder"]
       61 CALL                             R14 1 1
       62 SETTABLEKS                       R14 R12 K17 ["LayoutOrder"]
       64 MOVE                             R13 R6
       65 DUPTABLE                         R14 K24 [{"nodes", "linkCallback", "editorCtx", "blockIndex", "LayoutOrder"}]
       66 MOVE                             R15 R3
       67 LOADK                            R16 K25 ["node.children"]
       68 CALL                             R15 1 1
       69 SETTABLEKS                       R15 R14 K23 ["nodes"]
       71 MOVE                             R15 R3
       72 LOADK                            R16 K14 ["linkCallback"]
       73 CALL                             R15 1 1
       74 SETTABLEKS                       R15 R14 K14 ["linkCallback"]
       76 MOVE                             R15 R3
       77 LOADK                            R16 K15 ["editorCtx"]
       78 CALL                             R15 1 1
       79 SETTABLEKS                       R15 R14 K15 ["editorCtx"]
       81 MOVE                             R15 R3
       82 LOADK                            R16 K16 ["blockIndex"]
       83 CALL                             R15 1 1
       84 SETTABLEKS                       R15 R14 K16 ["blockIndex"]
       86 LOADN                            R15 1
       87 SETTABLEKS                       R15 R14 K17 ["LayoutOrder"]
       89 CALL                             R13 1 -1
       90 SETLIST                          R12 R13 -1 [1]
       92 CALL                             R11 1 -1
       93 SETLIST                          R10 R11 -1 [1]
       95 DUPCLOSURE                       R11 K26 [PROTO_0]
       96 CALL                             R7 4 1
       97 RETURN                           R7 1
