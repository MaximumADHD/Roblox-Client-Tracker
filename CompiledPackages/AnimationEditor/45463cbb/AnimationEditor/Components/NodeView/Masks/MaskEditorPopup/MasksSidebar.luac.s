PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+8]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["setSelectedMaskId"]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["maskId"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K0 ["setSelectedMaskId"]
       14 JUMPIFNOT                        R0 ; [+7]
       15 GETUPVAL                         R0 2
       16 GETTABLEKS                       R0 R0 K0 ["setSelectedMaskId"]
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K1 ["maskId"]
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useCallback"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R0
       14 NEWTABLE                         R4 0 3
       16 GETTABLEKS                       R5 R0 K3 ["setSelectedMaskId"]
       18 GETTABLEKS                       R6 R0 K4 ["maskId"]
       20 GETTABLEKS                       R7 R1 K3 ["setSelectedMaskId"]
       22 SETLIST                          R4 R5 3 [1]
       24 CALL                             R2 2 1
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K5 ["createElement"]
       28 GETUPVAL                         R4 3
       29 GETTABLEKS                       R4 R4 K6 ["View"]
       31 DUPTABLE                         R5 K11 [{"LayoutOrder", "onActivated", "tag", "backgroundStyle"}]
       32 GETTABLEKS                       R6 R0 K12 ["layoutOrder"]
       34 SETTABLEKS                       R6 R5 K7 ["LayoutOrder"]
       36 SETTABLEKS                       R2 R5 K8 ["onActivated"]
       38 GETUPVAL                         R7 2
       39 CALL                             R7 0 1
       40 JUMPIFNOT                        R7 ; [+26]
       41 NEWTABLE                         R6 4 0
       43 LOADB                            R7 1
       44 SETTABLEKS                       R7 R6 K13 ["size-full-600 auto-x padding-x-small padding-y-xxsmall"]
       46 GETTABLEKS                       R8 R1 K14 ["selectedMaskId"]
       48 GETTABLEKS                       R9 R0 K4 ["maskId"]
       50 JUMPIFEQ                         R8 R9 ; [+2]
       52 LOADB                            R7 0 +1
       53 LOADB                            R7 1
       54 SETTABLEKS                       R7 R6 K15 ["bg-system-emphasis"]
       56 GETTABLEKS                       R8 R1 K14 ["selectedMaskId"]
       58 GETTABLEKS                       R9 R0 K4 ["maskId"]
       60 JUMPIFNOTEQ                      R8 R9 ; [+2]
       62 LOADB                            R7 0 +1
       63 LOADB                            R7 1
       64 SETTABLEKS                       R7 R6 K16 ["bg-surface-300"]
       66 JUMP                             ; [+1]
       67 LOADK                            R6 K17 ["size-full-600 auto-x bg-surface-300 padding-x-small padding-y-xxsmall"]
       68 SETTABLEKS                       R6 R5 K9 ["tag"]
       70 GETUPVAL                         R7 2
       71 CALL                             R7 0 1
       72 JUMPIF                           R7 ; [+17]
       73 GETTABLEKS                       R7 R0 K14 ["selectedMaskId"]
       75 GETTABLEKS                       R8 R0 K4 ["maskId"]
       77 JUMPIFNOTEQ                      R7 R8 ; [+12]
       79 DUPTABLE                         R6 K20 [{"Color3", "Transparency"}]
       80 GETIMPORT                        R7 K22 [Color3.fromHex]
       82 LOADK                            R8 K23 ["2A3B77"]
       83 CALL                             R7 1 1
       84 SETTABLEKS                       R7 R6 K18 ["Color3"]
       86 LOADN                            R7 0
       87 SETTABLEKS                       R7 R6 K19 ["Transparency"]
       89 JUMP                             ; [+1]
       90 LOADNIL                          R6
       91 SETTABLEKS                       R6 R5 K10 ["backgroundStyle"]
       93 DUPTABLE                         R6 K25 [{"Text"}]
       94 GETUPVAL                         R7 0
       95 GETTABLEKS                       R7 R7 K5 ["createElement"]
       97 GETUPVAL                         R8 3
       98 GETTABLEKS                       R8 R8 K24 ["Text"]
      100 DUPTABLE                         R9 K26 [{"Text", "tag"}]
      101 GETTABLEKS                       R10 R0 K27 ["maskName"]
      103 SETTABLEKS                       R10 R9 K24 ["Text"]
      105 NEWTABLE                         R10 4 0
      107 LOADB                            R11 1
      108 SETTABLEKS                       R11 R10 K28 ["text-align-x-left text-align-y-center text-body-medium size-0-full auto-x"]
      110 GETUPVAL                         R12 2
      111 CALL                             R12 0 1
      112 JUMPIF                           R12 ; [+9]
      113 GETTABLEKS                       R12 R0 K14 ["selectedMaskId"]
      115 GETTABLEKS                       R13 R0 K4 ["maskId"]
      117 JUMPIFNOTEQ                      R12 R13 ; [+2]
      119 LOADB                            R11 0 +1
      120 LOADB                            R11 1
      121 JUMP                             ; [+1]
      122 LOADNIL                          R11
      123 SETTABLEKS                       R11 R10 K29 ["content-muted"]
      125 GETUPVAL                         R12 2
      126 CALL                             R12 0 1
      127 JUMPIF                           R12 ; [+9]
      128 GETTABLEKS                       R12 R0 K14 ["selectedMaskId"]
      130 GETTABLEKS                       R13 R0 K4 ["maskId"]
      132 JUMPIFEQ                         R12 R13 ; [+2]
      134 LOADB                            R11 0 +1
      135 LOADB                            R11 1
      136 JUMP                             ; [+1]
      137 LOADNIL                          R11
      138 SETTABLEKS                       R11 R10 K30 ["content-inverse-default"]
      140 SETTABLEKS                       R10 R9 K9 ["tag"]
      142 CALL                             R7 2 1
      143 SETTABLEKS                       R7 R6 K24 ["Text"]
      145 CALL                             R3 3 -1
      146 RETURN                           R3 -1

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
       73 GETUPVAL                         R15 4
       74 CALL                             R15 0 1
       75 JUMPIF                           R15 ; [+3]
       76 GETTABLEKS                       R14 R0 K20 ["selectedMaskId"]
       78 JUMP                             ; [+1]
       79 LOADNIL                          R14
       80 SETTABLEKS                       R14 R13 K20 ["selectedMaskId"]
       82 GETUPVAL                         R15 4
       83 CALL                             R15 0 1
       84 JUMPIF                           R15 ; [+3]
       85 GETTABLEKS                       R14 R0 K21 ["setSelectedMaskId"]
       87 JUMP                             ; [+1]
       88 LOADNIL                          R14
       89 SETTABLEKS                       R14 R13 K21 ["setSelectedMaskId"]
       91 CALL                             R11 2 1
       92 SETTABLE                         R11 R3 R10
       93 FORGLOOP                         R5 2 ; [-42]
       95 GETUPVAL                         R5 0
       96 GETTABLEKS                       R5 R5 K16 ["createElement"]
       98 GETUPVAL                         R6 5
       99 GETTABLEKS                       R6 R6 K24 ["ScrollView"]
      101 DUPTABLE                         R7 K29 [{"tag", "scroll", "layout", "LayoutOrder"}]
      102 LOADK                            R8 K30 ["size-full-0 grow bg-surface-300"]
      103 SETTABLEKS                       R8 R7 K25 ["tag"]
      105 DUPTABLE                         R8 K34 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      106 GETIMPORT                        R9 K38 [Enum.AutomaticSize.XY]
      108 SETTABLEKS                       R9 R8 K31 ["AutomaticCanvasSize"]
      110 GETIMPORT                        R9 K41 [UDim2.new]
      112 CALL                             R9 0 1
      113 SETTABLEKS                       R9 R8 K32 ["CanvasSize"]
      115 GETIMPORT                        R9 K42 [Enum.ScrollingDirection.XY]
      117 SETTABLEKS                       R9 R8 K33 ["ScrollingDirection"]
      119 SETTABLEKS                       R8 R7 K26 ["scroll"]
      121 DUPTABLE                         R8 K44 [{"FillDirection"}]
      122 GETIMPORT                        R9 K46 [Enum.FillDirection.Vertical]
      124 SETTABLEKS                       R9 R8 K43 ["FillDirection"]
      126 SETTABLEKS                       R8 R7 K27 ["layout"]
      128 GETTABLEKS                       R8 R0 K17 ["layoutOrder"]
      130 SETTABLEKS                       R8 R7 K28 ["LayoutOrder"]
      132 MOVE                             R8 R3
      133 CALL                             R5 3 -1
      134 RETURN                           R5 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+10]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["createMaskAsync"]
        6 CALL                             R0 0 1
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K1 ["setSelectedMaskId"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 JUMP                             ; [+12]
       13 GETUPVAL                         R0 3
       14 GETTABLEKS                       R0 R0 K1 ["setSelectedMaskId"]
       16 JUMPIFNOT                        R0 ; [+8]
       17 GETUPVAL                         R0 3
       18 GETTABLEKS                       R0 R0 K1 ["setSelectedMaskId"]
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K0 ["createMaskAsync"]
       23 CALL                             R1 0 -1
       24 CALL                             R0 -1 0
       25 GETUPVAL                         R0 4
       26 LOADB                            R1 0
       27 SETTABLEKS                       R1 R0 K2 ["current"]
       29 RETURN                           R0 0

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
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U0
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

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
        1 GETTABLEKS                       R0 R0 K0 ["deleteMaskAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["selectedMaskId"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+13]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["selectedMaskId"]
        6 JUMPIFNOTEQKNIL                  R0 ; [+2]
        8 RETURN                           R0 0
        9 GETIMPORT                        R0 K3 [task.spawn]
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U1
       14 CALL                             R0 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R2 R2 K0 ["selectedMaskId"]
       19 JUMPIFNOTEQKNIL                  R2 ; [+2]
       21 LOADB                            R1 0 +1
       22 LOADB                            R1 1
       23 FASTCALL2K                       ASSERT R1 K4 ; [+4]
       25 LOADK                            R2 K4 ["Deleting with no selected mask"]
       26 GETIMPORT                        R0 K6 [assert]
       28 CALL                             R0 2 0
       29 GETIMPORT                        R0 K3 [task.spawn]
       31 NEWCLOSURE                       R1 P1
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          UPVAL U3
       34 CALL                             R0 1 0
       35 RETURN                           R0 0

PROTO_9:
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
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R0
       36 NEWTABLE                         R7 0 3
       38 GETTABLEKS                       R8 R2 K7 ["createMaskAsync"]
       40 GETTABLEKS                       R9 R0 K8 ["setSelectedMaskId"]
       42 GETTABLEKS                       R10 R3 K8 ["setSelectedMaskId"]
       44 SETLIST                          R7 R8 3 [1]
       46 CALL                             R5 2 1
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R6 R6 K6 ["useCallback"]
       50 NEWCLOSURE                       R7 P1
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R0
       55 NEWTABLE                         R8 0 4
       57 GETTABLEKS                       R9 R2 K9 ["deleteMaskAsync"]
       59 GETTABLEKS                       R10 R0 K10 ["selectedMaskId"]
       61 GETTABLEKS                       R11 R3 K10 ["selectedMaskId"]
       63 GETTABLEKS                       R12 R3 K8 ["setSelectedMaskId"]
       65 SETLIST                          R8 R9 4 [1]
       67 CALL                             R6 2 1
       68 GETUPVAL                         R7 5
       69 GETTABLEKS                       R7 R7 K11 ["createNextOrder"]
       71 CALL                             R7 0 1
       72 GETUPVAL                         R8 1
       73 GETTABLEKS                       R8 R8 K12 ["createElement"]
       75 GETUPVAL                         R9 6
       76 GETTABLEKS                       R9 R9 K13 ["View"]
       78 DUPTABLE                         R10 K16 [{"tag", "LayoutOrder"}]
       79 LOADK                            R11 K17 ["size-3000-full col shrink"]
       80 SETTABLEKS                       R11 R10 K14 ["tag"]
       82 GETTABLEKS                       R11 R0 K18 ["layoutOrder"]
       84 SETTABLEKS                       R11 R10 K15 ["LayoutOrder"]
       86 DUPTABLE                         R11 K21 [{"Toolbar", "List"}]
       87 GETUPVAL                         R12 1
       88 GETTABLEKS                       R12 R12 K12 ["createElement"]
       90 GETUPVAL                         R13 6
       91 GETTABLEKS                       R13 R13 K13 ["View"]
       93 DUPTABLE                         R14 K16 [{"tag", "LayoutOrder"}]
       94 LOADK                            R15 K22 ["size-full-600 align-y-center row"]
       95 SETTABLEKS                       R15 R14 K14 ["tag"]
       97 MOVE                             R15 R7
       98 CALL                             R15 0 1
       99 SETTABLEKS                       R15 R14 K15 ["LayoutOrder"]
      101 DUPTABLE                         R15 K26 [{"MasksLabel", "Delete", "Add"}]
      102 GETUPVAL                         R16 1
      103 GETTABLEKS                       R16 R16 K12 ["createElement"]
      105 GETUPVAL                         R17 6
      106 GETTABLEKS                       R17 R17 K27 ["Text"]
      108 DUPTABLE                         R18 K28 [{"Text", "LayoutOrder", "tag"}]
      109 LOADK                            R21 K29 ["Common"]
      110 LOADK                            R22 K30 ["AnimationEditor"]
      111 LOADK                            R23 K31 ["MaskEditorPopup"]
      112 LOADK                            R24 K32 ["Masks"]
      113 NAMECALL                         R19 R1 K33 ["getExternalText"]
      115 CALL                             R19 5 1
      116 SETTABLEKS                       R19 R18 K27 ["Text"]
      118 MOVE                             R19 R7
      119 CALL                             R19 0 1
      120 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      122 LOADK                            R19 K34 ["text-align-x-left text-align-y-center text-label-small size-0-full gap-xsmall content-emphasis grow"]
      123 SETTABLEKS                       R19 R18 K14 ["tag"]
      125 CALL                             R16 2 1
      126 SETTABLEKS                       R16 R15 K23 ["MasksLabel"]
      128 GETUPVAL                         R16 1
      129 GETTABLEKS                       R16 R16 K12 ["createElement"]
      131 GETUPVAL                         R17 6
      132 GETTABLEKS                       R17 R17 K35 ["IconButton"]
      134 DUPTABLE                         R18 K41 [{"size", "icon", "LayoutOrder", "isDisabled", "onActivated", "testId"}]
      135 GETUPVAL                         R19 6
      136 GETTABLEKS                       R19 R19 K42 ["Enums"]
      138 GETTABLEKS                       R19 R19 K43 ["InputSize"]
      140 GETTABLEKS                       R19 R19 K44 ["XSmall"]
      142 SETTABLEKS                       R19 R18 K36 ["size"]
      144 GETUPVAL                         R19 6
      145 GETTABLEKS                       R19 R19 K42 ["Enums"]
      147 GETTABLEKS                       R19 R19 K45 ["IconName"]
      149 GETTABLEKS                       R19 R19 K46 ["MinusSmall"]
      151 SETTABLEKS                       R19 R18 K37 ["icon"]
      153 MOVE                             R19 R7
      154 CALL                             R19 0 1
      155 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      157 GETUPVAL                         R20 4
      158 CALL                             R20 0 1
      159 JUMPIFNOT                        R20 ; [+7]
      160 GETTABLEKS                       R20 R3 K10 ["selectedMaskId"]
      162 JUMPIFEQKNIL                     R20 ; [+2]
      164 LOADB                            R19 0 +1
      165 LOADB                            R19 1
      166 JUMP                             ; [+6]
      167 GETTABLEKS                       R20 R0 K10 ["selectedMaskId"]
      169 JUMPIFEQKNIL                     R20 ; [+2]
      171 LOADB                            R19 0 +1
      172 LOADB                            R19 1
      173 SETTABLEKS                       R19 R18 K38 ["isDisabled"]
      175 SETTABLEKS                       R6 R18 K39 ["onActivated"]
      177 LOADK                            R19 K47 ["MaskEditor-Delete"]
      178 SETTABLEKS                       R19 R18 K40 ["testId"]
      180 CALL                             R16 2 1
      181 SETTABLEKS                       R16 R15 K24 ["Delete"]
      183 GETUPVAL                         R16 1
      184 GETTABLEKS                       R16 R16 K12 ["createElement"]
      186 GETUPVAL                         R17 6
      187 GETTABLEKS                       R17 R17 K35 ["IconButton"]
      189 DUPTABLE                         R18 K48 [{"size", "icon", "LayoutOrder", "onActivated", "testId"}]
      190 GETUPVAL                         R20 4
      191 CALL                             R20 0 1
      192 JUMPIFNOT                        R20 ; [+8]
      193 GETUPVAL                         R19 6
      194 GETTABLEKS                       R19 R19 K42 ["Enums"]
      196 GETTABLEKS                       R19 R19 K43 ["InputSize"]
      198 GETTABLEKS                       R19 R19 K44 ["XSmall"]
      200 JUMP                             ; [+7]
      201 GETUPVAL                         R19 6
      202 GETTABLEKS                       R19 R19 K42 ["Enums"]
      204 GETTABLEKS                       R19 R19 K43 ["InputSize"]
      206 GETTABLEKS                       R19 R19 K49 ["Small"]
      208 SETTABLEKS                       R19 R18 K36 ["size"]
      210 GETUPVAL                         R19 6
      211 GETTABLEKS                       R19 R19 K42 ["Enums"]
      213 GETTABLEKS                       R19 R19 K45 ["IconName"]
      215 GETTABLEKS                       R19 R19 K50 ["PlusSmall"]
      217 SETTABLEKS                       R19 R18 K37 ["icon"]
      219 MOVE                             R19 R7
      220 CALL                             R19 0 1
      221 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      223 SETTABLEKS                       R5 R18 K39 ["onActivated"]
      225 LOADK                            R19 K51 ["MaskEditor-Add"]
      226 SETTABLEKS                       R19 R18 K40 ["testId"]
      228 CALL                             R16 2 1
      229 SETTABLEKS                       R16 R15 K25 ["Add"]
      231 CALL                             R12 3 1
      232 SETTABLEKS                       R12 R11 K19 ["Toolbar"]
      234 GETUPVAL                         R12 1
      235 GETTABLEKS                       R12 R12 K12 ["createElement"]
      237 GETUPVAL                         R13 7
      238 DUPTABLE                         R14 K52 [{"layoutOrder", "selectedMaskId", "setSelectedMaskId"}]
      239 MOVE                             R15 R7
      240 CALL                             R15 0 1
      241 SETTABLEKS                       R15 R14 K18 ["layoutOrder"]
      243 GETUPVAL                         R16 4
      244 CALL                             R16 0 1
      245 JUMPIF                           R16 ; [+3]
      246 GETTABLEKS                       R15 R0 K10 ["selectedMaskId"]
      248 JUMP                             ; [+1]
      249 LOADNIL                          R15
      250 SETTABLEKS                       R15 R14 K10 ["selectedMaskId"]
      252 GETUPVAL                         R16 4
      253 CALL                             R16 0 1
      254 JUMPIF                           R16 ; [+3]
      255 GETTABLEKS                       R15 R0 K8 ["setSelectedMaskId"]
      257 JUMP                             ; [+1]
      258 LOADNIL                          R15
      259 SETTABLEKS                       R15 R14 K8 ["setSelectedMaskId"]
      261 CALL                             R12 2 1
      262 SETTABLEKS                       R12 R11 K20 ["List"]
      264 CALL                             R8 3 -1
      265 RETURN                           R8 -1

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
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K14 ["Flags"]
       53 GETTABLEKS                       R8 R8 K15 ["getFFlagAnimGraphUIMaskMenu"]
       55 CALL                             R7 1 1
       56 DUPCLOSURE                       R8 K16 [PROTO_1]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R1
       61 DUPCLOSURE                       R9 K17 [PROTO_3]
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R1
       68 DUPCLOSURE                       R10 K18 [PROTO_9]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R9
       77 RETURN                           R10 1
