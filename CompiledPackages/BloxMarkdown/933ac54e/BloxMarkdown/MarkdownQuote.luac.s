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
        3 LOADK                            R2 K2 ["BloxMarkdown"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Blox"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["expr"]
       16 GETIMPORT                        R4 K6 [require]
       18 GETTABLEKS                       R5 R1 K9 ["BloxCodeEditor"]
       20 CALL                             R4 1 1
       21 GETTABLEKS                       R5 R4 K10 ["RichTextHitTest"]
       23 GETTABLEKS                       R6 R2 K11 ["template"]
       25 GETTABLEKS                       R7 R2 K12 ["Frame"]
       27 GETTABLEKS                       R8 R2 K13 ["TextLabel"]
       29 MOVE                             R9 R6
       30 LOADK                            R10 K14 ["MarkdownQuote"]
       31 DUPTABLE                         R11 K22 [{["node"], ["linkCallback"] = , ["editorCtx"] = , ["blockIndex"] = 0, ["LayoutOrder"] = 0}]
       32 NEWTABLE                         R12 0 0
       34 SETTABLEKS                       R12 R11 K15 ["node"]
       36 NEWTABLE                         R12 0 1
       38 MOVE                             R13 R7
       39 NEWTABLE                         R14 2 1
       41 LOADK                            R16 K23 ["md-blockquote auto-y fill-x"]
       42 SETTABLEKS                       R16 R14 K24 ["Tags"]
       44 MOVE                             R16 R3
       45 LOADK                            R17 K21 ["LayoutOrder"]
       46 CALL                             R16 1 1
       47 SETTABLEKS                       R16 R14 K21 ["LayoutOrder"]
       49 MOVE                             R15 R8
       50 DUPTABLE                         R16 K28 [{["Tags"] = "md-blockquote-text auto-y fill-x", ["Text"], ["LayoutOrder"] = 1}]
       51 MOVE                             R17 R3
       52 LOADK                            R18 K29 ["quoteText"]
       53 CALL                             R17 1 1
       54 SETTABLEKS                       R17 R16 K26 ["Text"]
       56 CALL                             R15 1 -1
       57 SETLIST                          R14 R15 -1 [1]
       59 CALL                             R13 1 -1
       60 SETLIST                          R12 R13 -1 [1]
       62 DUPCLOSURE                       R13 K30 [PROTO_1]
       63 CAPTURE                          VAL R5
       64 CALL                             R9 4 1
       65 RETURN                           R9 1
