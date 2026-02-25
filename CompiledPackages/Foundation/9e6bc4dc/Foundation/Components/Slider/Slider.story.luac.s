PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Drag started. Previous value:"]
        3 GETUPVAL                         R2 0
        4 NAMECALL                         R2 R2 K3 ["getValue"]
        6 CALL                             R2 1 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Drag ended. Final value:"]
        3 GETUPVAL                         R2 0
        4 NAMECALL                         R2 R2 K3 ["getValue"]
        6 CALL                             R2 1 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useBinding"]
        3 LOADK                            R2 K1 [0.5]
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K2 ["createElement"]
        8 GETUPVAL                         R4 1
        9 DUPTABLE                         R5 K15 [{"value", "range", "size", "knobVisibility", "variant", "isDisabled", "isContained", "step", "onValueChanged", "knob", "onDragStarted", "onDragEnded"}]
       10 SETTABLEKS                       R1 R5 K3 ["value"]
       12 GETIMPORT                        R6 K18 [NumberRange.new]
       14 GETTABLEKS                       R8 R0 K19 ["controls"]
       16 GETTABLEKS                       R7 R8 K20 ["rangeMin"]
       18 GETTABLEKS                       R9 R0 K19 ["controls"]
       20 GETTABLEKS                       R8 R9 K21 ["rangeMax"]
       22 CALL                             R6 2 1
       23 SETTABLEKS                       R6 R5 K4 ["range"]
       25 GETTABLEKS                       R7 R0 K19 ["controls"]
       27 GETTABLEKS                       R6 R7 K5 ["size"]
       29 SETTABLEKS                       R6 R5 K5 ["size"]
       31 GETTABLEKS                       R7 R0 K19 ["controls"]
       33 GETTABLEKS                       R6 R7 K6 ["knobVisibility"]
       35 SETTABLEKS                       R6 R5 K6 ["knobVisibility"]
       37 GETTABLEKS                       R7 R0 K19 ["controls"]
       39 GETTABLEKS                       R6 R7 K7 ["variant"]
       41 SETTABLEKS                       R6 R5 K7 ["variant"]
       43 GETTABLEKS                       R7 R0 K19 ["controls"]
       45 GETTABLEKS                       R6 R7 K8 ["isDisabled"]
       47 SETTABLEKS                       R6 R5 K8 ["isDisabled"]
       49 GETTABLEKS                       R7 R0 K19 ["controls"]
       51 GETTABLEKS                       R6 R7 K9 ["isContained"]
       53 SETTABLEKS                       R6 R5 K9 ["isContained"]
       55 GETTABLEKS                       R7 R0 K19 ["controls"]
       57 GETTABLEKS                       R6 R7 K10 ["step"]
       59 SETTABLEKS                       R6 R5 K10 ["step"]
       61 SETTABLEKS                       R2 R5 K11 ["onValueChanged"]
       63 GETTABLEKS                       R8 R0 K19 ["controls"]
       65 GETTABLEKS                       R7 R8 K22 ["hasCustomKnob"]
       67 JUMPIFNOT                        R7 ; [+15]
       68 GETUPVAL                         R7 0
       69 GETTABLEKS                       R6 R7 K2 ["createElement"]
       71 GETUPVAL                         R7 2
       72 DUPTABLE                         R8 K24 [{"name", "size"}]
       73 LOADK                            R9 K25 ["icons/graphic/logomark-gradient_xlarge"]
       74 SETTABLEKS                       R9 R8 K23 ["name"]
       76 GETUPVAL                         R10 3
       77 GETTABLEKS                       R9 R10 K26 ["Medium"]
       79 SETTABLEKS                       R9 R8 K5 ["size"]
       81 CALL                             R6 2 1
       82 JUMP                             ; [+1]
       83 LOADNIL                          R6
       84 SETTABLEKS                       R6 R5 K12 ["knob"]
       86 NEWCLOSURE                       R6 P0
       87 CAPTURE                          VAL R1
       88 SETTABLEKS                       R6 R5 K13 ["onDragStarted"]
       90 NEWCLOSURE                       R6 P1
       91 CAPTURE                          VAL R1
       92 SETTABLEKS                       R6 R5 K14 ["onDragEnded"]
       94 CALL                             R3 2 -1
       95 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 GETUPVAL                         R0 2
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 0
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K0 ["current"]
       11 RETURN                           R0 0

