PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+2]
        5 RETURN                           R0 0
        6 LOADN                            R4 1
        7 LOADN                            R5 10
        8 NAMECALL                         R2 R0 K1 ["sub"]
       10 CALL                             R2 3 -1
       11 FASTCALL                         TONUMBER ; [+2]
       12 GETIMPORT                        R1 K3 [tonumber]
       14 CALL                             R1 -1 1
       15 JUMPIFNOT                        R1 ; [+19]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K4 ["roundToWholeStud"]
       19 JUMPIFNOT                        R2 ; [+6]
       20 FASTCALL1                        MATH_ROUND R1 ; [+3]
       21 MOVE                             R3 R1
       22 GETIMPORT                        R2 K7 [math.round]
       24 CALL                             R2 1 1
       25 MOVE                             R1 R2
       26 GETUPVAL                         R2 0
       27 FASTCALL1                        TOSTRING R1 ; [+3]
       28 MOVE                             R4 R1
       29 GETIMPORT                        R3 K9 [tostring]
       31 CALL                             R3 1 1
       32 SETTABLEKS                       R3 R2 K0 ["current"]
       34 JUMP                             ; [+6]
       35 JUMPIFNOTEQKS                    R0 K10 [""] ; [+5]
       37 GETUPVAL                         R2 0
       38 LOADK                            R3 K10 [""]
       39 SETTABLEKS                       R3 R2 K0 ["current"]
       41 GETUPVAL                         R2 2
       42 GETUPVAL                         R3 0
       43 GETTABLEKS                       R3 R3 K0 ["current"]
       45 CALL                             R2 1 0
       46 GETUPVAL                         R2 1
       47 GETTABLEKS                       R2 R2 K11 ["onChanged"]
       49 GETUPVAL                         R3 1
       50 GETTABLEKS                       R3 R3 K12 ["axis"]
       52 GETUPVAL                         R5 0
       53 GETTABLEKS                       R5 R5 K0 ["current"]
       55 FASTCALL1                        TONUMBER R5 ; [+2]
       56 GETIMPORT                        R4 K3 [tonumber]
       58 CALL                             R4 1 1
       59 CALL                             R2 2 0
       60 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 FASTCALL1                        TONUMBER R1 ; [+2]
        4 GETIMPORT                        R0 K2 [tonumber]
        6 CALL                             R0 1 1
        7 JUMPIFEQKNIL                     R0 ; [+10]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K3 ["onCommit"]
       12 JUMPIFNOT                        R1 ; [+5]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K3 ["onCommit"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+29]
        4 GETTABLEKS                       R1 R0 K1 ["axis"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["axis"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+23]
       11 GETTABLEKS                       R1 R0 K2 ["value"]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K3 ["liveValue"]
       16 JUMPIFNOTEQ                      R1 R2 ; [+16]
       18 GETTABLEKS                       R1 R0 K4 ["roundToWholeStud"]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K4 ["roundToWholeStud"]
       23 JUMPIFNOTEQ                      R1 R2 ; [+9]
       25 GETTABLEKS                       R1 R0 K5 ["clearOnNilLiveValue"]
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R2 R2 K5 ["clearOnNilLiveValue"]
       30 JUMPIFNOTEQ                      R1 R2 ; [+2]
       32 RETURN                           R0 0
       33 GETUPVAL                         R1 0
       34 DUPTABLE                         R2 K6 [{"axis", "value", "roundToWholeStud", "clearOnNilLiveValue"}]
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R3 R3 K1 ["axis"]
       38 SETTABLEKS                       R3 R2 K1 ["axis"]
       40 GETUPVAL                         R3 1
       41 GETTABLEKS                       R3 R3 K3 ["liveValue"]
       43 SETTABLEKS                       R3 R2 K2 ["value"]
       45 GETUPVAL                         R3 1
       46 GETTABLEKS                       R3 R3 K4 ["roundToWholeStud"]
       48 SETTABLEKS                       R3 R2 K4 ["roundToWholeStud"]
       50 GETUPVAL                         R3 1
       51 GETTABLEKS                       R3 R3 K5 ["clearOnNilLiveValue"]
       53 SETTABLEKS                       R3 R2 K5 ["clearOnNilLiveValue"]
       55 SETTABLEKS                       R2 R1 K0 ["current"]
       57 GETUPVAL                         R1 1
       58 GETTABLEKS                       R1 R1 K3 ["liveValue"]
       60 JUMPIFNOTEQKNIL                  R1 ; [+13]
       62 GETUPVAL                         R1 1
       63 GETTABLEKS                       R1 R1 K5 ["clearOnNilLiveValue"]
       65 JUMPIFNOT                        R1 ; [+7]
       66 GETUPVAL                         R1 2
       67 LOADK                            R2 K7 [""]
       68 SETTABLEKS                       R2 R1 K0 ["current"]
       70 GETUPVAL                         R1 3
       71 LOADK                            R2 K7 [""]
       72 CALL                             R1 1 0
       73 RETURN                           R0 0
       74 GETUPVAL                         R2 1
       75 GETTABLEKS                       R2 R2 K4 ["roundToWholeStud"]
       77 JUMPIFNOT                        R2 ; [+8]
       78 GETUPVAL                         R2 1
       79 GETTABLEKS                       R2 R2 K3 ["liveValue"]
       81 FASTCALL1                        MATH_ROUND R2 ; [+2]
       82 GETIMPORT                        R1 K10 [math.round]
       84 CALL                             R1 1 1
       85 JUMP                             ; [+3]
       86 GETUPVAL                         R1 1
       87 GETTABLEKS                       R1 R1 K3 ["liveValue"]
       89 FASTCALL1                        TOSTRING R1 ; [+3]
       90 MOVE                             R3 R1
       91 GETIMPORT                        R2 K12 [tostring]
       93 CALL                             R2 1 1
       94 GETUPVAL                         R3 2
       95 GETTABLEKS                       R3 R3 K0 ["current"]
       97 JUMPIFNOTEQ                      R2 R3 ; [+2]
       99 RETURN                           R0 0
      100 GETUPVAL                         R3 2
      101 SETTABLEKS                       R2 R3 K0 ["current"]
      103 GETUPVAL                         R3 3
      104 MOVE                             R4 R2
      105 CALL                             R3 1 0
      106 GETUPVAL                         R3 1
      107 GETTABLEKS                       R3 R3 K13 ["onLiveChanged"]
      109 JUMPIFNOT                        R3 ; [+8]
      110 GETUPVAL                         R3 1
      111 GETTABLEKS                       R3 R3 K13 ["onLiveChanged"]
      113 GETUPVAL                         R4 1
      114 GETTABLEKS                       R4 R4 K1 ["axis"]
      116 MOVE                             R5 R1
      117 CALL                             R3 2 0
      118 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["value"]
        2 JUMPIFEQKNIL                     R2 ; [+8]
        4 GETTABLEKS                       R2 R0 K0 ["value"]
        6 FASTCALL1                        TOSTRING R2 ; [+2]
        7 GETIMPORT                        R1 K2 [tostring]
        9 CALL                             R1 1 1
       10 JUMP                             ; [+1]
       11 LOADK                            R1 K3 [""]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K4 ["useBinding"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 2
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K5 ["useRef"]
       20 MOVE                             R5 R1
       21 CALL                             R4 1 1
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K5 ["useRef"]
       25 LOADNIL                          R6
       26 CALL                             R5 1 1
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K6 ["useCallback"]
       30 NEWCLOSURE                       R7 P0
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R3
       34 NEWTABLE                         R8 0 4
       36 GETTABLEKS                       R9 R0 K7 ["onChanged"]
       38 GETTABLEKS                       R10 R0 K8 ["axis"]
       40 GETTABLEKS                       R11 R0 K9 ["roundToWholeStud"]
       42 MOVE                             R12 R3
       43 SETLIST                          R8 R9 4 [1]
       45 CALL                             R6 2 1
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R7 R7 K6 ["useCallback"]
       49 NEWCLOSURE                       R8 P1
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R0
       52 NEWTABLE                         R9 0 1
       54 GETTABLEKS                       R10 R0 K10 ["onCommit"]
       56 SETLIST                          R9 R10 1 [1]
       58 CALL                             R7 2 1
       59 GETUPVAL                         R8 0
       60 GETTABLEKS                       R8 R8 K11 ["useEffect"]
       62 NEWCLOSURE                       R9 P2
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R3
       67 NEWTABLE                         R10 0 6
       69 GETTABLEKS                       R11 R0 K8 ["axis"]
       71 GETTABLEKS                       R12 R0 K12 ["liveValue"]
       73 GETTABLEKS                       R13 R0 K9 ["roundToWholeStud"]
       75 GETTABLEKS                       R14 R0 K13 ["clearOnNilLiveValue"]
       77 GETTABLEKS                       R15 R0 K14 ["onLiveChanged"]
       79 MOVE                             R16 R3
       80 SETLIST                          R10 R11 6 [1]
       82 CALL                             R8 2 0
       83 GETUPVAL                         R8 0
       84 GETTABLEKS                       R8 R8 K15 ["createElement"]
       86 GETUPVAL                         R9 1
       87 GETTABLEKS                       R9 R9 K16 ["TextInput"]
       89 DUPTABLE                         R10 K24 [{["label"] = "", ["text"], ["onChanged"], ["onFocusLost"], ["isDisabled"], ["size"], ["variant"], ["width"]}]
       90 SETTABLEKS                       R2 R10 K18 ["text"]
       92 SETTABLEKS                       R6 R10 K7 ["onChanged"]
       94 SETTABLEKS                       R7 R10 K19 ["onFocusLost"]
       96 GETTABLEKS                       R12 R0 K25 ["interactable"]
       98 NOT                              R11 R12
       99 SETTABLEKS                       R11 R10 K20 ["isDisabled"]
      101 GETUPVAL                         R11 1
      102 GETTABLEKS                       R11 R11 K26 ["Enums"]
      104 GETTABLEKS                       R11 R11 K27 ["InputSize"]
      106 GETTABLEKS                       R11 R11 K28 ["XSmall"]
      108 SETTABLEKS                       R11 R10 K21 ["size"]
      110 GETUPVAL                         R11 1
      111 GETTABLEKS                       R11 R11 K26 ["Enums"]
      113 GETTABLEKS                       R11 R11 K29 ["InputVariant"]
      115 GETTABLEKS                       R11 R11 K30 ["Contrast"]
      117 SETTABLEKS                       R11 R10 K22 ["variant"]
      119 GETIMPORT                        R11 K33 [UDim.new]
      121 LOADN                            R12 1
      122 LOADN                            R13 0
      123 CALL                             R11 2 1
      124 SETTABLEKS                       R11 R10 K23 ["width"]
      126 CALL                             R8 2 -1
      127 RETURN                           R8 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R3 R0 K2 ["axis"]
        8 JUMPIFNOTEQKS                    R3 K3 ["x"] ; [+10]
       10 GETTABLEKS                       R2 R1 K4 ["Color"]
       12 GETTABLEKS                       R2 R2 K5 ["Extended"]
       14 GETTABLEKS                       R2 R2 K6 ["Red"]
       16 GETTABLEKS                       R2 R2 K7 ["Red_500"]
       18 JUMP                             ; [+21]
       19 GETTABLEKS                       R3 R0 K2 ["axis"]
       21 JUMPIFNOTEQKS                    R3 K8 ["y"] ; [+10]
       23 GETTABLEKS                       R2 R1 K4 ["Color"]
       25 GETTABLEKS                       R2 R2 K5 ["Extended"]
       27 GETTABLEKS                       R2 R2 K9 ["Green"]
       29 GETTABLEKS                       R2 R2 K10 ["Green_500"]
       31 JUMP                             ; [+8]
       32 GETTABLEKS                       R2 R1 K4 ["Color"]
       34 GETTABLEKS                       R2 R2 K5 ["Extended"]
       36 GETTABLEKS                       R2 R2 K11 ["Blue"]
       38 GETTABLEKS                       R2 R2 K12 ["Blue_500"]
       40 GETUPVAL                         R3 1
       41 GETTABLEKS                       R3 R3 K13 ["createElement"]
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R4 R4 K14 ["View"]
       46 DUPTABLE                         R5 K18 [{["tag"] = "fill size-0-600", ["LayoutOrder"]}]
       47 GETTABLEKS                       R6 R0 K17 ["LayoutOrder"]
       49 SETTABLEKS                       R6 R5 K17 ["LayoutOrder"]
       51 DUPTABLE                         R6 K21 [{"AxisMarker", "Input"}]
       52 GETUPVAL                         R7 1
       53 GETTABLEKS                       R7 R7 K13 ["createElement"]
       55 GETUPVAL                         R8 0
       56 GETTABLEKS                       R8 R8 K14 ["View"]
       58 DUPTABLE                         R9 K28 [{["Size"], ["tag"] = "anchor-center-left position-center-left", ["backgroundStyle"], ["ZIndex"] = 2, ["testId"]}]
       59 GETIMPORT                        R10 K31 [UDim2.fromOffset]
       61 GETTABLEKS                       R11 R1 K32 ["Stroke"]
       63 GETTABLEKS                       R11 R11 K33 ["Standard"]
       65 GETTABLEKS                       R12 R1 K22 ["Size"]
       67 GETTABLEKS                       R12 R12 K34 ["Size_400"]
       69 CALL                             R10 2 1
       70 SETTABLEKS                       R10 R9 K22 ["Size"]
       72 SETTABLEKS                       R2 R9 K24 ["backgroundStyle"]
       74 GETTABLEKS                       R10 R0 K35 ["markerTestId"]
       76 SETTABLEKS                       R10 R9 K27 ["testId"]
       78 CALL                             R7 2 1
       79 SETTABLEKS                       R7 R6 K19 ["AxisMarker"]
       81 GETUPVAL                         R7 1
       82 GETTABLEKS                       R7 R7 K13 ["createElement"]
       84 GETUPVAL                         R8 2
       85 MOVE                             R9 R0
       86 CALL                             R7 2 1
       87 SETTABLEKS                       R7 R6 K20 ["Input"]
       89 CALL                             R3 3 -1
       90 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 NEWTABLE                         R2 0 0
        6 GETUPVAL                         R3 1
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 DUPTABLE                         R8 K11 [{["axis"], ["value"], ["liveValue"], ["clearOnNilLiveValue"] = True, ["onChanged"], ["interactable"], ["roundToWholeStud"], ["markerTestId"], ["LayoutOrder"]}]
       11 SETTABLEKS                       R7 R8 K1 ["axis"]
       13 GETTABLEKS                       R10 R0 K2 ["value"]
       15 GETTABLE                         R9 R10 R7
       16 SETTABLEKS                       R9 R8 K2 ["value"]
       18 GETTABLEKS                       R10 R0 K2 ["value"]
       20 GETTABLE                         R9 R10 R7
       21 SETTABLEKS                       R9 R8 K3 ["liveValue"]
       23 GETTABLEKS                       R9 R0 K6 ["onChanged"]
       25 SETTABLEKS                       R9 R8 K6 ["onChanged"]
       27 GETTABLEKS                       R9 R0 K7 ["interactable"]
       29 SETTABLEKS                       R9 R8 K7 ["interactable"]
       31 GETTABLEKS                       R9 R0 K8 ["roundToWholeStud"]
       33 SETTABLEKS                       R9 R8 K8 ["roundToWholeStud"]
       35 GETTABLEKS                       R10 R0 K12 ["testId"]
       37 JUMPIFNOT                        R10 ; [+8]
       38 LOADK                            R9 K13 ["%*-%*"]
       39 GETTABLEKS                       R11 R0 K12 ["testId"]
       41 MOVE                             R12 R7
       42 NAMECALL                         R9 R9 K14 ["format"]
       44 CALL                             R9 3 1
       45 JUMP                             ; [+1]
       46 LOADNIL                          R9
       47 SETTABLEKS                       R9 R8 K9 ["markerTestId"]
       49 MOVE                             R9 R1
       50 CALL                             R9 0 1
       51 SETTABLEKS                       R9 R8 K10 ["LayoutOrder"]
       53 GETUPVAL                         R9 2
       54 GETTABLEKS                       R9 R9 K15 ["createElement"]
       56 GETUPVAL                         R10 3
       57 MOVE                             R11 R8
       58 CALL                             R9 2 1
       59 SETTABLE                         R9 R2 R7
       60 FORGLOOP                         R3 2 ; [-51]
       62 GETUPVAL                         R3 2
       63 GETTABLEKS                       R3 R3 K15 ["createElement"]
       65 GETUPVAL                         R4 4
       66 GETTABLEKS                       R4 R4 K16 ["View"]
       68 DUPTABLE                         R5 K19 [{["tag"] = "row align-y-center gap-xsmall size-full-600", ["LayoutOrder"], ["testId"]}]
       69 GETTABLEKS                       R6 R0 K10 ["LayoutOrder"]
       71 SETTABLEKS                       R6 R5 K10 ["LayoutOrder"]
       73 GETTABLEKS                       R6 R0 K12 ["testId"]
       75 SETTABLEKS                       R6 R5 K12 ["testId"]
       77 MOVE                             R6 R2
       78 CALL                             R3 3 -1
       79 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3dCore"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactUtils"]
       23 CALL                             R4 1 1
       24 NEWTABLE                         R5 0 3
       26 LOADK                            R6 K10 ["x"]
       27 LOADK                            R7 K11 ["y"]
       28 LOADK                            R8 K12 ["z"]
       29 SETLIST                          R5 R6 3 [1]
       31 DUPCLOSURE                       R6 K13 [PROTO_3]
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R2
       34 DUPCLOSURE                       R7 K14 [PROTO_4]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R6
       38 DUPCLOSURE                       R8 K15 [PROTO_5]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R7
       43 CAPTURE                          VAL R2
       44 DUPTABLE                         R9 K19 [{"Root", "AxisInput", "Axes"}]
       45 SETTABLEKS                       R8 R9 K16 ["Root"]
       47 SETTABLEKS                       R7 R9 K17 ["AxisInput"]
       49 SETTABLEKS                       R5 R9 K18 ["Axes"]
       51 RETURN                           R9 1
