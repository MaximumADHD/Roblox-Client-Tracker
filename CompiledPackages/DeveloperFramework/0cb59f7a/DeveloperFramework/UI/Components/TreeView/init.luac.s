PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 RETURN                           R1 1

PROTO_1:
        0 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Item"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["props"]
        5 GETTABLEKS                       R2 R3 K2 ["OnExpansionChange"]
        7 JUMPIFNOT                        R2 ; [+21]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K3 ["getItemId"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K1 ["props"]
       16 GETTABLEKS                       R3 R4 K2 ["OnExpansionChange"]
       18 NEWTABLE                         R4 1 0
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R8 R9 K1 ["props"]
       23 GETTABLEKS                       R7 R8 K4 ["Expansion"]
       25 GETTABLE                         R6 R7 R2
       26 NOT                              R5 R6
       27 SETTABLE                         R5 R4 R2
       28 CALL                             R3 1 0
       29 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["Item"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["props"]
        5 GETTABLEKS                       R2 R3 K2 ["OnSelectionChange"]
        7 JUMPIFNOT                        R2 ; [+15]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K3 ["getItemId"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K1 ["props"]
       16 GETTABLEKS                       R3 R4 K2 ["OnSelectionChange"]
       18 NEWTABLE                         R4 1 0
       20 LOADB                            R5 1
       21 SETTABLE                         R5 R4 R2
       22 CALL                             R3 1 0
       23 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["props"]
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R5 R6 K1 ["getChildren"]
        6 GETTABLEKS                       R6 R0 K2 ["item"]
        8 CALL                             R5 1 1
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R6 R7 K3 ["getItemId"]
       12 GETTABLEKS                       R7 R0 K2 ["item"]
       14 CALL                             R6 1 1
       15 GETUPVAL                         R7 1
       16 DUPTABLE                         R8 K15 [{"Key", "Index", "Item", "Depth", "Position", "Size", "Selected", "Children", "OnToggle", "OnPress", "Expanded"}]
       17 GETTABLEKS                       R10 R4 K16 ["GetItemKey"]
       19 JUMPIFNOT                        R10 ; [+7]
       20 GETTABLEKS                       R9 R4 K16 ["GetItemKey"]
       22 GETTABLEKS                       R10 R0 K2 ["item"]
       24 MOVE                             R11 R1
       25 CALL                             R9 2 1
       26 JUMP                             ; [+1]
       27 MOVE                             R9 R1
       28 SETTABLEKS                       R9 R8 K4 ["Key"]
       30 SETTABLEKS                       R1 R8 K5 ["Index"]
       32 GETTABLEKS                       R9 R0 K2 ["item"]
       34 SETTABLEKS                       R9 R8 K6 ["Item"]
       36 GETTABLEKS                       R9 R0 K17 ["depth"]
       38 SETTABLEKS                       R9 R8 K7 ["Depth"]
       40 SETTABLEKS                       R2 R8 K8 ["Position"]
       42 SETTABLEKS                       R3 R8 K9 ["Size"]
       44 GETTABLEKS                       R9 R4 K18 ["Selection"]
       46 JUMPIFNOT                        R9 ; [+3]
       47 GETTABLEKS                       R10 R4 K18 ["Selection"]
       49 GETTABLE                         R9 R10 R6
       50 SETTABLEKS                       R9 R8 K10 ["Selected"]
       52 MOVE                             R9 R5
       53 JUMPIF                           R9 ; [+2]
       54 NEWTABLE                         R9 0 0
       56 SETTABLEKS                       R9 R8 K11 ["Children"]
       58 GETUPVAL                         R10 0
       59 GETTABLEKS                       R9 R10 K19 ["onToggle"]
       61 SETTABLEKS                       R9 R8 K12 ["OnToggle"]
       63 GETUPVAL                         R10 0
       64 GETTABLEKS                       R9 R10 K20 ["onSelect"]
       66 SETTABLEKS                       R9 R8 K13 ["OnPress"]
       68 GETTABLEKS                       R11 R4 K22 ["Expansion"]
       70 GETTABLE                         R10 R11 R6
       71 ORK                              R9 R10 K21 [False]
       72 SETTABLEKS                       R9 R8 K14 ["Expanded"]
       74 GETTABLEKS                       R9 R4 K23 ["RowProps"]
       76 CALL                             R7 2 -1
       77 RETURN                           R7 -1

PROTO_5:
        0 DUPTABLE                         R1 K1 [{"rows"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["rows"]
        5 SETTABLEKS                       R1 R0 K2 ["state"]
        7 DUPCLOSURE                       R1 K3 [PROTO_0]
        8 SETTABLEKS                       R1 R0 K4 ["defaultGetChildren"]
       10 GETTABLEKS                       R2 R0 K5 ["props"]
       12 GETTABLEKS                       R1 R2 K6 ["GetChildren"]
       14 JUMPIF                           R1 ; [+2]
       15 GETTABLEKS                       R1 R0 K4 ["defaultGetChildren"]
       17 SETTABLEKS                       R1 R0 K7 ["getChildren"]
       19 DUPCLOSURE                       R1 K8 [PROTO_1]
       20 SETTABLEKS                       R1 R0 K9 ["defaultGetItemId"]
       22 GETTABLEKS                       R2 R0 K5 ["props"]
       24 GETTABLEKS                       R1 R2 K10 ["GetItemId"]
       26 JUMPIF                           R1 ; [+2]
       27 GETTABLEKS                       R1 R0 K9 ["defaultGetItemId"]
       29 SETTABLEKS                       R1 R0 K11 ["getItemId"]
       31 NEWCLOSURE                       R1 P2
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R1 R0 K12 ["onToggle"]
       35 NEWCLOSURE                       R1 P3
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R1 R0 K13 ["onSelect"]
       39 NEWCLOSURE                       R1 P4
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U0
       42 SETTABLEKS                       R1 R0 K14 ["_getRowProps"]
       44 RETURN                           R0 0

PROTO_6:
        0 NAMECALL                         R1 R0 K0 ["calculateRows"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["GetChildren"]
        2 GETTABLEKS                       R4 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R4 K0 ["GetChildren"]
        6 JUMPIFEQ                         R2 R3 ; [+8]
        8 GETTABLEKS                       R2 R1 K0 ["GetChildren"]
       10 JUMPIF                           R2 ; [+2]
       11 GETTABLEKS                       R2 R0 K2 ["defaultGetChildren"]
       13 SETTABLEKS                       R2 R0 K3 ["getChildren"]
       15 GETTABLEKS                       R2 R1 K4 ["GetItemId"]
       17 GETTABLEKS                       R4 R0 K1 ["props"]
       19 GETTABLEKS                       R3 R4 K4 ["GetItemId"]
       21 JUMPIFEQ                         R2 R3 ; [+8]
       23 GETTABLEKS                       R2 R1 K4 ["GetItemId"]
       25 JUMPIF                           R2 ; [+2]
       26 GETTABLEKS                       R2 R0 K5 ["defaultGetItemId"]
       28 SETTABLEKS                       R2 R0 K6 ["getItemId"]
       30 RETURN                           R0 0

PROTO_8:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["calculateRows"]
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_9:
        0 JUMPIFNOT                        R1 ; [+41]
        1 GETTABLEKS                       R3 R0 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["RootItems"]
        5 GETTABLEKS                       R3 R1 K1 ["RootItems"]
        7 JUMPIFNOTEQ                      R2 R3 ; [+34]
        9 GETTABLEKS                       R3 R0 K0 ["props"]
       11 GETTABLEKS                       R2 R3 K2 ["GetChildren"]
       13 GETTABLEKS                       R3 R1 K2 ["GetChildren"]
       15 JUMPIFNOTEQ                      R2 R3 ; [+26]
       17 GETTABLEKS                       R3 R0 K0 ["props"]
       19 GETTABLEKS                       R2 R3 K3 ["GetItemKey"]
       21 GETTABLEKS                       R3 R1 K3 ["GetItemKey"]
       23 JUMPIFNOTEQ                      R2 R3 ; [+18]
       25 GETTABLEKS                       R3 R0 K0 ["props"]
       27 GETTABLEKS                       R2 R3 K4 ["Expansion"]
       29 GETTABLEKS                       R3 R1 K4 ["Expansion"]
       31 JUMPIFNOTEQ                      R2 R3 ; [+10]
       33 GETTABLEKS                       R3 R0 K0 ["props"]
       35 GETTABLEKS                       R2 R3 K5 ["Selection"]
       37 GETTABLEKS                       R3 R1 K5 ["Selection"]
       39 JUMPIFNOTEQ                      R2 R3 ; [+2]
       41 RETURN                           R0 0
       42 NEWTABLE                         R2 0 0
       44 GETIMPORT                        R3 K7 [pairs]
       46 GETTABLEKS                       R6 R0 K0 ["props"]
       48 GETTABLEKS                       R4 R6 K1 ["RootItems"]
       50 CALL                             R3 1 3
       51 FORGPREP_NEXT                    R3
       52 MOVE                             R10 R7
       53 LOADN                            R11 0
       54 MOVE                             R12 R2
       55 NAMECALL                         R8 R0 K8 ["contributeItem"]
       57 CALL                             R8 4 0
       58 FORGLOOP                         R3 2 ; [-7]
       60 DUPTABLE                         R5 K10 [{"rows"}]
       61 SETTABLEKS                       R2 R5 K9 ["rows"]
       63 NAMECALL                         R3 R0 K11 ["setState"]
       65 CALL                             R3 2 0
       66 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R5 R0 K1 ["getItemId"]
        4 MOVE                             R6 R1
        5 CALL                             R5 1 1
        6 DUPTABLE                         R8 K5 [{"index", "depth", "item"}]
        7 LENGTH                           R10 R3
        8 ADDK                             R9 R10 K6 [1]
        9 SETTABLEKS                       R9 R8 K2 ["index"]
       11 SETTABLEKS                       R2 R8 K3 ["depth"]
       13 SETTABLEKS                       R1 R8 K4 ["item"]
       15 FASTCALL2                        TABLE_INSERT R3 R8 ; [+4]
       17 MOVE                             R7 R3
       18 GETIMPORT                        R6 K9 [table.insert]
       20 CALL                             R6 2 0
       21 GETTABLEKS                       R7 R4 K10 ["Expansion"]
       23 GETTABLE                         R6 R7 R5
       24 JUMPIFNOT                        R6 ; [+26]
       25 GETTABLEKS                       R6 R0 K11 ["getChildren"]
       27 MOVE                             R7 R1
       28 CALL                             R6 1 1
       29 GETTABLEKS                       R7 R4 K12 ["SortChildren"]
       31 JUMPIFNOT                        R7 ; [+6]
       32 GETIMPORT                        R7 K14 [table.sort]
       34 MOVE                             R8 R6
       35 GETTABLEKS                       R9 R4 K12 ["SortChildren"]
       37 CALL                             R7 2 0
       38 GETIMPORT                        R7 K16 [pairs]
       40 MOVE                             R8 R6
       41 CALL                             R7 1 3
       42 FORGPREP_NEXT                    R7
       43 MOVE                             R14 R11
       44 ADDK                             R15 R2 K6 [1]
       45 MOVE                             R16 R3
       46 NAMECALL                         R12 R0 K17 ["contributeItem"]
       48 CALL                             R12 4 0
       49 FORGLOOP                         R7 2 ; [-7]
       51 RETURN                           R3 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOT                        R3 ; [+6]
        4 GETTABLEKS                       R2 R1 K1 ["Style"]
        6 JUMPIF                           R2 ; [+5]
        7 NEWTABLE                         R2 0 0
        9 JUMP                             ; [+2]
       10 GETTABLEKS                       R2 R1 K2 ["Stylizer"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K3 ["createElement"]
       15 GETUPVAL                         R4 2
       16 DUPTABLE                         R5 K8 [{"Rows", "GetRowProps", "RowHeight", "RowComponent"}]
       17 GETTABLEKS                       R7 R0 K9 ["state"]
       19 GETTABLEKS                       R6 R7 K10 ["rows"]
       21 SETTABLEKS                       R6 R5 K4 ["Rows"]
       23 GETTABLEKS                       R6 R1 K5 ["GetRowProps"]
       25 JUMPIF                           R6 ; [+2]
       26 GETTABLEKS                       R6 R0 K11 ["_getRowProps"]
       28 SETTABLEKS                       R6 R5 K5 ["GetRowProps"]
       30 GETUPVAL                         R7 0
       31 JUMPIFNOT                        R7 ; [+3]
       32 GETTABLEKS                       R6 R1 K6 ["RowHeight"]
       34 JUMP                             ; [+6]
       35 GETUPVAL                         R6 3
       36 GETTABLEKS                       R7 R1 K6 ["RowHeight"]
       38 GETTABLEKS                       R8 R2 K6 ["RowHeight"]
       40 CALL                             R6 2 1
       41 SETTABLEKS                       R6 R5 K6 ["RowHeight"]
       43 GETTABLEKS                       R6 R1 K7 ["RowComponent"]
       45 JUMPIF                           R6 ; [+1]
       46 GETUPVAL                         R6 4
       47 SETTABLEKS                       R6 R5 K7 ["RowComponent"]
       49 CALL                             R3 2 -1
       50 RETURN                           R3 -1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOT                        R3 ; [+6]
        4 GETTABLEKS                       R2 R1 K1 ["Style"]
        6 JUMPIF                           R2 ; [+5]
        7 NEWTABLE                         R2 0 0
        9 JUMP                             ; [+2]
       10 GETTABLEKS                       R2 R1 K2 ["Stylizer"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K3 ["createElement"]
       15 GETUPVAL                         R4 2
       16 GETUPVAL                         R6 0
       17 JUMPIFNOT                        R6 ; [+27]
       18 NEWTABLE                         R5 4 0
       20 GETTABLEKS                       R6 R1 K4 ["Size"]
       22 SETTABLEKS                       R6 R5 K4 ["Size"]
       24 GETTABLEKS                       R6 R1 K5 ["LayoutOrder"]
       26 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       28 GETTABLEKS                       R6 R1 K6 ["ZIndex"]
       30 SETTABLEKS                       R6 R5 K6 ["ZIndex"]
       32 GETUPVAL                         R7 3
       33 GETTABLEKS                       R6 R7 K7 ["Tag"]
       35 GETUPVAL                         R7 4
       36 LOADK                            R8 K8 ["Component-TreeView"]
       37 GETUPVAL                         R12 3
       38 GETTABLEKS                       R11 R12 K7 ["Tag"]
       40 GETTABLE                         R10 R1 R11
       41 ORK                              R9 R10 K9 ["Input X-PadS X-Stroke X-Corner"]
       42 CALL                             R7 2 1
       43 SETTABLE                         R7 R5 R6
       44 JUMP                             ; [+19]
       45 DUPTABLE                         R5 K11 [{"Padding", "Size", "LayoutOrder", "ZIndex", "Style"}]
       46 GETTABLEKS                       R6 R2 K10 ["Padding"]
       48 SETTABLEKS                       R6 R5 K10 ["Padding"]
       50 GETTABLEKS                       R6 R1 K4 ["Size"]
       52 SETTABLEKS                       R6 R5 K4 ["Size"]
       54 GETTABLEKS                       R6 R1 K5 ["LayoutOrder"]
       56 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       58 GETTABLEKS                       R6 R1 K6 ["ZIndex"]
       60 SETTABLEKS                       R6 R5 K6 ["ZIndex"]
       62 SETTABLEKS                       R2 R5 K1 ["Style"]
       64 DUPTABLE                         R6 K13 [{"List"}]
       65 NAMECALL                         R7 R0 K14 ["_renderList"]
       67 CALL                             R7 1 1
       68 SETTABLEKS                       R7 R6 K12 ["List"]
       70 CALL                             R3 3 -1
       71 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R4 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R6 R0 K10 ["Util"]
       29 GETTABLEKS                       R5 R6 K11 ["prioritize"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R6 R0 K4 ["Parent"]
       34 LOADK                            R8 K12 ["React"]
       35 NAMECALL                         R6 R6 K13 ["FindFirstChild"]
       37 CALL                             R6 2 1
       38 JUMPIFNOT                        R6 ; [+8]
       39 GETIMPORT                        R5 K6 [require]
       41 GETTABLEKS                       R7 R0 K4 ["Parent"]
       43 GETTABLEKS                       R6 R7 K12 ["React"]
       45 CALL                             R5 1 1
       46 JUMP                             ; [+1]
       47 LOADNIL                          R5
       48 GETIMPORT                        R6 K6 [require]
       50 GETTABLEKS                       R8 R0 K14 ["Styling"]
       52 GETTABLEKS                       R7 R8 K15 ["supportsStyleSheets"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K6 [require]
       57 GETTABLEKS                       R9 R0 K14 ["Styling"]
       59 GETTABLEKS                       R8 R9 K16 ["joinTags"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K6 [require]
       64 GETTABLEKS                       R10 R0 K4 ["Parent"]
       66 GETTABLEKS                       R9 R10 K17 ["Dash"]
       68 CALL                             R8 1 1
       69 GETTABLEKS                       R9 R8 K18 ["join"]
       71 GETTABLEKS                       R10 R0 K2 ["UI"]
       73 GETIMPORT                        R11 K6 [require]
       75 GETTABLEKS                       R13 R10 K19 ["Components"]
       77 GETTABLEKS                       R12 R13 K20 ["Pane"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K6 [require]
       82 GETTABLEKS                       R14 R10 K19 ["Components"]
       84 GETTABLEKS                       R13 R14 K21 ["List"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K6 [require]
       89 GETTABLEKS                       R15 R10 K19 ["Components"]
       91 GETTABLEKS                       R14 R15 K22 ["TreeViewRow"]
       93 CALL                             R13 1 1
       94 GETTABLEKS                       R14 R1 K23 ["PureComponent"]
       96 LOADK                            R16 K24 ["TreeView"]
       97 NAMECALL                         R14 R14 K25 ["extend"]
       99 CALL                             R14 2 1
      100 NEWTABLE                         R15 0 0
      102 SETTABLEKS                       R15 R14 K26 ["defaultProps"]
      104 DUPCLOSURE                       R15 K27 [PROTO_5]
      105 CAPTURE                          VAL R9
      106 SETTABLEKS                       R15 R14 K28 ["init"]
      108 DUPCLOSURE                       R15 K29 [PROTO_6]
      109 SETTABLEKS                       R15 R14 K30 ["didMount"]
      111 DUPCLOSURE                       R15 K31 [PROTO_7]
      112 SETTABLEKS                       R15 R14 K32 ["willUpdate"]
      114 DUPCLOSURE                       R15 K33 [PROTO_8]
      115 SETTABLEKS                       R15 R14 K34 ["didUpdate"]
      117 DUPCLOSURE                       R15 K35 [PROTO_9]
      118 SETTABLEKS                       R15 R14 K36 ["calculateRows"]
      120 DUPCLOSURE                       R15 K37 [PROTO_10]
      121 SETTABLEKS                       R15 R14 K38 ["contributeItem"]
      123 DUPCLOSURE                       R15 K39 [PROTO_11]
      124 CAPTURE                          VAL R6
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R13
      129 SETTABLEKS                       R15 R14 K40 ["_renderList"]
      131 DUPCLOSURE                       R15 K41 [PROTO_12]
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R11
      135 CAPTURE                          VAL R5
      136 CAPTURE                          VAL R7
      137 SETTABLEKS                       R15 R14 K42 ["render"]
      139 MOVE                             R15 R3
      140 DUPTABLE                         R16 K44 [{"Stylizer"}]
      141 JUMPIFNOT                        R6 ; [+2]
      142 LOADNIL                          R17
      143 JUMP                             ; [+2]
      144 GETTABLEKS                       R17 R2 K43 ["Stylizer"]
      146 SETTABLEKS                       R17 R16 K43 ["Stylizer"]
      148 CALL                             R15 1 1
      149 MOVE                             R16 R14
      150 CALL                             R15 1 1
      151 MOVE                             R14 R15
      152 RETURN                           R14 1
