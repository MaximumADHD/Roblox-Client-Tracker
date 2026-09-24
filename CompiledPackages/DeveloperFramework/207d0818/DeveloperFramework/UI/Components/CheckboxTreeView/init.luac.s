PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 JUMPIF                           R0 ; [+9]
        3 GETIMPORT                        R3 K1 [pairs]
        5 MOVE                             R4 R1
        6 CALL                             R3 1 3
        7 FORGPREP_NEXT                    R3
        8 LOADB                            R8 1
        9 SETTABLE                         R8 R2 R7
       10 FORGLOOP                         R3 2 ; [-3]
       12 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnCheck"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["Item"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K4 [{"LayoutOrder", "Size", "Layout", "VerticalAlignment"}]
        1 GETTABLEKS                       R2 R0 K0 ["LayoutOrder"]
        3 SETTABLEKS                       R2 R1 K0 ["LayoutOrder"]
        5 GETIMPORT                        R2 K7 [UDim2.fromOffset]
        7 LOADN                            R3 24
        8 LOADN                            R4 24
        9 CALL                             R2 2 1
       10 SETTABLEKS                       R2 R1 K1 ["Size"]
       12 GETIMPORT                        R2 K11 [Enum.FillDirection.Horizontal]
       14 SETTABLEKS                       R2 R1 K2 ["Layout"]
       16 GETIMPORT                        R2 K13 [Enum.VerticalAlignment.Center]
       18 SETTABLEKS                       R2 R1 K3 ["VerticalAlignment"]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K14 ["createElement"]
       23 GETUPVAL                         R3 1
       24 MOVE                             R4 R1
       25 DUPTABLE                         R5 K16 [{"Checkbox"}]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K14 ["createElement"]
       29 GETUPVAL                         R7 2
       30 DUPTABLE                         R8 K19 [{"Checked", "OnClick"}]
       31 GETTABLEKS                       R10 R0 K17 ["Checked"]
       33 GETTABLEKS                       R11 R0 K20 ["Item"]
       35 GETTABLE                         R9 R10 R11
       36 SETTABLEKS                       R9 R8 K17 ["Checked"]
       38 NEWCLOSURE                       R9 P0
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R9 R8 K18 ["OnClick"]
       42 CALL                             R6 2 1
       43 SETTABLEKS                       R6 R5 K15 ["Checkbox"]
       45 CALL                             R2 3 -1
       46 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R2 R3 R0
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 RETURN                           R0 0
        8 LOADB                            R2 1
        9 LOADB                            R3 0
       10 GETIMPORT                        R4 K1 [ipairs]
       12 GETUPVAL                         R5 2
       13 MOVE                             R6 R1
       14 CALL                             R5 1 -1
       15 CALL                             R4 -1 3
       16 FORGPREP_INEXT                   R4
       17 GETUPVAL                         R10 1
       18 GETTABLE                         R9 R10 R8
       19 JUMPIFNOTEQKNIL                  R9 ; [+4]
       21 GETUPVAL                         R11 3
       22 GETTABLE                         R10 R11 R8
       23 ORK                              R9 R10 K2 [False]
       24 MOVE                             R10 R2
       25 JUMPIFNOT                        R10 ; [+7]
       26 LOADB                            R10 0
       27 GETUPVAL                         R11 4
       28 GETTABLEKS                       R11 R11 K3 ["Indeterminate"]
       30 JUMPIFEQ                         R9 R11 ; [+2]
       32 MOVE                             R10 R9
       33 MOVE                             R2 R10
       34 MOVE                             R10 R3
       35 JUMPIF                           R10 ; [+7]
       36 LOADB                            R10 1
       37 GETUPVAL                         R11 4
       38 GETTABLEKS                       R11 R11 K3 ["Indeterminate"]
       40 JUMPIFEQ                         R9 R11 ; [+2]
       42 MOVE                             R10 R9
       43 MOVE                             R3 R10
       44 FORGLOOP                         R4 2 [inext] ; [-28]
       46 JUMPIFNOT                        R2 ; [+9]
       47 GETUPVAL                         R5 3
       48 GETTABLE                         R4 R5 R1
       49 JUMPIFNOTEQKB                    R4 TRUE ; [+2]
       51 RETURN                           R0 0
       52 GETUPVAL                         R4 1
       53 LOADB                            R5 1
       54 SETTABLE                         R5 R4 R1
       55 JUMP                             ; [+23]
       56 JUMPIF                           R3 ; [+9]
       57 GETUPVAL                         R5 3
       58 GETTABLE                         R4 R5 R1
       59 JUMPIFNOTEQKB                    R4 FALSE ; [+2]
       61 RETURN                           R0 0
       62 GETUPVAL                         R4 1
       63 LOADB                            R5 0
       64 SETTABLE                         R5 R4 R1
       65 JUMP                             ; [+13]
       66 GETUPVAL                         R5 3
       67 GETTABLE                         R4 R5 R1
       68 GETUPVAL                         R5 4
       69 GETTABLEKS                       R5 R5 K3 ["Indeterminate"]
       71 JUMPIFNOTEQ                      R4 R5 ; [+2]
       73 RETURN                           R0 0
       74 GETUPVAL                         R4 1
       75 GETUPVAL                         R5 4
       76 GETTABLEKS                       R5 R5 K3 ["Indeterminate"]
       78 SETTABLE                         R5 R4 R1
       79 GETUPVAL                         R4 5
       80 MOVE                             R5 R1
       81 CALL                             R4 1 0
       82 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          VAL R2
        2 CAPTURE                          VAL R4
        3 CAPTURE                          VAL R3
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R5
        7 MOVE                             R6 R5
        8 MOVE                             R7 R0
        9 CALL                             R6 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+22]
        4 GETIMPORT                        R1 K1 [ipairs]
        6 GETUPVAL                         R2 0
        7 MOVE                             R3 R0
        8 CALL                             R2 1 -1
        9 CALL                             R1 -1 3
       10 FORGPREP_INEXT                   R1
       11 GETUPVAL                         R7 1
       12 GETTABLE                         R6 R7 R5
       13 GETUPVAL                         R8 2
       14 GETTABLE                         R7 R8 R0
       15 JUMPIFEQ                         R6 R7 ; [+8]
       17 GETUPVAL                         R6 2
       18 GETUPVAL                         R8 2
       19 GETTABLE                         R7 R8 R0
       20 SETTABLE                         R7 R6 R5
       21 GETUPVAL                         R6 3
       22 MOVE                             R7 R5
       23 CALL                             R6 1 0
       24 FORGLOOP                         R1 2 [inext] ; [-14]
       26 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R2
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R3
        4 CAPTURE                          VAL R4
        5 MOVE                             R5 R4
        6 MOVE                             R6 R0
        7 CALL                             R5 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+12]
        4 GETIMPORT                        R2 K1 [pairs]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 3
        8 FORGPREP_NEXT                    R2
        9 GETUPVAL                         R7 1
       10 SETTABLE                         R0 R7 R6
       11 GETUPVAL                         R7 2
       12 MOVE                             R8 R6
       13 CALL                             R7 1 0
       14 FORGLOOP                         R2 2 ; [-6]
       16 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R2 0 0
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R3
        6 GETIMPORT                        R4 K1 [pairs]
        8 MOVE                             R5 R0
        9 CALL                             R4 1 3
       10 FORGPREP_NEXT                    R4
       11 MOVE                             R9 R3
       12 MOVE                             R10 R8
       13 CALL                             R9 1 0
       14 FORGLOOP                         R4 2 ; [-4]
       16 RETURN                           R2 1

