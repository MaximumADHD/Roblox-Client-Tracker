PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setSelectedMaskId"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["maskId"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useCallback"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R4 0 2
       15 GETTABLEKS                       R5 R0 K3 ["maskId"]
       17 GETTABLEKS                       R6 R1 K4 ["setSelectedMaskId"]
       19 SETLIST                          R4 R5 2 [1]
       21 CALL                             R2 2 1
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K5 ["createElement"]
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R4 R4 K6 ["View"]
       28 DUPTABLE                         R5 K10 [{"LayoutOrder", "onActivated", "tag"}]
       29 GETTABLEKS                       R6 R0 K11 ["layoutOrder"]
       31 SETTABLEKS                       R6 R5 K7 ["LayoutOrder"]
       33 SETTABLEKS                       R2 R5 K8 ["onActivated"]
       35 NEWTABLE                         R6 4 0
       37 LOADB                            R7 1
       38 SETTABLEKS                       R7 R6 K12 ["size-full-600 auto-x padding-x-small padding-y-xxsmall"]
       40 GETTABLEKS                       R8 R1 K13 ["selectedMaskId"]
       42 GETTABLEKS                       R9 R0 K3 ["maskId"]
       44 JUMPIFEQ                         R8 R9 ; [+2]
       46 LOADB                            R7 0 +1
       47 LOADB                            R7 1
       48 SETTABLEKS                       R7 R6 K14 ["bg-system-emphasis"]
       50 GETTABLEKS                       R8 R1 K13 ["selectedMaskId"]
       52 GETTABLEKS                       R9 R0 K3 ["maskId"]
       54 JUMPIFNOTEQ                      R8 R9 ; [+2]
       56 LOADB                            R7 0 +1
       57 LOADB                            R7 1
       58 SETTABLEKS                       R7 R6 K15 ["bg-surface-300"]
       60 SETTABLEKS                       R6 R5 K9 ["tag"]
       62 DUPTABLE                         R6 K17 [{"Text"}]
       63 GETUPVAL                         R7 0
       64 GETTABLEKS                       R7 R7 K5 ["createElement"]
       66 GETUPVAL                         R8 2
       67 GETTABLEKS                       R8 R8 K16 ["Text"]
       69 DUPTABLE                         R9 K19 [{["Text"], ["tag"] = "size-0-full auto-x text-body-medium text-align-x-left text-align-y-center"}]
       70 GETTABLEKS                       R10 R0 K20 ["maskName"]
       72 SETTABLEKS                       R10 R9 K16 ["Text"]
       74 CALL                             R7 2 1
       75 SETTABLEKS                       R7 R6 K16 ["Text"]
       77 CALL                             R3 3 -1
       78 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["mask"]
        2 GETTABLEKS                       R3 R3 K1 ["name"]
        4 GETTABLEKS                       R4 R1 K0 ["mask"]
        6 GETTABLEKS                       R4 R4 K1 ["name"]
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["createNextOrder"]
       10 CALL                             R2 0 1
       11 NEWTABLE                         R3 0 0
       13 NEWTABLE                         R4 0 0
       15 GETTABLEKS                       R5 R1 K3 ["masks"]
       17 LOADNIL                          R6
       18 LOADNIL                          R7
       19 FORGPREP                         R5
       20 JUMPIFNOTEQKNIL                  R9 ; [+2]
       22 LOADB                            R11 0 +1
       23 LOADB                            R11 1
       24 FASTCALL2K                       ASSERT R11 K4 ; [+4]
       26 LOADK                            R12 K4 ["Luau"]
       27 GETIMPORT                        R10 K6 [assert]
       29 CALL                             R10 2 0
       30 DUPTABLE                         R12 K9 [{"id", "mask"}]
       31 SETTABLEKS                       R8 R12 K7 ["id"]
       33 SETTABLEKS                       R9 R12 K8 ["mask"]
       35 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       37 MOVE                             R11 R4
       38 GETIMPORT                        R10 K12 [table.insert]
       40 CALL                             R10 2 0
       41 FORGLOOP                         R5 2 ; [-22]
       43 GETIMPORT                        R5 K14 [table.sort]
       45 MOVE                             R6 R4
       46 DUPCLOSURE                       R7 K15 [PROTO_2]
       47 CALL                             R5 2 0
       48 MOVE                             R5 R4
       49 LOADNIL                          R6
       50 LOADNIL                          R7
       51 FORGPREP                         R5
       52 GETTABLEKS                       R10 R9 K7 ["id"]
       54 GETUPVAL                         R11 0
       55 GETTABLEKS                       R11 R11 K16 ["createElement"]
       57 GETUPVAL                         R12 3
       58 DUPTABLE                         R13 K20 [{"layoutOrder", "maskId", "maskName"}]
       59 MOVE                             R14 R2
       60 CALL                             R14 0 1
       61 SETTABLEKS                       R14 R13 K17 ["layoutOrder"]
       63 GETTABLEKS                       R14 R9 K7 ["id"]
       65 SETTABLEKS                       R14 R13 K18 ["maskId"]
       67 GETTABLEKS                       R14 R9 K8 ["mask"]
       69 GETTABLEKS                       R14 R14 K21 ["name"]
       71 SETTABLEKS                       R14 R13 K19 ["maskName"]
       73 CALL                             R11 2 1
       74 SETTABLE                         R11 R3 R10
       75 FORGLOOP                         R5 2 ; [-24]
       77 GETUPVAL                         R5 0
       78 GETTABLEKS                       R5 R5 K16 ["createElement"]
       80 GETUPVAL                         R6 4
       81 GETTABLEKS                       R6 R6 K22 ["ScrollView"]
       83 DUPTABLE                         R7 K28 [{["tag"] = "grow size-full-0 bg-surface-300", ["scroll"], ["layout"], ["LayoutOrder"]}]
       84 DUPTABLE                         R8 K32 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
       85 GETIMPORT                        R9 K36 [Enum.AutomaticSize.XY]
       87 SETTABLEKS                       R9 R8 K29 ["AutomaticCanvasSize"]
       89 GETIMPORT                        R9 K39 [UDim2.new]
       91 CALL                             R9 0 1
       92 SETTABLEKS                       R9 R8 K30 ["CanvasSize"]
       94 GETIMPORT                        R9 K40 [Enum.ScrollingDirection.XY]
       96 SETTABLEKS                       R9 R8 K31 ["ScrollingDirection"]
       98 SETTABLEKS                       R8 R7 K25 ["scroll"]
      100 DUPTABLE                         R8 K42 [{"FillDirection"}]
      101 GETIMPORT                        R9 K44 [Enum.FillDirection.Vertical]
      103 SETTABLEKS                       R9 R8 K41 ["FillDirection"]
      105 SETTABLEKS                       R8 R7 K26 ["layout"]
      107 GETTABLEKS                       R8 R0 K17 ["layoutOrder"]
      109 SETTABLEKS                       R8 R7 K27 ["LayoutOrder"]
      111 MOVE                             R8 R3
      112 CALL                             R5 3 -1
      113 RETURN                           R5 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createMaskAsync"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["setSelectedMaskId"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 2
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K2 ["current"]
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 LOADB                            R1 1
        7 SETTABLEKS                       R1 R0 K0 ["current"]
        9 GETIMPORT                        R0 K3 [task.spawn]
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U0
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["deleteMaskAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["selectedMaskId"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K2 ["setSelectedMaskId"]
       10 LOADNIL                          R1
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectedMaskId"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETIMPORT                        R0 K3 [task.spawn]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U0
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_8:
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
       23 GETTABLEKS                       R4 R4 K5 ["useRef"]
       25 LOADB                            R5 0
       26 CALL                             R4 1 1
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K6 ["useCallback"]
       30 NEWCLOSURE                       R6 P0
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 NEWTABLE                         R7 0 2
       36 GETTABLEKS                       R8 R2 K7 ["createMaskAsync"]
       38 GETTABLEKS                       R9 R3 K8 ["setSelectedMaskId"]
       40 SETLIST                          R7 R8 2 [1]
       42 CALL                             R5 2 1
       43 GETUPVAL                         R6 1
       44 GETTABLEKS                       R6 R6 K6 ["useCallback"]
       46 NEWCLOSURE                       R7 P1
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R2
       49 NEWTABLE                         R8 0 3
       51 GETTABLEKS                       R9 R2 K9 ["deleteMaskAsync"]
       53 GETTABLEKS                       R10 R3 K10 ["selectedMaskId"]
       55 GETTABLEKS                       R11 R3 K8 ["setSelectedMaskId"]
       57 SETLIST                          R8 R9 3 [1]
       59 CALL                             R6 2 1
       60 GETUPVAL                         R7 4
       61 GETTABLEKS                       R7 R7 K11 ["createNextOrder"]
       63 CALL                             R7 0 1
       64 GETUPVAL                         R8 1
       65 GETTABLEKS                       R8 R8 K12 ["createElement"]
       67 GETUPVAL                         R9 5
       68 GETTABLEKS                       R9 R9 K13 ["View"]
       70 DUPTABLE                         R10 K17 [{["tag"] = "col shrink size-3000-full", ["LayoutOrder"]}]
       71 GETTABLEKS                       R11 R0 K18 ["layoutOrder"]
       73 SETTABLEKS                       R11 R10 K16 ["LayoutOrder"]
       75 DUPTABLE                         R11 K21 [{"Toolbar", "List"}]
       76 GETUPVAL                         R12 1
       77 GETTABLEKS                       R12 R12 K12 ["createElement"]
       79 GETUPVAL                         R13 5
       80 GETTABLEKS                       R13 R13 K13 ["View"]
       82 DUPTABLE                         R14 K23 [{["tag"] = "row align-y-center size-full-600", ["LayoutOrder"]}]
       83 MOVE                             R15 R7
       84 CALL                             R15 0 1
       85 SETTABLEKS                       R15 R14 K16 ["LayoutOrder"]
       87 DUPTABLE                         R15 K27 [{"MasksLabel", "Delete", "Add"}]
       88 GETUPVAL                         R16 1
       89 GETTABLEKS                       R16 R16 K12 ["createElement"]
       91 GETUPVAL                         R17 5
       92 GETTABLEKS                       R17 R17 K28 ["Text"]
       94 DUPTABLE                         R18 K30 [{["Text"], ["LayoutOrder"], ["tag"] = "grow gap-xsmall size-0-full text-label-small text-align-x-left text-align-y-center content-emphasis"}]
       95 LOADK                            R21 K31 ["Common"]
       96 LOADK                            R22 K32 ["AnimationEditor"]
       97 LOADK                            R23 K33 ["MaskEditorPopup"]
       98 LOADK                            R24 K34 ["Masks"]
       99 NAMECALL                         R19 R1 K35 ["getExternalText"]
      101 CALL                             R19 5 1
      102 SETTABLEKS                       R19 R18 K28 ["Text"]
      104 MOVE                             R19 R7
      105 CALL                             R19 0 1
      106 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      108 CALL                             R16 2 1
      109 SETTABLEKS                       R16 R15 K24 ["MasksLabel"]
      111 GETUPVAL                         R16 1
      112 GETTABLEKS                       R16 R16 K12 ["createElement"]
      114 GETUPVAL                         R17 5
      115 GETTABLEKS                       R17 R17 K36 ["IconButton"]
      117 DUPTABLE                         R18 K43 [{["size"], ["icon"], ["LayoutOrder"], ["isDisabled"], ["onActivated"], ["testId"] = "MaskEditor-Delete"}]
      118 GETUPVAL                         R19 5
      119 GETTABLEKS                       R19 R19 K44 ["Enums"]
      121 GETTABLEKS                       R19 R19 K45 ["InputSize"]
      123 GETTABLEKS                       R19 R19 K46 ["XSmall"]
      125 SETTABLEKS                       R19 R18 K37 ["size"]
      127 GETUPVAL                         R19 5
      128 GETTABLEKS                       R19 R19 K44 ["Enums"]
      130 GETTABLEKS                       R19 R19 K47 ["IconName"]
      132 GETTABLEKS                       R19 R19 K48 ["MinusSmall"]
      134 SETTABLEKS                       R19 R18 K38 ["icon"]
      136 MOVE                             R19 R7
      137 CALL                             R19 0 1
      138 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      140 GETTABLEKS                       R20 R3 K10 ["selectedMaskId"]
      142 JUMPIFEQKNIL                     R20 ; [+2]
      144 LOADB                            R19 0 +1
      145 LOADB                            R19 1
      146 SETTABLEKS                       R19 R18 K39 ["isDisabled"]
      148 SETTABLEKS                       R6 R18 K40 ["onActivated"]
      150 CALL                             R16 2 1
      151 SETTABLEKS                       R16 R15 K25 ["Delete"]
      153 GETUPVAL                         R16 1
      154 GETTABLEKS                       R16 R16 K12 ["createElement"]
      156 GETUPVAL                         R17 5
      157 GETTABLEKS                       R17 R17 K36 ["IconButton"]
      159 DUPTABLE                         R18 K50 [{["size"], ["icon"], ["LayoutOrder"], ["onActivated"], ["testId"] = "MaskEditor-Add"}]
      160 GETUPVAL                         R19 5
      161 GETTABLEKS                       R19 R19 K44 ["Enums"]
      163 GETTABLEKS                       R19 R19 K45 ["InputSize"]
      165 GETTABLEKS                       R19 R19 K46 ["XSmall"]
      167 SETTABLEKS                       R19 R18 K37 ["size"]
      169 GETUPVAL                         R19 5
      170 GETTABLEKS                       R19 R19 K44 ["Enums"]
      172 GETTABLEKS                       R19 R19 K47 ["IconName"]
      174 GETTABLEKS                       R19 R19 K51 ["PlusSmall"]
      176 SETTABLEKS                       R19 R18 K38 ["icon"]
      178 MOVE                             R19 R7
      179 CALL                             R19 0 1
      180 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      182 SETTABLEKS                       R5 R18 K40 ["onActivated"]
      184 CALL                             R16 2 1
      185 SETTABLEKS                       R16 R15 K26 ["Add"]
      187 CALL                             R12 3 1
      188 SETTABLEKS                       R12 R11 K19 ["Toolbar"]
      190 GETUPVAL                         R12 1
      191 GETTABLEKS                       R12 R12 K12 ["createElement"]
      193 GETUPVAL                         R13 6
      194 DUPTABLE                         R14 K52 [{"layoutOrder"}]
      195 MOVE                             R15 R7
      196 CALL                             R15 0 1
      197 SETTABLEKS                       R15 R14 K18 ["layoutOrder"]
      199 CALL                             R12 2 1
      200 SETTABLEKS                       R12 R11 K20 ["List"]
      202 CALL                             R8 3 -1
      203 RETURN                           R8 -1

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
       39 GETTABLEKS                       R6 R6 K12 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Parent"]
       46 GETTABLEKS                       R7 R7 K13 ["ReactUtils"]
       48 CALL                             R6 1 1
       49 DUPCLOSURE                       R7 K14 [PROTO_1]
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R1
       53 DUPCLOSURE                       R8 K15 [PROTO_3]
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R1
       59 DUPCLOSURE                       R9 K16 [PROTO_8]
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R8
       67 RETURN                           R9 1
