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
       53 GETTABLEKS                       R11 R6 K4 ["id"]
       55 GETUPVAL                         R12 1
       56 GETTABLEKS                       R12 R12 K17 ["Value"]
       58 JUMPIFEQ                         R11 R12 ; [+2]
       60 LOADB                            R10 0 +1
       61 LOADB                            R10 1
       62 SETTABLEKS                       R10 R9 K14 ["isChecked"]
       64 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       66 MOVE                             R8 R0
       67 GETIMPORT                        R7 K9 [table.insert]
       69 CALL                             R7 2 0
       70 FORGLOOP                         R2 2 ; [-29]
       72 NEWTABLE                         R2 0 0
       74 LENGTH                           R3 R0
       75 LOADN                            R4 0
       76 JUMPIFNOTLT                      R4 R3 ; [+10]
       78 DUPTABLE                         R5 K19 [{"items"}]
       79 SETTABLEKS                       R0 R5 K18 ["items"]
       81 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       83 MOVE                             R4 R2
       84 GETIMPORT                        R3 K9 [table.insert]
       86 CALL                             R3 2 0
       87 DUPTABLE                         R5 K19 [{"items"}]
       88 NEWTABLE                         R6 0 1
       90 DUPTABLE                         R7 K21 [{["id"] = "__add_new__", ["text"]}]
       91 GETUPVAL                         R8 2
       92 LOADK                            R10 K22 ["Common"]
       93 LOADK                            R11 K23 ["AnimationEditor"]
       94 LOADK                            R12 K24 ["MaskProperty"]
       95 LOADK                            R13 K25 ["CreateNewMask"]
       96 NAMECALL                         R8 R8 K26 ["getExternalText"]
       98 CALL                             R8 5 1
       99 SETTABLEKS                       R8 R7 K13 ["text"]
      101 SETLIST                          R6 R7 1 [1]
      103 SETTABLEKS                       R6 R5 K18 ["items"]
      105 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
      107 MOVE                             R4 R2
      108 GETIMPORT                        R3 K9 [table.insert]
      110 CALL                             R3 2 0
      111 LENGTH                           R3 R0
      112 LOADN                            R4 0
      113 JUMPIFNOTLT                      R4 R3 ; [+21]
      115 LENGTH                           R5 R2
      116 GETTABLE                         R4 R2 R5
      117 GETTABLEKS                       R4 R4 K18 ["items"]
      119 DUPTABLE                         R5 K28 [{["id"] = "__edit__", ["text"]}]
      120 GETUPVAL                         R6 2
      121 LOADK                            R8 K22 ["Common"]
      122 LOADK                            R9 K23 ["AnimationEditor"]
      123 LOADK                            R10 K24 ["MaskProperty"]
      124 LOADK                            R11 K29 ["EditMasks"]
      125 NAMECALL                         R6 R6 K26 ["getExternalText"]
      127 CALL                             R6 5 1
      128 SETTABLEKS                       R6 R5 K13 ["text"]
      130 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
      132 GETIMPORT                        R3 K9 [table.insert]
      134 CALL                             R3 2 0
      135 RETURN                           R2 1

