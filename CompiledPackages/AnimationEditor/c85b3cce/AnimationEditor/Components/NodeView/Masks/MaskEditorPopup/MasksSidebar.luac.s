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
       67 LOADK                            R6 K17 ["size-full-600 auto-x padding-x-small padding-y-xxsmall bg-surface-300"]
       68 SETTABLEKS                       R6 R5 K9 ["tag"]
       70 GETUPVAL                         R7 2
       71 CALL                             R7 0 1
       72 JUMPIF                           R7 ; [+14]
       73 GETTABLEKS                       R7 R0 K14 ["selectedMaskId"]
       75 GETTABLEKS                       R8 R0 K4 ["maskId"]
       77 JUMPIFNOTEQ                      R7 R8 ; [+9]
       79 DUPTABLE                         R6 K21 [{["Color3"], ["Transparency"] = 0}]
       80 GETIMPORT                        R7 K23 [Color3.fromHex]
       82 LOADK                            R8 K24 ["2A3B77"]
       83 CALL                             R7 1 1
       84 SETTABLEKS                       R7 R6 K18 ["Color3"]
       86 JUMP                             ; [+1]
       87 LOADNIL                          R6
       88 SETTABLEKS                       R6 R5 K10 ["backgroundStyle"]
       90 DUPTABLE                         R6 K26 [{"Text"}]
       91 GETUPVAL                         R7 0
       92 GETTABLEKS                       R7 R7 K5 ["createElement"]
       94 GETUPVAL                         R8 3
       95 GETTABLEKS                       R8 R8 K25 ["Text"]
       97 DUPTABLE                         R9 K27 [{"Text", "tag"}]
       98 GETTABLEKS                       R10 R0 K28 ["maskName"]
      100 SETTABLEKS                       R10 R9 K25 ["Text"]
      102 NEWTABLE                         R10 4 0
      104 LOADB                            R11 1
      105 SETTABLEKS                       R11 R10 K29 ["size-0-full auto-x text-body-medium text-align-x-left text-align-y-center"]
      107 GETUPVAL                         R12 2
      108 CALL                             R12 0 1
      109 JUMPIF                           R12 ; [+9]
      110 GETTABLEKS                       R12 R0 K14 ["selectedMaskId"]
      112 GETTABLEKS                       R13 R0 K4 ["maskId"]
      114 JUMPIFNOTEQ                      R12 R13 ; [+2]
      116 LOADB                            R11 0 +1
      117 LOADB                            R11 1
      118 JUMP                             ; [+1]
      119 LOADNIL                          R11
      120 SETTABLEKS                       R11 R10 K30 ["content-muted"]
      122 GETUPVAL                         R12 2
      123 CALL                             R12 0 1
      124 JUMPIF                           R12 ; [+9]
      125 GETTABLEKS                       R12 R0 K14 ["selectedMaskId"]
      127 GETTABLEKS                       R13 R0 K4 ["maskId"]
      129 JUMPIFEQ                         R12 R13 ; [+2]
      131 LOADB                            R11 0 +1
      132 LOADB                            R11 1
      133 JUMP                             ; [+1]
      134 LOADNIL                          R11
      135 SETTABLEKS                       R11 R10 K31 ["content-inverse-default"]
      137 SETTABLEKS                       R10 R9 K9 ["tag"]
      139 CALL                             R7 2 1
      140 SETTABLEKS                       R7 R6 K25 ["Text"]
      142 CALL                             R3 3 -1
      143 RETURN                           R3 -1

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
      101 DUPTABLE                         R7 K30 [{["tag"] = "grow size-full-0 bg-surface-300", ["scroll"], ["layout"], ["LayoutOrder"]}]
      102 DUPTABLE                         R8 K34 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      103 GETIMPORT                        R9 K38 [Enum.AutomaticSize.XY]
      105 SETTABLEKS                       R9 R8 K31 ["AutomaticCanvasSize"]
      107 GETIMPORT                        R9 K41 [UDim2.new]
      109 CALL                             R9 0 1
      110 SETTABLEKS                       R9 R8 K32 ["CanvasSize"]
      112 GETIMPORT                        R9 K42 [Enum.ScrollingDirection.XY]
      114 SETTABLEKS                       R9 R8 K33 ["ScrollingDirection"]
      116 SETTABLEKS                       R8 R7 K27 ["scroll"]
      118 DUPTABLE                         R8 K44 [{"FillDirection"}]
      119 GETIMPORT                        R9 K46 [Enum.FillDirection.Vertical]
      121 SETTABLEKS                       R9 R8 K43 ["FillDirection"]
      123 SETTABLEKS                       R8 R7 K28 ["layout"]
      125 GETTABLEKS                       R8 R0 K17 ["layoutOrder"]
      127 SETTABLEKS                       R8 R7 K29 ["LayoutOrder"]
      129 MOVE                             R8 R3
      130 CALL                             R5 3 -1
      131 RETURN                           R5 -1

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
       78 DUPTABLE                         R10 K17 [{["tag"] = "col shrink size-3000-full", ["LayoutOrder"]}]
       79 GETTABLEKS                       R11 R0 K18 ["layoutOrder"]
       81 SETTABLEKS                       R11 R10 K16 ["LayoutOrder"]
       83 DUPTABLE                         R11 K21 [{"Toolbar", "List"}]
       84 GETUPVAL                         R12 1
       85 GETTABLEKS                       R12 R12 K12 ["createElement"]
       87 GETUPVAL                         R13 6
       88 GETTABLEKS                       R13 R13 K13 ["View"]
       90 DUPTABLE                         R14 K23 [{["tag"] = "row align-y-center size-full-600", ["LayoutOrder"]}]
       91 MOVE                             R15 R7
       92 CALL                             R15 0 1
       93 SETTABLEKS                       R15 R14 K16 ["LayoutOrder"]
       95 DUPTABLE                         R15 K27 [{"MasksLabel", "Delete", "Add"}]
       96 GETUPVAL                         R16 1
       97 GETTABLEKS                       R16 R16 K12 ["createElement"]
       99 GETUPVAL                         R17 6
      100 GETTABLEKS                       R17 R17 K28 ["Text"]
      102 DUPTABLE                         R18 K30 [{["Text"], ["LayoutOrder"], ["tag"] = "grow gap-xsmall size-0-full text-label-small text-align-x-left text-align-y-center content-emphasis"}]
      103 LOADK                            R21 K31 ["Common"]
      104 LOADK                            R22 K32 ["AnimationEditor"]
      105 LOADK                            R23 K33 ["MaskEditorPopup"]
      106 LOADK                            R24 K34 ["Masks"]
      107 NAMECALL                         R19 R1 K35 ["getExternalText"]
      109 CALL                             R19 5 1
      110 SETTABLEKS                       R19 R18 K28 ["Text"]
      112 MOVE                             R19 R7
      113 CALL                             R19 0 1
      114 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      116 CALL                             R16 2 1
      117 SETTABLEKS                       R16 R15 K24 ["MasksLabel"]
      119 GETUPVAL                         R16 1
      120 GETTABLEKS                       R16 R16 K12 ["createElement"]
      122 GETUPVAL                         R17 6
      123 GETTABLEKS                       R17 R17 K36 ["IconButton"]
      125 DUPTABLE                         R18 K43 [{["size"], ["icon"], ["LayoutOrder"], ["isDisabled"], ["onActivated"], ["testId"] = "MaskEditor-Delete"}]
      126 GETUPVAL                         R19 6
      127 GETTABLEKS                       R19 R19 K44 ["Enums"]
      129 GETTABLEKS                       R19 R19 K45 ["InputSize"]
      131 GETTABLEKS                       R19 R19 K46 ["XSmall"]
      133 SETTABLEKS                       R19 R18 K37 ["size"]
      135 GETUPVAL                         R19 6
      136 GETTABLEKS                       R19 R19 K44 ["Enums"]
      138 GETTABLEKS                       R19 R19 K47 ["IconName"]
      140 GETTABLEKS                       R19 R19 K48 ["MinusSmall"]
      142 SETTABLEKS                       R19 R18 K38 ["icon"]
      144 MOVE                             R19 R7
      145 CALL                             R19 0 1
      146 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      148 GETUPVAL                         R20 4
      149 CALL                             R20 0 1
      150 JUMPIFNOT                        R20 ; [+7]
      151 GETTABLEKS                       R20 R3 K10 ["selectedMaskId"]
      153 JUMPIFEQKNIL                     R20 ; [+2]
      155 LOADB                            R19 0 +1
      156 LOADB                            R19 1
      157 JUMP                             ; [+6]
      158 GETTABLEKS                       R20 R0 K10 ["selectedMaskId"]
      160 JUMPIFEQKNIL                     R20 ; [+2]
      162 LOADB                            R19 0 +1
      163 LOADB                            R19 1
      164 SETTABLEKS                       R19 R18 K39 ["isDisabled"]
      166 SETTABLEKS                       R6 R18 K40 ["onActivated"]
      168 CALL                             R16 2 1
      169 SETTABLEKS                       R16 R15 K25 ["Delete"]
      171 GETUPVAL                         R16 1
      172 GETTABLEKS                       R16 R16 K12 ["createElement"]
      174 GETUPVAL                         R17 6
      175 GETTABLEKS                       R17 R17 K36 ["IconButton"]
      177 DUPTABLE                         R18 K50 [{["size"], ["icon"], ["LayoutOrder"], ["onActivated"], ["testId"] = "MaskEditor-Add"}]
      178 GETUPVAL                         R20 4
      179 CALL                             R20 0 1
      180 JUMPIFNOT                        R20 ; [+8]
      181 GETUPVAL                         R19 6
      182 GETTABLEKS                       R19 R19 K44 ["Enums"]
      184 GETTABLEKS                       R19 R19 K45 ["InputSize"]
      186 GETTABLEKS                       R19 R19 K46 ["XSmall"]
      188 JUMP                             ; [+7]
      189 GETUPVAL                         R19 6
      190 GETTABLEKS                       R19 R19 K44 ["Enums"]
      192 GETTABLEKS                       R19 R19 K45 ["InputSize"]
      194 GETTABLEKS                       R19 R19 K51 ["Small"]
      196 SETTABLEKS                       R19 R18 K37 ["size"]
      198 GETUPVAL                         R19 6
      199 GETTABLEKS                       R19 R19 K44 ["Enums"]
      201 GETTABLEKS                       R19 R19 K47 ["IconName"]
      203 GETTABLEKS                       R19 R19 K52 ["PlusSmall"]
      205 SETTABLEKS                       R19 R18 K38 ["icon"]
      207 MOVE                             R19 R7
      208 CALL                             R19 0 1
      209 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      211 SETTABLEKS                       R5 R18 K40 ["onActivated"]
      213 CALL                             R16 2 1
      214 SETTABLEKS                       R16 R15 K26 ["Add"]
      216 CALL                             R12 3 1
      217 SETTABLEKS                       R12 R11 K19 ["Toolbar"]
      219 GETUPVAL                         R12 1
      220 GETTABLEKS                       R12 R12 K12 ["createElement"]
      222 GETUPVAL                         R13 7
      223 DUPTABLE                         R14 K53 [{"layoutOrder", "selectedMaskId", "setSelectedMaskId"}]
      224 MOVE                             R15 R7
      225 CALL                             R15 0 1
      226 SETTABLEKS                       R15 R14 K18 ["layoutOrder"]
      228 GETUPVAL                         R16 4
      229 CALL                             R16 0 1
      230 JUMPIF                           R16 ; [+3]
      231 GETTABLEKS                       R15 R0 K10 ["selectedMaskId"]
      233 JUMP                             ; [+1]
      234 LOADNIL                          R15
      235 SETTABLEKS                       R15 R14 K10 ["selectedMaskId"]
      237 GETUPVAL                         R16 4
      238 CALL                             R16 0 1
      239 JUMPIF                           R16 ; [+3]
      240 GETTABLEKS                       R15 R0 K8 ["setSelectedMaskId"]
      242 JUMP                             ; [+1]
      243 LOADNIL                          R15
      244 SETTABLEKS                       R15 R14 K8 ["setSelectedMaskId"]
      246 CALL                             R12 2 1
      247 SETTABLEKS                       R12 R11 K20 ["List"]
      249 CALL                             R8 3 -1
      250 RETURN                           R8 -1

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
