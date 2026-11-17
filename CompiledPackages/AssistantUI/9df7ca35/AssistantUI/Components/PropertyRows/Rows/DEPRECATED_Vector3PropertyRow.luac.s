PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+2]
        5 RETURN                           R0 0
        6 LOADN                            R3 1
        7 LOADN                            R4 10
        8 NAMECALL                         R1 R0 K1 ["sub"]
       10 CALL                             R1 3 1
       11 FASTCALL1                        TONUMBER R1 ; [+3]
       12 MOVE                             R3 R1
       13 GETIMPORT                        R2 K3 [tonumber]
       15 CALL                             R2 1 1
       16 JUMPIFNOT                        R2 ; [+19]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K4 ["roundToWholeStud"]
       20 JUMPIFNOT                        R3 ; [+6]
       21 FASTCALL1                        MATH_ROUND R2 ; [+3]
       22 MOVE                             R4 R2
       23 GETIMPORT                        R3 K7 [math.round]
       25 CALL                             R3 1 1
       26 MOVE                             R2 R3
       27 GETUPVAL                         R3 0
       28 FASTCALL1                        TOSTRING R2 ; [+3]
       29 MOVE                             R5 R2
       30 GETIMPORT                        R4 K9 [tostring]
       32 CALL                             R4 1 1
       33 SETTABLEKS                       R4 R3 K0 ["current"]
       35 JUMP                             ; [+6]
       36 JUMPIFNOTEQKS                    R0 K10 [""] ; [+5]
       38 GETUPVAL                         R3 0
       39 LOADK                            R4 K10 [""]
       40 SETTABLEKS                       R4 R3 K0 ["current"]
       42 GETUPVAL                         R3 2
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R4 R4 K0 ["current"]
       46 CALL                             R3 1 0
       47 GETUPVAL                         R4 0
       48 GETTABLEKS                       R4 R4 K0 ["current"]
       50 FASTCALL1                        TONUMBER R4 ; [+2]
       51 GETIMPORT                        R3 K3 [tonumber]
       53 CALL                             R3 1 1
       54 GETUPVAL                         R4 1
       55 GETTABLEKS                       R4 R4 K11 ["setAxisValue"]
       57 GETUPVAL                         R5 1
       58 GETTABLEKS                       R5 R5 K12 ["axis"]
       60 MOVE                             R6 R3
       61 CALL                             R4 2 0
       62 RETURN                           R0 0

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
        3 JUMPIFNOT                        R0 ; [+22]
        4 GETTABLEKS                       R1 R0 K1 ["axis"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["axis"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+16]
       11 GETTABLEKS                       R1 R0 K2 ["value"]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K3 ["liveValue"]
       16 JUMPIFNOTEQ                      R1 R2 ; [+9]
       18 GETTABLEKS                       R1 R0 K4 ["roundToWholeStud"]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K4 ["roundToWholeStud"]
       23 JUMPIFNOTEQ                      R1 R2 ; [+2]
       25 RETURN                           R0 0
       26 GETUPVAL                         R1 0
       27 DUPTABLE                         R2 K5 [{"axis", "value", "roundToWholeStud"}]
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K1 ["axis"]
       31 SETTABLEKS                       R3 R2 K1 ["axis"]
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R3 R3 K3 ["liveValue"]
       36 SETTABLEKS                       R3 R2 K2 ["value"]
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R3 R3 K4 ["roundToWholeStud"]
       41 SETTABLEKS                       R3 R2 K4 ["roundToWholeStud"]
       43 SETTABLEKS                       R2 R1 K0 ["current"]
       45 GETUPVAL                         R1 1
       46 GETTABLEKS                       R1 R1 K3 ["liveValue"]
       48 JUMPIFNOTEQKNIL                  R1 ; [+2]
       50 RETURN                           R0 0
       51 GETUPVAL                         R2 1
       52 GETTABLEKS                       R2 R2 K4 ["roundToWholeStud"]
       54 JUMPIFNOT                        R2 ; [+8]
       55 GETUPVAL                         R2 1
       56 GETTABLEKS                       R2 R2 K3 ["liveValue"]
       58 FASTCALL1                        MATH_ROUND R2 ; [+2]
       59 GETIMPORT                        R1 K8 [math.round]
       61 CALL                             R1 1 1
       62 JUMP                             ; [+3]
       63 GETUPVAL                         R1 1
       64 GETTABLEKS                       R1 R1 K3 ["liveValue"]
       66 FASTCALL1                        TOSTRING R1 ; [+3]
       67 MOVE                             R3 R1
       68 GETIMPORT                        R2 K10 [tostring]
       70 CALL                             R2 1 1
       71 GETUPVAL                         R3 2
       72 GETTABLEKS                       R3 R3 K0 ["current"]
       74 JUMPIFNOTEQ                      R2 R3 ; [+2]
       76 RETURN                           R0 0
       77 GETUPVAL                         R3 2
       78 SETTABLEKS                       R2 R3 K0 ["current"]
       80 GETUPVAL                         R3 3
       81 MOVE                             R4 R2
       82 CALL                             R3 1 0
       83 GETUPVAL                         R3 1
       84 GETTABLEKS                       R3 R3 K11 ["setAxisValue"]
       86 GETUPVAL                         R4 1
       87 GETTABLEKS                       R4 R4 K1 ["axis"]
       89 MOVE                             R5 R1
       90 CALL                             R3 2 0
       91 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useBinding"]
        3 GETTABLEKS                       R2 R0 K1 ["initialText"]
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["useRef"]
        9 GETTABLEKS                       R4 R0 K1 ["initialText"]
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K2 ["useRef"]
       15 LOADNIL                          R5
       16 CALL                             R4 1 1
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R2
       24 NEWTABLE                         R7 0 4
       26 GETTABLEKS                       R8 R0 K4 ["setAxisValue"]
       28 GETTABLEKS                       R9 R0 K5 ["axis"]
       30 GETTABLEKS                       R10 R0 K6 ["roundToWholeStud"]
       32 MOVE                             R11 R2
       33 SETLIST                          R7 R8 4 [1]
       35 CALL                             R5 2 1
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K3 ["useCallback"]
       39 NEWCLOSURE                       R7 P1
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R0
       42 NEWTABLE                         R8 0 1
       44 GETTABLEKS                       R9 R0 K7 ["onCommit"]
       46 SETLIST                          R8 R9 1 [1]
       48 CALL                             R6 2 1
       49 GETUPVAL                         R7 0
       50 GETTABLEKS                       R7 R7 K8 ["useEffect"]
       52 NEWCLOSURE                       R8 P2
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R2
       57 NEWTABLE                         R9 0 5
       59 GETTABLEKS                       R10 R0 K5 ["axis"]
       61 GETTABLEKS                       R11 R0 K9 ["liveValue"]
       63 GETTABLEKS                       R12 R0 K6 ["roundToWholeStud"]
       65 GETTABLEKS                       R13 R0 K4 ["setAxisValue"]
       67 MOVE                             R14 R2
       68 SETLIST                          R9 R10 5 [1]
       70 CALL                             R7 2 0
       71 GETUPVAL                         R7 1
       72 GETUPVAL                         R8 2
       73 DUPTABLE                         R9 K19 [{["label"] = "", ["text"], ["onChanged"], ["onFocusLost"], ["isDisabled"], ["size"], ["variant"], ["width"]}]
       74 SETTABLEKS                       R1 R9 K12 ["text"]
       76 SETTABLEKS                       R5 R9 K13 ["onChanged"]
       78 SETTABLEKS                       R6 R9 K14 ["onFocusLost"]
       80 GETTABLEKS                       R11 R0 K20 ["interactable"]
       82 NOT                              R10 R11
       83 SETTABLEKS                       R10 R9 K15 ["isDisabled"]
       85 GETUPVAL                         R10 3
       86 GETTABLEKS                       R10 R10 K21 ["Enums"]
       88 GETTABLEKS                       R10 R10 K22 ["InputSize"]
       90 GETTABLEKS                       R10 R10 K23 ["XSmall"]
       92 SETTABLEKS                       R10 R9 K16 ["size"]
       94 GETUPVAL                         R10 3
       95 GETTABLEKS                       R10 R10 K21 ["Enums"]
       97 GETTABLEKS                       R10 R10 K24 ["InputVariant"]
       99 GETTABLEKS                       R10 R10 K25 ["Contrast"]
      101 SETTABLEKS                       R10 R9 K17 ["variant"]
      103 GETIMPORT                        R10 K28 [UDim.new]
      105 LOADN                            R11 1
      106 LOADN                            R12 0
      107 CALL                             R10 2 1
      108 SETTABLEKS                       R10 R9 K18 ["width"]
      110 CALL                             R7 2 -1
      111 RETURN                           R7 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["liveChannel"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useChannel"]
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R3 R1 K2 ["scope"]
        8 JUMP                             ; [+1]
        9 LOADK                            R3 K3 [""]
       10 JUMPIFNOT                        R1 ; [+3]
       11 GETTABLEKS                       R4 R1 K4 ["channelId"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R4
       15 JUMPIFNOT                        R1 ; [+3]
       16 GETTABLEKS                       R5 R1 K5 ["field"]
       18 JUMP                             ; [+1]
       19 LOADK                            R5 K3 [""]
       20 CALL                             R2 3 1
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K6 ["Hooks"]
       24 GETTABLEKS                       R3 R3 K7 ["useTokens"]
       26 CALL                             R3 0 1
       27 GETTABLEKS                       R5 R0 K8 ["axis"]
       29 JUMPIFNOTEQKS                    R5 K9 ["x"] ; [+10]
       31 GETTABLEKS                       R4 R3 K10 ["Color"]
       33 GETTABLEKS                       R4 R4 K11 ["Extended"]
       35 GETTABLEKS                       R4 R4 K12 ["Red"]
       37 GETTABLEKS                       R4 R4 K13 ["Red_500"]
       39 JUMP                             ; [+21]
       40 GETTABLEKS                       R5 R0 K8 ["axis"]
       42 JUMPIFNOTEQKS                    R5 K14 ["y"] ; [+10]
       44 GETTABLEKS                       R4 R3 K10 ["Color"]
       46 GETTABLEKS                       R4 R4 K11 ["Extended"]
       48 GETTABLEKS                       R4 R4 K15 ["Green"]
       50 GETTABLEKS                       R4 R4 K16 ["Green_500"]
       52 JUMP                             ; [+8]
       53 GETTABLEKS                       R4 R3 K10 ["Color"]
       55 GETTABLEKS                       R4 R4 K11 ["Extended"]
       57 GETTABLEKS                       R4 R4 K17 ["Blue"]
       59 GETTABLEKS                       R4 R4 K18 ["Blue_500"]
       61 GETUPVAL                         R5 2
       62 GETUPVAL                         R6 3
       63 DUPTABLE                         R7 K22 [{["tag"] = "fill size-0-600", ["LayoutOrder"]}]
       64 GETTABLEKS                       R8 R0 K21 ["LayoutOrder"]
       66 SETTABLEKS                       R8 R7 K21 ["LayoutOrder"]
       68 DUPTABLE                         R8 K25 [{"AxisMarker", "AxisTextInput"}]
       69 GETUPVAL                         R9 2
       70 GETUPVAL                         R10 3
       71 DUPTABLE                         R11 K32 [{["Size"], ["tag"] = "anchor-center-left position-center-left", ["backgroundStyle"], ["ZIndex"] = 2, ["testId"]}]
       72 GETIMPORT                        R12 K35 [UDim2.fromOffset]
       74 GETTABLEKS                       R13 R3 K36 ["Stroke"]
       76 GETTABLEKS                       R13 R13 K37 ["Standard"]
       78 GETTABLEKS                       R14 R3 K26 ["Size"]
       80 GETTABLEKS                       R14 R14 K38 ["Size_400"]
       82 CALL                             R12 2 1
       83 SETTABLEKS                       R12 R11 K26 ["Size"]
       85 SETTABLEKS                       R4 R11 K28 ["backgroundStyle"]
       87 GETUPVAL                         R12 4
       88 GETTABLEKS                       R12 R12 K39 ["PropertyRow"]
       90 GETTABLEKS                       R12 R12 K23 ["AxisMarker"]
       92 GETTABLEKS                       R13 R0 K8 ["axis"]
       94 CALL                             R12 1 1
       95 SETTABLEKS                       R12 R11 K31 ["testId"]
       97 CALL                             R9 2 1
       98 SETTABLEKS                       R9 R8 K23 ["AxisMarker"]
      100 GETUPVAL                         R9 2
      101 GETUPVAL                         R10 5
      102 DUPTABLE                         R11 K46 [{"axis", "initialText", "setAxisValue", "onCommit", "liveValue", "roundToWholeStud", "interactable"}]
      103 GETTABLEKS                       R12 R0 K8 ["axis"]
      105 SETTABLEKS                       R12 R11 K8 ["axis"]
      107 GETTABLEKS                       R13 R0 K47 ["value"]
      109 JUMPIFEQKNIL                     R13 ; [+8]
      111 GETTABLEKS                       R13 R0 K47 ["value"]
      113 FASTCALL1                        TOSTRING R13 ; [+2]
      114 GETIMPORT                        R12 K49 [tostring]
      116 CALL                             R12 1 1
      117 JUMP                             ; [+1]
      118 LOADK                            R12 K3 [""]
      119 SETTABLEKS                       R12 R11 K40 ["initialText"]
      121 GETTABLEKS                       R12 R0 K41 ["setAxisValue"]
      123 SETTABLEKS                       R12 R11 K41 ["setAxisValue"]
      125 JUMPIFNOT                        R1 ; [+3]
      126 GETTABLEKS                       R12 R1 K42 ["onCommit"]
      128 JUMP                             ; [+1]
      129 LOADNIL                          R12
      130 SETTABLEKS                       R12 R11 K42 ["onCommit"]
      132 FASTCALL1                        TYPEOF R2 ; [+3]
      133 MOVE                             R14 R2
      134 GETIMPORT                        R13 K51 [typeof]
      136 CALL                             R13 1 1
      137 JUMPIFNOTEQKS                    R13 K52 ["number"] ; [+3]
      139 MOVE                             R12 R2
      140 JUMP                             ; [+1]
      141 LOADNIL                          R12
      142 SETTABLEKS                       R12 R11 K43 ["liveValue"]
      144 GETTABLEKS                       R12 R0 K44 ["roundToWholeStud"]
      146 SETTABLEKS                       R12 R11 K44 ["roundToWholeStud"]
      148 GETTABLEKS                       R12 R0 K45 ["interactable"]
      150 SETTABLEKS                       R12 R11 K45 ["interactable"]
      152 CALL                             R9 2 1
      153 SETTABLEKS                       R9 R8 K24 ["AxisTextInput"]
      155 CALL                             R5 3 -1
      156 RETURN                           R5 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 DUPTABLE                         R3 K4 [{"x", "y", "z"}]
        4 JUMPIFNOTEQKS                    R0 K1 ["x"] ; [+3]
        6 MOVE                             R4 R1
        7 JUMP                             ; [+4]
        8 MOVE                             R4 R2
        9 JUMPIFNOT                        R4 ; [+2]
       10 GETTABLEKS                       R4 R2 K1 ["x"]
       12 SETTABLEKS                       R4 R3 K1 ["x"]
       14 JUMPIFNOTEQKS                    R0 K2 ["y"] ; [+3]
       16 MOVE                             R4 R1
       17 JUMP                             ; [+4]
       18 MOVE                             R4 R2
       19 JUMPIFNOT                        R4 ; [+2]
       20 GETTABLEKS                       R4 R2 K2 ["y"]
       22 SETTABLEKS                       R4 R3 K2 ["y"]
       24 JUMPIFNOTEQKS                    R0 K3 ["z"] ; [+3]
       26 MOVE                             R4 R1
       27 JUMP                             ; [+4]
       28 MOVE                             R4 R2
       29 JUMPIFNOT                        R4 ; [+2]
       30 GETTABLEKS                       R4 R2 K3 ["z"]
       32 SETTABLEKS                       R4 R3 K3 ["z"]
       34 GETUPVAL                         R4 0
       35 SETTABLEKS                       R3 R4 K0 ["current"]
       37 GETUPVAL                         R4 1
       38 MOVE                             R5 R3
       39 CALL                             R4 1 0
       40 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R0 K1 ["definition"]
        6 GETTABLEKS                       R2 R2 K2 ["liveChannel"]
        8 GETTABLEKS                       R3 R0 K3 ["value"]
       10 GETTABLEKS                       R4 R0 K4 ["setValue"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K5 ["useRef"]
       15 MOVE                             R6 R3
       16 CALL                             R5 1 1
       17 SETTABLEKS                       R3 R5 K6 ["current"]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K7 ["useCallback"]
       22 NEWCLOSURE                       R7 P0
       23 CAPTURE                          VAL R5
       24 CAPTURE                          VAL R4
       25 NEWTABLE                         R8 0 1
       27 MOVE                             R9 R4
       28 SETLIST                          R8 R9 1 [1]
       30 CALL                             R6 2 1
       31 GETTABLEKS                       R7 R0 K1 ["definition"]
       33 GETTABLEKS                       R7 R7 K8 ["roundToWholeStud"]
       35 GETUPVAL                         R8 2
       36 GETUPVAL                         R9 3
       37 DUPTABLE                         R10 K12 [{["tag"] = "row align-y-center gap-xsmall size-full-1000", ["LayoutOrder"]}]
       38 GETTABLEKS                       R11 R0 K11 ["LayoutOrder"]
       40 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
       42 DUPTABLE                         R11 K16 [{"X", "Y", "Z"}]
       43 GETUPVAL                         R12 2
       44 GETUPVAL                         R13 4
       45 DUPTABLE                         R14 K21 [{["axis"] = "x", ["value"], ["liveChannel"], ["setAxisValue"], ["roundToWholeStud"], ["interactable"], ["LayoutOrder"]}]
       46 JUMPIFNOT                        R3 ; [+3]
       47 GETTABLEKS                       R15 R3 K18 ["x"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R15
       51 SETTABLEKS                       R15 R14 K3 ["value"]
       53 JUMPIFNOT                        R2 ; [+3]
       54 GETTABLEKS                       R15 R2 K18 ["x"]
       56 JUMP                             ; [+1]
       57 LOADNIL                          R15
       58 SETTABLEKS                       R15 R14 K2 ["liveChannel"]
       60 SETTABLEKS                       R6 R14 K19 ["setAxisValue"]
       62 SETTABLEKS                       R7 R14 K8 ["roundToWholeStud"]
       64 GETTABLEKS                       R15 R0 K20 ["interactable"]
       66 SETTABLEKS                       R15 R14 K20 ["interactable"]
       68 MOVE                             R15 R1
       69 CALL                             R15 0 1
       70 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
       72 CALL                             R12 2 1
       73 SETTABLEKS                       R12 R11 K13 ["X"]
       75 GETUPVAL                         R12 2
       76 GETUPVAL                         R13 4
       77 DUPTABLE                         R14 K23 [{["axis"] = "y", ["value"], ["liveChannel"], ["setAxisValue"], ["roundToWholeStud"], ["interactable"], ["LayoutOrder"]}]
       78 JUMPIFNOT                        R3 ; [+3]
       79 GETTABLEKS                       R15 R3 K22 ["y"]
       81 JUMP                             ; [+1]
       82 LOADNIL                          R15
       83 SETTABLEKS                       R15 R14 K3 ["value"]
       85 JUMPIFNOT                        R2 ; [+3]
       86 GETTABLEKS                       R15 R2 K22 ["y"]
       88 JUMP                             ; [+1]
       89 LOADNIL                          R15
       90 SETTABLEKS                       R15 R14 K2 ["liveChannel"]
       92 SETTABLEKS                       R6 R14 K19 ["setAxisValue"]
       94 SETTABLEKS                       R7 R14 K8 ["roundToWholeStud"]
       96 GETTABLEKS                       R15 R0 K20 ["interactable"]
       98 SETTABLEKS                       R15 R14 K20 ["interactable"]
      100 MOVE                             R15 R1
      101 CALL                             R15 0 1
      102 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
      104 CALL                             R12 2 1
      105 SETTABLEKS                       R12 R11 K14 ["Y"]
      107 GETUPVAL                         R12 2
      108 GETUPVAL                         R13 4
      109 DUPTABLE                         R14 K25 [{["axis"] = "z", ["value"], ["liveChannel"], ["setAxisValue"], ["roundToWholeStud"], ["interactable"], ["LayoutOrder"]}]
      110 JUMPIFNOT                        R3 ; [+3]
      111 GETTABLEKS                       R15 R3 K24 ["z"]
      113 JUMP                             ; [+1]
      114 LOADNIL                          R15
      115 SETTABLEKS                       R15 R14 K3 ["value"]
      117 JUMPIFNOT                        R2 ; [+3]
      118 GETTABLEKS                       R15 R2 K24 ["z"]
      120 JUMP                             ; [+1]
      121 LOADNIL                          R15
      122 SETTABLEKS                       R15 R14 K2 ["liveChannel"]
      124 SETTABLEKS                       R6 R14 K19 ["setAxisValue"]
      126 SETTABLEKS                       R7 R14 K8 ["roundToWholeStud"]
      128 GETTABLEKS                       R15 R0 K20 ["interactable"]
      130 SETTABLEKS                       R15 R14 K20 ["interactable"]
      132 MOVE                             R15 R1
      133 CALL                             R15 0 1
      134 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
      136 CALL                             R12 2 1
      137 SETTABLEKS                       R12 R11 K15 ["Z"]
      139 CALL                             R8 3 -1
      140 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
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
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Util"]
       28 GETTABLEKS                       R6 R6 K11 ["AskInput"]
       30 GETTABLEKS                       R6 R6 K12 ["AskInputTypes"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Components"]
       37 GETTABLEKS                       R7 R7 K14 ["Contexts"]
       39 GETTABLEKS                       R7 R7 K15 ["Actions"]
       41 GETTABLEKS                       R7 R7 K16 ["ChannelActionsContext"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETIMPORT                        R8 K1 [script]
       48 GETTABLEKS                       R8 R8 K4 ["Parent"]
       50 GETTABLEKS                       R8 R8 K4 ["Parent"]
       52 GETTABLEKS                       R8 R8 K17 ["PropertyRowTypes"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R9 R0 K10 ["Util"]
       59 GETTABLEKS                       R9 R9 K18 ["TestIds"]
       61 CALL                             R8 1 1
       62 GETTABLEKS                       R9 R2 K19 ["TextInput"]
       64 GETTABLEKS                       R10 R2 K20 ["View"]
       66 GETTABLEKS                       R11 R3 K21 ["createElement"]
       68 DUPCLOSURE                       R12 K22 [PROTO_3]
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R2
       73 DUPCLOSURE                       R13 K23 [PROTO_4]
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R12
       80 DUPCLOSURE                       R14 K24 [PROTO_6]
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R13
       86 RETURN                           R14 1
