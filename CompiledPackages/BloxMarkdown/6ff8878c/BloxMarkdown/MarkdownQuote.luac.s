PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["node"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["buildSegments"]
        8 GETTABLEKS                       R3 R1 K2 ["children"]
       10 JUMPIF                           R3 ; [+2]
       11 NEWTABLE                         R3 0 0
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K3 ["buildRichText"]
       17 MOVE                             R4 R2
       18 CALL                             R3 1 -1
       19 RETURN                           R3 -1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["createComputed"]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 LOADK                            R4 K1 ["quote-text"]
        6 CALL                             R2 2 1
        7 DUPTABLE                         R3 K6 [{"quoteText", "editorCtx", "blockIndex", "LayoutOrder"}]
        8 SETTABLEKS                       R2 R3 K2 ["quoteText"]
       10 GETTABLEKS                       R4 R0 K3 ["editorCtx"]
       12 SETTABLEKS                       R4 R3 K3 ["editorCtx"]
       14 GETTABLEKS                       R4 R0 K4 ["blockIndex"]
       16 SETTABLEKS                       R4 R3 K4 ["blockIndex"]
       18 GETTABLEKS                       R4 R0 K5 ["LayoutOrder"]
       20 SETTABLEKS                       R4 R3 K5 ["LayoutOrder"]
       22 RETURN                           R3 1

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
       14 GETIMPORT                        R3 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["BloxCodeEditor"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["RichTextHitTest"]
       21 GETTABLEKS                       R5 R1 K10 ["template"]
       23 GETTABLEKS                       R6 R1 K11 ["Frame"]
       25 GETTABLEKS                       R7 R1 K12 ["TextLabel"]
       27 MOVE                             R8 R5
       28 LOADK                            R9 K13 ["MarkdownQuote"]
       29 DUPTABLE                         R10 K19 [{"node", "linkCallback", "editorCtx", "blockIndex", "LayoutOrder"}]
       30 NEWTABLE                         R11 0 0
       32 SETTABLEKS                       R11 R10 K14 ["node"]
       34 LOADNIL                          R11
       35 SETTABLEKS                       R11 R10 K15 ["linkCallback"]
       37 LOADNIL                          R11
       38 SETTABLEKS                       R11 R10 K16 ["editorCtx"]
       40 LOADN                            R11 0
       41 SETTABLEKS                       R11 R10 K17 ["blockIndex"]
       43 LOADN                            R11 0
       44 SETTABLEKS                       R11 R10 K18 ["LayoutOrder"]
       46 NEWTABLE                         R11 0 1
       48 MOVE                             R12 R6
       49 NEWTABLE                         R13 2 1
       51 LOADK                            R15 K20 ["md-blockquote auto-y fill-x"]
       52 SETTABLEKS                       R15 R13 K21 ["Tags"]
       54 MOVE                             R15 R2
       55 LOADK                            R16 K18 ["LayoutOrder"]
       56 CALL                             R15 1 1
       57 SETTABLEKS                       R15 R13 K18 ["LayoutOrder"]
       59 MOVE                             R14 R7
       60 DUPTABLE                         R15 K23 [{"Tags", "Text", "LayoutOrder"}]
       61 LOADK                            R16 K24 ["md-blockquote-text auto-y fill-x"]
       62 SETTABLEKS                       R16 R15 K21 ["Tags"]
       64 MOVE                             R16 R2
       65 LOADK                            R17 K25 ["quoteText"]
       66 CALL                             R16 1 1
       67 SETTABLEKS                       R16 R15 K22 ["Text"]
       69 LOADN                            R16 1
       70 SETTABLEKS                       R16 R15 K18 ["LayoutOrder"]
       72 CALL                             R14 1 -1
       73 SETLIST                          R13 R14 -1 [1]
       75 CALL                             R12 1 -1
       76 SETLIST                          R11 R12 -1 [1]
       78 DUPCLOSURE                       R12 K26 [PROTO_1]
       79 CAPTURE                          VAL R4
       80 CALL                             R8 4 1
       81 RETURN                           R8 1
