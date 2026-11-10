PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Items"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["child"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["WidgetUri"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["Id"]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R1 R1 K0 ["ActivateAsync"]
        5 CALL                             R1 3 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["OnClose"]
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Items"]
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["Id"]
        9 CALL                             R0 4 -1
       10 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnToggle"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Id"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hover"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+8]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["OnHover"]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K2 ["Id"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETTABLEKS                       R1 R0 K1 ["GuiState"]
        6 GETIMPORT                        R2 K4 [Enum.GuiState.Hover]
        8 JUMPIFEQ                         R1 R2 ; [+7]
       10 GETTABLEKS                       R1 R0 K1 ["GuiState"]
       12 GETIMPORT                        R2 K6 [Enum.GuiState.Press]
       14 JUMPIFNOTEQ                      R1 R2 ; [+2]
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K7 ["OnClose"]
       20 CALL                             R1 0 0
       21 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["Definition"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useRef"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R5 0 1
       15 GETTABLEKS                       R6 R1 K3 ["Items"]
       17 SETLIST                          R5 R6 1 [1]
       19 CALL                             R3 2 1
       20 GETUPVAL                         R4 2
       21 MOVE                             R5 R3
       22 CALL                             R4 1 1
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K4 ["use"]
       26 CALL                             R5 0 1
       27 NAMECALL                         R5 R5 K5 ["get"]
       29 CALL                             R5 1 1
       30 LOADK                            R8 K6 ["Actions"]
       31 NAMECALL                         R6 R5 K7 ["GetPluginComponent"]
       33 CALL                             R6 2 1
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R7 R7 K2 ["useMemo"]
       37 NEWCLOSURE                       R8 P1
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R1
       41 NEWTABLE                         R9 0 2
       43 GETTABLEKS                       R10 R0 K8 ["WidgetUri"]
       45 GETTABLEKS                       R11 R1 K9 ["Id"]
       47 SETLIST                          R9 R10 2 [1]
       49 CALL                             R7 2 1
       50 GETUPVAL                         R8 0
       51 GETTABLEKS                       R8 R8 K10 ["useCallback"]
       53 NEWCLOSURE                       R9 P2
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R0
       57 NEWTABLE                         R10 0 3
       59 MOVE                             R11 R6
       60 MOVE                             R12 R7
       61 GETTABLEKS                       R13 R0 K11 ["OnClose"]
       63 SETLIST                          R10 R11 3 [1]
       65 CALL                             R8 2 1
       66 GETUPVAL                         R9 0
       67 GETTABLEKS                       R9 R9 K2 ["useMemo"]
       69 NEWCLOSURE                       R10 P3
       70 CAPTURE                          UPVAL U5
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R8
       74 NEWTABLE                         R11 0 4
       76 GETTABLEKS                       R12 R1 K3 ["Items"]
       78 MOVE                             R13 R4
       79 MOVE                             R14 R8
       80 GETTABLEKS                       R15 R1 K9 ["Id"]
       82 SETLIST                          R11 R12 4 [1]
       84 CALL                             R9 2 1
       85 GETUPVAL                         R10 0
       86 GETTABLEKS                       R10 R10 K10 ["useCallback"]
       88 NEWCLOSURE                       R11 P4
       89 CAPTURE                          VAL R0
       90 CAPTURE                          VAL R1
       91 NEWTABLE                         R12 0 2
       93 GETTABLEKS                       R13 R0 K12 ["OnToggle"]
       95 GETTABLEKS                       R14 R1 K9 ["Id"]
       97 SETLIST                          R12 R13 2 [1]
       99 CALL                             R10 2 1
      100 GETUPVAL                         R11 0
      101 GETTABLEKS                       R11 R11 K10 ["useCallback"]
      103 NEWCLOSURE                       R12 P5
      104 CAPTURE                          UPVAL U6
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R1
      107 NEWTABLE                         R13 0 2
      109 GETTABLEKS                       R14 R0 K13 ["OnHover"]
      111 GETTABLEKS                       R15 R1 K9 ["Id"]
      113 SETLIST                          R13 R14 2 [1]
      115 CALL                             R11 2 1
      116 GETUPVAL                         R12 0
      117 GETTABLEKS                       R12 R12 K10 ["useCallback"]
      119 NEWCLOSURE                       R13 P6
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R0
      122 NEWTABLE                         R14 0 1
      124 GETTABLEKS                       R15 R0 K11 ["OnClose"]
      126 SETLIST                          R14 R15 1 [1]
      128 CALL                             R12 2 1
      129 LENGTH                           R13 R9
      130 JUMPIFNOTEQKN                    R13 K14 [0] ; [+3]
      132 LOADNIL                          R13
      133 RETURN                           R13 1
      134 GETTABLEKS                       R14 R1 K9 ["Id"]
      136 JUMPIFNOTEQKS                    R14 K15 ["AppMenu"] ; [+33]
      138 GETUPVAL                         R13 0
      139 GETTABLEKS                       R13 R13 K16 ["createElement"]
      141 GETUPVAL                         R14 7
      142 DUPTABLE                         R15 K22 [{"ref", "icon", "size", "variant", "onActivated"}]
      143 GETUPVAL                         R17 8
      144 CALL                             R17 0 1
      145 JUMPIFNOT                        R17 ; [+2]
      146 MOVE                             R16 R2
      147 JUMP                             ; [+1]
      148 LOADNIL                          R16
      149 SETTABLEKS                       R16 R15 K17 ["ref"]
      151 GETUPVAL                         R16 9
      152 GETTABLEKS                       R16 R16 K23 ["Studio"]
      154 SETTABLEKS                       R16 R15 K18 ["icon"]
      156 GETUPVAL                         R16 10
      157 GETTABLEKS                       R16 R16 K24 ["XSmall"]
      159 SETTABLEKS                       R16 R15 K19 ["size"]
      161 GETUPVAL                         R16 11
      162 GETTABLEKS                       R16 R16 K25 ["Utility"]
      164 SETTABLEKS                       R16 R15 K20 ["variant"]
      166 SETTABLEKS                       R10 R15 K21 ["onActivated"]
      168 CALL                             R13 2 1
      169 JUMP                             ; [+30]
      170 GETUPVAL                         R13 0
      171 GETTABLEKS                       R13 R13 K16 ["createElement"]
      173 GETUPVAL                         R14 12
      174 DUPTABLE                         R15 K27 [{"ref", "text", "size", "variant", "onActivated"}]
      175 GETUPVAL                         R17 8
      176 CALL                             R17 0 1
      177 JUMPIFNOT                        R17 ; [+2]
      178 MOVE                             R16 R2
      179 JUMP                             ; [+1]
      180 LOADNIL                          R16
      181 SETTABLEKS                       R16 R15 K17 ["ref"]
      183 GETTABLEKS                       R16 R1 K28 ["Title"]
      185 SETTABLEKS                       R16 R15 K26 ["text"]
      187 GETUPVAL                         R16 10
      188 GETTABLEKS                       R16 R16 K24 ["XSmall"]
      190 SETTABLEKS                       R16 R15 K19 ["size"]
      192 GETUPVAL                         R16 11
      193 GETTABLEKS                       R16 R16 K25 ["Utility"]
      195 SETTABLEKS                       R16 R15 K20 ["variant"]
      197 SETTABLEKS                       R10 R15 K21 ["onActivated"]
      199 CALL                             R13 2 1
      200 GETUPVAL                         R14 0
      201 GETTABLEKS                       R14 R14 K16 ["createElement"]
      203 GETUPVAL                         R15 13
      204 DUPTABLE                         R16 K35 [{"isOpen", "items", "size", "side", "align", "LayoutOrder", "onPressedOutside", "onActivated"}]
      205 GETTABLEKS                       R17 R0 K36 ["IsOpen"]
      207 SETTABLEKS                       R17 R16 K29 ["isOpen"]
      209 SETTABLEKS                       R9 R16 K30 ["items"]
      211 GETUPVAL                         R17 10
      212 GETTABLEKS                       R17 R17 K24 ["XSmall"]
      214 SETTABLEKS                       R17 R16 K19 ["size"]
      216 GETUPVAL                         R17 14
      217 GETTABLEKS                       R17 R17 K37 ["Bottom"]
      219 SETTABLEKS                       R17 R16 K31 ["side"]
      221 GETUPVAL                         R17 15
      222 GETTABLEKS                       R17 R17 K38 ["Start"]
      224 SETTABLEKS                       R17 R16 K32 ["align"]
      226 GETTABLEKS                       R17 R0 K33 ["LayoutOrder"]
      228 SETTABLEKS                       R17 R16 K33 ["LayoutOrder"]
      230 GETUPVAL                         R18 8
      231 CALL                             R18 0 1
      232 JUMPIFNOT                        R18 ; [+2]
      233 MOVE                             R17 R12
      234 JUMP                             ; [+2]
      235 GETTABLEKS                       R17 R0 K11 ["OnClose"]
      237 SETTABLEKS                       R17 R16 K34 ["onPressedOutside"]
      239 GETTABLEKS                       R17 R0 K11 ["OnClose"]
      241 SETTABLEKS                       R17 R16 K21 ["onActivated"]
      243 DUPTABLE                         R17 K40 [{"Trigger"}]
      244 GETUPVAL                         R18 0
      245 GETTABLEKS                       R18 R18 K16 ["createElement"]
      247 GETUPVAL                         R19 16
      248 DUPTABLE                         R20 K44 [{["tag"] = "auto-xy", ["onStateChanged"]}]
      249 SETTABLEKS                       R11 R20 K43 ["onStateChanged"]
      251 DUPTABLE                         R21 K46 [{"Button"}]
      252 SETTABLEKS                       R13 R21 K45 ["Button"]
      254 CALL                             R18 3 1
      255 SETTABLEKS                       R18 R17 K39 ["Trigger"]
      257 CALL                             R14 3 -1
      258 RETURN                           R14 -1

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
       21 GETTABLEKS                       R3 R2 K9 ["Button"]
       23 GETTABLEKS                       R4 R2 K10 ["IconButton"]
       25 GETTABLEKS                       R5 R2 K11 ["Menu"]
       27 GETTABLEKS                       R6 R2 K12 ["View"]
       29 GETTABLEKS                       R7 R2 K13 ["Enums"]
       31 GETTABLEKS                       R7 R7 K14 ["ButtonVariant"]
       33 GETTABLEKS                       R8 R2 K13 ["Enums"]
       35 GETTABLEKS                       R8 R8 K15 ["ControlState"]
       37 GETTABLEKS                       R9 R2 K13 ["Enums"]
       39 GETTABLEKS                       R9 R9 K16 ["IconName"]
       41 GETTABLEKS                       R10 R2 K13 ["Enums"]
       43 GETTABLEKS                       R10 R10 K17 ["InputSize"]
       45 GETTABLEKS                       R11 R2 K13 ["Enums"]
       47 GETTABLEKS                       R11 R11 K18 ["PopoverAlign"]
       49 GETTABLEKS                       R12 R2 K13 ["Enums"]
       51 GETTABLEKS                       R12 R12 K19 ["PopoverSide"]
       53 GETIMPORT                        R13 K5 [require]
       55 GETTABLEKS                       R14 R0 K6 ["Packages"]
       57 GETTABLEKS                       R14 R14 K20 ["Framework"]
       59 CALL                             R13 1 1
       60 GETTABLEKS                       R14 R13 K21 ["ContextServices"]
       62 GETTABLEKS                       R14 R14 K22 ["Plugin"]
       64 GETIMPORT                        R15 K5 [require]
       66 GETTABLEKS                       R16 R0 K6 ["Packages"]
       68 GETTABLEKS                       R16 R16 K23 ["StudioFoundation"]
       70 CALL                             R15 1 1
       71 GETTABLEKS                       R16 R15 K24 ["Util"]
       73 GETTABLEKS                       R16 R16 K25 ["StudioUri"]
       75 GETIMPORT                        R17 K5 [require]
       77 GETTABLEKS                       R18 R0 K26 ["Src"]
       79 GETTABLEKS                       R18 R18 K27 ["Hooks"]
       81 GETTABLEKS                       R18 R18 K28 ["useControls"]
       83 CALL                             R17 1 1
       84 GETIMPORT                        R18 K5 [require]
       86 GETTABLEKS                       R19 R0 K26 ["Src"]
       88 GETTABLEKS                       R19 R19 K29 ["SharedFlags"]
       90 GETTABLEKS                       R19 R19 K30 ["getFFlagRibbonSystemMenuFixes"]
       92 CALL                             R18 1 1
       93 GETIMPORT                        R19 K5 [require]
       95 GETTABLEKS                       R20 R0 K26 ["Src"]
       97 GETTABLEKS                       R20 R20 K24 ["Util"]
       99 GETTABLEKS                       R20 R20 K31 ["systemMenuEntriesToControls"]
      101 CALL                             R19 1 1
      102 GETIMPORT                        R20 K5 [require]
      104 GETTABLEKS                       R21 R0 K26 ["Src"]
      106 GETTABLEKS                       R21 R21 K24 ["Util"]
      108 GETTABLEKS                       R21 R21 K32 ["systemMenuEntriesToMenuItems"]
      110 CALL                             R20 1 1
      111 DUPCLOSURE                       R21 K33 [PROTO_7]
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R19
      114 CAPTURE                          VAL R17
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R16
      117 CAPTURE                          VAL R20
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R18
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R6
      129 RETURN                           R21 1
