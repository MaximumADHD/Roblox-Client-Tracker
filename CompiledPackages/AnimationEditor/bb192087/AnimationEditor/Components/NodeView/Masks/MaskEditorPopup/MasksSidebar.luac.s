PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setSelectedMaskId"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["maskId"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 2
        7 GETTABLEKS                       R4 R0 K1 ["setSelectedMaskId"]
        9 GETTABLEKS                       R5 R0 K2 ["maskId"]
       11 SETLIST                          R3 R4 2 [1]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K3 ["createElement"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K4 ["View"]
       20 DUPTABLE                         R4 K9 [{"LayoutOrder", "onActivated", "tag", "backgroundStyle"}]
       21 GETTABLEKS                       R5 R0 K10 ["layoutOrder"]
       23 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       25 SETTABLEKS                       R1 R4 K6 ["onActivated"]
       27 LOADK                            R5 K11 ["size-full-600 auto-x bg-surface-300 padding-x-small padding-y-xxsmall"]
       28 SETTABLEKS                       R5 R4 K7 ["tag"]
       30 GETTABLEKS                       R6 R0 K12 ["selectedMaskId"]
       32 GETTABLEKS                       R7 R0 K2 ["maskId"]
       34 JUMPIFNOTEQ                      R6 R7 ; [+12]
       36 DUPTABLE                         R5 K15 [{"Color3", "Transparency"}]
       37 GETIMPORT                        R6 K17 [Color3.fromHex]
       39 LOADK                            R7 K18 ["2A3B77"]
       40 CALL                             R6 1 1
       41 SETTABLEKS                       R6 R5 K13 ["Color3"]
       43 LOADN                            R6 0
       44 SETTABLEKS                       R6 R5 K14 ["Transparency"]
       46 JUMP                             ; [+1]
       47 LOADNIL                          R5
       48 SETTABLEKS                       R5 R4 K8 ["backgroundStyle"]
       50 DUPTABLE                         R5 K20 [{"Text"}]
       51 GETUPVAL                         R6 0
       52 GETTABLEKS                       R6 R6 K3 ["createElement"]
       54 GETUPVAL                         R7 1
       55 GETTABLEKS                       R7 R7 K19 ["Text"]
       57 DUPTABLE                         R8 K21 [{"Text", "tag"}]
       58 GETTABLEKS                       R9 R0 K22 ["maskName"]
       60 SETTABLEKS                       R9 R8 K19 ["Text"]
       62 NEWTABLE                         R9 4 0
       64 LOADB                            R10 1
       65 SETTABLEKS                       R10 R9 K23 ["text-align-x-left text-align-y-center text-body-medium size-0-full auto-x"]
       67 GETTABLEKS                       R11 R0 K12 ["selectedMaskId"]
       69 GETTABLEKS                       R12 R0 K2 ["maskId"]
       71 JUMPIFNOTEQ                      R11 R12 ; [+2]
       73 LOADB                            R10 0 +1
       74 LOADB                            R10 1
       75 SETTABLEKS                       R10 R9 K24 ["content-muted"]
       77 GETTABLEKS                       R11 R0 K12 ["selectedMaskId"]
       79 GETTABLEKS                       R12 R0 K2 ["maskId"]
       81 JUMPIFEQ                         R11 R12 ; [+2]
       83 LOADB                            R10 0 +1
       84 LOADB                            R10 1
       85 SETTABLEKS                       R10 R9 K25 ["content-inverse-default"]
       87 SETTABLEKS                       R9 R8 K7 ["tag"]
       89 CALL                             R6 2 1
       90 SETTABLEKS                       R6 R5 K19 ["Text"]
       92 CALL                             R2 3 -1
       93 RETURN                           R2 -1

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
       58 DUPTABLE                         R13 K22 [{"layoutOrder", "maskId", "maskName", "selectedMaskId", "setSelectedMaskId"}]
       59 MOVE                             R14 R2
       60 CALL                             R14 0 1
       61 SETTABLEKS                       R14 R13 K17 ["layoutOrder"]
       63 GETTABLEKS                       R14 R9 K7 ["id"]
       65 SETTABLEKS                       R14 R13 K18 ["maskId"]
       67 GETTABLEKS                       R14 R9 K8 ["mask"]
       69 GETTABLEKS                       R14 R14 K23 ["name"]
       71 SETTABLEKS                       R14 R13 K19 ["maskName"]
       73 GETTABLEKS                       R14 R0 K20 ["selectedMaskId"]
       75 SETTABLEKS                       R14 R13 K20 ["selectedMaskId"]
       77 GETTABLEKS                       R14 R0 K21 ["setSelectedMaskId"]
       79 SETTABLEKS                       R14 R13 K21 ["setSelectedMaskId"]
       81 CALL                             R11 2 1
       82 SETTABLE                         R11 R3 R10
       83 FORGLOOP                         R5 2 ; [-32]
       85 GETUPVAL                         R5 0
       86 GETTABLEKS                       R5 R5 K16 ["createElement"]
       88 GETUPVAL                         R6 4
       89 GETTABLEKS                       R6 R6 K24 ["ScrollView"]
       91 DUPTABLE                         R7 K29 [{"tag", "scroll", "layout", "LayoutOrder"}]
       92 LOADK                            R8 K30 ["size-full-0 grow bg-surface-300"]
       93 SETTABLEKS                       R8 R7 K25 ["tag"]
       95 DUPTABLE                         R8 K34 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
       96 GETIMPORT                        R9 K38 [Enum.AutomaticSize.XY]
       98 SETTABLEKS                       R9 R8 K31 ["AutomaticCanvasSize"]
      100 GETIMPORT                        R9 K41 [UDim2.new]
      102 CALL                             R9 0 1
      103 SETTABLEKS                       R9 R8 K32 ["CanvasSize"]
      105 GETIMPORT                        R9 K42 [Enum.ScrollingDirection.XY]
      107 SETTABLEKS                       R9 R8 K33 ["ScrollingDirection"]
      109 SETTABLEKS                       R8 R7 K26 ["scroll"]
      111 DUPTABLE                         R8 K44 [{"FillDirection"}]
      112 GETIMPORT                        R9 K46 [Enum.FillDirection.Vertical]
      114 SETTABLEKS                       R9 R8 K43 ["FillDirection"]
      116 SETTABLEKS                       R8 R7 K27 ["layout"]
      118 GETTABLEKS                       R8 R0 K17 ["layoutOrder"]
      120 SETTABLEKS                       R8 R7 K28 ["LayoutOrder"]
      122 MOVE                             R8 R3
      123 CALL                             R5 3 -1
      124 RETURN                           R5 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setSelectedMaskId"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["createMaskAsync"]
        6 CALL                             R1 0 -1
        7 CALL                             R0 -1 0
        8 GETUPVAL                         R0 2
        9 LOADB                            R1 0
       10 SETTABLEKS                       R1 R0 K2 ["current"]
       12 RETURN                           R0 0

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
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["selectedMaskId"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        9 LOADK                            R2 K1 ["Deleting with no selected mask"]
       10 GETIMPORT                        R0 K3 [assert]
       12 CALL                             R0 2 0
       13 GETIMPORT                        R0 K6 [task.spawn]
       15 NEWCLOSURE                       R1 P0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U0
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

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
       16 GETTABLEKS                       R3 R3 K5 ["useRef"]
       18 LOADB                            R4 0
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K6 ["useCallback"]
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R2
       27 NEWTABLE                         R6 0 2
       29 GETTABLEKS                       R7 R2 K7 ["createMaskAsync"]
       31 GETTABLEKS                       R8 R0 K8 ["setSelectedMaskId"]
       33 SETLIST                          R6 R7 2 [1]
       35 CALL                             R4 2 1
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K6 ["useCallback"]
       39 NEWCLOSURE                       R6 P1
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R2
       42 NEWTABLE                         R7 0 2
       44 GETTABLEKS                       R8 R2 K9 ["deleteMaskAsync"]
       46 GETTABLEKS                       R9 R0 K10 ["selectedMaskId"]
       48 SETLIST                          R7 R8 2 [1]
       50 CALL                             R5 2 1
       51 GETUPVAL                         R6 3
       52 GETTABLEKS                       R6 R6 K11 ["createNextOrder"]
       54 CALL                             R6 0 1
       55 GETUPVAL                         R7 1
       56 GETTABLEKS                       R7 R7 K12 ["createElement"]
       58 GETUPVAL                         R8 4
       59 GETTABLEKS                       R8 R8 K13 ["View"]
       61 DUPTABLE                         R9 K16 [{"tag", "LayoutOrder"}]
       62 LOADK                            R10 K17 ["size-3000-full col shrink"]
       63 SETTABLEKS                       R10 R9 K14 ["tag"]
       65 GETTABLEKS                       R10 R0 K18 ["layoutOrder"]
       67 SETTABLEKS                       R10 R9 K15 ["LayoutOrder"]
       69 DUPTABLE                         R10 K21 [{"Toolbar", "List"}]
       70 GETUPVAL                         R11 1
       71 GETTABLEKS                       R11 R11 K12 ["createElement"]
       73 GETUPVAL                         R12 4
       74 GETTABLEKS                       R12 R12 K13 ["View"]
       76 DUPTABLE                         R13 K16 [{"tag", "LayoutOrder"}]
       77 LOADK                            R14 K22 ["size-full-600 align-y-center row"]
       78 SETTABLEKS                       R14 R13 K14 ["tag"]
       80 MOVE                             R14 R6
       81 CALL                             R14 0 1
       82 SETTABLEKS                       R14 R13 K15 ["LayoutOrder"]
       84 DUPTABLE                         R14 K26 [{"MasksLabel", "Delete", "Add"}]
       85 GETUPVAL                         R15 1
       86 GETTABLEKS                       R15 R15 K12 ["createElement"]
       88 GETUPVAL                         R16 4
       89 GETTABLEKS                       R16 R16 K27 ["Text"]
       91 DUPTABLE                         R17 K28 [{"Text", "LayoutOrder", "tag"}]
       92 LOADK                            R20 K29 ["Common"]
       93 LOADK                            R21 K30 ["AnimationEditor"]
       94 LOADK                            R22 K31 ["MaskEditorPopup"]
       95 LOADK                            R23 K32 ["Masks"]
       96 NAMECALL                         R18 R1 K33 ["getExternalText"]
       98 CALL                             R18 5 1
       99 SETTABLEKS                       R18 R17 K27 ["Text"]
      101 MOVE                             R18 R6
      102 CALL                             R18 0 1
      103 SETTABLEKS                       R18 R17 K15 ["LayoutOrder"]
      105 LOADK                            R18 K34 ["text-align-x-left text-align-y-center text-label-small size-0-full gap-xsmall content-emphasis grow"]
      106 SETTABLEKS                       R18 R17 K14 ["tag"]
      108 CALL                             R15 2 1
      109 SETTABLEKS                       R15 R14 K23 ["MasksLabel"]
      111 GETUPVAL                         R15 1
      112 GETTABLEKS                       R15 R15 K12 ["createElement"]
      114 GETUPVAL                         R16 4
      115 GETTABLEKS                       R16 R16 K35 ["IconButton"]
      117 DUPTABLE                         R17 K41 [{"size", "icon", "LayoutOrder", "isDisabled", "onActivated", "testId"}]
      118 GETUPVAL                         R18 4
      119 GETTABLEKS                       R18 R18 K42 ["Enums"]
      121 GETTABLEKS                       R18 R18 K43 ["InputSize"]
      123 GETTABLEKS                       R18 R18 K44 ["XSmall"]
      125 SETTABLEKS                       R18 R17 K36 ["size"]
      127 GETUPVAL                         R18 4
      128 GETTABLEKS                       R18 R18 K42 ["Enums"]
      130 GETTABLEKS                       R18 R18 K45 ["IconName"]
      132 GETTABLEKS                       R18 R18 K46 ["MinusSmall"]
      134 SETTABLEKS                       R18 R17 K37 ["icon"]
      136 MOVE                             R18 R6
      137 CALL                             R18 0 1
      138 SETTABLEKS                       R18 R17 K15 ["LayoutOrder"]
      140 GETTABLEKS                       R19 R0 K10 ["selectedMaskId"]
      142 JUMPIFEQKNIL                     R19 ; [+2]
      144 LOADB                            R18 0 +1
      145 LOADB                            R18 1
      146 SETTABLEKS                       R18 R17 K38 ["isDisabled"]
      148 SETTABLEKS                       R5 R17 K39 ["onActivated"]
      150 LOADK                            R18 K47 ["MaskEditor-Delete"]
      151 SETTABLEKS                       R18 R17 K40 ["testId"]
      153 CALL                             R15 2 1
      154 SETTABLEKS                       R15 R14 K24 ["Delete"]
      156 GETUPVAL                         R15 1
      157 GETTABLEKS                       R15 R15 K12 ["createElement"]
      159 GETUPVAL                         R16 4
      160 GETTABLEKS                       R16 R16 K35 ["IconButton"]
      162 DUPTABLE                         R17 K48 [{"size", "icon", "LayoutOrder", "onActivated", "testId"}]
      163 GETUPVAL                         R18 4
      164 GETTABLEKS                       R18 R18 K42 ["Enums"]
      166 GETTABLEKS                       R18 R18 K43 ["InputSize"]
      168 GETTABLEKS                       R18 R18 K49 ["Small"]
      170 SETTABLEKS                       R18 R17 K36 ["size"]
      172 GETUPVAL                         R18 4
      173 GETTABLEKS                       R18 R18 K42 ["Enums"]
      175 GETTABLEKS                       R18 R18 K45 ["IconName"]
      177 GETTABLEKS                       R18 R18 K50 ["PlusSmall"]
      179 SETTABLEKS                       R18 R17 K37 ["icon"]
      181 MOVE                             R18 R6
      182 CALL                             R18 0 1
      183 SETTABLEKS                       R18 R17 K15 ["LayoutOrder"]
      185 SETTABLEKS                       R4 R17 K39 ["onActivated"]
      187 LOADK                            R18 K51 ["MaskEditor-Add"]
      188 SETTABLEKS                       R18 R17 K40 ["testId"]
      190 CALL                             R15 2 1
      191 SETTABLEKS                       R15 R14 K25 ["Add"]
      193 CALL                             R11 3 1
      194 SETTABLEKS                       R11 R10 K19 ["Toolbar"]
      196 GETUPVAL                         R11 1
      197 GETTABLEKS                       R11 R11 K12 ["createElement"]
      199 GETUPVAL                         R12 5
      200 DUPTABLE                         R13 K52 [{"layoutOrder", "selectedMaskId", "setSelectedMaskId"}]
      201 MOVE                             R14 R6
      202 CALL                             R14 0 1
      203 SETTABLEKS                       R14 R13 K18 ["layoutOrder"]
      205 GETTABLEKS                       R14 R0 K10 ["selectedMaskId"]
      207 SETTABLEKS                       R14 R13 K10 ["selectedMaskId"]
      209 GETTABLEKS                       R14 R0 K8 ["setSelectedMaskId"]
      211 SETTABLEKS                       R14 R13 K8 ["setSelectedMaskId"]
      213 CALL                             R11 2 1
      214 SETTABLEKS                       R11 R10 K20 ["List"]
      216 CALL                             R7 3 -1
      217 RETURN                           R7 -1

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
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K13 [PROTO_1]
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R1
       45 DUPCLOSURE                       R7 K14 [PROTO_3]
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R1
       51 DUPCLOSURE                       R8 K15 [PROTO_8]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R7
       58 RETURN                           R8 1
