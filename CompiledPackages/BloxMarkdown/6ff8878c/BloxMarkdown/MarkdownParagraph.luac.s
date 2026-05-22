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
        3 LOADK                            R2 K2 ["Packages"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Blox"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K7 ["expr"]
       14 GETTABLEKS                       R3 R1 K8 ["template"]
       16 GETTABLEKS                       R4 R1 K9 ["Frame"]
       18 GETIMPORT                        R5 K5 [require]
       20 GETIMPORT                        R6 K1 [script]
       22 GETTABLEKS                       R6 R6 K10 ["Parent"]
       24 GETTABLEKS                       R6 R6 K11 ["InlineContent"]
       26 CALL                             R5 1 1
       27 MOVE                             R6 R3
       28 LOADK                            R7 K12 ["MarkdownParagraph"]
       29 DUPTABLE                         R8 K18 [{"node", "linkCallback", "editorCtx", "blockIndex", "LayoutOrder"}]
       30 NEWTABLE                         R9 0 0
       32 SETTABLEKS                       R9 R8 K13 ["node"]
       34 LOADNIL                          R9
       35 SETTABLEKS                       R9 R8 K14 ["linkCallback"]
       37 LOADNIL                          R9
       38 SETTABLEKS                       R9 R8 K15 ["editorCtx"]
       40 LOADN                            R9 0
       41 SETTABLEKS                       R9 R8 K16 ["blockIndex"]
       43 LOADN                            R9 0
       44 SETTABLEKS                       R9 R8 K17 ["LayoutOrder"]
       46 NEWTABLE                         R9 0 1
       48 MOVE                             R10 R4
       49 NEWTABLE                         R11 4 1
       51 LOADK                            R13 K19 ["Paragraph"]
       52 SETTABLEKS                       R13 R11 K20 ["Name"]
       54 LOADK                            R13 K21 ["md-paragraph auto-y fill-x"]
       55 SETTABLEKS                       R13 R11 K22 ["Tags"]
       57 MOVE                             R13 R2
       58 LOADK                            R14 K17 ["LayoutOrder"]
       59 CALL                             R13 1 1
       60 SETTABLEKS                       R13 R11 K17 ["LayoutOrder"]
       62 MOVE                             R12 R5
       63 DUPTABLE                         R13 K24 [{"nodes", "linkCallback", "editorCtx", "blockIndex", "LayoutOrder"}]
       64 MOVE                             R14 R2
       65 LOADK                            R15 K25 ["node.children"]
       66 CALL                             R14 1 1
       67 SETTABLEKS                       R14 R13 K23 ["nodes"]
       69 MOVE                             R14 R2
       70 LOADK                            R15 K14 ["linkCallback"]
       71 CALL                             R14 1 1
       72 SETTABLEKS                       R14 R13 K14 ["linkCallback"]
       74 MOVE                             R14 R2
       75 LOADK                            R15 K15 ["editorCtx"]
       76 CALL                             R14 1 1
       77 SETTABLEKS                       R14 R13 K15 ["editorCtx"]
       79 MOVE                             R14 R2
       80 LOADK                            R15 K16 ["blockIndex"]
       81 CALL                             R14 1 1
       82 SETTABLEKS                       R14 R13 K16 ["blockIndex"]
       84 LOADN                            R14 1
       85 SETTABLEKS                       R14 R13 K17 ["LayoutOrder"]
       87 CALL                             R12 1 -1
       88 SETLIST                          R11 R12 -1 [1]
       90 CALL                             R10 1 -1
       91 SETLIST                          R9 R10 -1 [1]
       93 DUPCLOSURE                       R10 K26 [PROTO_0]
       94 CALL                             R6 4 1
       95 RETURN                           R6 1
