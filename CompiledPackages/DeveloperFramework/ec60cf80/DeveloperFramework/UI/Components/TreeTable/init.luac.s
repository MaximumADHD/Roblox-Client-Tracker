PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["GetItemId"]
        5 GETTABLEKS                       R3 R0 K2 ["item"]
        7 CALL                             R2 1 -1
        8 FASTCALL                         TOSTRING ; [+2]
        9 GETIMPORT                        R1 K4 [tostring]
       11 CALL                             R1 -1 1
       12 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getItemId"]
        3 GETTABLEKS                       R2 R0 K1 ["item"]
        5 CALL                             R1 1 1
        6 NEWTABLE                         R2 1 0
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K2 ["props"]
       11 GETTABLEKS                       R5 R5 K3 ["Expansion"]
       13 GETTABLE                         R4 R5 R1
       14 NOT                              R3 R4
       15 SETTABLE                         R3 R2 R1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K2 ["props"]
       19 GETTABLEKS                       R3 R3 K4 ["OnExpansionChange"]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnSelectionChange"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["getItemId"]
       10 GETTABLEKS                       R2 R0 K3 ["item"]
       12 CALL                             R1 1 1
       13 NEWTABLE                         R2 1 0
       15 LOADB                            R3 1
       16 SETTABLE                         R3 R2 R1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K0 ["props"]
       20 GETTABLEKS                       R3 R3 K1 ["OnSelectionChange"]
       22 MOVE                             R4 R2
       23 CALL                             R3 1 0
       24 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["RightClick"]
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["props"]
       10 GETTABLEKS                       R2 R2 K1 ["RightClick"]
       12 MOVE                             R3 R0
       13 MOVE                             R4 R1
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_5:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 SETTABLEKS                       R1 R0 K1 ["defaultGetItemId"]
        3 GETTABLEKS                       R1 R0 K2 ["props"]
        5 GETTABLEKS                       R1 R1 K3 ["GetItemId"]
        7 JUMPIF                           R1 ; [+2]
        8 GETTABLEKS                       R1 R0 K1 ["defaultGetItemId"]
       10 SETTABLEKS                       R1 R0 K4 ["getItemId"]
       12 NEWCLOSURE                       R1 P1
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K5 ["getRowId"]
       16 NEWCLOSURE                       R1 P2
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K6 ["onToggle"]
       20 NEWCLOSURE                       R1 P3
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K7 ["onSelectRow"]
       24 NEWCLOSURE                       R1 P4
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K8 ["onRightClickRow"]
       28 DUPTABLE                         R1 K11 [{"rows", "cellProps"}]
       29 NEWTABLE                         R2 0 0
       31 SETTABLEKS                       R2 R1 K9 ["rows"]
       33 NAMECALL                         R2 R0 K12 ["getCellProps"]
       35 CALL                             R2 1 1
       36 SETTABLEKS                       R2 R1 K10 ["cellProps"]
       38 SETTABLEKS                       R1 R0 K13 ["state"]
       40 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 DUPTABLE                         R2 K14 [{"CellStyle", "DisableTooltip", "Expansion", "GetAutocompleteItems", "GetItemId", "OnCellAction", "OnCellDoubleClick", "OnCellEdited", "OnCellPressed", "OnFocusLost", "OnToggle", "Renderers", "TextInputCols"}]
        3 GETTABLEKS                       R3 R1 K15 ["Stylizer"]
        5 SETTABLEKS                       R3 R2 K1 ["CellStyle"]
        7 GETTABLEKS                       R3 R1 K2 ["DisableTooltip"]
        9 SETTABLEKS                       R3 R2 K2 ["DisableTooltip"]
       11 GETTABLEKS                       R3 R1 K3 ["Expansion"]
       13 SETTABLEKS                       R3 R2 K3 ["Expansion"]
       15 GETTABLEKS                       R3 R1 K16 ["GetCellAutocomplete"]
       17 SETTABLEKS                       R3 R2 K4 ["GetAutocompleteItems"]
       19 GETTABLEKS                       R3 R0 K17 ["getItemId"]
       21 SETTABLEKS                       R3 R2 K5 ["GetItemId"]
       23 GETTABLEKS                       R3 R1 K6 ["OnCellAction"]
       25 SETTABLEKS                       R3 R2 K6 ["OnCellAction"]
       27 GETTABLEKS                       R3 R1 K7 ["OnCellDoubleClick"]
       29 SETTABLEKS                       R3 R2 K7 ["OnCellDoubleClick"]
       31 GETTABLEKS                       R3 R1 K8 ["OnCellEdited"]
       33 SETTABLEKS                       R3 R2 K8 ["OnCellEdited"]
       35 GETTABLEKS                       R3 R1 K9 ["OnCellPressed"]
       37 SETTABLEKS                       R3 R2 K9 ["OnCellPressed"]
       39 GETTABLEKS                       R3 R1 K10 ["OnFocusLost"]
       41 SETTABLEKS                       R3 R2 K10 ["OnFocusLost"]
       43 GETTABLEKS                       R3 R0 K18 ["onToggle"]
       45 SETTABLEKS                       R3 R2 K11 ["OnToggle"]
       47 GETTABLEKS                       R3 R1 K12 ["Renderers"]
       49 SETTABLEKS                       R3 R2 K12 ["Renderers"]
       51 GETTABLEKS                       R3 R1 K13 ["TextInputCols"]
       53 SETTABLEKS                       R3 R2 K13 ["TextInputCols"]
       55 RETURN                           R2 1

