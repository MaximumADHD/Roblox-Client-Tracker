PROTO_0:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["refresh"]
        4 CALL                             R1 0 0
        5 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOTEQKS                    R0 K0 ["edit_version_notes"] ; [+47]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["FFlagPVHUpdatePageOnNotesEdit"]
        5 JUMPIFNOT                        R1 ; [+18]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K2 ["openEditNotesDialog"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K3 ["placeId"]
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K4 ["metadata"]
       15 GETTABLEKS                       R3 R4 K5 ["version"]
       17 GETUPVAL                         R6 3
       18 GETTABLEKS                       R5 R6 K4 ["metadata"]
       20 GETTABLEKS                       R4 R5 K6 ["notes"]
       22 CALL                             R1 3 0
       23 JUMP                             ; [+39]
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R1 R2 K7 ["DEPRECATED_openEditNotesDialog"]
       27 GETUPVAL                         R4 3
       28 GETTABLEKS                       R3 R4 K4 ["metadata"]
       30 GETTABLEKS                       R2 R3 K5 ["version"]
       32 GETUPVAL                         R5 3
       33 GETTABLEKS                       R4 R5 K4 ["metadata"]
       35 GETTABLEKS                       R3 R4 K6 ["notes"]
       37 CALL                             R1 2 1
       38 NEWCLOSURE                       R3 P0
       39 CAPTURE                          UPVAL U4
       40 NAMECALL                         R1 R1 K8 ["andThen"]
       42 CALL                             R1 2 1
       43 DUPCLOSURE                       R3 K9 [PROTO_1]
       44 NAMECALL                         R1 R1 K10 ["catch"]
       46 CALL                             R1 2 0
       47 JUMP                             ; [+15]
       48 JUMPIFNOTEQKS                    R0 K11 ["open_local_copy"] ; [+14]
       50 GETUPVAL                         R2 5
       51 GETTABLEKS                       R1 R2 K12 ["openPlace"]
       53 GETUPVAL                         R4 3
       54 GETTABLEKS                       R3 R4 K4 ["metadata"]
       56 GETTABLEKS                       R2 R3 K5 ["version"]
       58 CALL                             R1 1 1
       59 DUPCLOSURE                       R3 K13 [PROTO_2]
       60 NAMECALL                         R1 R1 K10 ["catch"]
       62 CALL                             R1 2 0
       63 GETUPVAL                         R2 6
       64 GETTABLEKS                       R1 R2 K14 ["disable"]
       66 CALL                             R1 0 0
       67 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isDisabled"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["disable"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K2 [{"Transparency", "Color3"}]
        1 GETTABLEN                        R3 R0 1
        2 JUMPIFNOT                        R3 ; [+2]
        3 LOADN                            R2 0
        4 JUMP                             ; [+1]
        5 LOADN                            R2 1
        6 SETTABLEKS                       R2 R1 K0 ["Transparency"]
        8 LOADNIL                          R2
        9 SETTABLEKS                       R2 R1 K1 ["Color3"]
       11 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["useContext"]
        8 GETUPVAL                         R3 2
        9 CALL                             R2 1 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K0 ["useContext"]
       13 GETUPVAL                         R4 3
       14 CALL                             R3 1 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K0 ["useContext"]
       18 GETUPVAL                         R5 4
       19 CALL                             R4 1 1
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K0 ["useContext"]
       23 GETUPVAL                         R6 5
       24 CALL                             R5 1 1
       25 GETUPVAL                         R6 6
       26 NAMECALL                         R6 R6 K1 ["use"]
       28 CALL                             R6 1 1
       29 GETUPVAL                         R7 7
       30 CALL                             R7 0 1
       31 GETTABLEKS                       R9 R4 K2 ["widget"]
       33 JUMPIFNOT                        R9 ; [+5]
       34 GETTABLEKS                       R9 R4 K2 ["widget"]
       36 GETTABLEKS                       R8 R9 K3 ["WindowFocusReleased"]
       38 JUMP                             ; [+1]
       39 LOADNIL                          R8
       40 GETUPVAL                         R9 8
       41 MOVE                             R10 R8
       42 GETTABLEKS                       R11 R7 K4 ["disable"]
       44 NEWTABLE                         R12 0 1
       46 MOVE                             R13 R7
       47 SETLIST                          R12 R13 1 [1]
       49 CALL                             R9 3 0
       50 GETUPVAL                         R10 0
       51 GETTABLEKS                       R9 R10 K5 ["useRef"]
       53 LOADNIL                          R10
       54 CALL                             R9 1 1
       55 GETUPVAL                         R11 0
       56 GETTABLEKS                       R10 R11 K6 ["useCallback"]
       58 NEWCLOSURE                       R11 P0
       59 CAPTURE                          UPVAL U9
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R7
       66 NEWTABLE                         R12 0 2
       68 MOVE                             R13 R7
       69 GETTABLEKS                       R14 R0 K7 ["metadata"]
       71 SETLIST                          R12 R13 2 [1]
       73 CALL                             R10 2 1
       74 GETUPVAL                         R12 0
       75 GETTABLEKS                       R11 R12 K8 ["useEffect"]
       77 NEWCLOSURE                       R12 P1
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R7
       80 NEWTABLE                         R13 0 1
       82 GETTABLEKS                       R14 R0 K9 ["isDisabled"]
       84 SETLIST                          R13 R14 1 [1]
       86 CALL                             R11 2 0
       87 GETUPVAL                         R12 0
       88 GETTABLEKS                       R11 R12 K10 ["createElement"]
       90 GETUPVAL                         R13 10
       91 GETTABLEKS                       R12 R13 K11 ["View"]
       93 DUPTABLE                         R13 K14 [{"tag", "LayoutOrder"}]
       94 LOADK                            R14 K15 ["auto-xy"]
       95 SETTABLEKS                       R14 R13 K12 ["tag"]
       97 GETTABLEKS                       R14 R0 K13 ["LayoutOrder"]
       99 SETTABLEKS                       R14 R13 K13 ["LayoutOrder"]
      101 DUPTABLE                         R14 K18 [{"Button", "Menu"}]
      102 GETUPVAL                         R16 0
      103 GETTABLEKS                       R15 R16 K10 ["createElement"]
      105 GETUPVAL                         R17 10
      106 GETTABLEKS                       R16 R17 K11 ["View"]
      108 DUPTABLE                         R17 K22 [{"tag", "onActivated", "testId", "ref"}]
      109 LOADK                            R18 K23 ["size-0-0 auto-xy padding-xsmall radius-small"]
      110 SETTABLEKS                       R18 R17 K12 ["tag"]
      112 GETTABLEKS                       R18 R7 K24 ["toggle"]
      114 SETTABLEKS                       R18 R17 K19 ["onActivated"]
      116 LOADK                            R18 K25 ["--overflow-menu-button"]
      117 SETTABLEKS                       R18 R17 K20 ["testId"]
      119 SETTABLEKS                       R9 R17 K21 ["ref"]
      121 DUPTABLE                         R18 K27 [{"Icon"}]
      122 GETUPVAL                         R20 0
      123 GETTABLEKS                       R19 R20 K10 ["createElement"]
      125 GETUPVAL                         R21 10
      126 GETTABLEKS                       R20 R21 K26 ["Icon"]
      128 DUPTABLE                         R21 K31 [{"name", "size", "style"}]
      129 GETUPVAL                         R25 10
      130 GETTABLEKS                       R24 R25 K32 ["Enums"]
      132 GETTABLEKS                       R23 R24 K33 ["IconName"]
      134 GETTABLEKS                       R22 R23 K34 ["ThreeDotsVertical"]
      136 SETTABLEKS                       R22 R21 K28 ["name"]
      138 GETUPVAL                         R25 10
      139 GETTABLEKS                       R24 R25 K32 ["Enums"]
      141 GETTABLEKS                       R23 R24 K35 ["InputSize"]
      143 GETTABLEKS                       R22 R23 K36 ["Medium"]
      145 SETTABLEKS                       R22 R21 K29 ["size"]
      147 GETUPVAL                         R23 0
      148 GETTABLEKS                       R22 R23 K37 ["joinBindings"]
      150 NEWTABLE                         R23 0 1
      152 GETTABLEKS                       R24 R0 K38 ["isVisible"]
      154 SETLIST                          R23 R24 1 [1]
      156 CALL                             R22 1 1
      157 DUPCLOSURE                       R24 K39 [PROTO_5]
      158 NAMECALL                         R22 R22 K40 ["map"]
      160 CALL                             R22 2 1
      161 SETTABLEKS                       R22 R21 K30 ["style"]
      163 CALL                             R19 2 1
      164 SETTABLEKS                       R19 R18 K26 ["Icon"]
      166 CALL                             R15 3 1
      167 SETTABLEKS                       R15 R14 K16 ["Button"]
      169 GETTABLEKS                       R15 R7 K41 ["enabled"]
      171 JUMPIFNOT                        R15 ; [+77]
      172 GETUPVAL                         R16 0
      173 GETTABLEKS                       R15 R16 K10 ["createElement"]
      175 GETUPVAL                         R17 10
      176 GETTABLEKS                       R16 R17 K17 ["Menu"]
      178 DUPTABLE                         R17 K49 [{"isOpen", "width", "items", "size", "side", "align", "onPressedOutside", "onActivated", "anchorRef"}]
      179 LOADB                            R18 1
      180 SETTABLEKS                       R18 R17 K42 ["isOpen"]
      182 GETUPVAL                         R18 11
      183 SETTABLEKS                       R18 R17 K43 ["width"]
      185 NEWTABLE                         R18 0 2
      187 DUPTABLE                         R19 K52 [{"id", "text"}]
      188 LOADK                            R20 K53 ["edit_version_notes"]
      189 SETTABLEKS                       R20 R19 K50 ["id"]
      191 LOADK                            R22 K17 ["Menu"]
      192 LOADK                            R23 K54 ["EditVersionNotes"]
      193 NAMECALL                         R20 R6 K55 ["getText"]
      195 CALL                             R20 3 1
      196 SETTABLEKS                       R20 R19 K51 ["text"]
      198 DUPTABLE                         R20 K52 [{"id", "text"}]
      199 LOADK                            R21 K56 ["open_local_copy"]
      200 SETTABLEKS                       R21 R20 K50 ["id"]
      202 LOADK                            R23 K17 ["Menu"]
      203 LOADK                            R24 K57 ["OpenLocalCopy"]
      204 NAMECALL                         R21 R6 K55 ["getText"]
      206 CALL                             R21 3 1
      207 SETTABLEKS                       R21 R20 K51 ["text"]
      209 SETLIST                          R18 R19 2 [1]
      211 SETTABLEKS                       R18 R17 K44 ["items"]
      213 GETUPVAL                         R21 10
      214 GETTABLEKS                       R20 R21 K32 ["Enums"]
      216 GETTABLEKS                       R19 R20 K35 ["InputSize"]
      218 GETTABLEKS                       R18 R19 K58 ["XSmall"]
      220 SETTABLEKS                       R18 R17 K29 ["size"]
      222 GETUPVAL                         R21 10
      223 GETTABLEKS                       R20 R21 K32 ["Enums"]
      225 GETTABLEKS                       R19 R20 K59 ["PopoverSide"]
      227 GETTABLEKS                       R18 R19 K60 ["Left"]
      229 SETTABLEKS                       R18 R17 K45 ["side"]
      231 GETUPVAL                         R21 10
      232 GETTABLEKS                       R20 R21 K32 ["Enums"]
      234 GETTABLEKS                       R19 R20 K61 ["PopoverAlign"]
      236 GETTABLEKS                       R18 R19 K62 ["Start"]
      238 SETTABLEKS                       R18 R17 K46 ["align"]
      240 GETTABLEKS                       R18 R7 K4 ["disable"]
      242 SETTABLEKS                       R18 R17 K47 ["onPressedOutside"]
      244 SETTABLEKS                       R10 R17 K19 ["onActivated"]
      246 SETTABLEKS                       R9 R17 K48 ["anchorRef"]
      248 CALL                             R15 2 1
      249 SETTABLEKS                       R15 R14 K17 ["Menu"]
      251 CALL                             R11 3 -1
      252 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Bin"]
       11 GETTABLEKS                       R3 R4 K7 ["Common"]
       13 GETTABLEKS                       R2 R3 K8 ["flags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["ReactUtils"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Packages"]
       34 GETTABLEKS                       R5 R6 K12 ["Foundation"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K9 ["Packages"]
       41 GETTABLEKS                       R6 R7 K13 ["Framework"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R5 K14 ["ContextServices"]
       46 GETTABLEKS                       R7 R6 K15 ["Localization"]
       48 GETTABLEKS                       R9 R0 K16 ["Src"]
       50 GETTABLEKS                       R8 R9 K17 ["Contexts"]
       52 GETIMPORT                        R9 K5 [require]
       54 GETTABLEKS                       R10 R8 K18 ["StudioContext"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R11 R8 K19 ["DialogContext"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K5 [require]
       64 GETTABLEKS                       R12 R8 K20 ["WidgetContext"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K5 [require]
       69 GETTABLEKS                       R13 R8 K21 ["ControllerContext"]
       71 CALL                             R12 1 1
       72 GETIMPORT                        R13 K5 [require]
       74 GETTABLEKS                       R14 R8 K22 ["SettingContext"]
       76 CALL                             R13 1 1
       77 GETTABLEKS                       R14 R3 K23 ["useEventConnection"]
       79 GETTABLEKS                       R15 R3 K24 ["useToggleState"]
       81 GETIMPORT                        R16 K5 [require]
       83 GETTABLEKS                       R18 R0 K16 ["Src"]
       85 GETTABLEKS                       R17 R18 K25 ["Types"]
       87 CALL                             R16 1 1
       88 GETIMPORT                        R17 K28 [UDim.new]
       90 LOADN                            R18 0
       91 LOADN                            R19 150
       92 CALL                             R17 2 1
       93 DUPCLOSURE                       R18 K29 [PROTO_6]
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R15
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R17
      106 RETURN                           R18 1
