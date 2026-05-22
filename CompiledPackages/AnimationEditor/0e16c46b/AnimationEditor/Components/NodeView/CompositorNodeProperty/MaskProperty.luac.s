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
       42 DUPTABLE                         R9 K14 [{"id", "text"}]
       43 GETTABLEKS                       R10 R6 K4 ["id"]
       45 SETTABLEKS                       R10 R9 K4 ["id"]
       47 GETTABLEKS                       R10 R6 K5 ["mask"]
       49 GETTABLEKS                       R10 R10 K15 ["name"]
       51 SETTABLEKS                       R10 R9 K13 ["text"]
       53 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       55 MOVE                             R8 R0
       56 GETIMPORT                        R7 K9 [table.insert]
       58 CALL                             R7 2 0
       59 FORGLOOP                         R2 2 ; [-18]
       61 LENGTH                           R2 R0
       62 LOADN                            R3 0
       63 JUMPIFNOTLT                      R3 R2 ; [+14]
       65 DUPTABLE                         R4 K14 [{"id", "text"}]
       66 LOADK                            R5 K16 ["__separator__"]
       67 SETTABLEKS                       R5 R4 K4 ["id"]
       69 LOADK                            R5 K17 ["────────"]
       70 SETTABLEKS                       R5 R4 K13 ["text"]
       72 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
       74 MOVE                             R3 R0
       75 GETIMPORT                        R2 K9 [table.insert]
       77 CALL                             R2 2 0
       78 DUPTABLE                         R4 K14 [{"id", "text"}]
       79 LOADK                            R5 K18 ["__add_new__"]
       80 SETTABLEKS                       R5 R4 K4 ["id"]
       82 GETUPVAL                         R5 1
       83 LOADK                            R7 K19 ["Common"]
       84 LOADK                            R8 K20 ["AnimationEditor"]
       85 LOADK                            R9 K21 ["MaskProperty"]
       86 LOADK                            R10 K22 ["CreateNewMask"]
       87 NAMECALL                         R5 R5 K23 ["getExternalText"]
       89 CALL                             R5 5 1
       90 SETTABLEKS                       R5 R4 K13 ["text"]
       92 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
       94 MOVE                             R3 R0
       95 GETIMPORT                        R2 K9 [table.insert]
       97 CALL                             R2 2 0
       98 RETURN                           R0 1