PROTO_7:
        0 NAMECALL                         R1 R0 K0 ["calculateItems"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R1 K0 ["GetItemId"]
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R3 K0 ["GetItemId"]
        6 JUMPIFEQ                         R2 R3 ; [+8]
        8 GETTABLEKS                       R2 R1 K0 ["GetItemId"]
       10 JUMPIF                           R2 ; [+2]
       11 GETTABLEKS                       R2 R0 K2 ["defaultGetItemId"]
       13 SETTABLEKS                       R2 R0 K3 ["getItemId"]
       15 RETURN                           R0 0

PROTO_9:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["calculateItems"]
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_10:
        0 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getItemId"]
        3 GETTABLEKS                       R3 R0 K1 ["item"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 1
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_12:
        0 NEWTABLE                         R1 4 0
        2 GETUPVAL                         R2 0
        3 JUMPIFNOT                        R2 ; [+26]
        4 NEWTABLE                         R2 0 0
        6 GETIMPORT                        R3 K1 [ipairs]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K2 ["RootItems"]
       11 CALL                             R3 1 3
       12 FORGPREP_INEXT                   R3
       13 GETUPVAL                         R8 2
       14 MOVE                             R10 R7
       15 LOADN                            R11 0
       16 MOVE                             R12 R2
       17 NAMECALL                         R8 R8 K3 ["contributeRow"]
       19 CALL                             R8 4 0
       20 FORGLOOP                         R3 2 [inext] ; [-8]
       22 SETTABLEKS                       R2 R1 K4 ["rows"]
       24 GETUPVAL                         R3 2
       25 NAMECALL                         R3 R3 K5 ["getCellProps"]
       27 CALL                             R3 1 1
       28 SETTABLEKS                       R3 R1 K6 ["cellProps"]
       30 GETTABLEKS                       R2 R1 K4 ["rows"]
       32 JUMPIF                           R2 ; [+2]
       33 GETTABLEKS                       R2 R0 K4 ["rows"]
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R4 R4 K7 ["Selection"]
       38 JUMPIFNOT                        R4 ; [+7]
       39 GETUPVAL                         R3 3
       40 GETUPVAL                         R4 1
       41 GETTABLEKS                       R4 R4 K7 ["Selection"]
       43 DUPCLOSURE                       R5 K8 [PROTO_10]
       44 CALL                             R3 2 1
       45 JUMPIF                           R3 ; [+1]
       46 LOADNIL                          R3
       47 JUMPIFNOT                        R3 ; [+17]
       48 GETUPVAL                         R4 4
       49 MOVE                             R5 R2
       50 NEWCLOSURE                       R6 P1
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R3
       53 CALL                             R4 2 1
       54 SETTABLEKS                       R4 R1 K9 ["selectedRow"]
       56 GETTABLEKS                       R4 R1 K9 ["selectedRow"]
       58 JUMPIF                           R4 ; [+11]
       59 GETUPVAL                         R4 5
       60 GETTABLEKS                       R4 R4 K10 ["None"]
       62 SETTABLEKS                       R4 R1 K9 ["selectedRow"]
       64 RETURN                           R1 1
       65 GETUPVAL                         R4 5
       66 GETTABLEKS                       R4 R4 K10 ["None"]
       68 SETTABLEKS                       R4 R1 K9 ["selectedRow"]
       70 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 NOT                              R3 R1
        3 JUMPIF                           R3 ; [+39]
        4 LOADB                            R3 1
        5 GETTABLEKS                       R4 R2 K1 ["SortChildren"]
        7 GETTABLEKS                       R5 R1 K1 ["SortChildren"]
        9 JUMPIFNOTEQ                      R4 R5 ; [+33]
       11 LOADB                            R3 1
       12 GETTABLEKS                       R4 R2 K2 ["RootItems"]
       14 GETTABLEKS                       R5 R1 K2 ["RootItems"]
       16 JUMPIFNOTEQ                      R4 R5 ; [+26]
       18 LOADB                            R3 1
       19 GETTABLEKS                       R4 R2 K3 ["GetChildren"]
       21 GETTABLEKS                       R5 R1 K3 ["GetChildren"]
       23 JUMPIFNOTEQ                      R4 R5 ; [+19]
       25 LOADB                            R3 1
       26 GETTABLEKS                       R4 R2 K4 ["Expansion"]
       28 GETTABLEKS                       R5 R1 K4 ["Expansion"]
       30 JUMPIFNOTEQ                      R4 R5 ; [+12]
       32 GETTABLEKS                       R3 R2 K5 ["HighlightedRows"]
       34 JUMPIFNOT                        R3 ; [+8]
       35 GETTABLEKS                       R4 R2 K5 ["HighlightedRows"]
       37 GETTABLEKS                       R5 R1 K5 ["HighlightedRows"]
       39 JUMPIFNOTEQ                      R4 R5 ; [+2]
       41 LOADB                            R3 0 +1
       42 LOADB                            R3 1
       43 NOT                              R4 R1
       44 JUMPIF                           R4 ; [+8]
       45 GETTABLEKS                       R5 R2 K6 ["Selection"]
       47 GETTABLEKS                       R6 R1 K6 ["Selection"]
       49 JUMPIFNOTEQ                      R5 R6 ; [+2]
       51 LOADB                            R4 0 +1
       52 LOADB                            R4 1
       53 JUMPIF                           R3 ; [+2]
       54 JUMPIF                           R4 ; [+1]
       55 RETURN                           R0 0
       56 NEWCLOSURE                       R7 P0
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U0
       61 CAPTURE                          UPVAL U1
       62 CAPTURE                          UPVAL U2
       63 NAMECALL                         R5 R0 K7 ["setState"]
       65 CALL                             R5 2 0
       66 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R5 R0 K1 ["getItemId"]
        4 MOVE                             R6 R1
        5 CALL                             R5 1 1
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R7 R4 K2 ["GetChildren"]
        9 MOVE                             R8 R1
       10 CALL                             R7 1 -1
       11 CALL                             R6 -1 1
       12 DUPTABLE                         R9 K7 [{"index", "depth", "item", "hasChildren"}]
       13 LENGTH                           R11 R3
       14 ADDK                             R10 R11 K8 [1]
       15 SETTABLEKS                       R10 R9 K3 ["index"]
       17 SETTABLEKS                       R2 R9 K4 ["depth"]
       19 SETTABLEKS                       R1 R9 K5 ["item"]
       21 MOVE                             R10 R6
       22 JUMPIFNOT                        R10 ; [+6]
       23 LENGTH                           R11 R6
       24 LOADN                            R12 0
       25 JUMPIFLT                         R12 R11 ; [+2]
       27 LOADB                            R10 0 +1
       28 LOADB                            R10 1
       29 SETTABLEKS                       R10 R9 K6 ["hasChildren"]
       31 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
       33 MOVE                             R8 R3
       34 GETIMPORT                        R7 K11 [table.insert]
       36 CALL                             R7 2 0
       37 GETTABLEKS                       R8 R4 K12 ["Expansion"]
       39 GETTABLE                         R7 R8 R5
       40 JUMPIFNOT                        R7 ; [+21]
       41 GETTABLEKS                       R7 R4 K13 ["SortChildren"]
       43 JUMPIFNOT                        R7 ; [+5]
       44 GETUPVAL                         R7 1
       45 MOVE                             R8 R6
       46 GETTABLEKS                       R9 R4 K13 ["SortChildren"]
       48 CALL                             R7 2 0
       49 GETIMPORT                        R7 K15 [ipairs]
       51 MOVE                             R8 R6
       52 CALL                             R7 1 3
       53 FORGPREP_INEXT                   R7
       54 MOVE                             R14 R11
       55 ADDK                             R15 R2 K8 [1]
       56 MOVE                             R16 R3
       57 NAMECALL                         R12 R0 K16 ["contributeRow"]
       59 CALL                             R12 4 0
       60 FORGLOOP                         R7 2 [inext] ; [-7]
       62 RETURN                           R3 1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["CellComponent"]
        6 JUMPIF                           R3 ; [+1]
        7 GETUPVAL                         R3 0
        8 NEWTABLE                         R4 64 0
       10 GETTABLEKS                       R5 R1 K3 ["AnchorPoint"]
       12 SETTABLEKS                       R5 R4 K3 ["AnchorPoint"]
       14 GETTABLEKS                       R5 R1 K4 ["AutomaticSize"]
       16 SETTABLEKS                       R5 R4 K4 ["AutomaticSize"]
       18 GETTABLEKS                       R5 R2 K5 ["cellProps"]
       20 SETTABLEKS                       R5 R4 K6 ["CellProps"]
       22 GETTABLEKS                       R5 R2 K7 ["rows"]
       24 SETTABLEKS                       R5 R4 K8 ["Rows"]
       26 GETTABLEKS                       R5 R1 K9 ["Columns"]
       28 SETTABLEKS                       R5 R4 K9 ["Columns"]
       30 GETTABLEKS                       R5 R2 K10 ["selectedRow"]
       32 SETTABLEKS                       R5 R4 K11 ["SelectedRow"]
       34 GETTABLEKS                       R5 R1 K12 ["SortIndex"]
       36 SETTABLEKS                       R5 R4 K12 ["SortIndex"]
       38 GETTABLEKS                       R5 R1 K13 ["SortOrder"]
       40 SETTABLEKS                       R5 R4 K13 ["SortOrder"]
       42 GETTABLEKS                       R5 R1 K14 ["Scroll"]
       44 SETTABLEKS                       R5 R4 K14 ["Scroll"]
       46 GETTABLEKS                       R5 R1 K15 ["ScrollProps"]
       48 SETTABLEKS                       R5 R4 K15 ["ScrollProps"]
       50 GETTABLEKS                       R5 R1 K16 ["Footer"]
       52 SETTABLEKS                       R5 R4 K16 ["Footer"]
       54 GETTABLEKS                       R5 R1 K17 ["LayoutOrder"]
       56 SETTABLEKS                       R5 R4 K17 ["LayoutOrder"]
       58 GETTABLEKS                       R5 R1 K18 ["Position"]
       60 SETTABLEKS                       R5 R4 K18 ["Position"]
       62 GETTABLEKS                       R5 R1 K19 ["Size"]
       64 SETTABLEKS                       R5 R4 K19 ["Size"]
       66 GETTABLEKS                       R5 R1 K20 ["ShowFooter"]
       68 SETTABLEKS                       R5 R4 K20 ["ShowFooter"]
       70 GETTABLEKS                       R5 R1 K21 ["ShowHeader"]
       72 SETTABLEKS                       R5 R4 K21 ["ShowHeader"]
       74 GETTABLEKS                       R5 R1 K22 ["ClampSize"]
       76 SETTABLEKS                       R5 R4 K22 ["ClampSize"]
       78 GETTABLEKS                       R5 R1 K23 ["UseScale"]
       80 SETTABLEKS                       R5 R4 K23 ["UseScale"]
       82 GETTABLEKS                       R5 R1 K24 ["UseDeficit"]
       84 SETTABLEKS                       R5 R4 K24 ["UseDeficit"]
       86 GETTABLEKS                       R5 R1 K25 ["OnHoverRow"]
       88 SETTABLEKS                       R5 R4 K25 ["OnHoverRow"]
       90 GETTABLEKS                       R5 R1 K26 ["OnMouseLeave"]
       92 SETTABLEKS                       R5 R4 K26 ["OnMouseLeave"]
       94 GETTABLEKS                       R5 R0 K27 ["onSelectRow"]
       96 SETTABLEKS                       R5 R4 K28 ["OnSelectRow"]
       98 GETTABLEKS                       R5 R1 K29 ["OnDoubleClick"]
      100 SETTABLEKS                       R5 R4 K29 ["OnDoubleClick"]
      102 GETTABLEKS                       R5 R0 K30 ["onRightClickRow"]
      104 SETTABLEKS                       R5 R4 K31 ["OnRightClickRow"]
      106 GETTABLEKS                       R5 R1 K32 ["OnSizeChange"]
      108 SETTABLEKS                       R5 R4 K32 ["OnSizeChange"]
      110 GETTABLEKS                       R5 R1 K33 ["OnSortChange"]
      112 SETTABLEKS                       R5 R4 K33 ["OnSortChange"]
      114 GETTABLEKS                       R5 R1 K34 ["OnColumnSizesChange"]
      116 SETTABLEKS                       R5 R4 K34 ["OnColumnSizesChange"]
      118 GETTABLEKS                       R5 R1 K35 ["OnLoadRange"]
      120 SETTABLEKS                       R5 R4 K35 ["OnLoadRange"]
      122 GETTABLEKS                       R5 R1 K36 ["RowComponent"]
      124 SETTABLEKS                       R5 R4 K36 ["RowComponent"]
      126 SETTABLEKS                       R3 R4 K2 ["CellComponent"]
      128 GETTABLEKS                       R5 R1 K37 ["FullSpan"]
      130 SETTABLEKS                       R5 R4 K37 ["FullSpan"]
      132 GETTABLEKS                       R5 R1 K38 ["FullSpanEmphasis"]
      134 SETTABLEKS                       R5 R4 K38 ["FullSpanEmphasis"]
      136 GETTABLEKS                       R5 R1 K39 ["HighlightedRows"]
      138 SETTABLEKS                       R5 R4 K39 ["HighlightedRows"]
      140 GETTABLEKS                       R5 R1 K40 ["ScrollFocusIndex"]
      142 SETTABLEKS                       R5 R4 K40 ["ScrollFocusIndex"]
      144 GETTABLEKS                       R5 R1 K41 ["Padding"]
      146 SETTABLEKS                       R5 R4 K41 ["Padding"]
      148 GETTABLEKS                       R5 R1 K42 ["ColumnHeaderHeight"]
      150 SETTABLEKS                       R5 R4 K42 ["ColumnHeaderHeight"]
      152 GETTABLEKS                       R5 R1 K43 ["RowHeight"]
      154 SETTABLEKS                       R5 R4 K43 ["RowHeight"]
      156 GETTABLEKS                       R5 R1 K44 ["ExpandOnDoubleClick"]
      158 SETTABLEKS                       R5 R4 K44 ["ExpandOnDoubleClick"]
      160 GETTABLEKS                       R5 R1 K45 ["Variant"]
      162 SETTABLEKS                       R5 R4 K45 ["Variant"]
      164 GETTABLEKS                       R6 R1 K46 ["GetItemId"]
      166 JUMPIFNOT                        R6 ; [+5]
      167 GETUPVAL                         R6 1
      168 JUMPIFNOT                        R6 ; [+3]
      169 GETTABLEKS                       R5 R0 K47 ["getRowId"]
      171 JUMP                             ; [+1]
      172 LOADNIL                          R5
      173 SETTABLEKS                       R5 R4 K48 ["GetRowId"]
      175 GETUPVAL                         R5 2
      176 GETTABLEKS                       R5 R5 K49 ["Ref"]
      178 GETUPVAL                         R7 3
      179 JUMPIFNOT                        R7 ; [+3]
      180 GETTABLEKS                       R6 R1 K50 ["ForwardRef"]
      182 JUMP                             ; [+1]
      183 LOADNIL                          R6
      184 SETTABLE                         R6 R4 R5
      185 GETUPVAL                         R5 4
      186 JUMPIFNOT                        R5 ; [+21]
      187 GETUPVAL                         R5 5
      188 GETTABLEKS                       R5 R5 K51 ["Tag"]
      190 GETUPVAL                         R6 6
      191 LOADK                            R7 K52 ["Component-TreeTable"]
      192 GETUPVAL                         R9 5
      193 GETTABLEKS                       R9 R9 K51 ["Tag"]
      195 GETTABLE                         R8 R1 R9
      196 GETTABLEKS                       R9 R1 K45 ["Variant"]
      198 GETUPVAL                         R11 3
      199 JUMPIFNOT                        R11 ; [+5]
      200 GETTABLEKS                       R11 R1 K53 ["DisableHover"]
      202 JUMPIF                           R11 ; [+2]
      203 LOADK                            R10 K54 ["enable-hover"]
      204 JUMP                             ; [+1]
      205 LOADNIL                          R10
      206 CALL                             R6 4 1
      207 SETTABLE                         R6 R4 R5
      208 GETUPVAL                         R5 2
      209 GETTABLEKS                       R5 R5 K55 ["createElement"]
      211 GETUPVAL                         R6 7
      212 MOVE                             R7 R4
      213 CALL                             R5 2 -1
      214 RETURN                           R5 -1

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
       18 GETTABLEKS                       R3 R0 K8 ["Util"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R2 R2 K9 ["Typecheck"]
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K2 ["UI"]
       27 GETTABLEKS                       R4 R4 K10 ["ContextServices"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K11 ["withContext"]
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K12 ["Wrappers"]
       36 GETTABLEKS                       R6 R6 K13 ["withForwardRef"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R7 R0 K4 ["Parent"]
       41 LOADK                            R9 K14 ["React"]
       42 NAMECALL                         R7 R7 K15 ["FindFirstChild"]
       44 CALL                             R7 2 1
       45 JUMPIFNOT                        R7 ; [+8]
       46 GETIMPORT                        R6 K6 [require]
       48 GETTABLEKS                       R7 R0 K4 ["Parent"]
       50 GETTABLEKS                       R7 R7 K14 ["React"]
       52 CALL                             R6 1 1
       53 JUMP                             ; [+1]
       54 LOADNIL                          R6
       55 GETIMPORT                        R7 K6 [require]
       57 GETTABLEKS                       R8 R0 K16 ["Styling"]
       59 GETTABLEKS                       R8 R8 K17 ["supportsStyleSheets"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K6 [require]
       64 GETTABLEKS                       R9 R0 K16 ["Styling"]
       66 GETTABLEKS                       R9 R9 K18 ["joinTags"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K6 [require]
       71 GETTABLEKS                       R10 R0 K19 ["SharedFlags"]
       73 GETTABLEKS                       R10 R10 K20 ["getFFlagLuaStartPageTableContextMenu"]
       75 CALL                             R9 1 1
       76 CALL                             R9 0 1
       77 GETIMPORT                        R10 K6 [require]
       79 GETTABLEKS                       R11 R0 K19 ["SharedFlags"]
       81 GETTABLEKS                       R11 R11 K21 ["getFFlagDevFrameworkFixTableMissingKeyErrors"]
       83 CALL                             R10 1 1
       84 CALL                             R10 0 1
       85 GETIMPORT                        R11 K6 [require]
       87 GETTABLEKS                       R12 R0 K4 ["Parent"]
       89 GETTABLEKS                       R12 R12 K22 ["Dash"]
       91 CALL                             R11 1 1
       92 GETTABLEKS                       R12 R11 K23 ["copy"]
       94 GETTABLEKS                       R13 R11 K24 ["findIndex"]
       96 GETTABLEKS                       R14 R11 K25 ["mapOne"]
       98 GETIMPORT                        R15 K28 [table.sort]
      100 GETIMPORT                        R16 K6 [require]
      102 GETTABLEKS                       R17 R0 K2 ["UI"]
      104 GETTABLEKS                       R17 R17 K29 ["Components"]
      106 GETTABLEKS                       R17 R17 K30 ["Table"]
      108 CALL                             R16 1 1
      109 GETIMPORT                        R17 K6 [require]
      111 GETIMPORT                        R18 K1 [script]
      113 GETTABLEKS                       R18 R18 K31 ["TreeTableCell"]
      115 CALL                             R17 1 1
      116 GETTABLEKS                       R18 R1 K32 ["PureComponent"]
      118 LOADK                            R20 K33 ["TreeTable"]
      119 NAMECALL                         R18 R18 K34 ["extend"]
      121 CALL                             R18 2 1
      122 GETTABLEKS                       R19 R2 K35 ["wrap"]
      124 MOVE                             R20 R18
      125 GETIMPORT                        R21 K1 [script]
      127 CALL                             R19 2 0
      128 DUPCLOSURE                       R19 K36 [PROTO_5]
      129 SETTABLEKS                       R19 R18 K37 ["init"]
      131 DUPCLOSURE                       R19 K38 [PROTO_6]
      132 SETTABLEKS                       R19 R18 K39 ["getCellProps"]
      134 DUPCLOSURE                       R19 K40 [PROTO_7]
      135 SETTABLEKS                       R19 R18 K41 ["didMount"]
      137 DUPCLOSURE                       R19 K42 [PROTO_8]
      138 SETTABLEKS                       R19 R18 K43 ["willUpdate"]
      140 DUPCLOSURE                       R19 K44 [PROTO_9]
      141 SETTABLEKS                       R19 R18 K45 ["didUpdate"]
      143 DUPCLOSURE                       R19 K46 [PROTO_13]
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R13
      146 CAPTURE                          VAL R1
      147 SETTABLEKS                       R19 R18 K47 ["calculateItems"]
      149 DUPCLOSURE                       R19 K48 [PROTO_14]
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R15
      152 SETTABLEKS                       R19 R18 K49 ["contributeRow"]
      154 DUPCLOSURE                       R19 K50 [PROTO_15]
      155 CAPTURE                          VAL R17
      156 CAPTURE                          VAL R10
      157 CAPTURE                          VAL R1
      158 CAPTURE                          VAL R9
      159 CAPTURE                          VAL R7
      160 CAPTURE                          VAL R6
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R16
      163 SETTABLEKS                       R19 R18 K51 ["render"]
      165 MOVE                             R19 R4
      166 DUPTABLE                         R20 K53 [{"Stylizer"}]
      167 GETTABLEKS                       R21 R3 K52 ["Stylizer"]
      169 SETTABLEKS                       R21 R20 K52 ["Stylizer"]
      171 CALL                             R19 1 1
      172 MOVE                             R20 R18
      173 CALL                             R19 1 1
      174 MOVE                             R18 R19
      175 JUMPIFNOT                        R9 ; [+4]
      176 MOVE                             R19 R5
      177 MOVE                             R20 R18
      178 CALL                             R19 1 1
      179 MOVE                             R18 R19
      180 RETURN                           R18 1
