PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOTEQKS                    R0 K0 ["edit_version_notes"] ; [+55]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["EngineFeaturePVHGenerateNotes"]
        5 JUMPIFNOT                        R1 ; [+32]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["openEditNotesDialog"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K3 ["placeId"]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K4 ["metadata"]
       15 GETTABLEKS                       R3 R3 K5 ["version"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K4 ["metadata"]
       20 GETTABLEKS                       R4 R4 K6 ["notes"]
       22 GETUPVAL                         R6 3
       23 GETTABLEKS                       R6 R6 K4 ["metadata"]
       25 GETTABLEKS                       R6 R6 K7 ["publishStatus"]
       27 JUMPIFNOTEQKNIL                  R6 ; [+2]
       29 LOADB                            R5 0 +1
       30 LOADB                            R5 1
       31 GETUPVAL                         R6 3
       32 GETTABLEKS                       R6 R6 K4 ["metadata"]
       34 GETTABLEKS                       R6 R6 K8 ["date"]
       36 CALL                             R1 5 0
       37 JUMP                             ; [+33]
       38 GETUPVAL                         R1 1
       39 GETTABLEKS                       R1 R1 K2 ["openEditNotesDialog"]
       41 GETUPVAL                         R2 2
       42 GETTABLEKS                       R2 R2 K3 ["placeId"]
       44 GETUPVAL                         R3 3
       45 GETTABLEKS                       R3 R3 K4 ["metadata"]
       47 GETTABLEKS                       R3 R3 K5 ["version"]
       49 GETUPVAL                         R4 3
       50 GETTABLEKS                       R4 R4 K4 ["metadata"]
       52 GETTABLEKS                       R4 R4 K6 ["notes"]
       54 CALL                             R1 3 0
       55 JUMP                             ; [+15]
       56 JUMPIFNOTEQKS                    R0 K9 ["open_local_copy"] ; [+14]
       58 GETUPVAL                         R1 4
       59 GETTABLEKS                       R1 R1 K10 ["openPlace"]
       61 GETUPVAL                         R2 3
       62 GETTABLEKS                       R2 R2 K4 ["metadata"]
       64 GETTABLEKS                       R2 R2 K5 ["version"]
       66 CALL                             R1 1 1
       67 DUPCLOSURE                       R3 K11 [PROTO_0]
       68 NAMECALL                         R1 R1 K12 ["catch"]
       70 CALL                             R1 2 0
       71 GETUPVAL                         R1 5
       72 GETTABLEKS                       R1 R1 K13 ["disable"]
       74 CALL                             R1 0 0
       75 RETURN                           R0 0

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
       54 CAPTURE                          UPVAL U8
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R6
       60 NEWTABLE                         R11 0 2
       62 MOVE                             R12 R6
       63 GETTABLEKS                       R13 R0 K7 ["metadata"]
       65 SETLIST                          R11 R12 2 [1]
       67 CALL                             R9 2 1
       68 GETUPVAL                         R10 0
       69 GETTABLEKS                       R10 R10 K8 ["useEffect"]
       71 NEWCLOSURE                       R11 P1
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R6
       74 NEWTABLE                         R12 0 1
       76 GETTABLEKS                       R13 R0 K9 ["isDisabled"]
       78 SETLIST                          R12 R13 1 [1]
       80 CALL                             R10 2 0
       81 GETUPVAL                         R10 0
       82 GETTABLEKS                       R10 R10 K10 ["createElement"]
       84 GETUPVAL                         R11 9
       85 GETTABLEKS                       R11 R11 K11 ["View"]
       87 DUPTABLE                         R12 K15 [{["tag"] = "auto-xy", ["LayoutOrder"]}]
       88 GETTABLEKS                       R13 R0 K14 ["LayoutOrder"]
       90 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
       92 DUPTABLE                         R13 K18 [{"Button", "Menu"}]
       93 GETUPVAL                         R14 0
       94 GETTABLEKS                       R14 R14 K10 ["createElement"]
       96 GETUPVAL                         R15 9
       97 GETTABLEKS                       R15 R15 K11 ["View"]
       99 DUPTABLE                         R16 K24 [{["tag"] = "size-0-0 auto-xy padding-xsmall radius-small", ["onActivated"], ["testId"] = "--overflow-menu-button", ["ref"]}]
      100 GETTABLEKS                       R17 R6 K25 ["toggle"]
      102 SETTABLEKS                       R17 R16 K20 ["onActivated"]
      104 SETTABLEKS                       R8 R16 K23 ["ref"]
      106 DUPTABLE                         R17 K27 [{"Icon"}]
      107 GETUPVAL                         R18 0
      108 GETTABLEKS                       R18 R18 K10 ["createElement"]
      110 GETUPVAL                         R19 9
      111 GETTABLEKS                       R19 R19 K26 ["Icon"]
      113 DUPTABLE                         R20 K31 [{"name", "size", "style"}]
      114 GETUPVAL                         R21 9
      115 GETTABLEKS                       R21 R21 K32 ["Enums"]
      117 GETTABLEKS                       R21 R21 K33 ["IconName"]
      119 GETTABLEKS                       R21 R21 K34 ["ThreeDotsVertical"]
      121 SETTABLEKS                       R21 R20 K28 ["name"]
      123 GETUPVAL                         R21 9
      124 GETTABLEKS                       R21 R21 K32 ["Enums"]
      126 GETTABLEKS                       R21 R21 K35 ["InputSize"]
      128 GETTABLEKS                       R21 R21 K36 ["Medium"]
      130 SETTABLEKS                       R21 R20 K29 ["size"]
      132 GETUPVAL                         R21 0
      133 GETTABLEKS                       R21 R21 K37 ["joinBindings"]
      135 NEWTABLE                         R22 0 1
      137 GETTABLEKS                       R23 R0 K38 ["isVisible"]
      139 SETLIST                          R22 R23 1 [1]
      141 CALL                             R21 1 1
      142 DUPCLOSURE                       R23 K39 [PROTO_3]
      143 NAMECALL                         R21 R21 K40 ["map"]
      145 CALL                             R21 2 1
      146 SETTABLEKS                       R21 R20 K30 ["style"]
      148 CALL                             R18 2 1
      149 SETTABLEKS                       R18 R17 K26 ["Icon"]
      151 CALL                             R14 3 1
      152 SETTABLEKS                       R14 R13 K16 ["Button"]
      154 GETTABLEKS                       R14 R6 K41 ["enabled"]
      156 JUMPIFNOT                        R14 ; [+68]
      157 GETUPVAL                         R14 0
      158 GETTABLEKS                       R14 R14 K10 ["createElement"]
      160 GETUPVAL                         R15 9
      161 GETTABLEKS                       R15 R15 K17 ["Menu"]
      163 DUPTABLE                         R16 K50 [{["isOpen"] = True, ["width"], ["items"], ["size"], ["side"], ["align"], ["onPressedOutside"], ["onActivated"], ["anchorRef"]}]
      164 GETUPVAL                         R17 10
      165 SETTABLEKS                       R17 R16 K44 ["width"]
      167 NEWTABLE                         R17 0 2
      169 DUPTABLE                         R18 K54 [{["id"] = "edit_version_notes", ["text"]}]
      170 LOADK                            R21 K17 ["Menu"]
      171 LOADK                            R22 K55 ["EditVersionNotes"]
      172 NAMECALL                         R19 R5 K56 ["getText"]
      174 CALL                             R19 3 1
      175 SETTABLEKS                       R19 R18 K53 ["text"]
      177 DUPTABLE                         R19 K58 [{["id"] = "open_local_copy", ["text"]}]
      178 LOADK                            R22 K17 ["Menu"]
      179 LOADK                            R23 K59 ["OpenLocalCopy"]
      180 NAMECALL                         R20 R5 K56 ["getText"]
      182 CALL                             R20 3 1
      183 SETTABLEKS                       R20 R19 K53 ["text"]
      185 SETLIST                          R17 R18 2 [1]
      187 SETTABLEKS                       R17 R16 K45 ["items"]
      189 GETUPVAL                         R17 9
      190 GETTABLEKS                       R17 R17 K32 ["Enums"]
      192 GETTABLEKS                       R17 R17 K35 ["InputSize"]
      194 GETTABLEKS                       R17 R17 K60 ["XSmall"]
      196 SETTABLEKS                       R17 R16 K29 ["size"]
      198 GETUPVAL                         R17 9
      199 GETTABLEKS                       R17 R17 K32 ["Enums"]
      201 GETTABLEKS                       R17 R17 K61 ["PopoverSide"]
      203 GETTABLEKS                       R17 R17 K62 ["Left"]
      205 SETTABLEKS                       R17 R16 K46 ["side"]
      207 GETUPVAL                         R17 9
      208 GETTABLEKS                       R17 R17 K32 ["Enums"]
      210 GETTABLEKS                       R17 R17 K63 ["PopoverAlign"]
      212 GETTABLEKS                       R17 R17 K64 ["Start"]
      214 SETTABLEKS                       R17 R16 K47 ["align"]
      216 GETTABLEKS                       R17 R6 K4 ["disable"]
      218 SETTABLEKS                       R17 R16 K48 ["onPressedOutside"]
      220 SETTABLEKS                       R9 R16 K20 ["onActivated"]
      222 SETTABLEKS                       R8 R16 K49 ["anchorRef"]
      224 CALL                             R14 2 1
      225 SETTABLEKS                       R14 R13 K17 ["Menu"]
      227 CALL                             R10 3 -1
      228 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["flags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["ReactUtils"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["Foundation"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Packages"]
       41 GETTABLEKS                       R6 R6 K13 ["Framework"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R5 K14 ["ContextServices"]
       46 GETTABLEKS                       R7 R6 K15 ["Localization"]
       48 GETTABLEKS                       R8 R0 K16 ["Src"]
       50 GETTABLEKS                       R8 R8 K17 ["Contexts"]
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
       83 GETTABLEKS                       R17 R0 K16 ["Src"]
       85 GETTABLEKS                       R17 R17 K25 ["Types"]
       87 CALL                             R16 1 1
       88 GETIMPORT                        R17 K28 [UDim.new]
       90 LOADN                            R18 0
       91 LOADN                            R19 150
       92 CALL                             R17 2 1
       93 DUPCLOSURE                       R18 K29 [PROTO_4]
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R15
      101 CAPTURE                          VAL R14
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R17
      105 RETURN                           R18 1
