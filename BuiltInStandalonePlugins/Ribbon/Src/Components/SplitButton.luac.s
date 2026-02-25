PROTO_0:
        0 GETIMPORT                        R2 K2 [Vector2.new]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K3 ["ShowContextMenu"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K4 ["current"]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R5 R6 K5 ["ControlIndices"]
       14 MOVE                             R6 R2
       15 CALL                             R3 3 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K1 ["ShowContextMenu"]
        8 JUMPIF                           R0 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K0 ["current"]
       13 GETTABLEKS                       R0 R1 K2 ["MouseButton2Up"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U0
       18 NAMECALL                         R0 R0 K3 ["Connect"]
       20 CALL                             R0 2 1
       21 NEWCLOSURE                       R1 P1
       22 CAPTURE                          VAL R0
       23 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["menus"]
        3 GETTABLEN                        R1 R2 1
        4 JUMPIFNOT                        R1 ; [+37]
        5 GETTABLEKS                       R2 R1 K1 ["prevAttachment"]
        7 JUMPIFNOT                        R2 ; [+34]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K2 ["equals"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K3 ["Uri"]
       14 GETTABLEKS                       R5 R1 K1 ["prevAttachment"]
       16 GETTABLEKS                       R4 R5 K4 ["TargetWidgetUri"]
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
       42 GETUPVAL                         R3 2
       43 GETTABLEKS                       R2 R3 K9 ["OnSelect"]
       45 GETUPVAL                         R4 2
       46 GETTABLEKS                       R3 R4 K3 ["Uri"]
       48 CALL                             R2 1 0
       49 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["menus"]
        6 GETTABLEN                        R2 R3 1
        7 JUMPIFNOT                        R2 ; [+37]
        8 GETTABLEKS                       R3 R2 K1 ["prevAttachment"]
       10 JUMPIFNOT                        R3 ; [+34]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K2 ["equals"]
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R4 R5 K3 ["Uri"]
       17 GETTABLEKS                       R6 R2 K1 ["prevAttachment"]
       19 GETTABLEKS                       R5 R6 K4 ["TargetWidgetUri"]
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
       45 GETUPVAL                         R4 3
       46 GETTABLEKS                       R3 R4 K9 ["OnSelectArrow"]
       48 GETUPVAL                         R5 3
       49 GETTABLEKS                       R4 R5 K3 ["Uri"]
       51 CALL                             R3 1 0
       52 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Uri"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K1 ["MenuData"]
        6 JUMPIFNOT                        R2 ; [+19]
        7 GETTABLEKS                       R3 R0 K1 ["MenuData"]
        9 GETTABLEKS                       R2 R3 K2 ["isOpen"]
       11 JUMPIFNOT                        R2 ; [+14]
       12 GETTABLEKS                       R4 R0 K1 ["MenuData"]
       14 GETTABLEKS                       R3 R4 K3 ["widgetUriString"]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K4 ["toString"]
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
       33 GETTABLEKS                       R7 R0 K7 ["Size"]
       35 JUMPIFNOTEQKS                    R7 K8 ["Small"] ; [+3]
       37 LOADK                            R6 K8 ["Small"]
       38 JUMP                             ; [+1]
       39 LOADK                            R6 K9 ["Large"]
       40 GETUPVAL                         R7 3
       41 CALL                             R7 0 1
       42 GETTABLEKS                       R9 R0 K10 ["ArrowSelectedFromAction"]
       44 JUMPIF                           R9 ; [+4]
       45 GETTABLEKS                       R9 R0 K11 ["Single"]
       47 JUMPIF                           R9 ; [+3]
       48 JUMPIFNOT                        R2 ; [+2]
       49 LOADB                            R8 1
       50 JUMP                             ; [+1]
       51 LOADB                            R8 0
       52 GETUPVAL                         R9 4
       53 NEWCLOSURE                       R10 P0
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R0
       56 NEWTABLE                         R11 0 2
       58 GETTABLEKS                       R12 R0 K12 ["ShowContextMenu"]
       60 GETTABLEKS                       R13 R0 K13 ["ControlIndices"]
       62 SETLIST                          R11 R12 2 [1]
       64 CALL                             R9 2 0
       65 GETUPVAL                         R9 5
       66 DUPTABLE                         R10 K20 [{"size", "iconOnly", "selected", "disabled", "isDropdownEnabled", "isSingle"}]
       67 SETTABLEKS                       R6 R10 K14 ["size"]
       69 GETTABLEKS                       R11 R0 K21 ["IconOnly"]
       71 SETTABLEKS                       R11 R10 K15 ["iconOnly"]
       73 SETTABLEKS                       R8 R10 K16 ["selected"]
       75 GETTABLEKS                       R11 R0 K22 ["Disabled"]
       77 SETTABLEKS                       R11 R10 K17 ["disabled"]
       79 SETTABLEKS                       R4 R10 K18 ["isDropdownEnabled"]
       81 GETTABLEKS                       R11 R0 K11 ["Single"]
       83 SETTABLEKS                       R11 R10 K19 ["isSingle"]
       85 MOVE                             R11 R7
       86 CALL                             R9 2 1
       87 GETUPVAL                         R10 6
       88 NEWCLOSURE                       R11 P1
       89 CAPTURE                          UPVAL U7
       90 CAPTURE                          UPVAL U1
       91 CAPTURE                          VAL R0
       92 CAPTURE                          UPVAL U8
       93 NEWTABLE                         R12 0 2
       95 GETTABLEKS                       R13 R0 K23 ["OnSelect"]
       97 GETTABLEKS                       R14 R0 K0 ["Uri"]
       99 SETLIST                          R12 R13 2 [1]
      101 CALL                             R10 2 1
      102 GETUPVAL                         R11 6
      103 NEWCLOSURE                       R12 P2
      104 CAPTURE                          VAL R4
      105 CAPTURE                          UPVAL U7
      106 CAPTURE                          UPVAL U1
      107 CAPTURE                          VAL R0
      108 CAPTURE                          UPVAL U8
      109 NEWTABLE                         R13 0 2
      111 GETTABLEKS                       R14 R0 K24 ["OnSelectArrow"]
      113 GETTABLEKS                       R15 R0 K0 ["Uri"]
      115 SETLIST                          R13 R14 2 [1]
      117 CALL                             R11 2 1
      118 GETUPVAL                         R13 9
      119 GETTABLEKS                       R12 R13 K25 ["createElement"]
      121 GETUPVAL                         R13 10
      122 DUPTABLE                         R14 K33 [{"testId", "tag", "isDisabled", "onActivated", "LayoutOrder", "ref", "stateLayer"}]
      123 LOADK                            R15 K34 ["--ribbon-split-button-arrow-container"]
      124 SETTABLEKS                       R15 R14 K26 ["testId"]
      126 GETTABLEKS                       R16 R9 K35 ["arrowContainer"]
      128 GETTABLEKS                       R15 R16 K27 ["tag"]
      130 SETTABLEKS                       R15 R14 K27 ["tag"]
      132 NOT                              R15 R4
      133 SETTABLEKS                       R15 R14 K28 ["isDisabled"]
      135 SETTABLEKS                       R11 R14 K29 ["onActivated"]
      137 LOADN                            R15 2
      138 SETTABLEKS                       R15 R14 K30 ["LayoutOrder"]
      140 SETTABLEKS                       R3 R14 K31 ["ref"]
      142 GETTABLEKS                       R16 R9 K35 ["arrowContainer"]
      144 GETTABLEKS                       R15 R16 K32 ["stateLayer"]
      146 SETTABLEKS                       R15 R14 K32 ["stateLayer"]
      148 DUPTABLE                         R15 K37 [{"Arrow"}]
      149 GETUPVAL                         R17 9
      150 GETTABLEKS                       R16 R17 K25 ["createElement"]
      152 GETUPVAL                         R17 10
      153 DUPTABLE                         R18 K38 [{"tag"}]
      154 GETTABLEKS                       R20 R9 K39 ["arrow"]
      156 GETTABLEKS                       R19 R20 K27 ["tag"]
      158 SETTABLEKS                       R19 R18 K27 ["tag"]
      160 DUPTABLE                         R19 K41 [{"Icon"}]
      161 GETUPVAL                         R21 9
      162 GETTABLEKS                       R20 R21 K25 ["createElement"]
      164 GETUPVAL                         R21 11
      165 DUPTABLE                         R22 K44 [{"Image", "imageStyle", "testId", "tag"}]
      166 LOADK                            R23 K45 ["component_assets/triangleDown_16"]
      167 SETTABLEKS                       R23 R22 K42 ["Image"]
      169 GETTABLEKS                       R23 R9 K46 ["arrowIconStyle"]
      171 SETTABLEKS                       R23 R22 K43 ["imageStyle"]
      173 LOADK                            R23 K47 ["--ribbon-split-button-arrow-icon"]
      174 SETTABLEKS                       R23 R22 K26 ["testId"]
      176 LOADK                            R23 K48 ["content-default size-150-100"]
      177 SETTABLEKS                       R23 R22 K27 ["tag"]
      179 CALL                             R20 2 1
      180 SETTABLEKS                       R20 R19 K40 ["Icon"]
      182 CALL                             R16 3 1
      183 SETTABLEKS                       R16 R15 K36 ["Arrow"]
      185 CALL                             R12 3 1
      186 GETUPVAL                         R14 9
      187 GETTABLEKS                       R13 R14 K25 ["createElement"]
      189 GETUPVAL                         R14 12
      190 DUPTABLE                         R15 K57 [{"Uri", "Icon", "IconOnly", "ControlIndices", "Text", "Tooltip", "OnSelect", "Selected", "Disabled", "Size", "LayoutOrder", "Visible", "Shortcuts", "ShowContextMenu", "ForwardRef", "ArrowButton", "IsSingle", "IsMenuOpen"}]
      191 GETTABLEKS                       R16 R0 K0 ["Uri"]
      193 SETTABLEKS                       R16 R15 K0 ["Uri"]
      195 GETTABLEKS                       R16 R0 K40 ["Icon"]
      197 SETTABLEKS                       R16 R15 K40 ["Icon"]
      199 GETTABLEKS                       R16 R0 K21 ["IconOnly"]
      201 SETTABLEKS                       R16 R15 K21 ["IconOnly"]
      203 GETTABLEKS                       R16 R0 K13 ["ControlIndices"]
      205 SETTABLEKS                       R16 R15 K13 ["ControlIndices"]
      207 GETTABLEKS                       R16 R0 K49 ["Text"]
      209 SETTABLEKS                       R16 R15 K49 ["Text"]
      211 GETTABLEKS                       R16 R0 K50 ["Tooltip"]
      213 SETTABLEKS                       R16 R15 K50 ["Tooltip"]
      215 SETTABLEKS                       R10 R15 K23 ["OnSelect"]
      217 GETTABLEKS                       R16 R0 K58 ["MainButtonSelected"]
      219 SETTABLEKS                       R16 R15 K51 ["Selected"]
      221 GETTABLEKS                       R16 R0 K22 ["Disabled"]
      223 SETTABLEKS                       R16 R15 K22 ["Disabled"]
      225 GETTABLEKS                       R16 R0 K7 ["Size"]
      227 SETTABLEKS                       R16 R15 K7 ["Size"]
      229 GETTABLEKS                       R16 R0 K30 ["LayoutOrder"]
      231 SETTABLEKS                       R16 R15 K30 ["LayoutOrder"]
      233 SETTABLEKS                       R5 R15 K6 ["Visible"]
      235 GETTABLEKS                       R16 R0 K52 ["Shortcuts"]
      237 SETTABLEKS                       R16 R15 K52 ["Shortcuts"]
      239 GETTABLEKS                       R16 R0 K12 ["ShowContextMenu"]
      241 SETTABLEKS                       R16 R15 K12 ["ShowContextMenu"]
      243 SETTABLEKS                       R1 R15 K53 ["ForwardRef"]
      245 SETTABLEKS                       R12 R15 K54 ["ArrowButton"]
      247 GETTABLEKS                       R16 R0 K11 ["Single"]
      249 SETTABLEKS                       R16 R15 K55 ["IsSingle"]
      251 SETTABLEKS                       R2 R15 K56 ["IsMenuOpen"]
      253 CALL                             R13 2 -1
      254 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["useCallback"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R6 R0 K10 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Types"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R8 R0 K10 ["Src"]
       34 GETTABLEKS                       R7 R8 K12 ["Components"]
       36 GETTABLEKS                       R6 R7 K13 ["RibbonButton"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R9 R0 K10 ["Src"]
       43 GETTABLEKS                       R8 R9 K14 ["Hooks"]
       45 GETTABLEKS                       R7 R8 K15 ["useMenu"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R9 R0 K6 ["Packages"]
       52 GETTABLEKS                       R8 R9 K16 ["StudioFoundation"]
       54 CALL                             R7 1 1
       55 GETTABLEKS                       R9 R7 K17 ["Util"]
       57 GETTABLEKS                       R8 R9 K18 ["StudioUri"]
       59 GETTABLEKS                       R10 R7 K14 ["Hooks"]
       61 GETTABLEKS                       R9 R10 K19 ["useWidgetRef"]
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R13 R0 K10 ["Src"]
       67 GETTABLEKS                       R12 R13 K14 ["Hooks"]
       69 GETTABLEKS                       R11 R12 K20 ["useDensity"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K5 [require]
       74 GETTABLEKS                       R14 R0 K10 ["Src"]
       76 GETTABLEKS                       R13 R14 K14 ["Hooks"]
       78 GETTABLEKS                       R12 R13 K21 ["useSplitButtonVariants"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K5 [require]
       83 GETTABLEKS                       R15 R0 K10 ["Src"]
       85 GETTABLEKS                       R14 R15 K14 ["Hooks"]
       87 GETTABLEKS                       R13 R14 K22 ["MenuSettings"]
       89 CALL                             R12 1 1
       90 GETTABLEKS                       R13 R2 K23 ["View"]
       92 GETTABLEKS                       R14 R2 K24 ["Image"]
       94 GETTABLEKS                       R15 R1 K25 ["useEffect"]
       96 GETTABLEKS                       R16 R1 K26 ["useRef"]
       98 GETIMPORT                        R17 K28 [game]
      100 LOADK                            R19 K29 ["SplitButtonOpenCooldownMillis"]
      101 LOADN                            R20 238
      102 NAMECALL                         R17 R17 K30 ["DefineFastInt"]
      104 CALL                             R17 3 1
      105 DIVK                             R18 R17 K31 [1000]
      106 DUPCLOSURE                       R19 K32 [PROTO_5]
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R16
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R18
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R5
      120 RETURN                           R19 1