PROTO_11:
        0 NEWTABLE                         R6 0 0
        2 GETTABLE                         R8 R1 R0
        3 NOT                              R7 R8
        4 JUMPIFNOTEQKNIL                  R7 ; [+2]
        6 RETURN                           R6 1
        7 SETTABLE                         R7 R6 R0
        8 JUMPIFNOT                        R4 ; [+8]
        9 MOVE                             R8 R4
       10 MOVE                             R9 R0
       11 MOVE                             R10 R1
       12 MOVE                             R11 R2
       13 MOVE                             R12 R3
       14 MOVE                             R13 R6
       15 CALL                             R8 5 0
       16 JUMP                             ; [+11]
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R8 R8 K0 ["UpPropagators"]
       20 GETTABLEKS                       R8 R8 K1 ["default"]
       22 MOVE                             R9 R0
       23 MOVE                             R10 R1
       24 MOVE                             R11 R2
       25 MOVE                             R12 R3
       26 MOVE                             R13 R6
       27 CALL                             R8 5 0
       28 JUMPIFNOT                        R5 ; [+7]
       29 MOVE                             R8 R5
       30 MOVE                             R9 R0
       31 MOVE                             R10 R1
       32 MOVE                             R11 R3
       33 MOVE                             R12 R6
       34 CALL                             R8 4 0
       35 RETURN                           R6 1
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R8 R8 K2 ["DownPropagators"]
       39 GETTABLEKS                       R8 R8 K1 ["default"]
       41 MOVE                             R9 R0
       42 MOVE                             R10 R1
       43 MOVE                             R11 R3
       44 MOVE                             R12 R6
       45 CALL                             R8 4 0
       46 RETURN                           R6 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"expansion"}]
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K2 ["state"]
        6 GETTABLEKS                       R5 R5 K0 ["expansion"]
        8 MOVE                             R6 R0
        9 CALL                             R4 2 1
       10 SETTABLEKS                       R4 R3 K0 ["expansion"]
       12 NAMECALL                         R1 R1 K3 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnCheck"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["props"]
       10 GETTABLEKS                       R4 R4 K2 ["Checked"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K3 ["ancestry"]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K0 ["props"]
       18 GETTABLEKS                       R6 R6 K4 ["GetChildren"]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K0 ["props"]
       23 GETTABLEKS                       R7 R7 K5 ["ToggleAncestors"]
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R8 R8 K0 ["props"]
       28 GETTABLEKS                       R8 R8 K6 ["ToggleDescendants"]
       30 CALL                             R2 6 1
       31 CALL                             R1 1 0
       32 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["ExpandableRoot"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K2 ["RootItems"]
        8 NEWTABLE                         R4 0 0
       10 JUMPIF                           R2 ; [+9]
       11 GETIMPORT                        R5 K4 [pairs]
       13 MOVE                             R6 R3
       14 CALL                             R5 1 3
       15 FORGPREP_NEXT                    R5
       16 LOADB                            R10 1
       17 SETTABLE                         R10 R4 R9
       18 FORGLOOP                         R5 2 ; [-3]
       20 MOVE                             R1 R4
       21 DUPTABLE                         R2 K6 [{"expansion"}]
       22 SETTABLEKS                       R1 R2 K5 ["expansion"]
       24 SETTABLEKS                       R2 R0 K7 ["state"]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R3 R0 K0 ["props"]
       29 GETTABLEKS                       R3 R3 K2 ["RootItems"]
       31 GETTABLEKS                       R4 R0 K0 ["props"]
       33 GETTABLEKS                       R4 R4 K8 ["GetChildren"]
       35 CALL                             R2 2 1
       36 SETTABLEKS                       R2 R0 K9 ["ancestry"]
       38 NEWCLOSURE                       R2 P0
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U1
       41 SETTABLEKS                       R2 R0 K10 ["onExpansionChange"]
       43 GETTABLEKS                       R2 R0 K0 ["props"]
       45 GETTABLEKS                       R2 R2 K1 ["ExpandableRoot"]
       47 DUPTABLE                         R3 K14 [{"BeforeIndentItem", "ExpandableRoot", "AfterItem", "OnCheck"}]
       48 GETUPVAL                         R4 2
       49 SETTABLEKS                       R4 R3 K11 ["BeforeIndentItem"]
       51 SETTABLEKS                       R2 R3 K1 ["ExpandableRoot"]
       53 GETTABLEKS                       R4 R0 K0 ["props"]
       55 GETTABLEKS                       R4 R4 K12 ["AfterItem"]
       57 SETTABLEKS                       R4 R3 K12 ["AfterItem"]
       59 NEWCLOSURE                       R4 P1
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U3
       62 SETTABLEKS                       R4 R3 K13 ["OnCheck"]
       64 SETTABLEKS                       R3 R0 K15 ["rowProps"]
       66 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["props"]
        3 GETTABLEKS                       R3 R3 K1 ["RootItems"]
        5 GETTABLEKS                       R4 R0 K0 ["props"]
        7 GETTABLEKS                       R4 R4 K2 ["GetChildren"]
        9 CALL                             R2 2 1
       10 SETTABLEKS                       R2 R0 K3 ["ancestry"]
       12 GETTABLEKS                       R2 R0 K0 ["props"]
       14 GETTABLEKS                       R2 R2 K4 ["ExpandableRoot"]
       16 JUMPIF                           R2 ; [+46]
       17 GETTABLEKS                       R2 R1 K4 ["ExpandableRoot"]
       19 GETTABLEKS                       R3 R0 K0 ["props"]
       21 GETTABLEKS                       R3 R3 K4 ["ExpandableRoot"]
       23 JUMPIFEQ                         R2 R3 ; [+39]
       25 GETTABLEKS                       R3 R0 K0 ["props"]
       27 GETTABLEKS                       R3 R3 K4 ["ExpandableRoot"]
       29 GETTABLEKS                       R4 R0 K0 ["props"]
       31 GETTABLEKS                       R4 R4 K1 ["RootItems"]
       33 NEWTABLE                         R5 0 0
       35 JUMPIF                           R3 ; [+9]
       36 GETIMPORT                        R6 K6 [pairs]
       38 MOVE                             R7 R4
       39 CALL                             R6 1 3
       40 FORGPREP_NEXT                    R6
       41 LOADB                            R11 1
       42 SETTABLE                         R11 R5 R10
       43 FORGLOOP                         R6 2 ; [-3]
       45 MOVE                             R2 R5
       46 DUPTABLE                         R5 K8 [{"expansion"}]
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R7 R0 K9 ["state"]
       50 GETTABLEKS                       R7 R7 K7 ["expansion"]
       52 NEWTABLE                         R8 0 1
       54 MOVE                             R9 R2
       55 SETLIST                          R8 R9 1 [1]
       57 CALL                             R6 2 1
       58 SETTABLEKS                       R6 R5 K7 ["expansion"]
       60 NAMECALL                         R3 R0 K10 ["setState"]
       62 CALL                             R3 2 0
       63 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["Expansion"]
        4 JUMPIFNOT                        R3 ; [+5]
        5 GETTABLEKS                       R2 R0 K0 ["props"]
        7 GETTABLEKS                       R2 R2 K2 ["OnExpansionChange"]
        9 JUMPIF                           R2 ; [+11]
       10 GETTABLEKS                       R3 R0 K0 ["props"]
       12 GETTABLEKS                       R3 R3 K1 ["Expansion"]
       14 NOT                              R2 R3
       15 JUMPIFNOT                        R2 ; [+5]
       16 GETTABLEKS                       R3 R0 K0 ["props"]
       18 GETTABLEKS                       R3 R3 K2 ["OnExpansionChange"]
       20 NOT                              R2 R3
       21 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       23 LOADK                            R3 K3 ["Expansion is either entirely handled externally, or entirely handled by CheckboxTreeView."]
       24 GETIMPORT                        R1 K5 [assert]
       26 CALL                             R1 2 0
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R2 R0 K6 ["rowProps"]
       30 DUPTABLE                         R3 K10 [{"Checked", "GetContents", "OnSecondaryPress"}]
       31 GETTABLEKS                       R4 R0 K0 ["props"]
       33 GETTABLEKS                       R4 R4 K7 ["Checked"]
       35 SETTABLEKS                       R4 R3 K7 ["Checked"]
       37 GETTABLEKS                       R4 R0 K0 ["props"]
       39 GETTABLEKS                       R4 R4 K8 ["GetContents"]
       41 SETTABLEKS                       R4 R3 K8 ["GetContents"]
       43 GETTABLEKS                       R4 R0 K0 ["props"]
       45 GETTABLEKS                       R4 R4 K11 ["OnRightClick"]
       47 SETTABLEKS                       R4 R3 K9 ["OnSecondaryPress"]
       49 CALL                             R1 2 1
       50 GETUPVAL                         R2 1
       51 GETTABLEKS                       R2 R2 K12 ["createElement"]
       53 GETUPVAL                         R3 2
       54 DUPTABLE                         R4 K24 [{"Size", "Expansion", "Selection", "RootItems", "RowProps", "Style", "OnExpansionChange", "OnHoverRow", "OnSelectionChange", "SortChildren", "ScrollingDirection", "LayoutOrder", "GetChildren"}]
       55 GETTABLEKS                       R5 R0 K0 ["props"]
       57 GETTABLEKS                       R5 R5 K13 ["Size"]
       59 SETTABLEKS                       R5 R4 K13 ["Size"]
       61 GETTABLEKS                       R5 R0 K0 ["props"]
       63 GETTABLEKS                       R5 R5 K1 ["Expansion"]
       65 JUMPIF                           R5 ; [+4]
       66 GETTABLEKS                       R5 R0 K25 ["state"]
       68 GETTABLEKS                       R5 R5 K26 ["expansion"]
       70 SETTABLEKS                       R5 R4 K1 ["Expansion"]
       72 GETTABLEKS                       R5 R0 K0 ["props"]
       74 GETTABLEKS                       R5 R5 K14 ["Selection"]
       76 SETTABLEKS                       R5 R4 K14 ["Selection"]
       78 GETTABLEKS                       R5 R0 K0 ["props"]
       80 GETTABLEKS                       R5 R5 K15 ["RootItems"]
       82 SETTABLEKS                       R5 R4 K15 ["RootItems"]
       84 SETTABLEKS                       R1 R4 K16 ["RowProps"]
       86 GETTABLEKS                       R5 R0 K0 ["props"]
       88 GETTABLEKS                       R5 R5 K17 ["Style"]
       90 SETTABLEKS                       R5 R4 K17 ["Style"]
       92 GETTABLEKS                       R5 R0 K0 ["props"]
       94 GETTABLEKS                       R5 R5 K2 ["OnExpansionChange"]
       96 JUMPIF                           R5 ; [+2]
       97 GETTABLEKS                       R5 R0 K27 ["onExpansionChange"]
       99 SETTABLEKS                       R5 R4 K2 ["OnExpansionChange"]
      101 GETTABLEKS                       R5 R0 K0 ["props"]
      103 GETTABLEKS                       R5 R5 K18 ["OnHoverRow"]
      105 SETTABLEKS                       R5 R4 K18 ["OnHoverRow"]
      107 GETTABLEKS                       R5 R0 K0 ["props"]
      109 GETTABLEKS                       R5 R5 K19 ["OnSelectionChange"]
      111 SETTABLEKS                       R5 R4 K19 ["OnSelectionChange"]
      113 GETTABLEKS                       R5 R0 K0 ["props"]
      115 GETTABLEKS                       R5 R5 K20 ["SortChildren"]
      117 SETTABLEKS                       R5 R4 K20 ["SortChildren"]
      119 GETTABLEKS                       R5 R0 K0 ["props"]
      121 GETTABLEKS                       R5 R5 K21 ["ScrollingDirection"]
      123 SETTABLEKS                       R5 R4 K21 ["ScrollingDirection"]
      125 GETTABLEKS                       R5 R0 K0 ["props"]
      127 GETTABLEKS                       R5 R5 K22 ["LayoutOrder"]
      129 SETTABLEKS                       R5 R4 K22 ["LayoutOrder"]
      131 GETTABLEKS                       R5 R0 K0 ["props"]
      133 GETTABLEKS                       R5 R5 K23 ["GetChildren"]
      135 SETTABLEKS                       R5 R4 K23 ["GetChildren"]
      137 CALL                             R2 2 -1
      138 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Dash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["join"]
       25 GETTABLEKS                       R4 R0 K2 ["UI"]
       27 GETIMPORT                        R5 K6 [require]
       29 GETTABLEKS                       R6 R4 K10 ["Components"]
       31 GETTABLEKS                       R6 R6 K11 ["Checkbox"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K6 [require]
       36 GETTABLEKS                       R7 R4 K10 ["Components"]
       38 GETTABLEKS                       R7 R7 K12 ["Pane"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K6 [require]
       43 GETTABLEKS                       R8 R4 K10 ["Components"]
       45 GETTABLEKS                       R8 R8 K13 ["TreeView"]
       47 CALL                             R7 1 1
       48 DUPCLOSURE                       R8 K14 [PROTO_0]
       49 DUPCLOSURE                       R9 K15 [PROTO_2]
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R5
       53 DUPCLOSURE                       R10 K16 [PROTO_4]
       54 CAPTURE                          VAL R5
       55 DUPCLOSURE                       R11 K17 [PROTO_6]
       56 GETTABLEKS                       R12 R1 K18 ["PureComponent"]
       58 LOADK                            R14 K19 ["CheckboxTreeView"]
       59 NAMECALL                         R12 R12 K20 ["extend"]
       61 CALL                             R12 2 1
       62 DUPTABLE                         R13 K23 [{"toggleAncestorsByAllChildren", "default"}]
       63 SETTABLEKS                       R10 R13 K21 ["toggleAncestorsByAllChildren"]
       65 DUPCLOSURE                       R14 K24 [PROTO_7]
       66 SETTABLEKS                       R14 R13 K22 ["default"]
       68 SETTABLEKS                       R13 R12 K25 ["UpPropagators"]
       70 DUPTABLE                         R13 K27 [{"toggleAllChildren", "default"}]
       71 SETTABLEKS                       R11 R13 K26 ["toggleAllChildren"]
       73 DUPCLOSURE                       R14 K28 [PROTO_8]
       74 SETTABLEKS                       R14 R13 K22 ["default"]
       76 SETTABLEKS                       R13 R12 K29 ["DownPropagators"]
       78 DUPCLOSURE                       R13 K30 [PROTO_10]
       79 DUPCLOSURE                       R14 K31 [PROTO_11]
       80 CAPTURE                          VAL R12
       81 DUPTABLE                         R15 K35 [{["GetChildren"], ["ExpandableRoot"] = True}]
       82 DUPCLOSURE                       R16 K36 [PROTO_12]
       83 SETTABLEKS                       R16 R15 K32 ["GetChildren"]
       85 SETTABLEKS                       R15 R12 K37 ["defaultProps"]
       87 DUPCLOSURE                       R15 K38 [PROTO_15]
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R14
       92 SETTABLEKS                       R15 R12 K39 ["init"]
       94 DUPCLOSURE                       R15 K40 [PROTO_16]
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R3
       97 SETTABLEKS                       R15 R12 K41 ["didUpdate"]
       99 DUPCLOSURE                       R15 K42 [PROTO_17]
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R7
      103 SETTABLEKS                       R15 R12 K43 ["render"]
      105 RETURN                           R12 1
