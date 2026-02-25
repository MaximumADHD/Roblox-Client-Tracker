PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["Items"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 DUPTABLE                         R9 K3 [{"item", "palette"}]
        8 DUPTABLE                         R10 K6 [{"source", "builtinItem"}]
        9 GETUPVAL                         R12 0
       10 GETTABLEKS                       R11 R12 K7 ["SOURCE_BUILTIN"]
       12 SETTABLEKS                       R11 R10 K4 ["source"]
       14 SETTABLEKS                       R6 R10 K5 ["builtinItem"]
       16 SETTABLEKS                       R10 R9 K1 ["item"]
       18 SETTABLEKS                       R0 R9 K2 ["palette"]
       20 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       22 MOVE                             R8 R1
       23 GETIMPORT                        R7 K10 [table.insert]
       25 CALL                             R7 2 0
       26 FORGLOOP                         R2 2 ; [-20]
       28 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["palette"]
        2 GETTABLEKS                       R2 R3 K1 ["Key"]
        4 GETUPVAL                         R3 0
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["filter"]
        3 MOVE                             R3 R0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R1
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+36]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["append"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K1 ["equippableItems"]
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R3 R4 K2 ["Key"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K3 ["filter"]
       15 MOVE                             R5 R2
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          VAL R3
       18 CALL                             R4 2 1
       19 MOVE                             R1 R4
       20 GETUPVAL                         R4 4
       21 GETTABLEKS                       R3 R4 K1 ["equippableItems"]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R4 R5 K2 ["Key"]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R5 R6 K3 ["filter"]
       29 MOVE                             R6 R3
       30 NEWCLOSURE                       R7 P0
       31 CAPTURE                          VAL R4
       32 CALL                             R5 2 1
       33 MOVE                             R2 R5
       34 GETUPVAL                         R3 5
       35 GETUPVAL                         R4 3
       36 CALL                             R3 1 1
       37 CALL                             R0 3 -1
       38 RETURN                           R0 -1
       39 GETUPVAL                         R1 1
       40 GETTABLEKS                       R0 R1 K0 ["append"]
       42 GETUPVAL                         R3 2
       43 GETTABLEKS                       R2 R3 K1 ["equippableItems"]
       45 GETUPVAL                         R4 3
       46 GETTABLEKS                       R3 R4 K2 ["Key"]
       48 GETUPVAL                         R5 1
       49 GETTABLEKS                       R4 R5 K3 ["filter"]
       51 MOVE                             R5 R2
       52 NEWCLOSURE                       R6 P0
       53 CAPTURE                          VAL R3
       54 CALL                             R4 2 1
       55 MOVE                             R1 R4
       56 GETUPVAL                         R2 5
       57 GETUPVAL                         R3 3
       58 CALL                             R2 1 1
       59 CALL                             R0 2 -1
       60 RETURN                           R0 -1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["item"]
        2 GETTABLEKS                       R1 R2 K1 ["source"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K2 ["SOURCE_INSTANCE"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+11]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K3 ["removeItem"]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R4 R0 K0 ["item"]
       15 GETTABLEKS                       R3 R4 K4 ["instance"]
       17 CALL                             R1 2 -1
       18 RETURN                           R1 -1
       19 GETTABLEKS                       R2 R0 K0 ["item"]
       21 GETTABLEKS                       R1 R2 K1 ["source"]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R2 R3 K5 ["SOURCE_MARKETPLACE"]
       26 JUMPIFNOTEQ                      R1 R2 ; [+11]
       28 GETUPVAL                         R2 3
       29 GETTABLEKS                       R1 R2 K3 ["removeItem"]
       31 GETUPVAL                         R2 2
       32 GETTABLEKS                       R4 R0 K0 ["item"]
       34 GETTABLEKS                       R3 R4 K6 ["marketplaceItem"]
       36 CALL                             R1 2 -1
       37 RETURN                           R1 -1
       38 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R4 R0 K0 ["item"]
        2 GETTABLEKS                       R3 R4 K1 ["source"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K2 ["SOURCE_INSTANCE"]
        7 JUMPIFEQ                         R3 R4 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K3 ["LUAU_ANALYZE_ERROR"]
       14 FASTCALL2                        ASSERT R2 R3 ; [+3]
       16 GETIMPORT                        R1 K5 [assert]
       18 CALL                             R1 2 0
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R1 R2 K6 ["removeItem"]
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R4 R0 K0 ["item"]
       25 GETTABLEKS                       R3 R4 K7 ["instance"]
       27 CALL                             R1 2 -1
       28 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["equippableItems"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K1 ["Key"]
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R5 R6 K2 ["filter"]
        9 MOVE                             R6 R3
       10 NEWCLOSURE                       R7 P0
       11 CAPTURE                          VAL R4
       12 CALL                             R5 2 3
       13 MOVE                             R0 R5
       14 MOVE                             R1 R6
       15 MOVE                             R2 R7
       16 FORGPREP                         R0
       17 GETTABLEKS                       R6 R4 K3 ["item"]
       19 GETTABLEKS                       R5 R6 K4 ["source"]
       21 GETUPVAL                         R7 3
       22 GETTABLEKS                       R6 R7 K5 ["SOURCE_INSTANCE"]
       24 JUMPIFNOTEQ                      R5 R6 ; [+10]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K6 ["removeItem"]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R8 R4 K3 ["item"]
       32 GETTABLEKS                       R7 R8 K7 ["instance"]
       34 CALL                             R5 2 0
       35 FORGLOOP                         R0 2 ; [-19]
       37 GETUPVAL                         R4 4
       38 GETTABLEKS                       R3 R4 K0 ["equippableItems"]
       40 GETUPVAL                         R5 1
       41 GETTABLEKS                       R4 R5 K1 ["Key"]
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R5 R6 K2 ["filter"]
       46 MOVE                             R6 R3
       47 NEWCLOSURE                       R7 P0
       48 CAPTURE                          VAL R4
       49 CALL                             R5 2 3
       50 MOVE                             R0 R5
       51 MOVE                             R1 R6
       52 MOVE                             R2 R7
       53 FORGPREP                         R0
       54 GETTABLEKS                       R6 R4 K3 ["item"]
       56 GETTABLEKS                       R5 R6 K4 ["source"]
       58 GETUPVAL                         R7 3
       59 GETTABLEKS                       R6 R7 K8 ["SOURCE_MARKETPLACE"]
       61 JUMPIFNOTEQ                      R5 R6 ; [+10]
       63 GETUPVAL                         R6 4
       64 GETTABLEKS                       R5 R6 K6 ["removeItem"]
       66 GETUPVAL                         R6 1
       67 GETTABLEKS                       R8 R4 K3 ["item"]
       69 GETTABLEKS                       R7 R8 K9 ["marketplaceItem"]
       71 CALL                             R5 2 0
       72 FORGLOOP                         R0 2 ; [-19]
       74 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["equippableItems"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K1 ["Key"]
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R5 R6 K2 ["filter"]
        9 MOVE                             R6 R3
       10 NEWCLOSURE                       R7 P0
       11 CAPTURE                          VAL R4
       12 CALL                             R5 2 3
       13 MOVE                             R0 R5
       14 MOVE                             R1 R6
       15 MOVE                             R2 R7
       16 FORGPREP                         R0
       17 GETTABLEKS                       R6 R4 K3 ["item"]
       19 GETTABLEKS                       R5 R6 K4 ["source"]
       21 GETUPVAL                         R7 3
       22 GETTABLEKS                       R6 R7 K5 ["SOURCE_INSTANCE"]
       24 JUMPIFNOTEQ                      R5 R6 ; [+29]
       26 GETTABLEKS                       R8 R4 K3 ["item"]
       28 GETTABLEKS                       R7 R8 K4 ["source"]
       30 GETUPVAL                         R9 3
       31 GETTABLEKS                       R8 R9 K5 ["SOURCE_INSTANCE"]
       33 JUMPIFEQ                         R7 R8 ; [+2]
       35 LOADB                            R6 0 +1
       36 LOADB                            R6 1
       37 GETUPVAL                         R8 3
       38 GETTABLEKS                       R7 R8 K6 ["LUAU_ANALYZE_ERROR"]
       40 FASTCALL2                        ASSERT R6 R7 ; [+3]
       42 GETIMPORT                        R5 K8 [assert]
       44 CALL                             R5 2 0
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R5 R6 K9 ["removeItem"]
       48 GETUPVAL                         R6 1
       49 GETTABLEKS                       R8 R4 K3 ["item"]
       51 GETTABLEKS                       R7 R8 K10 ["instance"]
       53 CALL                             R5 2 0
       54 FORGLOOP                         R0 2 ; [-38]
       56 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 CALL                             R3 0 1
        3 JUMPIFNOT                        R3 ; [+23]
        4 LOADB                            R3 1
        5 GETTABLEKS                       R5 R1 K0 ["item"]
        7 GETTABLEKS                       R4 R5 K1 ["source"]
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K2 ["SOURCE_INSTANCE"]
       12 JUMPIFEQ                         R4 R5 ; [+12]
       14 GETTABLEKS                       R5 R1 K0 ["item"]
       16 GETTABLEKS                       R4 R5 K1 ["source"]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R5 R6 K3 ["SOURCE_MARKETPLACE"]
       21 JUMPIFEQ                         R4 R5 ; [+2]
       23 LOADB                            R3 0 +1
       24 LOADB                            R3 1
       25 MOVE                             R2 R3
       26 JUMP                             ; [+11]
       27 GETTABLEKS                       R4 R1 K0 ["item"]
       29 GETTABLEKS                       R3 R4 K1 ["source"]
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R4 R5 K2 ["SOURCE_INSTANCE"]
       34 JUMPIFEQ                         R3 R4 ; [+2]
       36 LOADB                            R2 0 +1
       37 LOADB                            R2 1
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R3 R4 K4 ["createElement"]
       41 GETUPVAL                         R4 3
       42 DUPTABLE                         R5 K12 [{"key", "ItemData", "IsUserProvided", "LayoutOrder", "Size", "Delete", "DeleteAll"}]
       43 LOADK                            R7 K13 ["item_%*_%*"]
       44 GETTABLEKS                       R10 R1 K0 ["item"]
       46 GETTABLEKS                       R9 R10 K1 ["source"]
       48 MOVE                             R10 R0
       49 NAMECALL                         R7 R7 K14 ["format"]
       51 CALL                             R7 3 1
       52 MOVE                             R6 R7
       53 SETTABLEKS                       R6 R5 K5 ["key"]
       55 SETTABLEKS                       R1 R5 K6 ["ItemData"]
       57 SETTABLEKS                       R2 R5 K7 ["IsUserProvided"]
       59 JUMPIFNOT                        R2 ; [+2]
       60 MOVE                             R6 R0
       61 JUMP                             ; [+3]
       62 GETUPVAL                         R8 4
       63 LENGTH                           R7 R8
       64 ADD                              R6 R7 R0
       65 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       67 GETUPVAL                         R7 5
       68 GETTABLEKS                       R6 R7 K15 ["CellSize"]
       70 SETTABLEKS                       R6 R5 K9 ["Size"]
       72 GETTABLEKS                       R8 R1 K0 ["item"]
       74 GETTABLEKS                       R7 R8 K1 ["source"]
       76 GETUPVAL                         R9 1
       77 GETTABLEKS                       R8 R9 K16 ["SOURCE_BUILTIN"]
       79 JUMPIFEQ                         R7 R8 ; [+5]
       81 NEWCLOSURE                       R6 P0
       82 CAPTURE                          UPVAL U6
       83 CAPTURE                          VAL R1
       84 JUMP                             ; [+1]
       85 LOADNIL                          R6
       86 SETTABLEKS                       R6 R5 K10 ["Delete"]
       88 GETTABLEKS                       R8 R1 K0 ["item"]
       90 GETTABLEKS                       R7 R8 K1 ["source"]
       92 GETUPVAL                         R9 1
       93 GETTABLEKS                       R8 R9 K16 ["SOURCE_BUILTIN"]
       95 JUMPIFEQ                         R7 R8 ; [+3]
       97 GETUPVAL                         R6 7
       98 JUMP                             ; [+1]
       99 LOADNIL                          R6
      100 SETTABLEKS                       R6 R5 K11 ["DeleteAll"]
      102 CALL                             R3 2 -1
      103 RETURN                           R3 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Catalog"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["useContext"]
        8 GETUPVAL                         R3 2
        9 CALL                             R2 1 1
       10 GETUPVAL                         R4 3
       11 CALL                             R4 0 1
       12 JUMPIFNOT                        R4 ; [+6]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K2 ["useContext"]
       16 GETUPVAL                         R4 4
       17 CALL                             R3 1 1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R3
       20 GETUPVAL                         R5 5
       21 GETTABLEKS                       R4 R5 K3 ["new"]
       23 CALL                             R4 0 1
       24 GETTABLEKS                       R5 R0 K4 ["Palette"]
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R6 R7 K5 ["useMemo"]
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R3
       35 CAPTURE                          UPVAL U7
       36 NEWTABLE                         R8 0 3
       38 MOVE                             R9 R5
       39 GETTABLEKS                       R10 R2 K6 ["equippableItems"]
       41 GETUPVAL                         R12 3
       42 CALL                             R12 0 1
       43 JUMPIFNOT                        R12 ; [+3]
       44 GETTABLEKS                       R11 R3 K6 ["equippableItems"]
       46 JUMP                             ; [+1]
       47 LOADNIL                          R11
       48 SETLIST                          R8 R9 3 [1]
       50 CALL                             R6 2 1
       51 GETUPVAL                         R8 3
       52 CALL                             R8 0 1
       53 JUMPIFNOT                        R8 ; [+17]
       54 GETUPVAL                         R8 1
       55 GETTABLEKS                       R7 R8 K7 ["useCallback"]
       57 NEWCLOSURE                       R8 P1
       58 CAPTURE                          UPVAL U8
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R3
       62 NEWTABLE                         R9 0 3
       64 MOVE                             R10 R2
       65 MOVE                             R11 R3
       66 MOVE                             R12 R5
       67 SETLIST                          R9 R10 3 [1]
       69 CALL                             R7 2 1
       70 JUMP                             ; [+4]
       71 NEWCLOSURE                       R7 P2
       72 CAPTURE                          UPVAL U8
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R5
       75 GETUPVAL                         R9 3
       76 CALL                             R9 0 1
       77 JUMPIFNOT                        R9 ; [+18]
       78 GETUPVAL                         R9 1
       79 GETTABLEKS                       R8 R9 K7 ["useCallback"]
       81 NEWCLOSURE                       R9 P3
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R5
       84 CAPTURE                          UPVAL U6
       85 CAPTURE                          UPVAL U8
       86 CAPTURE                          VAL R3
       87 NEWTABLE                         R10 0 3
       89 MOVE                             R11 R2
       90 MOVE                             R12 R3
       91 MOVE                             R13 R5
       92 SETLIST                          R10 R11 3 [1]
       94 CALL                             R8 2 1
       95 JUMP                             ; [+5]
       96 NEWCLOSURE                       R8 P4
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R5
       99 CAPTURE                          UPVAL U6
      100 CAPTURE                          UPVAL U8
      101 GETUPVAL                         R10 6
      102 GETTABLEKS                       R9 R10 K8 ["collectArray"]
      104 MOVE                             R10 R6
      105 NEWCLOSURE                       R11 P5
      106 CAPTURE                          UPVAL U3
      107 CAPTURE                          UPVAL U8
      108 CAPTURE                          UPVAL U1
      109 CAPTURE                          UPVAL U9
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R8
      114 CALL                             R9 2 1
      115 GETTABLEKS                       R12 R0 K4 ["Palette"]
      117 GETTABLEKS                       R11 R12 K10 ["PreviewAspectRatio"]
      119 ORK                              R10 R11 K9 [1]
      120 GETUPVAL                         R12 1
      121 GETTABLEKS                       R11 R12 K11 ["createElement"]
      123 GETUPVAL                         R12 10
      124 DUPTABLE                         R13 K13 [{"Layout"}]
      125 GETIMPORT                        R14 K17 [Enum.FillDirection.Vertical]
      127 SETTABLEKS                       R14 R13 K12 ["Layout"]
      129 DUPTABLE                         R14 K20 [{"ScrollingFrame", "AddItemButton"}]
      130 GETUPVAL                         R16 1
      131 GETTABLEKS                       R15 R16 K11 ["createElement"]
      133 GETUPVAL                         R16 11
      134 DUPTABLE                         R17 K25 [{"AutomaticCanvasSize", "LayoutOrder", "Size", "Style"}]
      135 GETIMPORT                        R18 K28 [Enum.AutomaticSize.Y]
      137 SETTABLEKS                       R18 R17 K21 ["AutomaticCanvasSize"]
      139 NAMECALL                         R18 R4 K29 ["getNextOrder"]
      141 CALL                             R18 1 1
      142 SETTABLEKS                       R18 R17 K22 ["LayoutOrder"]
      144 GETIMPORT                        R18 K31 [UDim2.new]
      146 GETIMPORT                        R19 K33 [UDim.new]
      148 LOADN                            R20 1
      149 LOADN                            R21 0
      150 CALL                             R19 2 1
      151 GETTABLEKS                       R20 R1 K34 ["ScrollingFrameHeight"]
      153 CALL                             R18 2 1
      154 SETTABLEKS                       R18 R17 K23 ["Size"]
      156 GETTABLEKS                       R18 R1 K18 ["ScrollingFrame"]
      158 SETTABLEKS                       R18 R17 K24 ["Style"]
      160 DUPTABLE                         R18 K36 [{"UIGridLayout"}]
      161 GETUPVAL                         R20 1
      162 GETTABLEKS                       R19 R20 K11 ["createElement"]
      164 LOADK                            R20 K35 ["UIGridLayout"]
      165 DUPTABLE                         R21 K41 [{"CellPadding", "CellSize", "HorizontalAlignment", "SortOrder"}]
      166 GETIMPORT                        R22 K43 [UDim2.fromOffset]
      168 LOADN                            R23 5
      169 LOADN                            R24 5
      170 CALL                             R22 2 1
      171 SETTABLEKS                       R22 R21 K37 ["CellPadding"]
      173 GETIMPORT                        R22 K31 [UDim2.new]
      175 GETTABLEKS                       R24 R1 K38 ["CellSize"]
      177 GETTABLEKS                       R23 R24 K44 ["X"]
      179 GETIMPORT                        R24 K33 [UDim.new]
      181 GETTABLEKS                       R28 R1 K38 ["CellSize"]
      183 GETTABLEKS                       R27 R28 K27 ["Y"]
      185 GETTABLEKS                       R26 R27 K45 ["Scale"]
      187 DIV                              R25 R26 R10
      188 GETTABLEKS                       R29 R1 K38 ["CellSize"]
      190 GETTABLEKS                       R28 R29 K27 ["Y"]
      192 GETTABLEKS                       R27 R28 K46 ["Offset"]
      194 DIV                              R26 R27 R10
      195 CALL                             R24 2 -1
      196 CALL                             R22 -1 1
      197 SETTABLEKS                       R22 R21 K38 ["CellSize"]
      199 GETIMPORT                        R22 K48 [Enum.HorizontalAlignment.Center]
      201 SETTABLEKS                       R22 R21 K39 ["HorizontalAlignment"]
      203 GETIMPORT                        R22 K49 [Enum.SortOrder.LayoutOrder]
      205 SETTABLEKS                       R22 R21 K40 ["SortOrder"]
      207 DUPTABLE                         R22 K51 [{"UIAspectRatioConstraint"}]
      208 GETUPVAL                         R24 1
      209 GETTABLEKS                       R23 R24 K11 ["createElement"]
      211 LOADK                            R24 K50 ["UIAspectRatioConstraint"]
      212 DUPTABLE                         R25 K53 [{"AspectRatio"}]
      213 SETTABLEKS                       R10 R25 K52 ["AspectRatio"]
      215 CALL                             R23 2 1
      216 SETTABLEKS                       R23 R22 K50 ["UIAspectRatioConstraint"]
      218 CALL                             R19 3 1
      219 SETTABLEKS                       R19 R18 K35 ["UIGridLayout"]
      221 MOVE                             R19 R9
      222 CALL                             R15 4 1
      223 SETTABLEKS                       R15 R14 K18 ["ScrollingFrame"]
      225 GETUPVAL                         R16 1
      226 GETTABLEKS                       R15 R16 K11 ["createElement"]
      228 GETUPVAL                         R16 12
      229 DUPTABLE                         R17 K54 [{"LayoutOrder", "Palette"}]
      230 NAMECALL                         R18 R4 K29 ["getNextOrder"]
      232 CALL                             R18 1 1
      233 SETTABLEKS                       R18 R17 K22 ["LayoutOrder"]
      235 SETTABLEKS                       R5 R17 K4 ["Palette"]
      237 CALL                             R15 2 1
      238 SETTABLEKS                       R15 R14 K19 ["AddItemButton"]
      240 CALL                             R11 3 -1
      241 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R6 K1 [script]
       32 GETTABLEKS                       R5 R6 K10 ["AddItemButton"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETIMPORT                        R7 K1 [script]
       39 GETTABLEKS                       R6 R7 K11 ["CatalogItemButton"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R9 R0 K12 ["Src"]
       46 GETTABLEKS                       R8 R9 K13 ["Util"]
       48 GETTABLEKS                       R7 R8 K14 ["UserCatalogContext"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R10 R0 K12 ["Src"]
       55 GETTABLEKS                       R9 R10 K15 ["Components"]
       57 GETTABLEKS                       R8 R9 K16 ["MarketplaceCatalogContext"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R11 R0 K12 ["Src"]
       64 GETTABLEKS                       R10 R11 K13 ["Util"]
       66 GETTABLEKS                       R9 R10 K17 ["Constants"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R12 R0 K12 ["Src"]
       73 GETTABLEKS                       R11 R12 K18 ["Resources"]
       75 GETTABLEKS                       R10 R11 K19 ["Theme"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R12 R0 K12 ["Src"]
       82 GETTABLEKS                       R11 R12 K20 ["Types"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R14 R0 K12 ["Src"]
       89 GETTABLEKS                       R13 R14 K21 ["Flags"]
       91 GETTABLEKS                       R12 R13 K22 ["getFFlagAvatarPreviewerLookComposer"]
       93 CALL                             R11 1 1
       94 GETTABLEKS                       R12 R2 K23 ["UI"]
       96 GETTABLEKS                       R13 R12 K24 ["Pane"]
       98 GETTABLEKS                       R14 R12 K25 ["ScrollingFrame"]
      100 GETTABLEKS                       R16 R2 K13 ["Util"]
      102 GETTABLEKS                       R15 R16 K26 ["LayoutOrderIterator"]
      104 GETTABLEKS                       R17 R2 K27 ["ContextServices"]
      106 GETTABLEKS                       R16 R17 K28 ["Stylizer"]
      108 DUPCLOSURE                       R17 K29 [PROTO_0]
      109 CAPTURE                          VAL R8
      110 DUPCLOSURE                       R18 K30 [PROTO_2]
      111 CAPTURE                          VAL R1
      112 DUPCLOSURE                       R19 K31 [PROTO_10]
      113 CAPTURE                          VAL R16
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R15
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R17
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R4
      126 RETURN                           R19 1
