PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["rowIndex"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["cellIndex"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 NEWTABLE                         R3 0 2
       12 MOVE                             R4 R1
       13 MOVE                             R5 R2
       14 SETLIST                          R3 R4 2 [1]
       16 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["node"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETTABLEKS                       R3 R1 K1 ["children"]
        8 JUMPIFNOT                        R3 ; [+3]
        9 GETTABLEKS                       R2 R1 K1 ["children"]
       11 RETURN                           R2 1
       12 NEWTABLE                         R2 0 0
       14 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["editorCtx"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["node"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETTABLEKS                       R3 R1 K1 ["children"]
        8 JUMPIFNOT                        R3 ; [+3]
        9 GETTABLEKS                       R2 R1 K1 ["children"]
       11 JUMP                             ; [+2]
       12 NEWTABLE                         R2 0 0
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K2 ["buildSegments"]
       17 MOVE                             R4 R2
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K3 ["buildRichText"]
       22 MOVE                             R5 R3
       23 CALL                             R4 1 -1
       24 RETURN                           R4 -1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["createComputed"]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 LOADK                            R4 K1 ["cell-path"]
        5 CALL                             R2 2 1
        6 GETTABLEKS                       R3 R1 K0 ["createComputed"]
        8 NEWCLOSURE                       R4 P1
        9 CAPTURE                          VAL R0
       10 LOADK                            R5 K2 ["cell-inline-nodes"]
       11 CALL                             R3 2 1
       12 GETTABLEKS                       R4 R1 K0 ["createComputed"]
       14 NEWCLOSURE                       R5 P2
       15 CAPTURE                          VAL R0
       16 LOADK                            R6 K3 ["has-editor"]
       17 CALL                             R4 2 1
       18 GETTABLEKS                       R5 R1 K0 ["createComputed"]
       20 NEWCLOSURE                       R6 P3
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U0
       23 LOADK                            R7 K4 ["cell-richtext"]
       24 CALL                             R5 2 1
       25 DUPTABLE                         R6 K13 [{"cellPath", "inlineNodes", "hasEditor", "richText", "editorCtx", "blockIndex", "linkCallback", "LayoutOrder"}]
       26 SETTABLEKS                       R2 R6 K5 ["cellPath"]
       28 SETTABLEKS                       R3 R6 K6 ["inlineNodes"]
       30 SETTABLEKS                       R4 R6 K7 ["hasEditor"]
       32 SETTABLEKS                       R5 R6 K8 ["richText"]
       34 GETTABLEKS                       R7 R0 K9 ["editorCtx"]
       36 SETTABLEKS                       R7 R6 K9 ["editorCtx"]
       38 GETTABLEKS                       R7 R0 K10 ["blockIndex"]
       40 SETTABLEKS                       R7 R6 K10 ["blockIndex"]
       42 GETTABLEKS                       R7 R0 K11 ["linkCallback"]
       44 SETTABLEKS                       R7 R6 K11 ["linkCallback"]
       46 GETTABLEKS                       R7 R0 K12 ["LayoutOrder"]
       48 SETTABLEKS                       R7 R6 K12 ["LayoutOrder"]
       50 RETURN                           R6 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["row"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETTABLEKS                       R2 R1 K1 ["name"]
        8 JUMPIFNOTEQKS                    R2 K2 ["TABLE_HEADER"] ; [+3]
       10 LOADK                            R2 K3 ["md-table-header-row auto-xy"]
       11 RETURN                           R2 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K4 ["rowIndex"]
       15 MOVE                             R3 R0
       16 CALL                             R2 1 1
       17 SUBK                             R3 R2 K5 [1]
       18 MODK                             R5 R3 K6 [2]
       19 JUMPIFEQKN                       R5 K7 [0] ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 JUMPIFNOT                        R4 ; [+2]
       24 LOADK                            R5 K8 ["md-table-row md-table-row-stripe"]
       25 RETURN                           R5 1
       26 LOADK                            R5 K9 ["md-table-row"]
       27 RETURN                           R5 1

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["createComputed"]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 LOADK                            R4 K1 ["row-tags"]
        5 CALL                             R2 2 1
        6 GETTABLEKS                       R3 R1 K2 ["peek"]
        8 MOVE                             R4 R3
        9 GETTABLEKS                       R5 R0 K3 ["editorCtx"]
       11 CALL                             R4 1 1
       12 MOVE                             R5 R3
       13 GETTABLEKS                       R6 R0 K4 ["blockIndex"]
       15 CALL                             R5 1 1
       16 MOVE                             R6 R3
       17 GETTABLEKS                       R7 R0 K5 ["rowIndex"]
       19 CALL                             R6 1 1
       20 LOADNIL                          R7
       21 JUMPIFNOT                        R4 ; [+12]
       22 GETTABLEKS                       R8 R4 K6 ["blockStore"]
       24 JUMPIFNOT                        R8 ; [+9]
       25 GETTABLEKS                       R10 R4 K6 ["blockStore"]
       27 GETTABLE                         R9 R10 R5
       28 GETTABLEKS                       R9 R9 K7 ["children"]
       30 GETTABLE                         R8 R9 R6
       31 GETTABLEKS                       R7 R8 K7 ["children"]
       33 JUMP                             ; [+13]
       34 MOVE                             R8 R3
       35 GETTABLEKS                       R9 R0 K8 ["row"]
       37 CALL                             R8 1 1
       38 JUMPIFNOT                        R8 ; [+6]
       39 GETTABLEKS                       R9 R8 K7 ["children"]
       41 JUMPIFNOT                        R9 ; [+3]
       42 GETTABLEKS                       R7 R8 K7 ["children"]
       44 JUMP                             ; [+2]
       45 NEWTABLE                         R7 0 0
       47 DUPTABLE                         R8 K13 [{"rowTags", "rowCells", "rowIndex", "editorCtx", "blockIndex", "linkCallback", "LayoutOrder"}]
       48 SETTABLEKS                       R2 R8 K9 ["rowTags"]
       50 SETTABLEKS                       R7 R8 K10 ["rowCells"]
       52 GETTABLEKS                       R9 R0 K5 ["rowIndex"]
       54 SETTABLEKS                       R9 R8 K5 ["rowIndex"]
       56 GETTABLEKS                       R9 R0 K3 ["editorCtx"]
       58 SETTABLEKS                       R9 R8 K3 ["editorCtx"]
       60 GETTABLEKS                       R9 R0 K4 ["blockIndex"]
       62 SETTABLEKS                       R9 R8 K4 ["blockIndex"]
       64 GETTABLEKS                       R9 R0 K11 ["linkCallback"]
       66 SETTABLEKS                       R9 R8 K11 ["linkCallback"]
       68 GETTABLEKS                       R9 R0 K12 ["LayoutOrder"]
       70 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       72 RETURN                           R8 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["index"]
        2 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["editorCtx"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R2 R1 K1 ["getSelection"]
        8 JUMPIF                           R2 ; [+2]
        9 LOADB                            R2 0
       10 RETURN                           R2 1
       11 GETTABLEKS                       R2 R1 K1 ["getSelection"]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 1
       15 JUMPIF                           R2 ; [+2]
       16 LOADB                            R3 0
       17 RETURN                           R3 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K2 ["blockIndex"]
       21 MOVE                             R4 R0
       22 CALL                             R3 1 1
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K3 ["getBlockSelectionRange"]
       26 MOVE                             R5 R3
       27 MOVE                             R6 R2
       28 LOADN                            R7 1
       29 CALL                             R4 3 1
       30 JUMPIFEQKS                       R4 K4 ["full"] ; [+3]
       32 LOADB                            R5 0
       33 RETURN                           R5 1
       34 GETTABLEKS                       R5 R2 K5 ["anchor"]
       36 GETTABLEKS                       R5 R5 K2 ["blockIndex"]
       38 JUMPIFNOTEQ                      R5 R3 ; [+8]
       40 GETTABLEKS                       R5 R2 K5 ["anchor"]
       42 GETTABLEKS                       R5 R5 K6 ["path"]
       44 JUMPIFNOT                        R5 ; [+2]
       45 LOADB                            R5 0
       46 RETURN                           R5 1
       47 GETTABLEKS                       R5 R2 K7 ["focus"]
       49 GETTABLEKS                       R5 R5 K2 ["blockIndex"]
       51 JUMPIFNOTEQ                      R5 R3 ; [+8]
       53 GETTABLEKS                       R5 R2 K7 ["focus"]
       55 GETTABLEKS                       R5 R5 K6 ["path"]
       57 JUMPIFNOT                        R5 ; [+2]
       58 LOADB                            R5 0
       59 RETURN                           R5 1
       60 LOADB                            R5 1
       61 RETURN                           R5 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+2]
        4 LOADK                            R1 K0 [0.75]
        5 RETURN                           R1 1
        6 LOADN                            R1 1
        7 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+2]
        4 LOADN                            R1 2
        5 RETURN                           R1 1
        6 LOADN                            R1 0
        7 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["editorCtx"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFEQKNIL                     R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["editorCtx"]
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["blockIndex"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R0 K2 ["setSelection"]
       14 DUPTABLE                         R3 K5 [{"anchor", "focus"}]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K6 ["createPosition"]
       18 MOVE                             R5 R1
       19 LOADN                            R6 1
       20 LOADN                            R7 0
       21 CALL                             R4 3 1
       22 SETTABLEKS                       R4 R3 K3 ["anchor"]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K6 ["createPosition"]
       27 MOVE                             R5 R1
       28 LOADN                            R6 1
       29 LOADK                            R7 K7 [∞]
       30 CALL                             R4 3 1
       31 SETTABLEKS                       R4 R3 K4 ["focus"]
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R1 K0 ["peek"]
        2 MOVE                             R3 R2
        3 GETTABLEKS                       R4 R0 K1 ["editorCtx"]
        5 CALL                             R3 1 1
        6 MOVE                             R4 R2
        7 GETTABLEKS                       R5 R0 K2 ["blockIndex"]
        9 CALL                             R4 1 1
       10 LOADNIL                          R5
       11 JUMPIFNOT                        R3 ; [+9]
       12 GETTABLEKS                       R6 R3 K3 ["blockStore"]
       14 JUMPIFNOT                        R6 ; [+6]
       15 GETTABLEKS                       R7 R3 K3 ["blockStore"]
       17 GETTABLE                         R6 R7 R4
       18 GETTABLEKS                       R5 R6 K4 ["children"]
       20 JUMP                             ; [+10]
       21 MOVE                             R6 R2
       22 GETTABLEKS                       R7 R0 K5 ["node"]
       24 CALL                             R6 1 1
       25 GETTABLEKS                       R7 R6 K4 ["children"]
       27 JUMPIF                           R7 ; [+2]
       28 NEWTABLE                         R7 0 0
       30 MOVE                             R5 R7
       31 GETTABLEKS                       R6 R1 K6 ["createComputed"]
       33 NEWCLOSURE                       R7 P0
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U0
       36 LOADK                            R8 K7 ["table-full-selected"]
       37 CALL                             R6 2 1
       38 GETTABLEKS                       R7 R1 K6 ["createComputed"]
       40 NEWCLOSURE                       R8 P1
       41 CAPTURE                          VAL R6
       42 LOADK                            R9 K8 ["table-overlay"]
       43 CALL                             R7 2 1
       44 GETTABLEKS                       R8 R1 K6 ["createComputed"]
       46 NEWCLOSURE                       R9 P2
       47 CAPTURE                          VAL R6
       48 LOADK                            R10 K9 ["table-border"]
       49 CALL                             R8 2 1
       50 GETTABLEKS                       R9 R1 K6 ["createComputed"]
       52 NEWCLOSURE                       R10 P3
       53 CAPTURE                          VAL R0
       54 LOADK                            R11 K10 ["show-block-click"]
       55 CALL                             R9 2 1
       56 NEWCLOSURE                       R10 P4
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R0
       59 CAPTURE                          UPVAL U0
       60 DUPTABLE                         R11 K18 [{"tableRows", "overlayTransparency", "borderSize", "showBlockClickTarget", "onBlockClick", "editorCtx", "blockIndex", "linkCallback", "LayoutOrder"}]
       61 SETTABLEKS                       R5 R11 K11 ["tableRows"]
       63 SETTABLEKS                       R7 R11 K12 ["overlayTransparency"]
       65 SETTABLEKS                       R8 R11 K13 ["borderSize"]
       67 SETTABLEKS                       R9 R11 K14 ["showBlockClickTarget"]
       69 SETTABLEKS                       R10 R11 K15 ["onBlockClick"]
       71 GETTABLEKS                       R12 R0 K1 ["editorCtx"]
       73 SETTABLEKS                       R12 R11 K1 ["editorCtx"]
       75 GETTABLEKS                       R12 R0 K2 ["blockIndex"]
       77 SETTABLEKS                       R12 R11 K2 ["blockIndex"]
       79 GETTABLEKS                       R12 R0 K16 ["linkCallback"]
       81 SETTABLEKS                       R12 R11 K16 ["linkCallback"]
       83 GETTABLEKS                       R12 R0 K17 ["LayoutOrder"]
       85 SETTABLEKS                       R12 R11 K17 ["LayoutOrder"]
       87 RETURN                           R11 1

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
       23 GETIMPORT                        R6 K6 [require]
       25 GETIMPORT                        R7 K1 [script]
       27 GETTABLEKS                       R7 R7 K4 ["Parent"]
       29 GETTABLEKS                       R7 R7 K11 ["EditorState"]
       31 CALL                             R6 1 1
       32 GETTABLEKS                       R7 R2 K12 ["template"]
       34 GETTABLEKS                       R8 R2 K13 ["Frame"]
       36 GETTABLEKS                       R9 R2 K14 ["TextLabel"]
       38 GETTABLEKS                       R10 R2 K15 ["TextButton"]
       40 GETTABLEKS                       R11 R2 K16 ["For"]
       42 GETTABLEKS                       R12 R2 K17 ["If"]
       44 GETIMPORT                        R13 K6 [require]
       46 GETIMPORT                        R14 K1 [script]
       48 GETTABLEKS                       R14 R14 K4 ["Parent"]
       50 GETTABLEKS                       R14 R14 K18 ["InlineContent"]
       52 CALL                             R13 1 1
       53 GETIMPORT                        R14 K21 [Color3.fromRGB]
       55 LOADN                            R15 56
       56 LOADN                            R16 132
       57 LOADN                            R17 244
       58 CALL                             R14 3 1
       59 MOVE                             R15 R7
       60 LOADK                            R16 K22 ["MarkdownTableCell"]
       61 DUPTABLE                         R17 K30 [{"node", "editorCtx", "blockIndex", "rowIndex", "cellIndex", "linkCallback", "LayoutOrder"}]
       62 NEWTABLE                         R18 0 0
       64 SETTABLEKS                       R18 R17 K23 ["node"]
       66 LOADNIL                          R18
       67 SETTABLEKS                       R18 R17 K24 ["editorCtx"]
       69 LOADN                            R18 0
       70 SETTABLEKS                       R18 R17 K25 ["blockIndex"]
       72 LOADN                            R18 0
       73 SETTABLEKS                       R18 R17 K26 ["rowIndex"]
       75 LOADN                            R18 0
       76 SETTABLEKS                       R18 R17 K27 ["cellIndex"]
       78 LOADNIL                          R18
       79 SETTABLEKS                       R18 R17 K28 ["linkCallback"]
       81 LOADN                            R18 0
       82 SETTABLEKS                       R18 R17 K29 ["LayoutOrder"]
       84 NEWTABLE                         R18 0 1
       86 MOVE                             R19 R8
       87 NEWTABLE                         R20 4 1
       89 LOADK                            R22 K31 ["md-table-cell"]
       90 SETTABLEKS                       R22 R20 K32 ["Tags"]
       92 GETIMPORT                        R22 K35 [UDim2.fromOffset]
       94 LOADN                            R23 120
       95 LOADN                            R24 0
       96 CALL                             R22 2 1
       97 SETTABLEKS                       R22 R20 K36 ["Size"]
       99 GETIMPORT                        R22 K40 [Enum.AutomaticSize.Y]
      101 SETTABLEKS                       R22 R20 K38 ["AutomaticSize"]
      103 MOVE                             R22 R3
      104 LOADK                            R23 K29 ["LayoutOrder"]
      105 CALL                             R22 1 1
      106 SETTABLEKS                       R22 R20 K29 ["LayoutOrder"]
      108 MOVE                             R21 R12
      109 DUPTABLE                         R22 K44 [{"when", "Then", "Else"}]
      110 MOVE                             R23 R3
      111 LOADK                            R24 K45 ["hasEditor"]
      112 CALL                             R23 1 1
      113 SETTABLEKS                       R23 R22 K41 ["when"]
      115 MOVE                             R23 R7
      116 NEWTABLE                         R24 0 1
      118 MOVE                             R25 R13
      119 DUPTABLE                         R26 K48 [{"nodes", "editorCtx", "blockIndex", "path", "linkCallback", "LayoutOrder"}]
      120 MOVE                             R27 R3
      121 LOADK                            R28 K49 ["inlineNodes"]
      122 CALL                             R27 1 1
      123 SETTABLEKS                       R27 R26 K46 ["nodes"]
      125 MOVE                             R27 R3
      126 LOADK                            R28 K24 ["editorCtx"]
      127 CALL                             R27 1 1
      128 SETTABLEKS                       R27 R26 K24 ["editorCtx"]
      130 MOVE                             R27 R3
      131 LOADK                            R28 K25 ["blockIndex"]
      132 CALL                             R27 1 1
      133 SETTABLEKS                       R27 R26 K25 ["blockIndex"]
      135 MOVE                             R27 R3
      136 LOADK                            R28 K50 ["cellPath"]
      137 CALL                             R27 1 1
      138 SETTABLEKS                       R27 R26 K47 ["path"]
      140 MOVE                             R27 R3
      141 LOADK                            R28 K28 ["linkCallback"]
      142 CALL                             R27 1 1
      143 SETTABLEKS                       R27 R26 K28 ["linkCallback"]
      145 LOADN                            R27 1
      146 SETTABLEKS                       R27 R26 K29 ["LayoutOrder"]
      148 CALL                             R25 1 -1
      149 SETLIST                          R24 R25 -1 [1]
      151 CALL                             R23 1 1
      152 SETTABLEKS                       R23 R22 K42 ["Then"]
      154 MOVE                             R23 R7
      155 NEWTABLE                         R24 0 1
      157 MOVE                             R25 R9
      158 DUPTABLE                         R26 K54 [{"Tags", "Size", "Text", "RichText", "TextWrapped", "LayoutOrder"}]
      159 LOADK                            R27 K55 ["auto-y"]
      160 SETTABLEKS                       R27 R26 K32 ["Tags"]
      162 GETIMPORT                        R27 K57 [UDim2.new]
      164 LOADN                            R28 1
      165 LOADN                            R29 0
      166 LOADN                            R30 0
      167 LOADN                            R31 0
      168 CALL                             R27 4 1
      169 SETTABLEKS                       R27 R26 K36 ["Size"]
      171 MOVE                             R27 R3
      172 LOADK                            R28 K58 ["richText"]
      173 CALL                             R27 1 1
      174 SETTABLEKS                       R27 R26 K51 ["Text"]
      176 LOADB                            R27 1
      177 SETTABLEKS                       R27 R26 K52 ["RichText"]
      179 LOADB                            R27 1
      180 SETTABLEKS                       R27 R26 K53 ["TextWrapped"]
      182 LOADN                            R27 1
      183 SETTABLEKS                       R27 R26 K29 ["LayoutOrder"]
      185 CALL                             R25 1 -1
      186 SETLIST                          R24 R25 -1 [1]
      188 CALL                             R23 1 1
      189 SETTABLEKS                       R23 R22 K43 ["Else"]
      191 CALL                             R21 1 -1
      192 SETLIST                          R20 R21 -1 [1]
      194 CALL                             R19 1 -1
      195 SETLIST                          R18 R19 -1 [1]
      197 DUPCLOSURE                       R19 K59 [PROTO_4]
      198 CAPTURE                          VAL R5
      199 CALL                             R15 4 1
      200 MOVE                             R16 R7
      201 LOADK                            R17 K60 ["MarkdownTableRow"]
      202 DUPTABLE                         R18 K62 [{"row", "rowIndex", "editorCtx", "blockIndex", "linkCallback", "LayoutOrder"}]
      203 NEWTABLE                         R19 0 0
      205 SETTABLEKS                       R19 R18 K61 ["row"]
      207 LOADN                            R19 0
      208 SETTABLEKS                       R19 R18 K26 ["rowIndex"]
      210 LOADNIL                          R19
      211 SETTABLEKS                       R19 R18 K24 ["editorCtx"]
      213 LOADN                            R19 0
      214 SETTABLEKS                       R19 R18 K25 ["blockIndex"]
      216 LOADNIL                          R19
      217 SETTABLEKS                       R19 R18 K28 ["linkCallback"]
      219 LOADN                            R19 0
      220 SETTABLEKS                       R19 R18 K29 ["LayoutOrder"]
      222 NEWTABLE                         R19 0 1
      224 MOVE                             R20 R8
      225 NEWTABLE                         R21 4 1
      227 MOVE                             R23 R3
      228 LOADK                            R24 K63 ["rowTags"]
      229 CALL                             R23 1 1
      230 SETTABLEKS                       R23 R21 K32 ["Tags"]
      232 GETIMPORT                        R23 K35 [UDim2.fromOffset]
      234 LOADN                            R24 0
      235 LOADN                            R25 0
      236 CALL                             R23 2 1
      237 SETTABLEKS                       R23 R21 K36 ["Size"]
      239 GETIMPORT                        R23 K65 [Enum.AutomaticSize.XY]
      241 SETTABLEKS                       R23 R21 K38 ["AutomaticSize"]
      243 MOVE                             R23 R3
      244 LOADK                            R24 K29 ["LayoutOrder"]
      245 CALL                             R23 1 1
      246 SETTABLEKS                       R23 R21 K29 ["LayoutOrder"]
      248 MOVE                             R22 R11
      249 DUPTABLE                         R23 K68 [{"items", "Each"}]
      250 MOVE                             R24 R3
      251 LOADK                            R25 K69 ["rowCells"]
      252 CALL                             R24 1 1
      253 SETTABLEKS                       R24 R23 K66 ["items"]
      255 MOVE                             R24 R7
      256 NEWTABLE                         R25 0 2
      258 LOADK                            R26 K70 ["cellIdx"]
      259 LOADK                            R27 K71 ["cell"]
      260 SETLIST                          R25 R26 2 [1]
      262 NEWTABLE                         R26 0 1
      264 MOVE                             R27 R15
      265 DUPTABLE                         R28 K30 [{"node", "editorCtx", "blockIndex", "rowIndex", "cellIndex", "linkCallback", "LayoutOrder"}]
      266 MOVE                             R29 R3
      267 LOADK                            R30 K71 ["cell"]
      268 CALL                             R29 1 1
      269 SETTABLEKS                       R29 R28 K23 ["node"]
      271 MOVE                             R29 R3
      272 LOADK                            R30 K24 ["editorCtx"]
      273 CALL                             R29 1 1
      274 SETTABLEKS                       R29 R28 K24 ["editorCtx"]
      276 MOVE                             R29 R3
      277 LOADK                            R30 K25 ["blockIndex"]
      278 CALL                             R29 1 1
      279 SETTABLEKS                       R29 R28 K25 ["blockIndex"]
      281 MOVE                             R29 R3
      282 LOADK                            R30 K26 ["rowIndex"]
      283 CALL                             R29 1 1
      284 SETTABLEKS                       R29 R28 K26 ["rowIndex"]
      286 MOVE                             R29 R3
      287 LOADK                            R30 K70 ["cellIdx"]
      288 CALL                             R29 1 1
      289 SETTABLEKS                       R29 R28 K27 ["cellIndex"]
      291 MOVE                             R29 R3
      292 LOADK                            R30 K28 ["linkCallback"]
      293 CALL                             R29 1 1
      294 SETTABLEKS                       R29 R28 K28 ["linkCallback"]
      296 MOVE                             R29 R3
      297 LOADK                            R30 K70 ["cellIdx"]
      298 CALL                             R29 1 1
      299 SETTABLEKS                       R29 R28 K29 ["LayoutOrder"]
      301 CALL                             R27 1 -1
      302 SETLIST                          R26 R27 -1 [1]
      304 CALL                             R24 2 1
      305 SETTABLEKS                       R24 R23 K67 ["Each"]
      307 CALL                             R22 1 -1
      308 SETLIST                          R21 R22 -1 [1]
      310 CALL                             R20 1 -1
      311 SETLIST                          R19 R20 -1 [1]
      313 DUPCLOSURE                       R20 K72 [PROTO_6]
      314 CALL                             R16 4 1
      315 MOVE                             R17 R7
      316 LOADK                            R18 K73 ["MarkdownTable"]
      317 DUPTABLE                         R19 K74 [{"node", "editorCtx", "blockIndex", "linkCallback", "LayoutOrder"}]
      318 NEWTABLE                         R20 0 0
      320 SETTABLEKS                       R20 R19 K23 ["node"]
      322 LOADNIL                          R20
      323 SETTABLEKS                       R20 R19 K24 ["editorCtx"]
      325 LOADN                            R20 0
      326 SETTABLEKS                       R20 R19 K25 ["blockIndex"]
      328 LOADNIL                          R20
      329 SETTABLEKS                       R20 R19 K28 ["linkCallback"]
      331 LOADN                            R20 0
      332 SETTABLEKS                       R20 R19 K29 ["LayoutOrder"]
      334 NEWTABLE                         R20 0 1
      336 MOVE                             R21 R8
      337 NEWTABLE                         R22 8 3
      339 LOADK                            R26 K75 ["tableWrapper"]
      340 SETTABLEKS                       R26 R22 K76 ["ref"]
      342 GETIMPORT                        R26 K57 [UDim2.new]
      344 LOADN                            R27 1
      345 LOADN                            R28 0
      346 LOADN                            R29 0
      347 LOADN                            R30 0
      348 CALL                             R26 4 1
      349 SETTABLEKS                       R26 R22 K36 ["Size"]
      351 GETIMPORT                        R26 K40 [Enum.AutomaticSize.Y]
      353 SETTABLEKS                       R26 R22 K38 ["AutomaticSize"]
      355 LOADN                            R26 1
      356 SETTABLEKS                       R26 R22 K77 ["BackgroundTransparency"]
      358 MOVE                             R26 R3
      359 LOADK                            R27 K29 ["LayoutOrder"]
      360 CALL                             R26 1 1
      361 SETTABLEKS                       R26 R22 K29 ["LayoutOrder"]
      363 MOVE                             R23 R8
      364 NEWTABLE                         R24 2 1
      366 LOADK                            R26 K78 ["md-table auto-xy"]
      367 SETTABLEKS                       R26 R24 K32 ["Tags"]
      369 LOADN                            R26 1
      370 SETTABLEKS                       R26 R24 K29 ["LayoutOrder"]
      372 MOVE                             R25 R11
      373 DUPTABLE                         R26 K80 [{"items", "keyBy", "Each"}]
      374 MOVE                             R27 R3
      375 LOADK                            R28 K81 ["tableRows"]
      376 CALL                             R27 1 1
      377 SETTABLEKS                       R27 R26 K66 ["items"]
      379 DUPCLOSURE                       R27 K82 [PROTO_7]
      380 SETTABLEKS                       R27 R26 K79 ["keyBy"]
      382 MOVE                             R27 R7
      383 NEWTABLE                         R28 0 2
      385 LOADK                            R29 K83 ["rowIdx"]
      386 LOADK                            R30 K61 ["row"]
      387 SETLIST                          R28 R29 2 [1]
      389 NEWTABLE                         R29 0 1
      391 MOVE                             R30 R16
      392 DUPTABLE                         R31 K62 [{"row", "rowIndex", "editorCtx", "blockIndex", "linkCallback", "LayoutOrder"}]
      393 MOVE                             R32 R3
      394 LOADK                            R33 K61 ["row"]
      395 CALL                             R32 1 1
      396 SETTABLEKS                       R32 R31 K61 ["row"]
      398 MOVE                             R32 R3
      399 LOADK                            R33 K83 ["rowIdx"]
      400 CALL                             R32 1 1
      401 SETTABLEKS                       R32 R31 K26 ["rowIndex"]
      403 MOVE                             R32 R3
      404 LOADK                            R33 K24 ["editorCtx"]
      405 CALL                             R32 1 1
      406 SETTABLEKS                       R32 R31 K24 ["editorCtx"]
      408 MOVE                             R32 R3
      409 LOADK                            R33 K25 ["blockIndex"]
      410 CALL                             R32 1 1
      411 SETTABLEKS                       R32 R31 K25 ["blockIndex"]
      413 MOVE                             R32 R3
      414 LOADK                            R33 K28 ["linkCallback"]
      415 CALL                             R32 1 1
      416 SETTABLEKS                       R32 R31 K28 ["linkCallback"]
      418 MOVE                             R32 R3
      419 LOADK                            R33 K83 ["rowIdx"]
      420 CALL                             R32 1 1
      421 SETTABLEKS                       R32 R31 K29 ["LayoutOrder"]
      423 CALL                             R30 1 -1
      424 SETLIST                          R29 R30 -1 [1]
      426 CALL                             R27 2 1
      427 SETTABLEKS                       R27 R26 K67 ["Each"]
      429 CALL                             R25 1 -1
      430 SETLIST                          R24 R25 -1 [1]
      432 CALL                             R23 1 1
      433 MOVE                             R24 R8
      434 DUPTABLE                         R25 K88 [{"Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "BorderColor3", "ZIndex"}]
      435 GETIMPORT                        R26 K57 [UDim2.new]
      437 LOADN                            R27 1
      438 LOADN                            R28 0
      439 LOADN                            R29 1
      440 LOADN                            R30 0
      441 CALL                             R26 4 1
      442 SETTABLEKS                       R26 R25 K36 ["Size"]
      444 SETTABLEKS                       R14 R25 K84 ["BackgroundColor3"]
      446 MOVE                             R26 R3
      447 LOADK                            R27 K89 ["overlayTransparency"]
      448 CALL                             R26 1 1
      449 SETTABLEKS                       R26 R25 K77 ["BackgroundTransparency"]
      451 MOVE                             R26 R3
      452 LOADK                            R27 K90 ["borderSize"]
      453 CALL                             R26 1 1
      454 SETTABLEKS                       R26 R25 K85 ["BorderSizePixel"]
      456 SETTABLEKS                       R14 R25 K86 ["BorderColor3"]
      458 LOADN                            R26 10
      459 SETTABLEKS                       R26 R25 K87 ["ZIndex"]
      461 CALL                             R24 1 1
      462 MOVE                             R25 R12
      463 DUPTABLE                         R26 K91 [{"when", "Then"}]
      464 MOVE                             R27 R3
      465 LOADK                            R28 K92 ["showBlockClickTarget"]
      466 CALL                             R27 1 1
      467 SETTABLEKS                       R27 R26 K41 ["when"]
      469 MOVE                             R27 R7
      470 NEWTABLE                         R28 0 1
      472 MOVE                             R29 R10
      473 DUPTABLE                         R30 K94 [{"Size", "BackgroundTransparency", "Text", "ZIndex", "OnActivated"}]
      474 GETIMPORT                        R31 K57 [UDim2.new]
      476 LOADN                            R32 1
      477 LOADN                            R33 0
      478 LOADN                            R34 1
      479 LOADN                            R35 0
      480 CALL                             R31 4 1
      481 SETTABLEKS                       R31 R30 K36 ["Size"]
      483 LOADN                            R31 1
      484 SETTABLEKS                       R31 R30 K77 ["BackgroundTransparency"]
      486 LOADK                            R31 K95 [""]
      487 SETTABLEKS                       R31 R30 K51 ["Text"]
      489 LOADN                            R31 11
      490 SETTABLEKS                       R31 R30 K87 ["ZIndex"]
      492 MOVE                             R31 R3
      493 LOADK                            R32 K96 ["onBlockClick"]
      494 CALL                             R31 1 1
      495 SETTABLEKS                       R31 R30 K93 ["OnActivated"]
      497 CALL                             R29 1 -1
      498 SETLIST                          R28 R29 -1 [1]
      500 CALL                             R27 1 1
      501 SETTABLEKS                       R27 R26 K42 ["Then"]
      503 CALL                             R25 1 -1
      504 SETLIST                          R22 R23 -1 [1]
      506 CALL                             R21 1 -1
      507 SETLIST                          R20 R21 -1 [1]
      509 DUPCLOSURE                       R21 K97 [PROTO_13]
      510 CAPTURE                          VAL R6
      511 CALL                             R17 4 1
      512 RETURN                           R17 1
