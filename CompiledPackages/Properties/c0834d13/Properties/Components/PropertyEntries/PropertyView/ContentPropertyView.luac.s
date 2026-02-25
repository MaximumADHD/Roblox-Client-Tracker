PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["set"]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R5 R6 K1 ["Enums"]
        6 GETTABLEKS                       R4 R5 K2 ["ControlState"]
        8 GETTABLEKS                       R3 R4 K3 ["Hover"]
       10 JUMPIFEQ                         R0 R3 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["opening a cool asset picker"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K3 ["enable"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["disable"]
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["getGameIdAsync"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["ContentPropertyView: no getGameIdAsync function provided"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 0
       13 CALL                             R1 0 1
       14 GETUPVAL                         R2 0
       15 CALL                             R2 0 1
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K4 ["useCallback"]
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          VAL R1
       21 CAPTURE                          UPVAL U2
       22 NEWTABLE                         R5 0 0
       24 CALL                             R3 2 1
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R4 R5 K4 ["useCallback"]
       28 NEWCLOSURE                       R5 P1
       29 CAPTURE                          VAL R2
       30 NEWTABLE                         R6 0 0
       32 CALL                             R4 2 1
       33 GETUPVAL                         R5 3
       34 CALL                             R5 0 1
       35 GETUPVAL                         R6 4
       36 GETUPVAL                         R7 5
       37 DUPTABLE                         R8 K8 [{"tag", "stateLayer", "onStateChanged"}]
       38 NEWTABLE                         R9 2 0
       40 LOADB                            R10 1
       41 SETTABLEKS                       R10 R9 K9 ["size-full-600 bg-shift-200 row radius-small"]
       43 GETTABLEKS                       R10 R1 K10 ["enabled"]
       45 SETTABLEKS                       R10 R9 K11 ["stroke-emphasis"]
       47 SETTABLEKS                       R9 R8 K5 ["tag"]
       49 DUPTABLE                         R9 K13 [{"affordance"}]
       50 GETUPVAL                         R13 2
       51 GETTABLEKS                       R12 R13 K14 ["Enums"]
       53 GETTABLEKS                       R11 R12 K15 ["StateLayerAffordance"]
       55 GETTABLEKS                       R10 R11 K16 ["None"]
       57 SETTABLEKS                       R10 R9 K12 ["affordance"]
       59 SETTABLEKS                       R9 R8 K6 ["stateLayer"]
       61 SETTABLEKS                       R3 R8 K7 ["onStateChanged"]
       63 DUPTABLE                         R9 K18 [{"PopoverRoot"}]
       64 GETUPVAL                         R10 4
       65 GETUPVAL                         R12 6
       66 GETTABLEKS                       R11 R12 K19 ["Root"]
       68 DUPTABLE                         R12 K23 [{"isOpen", "LayoutOrder", "testId"}]
       69 GETTABLEKS                       R13 R2 K10 ["enabled"]
       71 SETTABLEKS                       R13 R12 K20 ["isOpen"]
       73 MOVE                             R13 R5
       74 CALL                             R13 0 1
       75 SETTABLEKS                       R13 R12 K21 ["LayoutOrder"]
       77 LOADK                            R13 K24 ["AssetPicker"]
       78 SETTABLEKS                       R13 R12 K22 ["testId"]
       80 DUPTABLE                         R13 K27 [{"Anchor", "Content"}]
       81 GETUPVAL                         R14 4
       82 GETUPVAL                         R16 6
       83 GETTABLEKS                       R15 R16 K25 ["Anchor"]
       85 NEWTABLE                         R16 0 0
       87 DUPTABLE                         R17 K29 [{"AssetPickerButton"}]
       88 GETUPVAL                         R18 4
       89 GETUPVAL                         R19 7
       90 DUPTABLE                         R20 K31 [{"onActivated"}]
       91 SETTABLEKS                       R4 R20 K30 ["onActivated"]
       93 NEWTABLE                         R21 0 0
       95 CALL                             R18 3 1
       96 SETTABLEKS                       R18 R17 K28 ["AssetPickerButton"]
       98 CALL                             R14 3 1
       99 SETTABLEKS                       R14 R13 K25 ["Anchor"]
      101 GETUPVAL                         R14 4
      102 GETUPVAL                         R16 6
      103 GETTABLEKS                       R15 R16 K26 ["Content"]
      105 DUPTABLE                         R16 K36 [{"hasArrow", "onPressedOutside", "align", "side"}]
      106 LOADB                            R17 0
      107 SETTABLEKS                       R17 R16 K32 ["hasArrow"]
      109 GETTABLEKS                       R17 R2 K37 ["disable"]
      111 SETTABLEKS                       R17 R16 K33 ["onPressedOutside"]
      113 DUPTABLE                         R17 K40 [{"position", "offset"}]
      114 GETUPVAL                         R21 2
      115 GETTABLEKS                       R20 R21 K14 ["Enums"]
      117 GETTABLEKS                       R19 R20 K41 ["PopoverAlign"]
      119 GETTABLEKS                       R18 R19 K42 ["Start"]
      121 SETTABLEKS                       R18 R17 K38 ["position"]
      123 LOADN                            R18 0
      124 SETTABLEKS                       R18 R17 K39 ["offset"]
      126 SETTABLEKS                       R17 R16 K34 ["align"]
      128 DUPTABLE                         R17 K40 [{"position", "offset"}]
      129 GETUPVAL                         R21 2
      130 GETTABLEKS                       R20 R21 K14 ["Enums"]
      132 GETTABLEKS                       R19 R20 K43 ["PopoverSide"]
      134 GETTABLEKS                       R18 R19 K44 ["Bottom"]
      136 SETTABLEKS                       R18 R17 K38 ["position"]
      138 LOADN                            R18 8
      139 SETTABLEKS                       R18 R17 K39 ["offset"]
      141 SETTABLEKS                       R17 R16 K35 ["side"]
      143 DUPTABLE                         R17 K45 [{"AssetPicker"}]
      144 GETTABLEKS                       R19 R2 K10 ["enabled"]
      146 JUMPIFNOT                        R19 ; [+21]
      147 GETUPVAL                         R18 4
      148 GETUPVAL                         R19 8
      149 DUPTABLE                         R20 K48 [{"assetType", "getGameIdAsync", "onAssetSelected"}]
      150 GETTABLEKS                       R23 R0 K49 ["info"]
      152 GETTABLEKS                       R22 R23 K50 ["extra"]
      154 GETTABLEKS                       R21 R22 K46 ["assetType"]
      156 SETTABLEKS                       R21 R20 K46 ["assetType"]
      158 GETTABLEKS                       R21 R0 K0 ["getGameIdAsync"]
      160 SETTABLEKS                       R21 R20 K0 ["getGameIdAsync"]
      162 NEWCLOSURE                       R21 P2
      163 CAPTURE                          VAL R2
      164 SETTABLEKS                       R21 R20 K47 ["onAssetSelected"]
      166 CALL                             R18 2 1
      167 JUMP                             ; [+1]
      168 LOADNIL                          R18
      169 SETTABLEKS                       R18 R17 K24 ["AssetPicker"]
      171 CALL                             R14 3 1
      172 SETTABLEKS                       R14 R13 K26 ["Content"]
      174 CALL                             R10 3 1
      175 SETTABLEKS                       R10 R9 K17 ["PopoverRoot"]
      177 CALL                             R6 3 -1
      178 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["Exposed"]
       13 GETTABLEKS                       R2 R3 K8 ["AssetPicker"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Components"]
       27 GETTABLEKS                       R5 R6 K11 ["Util"]
       29 GETTABLEKS                       R4 R5 K12 ["PopoverButton"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K13 ["PropertyEditorTypes"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K14 ["PropertyTypes"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K9 ["Parent"]
       46 GETTABLEKS                       R7 R8 K15 ["React"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K9 ["Parent"]
       53 GETTABLEKS                       R8 R9 K16 ["ReactUtils"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R12 R0 K6 ["Components"]
       60 GETTABLEKS                       R11 R12 K7 ["Exposed"]
       62 GETTABLEKS                       R10 R11 K8 ["AssetPicker"]
       64 GETTABLEKS                       R9 R10 K17 ["Types"]
       66 CALL                             R8 1 1
       67 GETTABLEKS                       R9 R2 K18 ["Popover"]
       69 GETTABLEKS                       R10 R2 K19 ["View"]
       71 GETTABLEKS                       R11 R6 K20 ["createElement"]
       73 GETTABLEKS                       R12 R7 K21 ["useToggleState"]
       75 GETTABLEKS                       R13 R7 K22 ["createNextOrder"]
       77 DUPCLOSURE                       R14 K23 [PROTO_3]
       78 CAPTURE                          VAL R12
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R13
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R1
       87 RETURN                           R14 1
