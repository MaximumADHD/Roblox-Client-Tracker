PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["GetItemId"]
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["props"]
        9 GETTABLEKS                       R1 R2 K1 ["GetItemId"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1
       14 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+7]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["getItemId"]
        5 GETTABLEKS                       R2 R0 K1 ["item"]
        7 CALL                             R1 1 1
        8 JUMP                             ; [+2]
        9 GETTABLEKS                       R1 R0 K1 ["item"]
       11 NEWTABLE                         R2 1 0
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R6 R7 K2 ["props"]
       16 GETTABLEKS                       R5 R6 K3 ["Expansion"]
       18 GETTABLE                         R4 R5 R1
       19 NOT                              R3 R4
       20 SETTABLE                         R3 R2 R1
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R4 R5 K2 ["props"]
       24 GETTABLEKS                       R3 R4 K4 ["OnExpansionChange"]
       26 MOVE                             R4 R2
       27 CALL                             R3 1 0
       28 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+7]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["getItemId"]
        5 GETTABLEKS                       R2 R0 K1 ["item"]
        7 CALL                             R1 1 1
        8 JUMP                             ; [+2]
        9 GETTABLEKS                       R1 R0 K1 ["item"]
       11 NEWTABLE                         R2 1 0
       13 LOADB                            R3 1
       14 SETTABLE                         R3 R2 R1
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R4 R5 K2 ["props"]
       18 GETTABLEKS                       R3 R4 K3 ["OnSelectionChange"]
       20 MOVE                             R4 R2
       21 CALL                             R3 1 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["item"]
        2 GETUPVAL                         R6 0
        3 JUMPIFNOT                        R6 ; [+7]
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R5 R6 K1 ["getItemId"]
        7 GETTABLEKS                       R6 R0 K0 ["item"]
        9 CALL                             R5 1 1
       10 JUMP                             ; [+2]
       11 GETTABLEKS                       R5 R0 K0 ["item"]
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R6 R7 K2 ["props"]
       16 GETTABLEKS                       R7 R6 K3 ["Stylizer"]
       18 GETTABLEKS                       R9 R6 K4 ["Selection"]
       20 GETTABLE                         R8 R9 R5
       21 GETTABLEKS                       R10 R6 K5 ["Expansion"]
       23 GETTABLE                         R9 R10 R5
       24 DUPTABLE                         R10 K15 [{"row", "style", "isSelected", "isExpanded", "Key", "onToggled", "onSelected", "Position", "Size"}]
       25 SETTABLEKS                       R0 R10 K6 ["row"]
       27 SETTABLEKS                       R7 R10 K7 ["style"]
       29 SETTABLEKS                       R8 R10 K8 ["isSelected"]
       31 SETTABLEKS                       R9 R10 K9 ["isExpanded"]
       33 GETTABLEKS                       R12 R4 K16 ["Name"]
       35 LOADK                            R13 K17 ["#"]
       36 FASTCALL1                        TOSTRING R1 ; [+3]
       37 MOVE                             R15 R1
       38 GETIMPORT                        R14 K19 [tostring]
       40 CALL                             R14 1 1
       41 CONCAT                           R11 R12 R14
       42 SETTABLEKS                       R11 R10 K10 ["Key"]
       44 GETUPVAL                         R12 1
       45 GETTABLEKS                       R11 R12 K20 ["toggleRow"]
       47 SETTABLEKS                       R11 R10 K11 ["onToggled"]
       49 GETUPVAL                         R12 1
       50 GETTABLEKS                       R11 R12 K21 ["selectRow"]
       52 SETTABLEKS                       R11 R10 K12 ["onSelected"]
       54 SETTABLEKS                       R2 R10 K13 ["Position"]
       56 SETTABLEKS                       R3 R10 K14 ["Size"]
       58 RETURN                           R10 1

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 LOADK                            R4 K1 ["#"]
        3 FASTCALL1                        TOSTRING R1 ; [+3]
        4 MOVE                             R6 R1
        5 GETIMPORT                        R5 K3 [tostring]
        7 CALL                             R5 1 1
        8 CONCAT                           R2 R3 R5
        9 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          VAL R0
        4 SETTABLEKS                       R1 R0 K0 ["getItemId"]
        6 NEWCLOSURE                       R1 P1
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K1 ["toggleRow"]
       11 NEWCLOSURE                       R1 P2
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K2 ["selectRow"]
       16 NEWCLOSURE                       R1 P3
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R1 R0 K3 ["getRowProps"]
       21 DUPCLOSURE                       R1 K4 [PROTO_4]
       22 SETTABLEKS                       R1 R0 K5 ["getChildren"]
       24 DUPCLOSURE                       R1 K6 [PROTO_5]
       25 SETTABLEKS                       R1 R0 K7 ["getItemKey"]
       27 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K13 [{"LayoutOrder", "RootItems", "GetChildren", "GetItemId", "GetItemKey", "GetRowProps", "RowComponent", "Size", "Expansion", "Style"}]
        9 GETTABLEKS                       R6 R1 K3 ["LayoutOrder"]
       11 SETTABLEKS                       R6 R5 K3 ["LayoutOrder"]
       13 GETTABLEKS                       R6 R1 K14 ["Instances"]
       15 SETTABLEKS                       R6 R5 K4 ["RootItems"]
       17 GETTABLEKS                       R6 R0 K15 ["getChildren"]
       19 SETTABLEKS                       R6 R5 K5 ["GetChildren"]
       21 GETUPVAL                         R7 2
       22 JUMPIFNOT                        R7 ; [+3]
       23 GETTABLEKS                       R6 R1 K6 ["GetItemId"]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R6
       27 SETTABLEKS                       R6 R5 K6 ["GetItemId"]
       29 GETTABLEKS                       R6 R0 K16 ["getItemKey"]
       31 SETTABLEKS                       R6 R5 K7 ["GetItemKey"]
       33 GETTABLEKS                       R6 R0 K17 ["getRowProps"]
       35 SETTABLEKS                       R6 R5 K8 ["GetRowProps"]
       37 GETUPVAL                         R6 3
       38 SETTABLEKS                       R6 R5 K9 ["RowComponent"]
       40 GETTABLEKS                       R6 R1 K10 ["Size"]
       42 SETTABLEKS                       R6 R5 K10 ["Size"]
       44 GETTABLEKS                       R6 R1 K11 ["Expansion"]
       46 SETTABLEKS                       R6 R5 K11 ["Expansion"]
       48 SETTABLEKS                       R2 R5 K12 ["Style"]
       50 CALL                             R3 2 -1
       51 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["DevFrameworkInstanceTreeViewUseId"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 1
        8 GETIMPORT                        R2 K5 [script]
       10 LOADK                            R4 K6 ["UI"]
       11 NAMECALL                         R2 R2 K7 ["FindFirstAncestor"]
       13 CALL                             R2 2 1
       14 GETTABLEKS                       R1 R2 K8 ["Parent"]
       16 GETIMPORT                        R2 K10 [require]
       18 GETTABLEKS                       R4 R1 K8 ["Parent"]
       20 GETTABLEKS                       R3 R4 K11 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K10 [require]
       25 GETTABLEKS                       R5 R1 K6 ["UI"]
       27 GETTABLEKS                       R4 R5 K12 ["ContextServices"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K13 ["withContext"]
       32 GETIMPORT                        R5 K10 [require]
       34 GETTABLEKS                       R7 R1 K14 ["Util"]
       36 GETTABLEKS                       R6 R7 K15 ["Typecheck"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R1 K6 ["UI"]
       41 GETIMPORT                        R7 K10 [require]
       43 GETTABLEKS                       R9 R6 K16 ["Components"]
       45 GETTABLEKS                       R8 R9 K17 ["TreeView"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K10 [require]
       50 GETIMPORT                        R10 K5 [script]
       52 GETTABLEKS                       R9 R10 K18 ["InstanceTreeRow"]
       54 CALL                             R8 1 1
       55 GETTABLEKS                       R9 R2 K19 ["PureComponent"]
       57 LOADK                            R11 K20 ["InstanceTreeView"]
       58 NAMECALL                         R9 R9 K21 ["extend"]
       60 CALL                             R9 2 1
       61 GETTABLEKS                       R10 R5 K22 ["wrap"]
       63 MOVE                             R11 R9
       64 GETIMPORT                        R12 K5 [script]
       66 CALL                             R10 2 0
       67 NEWTABLE                         R10 0 0
       69 SETTABLEKS                       R10 R9 K23 ["defaultProps"]
       71 DUPCLOSURE                       R10 K24 [PROTO_6]
       72 CAPTURE                          VAL R0
       73 SETTABLEKS                       R10 R9 K25 ["init"]
       75 DUPCLOSURE                       R10 K26 [PROTO_7]
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R8
       80 SETTABLEKS                       R10 R9 K27 ["render"]
       82 MOVE                             R10 R4
       83 DUPTABLE                         R11 K29 [{"Stylizer"}]
       84 GETTABLEKS                       R12 R3 K28 ["Stylizer"]
       86 SETTABLEKS                       R12 R11 K28 ["Stylizer"]
       88 CALL                             R10 1 1
       89 MOVE                             R11 R9
       90 CALL                             R10 1 1
       91 MOVE                             R9 R10
       92 RETURN                           R9 1
