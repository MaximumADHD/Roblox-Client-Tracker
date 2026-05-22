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
       27 NEWTABLE                         R6 0 6
       29 LOADN                            R7 48
       30 LOADN                            R8 36
       31 LOADN                            R9 28
       32 LOADN                            R10 22
       33 LOADN                            R11 20
       34 LOADN                            R12 18
       35 SETLIST                          R6 R7 6 [1]
       37 MOVE                             R7 R3
       38 LOADK                            R8 K12 ["MarkdownHeading"]
       39 DUPTABLE                         R9 K18 [{"node", "linkCallback", "editorCtx", "blockIndex", "LayoutOrder"}]
       40 NEWTABLE                         R10 0 0
       42 SETTABLEKS                       R10 R9 K13 ["node"]
       44 LOADNIL                          R10
       45 SETTABLEKS                       R10 R9 K14 ["linkCallback"]
       47 LOADNIL                          R10
       48 SETTABLEKS                       R10 R9 K15 ["editorCtx"]
       50 LOADN                            R10 0
       51 SETTABLEKS                       R10 R9 K16 ["blockIndex"]
       53 LOADN                            R10 0
       54 SETTABLEKS                       R10 R9 K17 ["LayoutOrder"]
       56 NEWTABLE                         R10 0 1
       58 MOVE                             R11 R4
       59 NEWTABLE                         R12 4 1
       61 LOADK                            R14 K19 ["Heading"]
       62 SETTABLEKS                       R14 R12 K20 ["Name"]
       64 LOADK                            R14 K21 ["md-heading auto-y fill-x"]
       65 SETTABLEKS                       R14 R12 K22 ["Tags"]
       67 MOVE                             R14 R2
       68 LOADK                            R15 K17 ["LayoutOrder"]
       69 CALL                             R14 1 1
       70 SETTABLEKS                       R14 R12 K17 ["LayoutOrder"]
       72 MOVE                             R13 R5
       73 DUPTABLE                         R14 K26 [{"nodes", "textSize", "fontEnum", "linkCallback", "editorCtx", "blockIndex", "LayoutOrder"}]
       74 MOVE                             R15 R2
       75 LOADK                            R16 K27 ["node.children"]
       76 CALL                             R15 1 1
       77 SETTABLEKS                       R15 R14 K23 ["nodes"]
       79 MOVE                             R15 R2
       80 LOADK                            R16 K28 ["headingSize"]
       81 CALL                             R15 1 1
       82 SETTABLEKS                       R15 R14 K24 ["textSize"]
       84 MOVE                             R15 R2
       85 LOADK                            R16 K25 ["fontEnum"]
       86 CALL                             R15 1 1
       87 SETTABLEKS                       R15 R14 K25 ["fontEnum"]
       89 MOVE                             R15 R2
       90 LOADK                            R16 K14 ["linkCallback"]
       91 CALL                             R15 1 1
       92 SETTABLEKS                       R15 R14 K14 ["linkCallback"]
       94 MOVE                             R15 R2
       95 LOADK                            R16 K15 ["editorCtx"]
       96 CALL                             R15 1 1
       97 SETTABLEKS                       R15 R14 K15 ["editorCtx"]
       99 MOVE                             R15 R2
      100 LOADK                            R16 K16 ["blockIndex"]
      101 CALL                             R15 1 1
      102 SETTABLEKS                       R15 R14 K16 ["blockIndex"]
      104 LOADN                            R15 1
      105 SETTABLEKS                       R15 R14 K17 ["LayoutOrder"]
      107 CALL                             R13 1 -1
      108 SETLIST                          R12 R13 -1 [1]
      110 CALL                             R11 1 -1
      111 SETLIST                          R10 R11 -1 [1]
      113 DUPCLOSURE                       R11 K29 [PROTO_1]
      114 CAPTURE                          VAL R6
      115 CALL                             R7 4 1
      116 RETURN                           R7 1