PROTO_2:
        0 JUMPIFNOTEQKS                    R0 K0 ["__separator__"] ; [+2]
        2 RETURN                           R0 0
        3 JUMPIFNOTEQKS                    R0 K1 ["__add_new__"] ; [+13]
        5 GETUPVAL                         R1 0
        6 JUMPIFNOT                        R1 ; [+9]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["setShowMaskEditor"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K2 ["setShowMaskEditor"]
       14 LOADB                            R2 1
       15 CALL                             R1 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K3 ["OnChanged"]
       20 JUMPIFEQKNIL                     R1 ; [+6]
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R1 R1 K3 ["OnChanged"]
       25 MOVE                             R2 R0
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

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
       27 CAPTURE                          VAL R1
       28 NEWTABLE                         R6 0 1
       30 GETTABLEKS                       R7 R2 K6 ["masks"]
       32 SETLIST                          R6 R7 1 [1]
       34 CALL                             R4 2 1
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R5 R5 K7 ["useCallback"]
       38 NEWCLOSURE                       R6 P1
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R0
       41 NEWTABLE                         R7 0 2
       43 MOVE                             R8 R3
       44 GETTABLEKS                       R9 R0 K8 ["OnChanged"]
       46 SETLIST                          R7 R8 2 [1]
       48 CALL                             R5 2 1
       49 LOADB                            R7 1
       50 GETTABLEKS                       R9 R0 K9 ["Value"]
       52 FASTCALL1                        TYPEOF R9 ; [+2]
       53 GETIMPORT                        R8 K11 [typeof]
       55 CALL                             R8 1 1
       56 JUMPIFEQKS                       R8 K12 ["nil"] ; [+20]
       58 LOADB                            R7 1
       59 GETTABLEKS                       R9 R0 K9 ["Value"]
       61 FASTCALL1                        TYPEOF R9 ; [+2]
       62 GETIMPORT                        R8 K11 [typeof]
       64 CALL                             R8 1 1
       65 JUMPIFEQKS                       R8 K13 ["string"] ; [+11]
       67 GETTABLEKS                       R9 R0 K9 ["Value"]
       69 FASTCALL1                        TYPEOF R9 ; [+2]
       70 GETIMPORT                        R8 K11 [typeof]
       72 CALL                             R8 1 1
       73 JUMPIFEQKS                       R8 K14 ["number"] ; [+2]
       75 LOADB                            R7 0 +1
       76 LOADB                            R7 1
       77 FASTCALL2K                       ASSERT R7 K15 ; [+4]
       79 LOADK                            R8 K15 ["Bad value, EnumItem should only be for OnChanged"]
       80 GETIMPORT                        R6 K17 [assert]
       82 CALL                             R6 2 0
       83 GETUPVAL                         R6 4
       84 GETTABLEKS                       R6 R6 K18 ["createNextOrder"]
       86 CALL                             R6 0 1
       87 GETUPVAL                         R7 1
       88 GETTABLEKS                       R7 R7 K19 ["createElement"]
       90 GETUPVAL                         R8 5
       91 GETTABLEKS                       R8 R8 K20 ["View"]
       93 DUPTABLE                         R9 K24 [{"tag", "LayoutOrder", "testId"}]
       94 GETUPVAL                         R10 5
       95 GETTABLEKS                       R10 R10 K25 ["Hooks"]
       97 GETTABLEKS                       R10 R10 K26 ["useDefaultTags"]
       99 GETTABLEKS                       R11 R0 K27 ["tags"]
      101 LOADK                            R12 K28 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
      102 CALL                             R10 2 1
      103 SETTABLEKS                       R10 R9 K21 ["tag"]
      105 GETTABLEKS                       R10 R0 K22 ["LayoutOrder"]
      107 SETTABLEKS                       R10 R9 K22 ["LayoutOrder"]
      109 GETTABLEKS                       R10 R0 K23 ["testId"]
      111 SETTABLEKS                       R10 R9 K23 ["testId"]
      113 DUPTABLE                         R10 K32 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
      114 GETUPVAL                         R11 1
      115 GETTABLEKS                       R11 R11 K19 ["createElement"]
      117 GETUPVAL                         R12 6
      118 DUPTABLE                         R13 K35 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
      119 LOADK                            R14 K36 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
      120 SETTABLEKS                       R14 R13 K21 ["tag"]
      122 GETTABLEKS                       R14 R0 K37 ["Label"]
      124 SETTABLEKS                       R14 R13 K33 ["Text"]
      126 MOVE                             R14 R6
      127 CALL                             R14 0 1
      128 SETTABLEKS                       R14 R13 K22 ["LayoutOrder"]
      130 GETTABLEKS                       R15 R0 K39 ["IsDisabled"]
      132 ORK                              R14 R15 K38 [False]
      133 SETTABLEKS                       R14 R13 K34 ["isDisabled"]
      135 CALL                             R11 2 1
      136 SETTABLEKS                       R11 R10 K29 ["CompositorNodeInputLabel"]
      138 GETUPVAL                         R11 1
      139 GETTABLEKS                       R11 R11 K19 ["createElement"]
      141 GETUPVAL                         R12 5
      142 GETTABLEKS                       R12 R12 K40 ["Dropdown"]
      144 GETTABLEKS                       R12 R12 K41 ["Root"]
      146 DUPTABLE                         R13 K49 [{"size", "width", "label", "items", "value", "onItemChanged", "disabled", "LayoutOrder"}]
      147 GETUPVAL                         R14 5
      148 GETTABLEKS                       R14 R14 K50 ["Enums"]
      150 GETTABLEKS                       R14 R14 K51 ["InputSize"]
      152 GETTABLEKS                       R14 R14 K52 ["XSmall"]
      154 SETTABLEKS                       R14 R13 K42 ["size"]
      156 GETIMPORT                        R14 K55 [UDim.new]
      158 LOADN                            R15 0
      159 LOADN                            R16 90
      160 CALL                             R14 2 1
      161 SETTABLEKS                       R14 R13 K43 ["width"]
      163 LOADK                            R14 K56 [""]
      164 SETTABLEKS                       R14 R13 K44 ["label"]
      166 SETTABLEKS                       R4 R13 K45 ["items"]
      168 GETTABLEKS                       R14 R0 K9 ["Value"]
      170 SETTABLEKS                       R14 R13 K46 ["value"]
      172 SETTABLEKS                       R5 R13 K47 ["onItemChanged"]
      174 LOADB                            R14 0
      175 LENGTH                           R15 R4
      176 JUMPIFNOTEQKN                    R15 K57 [1] ; [+8]
      178 GETTABLEN                        R15 R4 1
      179 GETTABLEKS                       R15 R15 K58 ["id"]
      181 JUMPIFEQKS                       R15 K56 [""] ; [+2]
      183 LOADB                            R14 0 +1
      184 LOADB                            R14 1
      185 SETTABLEKS                       R14 R13 K48 ["disabled"]
      187 MOVE                             R14 R6
      188 CALL                             R14 0 1
      189 SETTABLEKS                       R14 R13 K22 ["LayoutOrder"]
      191 CALL                             R11 2 1
      192 SETTABLEKS                       R11 R10 K30 ["Input"]
      194 GETUPVAL                         R11 1
      195 GETTABLEKS                       R11 R11 K19 ["createElement"]
      197 LOADK                            R12 K59 ["Folder"]
      198 NEWTABLE                         R13 0 0
      200 GETTABLEKS                       R14 R0 K60 ["children"]
      202 CALL                             R11 3 1
      203 SETTABLEKS                       R11 R10 K31 ["PinChildren"]
      205 CALL                             R7 3 -1
      206 RETURN                           R7 -1

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
