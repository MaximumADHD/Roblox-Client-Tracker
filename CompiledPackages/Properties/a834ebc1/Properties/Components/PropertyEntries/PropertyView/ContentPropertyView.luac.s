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
       12 GETTABLEKS                       R3 R0 K4 ["shareAccessToAssetsAsync"]
       14 JUMPIFNOTEQKNIL                  R3 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       20 LOADK                            R3 K5 ["ContentPropertyView: no shareAccessToAssetsAsync function provided"]
       21 GETIMPORT                        R1 K3 [assert]
       23 CALL                             R1 2 0
       24 GETUPVAL                         R1 0
       25 CALL                             R1 0 1
       26 GETUPVAL                         R2 0
       27 CALL                             R2 0 1
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R3 R4 K6 ["useCallback"]
       31 NEWCLOSURE                       R4 P0
       32 CAPTURE                          VAL R1
       33 CAPTURE                          UPVAL U2
       34 NEWTABLE                         R5 0 0
       36 CALL                             R3 2 1
       37 GETUPVAL                         R5 1
       38 GETTABLEKS                       R4 R5 K6 ["useCallback"]
       40 NEWCLOSURE                       R5 P1
       41 CAPTURE                          VAL R2
       42 NEWTABLE                         R6 0 0
       44 CALL                             R4 2 1
       45 GETUPVAL                         R5 3
       46 CALL                             R5 0 1
       47 GETUPVAL                         R6 4
       48 GETUPVAL                         R7 5
       49 DUPTABLE                         R8 K10 [{"tag", "stateLayer", "onStateChanged"}]
       50 NEWTABLE                         R9 2 0
       52 LOADB                            R10 1
       53 SETTABLEKS                       R10 R9 K11 ["size-full-600 bg-shift-200 row radius-small"]
       55 GETTABLEKS                       R10 R1 K12 ["enabled"]
       57 SETTABLEKS                       R10 R9 K13 ["stroke-emphasis"]
       59 SETTABLEKS                       R9 R8 K7 ["tag"]
       61 DUPTABLE                         R9 K15 [{"affordance"}]
       62 GETUPVAL                         R13 2
       63 GETTABLEKS                       R12 R13 K16 ["Enums"]
       65 GETTABLEKS                       R11 R12 K17 ["StateLayerAffordance"]
       67 GETTABLEKS                       R10 R11 K18 ["None"]
       69 SETTABLEKS                       R10 R9 K14 ["affordance"]
       71 SETTABLEKS                       R9 R8 K8 ["stateLayer"]
       73 SETTABLEKS                       R3 R8 K9 ["onStateChanged"]
       75 DUPTABLE                         R9 K20 [{"PopoverRoot"}]
       76 GETUPVAL                         R10 4
       77 GETUPVAL                         R12 6
       78 GETTABLEKS                       R11 R12 K21 ["Root"]
       80 DUPTABLE                         R12 K25 [{"isOpen", "LayoutOrder", "testId"}]
       81 GETTABLEKS                       R13 R2 K12 ["enabled"]
       83 SETTABLEKS                       R13 R12 K22 ["isOpen"]
       85 MOVE                             R13 R5
       86 CALL                             R13 0 1
       87 SETTABLEKS                       R13 R12 K23 ["LayoutOrder"]
       89 LOADK                            R13 K26 ["AssetPicker"]
       90 SETTABLEKS                       R13 R12 K24 ["testId"]
       92 DUPTABLE                         R13 K29 [{"Anchor", "Content"}]
       93 GETUPVAL                         R14 4
       94 GETUPVAL                         R16 6
       95 GETTABLEKS                       R15 R16 K27 ["Anchor"]
       97 NEWTABLE                         R16 0 0
       99 DUPTABLE                         R17 K31 [{"AssetPickerButton"}]
      100 GETUPVAL                         R18 4
      101 GETUPVAL                         R19 7
      102 DUPTABLE                         R20 K33 [{"onActivated"}]
      103 SETTABLEKS                       R4 R20 K32 ["onActivated"]
      105 NEWTABLE                         R21 0 0
      107 CALL                             R18 3 1
      108 SETTABLEKS                       R18 R17 K30 ["AssetPickerButton"]
      110 CALL                             R14 3 1
      111 SETTABLEKS                       R14 R13 K27 ["Anchor"]
      113 GETUPVAL                         R14 4
      114 GETUPVAL                         R16 6
      115 GETTABLEKS                       R15 R16 K28 ["Content"]
      117 DUPTABLE                         R16 K38 [{"hasArrow", "onPressedOutside", "align", "side"}]
      118 LOADB                            R17 0
      119 SETTABLEKS                       R17 R16 K34 ["hasArrow"]
      121 GETTABLEKS                       R17 R2 K39 ["disable"]
      123 SETTABLEKS                       R17 R16 K35 ["onPressedOutside"]
      125 DUPTABLE                         R17 K42 [{"position", "offset"}]
      126 GETUPVAL                         R21 2
      127 GETTABLEKS                       R20 R21 K16 ["Enums"]
      129 GETTABLEKS                       R19 R20 K43 ["PopoverAlign"]
      131 GETTABLEKS                       R18 R19 K44 ["Start"]
      133 SETTABLEKS                       R18 R17 K40 ["position"]
      135 LOADN                            R18 0
      136 SETTABLEKS                       R18 R17 K41 ["offset"]
      138 SETTABLEKS                       R17 R16 K36 ["align"]
      140 DUPTABLE                         R17 K42 [{"position", "offset"}]
      141 GETUPVAL                         R21 2
      142 GETTABLEKS                       R20 R21 K16 ["Enums"]
      144 GETTABLEKS                       R19 R20 K45 ["PopoverSide"]
      146 GETTABLEKS                       R18 R19 K46 ["Bottom"]
      148 SETTABLEKS                       R18 R17 K40 ["position"]
      150 LOADN                            R18 8
      151 SETTABLEKS                       R18 R17 K41 ["offset"]
      153 SETTABLEKS                       R17 R16 K37 ["side"]
      155 DUPTABLE                         R17 K47 [{"AssetPicker"}]
      156 GETTABLEKS                       R19 R2 K12 ["enabled"]
      158 JUMPIFNOT                        R19 ; [+25]
      159 GETUPVAL                         R18 4
      160 GETUPVAL                         R19 8
      161 DUPTABLE                         R20 K50 [{"assetType", "onAssetSelected", "getGameIdAsync", "shareAccessToAssetsAsync"}]
      162 GETTABLEKS                       R23 R0 K51 ["info"]
      164 GETTABLEKS                       R22 R23 K52 ["extra"]
      166 GETTABLEKS                       R21 R22 K48 ["assetType"]
      168 SETTABLEKS                       R21 R20 K48 ["assetType"]
      170 NEWCLOSURE                       R21 P2
      171 CAPTURE                          VAL R2
      172 SETTABLEKS                       R21 R20 K49 ["onAssetSelected"]
      174 GETTABLEKS                       R21 R0 K0 ["getGameIdAsync"]
      176 SETTABLEKS                       R21 R20 K0 ["getGameIdAsync"]
      178 GETTABLEKS                       R21 R0 K4 ["shareAccessToAssetsAsync"]
      180 SETTABLEKS                       R21 R20 K4 ["shareAccessToAssetsAsync"]
      182 CALL                             R18 2 1
      183 JUMP                             ; [+1]
      184 LOADNIL                          R18
      185 SETTABLEKS                       R18 R17 K26 ["AssetPicker"]
      187 CALL                             R14 3 1
      188 SETTABLEKS                       R14 R13 K28 ["Content"]
      190 CALL                             R10 3 1
      191 SETTABLEKS                       R10 R9 K19 ["PopoverRoot"]
      193 CALL                             R6 3 -1
      194 RETURN                           R6 -1

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
