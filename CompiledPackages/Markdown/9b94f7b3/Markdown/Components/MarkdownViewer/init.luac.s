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
       64 JUMPIF                           R2 ; [+37]
       65 GETTABLEKS                       R5 R0 K10 ["Fallback"]
       67 JUMPIF                           R5 ; [+33]
       68 GETUPVAL                         R5 0
       69 GETTABLEKS                       R5 R5 K11 ["createElement"]
       71 GETUPVAL                         R6 4
       72 GETUPVAL                         R7 1
       73 GETTABLEKS                       R7 R7 K12 ["join"]
       75 DUPTABLE                         R8 K15 [{"tag", "backgroundStyle"}]
       76 LOADK                            R9 K16 ["size-full-0 auto-y"]
       77 SETTABLEKS                       R9 R8 K13 ["tag"]
       79 DUPTABLE                         R9 K18 [{"Transparency"}]
       80 LOADN                            R10 1
       81 SETTABLEKS                       R10 R9 K17 ["Transparency"]
       83 SETTABLEKS                       R9 R8 K14 ["backgroundStyle"]
       85 GETTABLEKS                       R9 R0 K19 ["WrapperProps"]
       87 JUMPIF                           R9 ; [+2]
       88 NEWTABLE                         R9 0 0
       90 CALL                             R7 2 1
       91 GETUPVAL                         R8 0
       92 GETTABLEKS                       R8 R8 K11 ["createElement"]
       94 GETUPVAL                         R9 5
       95 DUPTABLE                         R10 K21 [{"Text"}]
       96 LOADK                            R11 K22 ["Failed to parse the provided markdown"]
       97 SETTABLEKS                       R11 R10 K20 ["Text"]
       99 CALL                             R8 2 -1
      100 CALL                             R5 -1 1
      101 RETURN                           R5 1
      102 GETUPVAL                         R5 0
      103 GETTABLEKS                       R5 R5 K11 ["createElement"]
      105 GETUPVAL                         R6 4
      106 GETUPVAL                         R7 1
      107 GETTABLEKS                       R7 R7 K12 ["join"]
      109 DUPTABLE                         R8 K24 [{"tag", "backgroundStyle", "BorderSizePixel"}]
      110 LOADK                            R9 K25 ["col size-full-0 auto-y"]
      111 SETTABLEKS                       R9 R8 K13 ["tag"]
      113 DUPTABLE                         R9 K18 [{"Transparency"}]
      114 LOADN                            R10 1
      115 SETTABLEKS                       R10 R9 K17 ["Transparency"]
      117 SETTABLEKS                       R9 R8 K14 ["backgroundStyle"]
      119 LOADN                            R9 0
      120 SETTABLEKS                       R9 R8 K23 ["BorderSizePixel"]
      122 GETTABLEKS                       R9 R0 K19 ["WrapperProps"]
      124 JUMPIF                           R9 ; [+2]
      125 NEWTABLE                         R9 0 0
      127 CALL                             R7 2 1
      128 MOVE                             R8 R4
      129 CALL                             R5 3 -1
      130 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Components"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K1 [script]
       11 LOADK                            R3 K5 ["Packages"]
       12 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K7 [require]
       17 GETTABLEKS                       R3 R1 K8 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K7 [require]
       22 GETTABLEKS                       R4 R1 K9 ["Dash"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K7 [require]
       27 GETTABLEKS                       R5 R1 K10 ["Foundation"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K11 ["Text"]
       32 GETTABLEKS                       R6 R4 K12 ["View"]
       34 GETIMPORT                        R7 K7 [require]
       36 GETTABLEKS                       R8 R0 K13 ["Utils"]
       38 GETTABLEKS                       R8 R8 K14 ["Parser"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K7 [require]
       43 GETTABLEKS                       R9 R0 K15 ["Types"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K7 [require]
       48 GETIMPORT                        R10 K1 [script]
       50 GETTABLEKS                       R10 R10 K16 ["MarkdownRenderer"]
       52 CALL                             R9 1 1
       53 DUPCLOSURE                       R10 K17 [PROTO_3]
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R9
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R5
       60 RETURN                           R10 1
