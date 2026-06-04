PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOTEQKS                    R0 K0 ["edit_version_notes"] ; [+19]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["openEditNotesDialog"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["placeId"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K3 ["metadata"]
       11 GETTABLEKS                       R3 R3 K4 ["version"]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K3 ["metadata"]
       16 GETTABLEKS                       R4 R4 K5 ["notes"]
       18 CALL                             R1 3 0
       19 JUMP                             ; [+15]
       20 JUMPIFNOTEQKS                    R0 K6 ["open_local_copy"] ; [+14]
       22 GETUPVAL                         R1 3
       23 GETTABLEKS                       R1 R1 K7 ["openPlace"]
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R2 R2 K3 ["metadata"]
       28 GETTABLEKS                       R2 R2 K4 ["version"]
       30 CALL                             R1 1 1
       31 DUPCLOSURE                       R3 K8 [PROTO_0]
       32 NAMECALL                         R1 R1 K9 ["catch"]
       34 CALL                             R1 2 0
       35 GETUPVAL                         R1 4
       36 GETTABLEKS                       R1 R1 K10 ["disable"]
       38 CALL                             R1 0 0
       39 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isDisabled"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["disable"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useContext"]
        8 GETUPVAL                         R3 2
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["useContext"]
       13 GETUPVAL                         R4 3
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K0 ["useContext"]
       18 GETUPVAL                         R5 4
       19 CALL                             R4 1 1
       20 GETUPVAL                         R5 5
       21 NAMECALL                         R5 R5 K1 ["use"]
       23 CALL                             R5 1 1
       24 GETUPVAL                         R6 6
       25 CALL                             R6 0 1
       26 GETTABLEKS                       R8 R3 K2 ["widget"]
       28 JUMPIFNOT                        R8 ; [+5]
       29 GETTABLEKS                       R7 R3 K2 ["widget"]
       31 GETTABLEKS                       R7 R7 K3 ["WindowFocusReleased"]
       33 JUMP                             ; [+1]
       34 LOADNIL                          R7
       35 GETUPVAL                         R8 7
       36 MOVE                             R9 R7
       37 GETTABLEKS                       R10 R6 K4 ["disable"]
       39 NEWTABLE                         R11 0 1
       41 MOVE                             R12 R6
       42 SETLIST                          R11 R12 1 [1]
       44 CALL                             R8 3 0
       45 GETUPVAL                         R8 0
       46 GETTABLEKS                       R8 R8 K5 ["useRef"]
       48 LOADNIL                          R9
       49 CALL                             R8 1 1
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R9 R9 K6 ["useCallback"]
       53 NEWCLOSURE                       R10 P0
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R6
       59 NEWTABLE                         R11 0 2
       61 MOVE                             R12 R6
       62 GETTABLEKS                       R13 R0 K7 ["metadata"]
       64 SETLIST                          R11 R12 2 [1]
       66 CALL                             R9 2 1
       67 GETUPVAL                         R10 0
       68 GETTABLEKS                       R10 R10 K8 ["useEffect"]
       70 NEWCLOSURE                       R11 P1
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R6
       73 NEWTABLE                         R12 0 1
       75 GETTABLEKS                       R13 R0 K9 ["isDisabled"]
       77 SETLIST                          R12 R13 1 [1]
       79 CALL                             R10 2 0
       80 GETUPVAL                         R10 0
       81 GETTABLEKS                       R10 R10 K10 ["createElement"]
       83 GETUPVAL                         R11 8
       84 GETTABLEKS                       R11 R11 K11 ["View"]
       86 DUPTABLE                         R12 K14 [{"tag", "LayoutOrder"}]
       87 LOADK                            R13 K15 ["auto-xy"]
       88 SETTABLEKS                       R13 R12 K12 ["tag"]
       90 GETTABLEKS                       R13 R0 K13 ["LayoutOrder"]
       92 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
       94 DUPTABLE                         R13 K18 [{"Button", "Menu"}]
       95 GETUPVAL                         R14 0
       96 GETTABLEKS                       R14 R14 K10 ["createElement"]
       98 GETUPVAL                         R15 8
       99 GETTABLEKS                       R15 R15 K11 ["View"]
      101 DUPTABLE                         R16 K22 [{"tag", "onActivated", "testId", "ref"}]
      102 LOADK                            R17 K23 ["size-0-0 auto-xy padding-xsmall radius-small"]
      103 SETTABLEKS                       R17 R16 K12 ["tag"]
      105 GETTABLEKS                       R17 R6 K24 ["toggle"]
      107 SETTABLEKS                       R17 R16 K19 ["onActivated"]
      109 LOADK                            R17 K25 ["--overflow-menu-button"]
      110 SETTABLEKS                       R17 R16 K20 ["testId"]
      112 SETTABLEKS                       R8 R16 K21 ["ref"]
      114 DUPTABLE                         R17 K27 [{"Icon"}]
      115 GETUPVAL                         R18 0
      116 GETTABLEKS                       R18 R18 K10 ["createElement"]
      118 GETUPVAL                         R19 8
      119 GETTABLEKS                       R19 R19 K26 ["Icon"]
      121 DUPTABLE                         R20 K31 [{"name", "size", "style"}]
      122 GETUPVAL                         R21 8
      123 GETTABLEKS                       R21 R21 K32 ["Enums"]
      125 GETTABLEKS                       R21 R21 K33 ["IconName"]
      127 GETTABLEKS                       R21 R21 K34 ["ThreeDotsVertical"]
      129 SETTABLEKS                       R21 R20 K28 ["name"]
      131 GETUPVAL                         R21 8
      132 GETTABLEKS                       R21 R21 K32 ["Enums"]
      134 GETTABLEKS                       R21 R21 K35 ["InputSize"]
      136 GETTABLEKS                       R21 R21 K36 ["Medium"]
      138 SETTABLEKS                       R21 R20 K29 ["size"]
      140 GETUPVAL                         R21 0
      141 GETTABLEKS                       R21 R21 K37 ["joinBindings"]
      143 NEWTABLE                         R22 0 1
      145 GETTABLEKS                       R23 R0 K38 ["isVisible"]
      147 SETLIST                          R22 R23 1 [1]
      149 CALL                             R21 1 1
      150 DUPCLOSURE                       R23 K39 [PROTO_3]
      151 NAMECALL                         R21 R21 K40 ["map"]
      153 CALL                             R21 2 1
      154 SETTABLEKS                       R21 R20 K30 ["style"]
      156 CALL                             R18 2 1
      157 SETTABLEKS                       R18 R17 K26 ["Icon"]
      159 CALL                             R14 3 1
      160 SETTABLEKS                       R14 R13 K16 ["Button"]
      162 GETTABLEKS                       R14 R6 K41 ["enabled"]
      164 JUMPIFNOT                        R14 ; [+77]
      165 GETUPVAL                         R14 0
      166 GETTABLEKS                       R14 R14 K10 ["createElement"]
      168 GETUPVAL                         R15 8
      169 GETTABLEKS                       R15 R15 K17 ["Menu"]
      171 DUPTABLE                         R16 K49 [{"isOpen", "width", "items", "size", "side", "align", "onPressedOutside", "onActivated", "anchorRef"}]
      172 LOADB                            R17 1
      173 SETTABLEKS                       R17 R16 K42 ["isOpen"]
      175 GETUPVAL                         R17 9
      176 SETTABLEKS                       R17 R16 K43 ["width"]
      178 NEWTABLE                         R17 0 2
      180 DUPTABLE                         R18 K52 [{"id", "text"}]
      181 LOADK                            R19 K53 ["edit_version_notes"]
      182 SETTABLEKS                       R19 R18 K50 ["id"]
      184 LOADK                            R21 K17 ["Menu"]
      185 LOADK                            R22 K54 ["EditVersionNotes"]
      186 NAMECALL                         R19 R5 K55 ["getText"]
      188 CALL                             R19 3 1
      189 SETTABLEKS                       R19 R18 K51 ["text"]
      191 DUPTABLE                         R19 K52 [{"id", "text"}]
      192 LOADK                            R20 K56 ["open_local_copy"]
      193 SETTABLEKS                       R20 R19 K50 ["id"]
      195 LOADK                            R22 K17 ["Menu"]
      196 LOADK                            R23 K57 ["OpenLocalCopy"]
      197 NAMECALL                         R20 R5 K55 ["getText"]
      199 CALL                             R20 3 1
      200 SETTABLEKS                       R20 R19 K51 ["text"]
      202 SETLIST                          R17 R18 2 [1]
      204 SETTABLEKS                       R17 R16 K44 ["items"]
      206 GETUPVAL                         R17 8
      207 GETTABLEKS                       R17 R17 K32 ["Enums"]
      209 GETTABLEKS                       R17 R17 K35 ["InputSize"]
      211 GETTABLEKS                       R17 R17 K58 ["XSmall"]
      213 SETTABLEKS                       R17 R16 K29 ["size"]
      215 GETUPVAL                         R17 8
      216 GETTABLEKS                       R17 R17 K32 ["Enums"]
      218 GETTABLEKS                       R17 R17 K59 ["PopoverSide"]
      220 GETTABLEKS                       R17 R17 K60 ["Left"]
      222 SETTABLEKS                       R17 R16 K45 ["side"]
      224 GETUPVAL                         R17 8
      225 GETTABLEKS                       R17 R17 K32 ["Enums"]
      227 GETTABLEKS                       R17 R17 K61 ["PopoverAlign"]
      229 GETTABLEKS                       R17 R17 K62 ["Start"]
      231 SETTABLEKS                       R17 R16 K46 ["align"]
      233 GETTABLEKS                       R17 R6 K4 ["disable"]
      235 SETTABLEKS                       R17 R16 K47 ["onPressedOutside"]
      237 SETTABLEKS                       R9 R16 K19 ["onActivated"]
      239 SETTABLEKS                       R8 R16 K48 ["anchorRef"]
      241 CALL                             R14 2 1
      242 SETTABLEKS                       R14 R13 K17 ["Menu"]
      244 CALL                             R10 3 -1
      245 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETTABLEKS                       R7 R0 K13 ["Src"]
       41 GETTABLEKS                       R7 R7 K14 ["Contexts"]
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R7 K15 ["StudioContext"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K5 [require]
       50 GETTABLEKS                       R10 R7 K16 ["DialogContext"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K5 [require]
       55 GETTABLEKS                       R11 R7 K17 ["WidgetContext"]
       57 CALL                             R10 1 1
       58 GETIMPORT                        R11 K5 [require]
       60 GETTABLEKS                       R12 R7 K18 ["ControllerContext"]
       62 CALL                             R11 1 1
       63 GETIMPORT                        R12 K5 [require]
       65 GETTABLEKS                       R13 R7 K19 ["SettingContext"]
       67 CALL                             R12 1 1
       68 GETTABLEKS                       R13 R2 K20 ["useEventConnection"]
       70 GETTABLEKS                       R14 R2 K21 ["useToggleState"]
       72 GETIMPORT                        R15 K5 [require]
       74 GETTABLEKS                       R16 R0 K13 ["Src"]
       76 GETTABLEKS                       R16 R16 K22 ["Types"]
       78 CALL                             R15 1 1
       79 GETIMPORT                        R16 K25 [UDim.new]
       81 LOADN                            R17 0
       82 LOADN                            R18 150
       83 CALL                             R16 2 1
       84 DUPCLOSURE                       R17 K26 [PROTO_4]
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R12
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R13
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R16
       95 RETURN                           R17 1
