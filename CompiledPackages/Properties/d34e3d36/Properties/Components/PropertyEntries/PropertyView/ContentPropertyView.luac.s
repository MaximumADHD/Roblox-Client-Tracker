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
       25 GETTABLEKS                       R1 R2 K6 ["useSignalState"]
       27 GETTABLEKS                       R2 R0 K7 ["getInfo"]
       29 CALL                             R1 1 1
       30 GETUPVAL                         R3 1
       31 GETTABLEKS                       R2 R3 K8 ["use"]
       33 GETTABLEKS                       R3 R0 K0 ["gameIdObservable"]
       35 CALL                             R2 1 1
       36 GETUPVAL                         R3 2
       37 CALL                             R3 0 1
       38 GETUPVAL                         R4 2
       39 CALL                             R4 0 1
       40 GETUPVAL                         R6 3
       41 GETTABLEKS                       R5 R6 K9 ["useCallback"]
       43 NEWCLOSURE                       R6 P0
       44 CAPTURE                          VAL R3
       45 CAPTURE                          UPVAL U4
       46 NEWTABLE                         R7 0 0
       48 CALL                             R5 2 1
       49 GETUPVAL                         R7 3
       50 GETTABLEKS                       R6 R7 K9 ["useCallback"]
       52 NEWCLOSURE                       R7 P1
       53 CAPTURE                          VAL R4
       54 NEWTABLE                         R8 0 0
       56 CALL                             R6 2 1
       57 GETUPVAL                         R7 5
       58 CALL                             R7 0 1
       59 GETUPVAL                         R8 6
       60 GETUPVAL                         R9 7
       61 DUPTABLE                         R10 K13 [{"tag", "stateLayer", "onStateChanged"}]
       62 NEWTABLE                         R11 2 0
       64 LOADB                            R12 1
       65 SETTABLEKS                       R12 R11 K14 ["size-full-600 bg-shift-200 row radius-small"]
       67 GETTABLEKS                       R12 R3 K15 ["enabled"]
       69 SETTABLEKS                       R12 R11 K16 ["stroke-emphasis"]
       71 SETTABLEKS                       R11 R10 K10 ["tag"]
       73 DUPTABLE                         R11 K18 [{"affordance"}]
       74 GETUPVAL                         R15 4
       75 GETTABLEKS                       R14 R15 K19 ["Enums"]
       77 GETTABLEKS                       R13 R14 K20 ["StateLayerAffordance"]
       79 GETTABLEKS                       R12 R13 K21 ["None"]
       81 SETTABLEKS                       R12 R11 K17 ["affordance"]
       83 SETTABLEKS                       R11 R10 K11 ["stateLayer"]
       85 SETTABLEKS                       R5 R10 K12 ["onStateChanged"]
       87 DUPTABLE                         R11 K23 [{"PopoverRoot"}]
       88 GETUPVAL                         R12 6
       89 GETUPVAL                         R14 8
       90 GETTABLEKS                       R13 R14 K24 ["Root"]
       92 DUPTABLE                         R14 K28 [{"isOpen", "LayoutOrder", "testId"}]
       93 GETTABLEKS                       R15 R4 K15 ["enabled"]
       95 SETTABLEKS                       R15 R14 K25 ["isOpen"]
       97 MOVE                             R15 R7
       98 CALL                             R15 0 1
       99 SETTABLEKS                       R15 R14 K26 ["LayoutOrder"]
      101 LOADK                            R15 K29 ["AssetPicker"]
      102 SETTABLEKS                       R15 R14 K27 ["testId"]
      104 DUPTABLE                         R15 K32 [{"Anchor", "Content"}]
      105 GETUPVAL                         R16 6
      106 GETUPVAL                         R18 8
      107 GETTABLEKS                       R17 R18 K30 ["Anchor"]
      109 NEWTABLE                         R18 0 0
      111 DUPTABLE                         R19 K34 [{"AssetPickerButton"}]
      112 GETUPVAL                         R20 6
      113 GETUPVAL                         R21 9
      114 DUPTABLE                         R22 K36 [{"onActivated"}]
      115 SETTABLEKS                       R6 R22 K35 ["onActivated"]
      117 CALL                             R20 2 1
      118 SETTABLEKS                       R20 R19 K33 ["AssetPickerButton"]
      120 CALL                             R16 3 1
      121 SETTABLEKS                       R16 R15 K30 ["Anchor"]
      123 GETUPVAL                         R16 6
      124 GETUPVAL                         R18 8
      125 GETTABLEKS                       R17 R18 K31 ["Content"]
      127 DUPTABLE                         R18 K41 [{"hasArrow", "onPressedOutside", "align", "side"}]
      128 LOADB                            R19 0
      129 SETTABLEKS                       R19 R18 K37 ["hasArrow"]
      131 GETTABLEKS                       R19 R4 K42 ["disable"]
      133 SETTABLEKS                       R19 R18 K38 ["onPressedOutside"]
      135 DUPTABLE                         R19 K45 [{"position", "offset"}]
      136 GETUPVAL                         R23 4
      137 GETTABLEKS                       R22 R23 K19 ["Enums"]
      139 GETTABLEKS                       R21 R22 K46 ["PopoverAlign"]
      141 GETTABLEKS                       R20 R21 K47 ["Start"]
      143 SETTABLEKS                       R20 R19 K43 ["position"]
      145 LOADN                            R20 0
      146 SETTABLEKS                       R20 R19 K44 ["offset"]
      148 SETTABLEKS                       R19 R18 K39 ["align"]
      150 DUPTABLE                         R19 K45 [{"position", "offset"}]
      151 GETUPVAL                         R23 4
      152 GETTABLEKS                       R22 R23 K19 ["Enums"]
      154 GETTABLEKS                       R21 R22 K48 ["PopoverSide"]
      156 GETTABLEKS                       R20 R21 K49 ["Bottom"]
      158 SETTABLEKS                       R20 R19 K43 ["position"]
      160 LOADN                            R20 8
      161 SETTABLEKS                       R20 R19 K44 ["offset"]
      163 SETTABLEKS                       R19 R18 K40 ["side"]
      165 DUPTABLE                         R19 K50 [{"AssetPicker"}]
      166 GETTABLEKS                       R21 R4 K15 ["enabled"]
      168 JUMPIFNOT                        R21 ; [+21]
      169 GETUPVAL                         R20 6
      170 GETUPVAL                         R21 10
      171 DUPTABLE                         R22 K54 [{"assetType", "gameId", "onAssetSelected", "shareAccessToAssetsAsync"}]
      172 GETTABLEKS                       R24 R1 K55 ["extra"]
      174 GETTABLEKS                       R23 R24 K51 ["assetType"]
      176 SETTABLEKS                       R23 R22 K51 ["assetType"]
      178 SETTABLEKS                       R2 R22 K52 ["gameId"]
      180 NEWCLOSURE                       R23 P2
      181 CAPTURE                          VAL R4
      182 SETTABLEKS                       R23 R22 K53 ["onAssetSelected"]
      184 GETTABLEKS                       R23 R0 K4 ["shareAccessToAssetsAsync"]
      186 SETTABLEKS                       R23 R22 K4 ["shareAccessToAssetsAsync"]
      188 CALL                             R20 2 1
      189 JUMP                             ; [+1]
      190 LOADNIL                          R20
      191 SETTABLEKS                       R20 R19 K29 ["AssetPicker"]
      193 CALL                             R16 3 1
      194 SETTABLEKS                       R16 R15 K31 ["Content"]
      196 CALL                             R12 3 1
      197 SETTABLEKS                       R12 R11 K22 ["PopoverRoot"]
      199 CALL                             R8 3 -1
      200 RETURN                           R8 -1

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
       20 GETTABLEKS                       R5 R0 K4 ["Parent"]
       22 GETTABLEKS                       R4 R5 K10 ["Foundation"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R6 R0 K11 ["Util"]
       29 GETTABLEKS                       R5 R6 K12 ["Observable"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R8 R0 K7 ["Components"]
       36 GETTABLEKS                       R7 R8 K11 ["Util"]
       38 GETTABLEKS                       R6 R7 K13 ["PopoverButton"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETTABLEKS                       R7 R0 K14 ["PropertyTypes"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETIMPORT                        R10 K1 [script]
       50 GETTABLEKS                       R9 R10 K4 ["Parent"]
       52 GETTABLEKS                       R8 R9 K15 ["PropertyViewTypes"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R10 R0 K4 ["Parent"]
       59 GETTABLEKS                       R9 R10 K16 ["React"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K6 [require]
       64 GETTABLEKS                       R11 R0 K4 ["Parent"]
       66 GETTABLEKS                       R10 R11 K17 ["ReactUtils"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K6 [require]
       71 GETTABLEKS                       R11 R1 K18 ["SignalsReact"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K6 [require]
       76 GETTABLEKS                       R15 R0 K7 ["Components"]
       78 GETTABLEKS                       R14 R15 K8 ["Exposed"]
       80 GETTABLEKS                       R13 R14 K9 ["AssetPicker"]
       82 GETTABLEKS                       R12 R13 K19 ["Types"]
       84 CALL                             R11 1 1
       85 GETTABLEKS                       R12 R3 K20 ["Popover"]
       87 GETTABLEKS                       R13 R3 K21 ["View"]
       89 GETTABLEKS                       R14 R8 K22 ["createElement"]
       91 GETTABLEKS                       R15 R9 K23 ["useToggleState"]
       93 GETTABLEKS                       R16 R9 K24 ["createNextOrder"]
       95 DUPCLOSURE                       R17 K25 [PROTO_3]
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R15
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R16
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R2
      107 RETURN                           R17 1
