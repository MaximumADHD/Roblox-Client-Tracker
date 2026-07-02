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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useBinding"]
        3 LOADK                            R2 K1 [0.5]
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["createElement"]
        8 GETUPVAL                         R4 1
        9 DUPTABLE                         R5 K15 [{"value", "range", "size", "knobVisibility", "variant", "isDisabled", "isContained", "step", "onValueChanged", "knob", "onDragStarted", "onDragEnded"}]
       10 SETTABLEKS                       R1 R5 K3 ["value"]
       12 GETIMPORT                        R6 K18 [NumberRange.new]
       14 GETTABLEKS                       R7 R0 K19 ["controls"]
       16 GETTABLEKS                       R7 R7 K20 ["rangeMin"]
       18 GETTABLEKS                       R8 R0 K19 ["controls"]
       20 GETTABLEKS                       R8 R8 K21 ["rangeMax"]
       22 CALL                             R6 2 1
       23 SETTABLEKS                       R6 R5 K4 ["range"]
       25 GETTABLEKS                       R6 R0 K19 ["controls"]
       27 GETTABLEKS                       R6 R6 K5 ["size"]
       29 SETTABLEKS                       R6 R5 K5 ["size"]
       31 GETTABLEKS                       R6 R0 K19 ["controls"]
       33 GETTABLEKS                       R6 R6 K6 ["knobVisibility"]
       35 SETTABLEKS                       R6 R5 K6 ["knobVisibility"]
       37 GETTABLEKS                       R6 R0 K19 ["controls"]
       39 GETTABLEKS                       R6 R6 K7 ["variant"]
       41 SETTABLEKS                       R6 R5 K7 ["variant"]
       43 GETTABLEKS                       R6 R0 K19 ["controls"]
       45 GETTABLEKS                       R6 R6 K8 ["isDisabled"]
       47 SETTABLEKS                       R6 R5 K8 ["isDisabled"]
       49 GETTABLEKS                       R6 R0 K19 ["controls"]
       51 GETTABLEKS                       R6 R6 K9 ["isContained"]
       53 SETTABLEKS                       R6 R5 K9 ["isContained"]
       55 GETTABLEKS                       R6 R0 K19 ["controls"]
       57 GETTABLEKS                       R6 R6 K10 ["step"]
       59 SETTABLEKS                       R6 R5 K10 ["step"]
       61 SETTABLEKS                       R2 R5 K11 ["onValueChanged"]
       63 GETTABLEKS                       R7 R0 K19 ["controls"]
       65 GETTABLEKS                       R7 R7 K22 ["hasCustomKnob"]
       67 JUMPIFNOT                        R7 ; [+12]
       68 GETUPVAL                         R6 0
       69 GETTABLEKS                       R6 R6 K2 ["createElement"]
       71 GETUPVAL                         R7 2
       72 DUPTABLE                         R8 K25 [{["name"] = "icons/graphic/logomark-gradient_xlarge", ["size"]}]
       73 GETUPVAL                         R9 3
       74 GETTABLEKS                       R9 R9 K26 ["Medium"]
       76 SETTABLEKS                       R9 R8 K5 ["size"]
       78 CALL                             R6 2 1
       79 JUMP                             ; [+1]
       80 LOADNIL                          R6
       81 SETTABLEKS                       R6 R5 K12 ["knob"]
       83 NEWCLOSURE                       R6 P0
       84 CAPTURE                          VAL R1
       85 SETTABLEKS                       R6 R5 K13 ["onDragStarted"]
       87 NEWCLOSURE                       R6 P1
       88 CAPTURE                          VAL R1
       89 SETTABLEKS                       R6 R5 K14 ["onDragEnded"]
       91 CALL                             R3 2 -1
       92 RETURN                           R3 -1

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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useBinding"]
        3 LOADK                            R1 K1 [0.25]
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["useState"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K3 ["useRef"]
       13 LOADB                            R5 0
       14 CALL                             R4 1 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R4
       21 CAPTURE                          VAL R3
       22 NEWTABLE                         R7 0 1
       24 MOVE                             R8 R2
       25 SETLIST                          R7 R8 1 [1]
       27 CALL                             R5 2 1
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K4 ["useCallback"]
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R3
       34 NEWTABLE                         R8 0 0
       36 CALL                             R6 2 1
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R7 R7 K4 ["useCallback"]
       40 NEWCLOSURE                       R8 P2
       41 CAPTURE                          VAL R3
       42 NEWTABLE                         R9 0 0
       44 CALL                             R7 2 1
       45 GETUPVAL                         R8 0
       46 GETTABLEKS                       R8 R8 K5 ["useEffect"]
       48 NEWCLOSURE                       R9 P3
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R0
       52 NEWTABLE                         R10 0 1
       54 MOVE                             R11 R2
       55 SETLIST                          R10 R11 1 [1]
       57 CALL                             R8 2 0
       58 GETUPVAL                         R8 0
       59 GETTABLEKS                       R8 R8 K6 ["createElement"]
       61 GETUPVAL                         R9 1
       62 DUPTABLE                         R10 K9 [{["tag"] = "col gap-small size-full-0 auto-y"}]
       63 DUPTABLE                         R11 K12 [{"Slider", "Playback"}]
       64 GETUPVAL                         R12 0
       65 GETTABLEKS                       R12 R12 K6 ["createElement"]
       67 GETUPVAL                         R13 2
       68 DUPTABLE                         R14 K22 [{["value"], ["size"], ["knobVisibility"], ["variant"], ["onValueChanged"], ["onDragStarted"], ["onDragEnded"], ["LayoutOrder"] = 1}]
       69 SETTABLEKS                       R0 R14 K13 ["value"]
       71 GETUPVAL                         R15 3
       72 GETTABLEKS                       R15 R15 K23 ["XSmall"]
       74 SETTABLEKS                       R15 R14 K14 ["size"]
       76 GETUPVAL                         R15 4
       77 GETTABLEKS                       R15 R15 K24 ["Auto"]
       79 SETTABLEKS                       R15 R14 K15 ["knobVisibility"]
       81 GETUPVAL                         R15 5
       82 GETTABLEKS                       R15 R15 K25 ["Standard"]
       84 SETTABLEKS                       R15 R14 K16 ["variant"]
       86 SETTABLEKS                       R1 R14 K17 ["onValueChanged"]
       88 SETTABLEKS                       R5 R14 K18 ["onDragStarted"]
       90 SETTABLEKS                       R6 R14 K19 ["onDragEnded"]
       92 CALL                             R12 2 1
       93 SETTABLEKS                       R12 R11 K10 ["Slider"]
       95 GETUPVAL                         R12 0
       96 GETTABLEKS                       R12 R12 K6 ["createElement"]
       98 GETUPVAL                         R13 6
       99 DUPTABLE                         R14 K29 [{["text"], ["onActivated"], ["LayoutOrder"] = 2}]
      100 JUMPIFNOT                        R2 ; [+2]
      101 LOADK                            R15 K30 ["Pause"]
      102 JUMP                             ; [+1]
      103 LOADK                            R15 K31 ["Play"]
      104 SETTABLEKS                       R15 R14 K26 ["text"]
      106 SETTABLEKS                       R7 R14 K27 ["onActivated"]
      108 CALL                             R12 2 1
      109 SETTABLEKS                       R12 R11 K11 ["Playback"]
      111 CALL                             R8 3 -1
      112 RETURN                           R8 -1

PROTO_11:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["Color3"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K0 ["Color3"]
        7 MOVE                             R5 R0
        8 NAMECALL                         R2 R2 K3 ["Lerp"]
       10 CALL                             R2 3 1
       11 SETTABLEKS                       R2 R1 K0 ["Color3"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K1 ["Transparency"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K1 ["Transparency"]
       19 FASTCALL3                        MATH_LERP R3 R4 R0
       21 MOVE                             R5 R0
       22 GETIMPORT                        R2 K6 [math.lerp]
       24 CALL                             R2 3 1
       25 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       27 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["useBinding"]
        5 LOADK                            R2 K1 [0.5]
        6 CALL                             R1 1 2
        7 GETTABLEKS                       R3 R0 K2 ["Color"]
        9 GETTABLEKS                       R3 R3 K3 ["Extended"]
       11 GETTABLEKS                       R3 R3 K4 ["Blue"]
       13 GETTABLEKS                       R3 R3 K5 ["Blue_1400"]
       15 GETTABLEKS                       R4 R0 K2 ["Color"]
       17 GETTABLEKS                       R4 R4 K3 ["Extended"]
       19 GETTABLEKS                       R4 R4 K4 ["Blue"]
       21 GETTABLEKS                       R4 R4 K6 ["Blue_100"]
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R4
       26 NAMECALL                         R5 R1 K7 ["map"]
       28 CALL                             R5 2 1
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K8 ["createElement"]
       32 GETUPVAL                         R7 2
       33 DUPTABLE                         R8 K12 [{["tag"] = "size-full-0 auto-y stroke-standard stroke-emphasis radius-circle", ["backgroundStyle"]}]
       34 GETTABLEKS                       R9 R0 K2 ["Color"]
       36 GETTABLEKS                       R9 R9 K3 ["Extended"]
       38 GETTABLEKS                       R9 R9 K13 ["White"]
       40 GETTABLEKS                       R9 R9 K14 ["White_100"]
       42 SETTABLEKS                       R9 R8 K11 ["backgroundStyle"]
       44 DUPTABLE                         R9 K17 [{"Gradient", "ColorSlider"}]
       45 GETUPVAL                         R10 1
       46 GETTABLEKS                       R10 R10 K8 ["createElement"]
       48 LOADK                            R11 K18 ["UIGradient"]
       49 DUPTABLE                         R12 K19 [{"Color"}]
       50 GETIMPORT                        R13 K22 [ColorSequence.new]
       52 NEWTABLE                         R14 0 2
       54 GETIMPORT                        R15 K24 [ColorSequenceKeypoint.new]
       56 LOADN                            R16 0
       57 GETTABLEKS                       R17 R3 K25 ["Color3"]
       59 CALL                             R15 2 1
       60 GETIMPORT                        R16 K24 [ColorSequenceKeypoint.new]
       62 LOADN                            R17 1
       63 GETTABLEKS                       R18 R4 K25 ["Color3"]
       65 CALL                             R16 2 -1
       66 SETLIST                          R14 R15 -1 [1]
       68 CALL                             R13 1 1
       69 SETTABLEKS                       R13 R12 K2 ["Color"]
       71 CALL                             R10 2 1
       72 SETTABLEKS                       R10 R9 K15 ["Gradient"]
       74 GETUPVAL                         R10 1
       75 GETTABLEKS                       R10 R10 K8 ["createElement"]
       77 GETUPVAL                         R11 3
       78 DUPTABLE                         R12 K35 [{["value"], ["size"], ["variant"], ["isContained"] = True, ["knob"], ["knobVisibility"], ["onValueChanged"], ["width"]}]
       79 SETTABLEKS                       R1 R12 K26 ["value"]
       81 GETUPVAL                         R13 4
       82 GETTABLEKS                       R13 R13 K36 ["Medium"]
       84 SETTABLEKS                       R13 R12 K27 ["size"]
       86 GETUPVAL                         R13 5
       87 GETTABLEKS                       R13 R13 K37 ["Utility"]
       89 SETTABLEKS                       R13 R12 K28 ["variant"]
       91 GETUPVAL                         R13 1
       92 GETTABLEKS                       R13 R13 K8 ["createElement"]
       94 GETUPVAL                         R14 6
       95 DUPTABLE                         R15 K41 [{["size"], ["style"], ["stroke"], ["hasShadow"] = True}]
       96 GETUPVAL                         R16 4
       97 GETTABLEKS                       R16 R16 K42 ["Large"]
       99 SETTABLEKS                       R16 R15 K27 ["size"]
      101 SETTABLEKS                       R5 R15 K38 ["style"]
      103 DUPTABLE                         R16 K45 [{"Color", "Transparency", "Thickness"}]
      104 GETTABLEKS                       R17 R0 K2 ["Color"]
      106 GETTABLEKS                       R17 R17 K46 ["System"]
      108 GETTABLEKS                       R17 R17 K47 ["Neutral"]
      110 GETTABLEKS                       R17 R17 K25 ["Color3"]
      112 SETTABLEKS                       R17 R16 K2 ["Color"]
      114 GETTABLEKS                       R17 R0 K2 ["Color"]
      116 GETTABLEKS                       R17 R17 K46 ["System"]
      118 GETTABLEKS                       R17 R17 K47 ["Neutral"]
      120 GETTABLEKS                       R17 R17 K43 ["Transparency"]
      122 SETTABLEKS                       R17 R16 K43 ["Transparency"]
      124 GETTABLEKS                       R18 R0 K48 ["Stroke"]
      126 GETTABLEKS                       R18 R18 K49 ["Thick"]
      128 FASTCALL1                        MATH_ROUND R18 ; [+2]
      129 GETIMPORT                        R17 K52 [math.round]
      131 CALL                             R17 1 1
      132 SETTABLEKS                       R17 R16 K44 ["Thickness"]
      134 SETTABLEKS                       R16 R15 K39 ["stroke"]
      136 CALL                             R13 2 1
      137 SETTABLEKS                       R13 R12 K31 ["knob"]
      139 GETUPVAL                         R13 7
      140 GETTABLEKS                       R13 R13 K53 ["Always"]
      142 SETTABLEKS                       R13 R12 K32 ["knobVisibility"]
      144 SETTABLEKS                       R2 R12 K33 ["onValueChanged"]
      146 GETIMPORT                        R13 K55 [UDim.new]
      148 LOADN                            R14 1
      149 LOADN                            R15 0
      150 CALL                             R13 2 1
      151 SETTABLEKS                       R13 R12 K34 ["width"]
      153 CALL                             R10 2 1
      154 SETTABLEKS                       R10 R9 K16 ["ColorSlider"]
      156 CALL                             R6 3 -1
      157 RETURN                           R6 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useBinding"]
        3 LOADK                            R1 K1 [0.5]
        4 CALL                             R0 1 2
        5 NEWTABLE                         R2 0 0
        7 LOADN                            R5 0
        8 LOADN                            R3 360
        9 LOADK                            R4 K2 [51.4285714285714]
       10 FORNPREP                         R3
       11 LOADK                            R7 K3 ["Slider_%*"]
       12 MOVE                             R9 R5
       13 NAMECALL                         R7 R7 K4 ["format"]
       15 CALL                             R7 2 1
       16 MOVE                             R6 R7
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K5 ["createElement"]
       20 GETUPVAL                         R8 1
       21 DUPTABLE                         R9 K7 [{"Size"}]
       22 GETIMPORT                        R10 K10 [UDim2.fromScale]
       24 LOADK                            R11 K11 [0.142857142857143]
       25 LOADN                            R12 0
       26 CALL                             R10 2 1
       27 SETTABLEKS                       R10 R9 K6 ["Size"]
       29 DUPTABLE                         R10 K13 [{"Folder"}]
       30 GETUPVAL                         R11 0
       31 GETTABLEKS                       R11 R11 K5 ["createElement"]
       33 LOADK                            R12 K12 ["Folder"]
       34 NEWTABLE                         R13 0 0
       36 NEWTABLE                         R14 0 1
       38 GETUPVAL                         R15 0
       39 GETTABLEKS                       R15 R15 K5 ["createElement"]
       41 GETUPVAL                         R16 1
       42 DUPTABLE                         R17 K17 [{["tag"] = "size-full", ["Rotation"]}]
       43 SETTABLEKS                       R5 R17 K16 ["Rotation"]
       45 DUPTABLE                         R18 K19 [{"Slider"}]
       46 GETUPVAL                         R19 0
       47 GETTABLEKS                       R19 R19 K5 ["createElement"]
       49 GETUPVAL                         R20 2
       50 DUPTABLE                         R21 K22 [{"value", "onValueChanged"}]
       51 SETTABLEKS                       R0 R21 K20 ["value"]
       53 SETTABLEKS                       R1 R21 K21 ["onValueChanged"]
       55 CALL                             R19 2 1
       56 SETTABLEKS                       R19 R18 K18 ["Slider"]
       58 CALL                             R15 3 -1
       59 SETLIST                          R14 R15 -1 [1]
       61 CALL                             R11 3 1
       62 SETTABLEKS                       R11 R10 K12 ["Folder"]
       64 CALL                             R7 3 1
       65 SETTABLE                         R7 R2 R6
       66 FORNLOOP                         R3
       67 GETUPVAL                         R3 0
       68 GETTABLEKS                       R3 R3 K5 ["createElement"]
       70 GETUPVAL                         R4 1
       71 DUPTABLE                         R5 K24 [{["tag"] = "row align-y-center size-full-3000"}]
       72 MOVE                             R6 R2
       73 CALL                             R3 3 -1
       74 RETURN                           R3 -1

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
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Button"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["Icon"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R7 K12 ["Knob"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Components"]
       44 GETTABLEKS                       R8 R8 K13 ["View"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K14 ["Providers"]
       51 GETTABLEKS                       R9 R9 K15 ["Style"]
       53 GETTABLEKS                       R9 R9 K16 ["useTokens"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K17 ["Enums"]
       60 GETTABLEKS                       R10 R10 K18 ["IconSize"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K17 ["Enums"]
       67 GETTABLEKS                       R11 R11 K19 ["InputSize"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K17 ["Enums"]
       74 GETTABLEKS                       R12 R12 K20 ["SliderVariant"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K17 ["Enums"]
       81 GETTABLEKS                       R13 R13 K21 ["Visibility"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R14 R0 K9 ["Components"]
       88 GETTABLEKS                       R14 R14 K22 ["Slider"]
       90 CALL                             R13 1 1
       91 DUPTABLE                         R14 K27 [{["summary"] = "If dragging does not work make sure to deselect any tools in Studio! By default the \"Select\" tool is selected and will interfere with dragging behavior", ["stories"], ["controls"]}]
       92 NEWTABLE                         R15 0 4
       94 DUPTABLE                         R16 K32 [{["name"] = "Configurable", ["summary"] = "Basic configurable slider", ["story"]}]
       95 DUPCLOSURE                       R17 K33 [PROTO_2]
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R9
      100 SETTABLEKS                       R17 R16 K31 ["story"]
      102 DUPTABLE                         R17 K36 [{["name"] = "Media timeline", ["summary"] = "Press the Play button to simulate media playback, then click and drag to seek around the timeline", ["story"]}]
      103 DUPCLOSURE                       R18 K37 [PROTO_10]
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R4
      111 SETTABLEKS                       R18 R17 K31 ["story"]
      113 DUPTABLE                         R18 K40 [{["name"] = "Custom", ["summary"] = "Color slider with gradient background", ["story"]}]
      114 DUPCLOSURE                       R19 K41 [PROTO_12]
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R12
      123 SETTABLEKS                       R19 R18 K31 ["story"]
      125 DUPTABLE                         R19 K44 [{["name"] = "Rotated", ["summary"] = "Sliders in containers rotated", ["story"]}]
      126 DUPCLOSURE                       R20 K45 [PROTO_13]
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R13
      130 SETTABLEKS                       R20 R19 K31 ["story"]
      132 SETLIST                          R15 R16 4 [1]
      134 SETTABLEKS                       R15 R14 K25 ["stories"]
      136 DUPTABLE                         R15 K59 [{["size"], ["knobVisibility"], ["isDisabled"] = False, ["isContained"] = False, ["variant"], ["hasCustomKnob"] = False, ["rangeMin"] = -50, ["rangeMax"] = 100, ["step"] = 0}]
      137 GETTABLEKS                       R16 R2 K60 ["values"]
      139 MOVE                             R17 R10
      140 CALL                             R16 1 1
      141 SETTABLEKS                       R16 R15 K46 ["size"]
      143 GETTABLEKS                       R16 R2 K60 ["values"]
      145 MOVE                             R17 R12
      146 CALL                             R16 1 1
      147 SETTABLEKS                       R16 R15 K47 ["knobVisibility"]
      149 GETTABLEKS                       R16 R2 K60 ["values"]
      151 MOVE                             R17 R11
      152 CALL                             R16 1 1
      153 SETTABLEKS                       R16 R15 K51 ["variant"]
      155 SETTABLEKS                       R15 R14 K26 ["controls"]
      157 RETURN                           R14 1
