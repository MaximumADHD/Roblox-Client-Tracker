PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setBypass"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["bypass"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["DisplaySettings"]
        4 CALL                             R1 1 1
        5 GETTABLE                         R3 R1 R0
        6 NOT                              R2 R3
        7 SETTABLE                         R2 R1 R0
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K1 ["SetDisplaySettings"]
       11 JUMPIFNOT                        R2 ; [+5]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K1 ["SetDisplaySettings"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["createElement"]
        4 GETUPVAL                         R3 2
        5 DUPTABLE                         R4 K5 [{"LayoutOrder", "Text", "Checked", "OnClick"}]
        6 GETUPVAL                         R5 3
        7 NAMECALL                         R5 R5 K6 ["getNextOrder"]
        9 CALL                             R5 1 1
       10 SETTABLEKS                       R5 R4 K1 ["LayoutOrder"]
       12 GETUPVAL                         R5 4
       13 LOADK                            R7 K7 ["Label"]
       14 MOVE                             R8 R0
       15 NAMECALL                         R5 R5 K8 ["getText"]
       17 CALL                             R5 3 1
       18 SETTABLEKS                       R5 R4 K2 ["Text"]
       20 GETUPVAL                         R7 5
       21 GETTABLEKS                       R6 R7 K9 ["DisplaySettings"]
       23 GETTABLE                         R5 R6 R0
       24 SETTABLEKS                       R5 R4 K3 ["Checked"]
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R5 R4 K4 ["OnClick"]
       31 CALL                             R2 2 1
       32 SETTABLE                         R2 R1 R0
       33 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["IsPaused"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["DataHook"]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K1 ["Context"]
        6 GETTABLEKS                       R3 R4 K2 ["Consumer"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K3 ["Localization"]
       12 GETTABLEKS                       R4 R5 K4 ["Key"]
       14 GETTABLE                         R3 R2 R4
       15 GETUPVAL                         R4 2
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R1
       18 NEWTABLE                         R6 0 1
       20 MOVE                             R7 R1
       21 SETLIST                          R6 R7 1 [1]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 2
       25 NEWCLOSURE                       R6 P1
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R0
       28 NEWTABLE                         R7 0 2
       30 GETTABLEKS                       R8 R0 K5 ["DisplaySettings"]
       32 GETTABLEKS                       R9 R0 K6 ["SetDisplaySettings"]
       34 SETLIST                          R7 R8 2 [1]
       36 CALL                             R5 2 1
       37 NEWTABLE                         R6 0 0
       39 NEWCLOSURE                       R7 P2
       40 CAPTURE                          VAL R6
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R5
       47 GETUPVAL                         R9 4
       48 GETTABLEKS                       R8 R9 K7 ["createElement"]
       50 GETUPVAL                         R9 5
       51 DUPTABLE                         R10 K12 [{"LayoutOrder", "Text", "Checked", "OnClick"}]
       52 GETUPVAL                         R11 6
       53 NAMECALL                         R11 R11 K13 ["getNextOrder"]
       55 CALL                             R11 1 1
       56 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
       58 LOADK                            R13 K14 ["Label"]
       59 LOADK                            R14 K15 ["Bypass"]
       60 NAMECALL                         R11 R3 K16 ["getText"]
       62 CALL                             R11 3 1
       63 SETTABLEKS                       R11 R10 K9 ["Text"]
       65 GETTABLEKS                       R11 R1 K17 ["bypass"]
       67 SETTABLEKS                       R11 R10 K10 ["Checked"]
       69 SETTABLEKS                       R4 R10 K11 ["OnClick"]
       71 CALL                             R8 2 1
       72 SETTABLEKS                       R8 R6 K15 ["Bypass"]
       74 GETUPVAL                         R9 4
       75 GETTABLEKS                       R8 R9 K7 ["createElement"]
       77 LOADK                            R9 K18 ["ImageButton"]
       78 NEWTABLE                         R10 8 0
       80 GETUPVAL                         R11 6
       81 NAMECALL                         R11 R11 K13 ["getNextOrder"]
       83 CALL                             R11 1 1
       84 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
       86 GETIMPORT                        R11 K21 [UDim2.fromOffset]
       88 LOADN                            R12 25
       89 LOADN                            R13 25
       90 CALL                             R11 2 1
       91 SETTABLEKS                       R11 R10 K22 ["Size"]
       93 GETTABLEKS                       R13 R0 K5 ["DisplaySettings"]
       95 GETTABLEKS                       R12 R13 K23 ["IsPaused"]
       97 JUMPIFNOT                        R12 ; [+2]
       98 LOADK                            R11 K24 ["rbxasset://textures/AnimationEditor/button_control_play.png"]
       99 JUMP                             ; [+1]
      100 LOADK                            R11 K25 ["rbxasset://textures/AnimationEditor/button_pause_white@2x.png"]
      101 SETTABLEKS                       R11 R10 K26 ["Image"]
      103 GETUPVAL                         R12 4
      104 GETTABLEKS                       R11 R12 K27 ["Tag"]
      106 LOADK                            R12 K28 ["TopButton"]
      107 SETTABLE                         R12 R10 R11
      108 GETUPVAL                         R13 4
      109 GETTABLEKS                       R12 R13 K29 ["Event"]
      111 GETTABLEKS                       R11 R12 K30 ["Activated"]
      113 NEWCLOSURE                       R12 P3
      114 CAPTURE                          VAL R5
      115 SETTABLE                         R12 R10 R11
      116 CALL                             R8 2 1
      117 SETTABLEKS                       R8 R6 K31 ["Paused"]
      119 MOVE                             R8 R7
      120 LOADK                            R9 K32 ["ShowEnvelope"]
      121 CALL                             R8 1 0
      122 MOVE                             R8 R7
      123 LOADK                            R9 K33 ["ShowInputWaveform"]
      124 CALL                             R8 1 0
      125 MOVE                             R8 R7
      126 LOADK                            R9 K34 ["ShowOutputWaveform"]
      127 CALL                             R8 1 0
      128 MOVE                             R8 R7
      129 LOADK                            R9 K35 ["ShowGainChange"]
      130 CALL                             R8 1 0
      131 GETTABLEKS                       R9 R0 K0 ["DataHook"]
      133 GETTABLEKS                       R8 R9 K36 ["instanceType"]
      135 JUMPIFNOTEQKS                    R8 K37 ["AudioCompressor"] ; [+4]
      137 MOVE                             R8 R7
      138 LOADK                            R9 K38 ["ShowSidechain"]
      139 CALL                             R8 1 0
      140 GETUPVAL                         R9 4
      141 GETTABLEKS                       R8 R9 K7 ["createElement"]
      143 GETUPVAL                         R9 7
      144 NEWTABLE                         R10 4 0
      146 GETIMPORT                        R11 K40 [UDim2.new]
      148 LOADN                            R12 1
      149 LOADN                            R13 0
      150 LOADN                            R14 0
      151 LOADN                            R15 25
      152 CALL                             R11 4 1
      153 SETTABLEKS                       R11 R10 K22 ["Size"]
      155 LOADN                            R11 1
      156 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
      158 GETUPVAL                         R12 4
      159 GETTABLEKS                       R11 R12 K27 ["Tag"]
      161 LOADK                            R12 K41 ["X-RowM"]
      162 SETTABLE                         R12 R10 R11
      163 MOVE                             R11 R6
      164 CALL                             R8 3 -1
      165 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 LOADK                            R3 K3 ["AudioCompressorEditor"]
        6 NAMECALL                         R1 R0 K4 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R1 K7 ["Packages"]
       13 GETTABLEKS                       R3 R4 K8 ["React"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K9 ["useCallback"]
       18 GETTABLEKS                       R4 R2 K10 ["useContext"]
       20 GETIMPORT                        R5 K6 [require]
       22 GETTABLEKS                       R7 R1 K7 ["Packages"]
       24 GETTABLEKS                       R6 R7 K11 ["Framework"]
       26 CALL                             R5 1 1
       27 GETTABLEKS                       R6 R5 K12 ["ContextServices"]
       29 GETTABLEKS                       R8 R5 K13 ["UI"]
       31 GETTABLEKS                       R7 R8 K14 ["Pane"]
       33 GETTABLEKS                       R9 R5 K13 ["UI"]
       35 GETTABLEKS                       R8 R9 K15 ["Checkbox"]
       37 GETTABLEKS                       R10 R5 K16 ["Util"]
       39 GETTABLEKS                       R9 R10 K17 ["LayoutOrderIterator"]
       41 GETTABLEKS                       R10 R9 K18 ["new"]
       43 CALL                             R10 0 1
       44 GETIMPORT                        R11 K6 [require]
       46 GETTABLEKS                       R13 R1 K7 ["Packages"]
       48 GETTABLEKS                       R12 R13 K19 ["Dash"]
       50 CALL                             R11 1 1
       51 GETTABLEKS                       R12 R11 K20 ["copy"]
       53 GETIMPORT                        R13 K6 [require]
       55 GETTABLEKS                       R15 R1 K21 ["Src"]
       57 GETTABLEKS                       R14 R15 K22 ["Types"]
       59 CALL                             R13 1 1
       60 DUPCLOSURE                       R14 K23 [PROTO_5]
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R12
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R7
       69 RETURN                           R14 1
