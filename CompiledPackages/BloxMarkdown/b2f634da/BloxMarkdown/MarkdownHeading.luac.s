PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["node"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R3 R1 K1 ["attributes"]
        7 JUMPIFNOT                        R3 ; [+10]
        8 GETTABLEKS                       R3 R1 K1 ["attributes"]
       10 GETTABLEKS                       R3 R3 K2 ["depth"]
       12 JUMPIFNOT                        R3 ; [+5]
       13 GETTABLEKS                       R2 R1 K1 ["attributes"]
       15 GETTABLEKS                       R2 R2 K2 ["depth"]
       17 JUMP                             ; [+1]
       18 LOADN                            R2 1
       19 LOADN                            R5 1
       20 LOADN                            R6 6
       21 FASTCALL3                        MATH_CLAMP R2 R5 R6
       23 MOVE                             R4 R2
       24 GETIMPORT                        R3 K5 [math.clamp]
       26 CALL                             R3 3 1
       27 MOVE                             R2 R3
       28 GETUPVAL                         R4 1
       29 GETTABLE                         R3 R4 R2
       30 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["createComputed"]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 LOADK                            R4 K1 ["heading-size"]
        6 CALL                             R2 2 1
        7 GETIMPORT                        R3 K5 [Enum.Font.BuilderSans]
        9 DUPTABLE                         R4 K13 [{"node", "headingSize", "fontEnum", "linkCallback", "editorCtx", "blockIndex", "LayoutOrder"}]
       10 GETTABLEKS                       R5 R0 K6 ["node"]
       12 SETTABLEKS                       R5 R4 K6 ["node"]
       14 SETTABLEKS                       R2 R4 K7 ["headingSize"]
       16 SETTABLEKS                       R3 R4 K8 ["fontEnum"]
       18 GETTABLEKS                       R5 R0 K9 ["linkCallback"]
       20 SETTABLEKS                       R5 R4 K9 ["linkCallback"]
       22 GETTABLEKS                       R5 R0 K10 ["editorCtx"]
       24 SETTABLEKS                       R5 R4 K10 ["editorCtx"]
       26 GETTABLEKS                       R5 R0 K11 ["blockIndex"]
       28 SETTABLEKS                       R5 R4 K11 ["blockIndex"]
       30 GETTABLEKS                       R5 R0 K12 ["LayoutOrder"]
       32 SETTABLEKS                       R5 R4 K12 ["LayoutOrder"]
       34 RETURN                           R4 1

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
       29 NEWTABLE                         R7 0 6
       31 LOADN                            R8 20
       32 LOADN                            R9 18
       33 LOADN                            R10 15
       34 LOADN                            R11 15
       35 LOADN                            R12 15
       36 LOADN                            R13 15
       37 SETLIST                          R7 R8 6 [1]
       39 MOVE                             R8 R4
       40 LOADK                            R9 K12 ["MarkdownHeading"]
       41 DUPTABLE                         R10 K20 [{["node"], ["linkCallback"] = , ["editorCtx"] = , ["blockIndex"] = 0, ["LayoutOrder"] = 0}]
       42 NEWTABLE                         R11 0 0
       44 SETTABLEKS                       R11 R10 K13 ["node"]
       46 NEWTABLE                         R11 0 1
       48 MOVE                             R12 R5
       49 NEWTABLE                         R13 4 1
       51 LOADK                            R15 K21 ["Heading"]
       52 SETTABLEKS                       R15 R13 K22 ["Name"]
       54 LOADK                            R15 K23 ["md-heading auto-y fill-x"]
       55 SETTABLEKS                       R15 R13 K24 ["Tags"]
       57 MOVE                             R15 R3
       58 LOADK                            R16 K19 ["LayoutOrder"]
       59 CALL                             R15 1 1
       60 SETTABLEKS                       R15 R13 K19 ["LayoutOrder"]
       62 MOVE                             R14 R6
       63 DUPTABLE                         R15 K29 [{["nodes"], ["textSize"], ["fontEnum"], ["linkCallback"], ["editorCtx"], ["blockIndex"], ["LayoutOrder"] = 1}]
       64 MOVE                             R16 R3
       65 LOADK                            R17 K30 ["node.children"]
       66 CALL                             R16 1 1
       67 SETTABLEKS                       R16 R15 K25 ["nodes"]
       69 MOVE                             R16 R3
       70 LOADK                            R17 K31 ["headingSize"]
       71 CALL                             R16 1 1
       72 SETTABLEKS                       R16 R15 K26 ["textSize"]
       74 MOVE                             R16 R3
       75 LOADK                            R17 K27 ["fontEnum"]
       76 CALL                             R16 1 1
       77 SETTABLEKS                       R16 R15 K27 ["fontEnum"]
       79 MOVE                             R16 R3
       80 LOADK                            R17 K14 ["linkCallback"]
       81 CALL                             R16 1 1
       82 SETTABLEKS                       R16 R15 K14 ["linkCallback"]
       84 MOVE                             R16 R3
       85 LOADK                            R17 K16 ["editorCtx"]
       86 CALL                             R16 1 1
       87 SETTABLEKS                       R16 R15 K16 ["editorCtx"]
       89 MOVE                             R16 R3
       90 LOADK                            R17 K17 ["blockIndex"]
       91 CALL                             R16 1 1
       92 SETTABLEKS                       R16 R15 K17 ["blockIndex"]
       94 CALL                             R14 1 -1
       95 SETLIST                          R13 R14 -1 [1]
       97 CALL                             R12 1 -1
       98 SETLIST                          R11 R12 -1 [1]
      100 DUPCLOSURE                       R12 K32 [PROTO_1]
      101 CAPTURE                          VAL R7
      102 CALL                             R8 4 1
      103 RETURN                           R8 1
