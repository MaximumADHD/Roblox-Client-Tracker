PROTO_0:
        0 GETIMPORT                        R2 K2 [Vector2.new]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K3 ["ShowContextMenu"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K4 ["current"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K5 ["ControlIndices"]
       14 MOVE                             R6 R2
       15 CALL                             R3 3 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["ShowContextMenu"]
        8 JUMPIF                           R0 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K0 ["current"]
       13 GETTABLEKS                       R0 R0 K2 ["MouseButton2Up"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U0
       18 NAMECALL                         R0 R0 K3 ["Connect"]
       20 CALL                             R0 2 1
       21 NEWCLOSURE                       R1 P1
       22 CAPTURE                          VAL R0
       23 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["menus"]
        3 GETTABLEN                        R1 R2 1
        4 JUMPIFNOT                        R1 ; [+37]
        5 GETTABLEKS                       R2 R1 K1 ["prevAttachment"]
        7 JUMPIFNOT                        R2 ; [+34]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["equals"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K3 ["Uri"]
       14 GETTABLEKS                       R4 R1 K1 ["prevAttachment"]
       16 GETTABLEKS                       R4 R4 K4 ["TargetWidgetUri"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+22]
       20 GETTABLEKS                       R2 R1 K5 ["lastCloseTime"]
       22 JUMPIFNOT                        R2 ; [+11]
       23 GETIMPORT                        R3 K8 [os.clock]
       25 CALL                             R3 0 1
       26 GETTABLEKS                       R5 R1 K5 ["lastCloseTime"]
       28 GETUPVAL                         R6 3
       29 ADD                              R4 R5 R6
       30 JUMPIFLT                         R3 R4 ; [+2]
       32 LOADB                            R2 0 +1
       33 LOADB                            R2 1
       34 LOADNIL                          R3
       35 SETTABLEKS                       R3 R1 K1 ["prevAttachment"]
       37 LOADNIL                          R3
       38 SETTABLEKS                       R3 R1 K5 ["lastCloseTime"]
       40 JUMPIFNOT                        R2 ; [+1]
       41 RETURN                           R0 0
       42 GETUPVAL                         R2 2
       43 GETTABLEKS                       R2 R2 K9 ["OnSelect"]
       45 GETUPVAL                         R3 2
       46 GETTABLEKS                       R3 R3 K3 ["Uri"]
       48 CALL                             R2 1 0
       49 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["menus"]
        6 GETTABLEN                        R2 R3 1
        7 JUMPIFNOT                        R2 ; [+37]
        8 GETTABLEKS                       R3 R2 K1 ["prevAttachment"]
       10 JUMPIFNOT                        R3 ; [+34]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K2 ["equals"]
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K3 ["Uri"]
       17 GETTABLEKS                       R5 R2 K1 ["prevAttachment"]
       19 GETTABLEKS                       R5 R5 K4 ["TargetWidgetUri"]
       21 CALL                             R3 2 1
       22 JUMPIFNOT                        R3 ; [+22]
       23 GETTABLEKS                       R3 R2 K5 ["lastCloseTime"]
       25 JUMPIFNOT                        R3 ; [+11]
       26 GETIMPORT                        R4 K8 [os.clock]
       28 CALL                             R4 0 1
       29 GETTABLEKS                       R6 R2 K5 ["lastCloseTime"]
       31 GETUPVAL                         R7 4
       32 ADD                              R5 R6 R7
       33 JUMPIFLT                         R4 R5 ; [+2]
       35 LOADB                            R3 0 +1
       36 LOADB                            R3 1
       37 LOADNIL                          R4
       38 SETTABLEKS                       R4 R2 K1 ["prevAttachment"]
       40 LOADNIL                          R4
       41 SETTABLEKS                       R4 R2 K5 ["lastCloseTime"]
       43 JUMPIFNOT                        R3 ; [+1]
       44 RETURN                           R0 0
       45 GETUPVAL                         R3 3
       46 GETTABLEKS                       R3 R3 K9 ["OnSelectArrow"]
       48 GETUPVAL                         R4 3
       49 GETTABLEKS                       R4 R4 K3 ["Uri"]
       51 CALL                             R3 1 0
       52 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Uri"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K1 ["MenuData"]
        6 JUMPIFNOT                        R2 ; [+19]
        7 GETTABLEKS                       R2 R0 K1 ["MenuData"]
        9 GETTABLEKS                       R2 R2 K2 ["isOpen"]
       11 JUMPIFNOT                        R2 ; [+14]
       12 GETTABLEKS                       R3 R0 K1 ["MenuData"]
       14 GETTABLEKS                       R3 R3 K3 ["widgetUriString"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K4 ["toString"]
       19 GETTABLEKS                       R5 R0 K0 ["Uri"]
       21 CALL                             R4 1 1
       22 JUMPIFEQ                         R3 R4 ; [+2]
       24 LOADB                            R2 0 +1
       25 LOADB                            R2 1
       26 GETUPVAL                         R3 2
       27 LOADNIL                          R4
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R0 K5 ["EnabledChildren"]
       31 GETTABLEKS                       R5 R0 K6 ["Visible"]
       33 GETUPVAL                         R6 3
       34 CALL                             R6 0 1
       35 JUMPIFNOT                        R6 ; [+8]
       36 GETTABLEKS                       R6 R0 K6 ["Visible"]
       38 JUMPIFEQKNIL                     R6 ; [+4]
       40 GETTABLEKS                       R5 R0 K6 ["Visible"]
       42 JUMP                             ; [+1]
       43 LOADB                            R5 1
       44 GETTABLEKS                       R7 R0 K7 ["Size"]
       46 JUMPIFNOTEQKS                    R7 K8 ["Small"] ; [+3]
       48 LOADK                            R6 K8 ["Small"]
       49 JUMP                             ; [+1]
       50 LOADK                            R6 K9 ["Large"]
       51 GETUPVAL                         R7 4
       52 CALL                             R7 0 1
       53 GETTABLEKS                       R9 R0 K10 ["ArrowSelectedFromAction"]
       55 JUMPIF                           R9 ; [+4]
       56 GETTABLEKS                       R9 R0 K11 ["Single"]
       58 JUMPIF                           R9 ; [+3]
       59 JUMPIFNOT                        R2 ; [+2]
       60 LOADB                            R8 1
       61 JUMP                             ; [+1]
       62 LOADB                            R8 0
       63 GETUPVAL                         R9 5
       64 NEWCLOSURE                       R10 P0
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R0
       67 NEWTABLE                         R11 0 2
       69 GETTABLEKS                       R12 R0 K12 ["ShowContextMenu"]
       71 GETTABLEKS                       R13 R0 K13 ["ControlIndices"]
       73 SETLIST                          R11 R12 2 [1]
       75 CALL                             R9 2 0
       76 GETUPVAL                         R9 6
       77 DUPTABLE                         R10 K20 [{"size", "iconOnly", "selected", "disabled", "isDropdownEnabled", "isSingle"}]
       78 SETTABLEKS                       R6 R10 K14 ["size"]
       80 GETTABLEKS                       R11 R0 K21 ["IconOnly"]
       82 SETTABLEKS                       R11 R10 K15 ["iconOnly"]
       84 SETTABLEKS                       R8 R10 K16 ["selected"]
       86 GETTABLEKS                       R11 R0 K22 ["Disabled"]
       88 SETTABLEKS                       R11 R10 K17 ["disabled"]
       90 SETTABLEKS                       R4 R10 K18 ["isDropdownEnabled"]
       92 GETTABLEKS                       R11 R0 K11 ["Single"]
       94 SETTABLEKS                       R11 R10 K19 ["isSingle"]
       96 MOVE                             R11 R7
       97 CALL                             R9 2 1
       98 GETUPVAL                         R10 7
       99 NEWCLOSURE                       R11 P1
      100 CAPTURE                          UPVAL U8
      101 CAPTURE                          UPVAL U1
      102 CAPTURE                          VAL R0
      103 CAPTURE                          UPVAL U9
      104 NEWTABLE                         R12 0 2
      106 GETTABLEKS                       R13 R0 K23 ["OnSelect"]
      108 GETTABLEKS                       R14 R0 K0 ["Uri"]
      110 SETLIST                          R12 R13 2 [1]
      112 CALL                             R10 2 1
      113 GETUPVAL                         R11 7
      114 NEWCLOSURE                       R12 P2
      115 CAPTURE                          VAL R4
      116 CAPTURE                          UPVAL U8
      117 CAPTURE                          UPVAL U1
      118 CAPTURE                          VAL R0
      119 CAPTURE                          UPVAL U9
      120 NEWTABLE                         R13 0 2
      122 GETTABLEKS                       R14 R0 K24 ["OnSelectArrow"]
      124 GETTABLEKS                       R15 R0 K0 ["Uri"]
      126 SETLIST                          R13 R14 2 [1]
      128 CALL                             R11 2 1
      129 GETUPVAL                         R12 10
      130 GETTABLEKS                       R12 R12 K25 ["createElement"]
      132 GETUPVAL                         R13 11
      133 DUPTABLE                         R14 K36 [{["testId"] = "--ribbon-split-button-arrow-container", ["tag"], ["isDisabled"], ["onActivated"], ["LayoutOrder"] = 2, ["ref"], ["stateLayer"], ["selection"]}]
      134 GETTABLEKS                       R15 R9 K37 ["arrowContainer"]
      136 GETTABLEKS                       R15 R15 K28 ["tag"]
      138 SETTABLEKS                       R15 R14 K28 ["tag"]
      140 NOT                              R15 R4
      141 SETTABLEKS                       R15 R14 K29 ["isDisabled"]
      143 SETTABLEKS                       R11 R14 K30 ["onActivated"]
      145 SETTABLEKS                       R3 R14 K33 ["ref"]
      147 GETTABLEKS                       R15 R9 K37 ["arrowContainer"]
      149 GETTABLEKS                       R15 R15 K34 ["stateLayer"]
      151 SETTABLEKS                       R15 R14 K34 ["stateLayer"]
      153 GETUPVAL                         R16 3
      154 CALL                             R16 0 1
      155 JUMPIFNOT                        R16 ; [+7]
      156 DUPTABLE                         R15 K39 [{"Selectable"}]
      157 MOVE                             R16 R4
      158 JUMPIFNOT                        R16 ; [+1]
      159 NOT                              R16 R5
      160 SETTABLEKS                       R16 R15 K38 ["Selectable"]
      162 JUMP                             ; [+1]
      163 LOADNIL                          R15
      164 SETTABLEKS                       R15 R14 K35 ["selection"]
      166 DUPTABLE                         R15 K41 [{"Arrow"}]
      167 GETUPVAL                         R16 10
      168 GETTABLEKS                       R16 R16 K25 ["createElement"]
      170 GETUPVAL                         R17 11
      171 DUPTABLE                         R18 K42 [{"tag"}]
      172 GETTABLEKS                       R19 R9 K43 ["arrow"]
      174 GETTABLEKS                       R19 R19 K28 ["tag"]
      176 SETTABLEKS                       R19 R18 K28 ["tag"]
      178 DUPTABLE                         R19 K45 [{"Icon"}]
      179 GETUPVAL                         R20 10
      180 GETTABLEKS                       R20 R20 K25 ["createElement"]
      182 GETUPVAL                         R21 12
      183 DUPTABLE                         R22 K51 [{["Image"] = "component_assets/triangleDown_16", ["imageStyle"], ["testId"] = "--ribbon-split-button-arrow-icon", ["tag"] = "size-150-100 content-default"}]
      184 GETTABLEKS                       R23 R9 K52 ["arrowIconStyle"]
      186 SETTABLEKS                       R23 R22 K48 ["imageStyle"]
      188 CALL                             R20 2 1
      189 SETTABLEKS                       R20 R19 K44 ["Icon"]
      191 CALL                             R16 3 1
      192 SETTABLEKS                       R16 R15 K40 ["Arrow"]
      194 CALL                             R12 3 1
      195 GETUPVAL                         R13 10
      196 GETTABLEKS                       R13 R13 K25 ["createElement"]
      198 GETUPVAL                         R14 13
      199 DUPTABLE                         R15 K61 [{"Uri", "Icon", "IconOnly", "ControlIndices", "Text", "Tooltip", "OnSelect", "Selected", "Disabled", "Size", "LayoutOrder", "Visible", "Shortcuts", "ShowContextMenu", "ForwardRef", "ArrowButton", "IsSingle", "IsMenuOpen"}]
      200 GETTABLEKS                       R16 R0 K0 ["Uri"]
      202 SETTABLEKS                       R16 R15 K0 ["Uri"]
      204 GETTABLEKS                       R16 R0 K44 ["Icon"]
      206 SETTABLEKS                       R16 R15 K44 ["Icon"]
      208 GETTABLEKS                       R16 R0 K21 ["IconOnly"]
      210 SETTABLEKS                       R16 R15 K21 ["IconOnly"]
      212 GETTABLEKS                       R16 R0 K13 ["ControlIndices"]
      214 SETTABLEKS                       R16 R15 K13 ["ControlIndices"]
      216 GETTABLEKS                       R16 R0 K53 ["Text"]
      218 SETTABLEKS                       R16 R15 K53 ["Text"]
      220 GETTABLEKS                       R16 R0 K54 ["Tooltip"]
      222 SETTABLEKS                       R16 R15 K54 ["Tooltip"]
      224 SETTABLEKS                       R10 R15 K23 ["OnSelect"]
      226 GETTABLEKS                       R16 R0 K62 ["MainButtonSelected"]
      228 SETTABLEKS                       R16 R15 K55 ["Selected"]
      230 GETTABLEKS                       R16 R0 K22 ["Disabled"]
      232 SETTABLEKS                       R16 R15 K22 ["Disabled"]
      234 GETTABLEKS                       R16 R0 K7 ["Size"]
      236 SETTABLEKS                       R16 R15 K7 ["Size"]
      238 GETTABLEKS                       R16 R0 K31 ["LayoutOrder"]
      240 SETTABLEKS                       R16 R15 K31 ["LayoutOrder"]
      242 SETTABLEKS                       R5 R15 K6 ["Visible"]
      244 GETTABLEKS                       R16 R0 K56 ["Shortcuts"]
      246 SETTABLEKS                       R16 R15 K56 ["Shortcuts"]
      248 GETTABLEKS                       R16 R0 K12 ["ShowContextMenu"]
      250 SETTABLEKS                       R16 R15 K12 ["ShowContextMenu"]
      252 SETTABLEKS                       R1 R15 K57 ["ForwardRef"]
      254 SETTABLEKS                       R12 R15 K58 ["ArrowButton"]
      256 GETTABLEKS                       R16 R0 K11 ["Single"]
      258 SETTABLEKS                       R16 R15 K59 ["IsSingle"]
      260 SETTABLEKS                       R2 R15 K60 ["IsMenuOpen"]
      262 CALL                             R13 2 -1
      263 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["useCallback"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Src"]
       27 GETTABLEKS                       R5 R5 K11 ["Types"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K10 ["Src"]
       34 GETTABLEKS                       R6 R6 K12 ["Components"]
       36 GETTABLEKS                       R6 R6 K13 ["RibbonButton"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K10 ["Src"]
       43 GETTABLEKS                       R7 R7 K14 ["Hooks"]
       45 GETTABLEKS                       R7 R7 K15 ["useMenu"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R0 K6 ["Packages"]
       52 GETTABLEKS                       R8 R8 K16 ["StudioFoundation"]
       54 CALL                             R7 1 1
       55 GETTABLEKS                       R8 R7 K17 ["Util"]
       57 GETTABLEKS                       R8 R8 K18 ["StudioUri"]
       59 GETTABLEKS                       R9 R7 K14 ["Hooks"]
       61 GETTABLEKS                       R9 R9 K19 ["useWidgetRef"]
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R11 R0 K10 ["Src"]
       67 GETTABLEKS                       R11 R11 K14 ["Hooks"]
       69 GETTABLEKS                       R11 R11 K20 ["useDensity"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K5 [require]
       74 GETTABLEKS                       R12 R0 K10 ["Src"]
       76 GETTABLEKS                       R12 R12 K14 ["Hooks"]
       78 GETTABLEKS                       R12 R12 K21 ["useSplitButtonVariants"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K5 [require]
       83 GETTABLEKS                       R13 R0 K10 ["Src"]
       85 GETTABLEKS                       R13 R13 K14 ["Hooks"]
       87 GETTABLEKS                       R13 R13 K22 ["MenuSettings"]
       89 CALL                             R12 1 1
       90 GETTABLEKS                       R13 R2 K23 ["View"]
       92 GETTABLEKS                       R14 R2 K24 ["Image"]
       94 GETTABLEKS                       R15 R1 K25 ["useEffect"]
       96 GETTABLEKS                       R16 R1 K26 ["useRef"]
       98 GETIMPORT                        R17 K28 [game]
      100 LOADK                            R19 K29 ["SplitButtonOpenCooldownMillis"]
      101 LOADN                            R20 750
      102 NAMECALL                         R17 R17 K30 ["DefineFastInt"]
      104 CALL                             R17 3 1
      105 GETIMPORT                        R18 K5 [require]
      107 GETTABLEKS                       R19 R0 K10 ["Src"]
      109 GETTABLEKS                       R19 R19 K31 ["SharedFlags"]
      111 GETTABLEKS                       R19 R19 K32 ["getFFlagRibbonEnableKeyboardNavigation"]
      113 CALL                             R18 1 1
      114 DIVK                             R19 R17 K33 [1000]
      115 DUPCLOSURE                       R20 K34 [PROTO_5]
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R16
      119 CAPTURE                          VAL R18
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R15
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R19
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R5
      130 RETURN                           R20 1
