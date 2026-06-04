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
       21 GETIMPORT                        R5 K5 [require]
       23 GETIMPORT                        R6 K1 [script]
       25 GETTABLEKS                       R6 R6 K10 ["Parent"]
       27 GETTABLEKS                       R6 R6 K11 ["EditorState"]
       29 CALL                             R5 1 1
       30 GETTABLEKS                       R6 R1 K12 ["template"]
       32 GETTABLEKS                       R7 R1 K13 ["Frame"]
       34 GETTABLEKS                       R8 R1 K14 ["TextLabel"]
       36 GETTABLEKS                       R9 R1 K15 ["TextButton"]
       38 GETTABLEKS                       R10 R1 K16 ["For"]
       40 GETTABLEKS                       R11 R1 K17 ["If"]
       42 GETIMPORT                        R12 K5 [require]
       44 GETIMPORT                        R13 K1 [script]
       46 GETTABLEKS                       R13 R13 K10 ["Parent"]
       48 GETTABLEKS                       R13 R13 K18 ["InlineContent"]
       50 CALL                             R12 1 1
       51 GETIMPORT                        R13 K21 [Color3.fromRGB]
       53 LOADN                            R14 56
       54 LOADN                            R15 132
       55 LOADN                            R16 244
       56 CALL                             R13 3 1
       57 MOVE                             R14 R6
       58 LOADK                            R15 K22 ["MarkdownTableCell"]
       59 DUPTABLE                         R16 K30 [{"node", "editorCtx", "blockIndex", "rowIndex", "cellIndex", "linkCallback", "LayoutOrder"}]
       60 NEWTABLE                         R17 0 0
       62 SETTABLEKS                       R17 R16 K23 ["node"]
       64 LOADNIL                          R17
       65 SETTABLEKS                       R17 R16 K24 ["editorCtx"]
       67 LOADN                            R17 0
       68 SETTABLEKS                       R17 R16 K25 ["blockIndex"]
       70 LOADN                            R17 0
       71 SETTABLEKS                       R17 R16 K26 ["rowIndex"]
       73 LOADN                            R17 0
       74 SETTABLEKS                       R17 R16 K27 ["cellIndex"]
       76 LOADNIL                          R17
       77 SETTABLEKS                       R17 R16 K28 ["linkCallback"]
       79 LOADN                            R17 0
       80 SETTABLEKS                       R17 R16 K29 ["LayoutOrder"]
       82 NEWTABLE                         R17 0 1
       84 MOVE                             R18 R7
       85 NEWTABLE                         R19 4 1
       87 LOADK                            R21 K31 ["md-table-cell"]
       88 SETTABLEKS                       R21 R19 K32 ["Tags"]
       90 GETIMPORT                        R21 K35 [UDim2.fromOffset]
       92 LOADN                            R22 120
       93 LOADN                            R23 0
       94 CALL                             R21 2 1
       95 SETTABLEKS                       R21 R19 K36 ["Size"]
       97 GETIMPORT                        R21 K40 [Enum.AutomaticSize.Y]
       99 SETTABLEKS                       R21 R19 K38 ["AutomaticSize"]
      101 MOVE                             R21 R2
      102 LOADK                            R22 K29 ["LayoutOrder"]
      103 CALL                             R21 1 1
      104 SETTABLEKS                       R21 R19 K29 ["LayoutOrder"]
      106 MOVE                             R20 R11
      107 DUPTABLE                         R21 K44 [{"when", "Then", "Else"}]
      108 MOVE                             R22 R2
      109 LOADK                            R23 K45 ["hasEditor"]
      110 CALL                             R22 1 1
      111 SETTABLEKS                       R22 R21 K41 ["when"]
      113 MOVE                             R22 R6
      114 NEWTABLE                         R23 0 1
      116 MOVE                             R24 R12
      117 DUPTABLE                         R25 K48 [{"nodes", "editorCtx", "blockIndex", "path", "linkCallback", "LayoutOrder"}]
      118 MOVE                             R26 R2
      119 LOADK                            R27 K49 ["inlineNodes"]
      120 CALL                             R26 1 1
      121 SETTABLEKS                       R26 R25 K46 ["nodes"]
      123 MOVE                             R26 R2
      124 LOADK                            R27 K24 ["editorCtx"]
      125 CALL                             R26 1 1
      126 SETTABLEKS                       R26 R25 K24 ["editorCtx"]
      128 MOVE                             R26 R2
      129 LOADK                            R27 K25 ["blockIndex"]
      130 CALL                             R26 1 1
      131 SETTABLEKS                       R26 R25 K25 ["blockIndex"]
      133 MOVE                             R26 R2
      134 LOADK                            R27 K50 ["cellPath"]
      135 CALL                             R26 1 1
      136 SETTABLEKS                       R26 R25 K47 ["path"]
      138 MOVE                             R26 R2
      139 LOADK                            R27 K28 ["linkCallback"]
      140 CALL                             R26 1 1
      141 SETTABLEKS                       R26 R25 K28 ["linkCallback"]
      143 LOADN                            R26 1
      144 SETTABLEKS                       R26 R25 K29 ["LayoutOrder"]
      146 CALL                             R24 1 -1
      147 SETLIST                          R23 R24 -1 [1]
      149 CALL                             R22 1 1
      150 SETTABLEKS                       R22 R21 K42 ["Then"]
      152 MOVE                             R22 R6
      153 NEWTABLE                         R23 0 1
      155 MOVE                             R24 R8
      156 DUPTABLE                         R25 K54 [{"Tags", "Size", "Text", "RichText", "TextWrapped", "LayoutOrder"}]
      157 LOADK                            R26 K55 ["auto-y"]
      158 SETTABLEKS                       R26 R25 K32 ["Tags"]
      160 GETIMPORT                        R26 K57 [UDim2.new]
      162 LOADN                            R27 1
      163 LOADN                            R28 0
      164 LOADN                            R29 0
      165 LOADN                            R30 0
      166 CALL                             R26 4 1
      167 SETTABLEKS                       R26 R25 K36 ["Size"]
      169 MOVE                             R26 R2
      170 LOADK                            R27 K58 ["richText"]
      171 CALL                             R26 1 1
      172 SETTABLEKS                       R26 R25 K51 ["Text"]
      174 LOADB                            R26 1
      175 SETTABLEKS                       R26 R25 K52 ["RichText"]
      177 LOADB                            R26 1
      178 SETTABLEKS                       R26 R25 K53 ["TextWrapped"]
      180 LOADN                            R26 1
      181 SETTABLEKS                       R26 R25 K29 ["LayoutOrder"]
      183 CALL                             R24 1 -1
      184 SETLIST                          R23 R24 -1 [1]
      186 CALL                             R22 1 1
      187 SETTABLEKS                       R22 R21 K43 ["Else"]
      189 CALL                             R20 1 -1
      190 SETLIST                          R19 R20 -1 [1]
      192 CALL                             R18 1 -1
      193 SETLIST                          R17 R18 -1 [1]
      195 DUPCLOSURE                       R18 K59 [PROTO_4]
      196 CAPTURE                          VAL R4
      197 CALL                             R14 4 1
      198 MOVE                             R15 R6
      199 LOADK                            R16 K60 ["MarkdownTableRow"]
      200 DUPTABLE                         R17 K62 [{"row", "rowIndex", "editorCtx", "blockIndex", "linkCallback", "LayoutOrder"}]
      201 NEWTABLE                         R18 0 0
      203 SETTABLEKS                       R18 R17 K61 ["row"]
      205 LOADN                            R18 0
      206 SETTABLEKS                       R18 R17 K26 ["rowIndex"]
      208 LOADNIL                          R18
      209 SETTABLEKS                       R18 R17 K24 ["editorCtx"]
      211 LOADN                            R18 0
      212 SETTABLEKS                       R18 R17 K25 ["blockIndex"]
      214 LOADNIL                          R18
      215 SETTABLEKS                       R18 R17 K28 ["linkCallback"]
      217 LOADN                            R18 0
      218 SETTABLEKS                       R18 R17 K29 ["LayoutOrder"]
      220 NEWTABLE                         R18 0 1
      222 MOVE                             R19 R7
      223 NEWTABLE                         R20 4 1
      225 MOVE                             R22 R2
      226 LOADK                            R23 K63 ["rowTags"]
      227 CALL                             R22 1 1
      228 SETTABLEKS                       R22 R20 K32 ["Tags"]
      230 GETIMPORT                        R22 K35 [UDim2.fromOffset]
      232 LOADN                            R23 0
      233 LOADN                            R24 0
      234 CALL                             R22 2 1
      235 SETTABLEKS                       R22 R20 K36 ["Size"]
      237 GETIMPORT                        R22 K65 [Enum.AutomaticSize.XY]
      239 SETTABLEKS                       R22 R20 K38 ["AutomaticSize"]
      241 MOVE                             R22 R2
      242 LOADK                            R23 K29 ["LayoutOrder"]
      243 CALL                             R22 1 1
      244 SETTABLEKS                       R22 R20 K29 ["LayoutOrder"]
      246 MOVE                             R21 R10
      247 DUPTABLE                         R22 K68 [{"items", "Each"}]
      248 MOVE                             R23 R2
      249 LOADK                            R24 K69 ["rowCells"]
      250 CALL                             R23 1 1
      251 SETTABLEKS                       R23 R22 K66 ["items"]
      253 MOVE                             R23 R6
      254 NEWTABLE                         R24 0 2
      256 LOADK                            R25 K70 ["cellIdx"]
      257 LOADK                            R26 K71 ["cell"]
      258 SETLIST                          R24 R25 2 [1]
      260 NEWTABLE                         R25 0 1
      262 MOVE                             R26 R14
      263 DUPTABLE                         R27 K30 [{"node", "editorCtx", "blockIndex", "rowIndex", "cellIndex", "linkCallback", "LayoutOrder"}]
      264 MOVE                             R28 R2
      265 LOADK                            R29 K71 ["cell"]
      266 CALL                             R28 1 1
      267 SETTABLEKS                       R28 R27 K23 ["node"]
      269 MOVE                             R28 R2
      270 LOADK                            R29 K24 ["editorCtx"]
      271 CALL                             R28 1 1
      272 SETTABLEKS                       R28 R27 K24 ["editorCtx"]
      274 MOVE                             R28 R2
      275 LOADK                            R29 K25 ["blockIndex"]
      276 CALL                             R28 1 1
      277 SETTABLEKS                       R28 R27 K25 ["blockIndex"]
      279 MOVE                             R28 R2
      280 LOADK                            R29 K26 ["rowIndex"]
      281 CALL                             R28 1 1
      282 SETTABLEKS                       R28 R27 K26 ["rowIndex"]
      284 MOVE                             R28 R2
      285 LOADK                            R29 K70 ["cellIdx"]
      286 CALL                             R28 1 1
      287 SETTABLEKS                       R28 R27 K27 ["cellIndex"]
      289 MOVE                             R28 R2
      290 LOADK                            R29 K28 ["linkCallback"]
      291 CALL                             R28 1 1
      292 SETTABLEKS                       R28 R27 K28 ["linkCallback"]
      294 MOVE                             R28 R2
      295 LOADK                            R29 K70 ["cellIdx"]
      296 CALL                             R28 1 1
      297 SETTABLEKS                       R28 R27 K29 ["LayoutOrder"]
      299 CALL                             R26 1 -1
      300 SETLIST                          R25 R26 -1 [1]
      302 CALL                             R23 2 1
      303 SETTABLEKS                       R23 R22 K67 ["Each"]
      305 CALL                             R21 1 -1
      306 SETLIST                          R20 R21 -1 [1]
      308 CALL                             R19 1 -1
      309 SETLIST                          R18 R19 -1 [1]
      311 DUPCLOSURE                       R19 K72 [PROTO_6]
      312 CALL                             R15 4 1
      313 MOVE                             R16 R6
      314 LOADK                            R17 K73 ["MarkdownTable"]
      315 DUPTABLE                         R18 K74 [{"node", "editorCtx", "blockIndex", "linkCallback", "LayoutOrder"}]
      316 NEWTABLE                         R19 0 0
      318 SETTABLEKS                       R19 R18 K23 ["node"]
      320 LOADNIL                          R19
      321 SETTABLEKS                       R19 R18 K24 ["editorCtx"]
      323 LOADN                            R19 0
      324 SETTABLEKS                       R19 R18 K25 ["blockIndex"]
      326 LOADNIL                          R19
      327 SETTABLEKS                       R19 R18 K28 ["linkCallback"]
      329 LOADN                            R19 0
      330 SETTABLEKS                       R19 R18 K29 ["LayoutOrder"]
      332 NEWTABLE                         R19 0 1
      334 MOVE                             R20 R7
      335 NEWTABLE                         R21 8 3
      337 LOADK                            R25 K75 ["tableWrapper"]
      338 SETTABLEKS                       R25 R21 K76 ["ref"]
      340 GETIMPORT                        R25 K57 [UDim2.new]
      342 LOADN                            R26 1
      343 LOADN                            R27 0
      344 LOADN                            R28 0
      345 LOADN                            R29 0
      346 CALL                             R25 4 1
      347 SETTABLEKS                       R25 R21 K36 ["Size"]
      349 GETIMPORT                        R25 K40 [Enum.AutomaticSize.Y]
      351 SETTABLEKS                       R25 R21 K38 ["AutomaticSize"]
      353 LOADN                            R25 1
      354 SETTABLEKS                       R25 R21 K77 ["BackgroundTransparency"]
      356 MOVE                             R25 R2
      357 LOADK                            R26 K29 ["LayoutOrder"]
      358 CALL                             R25 1 1
      359 SETTABLEKS                       R25 R21 K29 ["LayoutOrder"]
      361 MOVE                             R22 R7
      362 NEWTABLE                         R23 2 1
      364 LOADK                            R25 K78 ["md-table auto-xy"]
      365 SETTABLEKS                       R25 R23 K32 ["Tags"]
      367 LOADN                            R25 1
      368 SETTABLEKS                       R25 R23 K29 ["LayoutOrder"]
      370 MOVE                             R24 R10
      371 DUPTABLE                         R25 K80 [{"items", "keyBy", "Each"}]
      372 MOVE                             R26 R2
      373 LOADK                            R27 K81 ["tableRows"]
      374 CALL                             R26 1 1
      375 SETTABLEKS                       R26 R25 K66 ["items"]
      377 DUPCLOSURE                       R26 K82 [PROTO_7]
      378 SETTABLEKS                       R26 R25 K79 ["keyBy"]
      380 MOVE                             R26 R6
      381 NEWTABLE                         R27 0 2
      383 LOADK                            R28 K83 ["rowIdx"]
      384 LOADK                            R29 K61 ["row"]
      385 SETLIST                          R27 R28 2 [1]
      387 NEWTABLE                         R28 0 1
      389 MOVE                             R29 R15
      390 DUPTABLE                         R30 K62 [{"row", "rowIndex", "editorCtx", "blockIndex", "linkCallback", "LayoutOrder"}]
      391 MOVE                             R31 R2
      392 LOADK                            R32 K61 ["row"]
      393 CALL                             R31 1 1
      394 SETTABLEKS                       R31 R30 K61 ["row"]
      396 MOVE                             R31 R2
      397 LOADK                            R32 K83 ["rowIdx"]
      398 CALL                             R31 1 1
      399 SETTABLEKS                       R31 R30 K26 ["rowIndex"]
      401 MOVE                             R31 R2
      402 LOADK                            R32 K24 ["editorCtx"]
      403 CALL                             R31 1 1
      404 SETTABLEKS                       R31 R30 K24 ["editorCtx"]
      406 MOVE                             R31 R2
      407 LOADK                            R32 K25 ["blockIndex"]
      408 CALL                             R31 1 1
      409 SETTABLEKS                       R31 R30 K25 ["blockIndex"]
      411 MOVE                             R31 R2
      412 LOADK                            R32 K28 ["linkCallback"]
      413 CALL                             R31 1 1
      414 SETTABLEKS                       R31 R30 K28 ["linkCallback"]
      416 MOVE                             R31 R2
      417 LOADK                            R32 K83 ["rowIdx"]
      418 CALL                             R31 1 1
      419 SETTABLEKS                       R31 R30 K29 ["LayoutOrder"]
      421 CALL                             R29 1 -1
      422 SETLIST                          R28 R29 -1 [1]
      424 CALL                             R26 2 1
      425 SETTABLEKS                       R26 R25 K67 ["Each"]
      427 CALL                             R24 1 -1
      428 SETLIST                          R23 R24 -1 [1]
      430 CALL                             R22 1 1
      431 MOVE                             R23 R7
      432 DUPTABLE                         R24 K88 [{"Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "BorderColor3", "ZIndex"}]
      433 GETIMPORT                        R25 K57 [UDim2.new]
      435 LOADN                            R26 1
      436 LOADN                            R27 0
      437 LOADN                            R28 1
      438 LOADN                            R29 0
      439 CALL                             R25 4 1
      440 SETTABLEKS                       R25 R24 K36 ["Size"]
      442 SETTABLEKS                       R13 R24 K84 ["BackgroundColor3"]
      444 MOVE                             R25 R2
      445 LOADK                            R26 K89 ["overlayTransparency"]
      446 CALL                             R25 1 1
      447 SETTABLEKS                       R25 R24 K77 ["BackgroundTransparency"]
      449 MOVE                             R25 R2
      450 LOADK                            R26 K90 ["borderSize"]
      451 CALL                             R25 1 1
      452 SETTABLEKS                       R25 R24 K85 ["BorderSizePixel"]
      454 SETTABLEKS                       R13 R24 K86 ["BorderColor3"]
      456 LOADN                            R25 10
      457 SETTABLEKS                       R25 R24 K87 ["ZIndex"]
      459 CALL                             R23 1 1
      460 MOVE                             R24 R11
      461 DUPTABLE                         R25 K91 [{"when", "Then"}]
      462 MOVE                             R26 R2
      463 LOADK                            R27 K92 ["showBlockClickTarget"]
      464 CALL                             R26 1 1
      465 SETTABLEKS                       R26 R25 K41 ["when"]
      467 MOVE                             R26 R6
      468 NEWTABLE                         R27 0 1
      470 MOVE                             R28 R9
      471 DUPTABLE                         R29 K94 [{"Size", "BackgroundTransparency", "Text", "ZIndex", "OnActivated"}]
      472 GETIMPORT                        R30 K57 [UDim2.new]
      474 LOADN                            R31 1
      475 LOADN                            R32 0
      476 LOADN                            R33 1
      477 LOADN                            R34 0
      478 CALL                             R30 4 1
      479 SETTABLEKS                       R30 R29 K36 ["Size"]
      481 LOADN                            R30 1
      482 SETTABLEKS                       R30 R29 K77 ["BackgroundTransparency"]
      484 LOADK                            R30 K95 [""]
      485 SETTABLEKS                       R30 R29 K51 ["Text"]
      487 LOADN                            R30 11
      488 SETTABLEKS                       R30 R29 K87 ["ZIndex"]
      490 MOVE                             R30 R2
      491 LOADK                            R31 K96 ["onBlockClick"]
      492 CALL                             R30 1 1
      493 SETTABLEKS                       R30 R29 K93 ["OnActivated"]
      495 CALL                             R28 1 -1
      496 SETLIST                          R27 R28 -1 [1]
      498 CALL                             R26 1 1
      499 SETTABLEKS                       R26 R25 K42 ["Then"]
      501 CALL                             R24 1 -1
      502 SETLIST                          R21 R22 -1 [1]
      504 CALL                             R20 1 -1
      505 SETLIST                          R19 R20 -1 [1]
      507 DUPCLOSURE                       R20 K97 [PROTO_13]
      508 CAPTURE                          VAL R5
      509 CALL                             R16 4 1
      510 RETURN                           R16 1
