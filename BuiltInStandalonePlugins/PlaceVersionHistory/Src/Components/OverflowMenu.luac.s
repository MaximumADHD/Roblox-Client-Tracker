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
        0 DUPTABLE                         R1 K3 [{[1], ["Color3"] = }]
        1 GETTABLEN                        R3 R0 1
        2 JUMPIFNOT                        R3 ; [+2]
        3 LOADN                            R2 0
        4 JUMP                             ; [+1]
        5 LOADN                            R2 1
        6 SETTABLEKS                       R2 R1 K0 ["Transparency"]
        8 RETURN                           R1 1

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
       86 DUPTABLE                         R12 K15 [{["tag"] = "auto-xy", ["LayoutOrder"]}]
       87 GETTABLEKS                       R13 R0 K14 ["LayoutOrder"]
       89 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
       91 DUPTABLE                         R13 K18 [{"Button", "Menu"}]
       92 GETUPVAL                         R14 0
       93 GETTABLEKS                       R14 R14 K10 ["createElement"]
       95 GETUPVAL                         R15 8
       96 GETTABLEKS                       R15 R15 K11 ["View"]
       98 DUPTABLE                         R16 K24 [{["tag"] = "size-0-0 auto-xy padding-xsmall radius-small", ["onActivated"], ["testId"] = "--overflow-menu-button", ["ref"]}]
       99 GETTABLEKS                       R17 R6 K25 ["toggle"]
      101 SETTABLEKS                       R17 R16 K20 ["onActivated"]
      103 SETTABLEKS                       R8 R16 K23 ["ref"]
      105 DUPTABLE                         R17 K27 [{"Icon"}]
      106 GETUPVAL                         R18 0
      107 GETTABLEKS                       R18 R18 K10 ["createElement"]
      109 GETUPVAL                         R19 8
      110 GETTABLEKS                       R19 R19 K26 ["Icon"]
      112 DUPTABLE                         R20 K31 [{"name", "size", "style"}]
      113 GETUPVAL                         R21 8
      114 GETTABLEKS                       R21 R21 K32 ["Enums"]
      116 GETTABLEKS                       R21 R21 K33 ["IconName"]
      118 GETTABLEKS                       R21 R21 K34 ["ThreeDotsVertical"]
      120 SETTABLEKS                       R21 R20 K28 ["name"]
      122 GETUPVAL                         R21 8
      123 GETTABLEKS                       R21 R21 K32 ["Enums"]
      125 GETTABLEKS                       R21 R21 K35 ["InputSize"]
      127 GETTABLEKS                       R21 R21 K36 ["Medium"]
      129 SETTABLEKS                       R21 R20 K29 ["size"]
      131 GETUPVAL                         R21 0
      132 GETTABLEKS                       R21 R21 K37 ["joinBindings"]
      134 NEWTABLE                         R22 0 1
      136 GETTABLEKS                       R23 R0 K38 ["isVisible"]
      138 SETLIST                          R22 R23 1 [1]
      140 CALL                             R21 1 1
      141 DUPCLOSURE                       R23 K39 [PROTO_3]
      142 NAMECALL                         R21 R21 K40 ["map"]
      144 CALL                             R21 2 1
      145 SETTABLEKS                       R21 R20 K30 ["style"]
      147 CALL                             R18 2 1
      148 SETTABLEKS                       R18 R17 K26 ["Icon"]
      150 CALL                             R14 3 1
      151 SETTABLEKS                       R14 R13 K16 ["Button"]
      153 GETTABLEKS                       R14 R6 K41 ["enabled"]
      155 JUMPIFNOT                        R14 ; [+68]
      156 GETUPVAL                         R14 0
      157 GETTABLEKS                       R14 R14 K10 ["createElement"]
      159 GETUPVAL                         R15 8
      160 GETTABLEKS                       R15 R15 K17 ["Menu"]
      162 DUPTABLE                         R16 K50 [{["isOpen"] = True, ["width"], ["items"], ["size"], ["side"], ["align"], ["onPressedOutside"], ["onActivated"], ["anchorRef"]}]
      163 GETUPVAL                         R17 9
      164 SETTABLEKS                       R17 R16 K44 ["width"]
      166 NEWTABLE                         R17 0 2
      168 DUPTABLE                         R18 K54 [{["id"] = "edit_version_notes", ["text"]}]
      169 LOADK                            R21 K17 ["Menu"]
      170 LOADK                            R22 K55 ["EditVersionNotes"]
      171 NAMECALL                         R19 R5 K56 ["getText"]
      173 CALL                             R19 3 1
      174 SETTABLEKS                       R19 R18 K53 ["text"]
      176 DUPTABLE                         R19 K58 [{["id"] = "open_local_copy", ["text"]}]
      177 LOADK                            R22 K17 ["Menu"]
      178 LOADK                            R23 K59 ["OpenLocalCopy"]
      179 NAMECALL                         R20 R5 K56 ["getText"]
      181 CALL                             R20 3 1
      182 SETTABLEKS                       R20 R19 K53 ["text"]
      184 SETLIST                          R17 R18 2 [1]
      186 SETTABLEKS                       R17 R16 K45 ["items"]
      188 GETUPVAL                         R17 8
      189 GETTABLEKS                       R17 R17 K32 ["Enums"]
      191 GETTABLEKS                       R17 R17 K35 ["InputSize"]
      193 GETTABLEKS                       R17 R17 K60 ["XSmall"]
      195 SETTABLEKS                       R17 R16 K29 ["size"]
      197 GETUPVAL                         R17 8
      198 GETTABLEKS                       R17 R17 K32 ["Enums"]
      200 GETTABLEKS                       R17 R17 K61 ["PopoverSide"]
      202 GETTABLEKS                       R17 R17 K62 ["Left"]
      204 SETTABLEKS                       R17 R16 K46 ["side"]
      206 GETUPVAL                         R17 8
      207 GETTABLEKS                       R17 R17 K32 ["Enums"]
      209 GETTABLEKS                       R17 R17 K63 ["PopoverAlign"]
      211 GETTABLEKS                       R17 R17 K64 ["Start"]
      213 SETTABLEKS                       R17 R16 K47 ["align"]
      215 GETTABLEKS                       R17 R6 K4 ["disable"]
      217 SETTABLEKS                       R17 R16 K48 ["onPressedOutside"]
      219 SETTABLEKS                       R9 R16 K20 ["onActivated"]
      221 SETTABLEKS                       R8 R16 K49 ["anchorRef"]
      223 CALL                             R14 2 1
      224 SETTABLEKS                       R14 R13 K17 ["Menu"]
      226 CALL                             R10 3 -1
      227 RETURN                           R10 -1

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
