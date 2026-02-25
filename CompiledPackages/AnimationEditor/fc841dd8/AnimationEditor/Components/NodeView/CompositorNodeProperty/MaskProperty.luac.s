PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["mask"]
        2 GETTABLEKS                       R3 R4 K1 ["name"]
        4 GETTABLEKS                       R5 R1 K0 ["mask"]
        6 GETTABLEKS                       R4 R5 K1 ["name"]
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R2 R5 K0 ["masks"]
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
       47 GETTABLEKS                       R11 R6 K5 ["mask"]
       49 GETTABLEKS                       R10 R11 K15 ["name"]
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
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K2 ["setShowMaskEditor"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R1 R2 K2 ["setShowMaskEditor"]
       14 LOADB                            R2 1
       15 CALL                             R1 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R1 R2 K3 ["OnChanged"]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R2 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K3 ["useContext"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K3 ["useContext"]
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R4 R5 K4 ["Context"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R4 R5 K5 ["useMemo"]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R1
       28 NEWTABLE                         R6 0 1
       30 GETTABLEKS                       R7 R2 K6 ["masks"]
       32 SETLIST                          R6 R7 1 [1]
       34 CALL                             R4 2 1
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R5 R6 K7 ["useCallback"]
       38 NEWCLOSURE                       R6 P1
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R0
       41 NEWTABLE                         R7 0 2
       43 MOVE                             R8 R3
       44 GETTABLEKS                       R9 R0 K8 ["OnChanged"]
       46 SETLIST                          R7 R8 2 [1]
       48 CALL                             R5 2 1
       49 GETUPVAL                         R7 4
       50 GETTABLEKS                       R6 R7 K9 ["createNextOrder"]
       52 CALL                             R6 0 1
       53 GETUPVAL                         R8 1
       54 GETTABLEKS                       R7 R8 K10 ["createElement"]
       56 GETUPVAL                         R9 5
       57 GETTABLEKS                       R8 R9 K11 ["View"]
       59 DUPTABLE                         R9 K14 [{"tag", "LayoutOrder"}]
       60 LOADK                            R10 K15 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       61 SETTABLEKS                       R10 R9 K12 ["tag"]
       63 GETTABLEKS                       R10 R0 K13 ["LayoutOrder"]
       65 SETTABLEKS                       R10 R9 K13 ["LayoutOrder"]
       67 DUPTABLE                         R10 K19 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
       68 GETUPVAL                         R12 1
       69 GETTABLEKS                       R11 R12 K10 ["createElement"]
       71 GETUPVAL                         R13 5
       72 GETTABLEKS                       R12 R13 K20 ["Text"]
       74 DUPTABLE                         R13 K21 [{"tag", "Text", "LayoutOrder"}]
       75 LOADK                            R14 K22 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
       76 SETTABLEKS                       R14 R13 K12 ["tag"]
       78 GETTABLEKS                       R14 R0 K23 ["Label"]
       80 SETTABLEKS                       R14 R13 K20 ["Text"]
       82 MOVE                             R14 R6
       83 CALL                             R14 0 1
       84 SETTABLEKS                       R14 R13 K13 ["LayoutOrder"]
       86 CALL                             R11 2 1
       87 SETTABLEKS                       R11 R10 K16 ["CompositorNodeInputLabel"]
       89 GETUPVAL                         R12 1
       90 GETTABLEKS                       R11 R12 K10 ["createElement"]
       92 GETUPVAL                         R14 5
       93 GETTABLEKS                       R13 R14 K24 ["Dropdown"]
       95 GETTABLEKS                       R12 R13 K25 ["Root"]
       97 DUPTABLE                         R13 K33 [{"size", "width", "label", "items", "value", "onItemChanged", "disabled", "LayoutOrder"}]
       98 GETUPVAL                         R17 5
       99 GETTABLEKS                       R16 R17 K34 ["Enums"]
      101 GETTABLEKS                       R15 R16 K35 ["InputSize"]
      103 GETTABLEKS                       R14 R15 K36 ["XSmall"]
      105 SETTABLEKS                       R14 R13 K26 ["size"]
      107 GETIMPORT                        R14 K39 [UDim.new]
      109 LOADN                            R15 0
      110 LOADN                            R16 90
      111 CALL                             R14 2 1
      112 SETTABLEKS                       R14 R13 K27 ["width"]
      114 LOADK                            R14 K40 [""]
      115 SETTABLEKS                       R14 R13 K28 ["label"]
      117 SETTABLEKS                       R4 R13 K29 ["items"]
      119 GETTABLEKS                       R14 R0 K41 ["Value"]
      121 SETTABLEKS                       R14 R13 K30 ["value"]
      123 SETTABLEKS                       R5 R13 K31 ["onItemChanged"]
      125 LOADB                            R14 0
      126 LENGTH                           R15 R4
      127 JUMPIFNOTEQKN                    R15 K42 [1] ; [+8]
      129 GETTABLEN                        R16 R4 1
      130 GETTABLEKS                       R15 R16 K43 ["id"]
      132 JUMPIFEQKS                       R15 K40 [""] ; [+2]
      134 LOADB                            R14 0 +1
      135 LOADB                            R14 1
      136 SETTABLEKS                       R14 R13 K32 ["disabled"]
      138 MOVE                             R14 R6
      139 CALL                             R14 0 1
      140 SETTABLEKS                       R14 R13 K13 ["LayoutOrder"]
      142 CALL                             R11 2 1
      143 SETTABLEKS                       R11 R10 K17 ["Input"]
      145 GETUPVAL                         R12 1
      146 GETTABLEKS                       R11 R12 K10 ["createElement"]
      148 LOADK                            R12 K44 ["Folder"]
      149 NEWTABLE                         R13 0 0
      151 GETTABLEKS                       R14 R0 K45 ["children"]
      153 CALL                             R11 3 1
      154 SETTABLEKS                       R11 R10 K18 ["PinChildren"]
      156 CALL                             R7 3 -1
      157 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Contexts"]
       25 GETTABLEKS                       R4 R5 K10 ["MaskEditorContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K9 ["Contexts"]
       32 GETTABLEKS                       R5 R6 K11 ["MaskEditorVisibilityContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R7 K12 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K6 ["Parent"]
       46 GETTABLEKS                       R7 R8 K13 ["ReactUtils"]
       48 CALL                             R6 1 1
       49 DUPCLOSURE                       R7 K14 [PROTO_3]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R1
       56 RETURN                           R7 1
