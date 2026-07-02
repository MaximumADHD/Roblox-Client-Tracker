PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["mask"]
        2 GETTABLEKS                       R3 R3 K1 ["name"]
        4 GETTABLEKS                       R4 R1 K0 ["mask"]
        6 GETTABLEKS                       R4 R4 K1 ["name"]
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["masks"]
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 JUMPIFNOTEQKNIL                  R6 ; [+2]
       12 LOADB                            R8 0 +1
       13 LOADB                            R8 1
       14 FASTCALL2K                       ASSERT R8 K1 ; [+4]
       16 LOADK                            R9 K1 ["Luau"]
       17 GETIMPORT                        R7 K3 [assert]
       19 CALL                             R7 2 0
       20 DUPTABLE                         R9 K6 [{"id", "mask"}]
       21 SETTABLEKS                       R5 R9 K4 ["id"]
       23 SETTABLEKS                       R6 R9 K5 ["mask"]
       25 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       27 MOVE                             R8 R1
       28 GETIMPORT                        R7 K9 [table.insert]
       30 CALL                             R7 2 0
       31 FORGLOOP                         R2 2 ; [-22]
       33 GETIMPORT                        R2 K11 [table.sort]
       35 MOVE                             R3 R1
       36 DUPCLOSURE                       R4 K12 [PROTO_0]
       37 CALL                             R2 2 0
       38 MOVE                             R2 R1
       39 LOADNIL                          R3
       40 LOADNIL                          R4
       41 FORGPREP                         R2
       42 DUPTABLE                         R9 K15 [{"id", "text", "isChecked"}]
       43 GETTABLEKS                       R10 R6 K4 ["id"]
       45 SETTABLEKS                       R10 R9 K4 ["id"]
       47 GETTABLEKS                       R10 R6 K5 ["mask"]
       49 GETTABLEKS                       R10 R10 K16 ["name"]
       51 SETTABLEKS                       R10 R9 K13 ["text"]
       53 GETUPVAL                         R10 1
       54 CALL                             R10 0 1
       55 JUMPIFNOT                        R10 ; [+9]
       56 GETTABLEKS                       R11 R6 K4 ["id"]
       58 GETUPVAL                         R12 2
       59 GETTABLEKS                       R12 R12 K17 ["Value"]
       61 JUMPIFEQ                         R11 R12 ; [+2]
       63 LOADB                            R10 0 +1
       64 LOADB                            R10 1
       65 SETTABLEKS                       R10 R9 K14 ["isChecked"]
       67 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       69 MOVE                             R8 R0
       70 GETIMPORT                        R7 K9 [table.insert]
       72 CALL                             R7 2 0
       73 FORGLOOP                         R2 2 ; [-32]
       75 GETUPVAL                         R2 1
       76 CALL                             R2 0 1
       77 JUMPIFNOT                        R2 ; [+64]
       78 NEWTABLE                         R2 0 0
       80 LENGTH                           R3 R0
       81 LOADN                            R4 0
       82 JUMPIFNOTLT                      R4 R3 ; [+10]
       84 DUPTABLE                         R5 K19 [{"items"}]
       85 SETTABLEKS                       R0 R5 K18 ["items"]
       87 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       89 MOVE                             R4 R2
       90 GETIMPORT                        R3 K9 [table.insert]
       92 CALL                             R3 2 0
       93 DUPTABLE                         R5 K19 [{"items"}]
       94 NEWTABLE                         R6 0 1
       96 DUPTABLE                         R7 K21 [{["id"] = "__add_new__", ["text"]}]
       97 GETUPVAL                         R8 3
       98 LOADK                            R10 K22 ["Common"]
       99 LOADK                            R11 K23 ["AnimationEditor"]
      100 LOADK                            R12 K24 ["MaskProperty"]
      101 LOADK                            R13 K25 ["CreateNewMask"]
      102 NAMECALL                         R8 R8 K26 ["getExternalText"]
      104 CALL                             R8 5 1
      105 SETTABLEKS                       R8 R7 K13 ["text"]
      107 SETLIST                          R6 R7 1 [1]
      109 SETTABLEKS                       R6 R5 K18 ["items"]
      111 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
      113 MOVE                             R4 R2
      114 GETIMPORT                        R3 K9 [table.insert]
      116 CALL                             R3 2 0
      117 LENGTH                           R3 R0
      118 LOADN                            R4 0
      119 JUMPIFNOTLT                      R4 R3 ; [+21]
      121 LENGTH                           R5 R2
      122 GETTABLE                         R4 R2 R5
      123 GETTABLEKS                       R4 R4 K18 ["items"]
      125 DUPTABLE                         R5 K28 [{["id"] = "__edit__", ["text"]}]
      126 GETUPVAL                         R6 3
      127 LOADK                            R8 K22 ["Common"]
      128 LOADK                            R9 K23 ["AnimationEditor"]
      129 LOADK                            R10 K24 ["MaskProperty"]
      130 LOADK                            R11 K29 ["EditMasks"]
      131 NAMECALL                         R6 R6 K26 ["getExternalText"]
      133 CALL                             R6 5 1
      134 SETTABLEKS                       R6 R5 K13 ["text"]
      136 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
      138 GETIMPORT                        R3 K9 [table.insert]
      140 CALL                             R3 2 0
      141 RETURN                           R2 1
      142 LENGTH                           R2 R0
      143 LOADN                            R3 0
      144 JUMPIFNOTLT                      R3 R2 ; [+8]
      146 DUPTABLE                         R4 K32 [{["id"] = "__separator__", ["text"] = "────────"}]
      147 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
      149 MOVE                             R3 R0
      150 GETIMPORT                        R2 K9 [table.insert]
      152 CALL                             R2 2 0
      153 DUPTABLE                         R4 K21 [{["id"] = "__add_new__", ["text"]}]
      154 GETUPVAL                         R5 3
      155 LOADK                            R7 K22 ["Common"]
      156 LOADK                            R8 K23 ["AnimationEditor"]
      157 LOADK                            R9 K24 ["MaskProperty"]
      158 LOADK                            R10 K25 ["CreateNewMask"]
      159 NAMECALL                         R5 R5 K26 ["getExternalText"]
      161 CALL                             R5 5 1
      162 SETTABLEKS                       R5 R4 K13 ["text"]
      164 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
      166 MOVE                             R3 R0
      167 GETIMPORT                        R2 K9 [table.insert]
      169 CALL                             R2 2 0
      170 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+3]
        3 JUMPIFNOTEQKS                    R0 K0 ["__separator__"] ; [+2]
        5 RETURN                           R0 0
        6 JUMPIFNOTEQKS                    R0 K1 ["__add_new__"] ; [+34]
        8 GETUPVAL                         R1 0
        9 CALL                             R1 0 1
       10 JUMPIFNOT                        R1 ; [+18]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K2 ["createMaskAsync"]
       14 CALL                             R1 0 1
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K3 ["OnChanged"]
       18 JUMPIFNOT                        R2 ; [+5]
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R2 R2 K3 ["OnChanged"]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 0
       24 GETUPVAL                         R2 3
       25 GETTABLEKS                       R2 R2 K4 ["setSelectedMaskId"]
       27 MOVE                             R3 R1
       28 CALL                             R2 1 0
       29 GETUPVAL                         R1 3
       30 JUMPIFNOT                        R1 ; [+9]
       31 GETUPVAL                         R1 3
       32 GETTABLEKS                       R1 R1 K5 ["setShowMaskEditor"]
       34 JUMPIFNOT                        R1 ; [+5]
       35 GETUPVAL                         R1 3
       36 GETTABLEKS                       R1 R1 K5 ["setShowMaskEditor"]
       38 LOADB                            R2 1
       39 CALL                             R1 1 0
       40 RETURN                           R0 0
       41 JUMPIFNOTEQKS                    R0 K6 ["__edit__"] ; [+25]
       43 GETUPVAL                         R1 2
       44 GETTABLEKS                       R1 R1 K3 ["OnChanged"]
       46 JUMPIFNOT                        R1 ; [+7]
       47 GETUPVAL                         R1 2
       48 GETTABLEKS                       R1 R1 K3 ["OnChanged"]
       50 GETUPVAL                         R2 2
       51 GETTABLEKS                       R2 R2 K7 ["Value"]
       53 CALL                             R1 1 0
       54 GETUPVAL                         R1 3
       55 GETTABLEKS                       R1 R1 K4 ["setSelectedMaskId"]
       57 GETUPVAL                         R2 2
       58 GETTABLEKS                       R2 R2 K7 ["Value"]
       60 CALL                             R1 1 0
       61 GETUPVAL                         R1 3
       62 GETTABLEKS                       R1 R1 K5 ["setShowMaskEditor"]
       64 LOADB                            R2 1
       65 CALL                             R1 1 0
       66 RETURN                           R0 0
       67 GETUPVAL                         R1 2
       68 GETTABLEKS                       R1 R1 K3 ["OnChanged"]
       70 JUMPIFEQKNIL                     R1 ; [+6]
       72 GETUPVAL                         R1 2
       73 GETTABLEKS                       R1 R1 K3 ["OnChanged"]
       75 MOVE                             R2 R0
       76 CALL                             R1 1 0
       77 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useContext"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K3 ["useContext"]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K4 ["Context"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K5 ["useMemo"]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R1
       30 NEWTABLE                         R6 0 2
       32 GETTABLEKS                       R7 R2 K6 ["masks"]
       34 GETTABLEKS                       R8 R0 K7 ["Value"]
       36 SETLIST                          R6 R7 2 [1]
       38 CALL                             R4 2 1
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R5 R5 K8 ["useCallback"]
       42 NEWCLOSURE                       R6 P1
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R3
       47 NEWTABLE                         R7 0 5
       49 GETTABLEKS                       R8 R2 K9 ["createMaskAsync"]
       51 GETTABLEKS                       R9 R3 K10 ["setSelectedMaskId"]
       53 GETTABLEKS                       R10 R3 K11 ["setShowMaskEditor"]
       55 GETTABLEKS                       R11 R0 K12 ["OnChanged"]
       57 GETTABLEKS                       R12 R0 K7 ["Value"]
       59 SETLIST                          R7 R8 5 [1]
       61 CALL                             R5 2 1
       62 LOADB                            R7 1
       63 GETTABLEKS                       R9 R0 K7 ["Value"]
       65 FASTCALL1                        TYPEOF R9 ; [+2]
       66 GETIMPORT                        R8 K14 [typeof]
       68 CALL                             R8 1 1
       69 JUMPIFEQKS                       R8 K15 ["nil"] ; [+20]
       71 LOADB                            R7 1
       72 GETTABLEKS                       R9 R0 K7 ["Value"]
       74 FASTCALL1                        TYPEOF R9 ; [+2]
       75 GETIMPORT                        R8 K14 [typeof]
       77 CALL                             R8 1 1
       78 JUMPIFEQKS                       R8 K16 ["string"] ; [+11]
       80 GETTABLEKS                       R9 R0 K7 ["Value"]
       82 FASTCALL1                        TYPEOF R9 ; [+2]
       83 GETIMPORT                        R8 K14 [typeof]
       85 CALL                             R8 1 1
       86 JUMPIFEQKS                       R8 K17 ["number"] ; [+2]
       88 LOADB                            R7 0 +1
       89 LOADB                            R7 1
       90 FASTCALL2K                       ASSERT R7 K18 ; [+4]
       92 LOADK                            R8 K18 ["Bad value, EnumItem should only be for OnChanged"]
       93 GETIMPORT                        R6 K20 [assert]
       95 CALL                             R6 2 0
       96 GETUPVAL                         R6 5
       97 GETTABLEKS                       R6 R6 K21 ["createNextOrder"]
       99 CALL                             R6 0 1
      100 GETUPVAL                         R7 1
      101 GETTABLEKS                       R7 R7 K22 ["createElement"]
      103 GETUPVAL                         R8 6
      104 GETTABLEKS                       R8 R8 K23 ["View"]
      106 DUPTABLE                         R9 K27 [{"tag", "LayoutOrder", "testId"}]
      107 GETUPVAL                         R10 6
      108 GETTABLEKS                       R10 R10 K28 ["Hooks"]
      110 GETTABLEKS                       R10 R10 K29 ["useDefaultTags"]
      112 GETTABLEKS                       R11 R0 K30 ["tags"]
      114 LOADK                            R12 K31 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
      115 CALL                             R10 2 1
      116 SETTABLEKS                       R10 R9 K24 ["tag"]
      118 GETTABLEKS                       R10 R0 K25 ["LayoutOrder"]
      120 SETTABLEKS                       R10 R9 K25 ["LayoutOrder"]
      122 GETTABLEKS                       R10 R0 K26 ["testId"]
      124 SETTABLEKS                       R10 R9 K26 ["testId"]
      126 DUPTABLE                         R10 K35 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
      127 GETUPVAL                         R11 1
      128 GETTABLEKS                       R11 R11 K22 ["createElement"]
      130 GETUPVAL                         R12 7
      131 DUPTABLE                         R13 K39 [{["tag"] = "fill auto-xy text-body-small text-align-x-left text-truncate-split", ["Text"], ["LayoutOrder"], ["isDisabled"]}]
      132 GETTABLEKS                       R14 R0 K40 ["Label"]
      134 SETTABLEKS                       R14 R13 K37 ["Text"]
      136 MOVE                             R14 R6
      137 CALL                             R14 0 1
      138 SETTABLEKS                       R14 R13 K25 ["LayoutOrder"]
      140 GETTABLEKS                       R15 R0 K42 ["IsDisabled"]
      142 ORK                              R14 R15 K41 [False]
      143 SETTABLEKS                       R14 R13 K38 ["isDisabled"]
      145 CALL                             R11 2 1
      146 SETTABLEKS                       R11 R10 K32 ["CompositorNodeInputLabel"]
      148 GETUPVAL                         R11 1
      149 GETTABLEKS                       R11 R11 K22 ["createElement"]
      151 GETUPVAL                         R12 6
      152 GETTABLEKS                       R12 R12 K43 ["Dropdown"]
      154 GETTABLEKS                       R12 R12 K44 ["Root"]
      156 DUPTABLE                         R13 K53 [{["size"], ["width"], ["label"] = "", ["items"], ["value"], ["onItemChanged"], ["disabled"], ["LayoutOrder"]}]
      157 GETUPVAL                         R14 6
      158 GETTABLEKS                       R14 R14 K54 ["Enums"]
      160 GETTABLEKS                       R14 R14 K55 ["InputSize"]
      162 GETTABLEKS                       R14 R14 K56 ["XSmall"]
      164 SETTABLEKS                       R14 R13 K45 ["size"]
      166 GETIMPORT                        R14 K59 [UDim.new]
      168 LOADN                            R15 0
      169 LOADN                            R16 90
      170 CALL                             R14 2 1
      171 SETTABLEKS                       R14 R13 K46 ["width"]
      173 SETTABLEKS                       R4 R13 K49 ["items"]
      175 GETTABLEKS                       R14 R0 K7 ["Value"]
      177 SETTABLEKS                       R14 R13 K50 ["value"]
      179 SETTABLEKS                       R5 R13 K51 ["onItemChanged"]
      181 GETUPVAL                         R15 4
      182 CALL                             R15 0 1
      183 JUMPIF                           R15 ; [+12]
      184 LOADB                            R14 0
      185 LENGTH                           R15 R4
      186 JUMPIFNOTEQKN                    R15 K60 [1] ; [+10]
      188 GETTABLEN                        R15 R4 1
      189 GETTABLEKS                       R15 R15 K61 ["id"]
      191 JUMPIFEQKS                       R15 K48 [""] ; [+2]
      193 LOADB                            R14 0 +1
      194 LOADB                            R14 1
      195 JUMP                             ; [+1]
      196 LOADNIL                          R14
      197 SETTABLEKS                       R14 R13 K52 ["disabled"]
      199 MOVE                             R14 R6
      200 CALL                             R14 0 1
      201 SETTABLEKS                       R14 R13 K25 ["LayoutOrder"]
      203 CALL                             R11 2 1
      204 SETTABLEKS                       R11 R10 K33 ["Input"]
      206 GETUPVAL                         R11 1
      207 GETTABLEKS                       R11 R11 K22 ["createElement"]
      209 LOADK                            R12 K62 ["Folder"]
      210 NEWTABLE                         R13 0 0
      212 GETTABLEKS                       R14 R0 K63 ["children"]
      214 CALL                             R11 3 1
      215 SETTABLEKS                       R11 R10 K34 ["PinChildren"]
      217 CALL                             R7 3 -1
      218 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K10 ["MaskEditorContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K11 ["MaskEditorVisibilityContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["NodeGraphing"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K13 ["Components"]
       46 GETTABLEKS                       R7 R7 K14 ["NodeView"]
       48 GETTABLEKS                       R7 R7 K15 ["CompositorNodeProperty"]
       50 GETTABLEKS                       R7 R7 K16 ["PropertyLabel"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K6 ["Parent"]
       57 GETTABLEKS                       R8 R8 K17 ["React"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Parent"]
       64 GETTABLEKS                       R9 R9 K18 ["ReactUtils"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K19 ["Flags"]
       71 GETTABLEKS                       R10 R10 K20 ["getFFlagAnimGraphUIMaskMenu"]
       73 CALL                             R9 1 1
       74 DUPCLOSURE                       R10 K21 [PROTO_3]
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R6
       83 RETURN                           R10 1