PROTO_5:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_5]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+12]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 NAMECALL                         R2 R2 K1 ["getValue"]
        6 CALL                             R2 1 1
        7 ADDK                             R1 R2 K0 [0.00166666666666667]
        8 CALL                             R0 1 0
        9 GETIMPORT                        R0 K4 [task.wait]
       11 LOADK                            R1 K5 [0.0625]
       12 CALL                             R0 1 0
       13 JUMPBACK                         ; [-14]
       14 RETURN                           R0 0

PROTO_8:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+13]
        2 LOADB                            R0 1
        3 GETIMPORT                        R1 K2 [task.spawn]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          REF R0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CALL                             R1 1 0
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          REF R0
       12 CLOSEUPVALS                      R0
       13 RETURN                           R1 1
       14 CLOSEUPVALS                      R0
       15 LOADNIL                          R0
       16 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useBinding"]
        3 LOADK                            R1 K1 [0.25]
        4 CALL                             R0 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K2 ["useState"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K3 ["useRef"]
       13 LOADB                            R5 0
       14 CALL                             R4 1 1
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K4 ["useCallback"]
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R4
       21 CAPTURE                          VAL R3
       22 NEWTABLE                         R7 0 1
       24 MOVE                             R8 R2
       25 SETLIST                          R7 R8 1 [1]
       27 CALL                             R5 2 1
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R6 R7 K4 ["useCallback"]
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R3
       34 NEWTABLE                         R8 0 0
       36 CALL                             R6 2 1
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R7 R8 K4 ["useCallback"]
       40 NEWCLOSURE                       R8 P2
       41 CAPTURE                          VAL R3
       42 NEWTABLE                         R9 0 0
       44 CALL                             R7 2 1
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R8 R9 K5 ["useEffect"]
       48 NEWCLOSURE                       R9 P3
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R0
       52 NEWTABLE                         R10 0 1
       54 MOVE                             R11 R2
       55 SETLIST                          R10 R11 1 [1]
       57 CALL                             R8 2 0
       58 GETUPVAL                         R9 0
       59 GETTABLEKS                       R8 R9 K6 ["createElement"]
       61 GETUPVAL                         R9 1
       62 DUPTABLE                         R10 K8 [{"tag"}]
       63 LOADK                            R11 K9 ["size-full-0 auto-y col gap-small"]
       64 SETTABLEKS                       R11 R10 K7 ["tag"]
       66 DUPTABLE                         R11 K12 [{"Slider", "Playback"}]
       67 GETUPVAL                         R13 0
       68 GETTABLEKS                       R12 R13 K6 ["createElement"]
       70 GETUPVAL                         R13 2
       71 DUPTABLE                         R14 K21 [{"value", "size", "knobVisibility", "variant", "onValueChanged", "onDragStarted", "onDragEnded", "LayoutOrder"}]
       72 SETTABLEKS                       R0 R14 K13 ["value"]
       74 GETUPVAL                         R16 3
       75 GETTABLEKS                       R15 R16 K22 ["XSmall"]
       77 SETTABLEKS                       R15 R14 K14 ["size"]
       79 GETUPVAL                         R16 4
       80 GETTABLEKS                       R15 R16 K23 ["Auto"]
       82 SETTABLEKS                       R15 R14 K15 ["knobVisibility"]
       84 GETUPVAL                         R16 5
       85 GETTABLEKS                       R15 R16 K24 ["Standard"]
       87 SETTABLEKS                       R15 R14 K16 ["variant"]
       89 SETTABLEKS                       R1 R14 K17 ["onValueChanged"]
       91 SETTABLEKS                       R5 R14 K18 ["onDragStarted"]
       93 SETTABLEKS                       R6 R14 K19 ["onDragEnded"]
       95 LOADN                            R15 1
       96 SETTABLEKS                       R15 R14 K20 ["LayoutOrder"]
       98 CALL                             R12 2 1
       99 SETTABLEKS                       R12 R11 K10 ["Slider"]
      101 GETUPVAL                         R13 0
      102 GETTABLEKS                       R12 R13 K6 ["createElement"]
      104 GETUPVAL                         R13 6
      105 DUPTABLE                         R14 K27 [{"text", "onActivated", "LayoutOrder"}]
      106 JUMPIFNOT                        R2 ; [+2]
      107 LOADK                            R15 K28 ["Pause"]
      108 JUMP                             ; [+1]
      109 LOADK                            R15 K29 ["Play"]
      110 SETTABLEKS                       R15 R14 K25 ["text"]
      112 SETTABLEKS                       R7 R14 K26 ["onActivated"]
      114 LOADN                            R15 2
      115 SETTABLEKS                       R15 R14 K20 ["LayoutOrder"]
      117 CALL                             R12 2 1
      118 SETTABLEKS                       R12 R11 K11 ["Playback"]
      120 CALL                             R8 3 -1
      121 RETURN                           R8 -1

PROTO_11:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["Color3"]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K0 ["Color3"]
        7 MOVE                             R5 R0
        8 NAMECALL                         R2 R2 K3 ["Lerp"]
       10 CALL                             R2 3 1
       11 SETTABLEKS                       R2 R1 K0 ["Color3"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K1 ["Transparency"]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K1 ["Transparency"]
       19 FASTCALL3                        MATH_LERP R3 R4 R0
       21 MOVE                             R5 R0
       22 GETIMPORT                        R2 K6 [math.lerp]
       24 CALL                             R2 3 1
       25 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       27 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["useBinding"]
        5 LOADK                            R2 K1 [0.5]
        6 CALL                             R1 1 2
        7 GETTABLEKS                       R6 R0 K2 ["Color"]
        9 GETTABLEKS                       R5 R6 K3 ["Extended"]
       11 GETTABLEKS                       R4 R5 K4 ["Blue"]
       13 GETTABLEKS                       R3 R4 K5 ["Blue_1400"]
       15 GETTABLEKS                       R7 R0 K2 ["Color"]
       17 GETTABLEKS                       R6 R7 K3 ["Extended"]
       19 GETTABLEKS                       R5 R6 K4 ["Blue"]
       21 GETTABLEKS                       R4 R5 K6 ["Blue_100"]
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R4
       26 NAMECALL                         R5 R1 K7 ["map"]
       28 CALL                             R5 2 1
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R6 R7 K8 ["createElement"]
       32 GETUPVAL                         R7 2
       33 DUPTABLE                         R8 K11 [{"tag", "backgroundStyle"}]
       34 LOADK                            R9 K12 ["auto-y size-full-0 radius-circle stroke-standard stroke-emphasis"]
       35 SETTABLEKS                       R9 R8 K9 ["tag"]
       37 GETTABLEKS                       R12 R0 K2 ["Color"]
       39 GETTABLEKS                       R11 R12 K3 ["Extended"]
       41 GETTABLEKS                       R10 R11 K13 ["White"]
       43 GETTABLEKS                       R9 R10 K14 ["White_100"]
       45 SETTABLEKS                       R9 R8 K10 ["backgroundStyle"]
       47 DUPTABLE                         R9 K17 [{"Gradient", "ColorSlider"}]
       48 GETUPVAL                         R11 1
       49 GETTABLEKS                       R10 R11 K8 ["createElement"]
       51 LOADK                            R11 K18 ["UIGradient"]
       52 DUPTABLE                         R12 K19 [{"Color"}]
       53 GETIMPORT                        R13 K22 [ColorSequence.new]
       55 NEWTABLE                         R14 0 2
       57 GETIMPORT                        R15 K24 [ColorSequenceKeypoint.new]
       59 LOADN                            R16 0
       60 GETTABLEKS                       R17 R3 K25 ["Color3"]
       62 CALL                             R15 2 1
       63 GETIMPORT                        R16 K24 [ColorSequenceKeypoint.new]
       65 LOADN                            R17 1
       66 GETTABLEKS                       R18 R4 K25 ["Color3"]
       68 CALL                             R16 2 -1
       69 SETLIST                          R14 R15 -1 [1]
       71 CALL                             R13 1 1
       72 SETTABLEKS                       R13 R12 K2 ["Color"]
       74 CALL                             R10 2 1
       75 SETTABLEKS                       R10 R9 K15 ["Gradient"]
       77 GETUPVAL                         R11 1
       78 GETTABLEKS                       R10 R11 K8 ["createElement"]
       80 GETUPVAL                         R11 3
       81 DUPTABLE                         R12 K34 [{"value", "size", "variant", "isContained", "knob", "knobVisibility", "onValueChanged", "width"}]
       82 SETTABLEKS                       R1 R12 K26 ["value"]
       84 GETUPVAL                         R14 4
       85 GETTABLEKS                       R13 R14 K35 ["Medium"]
       87 SETTABLEKS                       R13 R12 K27 ["size"]
       89 GETUPVAL                         R14 5
       90 GETTABLEKS                       R13 R14 K36 ["Utility"]
       92 SETTABLEKS                       R13 R12 K28 ["variant"]
       94 LOADB                            R13 1
       95 SETTABLEKS                       R13 R12 K29 ["isContained"]
       97 GETUPVAL                         R14 1
       98 GETTABLEKS                       R13 R14 K8 ["createElement"]
      100 GETUPVAL                         R14 6
      101 DUPTABLE                         R15 K40 [{"size", "style", "stroke", "hasShadow"}]
      102 GETUPVAL                         R17 4
      103 GETTABLEKS                       R16 R17 K41 ["Large"]
      105 SETTABLEKS                       R16 R15 K27 ["size"]
      107 SETTABLEKS                       R5 R15 K37 ["style"]
      109 DUPTABLE                         R16 K44 [{"Color", "Transparency", "Thickness"}]
      110 GETTABLEKS                       R20 R0 K2 ["Color"]
      112 GETTABLEKS                       R19 R20 K45 ["System"]
      114 GETTABLEKS                       R18 R19 K46 ["Neutral"]
      116 GETTABLEKS                       R17 R18 K25 ["Color3"]
      118 SETTABLEKS                       R17 R16 K2 ["Color"]
      120 GETTABLEKS                       R20 R0 K2 ["Color"]
      122 GETTABLEKS                       R19 R20 K45 ["System"]
      124 GETTABLEKS                       R18 R19 K46 ["Neutral"]
      126 GETTABLEKS                       R17 R18 K42 ["Transparency"]
      128 SETTABLEKS                       R17 R16 K42 ["Transparency"]
      130 GETTABLEKS                       R19 R0 K47 ["Stroke"]
      132 GETTABLEKS                       R18 R19 K48 ["Thick"]
      134 FASTCALL1                        MATH_ROUND R18 ; [+2]
      135 GETIMPORT                        R17 K51 [math.round]
      137 CALL                             R17 1 1
      138 SETTABLEKS                       R17 R16 K43 ["Thickness"]
      140 SETTABLEKS                       R16 R15 K38 ["stroke"]
      142 LOADB                            R16 1
      143 SETTABLEKS                       R16 R15 K39 ["hasShadow"]
      145 CALL                             R13 2 1
      146 SETTABLEKS                       R13 R12 K30 ["knob"]
      148 GETUPVAL                         R14 7
      149 GETTABLEKS                       R13 R14 K52 ["Always"]
      151 SETTABLEKS                       R13 R12 K31 ["knobVisibility"]
      153 SETTABLEKS                       R2 R12 K32 ["onValueChanged"]
      155 GETIMPORT                        R13 K54 [UDim.new]
      157 LOADN                            R14 1
      158 LOADN                            R15 0
      159 CALL                             R13 2 1
      160 SETTABLEKS                       R13 R12 K33 ["width"]
      162 CALL                             R10 2 1
      163 SETTABLEKS                       R10 R9 K16 ["ColorSlider"]
      165 CALL                             R6 3 -1
      166 RETURN                           R6 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useBinding"]
        3 LOADK                            R1 K1 [0.5]
        4 CALL                             R0 1 2
        5 NEWTABLE                         R2 0 0
        7 LOADN                            R5 0
        8 LOADN                            R3 104
        9 LOADK                            R4 K2 [51.4285714285714]
       10 FORNPREP                         R3
       11 LOADK                            R7 K3 ["Slider_%*"]
       12 MOVE                             R9 R5
       13 NAMECALL                         R7 R7 K4 ["format"]
       15 CALL                             R7 2 1
       16 MOVE                             R6 R7
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R7 R8 K5 ["createElement"]
       20 GETUPVAL                         R8 1
       21 DUPTABLE                         R9 K7 [{"Size"}]
       22 GETIMPORT                        R10 K10 [UDim2.fromScale]
       24 LOADK                            R11 K11 [0.142857142857143]
       25 LOADN                            R12 0
       26 CALL                             R10 2 1
       27 SETTABLEKS                       R10 R9 K6 ["Size"]
       29 DUPTABLE                         R10 K13 [{"Folder"}]
       30 GETUPVAL                         R12 0
       31 GETTABLEKS                       R11 R12 K5 ["createElement"]
       33 LOADK                            R12 K12 ["Folder"]
       34 NEWTABLE                         R13 0 0
       36 NEWTABLE                         R14 0 1
       38 GETUPVAL                         R16 0
       39 GETTABLEKS                       R15 R16 K5 ["createElement"]
       41 GETUPVAL                         R16 1
       42 DUPTABLE                         R17 K16 [{"tag", "Rotation"}]
       43 LOADK                            R18 K17 ["size-full"]
       44 SETTABLEKS                       R18 R17 K14 ["tag"]
       46 SETTABLEKS                       R5 R17 K15 ["Rotation"]
       48 DUPTABLE                         R18 K19 [{"Slider"}]
       49 GETUPVAL                         R20 0
       50 GETTABLEKS                       R19 R20 K5 ["createElement"]
       52 GETUPVAL                         R20 2
       53 DUPTABLE                         R21 K22 [{"value", "onValueChanged"}]
       54 SETTABLEKS                       R0 R21 K20 ["value"]
       56 SETTABLEKS                       R1 R21 K21 ["onValueChanged"]
       58 CALL                             R19 2 1
       59 SETTABLEKS                       R19 R18 K18 ["Slider"]
       61 CALL                             R15 3 -1
       62 SETLIST                          R14 R15 -1 [1]
       64 CALL                             R11 3 1
       65 SETTABLEKS                       R11 R10 K12 ["Folder"]
       67 CALL                             R7 3 1
       68 SETTABLE                         R7 R2 R6
       69 FORNLOOP                         R3
       70 GETUPVAL                         R4 0
       71 GETTABLEKS                       R3 R4 K5 ["createElement"]
       73 GETUPVAL                         R4 1
       74 DUPTABLE                         R5 K23 [{"tag"}]
       75 LOADK                            R6 K24 ["size-full-3000 row align-y-center"]
       76 SETTABLEKS                       R6 R5 K14 ["tag"]
       78 MOVE                             R6 R2
       79 CALL                             R3 3 -1
       80 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Button"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["Icon"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R8 K12 ["Knob"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K9 ["Components"]
       44 GETTABLEKS                       R8 R9 K13 ["View"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R11 R0 K14 ["Providers"]
       51 GETTABLEKS                       R10 R11 K15 ["Style"]
       53 GETTABLEKS                       R9 R10 K16 ["useTokens"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K17 ["Enums"]
       60 GETTABLEKS                       R10 R11 K18 ["IconSize"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R12 R0 K17 ["Enums"]
       67 GETTABLEKS                       R11 R12 K19 ["InputSize"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R13 R0 K17 ["Enums"]
       74 GETTABLEKS                       R12 R13 K20 ["SliderVariant"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R14 R0 K17 ["Enums"]
       81 GETTABLEKS                       R13 R14 K21 ["Visibility"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R15 R0 K9 ["Components"]
       88 GETTABLEKS                       R14 R15 K22 ["Slider"]
       90 CALL                             R13 1 1
       91 DUPTABLE                         R14 K26 [{"summary", "stories", "controls"}]
       92 LOADK                            R15 K27 ["If dragging does not work make sure to deselect any tools in Studio! By default the \"Select\" tool is selected and will interfere with dragging behavior"]
       93 SETTABLEKS                       R15 R14 K23 ["summary"]
       95 NEWTABLE                         R15 0 4
       97 DUPTABLE                         R16 K30 [{"name", "summary", "story"}]
       98 LOADK                            R17 K31 ["Configurable"]
       99 SETTABLEKS                       R17 R16 K28 ["name"]
      101 LOADK                            R17 K32 ["Basic configurable slider"]
      102 SETTABLEKS                       R17 R16 K23 ["summary"]
      104 DUPCLOSURE                       R17 K33 [PROTO_2]
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R9
      109 SETTABLEKS                       R17 R16 K29 ["story"]
      111 DUPTABLE                         R17 K30 [{"name", "summary", "story"}]
      112 LOADK                            R18 K34 ["Media timeline"]
      113 SETTABLEKS                       R18 R17 K28 ["name"]
      115 LOADK                            R18 K35 ["Press the Play button to simulate media playback, then click and drag to seek around the timeline"]
      116 SETTABLEKS                       R18 R17 K23 ["summary"]
      118 DUPCLOSURE                       R18 K36 [PROTO_10]
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R4
      126 SETTABLEKS                       R18 R17 K29 ["story"]
      128 DUPTABLE                         R18 K30 [{"name", "summary", "story"}]
      129 LOADK                            R19 K37 ["Custom"]
      130 SETTABLEKS                       R19 R18 K28 ["name"]
      132 LOADK                            R19 K38 ["Color slider with gradient background"]
      133 SETTABLEKS                       R19 R18 K23 ["summary"]
      135 DUPCLOSURE                       R19 K39 [PROTO_12]
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R13
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R12
      144 SETTABLEKS                       R19 R18 K29 ["story"]
      146 DUPTABLE                         R19 K30 [{"name", "summary", "story"}]
      147 LOADK                            R20 K40 ["Rotated"]
      148 SETTABLEKS                       R20 R19 K28 ["name"]
      150 LOADK                            R20 K41 ["Sliders in containers rotated"]
      151 SETTABLEKS                       R20 R19 K23 ["summary"]
      153 DUPCLOSURE                       R20 K42 [PROTO_13]
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R7
      156 CAPTURE                          VAL R13
      157 SETTABLEKS                       R20 R19 K29 ["story"]
      159 SETLIST                          R15 R16 4 [1]
      161 SETTABLEKS                       R15 R14 K24 ["stories"]
      163 DUPTABLE                         R15 K52 [{"size", "knobVisibility", "isDisabled", "isContained", "variant", "hasCustomKnob", "rangeMin", "rangeMax", "step"}]
      164 GETTABLEKS                       R16 R2 K53 ["values"]
      166 MOVE                             R17 R10
      167 CALL                             R16 1 1
      168 SETTABLEKS                       R16 R15 K43 ["size"]
      170 GETTABLEKS                       R16 R2 K53 ["values"]
      172 MOVE                             R17 R12
      173 CALL                             R16 1 1
      174 SETTABLEKS                       R16 R15 K44 ["knobVisibility"]
      176 LOADB                            R16 0
      177 SETTABLEKS                       R16 R15 K45 ["isDisabled"]
      179 LOADB                            R16 0
      180 SETTABLEKS                       R16 R15 K46 ["isContained"]
      182 GETTABLEKS                       R16 R2 K53 ["values"]
      184 MOVE                             R17 R11
      185 CALL                             R16 1 1
      186 SETTABLEKS                       R16 R15 K47 ["variant"]
      188 LOADB                            R16 0
      189 SETTABLEKS                       R16 R15 K48 ["hasCustomKnob"]
      191 LOADN                            R16 206
      192 SETTABLEKS                       R16 R15 K49 ["rangeMin"]
      194 LOADN                            R16 100
      195 SETTABLEKS                       R16 R15 K50 ["rangeMax"]
      197 LOADN                            R16 0
      198 SETTABLEKS                       R16 R15 K51 ["step"]
      200 SETTABLEKS                       R15 R14 K25 ["controls"]
      202 RETURN                           R14 1
