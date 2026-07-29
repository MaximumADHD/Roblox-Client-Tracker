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
       61 DUPTABLE                         R17 K32 [{["node"], ["editorCtx"] = , ["blockIndex"] = 0, ["rowIndex"] = 0, ["cellIndex"] = 0, ["linkCallback"] = , ["LayoutOrder"] = 0}]
       62 NEWTABLE                         R18 0 0
       64 SETTABLEKS                       R18 R17 K23 ["node"]
       66 NEWTABLE                         R18 0 1
       68 MOVE                             R19 R8
       69 NEWTABLE                         R20 4 1
       71 LOADK                            R22 K33 ["md-table-cell"]
       72 SETTABLEKS                       R22 R20 K34 ["Tags"]
       74 GETIMPORT                        R22 K37 [UDim2.fromOffset]
       76 LOADN                            R23 120
       77 LOADN                            R24 0
       78 CALL                             R22 2 1
       79 SETTABLEKS                       R22 R20 K38 ["Size"]
       81 GETIMPORT                        R22 K42 [Enum.AutomaticSize.Y]
       83 SETTABLEKS                       R22 R20 K40 ["AutomaticSize"]
       85 MOVE                             R22 R3
       86 LOADK                            R23 K31 ["LayoutOrder"]
       87 CALL                             R22 1 1
       88 SETTABLEKS                       R22 R20 K31 ["LayoutOrder"]
       90 MOVE                             R21 R12
       91 DUPTABLE                         R22 K46 [{"when", "Then", "Else"}]
       92 MOVE                             R23 R3
       93 LOADK                            R24 K47 ["hasEditor"]
       94 CALL                             R23 1 1
       95 SETTABLEKS                       R23 R22 K43 ["when"]
       97 MOVE                             R23 R7
       98 NEWTABLE                         R24 0 1
      100 MOVE                             R25 R13
      101 DUPTABLE                         R26 K51 [{["nodes"], ["editorCtx"], ["blockIndex"], ["path"], ["linkCallback"], ["LayoutOrder"] = 1}]
      102 MOVE                             R27 R3
      103 LOADK                            R28 K52 ["inlineNodes"]
      104 CALL                             R27 1 1
      105 SETTABLEKS                       R27 R26 K48 ["nodes"]
      107 MOVE                             R27 R3
      108 LOADK                            R28 K24 ["editorCtx"]
      109 CALL                             R27 1 1
      110 SETTABLEKS                       R27 R26 K24 ["editorCtx"]
      112 MOVE                             R27 R3
      113 LOADK                            R28 K26 ["blockIndex"]
      114 CALL                             R27 1 1
      115 SETTABLEKS                       R27 R26 K26 ["blockIndex"]
      117 MOVE                             R27 R3
      118 LOADK                            R28 K53 ["cellPath"]
      119 CALL                             R27 1 1
      120 SETTABLEKS                       R27 R26 K49 ["path"]
      122 MOVE                             R27 R3
      123 LOADK                            R28 K30 ["linkCallback"]
      124 CALL                             R27 1 1
      125 SETTABLEKS                       R27 R26 K30 ["linkCallback"]
      127 CALL                             R25 1 -1
      128 SETLIST                          R24 R25 -1 [1]
      130 CALL                             R23 1 1
      131 SETTABLEKS                       R23 R22 K44 ["Then"]
      133 MOVE                             R23 R7
      134 NEWTABLE                         R24 0 1
      136 MOVE                             R25 R9
      137 DUPTABLE                         R26 K59 [{["Tags"] = "auto-y", ["Size"], ["Text"], ["RichText"] = True, ["TextWrapped"] = True, ["LayoutOrder"] = 1}]
      138 GETIMPORT                        R27 K61 [UDim2.new]
      140 LOADN                            R28 1
      141 LOADN                            R29 0
      142 LOADN                            R30 0
      143 LOADN                            R31 0
      144 CALL                             R27 4 1
      145 SETTABLEKS                       R27 R26 K38 ["Size"]
      147 MOVE                             R27 R3
      148 LOADK                            R28 K62 ["richText"]
      149 CALL                             R27 1 1
      150 SETTABLEKS                       R27 R26 K55 ["Text"]
      152 CALL                             R25 1 -1
      153 SETLIST                          R24 R25 -1 [1]
      155 CALL                             R23 1 1
      156 SETTABLEKS                       R23 R22 K45 ["Else"]
      158 CALL                             R21 1 -1
      159 SETLIST                          R20 R21 -1 [1]
      161 CALL                             R19 1 -1
      162 SETLIST                          R18 R19 -1 [1]
      164 DUPCLOSURE                       R19 K63 [PROTO_4]
      165 CAPTURE                          VAL R5
      166 CALL                             R15 4 1
      167 MOVE                             R16 R7
      168 LOADK                            R17 K64 ["MarkdownTableRow"]
      169 DUPTABLE                         R18 K66 [{["row"], ["rowIndex"] = 0, ["editorCtx"] = , ["blockIndex"] = 0, ["linkCallback"] = , ["LayoutOrder"] = 0}]
      170 NEWTABLE                         R19 0 0
      172 SETTABLEKS                       R19 R18 K65 ["row"]
      174 NEWTABLE                         R19 0 1
      176 MOVE                             R20 R8
      177 NEWTABLE                         R21 4 1
      179 MOVE                             R23 R3
      180 LOADK                            R24 K67 ["rowTags"]
      181 CALL                             R23 1 1
      182 SETTABLEKS                       R23 R21 K34 ["Tags"]
      184 GETIMPORT                        R23 K37 [UDim2.fromOffset]
      186 LOADN                            R24 0
      187 LOADN                            R25 0
      188 CALL                             R23 2 1
      189 SETTABLEKS                       R23 R21 K38 ["Size"]
      191 GETIMPORT                        R23 K69 [Enum.AutomaticSize.XY]
      193 SETTABLEKS                       R23 R21 K40 ["AutomaticSize"]
      195 MOVE                             R23 R3
      196 LOADK                            R24 K31 ["LayoutOrder"]
      197 CALL                             R23 1 1
      198 SETTABLEKS                       R23 R21 K31 ["LayoutOrder"]
      200 MOVE                             R22 R11
      201 DUPTABLE                         R23 K72 [{"items", "Each"}]
      202 MOVE                             R24 R3
      203 LOADK                            R25 K73 ["rowCells"]
      204 CALL                             R24 1 1
      205 SETTABLEKS                       R24 R23 K70 ["items"]
      207 MOVE                             R24 R7
      208 NEWTABLE                         R25 0 2
      210 LOADK                            R26 K74 ["cellIdx"]
      211 LOADK                            R27 K75 ["cell"]
      212 SETLIST                          R25 R26 2 [1]
      214 NEWTABLE                         R26 0 1
      216 MOVE                             R27 R15
      217 DUPTABLE                         R28 K76 [{"node", "editorCtx", "blockIndex", "rowIndex", "cellIndex", "linkCallback", "LayoutOrder"}]
      218 MOVE                             R29 R3
      219 LOADK                            R30 K75 ["cell"]
      220 CALL                             R29 1 1
      221 SETTABLEKS                       R29 R28 K23 ["node"]
      223 MOVE                             R29 R3
      224 LOADK                            R30 K24 ["editorCtx"]
      225 CALL                             R29 1 1
      226 SETTABLEKS                       R29 R28 K24 ["editorCtx"]
      228 MOVE                             R29 R3
      229 LOADK                            R30 K26 ["blockIndex"]
      230 CALL                             R29 1 1
      231 SETTABLEKS                       R29 R28 K26 ["blockIndex"]
      233 MOVE                             R29 R3
      234 LOADK                            R30 K28 ["rowIndex"]
      235 CALL                             R29 1 1
      236 SETTABLEKS                       R29 R28 K28 ["rowIndex"]
      238 MOVE                             R29 R3
      239 LOADK                            R30 K74 ["cellIdx"]
      240 CALL                             R29 1 1
      241 SETTABLEKS                       R29 R28 K29 ["cellIndex"]
      243 MOVE                             R29 R3
      244 LOADK                            R30 K30 ["linkCallback"]
      245 CALL                             R29 1 1
      246 SETTABLEKS                       R29 R28 K30 ["linkCallback"]
      248 MOVE                             R29 R3
      249 LOADK                            R30 K74 ["cellIdx"]
      250 CALL                             R29 1 1
      251 SETTABLEKS                       R29 R28 K31 ["LayoutOrder"]
      253 CALL                             R27 1 -1
      254 SETLIST                          R26 R27 -1 [1]
      256 CALL                             R24 2 1
      257 SETTABLEKS                       R24 R23 K71 ["Each"]
      259 CALL                             R22 1 -1
      260 SETLIST                          R21 R22 -1 [1]
      262 CALL                             R20 1 -1
      263 SETLIST                          R19 R20 -1 [1]
      265 DUPCLOSURE                       R20 K77 [PROTO_6]
      266 CALL                             R16 4 1
      267 MOVE                             R17 R7
      268 LOADK                            R18 K78 ["MarkdownTable"]
      269 DUPTABLE                         R19 K79 [{["node"], ["editorCtx"] = , ["blockIndex"] = 0, ["linkCallback"] = , ["LayoutOrder"] = 0}]
      270 NEWTABLE                         R20 0 0
      272 SETTABLEKS                       R20 R19 K23 ["node"]
      274 NEWTABLE                         R20 0 1
      276 MOVE                             R21 R8
      277 NEWTABLE                         R22 8 3
      279 LOADK                            R26 K80 ["tableWrapper"]
      280 SETTABLEKS                       R26 R22 K81 ["ref"]
      282 GETIMPORT                        R26 K61 [UDim2.new]
      284 LOADN                            R27 1
      285 LOADN                            R28 0
      286 LOADN                            R29 0
      287 LOADN                            R30 0
      288 CALL                             R26 4 1
      289 SETTABLEKS                       R26 R22 K38 ["Size"]
      291 GETIMPORT                        R26 K42 [Enum.AutomaticSize.Y]
      293 SETTABLEKS                       R26 R22 K40 ["AutomaticSize"]
      295 LOADN                            R26 1
      296 SETTABLEKS                       R26 R22 K82 ["BackgroundTransparency"]
      298 MOVE                             R26 R3
      299 LOADK                            R27 K31 ["LayoutOrder"]
      300 CALL                             R26 1 1
      301 SETTABLEKS                       R26 R22 K31 ["LayoutOrder"]
      303 MOVE                             R23 R8
      304 NEWTABLE                         R24 2 1
      306 LOADK                            R26 K83 ["md-table auto-xy"]
      307 SETTABLEKS                       R26 R24 K34 ["Tags"]
      309 LOADN                            R26 1
      310 SETTABLEKS                       R26 R24 K31 ["LayoutOrder"]
      312 MOVE                             R25 R11
      313 DUPTABLE                         R26 K85 [{"items", "keyBy", "Each"}]
      314 MOVE                             R27 R3
      315 LOADK                            R28 K86 ["tableRows"]
      316 CALL                             R27 1 1
      317 SETTABLEKS                       R27 R26 K70 ["items"]
      319 DUPCLOSURE                       R27 K87 [PROTO_7]
      320 SETTABLEKS                       R27 R26 K84 ["keyBy"]
      322 MOVE                             R27 R7
      323 NEWTABLE                         R28 0 2
      325 LOADK                            R29 K88 ["rowIdx"]
      326 LOADK                            R30 K65 ["row"]
      327 SETLIST                          R28 R29 2 [1]
      329 NEWTABLE                         R29 0 1
      331 MOVE                             R30 R16
      332 DUPTABLE                         R31 K89 [{"row", "rowIndex", "editorCtx", "blockIndex", "linkCallback", "LayoutOrder"}]
      333 MOVE                             R32 R3
      334 LOADK                            R33 K65 ["row"]
      335 CALL                             R32 1 1
      336 SETTABLEKS                       R32 R31 K65 ["row"]
      338 MOVE                             R32 R3
      339 LOADK                            R33 K88 ["rowIdx"]
      340 CALL                             R32 1 1
      341 SETTABLEKS                       R32 R31 K28 ["rowIndex"]
      343 MOVE                             R32 R3
      344 LOADK                            R33 K24 ["editorCtx"]
      345 CALL                             R32 1 1
      346 SETTABLEKS                       R32 R31 K24 ["editorCtx"]
      348 MOVE                             R32 R3
      349 LOADK                            R33 K26 ["blockIndex"]
      350 CALL                             R32 1 1
      351 SETTABLEKS                       R32 R31 K26 ["blockIndex"]
      353 MOVE                             R32 R3
      354 LOADK                            R33 K30 ["linkCallback"]
      355 CALL                             R32 1 1
      356 SETTABLEKS                       R32 R31 K30 ["linkCallback"]
      358 MOVE                             R32 R3
      359 LOADK                            R33 K88 ["rowIdx"]
      360 CALL                             R32 1 1
      361 SETTABLEKS                       R32 R31 K31 ["LayoutOrder"]
      363 CALL                             R30 1 -1
      364 SETLIST                          R29 R30 -1 [1]
      366 CALL                             R27 2 1
      367 SETTABLEKS                       R27 R26 K71 ["Each"]
      369 CALL                             R25 1 -1
      370 SETLIST                          R24 R25 -1 [1]
      372 CALL                             R23 1 1
      373 MOVE                             R24 R8
      374 DUPTABLE                         R25 K95 [{["Size"], ["BackgroundColor3"], ["BackgroundTransparency"], ["BorderSizePixel"], ["BorderColor3"], ["ZIndex"] = 10}]
      375 GETIMPORT                        R26 K61 [UDim2.new]
      377 LOADN                            R27 1
      378 LOADN                            R28 0
      379 LOADN                            R29 1
      380 LOADN                            R30 0
      381 CALL                             R26 4 1
      382 SETTABLEKS                       R26 R25 K38 ["Size"]
      384 SETTABLEKS                       R14 R25 K90 ["BackgroundColor3"]
      386 MOVE                             R26 R3
      387 LOADK                            R27 K96 ["overlayTransparency"]
      388 CALL                             R26 1 1
      389 SETTABLEKS                       R26 R25 K82 ["BackgroundTransparency"]
      391 MOVE                             R26 R3
      392 LOADK                            R27 K97 ["borderSize"]
      393 CALL                             R26 1 1
      394 SETTABLEKS                       R26 R25 K91 ["BorderSizePixel"]
      396 SETTABLEKS                       R14 R25 K92 ["BorderColor3"]
      398 CALL                             R24 1 1
      399 MOVE                             R25 R12
      400 DUPTABLE                         R26 K98 [{"when", "Then"}]
      401 MOVE                             R27 R3
      402 LOADK                            R28 K99 ["showBlockClickTarget"]
      403 CALL                             R27 1 1
      404 SETTABLEKS                       R27 R26 K43 ["when"]
      406 MOVE                             R27 R7
      407 NEWTABLE                         R28 0 1
      409 MOVE                             R29 R10
      410 DUPTABLE                         R30 K103 [{["Size"], ["BackgroundTransparency"] = 1, ["Text"] = "", ["ZIndex"] = 11, ["OnActivated"]}]
      411 GETIMPORT                        R31 K61 [UDim2.new]
      413 LOADN                            R32 1
      414 LOADN                            R33 0
      415 LOADN                            R34 1
      416 LOADN                            R35 0
      417 CALL                             R31 4 1
      418 SETTABLEKS                       R31 R30 K38 ["Size"]
      420 MOVE                             R31 R3
      421 LOADK                            R32 K104 ["onBlockClick"]
      422 CALL                             R31 1 1
      423 SETTABLEKS                       R31 R30 K102 ["OnActivated"]
      425 CALL                             R29 1 -1
      426 SETLIST                          R28 R29 -1 [1]
      428 CALL                             R27 1 1
      429 SETTABLEKS                       R27 R26 K44 ["Then"]
      431 CALL                             R25 1 -1
      432 SETLIST                          R22 R23 -1 [1]
      434 CALL                             R21 1 -1
      435 SETLIST                          R20 R21 -1 [1]
      437 DUPCLOSURE                       R21 K105 [PROTO_13]
      438 CAPTURE                          VAL R6
      439 CALL                             R17 4 1
      440 RETURN                           R17 1
