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
       41 DUPTABLE                         R10 K18 [{"node", "linkCallback", "editorCtx", "blockIndex", "LayoutOrder"}]
       42 NEWTABLE                         R11 0 0
       44 SETTABLEKS                       R11 R10 K13 ["node"]
       46 LOADNIL                          R11
       47 SETTABLEKS                       R11 R10 K14 ["linkCallback"]
       49 LOADNIL                          R11
       50 SETTABLEKS                       R11 R10 K15 ["editorCtx"]
       52 LOADN                            R11 0
       53 SETTABLEKS                       R11 R10 K16 ["blockIndex"]
       55 LOADN                            R11 0
       56 SETTABLEKS                       R11 R10 K17 ["LayoutOrder"]
       58 NEWTABLE                         R11 0 1
       60 MOVE                             R12 R5
       61 NEWTABLE                         R13 4 1
       63 LOADK                            R15 K19 ["Heading"]
       64 SETTABLEKS                       R15 R13 K20 ["Name"]
       66 LOADK                            R15 K21 ["md-heading auto-y fill-x"]
       67 SETTABLEKS                       R15 R13 K22 ["Tags"]
       69 MOVE                             R15 R3
       70 LOADK                            R16 K17 ["LayoutOrder"]
       71 CALL                             R15 1 1
       72 SETTABLEKS                       R15 R13 K17 ["LayoutOrder"]
       74 MOVE                             R14 R6
       75 DUPTABLE                         R15 K26 [{"nodes", "textSize", "fontEnum", "linkCallback", "editorCtx", "blockIndex", "LayoutOrder"}]
       76 MOVE                             R16 R3
       77 LOADK                            R17 K27 ["node.children"]
       78 CALL                             R16 1 1
       79 SETTABLEKS                       R16 R15 K23 ["nodes"]
       81 MOVE                             R16 R3
       82 LOADK                            R17 K28 ["headingSize"]
       83 CALL                             R16 1 1
       84 SETTABLEKS                       R16 R15 K24 ["textSize"]
       86 MOVE                             R16 R3
       87 LOADK                            R17 K25 ["fontEnum"]
       88 CALL                             R16 1 1
       89 SETTABLEKS                       R16 R15 K25 ["fontEnum"]
       91 MOVE                             R16 R3
       92 LOADK                            R17 K14 ["linkCallback"]
       93 CALL                             R16 1 1
       94 SETTABLEKS                       R16 R15 K14 ["linkCallback"]
       96 MOVE                             R16 R3
       97 LOADK                            R17 K15 ["editorCtx"]
       98 CALL                             R16 1 1
       99 SETTABLEKS                       R16 R15 K15 ["editorCtx"]
      101 MOVE                             R16 R3
      102 LOADK                            R17 K16 ["blockIndex"]
      103 CALL                             R16 1 1
      104 SETTABLEKS                       R16 R15 K16 ["blockIndex"]
      106 LOADN                            R16 1
      107 SETTABLEKS                       R16 R15 K17 ["LayoutOrder"]
      109 CALL                             R14 1 -1
      110 SETLIST                          R13 R14 -1 [1]
      112 CALL                             R12 1 -1
      113 SETLIST                          R11 R12 -1 [1]
      115 DUPCLOSURE                       R12 K29 [PROTO_1]
      116 CAPTURE                          VAL R7
      117 CALL                             R8 4 1
      118 RETURN                           R8 1