PROTO_2:
        0 JUMPIFNOTEQKS                    R0 K0 ["__add_new__"] ; [+31]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["createMaskAsync"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["OnChanged"]
        9 JUMPIFNOT                        R2 ; [+5]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K2 ["OnChanged"]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K3 ["setSelectedMaskId"]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 2
       21 JUMPIFNOT                        R2 ; [+9]
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K4 ["setShowMaskEditor"]
       25 JUMPIFNOT                        R2 ; [+5]
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R2 R2 K4 ["setShowMaskEditor"]
       29 LOADB                            R3 1
       30 CALL                             R2 1 0
       31 RETURN                           R0 0
       32 JUMPIFNOTEQKS                    R0 K5 ["__edit__"] ; [+25]
       34 GETUPVAL                         R1 1
       35 GETTABLEKS                       R1 R1 K2 ["OnChanged"]
       37 JUMPIFNOT                        R1 ; [+7]
       38 GETUPVAL                         R1 1
       39 GETTABLEKS                       R1 R1 K2 ["OnChanged"]
       41 GETUPVAL                         R2 1
       42 GETTABLEKS                       R2 R2 K6 ["Value"]
       44 CALL                             R1 1 0
       45 GETUPVAL                         R1 2
       46 GETTABLEKS                       R1 R1 K3 ["setSelectedMaskId"]
       48 GETUPVAL                         R2 1
       49 GETTABLEKS                       R2 R2 K6 ["Value"]
       51 CALL                             R1 1 0
       52 GETUPVAL                         R1 2
       53 GETTABLEKS                       R1 R1 K4 ["setShowMaskEditor"]
       55 LOADB                            R2 1
       56 CALL                             R1 1 0
       57 RETURN                           R0 0
       58 GETUPVAL                         R1 1
       59 GETTABLEKS                       R1 R1 K2 ["OnChanged"]
       61 JUMPIFEQKNIL                     R1 ; [+6]
       63 GETUPVAL                         R1 1
       64 GETTABLEKS                       R1 R1 K2 ["OnChanged"]
       66 MOVE                             R2 R0
       67 CALL                             R1 1 0
       68 RETURN                           R0 0

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
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 NEWTABLE                         R6 0 2
       31 GETTABLEKS                       R7 R2 K6 ["masks"]
       33 GETTABLEKS                       R8 R0 K7 ["Value"]
       35 SETLIST                          R6 R7 2 [1]
       37 CALL                             R4 2 1
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R5 R5 K8 ["useCallback"]
       41 NEWCLOSURE                       R6 P1
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R3
       45 NEWTABLE                         R7 0 5
       47 GETTABLEKS                       R8 R2 K9 ["createMaskAsync"]
       49 GETTABLEKS                       R9 R3 K10 ["setSelectedMaskId"]
       51 GETTABLEKS                       R10 R3 K11 ["setShowMaskEditor"]
       53 GETTABLEKS                       R11 R0 K12 ["OnChanged"]
       55 GETTABLEKS                       R12 R0 K7 ["Value"]
       57 SETLIST                          R7 R8 5 [1]
       59 CALL                             R5 2 1
       60 LOADB                            R7 1
       61 GETTABLEKS                       R9 R0 K7 ["Value"]
       63 FASTCALL1                        TYPEOF R9 ; [+2]
       64 GETIMPORT                        R8 K14 [typeof]
       66 CALL                             R8 1 1
       67 JUMPIFEQKS                       R8 K15 ["nil"] ; [+20]
       69 LOADB                            R7 1
       70 GETTABLEKS                       R9 R0 K7 ["Value"]
       72 FASTCALL1                        TYPEOF R9 ; [+2]
       73 GETIMPORT                        R8 K14 [typeof]
       75 CALL                             R8 1 1
       76 JUMPIFEQKS                       R8 K16 ["string"] ; [+11]
       78 GETTABLEKS                       R9 R0 K7 ["Value"]
       80 FASTCALL1                        TYPEOF R9 ; [+2]
       81 GETIMPORT                        R8 K14 [typeof]
       83 CALL                             R8 1 1
       84 JUMPIFEQKS                       R8 K17 ["number"] ; [+2]
       86 LOADB                            R7 0 +1
       87 LOADB                            R7 1
       88 FASTCALL2K                       ASSERT R7 K18 ; [+4]
       90 LOADK                            R8 K18 ["Bad value, EnumItem should only be for OnChanged"]
       91 GETIMPORT                        R6 K20 [assert]
       93 CALL                             R6 2 0
       94 GETUPVAL                         R6 4
       95 GETTABLEKS                       R6 R6 K21 ["createNextOrder"]
       97 CALL                             R6 0 1
       98 GETUPVAL                         R7 1
       99 GETTABLEKS                       R7 R7 K22 ["createElement"]
      101 GETUPVAL                         R8 5
      102 GETTABLEKS                       R8 R8 K23 ["View"]
      104 DUPTABLE                         R9 K27 [{"tag", "LayoutOrder", "testId"}]
      105 GETUPVAL                         R10 5
      106 GETTABLEKS                       R10 R10 K28 ["Hooks"]
      108 GETTABLEKS                       R10 R10 K29 ["useDefaultTags"]
      110 GETTABLEKS                       R11 R0 K30 ["tags"]
      112 LOADK                            R12 K31 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
      113 CALL                             R10 2 1
      114 SETTABLEKS                       R10 R9 K24 ["tag"]
      116 GETTABLEKS                       R10 R0 K25 ["LayoutOrder"]
      118 SETTABLEKS                       R10 R9 K25 ["LayoutOrder"]
      120 GETTABLEKS                       R10 R0 K26 ["testId"]
      122 SETTABLEKS                       R10 R9 K26 ["testId"]
      124 DUPTABLE                         R10 K35 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
      125 GETUPVAL                         R11 1
      126 GETTABLEKS                       R11 R11 K22 ["createElement"]
      128 GETUPVAL                         R12 6
      129 DUPTABLE                         R13 K39 [{["tag"] = "fill auto-xy text-body-small text-align-x-left text-truncate-split", ["Text"], ["LayoutOrder"], ["isDisabled"]}]
      130 GETTABLEKS                       R14 R0 K40 ["Label"]
      132 SETTABLEKS                       R14 R13 K37 ["Text"]
      134 MOVE                             R14 R6
      135 CALL                             R14 0 1
      136 SETTABLEKS                       R14 R13 K25 ["LayoutOrder"]
      138 GETTABLEKS                       R15 R0 K42 ["IsDisabled"]
      140 ORK                              R14 R15 K41 [False]
      141 SETTABLEKS                       R14 R13 K38 ["isDisabled"]
      143 CALL                             R11 2 1
      144 SETTABLEKS                       R11 R10 K32 ["CompositorNodeInputLabel"]
      146 GETUPVAL                         R11 1
      147 GETTABLEKS                       R11 R11 K22 ["createElement"]
      149 GETUPVAL                         R12 5
      150 GETTABLEKS                       R12 R12 K43 ["Dropdown"]
      152 GETTABLEKS                       R12 R12 K44 ["Root"]
      154 DUPTABLE                         R13 K52 [{["size"], ["width"], ["label"] = "", ["items"], ["value"], ["onItemChanged"], ["LayoutOrder"]}]
      155 GETUPVAL                         R14 5
      156 GETTABLEKS                       R14 R14 K53 ["Enums"]
      158 GETTABLEKS                       R14 R14 K54 ["InputSize"]
      160 GETTABLEKS                       R14 R14 K55 ["XSmall"]
      162 SETTABLEKS                       R14 R13 K45 ["size"]
      164 GETIMPORT                        R14 K58 [UDim.new]
      166 LOADN                            R15 0
      167 LOADN                            R16 90
      168 CALL                             R14 2 1
      169 SETTABLEKS                       R14 R13 K46 ["width"]
      171 SETTABLEKS                       R4 R13 K49 ["items"]
      173 GETTABLEKS                       R14 R0 K7 ["Value"]
      175 SETTABLEKS                       R14 R13 K50 ["value"]
      177 SETTABLEKS                       R5 R13 K51 ["onItemChanged"]
      179 MOVE                             R14 R6
      180 CALL                             R14 0 1
      181 SETTABLEKS                       R14 R13 K25 ["LayoutOrder"]
      183 CALL                             R11 2 1
      184 SETTABLEKS                       R11 R10 K33 ["Input"]
      186 GETUPVAL                         R11 1
      187 GETTABLEKS                       R11 R11 K22 ["createElement"]
      189 LOADK                            R12 K59 ["Folder"]
      190 NEWTABLE                         R13 0 0
      192 GETTABLEKS                       R14 R0 K60 ["children"]
      194 CALL                             R11 3 1
      195 SETTABLEKS                       R11 R10 K34 ["PinChildren"]
      197 CALL                             R7 3 -1
      198 RETURN                           R7 -1

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
       67 DUPCLOSURE                       R9 K19 [PROTO_3]
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R6
       75 RETURN                           R9 1
