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
        0 GETTABLEKS                       R3 R0 K0 ["gameIdObservable"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["ContentPropertyView: no gameIdObservable provided"]
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
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R1 R2 K6 ["useContext"]
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R2 R3 K7 ["Context"]
       30 CALL                             R1 1 1
       31 GETUPVAL                         R3 2
       32 GETTABLEKS                       R2 R3 K8 ["useSignalState"]
       34 GETTABLEKS                       R3 R0 K9 ["getInfo"]
       36 CALL                             R2 1 1
       37 GETUPVAL                         R4 3
       38 GETTABLEKS                       R3 R4 K10 ["use"]
       40 GETTABLEKS                       R4 R0 K0 ["gameIdObservable"]
       42 CALL                             R3 1 1
       43 GETUPVAL                         R4 4
       44 CALL                             R4 0 1
       45 GETUPVAL                         R5 4
       46 CALL                             R5 0 1
       47 GETUPVAL                         R7 0
       48 GETTABLEKS                       R6 R7 K11 ["useCallback"]
       50 NEWCLOSURE                       R7 P0
       51 CAPTURE                          VAL R4
       52 CAPTURE                          UPVAL U5
       53 NEWTABLE                         R8 0 0
       55 CALL                             R6 2 1
       56 GETUPVAL                         R8 0
       57 GETTABLEKS                       R7 R8 K11 ["useCallback"]
       59 NEWCLOSURE                       R8 P1
       60 CAPTURE                          VAL R5
       61 NEWTABLE                         R9 0 0
       63 CALL                             R7 2 1
       64 GETUPVAL                         R8 6
       65 CALL                             R8 0 1
       66 GETUPVAL                         R9 7
       67 GETUPVAL                         R10 8
       68 DUPTABLE                         R11 K15 [{"tag", "stateLayer", "onStateChanged"}]
       69 NEWTABLE                         R12 2 0
       71 LOADB                            R13 1
       72 SETTABLEKS                       R13 R12 K16 ["size-full-600 bg-shift-200 row radius-small"]
       74 GETTABLEKS                       R13 R4 K17 ["enabled"]
       76 SETTABLEKS                       R13 R12 K18 ["stroke-emphasis"]
       78 SETTABLEKS                       R12 R11 K12 ["tag"]
       80 DUPTABLE                         R12 K20 [{"affordance"}]
       81 GETUPVAL                         R16 5
       82 GETTABLEKS                       R15 R16 K21 ["Enums"]
       84 GETTABLEKS                       R14 R15 K22 ["StateLayerAffordance"]
       86 GETTABLEKS                       R13 R14 K23 ["None"]
       88 SETTABLEKS                       R13 R12 K19 ["affordance"]
       90 SETTABLEKS                       R12 R11 K13 ["stateLayer"]
       92 SETTABLEKS                       R6 R11 K14 ["onStateChanged"]
       94 DUPTABLE                         R12 K25 [{"PopoverRoot"}]
       95 GETUPVAL                         R13 7
       96 GETUPVAL                         R15 9
       97 GETTABLEKS                       R14 R15 K26 ["Root"]
       99 DUPTABLE                         R15 K30 [{"isOpen", "LayoutOrder", "testId"}]
      100 GETTABLEKS                       R16 R5 K17 ["enabled"]
      102 SETTABLEKS                       R16 R15 K27 ["isOpen"]
      104 MOVE                             R16 R8
      105 CALL                             R16 0 1
      106 SETTABLEKS                       R16 R15 K28 ["LayoutOrder"]
      108 LOADK                            R16 K31 ["AssetPicker"]
      109 SETTABLEKS                       R16 R15 K29 ["testId"]
      111 DUPTABLE                         R16 K34 [{"Anchor", "Content"}]
      112 GETUPVAL                         R17 7
      113 GETUPVAL                         R19 9
      114 GETTABLEKS                       R18 R19 K32 ["Anchor"]
      116 NEWTABLE                         R19 0 0
      118 DUPTABLE                         R20 K36 [{"AssetPickerButton"}]
      119 GETUPVAL                         R21 7
      120 GETUPVAL                         R22 10
      121 DUPTABLE                         R23 K38 [{"onActivated"}]
      122 SETTABLEKS                       R7 R23 K37 ["onActivated"]
      124 DUPTABLE                         R24 K40 [{"PlaceholderIcon"}]
      125 GETUPVAL                         R25 7
      126 GETUPVAL                         R27 5
      127 GETTABLEKS                       R26 R27 K41 ["Image"]
      129 DUPTABLE                         R27 K42 [{"tag", "Image"}]
      130 LOADK                            R28 K43 ["size-400 anchor-center-center position-center-center"]
      131 SETTABLEKS                       R28 R27 K12 ["tag"]
      133 GETTABLEKS                       R29 R1 K44 ["getMultipleIcon"]
      135 CALL                             R29 0 1
      136 GETTABLEKS                       R28 R29 K41 ["Image"]
      138 SETTABLEKS                       R28 R27 K41 ["Image"]
      140 CALL                             R25 2 1
      141 SETTABLEKS                       R25 R24 K39 ["PlaceholderIcon"]
      143 CALL                             R21 3 1
      144 SETTABLEKS                       R21 R20 K35 ["AssetPickerButton"]
      146 CALL                             R17 3 1
      147 SETTABLEKS                       R17 R16 K32 ["Anchor"]
      149 GETUPVAL                         R17 7
      150 GETUPVAL                         R19 9
      151 GETTABLEKS                       R18 R19 K33 ["Content"]
      153 DUPTABLE                         R19 K49 [{"hasArrow", "onPressedOutside", "align", "side"}]
      154 LOADB                            R20 0
      155 SETTABLEKS                       R20 R19 K45 ["hasArrow"]
      157 GETTABLEKS                       R20 R5 K50 ["disable"]
      159 SETTABLEKS                       R20 R19 K46 ["onPressedOutside"]
      161 DUPTABLE                         R20 K53 [{"position", "offset"}]
      162 GETUPVAL                         R24 5
      163 GETTABLEKS                       R23 R24 K21 ["Enums"]
      165 GETTABLEKS                       R22 R23 K54 ["PopoverAlign"]
      167 GETTABLEKS                       R21 R22 K55 ["Start"]
      169 SETTABLEKS                       R21 R20 K51 ["position"]
      171 LOADN                            R21 0
      172 SETTABLEKS                       R21 R20 K52 ["offset"]
      174 SETTABLEKS                       R20 R19 K47 ["align"]
      176 DUPTABLE                         R20 K53 [{"position", "offset"}]
      177 GETUPVAL                         R24 5
      178 GETTABLEKS                       R23 R24 K21 ["Enums"]
      180 GETTABLEKS                       R22 R23 K56 ["PopoverSide"]
      182 GETTABLEKS                       R21 R22 K57 ["Bottom"]
      184 SETTABLEKS                       R21 R20 K51 ["position"]
      186 LOADN                            R21 8
      187 SETTABLEKS                       R21 R20 K52 ["offset"]
      189 SETTABLEKS                       R20 R19 K48 ["side"]
      191 DUPTABLE                         R20 K58 [{"AssetPicker"}]
      192 GETTABLEKS                       R22 R5 K17 ["enabled"]
      194 JUMPIFNOT                        R22 ; [+23]
      195 GETUPVAL                         R21 7
      196 GETUPVAL                         R22 11
      197 DUPTABLE                         R23 K62 [{"assetType", "gameId", "onAssetSelected", "shareAccessToAssetsAsync"}]
      198 GETTABLEKS                       R26 R2 K63 ["extra"]
      200 GETTABLEKS                       R25 R26 K59 ["assetType"]
      202 GETTABLEKS                       R24 R25 K64 ["Name"]
      204 SETTABLEKS                       R24 R23 K59 ["assetType"]
      206 SETTABLEKS                       R3 R23 K60 ["gameId"]
      208 NEWCLOSURE                       R24 P2
      209 CAPTURE                          VAL R5
      210 SETTABLEKS                       R24 R23 K61 ["onAssetSelected"]
      212 GETTABLEKS                       R24 R0 K4 ["shareAccessToAssetsAsync"]
      214 SETTABLEKS                       R24 R23 K4 ["shareAccessToAssetsAsync"]
      216 CALL                             R21 2 1
      217 JUMP                             ; [+1]
      218 LOADNIL                          R21
      219 SETTABLEKS                       R21 R20 K31 ["AssetPicker"]
      221 CALL                             R17 3 1
      222 SETTABLEKS                       R17 R16 K33 ["Content"]
      224 CALL                             R13 3 1
      225 SETTABLEKS                       R13 R12 K24 ["PopoverRoot"]
      227 CALL                             R9 3 -1
      228 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R5 R0 K7 ["Components"]
       13 GETTABLEKS                       R4 R5 K8 ["Exposed"]
       15 GETTABLEKS                       R3 R4 K9 ["AssetPicker"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R7 R0 K7 ["Components"]
       22 GETTABLEKS                       R6 R7 K8 ["Exposed"]
       24 GETTABLEKS                       R5 R6 K9 ["AssetPicker"]
       26 GETTABLEKS                       R4 R5 K10 ["Types"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K6 [require]
       31 GETTABLEKS                       R7 R0 K7 ["Components"]
       33 GETTABLEKS                       R6 R7 K11 ["Contexts"]
       35 GETTABLEKS                       R5 R6 K12 ["ClassIconContext"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K6 [require]
       40 GETTABLEKS                       R7 R0 K4 ["Parent"]
       42 GETTABLEKS                       R6 R7 K13 ["Foundation"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K6 [require]
       47 GETTABLEKS                       R8 R0 K14 ["Util"]
       49 GETTABLEKS                       R7 R8 K15 ["Observable"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K6 [require]
       54 GETTABLEKS                       R10 R0 K7 ["Components"]
       56 GETTABLEKS                       R9 R10 K14 ["Util"]
       58 GETTABLEKS                       R8 R9 K16 ["PopoverButton"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K6 [require]
       63 GETTABLEKS                       R9 R0 K17 ["PropertyTypes"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K6 [require]
       68 GETIMPORT                        R12 K1 [script]
       70 GETTABLEKS                       R11 R12 K4 ["Parent"]
       72 GETTABLEKS                       R10 R11 K18 ["PropertyViewTypes"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K6 [require]
       77 GETTABLEKS                       R12 R0 K4 ["Parent"]
       79 GETTABLEKS                       R11 R12 K19 ["React"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K6 [require]
       84 GETTABLEKS                       R13 R0 K4 ["Parent"]
       86 GETTABLEKS                       R12 R13 K20 ["ReactUtils"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K6 [require]
       91 GETTABLEKS                       R13 R1 K21 ["SignalsReact"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K6 [require]
       96 GETTABLEKS                       R17 R0 K7 ["Components"]
       98 GETTABLEKS                       R16 R17 K8 ["Exposed"]
      100 GETTABLEKS                       R15 R16 K9 ["AssetPicker"]
      102 GETTABLEKS                       R14 R15 K10 ["Types"]
      104 CALL                             R13 1 1
      105 GETTABLEKS                       R14 R5 K22 ["Popover"]
      107 GETTABLEKS                       R15 R5 K23 ["View"]
      109 GETTABLEKS                       R16 R10 K24 ["createElement"]
      111 GETTABLEKS                       R17 R11 K25 ["useToggleState"]
      113 GETTABLEKS                       R18 R11 K26 ["createNextOrder"]
      115 DUPCLOSURE                       R19 K27 [PROTO_3]
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R17
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R18
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R14
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R2
      128 RETURN                           R19 1
