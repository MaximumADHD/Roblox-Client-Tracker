PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["join"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["defaultRenderers"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["Renderers"]
        9 JUMPIF                           R2 ; [+2]
       10 NEWTABLE                         R2 0 0
       12 CALL                             R0 2 -1
       13 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Ast"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 LOADB                            R0 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["Ast"]
        8 RETURN                           R0 2
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K1 ["Markdown"]
       12 JUMPIFNOT                        R0 ; [+24]
       13 GETUPVAL                         R0 1
       14 GETTABLEKS                       R0 R0 K2 ["safeParse"]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K1 ["Markdown"]
       19 CALL                             R0 1 2
       20 JUMPIF                           R0 ; [+15]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K3 ["OnError"]
       24 JUMPIFNOT                        R2 ; [+6]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K3 ["OnError"]
       28 MOVE                             R3 R1
       29 CALL                             R2 1 0
       30 RETURN                           R0 2
       31 GETIMPORT                        R2 K5 [warn]
       33 LOADK                            R3 K6 ["MarkdownViewer: Error parsing markdown."]
       34 MOVE                             R4 R1
       35 CALL                             R2 2 0
       36 RETURN                           R0 2
       37 LOADB                            R0 1
       38 LOADNIL                          R1
       39 RETURN                           R0 2

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["render"]
        7 GETUPVAL                         R1 2
        8 DUPTABLE                         R2 K5 [{"userRenderers", "linkCallback", "markdownRendererProps", "colorScheme"}]
        9 GETUPVAL                         R3 3
       10 SETTABLEKS                       R3 R2 K1 ["userRenderers"]
       12 GETUPVAL                         R3 4
       13 GETTABLEKS                       R3 R3 K6 ["LinkCallback"]
       15 SETTABLEKS                       R3 R2 K2 ["linkCallback"]
       17 GETUPVAL                         R3 4
       18 GETTABLEKS                       R3 R3 K7 ["MarkdownRendererProps"]
       20 SETTABLEKS                       R3 R2 K3 ["markdownRendererProps"]
       22 GETUPVAL                         R3 4
       23 GETTABLEKS                       R3 R3 K8 ["ColorScheme"]
       25 SETTABLEKS                       R3 R2 K4 ["colorScheme"]
       27 CALL                             R0 2 -1
       28 RETURN                           R0 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["Markdown"]
        2 JUMPIF                           R1 ; [+9]
        3 GETTABLEKS                       R1 R0 K1 ["Ast"]
        5 JUMPIF                           R1 ; [+6]
        6 GETIMPORT                        R1 K3 [warn]
        8 LOADK                            R2 K4 ["MarkdownViewer requires either a Markdown string or an Ast in props"]
        9 CALL                             R1 1 0
       10 LOADNIL                          R1
       11 RETURN                           R1 1
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K5 ["useMemo"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R0
       19 NEWTABLE                         R3 0 1
       21 GETTABLEKS                       R4 R0 K6 ["Renderers"]
       23 SETLIST                          R3 R4 1 [1]
       25 CALL                             R1 2 1
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K5 ["useMemo"]
       29 NEWCLOSURE                       R3 P1
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U3
       32 NEWTABLE                         R4 0 2
       34 GETTABLEKS                       R5 R0 K0 ["Markdown"]
       36 GETTABLEKS                       R6 R0 K1 ["Ast"]
       38 SETLIST                          R4 R5 2 [1]
       40 CALL                             R2 2 2
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R4 R4 K5 ["useMemo"]
       44 NEWCLOSURE                       R5 P2
       45 CAPTURE                          VAL R2
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R0
       50 NEWTABLE                         R6 0 6
       52 MOVE                             R7 R2
       53 MOVE                             R8 R3
       54 GETTABLEKS                       R9 R0 K7 ["LinkCallback"]
       56 GETTABLEKS                       R10 R0 K8 ["MarkdownRendererProps"]
       58 GETTABLEKS                       R11 R0 K9 ["ColorScheme"]
       60 MOVE                             R12 R1
       61 SETLIST                          R6 R7 6 [1]
       63 CALL                             R4 2 1
       64 JUMPIF                           R2 ; [+34]
       65 GETTABLEKS                       R5 R0 K10 ["Fallback"]
       67 JUMPIF                           R5 ; [+30]
       68 GETUPVAL                         R5 0
       69 GETTABLEKS                       R5 R5 K11 ["createElement"]
       71 LOADK                            R6 K12 ["Frame"]
       72 GETUPVAL                         R7 1
       73 GETTABLEKS                       R7 R7 K13 ["join"]
       75 NEWTABLE                         R8 1 0
       77 GETUPVAL                         R9 0
       78 GETTABLEKS                       R9 R9 K14 ["Tag"]
       80 LOADK                            R10 K15 ["X-FitY X-Transparent"]
       81 SETTABLE                         R10 R8 R9
       82 GETTABLEKS                       R9 R0 K16 ["WrapperProps"]
       84 JUMPIF                           R9 ; [+2]
       85 NEWTABLE                         R9 0 0
       87 CALL                             R7 2 1
       88 GETUPVAL                         R8 0
       89 GETTABLEKS                       R8 R8 K11 ["createElement"]
       91 GETUPVAL                         R9 4
       92 DUPTABLE                         R10 K18 [{"Text"}]
       93 LOADK                            R11 K19 ["Failed to parse the provided markdown"]
       94 SETTABLEKS                       R11 R10 K17 ["Text"]
       96 CALL                             R8 2 -1
       97 CALL                             R5 -1 1
       98 RETURN                           R5 1
       99 GETUPVAL                         R5 0
      100 GETTABLEKS                       R5 R5 K11 ["createElement"]
      102 LOADK                            R6 K12 ["Frame"]
      103 GETUPVAL                         R7 1
      104 GETTABLEKS                       R7 R7 K13 ["join"]
      106 NEWTABLE                         R8 1 0
      108 GETUPVAL                         R9 0
      109 GETTABLEKS                       R9 R9 K14 ["Tag"]
      111 LOADK                            R10 K20 ["X-Column X-FitY X-Transparent Component-Markdown"]
      112 SETTABLE                         R10 R8 R9
      113 GETTABLEKS                       R9 R0 K16 ["WrapperProps"]
      115 JUMPIF                           R9 ; [+2]
      116 NEWTABLE                         R9 0 0
      118 CALL                             R7 2 1
      119 MOVE                             R8 R4
      120 CALL                             R5 3 -1
      121 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["Dash"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Util"]
       27 GETTABLEKS                       R4 R4 K10 ["Markdown"]
       29 GETTABLEKS                       R4 R4 K11 ["MarkdownParser"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R5 R0 K7 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["Highlighter"]
       38 GETTABLEKS                       R5 R5 K13 ["Types"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K6 [require]
       43 GETTABLEKS                       R6 R0 K7 ["Util"]
       45 GETTABLEKS                       R6 R6 K10 ["Markdown"]
       47 GETTABLEKS                       R6 R6 K13 ["Types"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K6 [require]
       52 GETIMPORT                        R7 K1 [script]
       54 GETTABLEKS                       R7 R7 K14 ["MarkdownRenderer"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K6 [require]
       59 GETTABLEKS                       R8 R0 K2 ["UI"]
       61 GETTABLEKS                       R8 R8 K15 ["Components"]
       63 GETTABLEKS                       R8 R8 K16 ["TextLabel"]
       65 CALL                             R7 1 1
       66 DUPCLOSURE                       R8 K17 [PROTO_3]
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R7
       72 RETURN                           R8 1
