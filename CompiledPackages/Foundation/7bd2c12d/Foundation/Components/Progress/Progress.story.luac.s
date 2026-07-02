PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R3 R1 K1 ["isIndeterminate"]
        4 JUMPIFNOT                        R3 ; [+2]
        5 LOADNIL                          R2
        6 JUMP                             ; [+2]
        7 GETTABLEKS                       R2 R1 K2 ["value"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["createElement"]
       12 GETUPVAL                         R4 1
       13 DUPTABLE                         R5 K6 [{"shape", "value", "size"}]
       14 GETTABLEKS                       R6 R1 K4 ["shape"]
       16 SETTABLEKS                       R6 R5 K4 ["shape"]
       18 SETTABLEKS                       R2 R5 K2 ["value"]
       20 GETTABLEKS                       R6 R1 K5 ["size"]
       22 SETTABLEKS                       R6 R5 K5 ["size"]
       24 CALL                             R3 2 -1
       25 RETURN                           R3 -1

PROTO_1:
        0 GETIMPORT                        R1 K1 [tick]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R2 0
        4 SUB                              R0 R1 R2
        5 DIVK                             R3 R0 K3 [3]
        6 MULK                             R2 R3 K2 [100]
        7 FASTCALL2K                       MATH_MIN R2 K2 ; [+4]
        9 LOADK                            R3 K2 [100]
       10 GETIMPORT                        R1 K6 [math.min]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K7 ["FoundationProgressBindableValue"]
       16 JUMPIFNOT                        R2 ; [+4]
       17 GETUPVAL                         R2 2
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 JUMP                             ; [+3]
       21 GETUPVAL                         R2 3
       22 MOVE                             R3 R1
       23 CALL                             R2 1 0
       24 LOADN                            R2 100
       25 JUMPIFNOTLE                      R2 R1 ; [+8]
       27 GETUPVAL                         R2 4
       28 NAMECALL                         R2 R2 K8 ["Disconnect"]
       30 CALL                             R2 1 0
       31 GETUPVAL                         R2 5
       32 LOADB                            R3 0
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+22]
        3 GETIMPORT                        R1 K1 [tick]
        5 CALL                             R1 0 1
        6 GETIMPORT                        R2 K3 [game]
        8 LOADK                            R4 K4 ["RunService"]
        9 NAMECALL                         R2 R2 K5 ["GetService"]
       11 CALL                             R2 2 1
       12 GETTABLEKS                       R2 R2 K6 ["Heartbeat"]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          REF R0
       20 CAPTURE                          UPVAL U4
       21 NAMECALL                         R2 R2 K7 ["Connect"]
       23 CALL                             R2 2 1
       24 MOVE                             R0 R2
       25 NEWCLOSURE                       R1 P1
       26 CAPTURE                          REF R0
       27 CLOSEUPVALS                      R0
       28 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FoundationProgressBindableValue"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 LOADN                            R1 0
        6 CALL                             R0 1 0
        7 JUMP                             ; [+3]
        8 GETUPVAL                         R0 2
        9 LOADN                            R1 0
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 3
       12 LOADB                            R1 1
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R2 K0 ["Progress: %*%%"]
        1 FASTCALL1                        MATH_FLOOR R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K3 [math.floor]
        5 CALL                             R4 1 1
        6 NAMECALL                         R2 R2 K4 ["format"]
        8 CALL                             R2 2 1
        9 MOVE                             R1 R2
       10 RETURN                           R1 1

PROTO_6:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K0 ["FoundationProgressBindableValue"]
        7 JUMPIF                           R4 ; [+8]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K1 ["useState"]
       11 LOADN                            R5 0
       12 CALL                             R4 1 2
       13 MOVE                             R0 R4
       14 MOVE                             R1 R5
       15 JUMP                             ; [+7]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K2 ["useBinding"]
       19 LOADN                            R5 0
       20 CALL                             R4 1 2
       21 MOVE                             R2 R4
       22 MOVE                             R3 R5
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K1 ["useState"]
       26 LOADB                            R5 0
       27 CALL                             R4 1 2
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R6 R6 K3 ["useEffect"]
       31 NEWCLOSURE                       R7 P0
       32 CAPTURE                          VAL R4
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          REF R3
       35 CAPTURE                          REF R1
       36 CAPTURE                          VAL R5
       37 NEWTABLE                         R8 0 1
       39 MOVE                             R9 R4
       40 SETLIST                          R8 R9 1 [1]
       42 CALL                             R6 2 0
       43 NEWCLOSURE                       R6 P1
       44 CAPTURE                          UPVAL U0
       45 CAPTURE                          REF R3
       46 CAPTURE                          REF R1
       47 CAPTURE                          VAL R5
       48 GETUPVAL                         R7 1
       49 GETTABLEKS                       R7 R7 K4 ["createElement"]
       51 GETUPVAL                         R8 2
       52 DUPTABLE                         R9 K7 [{["tag"] = "col gap-medium auto-y size-full-0"}]
       53 DUPTABLE                         R10 K12 [{"Title", "CircleProgress", "BarProgress", "Button"}]
       54 GETUPVAL                         R11 1
       55 GETTABLEKS                       R11 R11 K4 ["createElement"]
       57 GETUPVAL                         R12 3
       58 DUPTABLE                         R13 K17 [{["Text"], ["tag"] = "size-0-0 auto-xy text-title-small content-emphasis", ["LayoutOrder"] = 1}]
       59 GETUPVAL                         R15 0
       60 GETTABLEKS                       R15 R15 K0 ["FoundationProgressBindableValue"]
       62 JUMPIFNOT                        R15 ; [+5]
       63 DUPCLOSURE                       R16 K18 [PROTO_5]
       64 NAMECALL                         R14 R2 K19 ["map"]
       66 CALL                             R14 2 1
       67 JUMP                             ; [+10]
       68 LOADK                            R15 K20 ["Progress: %*%%"]
       69 FASTCALL1                        MATH_FLOOR R0 ; [+3]
       70 MOVE                             R18 R0
       71 GETIMPORT                        R17 K23 [math.floor]
       73 CALL                             R17 1 1
       74 NAMECALL                         R15 R15 K24 ["format"]
       76 CALL                             R15 2 1
       77 MOVE                             R14 R15
       78 SETTABLEKS                       R14 R13 K13 ["Text"]
       80 CALL                             R11 2 1
       81 SETTABLEKS                       R11 R10 K8 ["Title"]
       83 GETUPVAL                         R11 1
       84 GETTABLEKS                       R11 R11 K4 ["createElement"]
       86 GETUPVAL                         R12 4
       87 DUPTABLE                         R13 K29 [{["shape"], ["value"], ["size"], ["LayoutOrder"] = 2}]
       88 GETUPVAL                         R14 5
       89 GETTABLEKS                       R14 R14 K30 ["Circle"]
       91 SETTABLEKS                       R14 R13 K25 ["shape"]
       93 GETUPVAL                         R15 0
       94 GETTABLEKS                       R15 R15 K0 ["FoundationProgressBindableValue"]
       96 JUMPIFNOT                        R15 ; [+2]
       97 MOVE                             R14 R2
       98 JUMP                             ; [+1]
       99 MOVE                             R14 R0
      100 SETTABLEKS                       R14 R13 K26 ["value"]
      102 GETUPVAL                         R14 6
      103 GETTABLEKS                       R14 R14 K31 ["Large"]
      105 SETTABLEKS                       R14 R13 K27 ["size"]
      107 CALL                             R11 2 1
      108 SETTABLEKS                       R11 R10 K9 ["CircleProgress"]
      110 GETUPVAL                         R11 1
      111 GETTABLEKS                       R11 R11 K4 ["createElement"]
      113 GETUPVAL                         R12 4
      114 DUPTABLE                         R13 K33 [{["shape"], ["value"], ["size"], ["LayoutOrder"] = 3}]
      115 GETUPVAL                         R14 5
      116 GETTABLEKS                       R14 R14 K34 ["Bar"]
      118 SETTABLEKS                       R14 R13 K25 ["shape"]
      120 GETUPVAL                         R15 0
      121 GETTABLEKS                       R15 R15 K0 ["FoundationProgressBindableValue"]
      123 JUMPIFNOT                        R15 ; [+2]
      124 MOVE                             R14 R2
      125 JUMP                             ; [+1]
      126 MOVE                             R14 R0
      127 SETTABLEKS                       R14 R13 K26 ["value"]
      129 GETUPVAL                         R14 6
      130 GETTABLEKS                       R14 R14 K35 ["Medium"]
      132 SETTABLEKS                       R14 R13 K27 ["size"]
      134 CALL                             R11 2 1
      135 SETTABLEKS                       R11 R10 K10 ["BarProgress"]
      137 GETUPVAL                         R11 1
      138 GETTABLEKS                       R11 R11 K4 ["createElement"]
      140 GETUPVAL                         R12 7
      141 DUPTABLE                         R13 K40 [{["text"], ["onActivated"], ["isDisabled"], ["LayoutOrder"] = 4}]
      142 JUMPIFNOT                        R4 ; [+2]
      143 LOADK                            R14 K41 ["Animating..."]
      144 JUMP                             ; [+1]
      145 LOADK                            R14 K42 ["Start Animation"]
      146 SETTABLEKS                       R14 R13 K36 ["text"]
      148 SETTABLEKS                       R6 R13 K37 ["onActivated"]
      150 SETTABLEKS                       R4 R13 K38 ["isDisabled"]
      152 CALL                             R11 2 1
      153 SETTABLEKS                       R11 R10 K11 ["Button"]
      155 CALL                             R7 3 -1
      156 CLOSEUPVALS                      R1
      157 RETURN                           R7 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{["tag"] = "row gap-medium align-y-center size-full-0 auto-y"}]
        5 DUPTABLE                         R4 K7 [{"Label", "CircleProgress", "BarProgress"}]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K0 ["createElement"]
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R7 K12 [{["Text"], ["tag"] = "size-1500-0 text-align-x-right auto-y text-body-small content-default", ["LayoutOrder"] = 1}]
       11 LOADK                            R9 K13 ["%*:"]
       12 MOVE                             R11 R0
       13 NAMECALL                         R9 R9 K14 ["format"]
       15 CALL                             R9 2 1
       16 MOVE                             R8 R9
       17 SETTABLEKS                       R8 R7 K8 ["Text"]
       19 CALL                             R5 2 1
       20 SETTABLEKS                       R5 R4 K4 ["Label"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K0 ["createElement"]
       25 GETUPVAL                         R6 3
       26 DUPTABLE                         R7 K19 [{["shape"], ["value"], ["size"], ["LayoutOrder"] = 2}]
       27 GETUPVAL                         R8 4
       28 GETTABLEKS                       R8 R8 K20 ["Circle"]
       30 SETTABLEKS                       R8 R7 K15 ["shape"]
       32 GETUPVAL                         R8 5
       33 GETTABLEKS                       R8 R8 K16 ["value"]
       35 SETTABLEKS                       R8 R7 K16 ["value"]
       37 SETTABLEKS                       R0 R7 K17 ["size"]
       39 CALL                             R5 2 1
       40 SETTABLEKS                       R5 R4 K5 ["CircleProgress"]
       42 GETUPVAL                         R6 6
       43 GETTABLEKS                       R6 R6 K21 ["Medium"]
       45 JUMPIFNOTEQ                      R0 R6 ; [+27]
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R5 R5 K0 ["createElement"]
       50 GETUPVAL                         R6 3
       51 DUPTABLE                         R7 K24 [{["shape"], ["value"], ["size"], ["width"], ["LayoutOrder"] = 3}]
       52 GETUPVAL                         R8 4
       53 GETTABLEKS                       R8 R8 K25 ["Bar"]
       55 SETTABLEKS                       R8 R7 K15 ["shape"]
       57 GETUPVAL                         R8 5
       58 GETTABLEKS                       R8 R8 K16 ["value"]
       60 SETTABLEKS                       R8 R7 K16 ["value"]
       62 SETTABLEKS                       R0 R7 K17 ["size"]
       64 GETIMPORT                        R8 K28 [UDim.new]
       66 LOADN                            R9 0
       67 LOADN                            R10 300
       68 CALL                             R8 2 1
       69 SETTABLEKS                       R8 R7 K22 ["width"]
       71 CALL                             R5 2 1
       72 JUMP                             ; [+1]
       73 LOADNIL                          R5
       74 SETTABLEKS                       R5 R4 K6 ["BarProgress"]
       76 CALL                             R1 3 -1
       77 RETURN                           R1 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K4 [{["tag"] = "col gap-large auto-y size-full-0"}]
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K5 ["map"]
       10 GETUPVAL                         R6 3
       11 NEWCLOSURE                       R7 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U3
       19 CALL                             R5 2 -1
       20 CALL                             R2 -1 -1
       21 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{["tag"] = "col gap-medium auto-y size-full-0"}]
        5 DUPTABLE                         R3 K6 [{"CircleIndeterminate", "BarIndeterminate"}]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["createElement"]
        9 GETUPVAL                         R5 2
       10 DUPTABLE                         R6 K11 [{["shape"], ["size"], ["LayoutOrder"] = 1}]
       11 GETUPVAL                         R7 3
       12 GETTABLEKS                       R7 R7 K12 ["Circle"]
       14 SETTABLEKS                       R7 R6 K7 ["shape"]
       16 GETUPVAL                         R7 4
       17 GETTABLEKS                       R7 R7 K13 ["Large"]
       19 SETTABLEKS                       R7 R6 K8 ["size"]
       21 CALL                             R4 2 1
       22 SETTABLEKS                       R4 R3 K4 ["CircleIndeterminate"]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K0 ["createElement"]
       27 GETUPVAL                         R5 2
       28 DUPTABLE                         R6 K15 [{["shape"], ["size"], ["LayoutOrder"] = 2}]
       29 GETUPVAL                         R7 3
       30 GETTABLEKS                       R7 R7 K16 ["Bar"]
       32 SETTABLEKS                       R7 R6 K7 ["shape"]
       34 GETUPVAL                         R7 4
       35 GETTABLEKS                       R7 R7 K17 ["Medium"]
       37 SETTABLEKS                       R7 R6 K8 ["size"]
       39 CALL                             R4 2 1
       40 SETTABLEKS                       R4 R3 K5 ["BarIndeterminate"]
       42 CALL                             R0 3 -1
       43 RETURN                           R0 -1

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
       28 GETTABLEKS                       R6 R0 K11 ["Utility"]
       30 GETTABLEKS                       R6 R6 K12 ["Flags"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R7 K13 ["Progress"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K14 ["Enums"]
       44 GETTABLEKS                       R8 R8 K15 ["ProgressShape"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K14 ["Enums"]
       51 GETTABLEKS                       R9 R9 K16 ["ProgressSize"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K9 ["Components"]
       58 GETTABLEKS                       R10 R10 K17 ["Text"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K9 ["Components"]
       65 GETTABLEKS                       R11 R11 K18 ["View"]
       67 CALL                             R10 1 1
       68 DUPCLOSURE                       R11 K19 [PROTO_0]
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R6
       71 DUPCLOSURE                       R12 K20 [PROTO_6]
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R4
       80 DUPCLOSURE                       R13 K21 [PROTO_8]
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R7
       88 DUPCLOSURE                       R14 K22 [PROTO_9]
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R8
       94 DUPTABLE                         R15 K27 [{["summary"] = "Progress component with Circle and Bar shapes, supporting both determinate and indeterminate states", ["stories"], ["controls"]}]
       95 NEWTABLE                         R16 0 4
       97 DUPTABLE                         R17 K31 [{["name"] = "Configurable", ["story"]}]
       98 SETTABLEKS                       R11 R17 K30 ["story"]
      100 DUPTABLE                         R18 K33 [{["name"] = "Animated Demo", ["story"]}]
      101 SETTABLEKS                       R12 R18 K30 ["story"]
      103 DUPTABLE                         R19 K35 [{["name"] = "Sizes", ["story"]}]
      104 SETTABLEKS                       R13 R19 K30 ["story"]
      106 DUPTABLE                         R20 K37 [{["name"] = "Indeterminate", ["story"]}]
      107 SETTABLEKS                       R14 R20 K30 ["story"]
      109 SETLIST                          R16 R17 4 [1]
      111 SETTABLEKS                       R16 R15 K25 ["stories"]
      113 DUPTABLE                         R16 K44 [{["shape"], ["size"], ["value"] = 65, ["isIndeterminate"] = False}]
      114 GETTABLEKS                       R17 R2 K45 ["values"]
      116 MOVE                             R18 R7
      117 CALL                             R17 1 1
      118 SETTABLEKS                       R17 R16 K38 ["shape"]
      120 GETTABLEKS                       R17 R2 K45 ["values"]
      122 MOVE                             R18 R8
      123 CALL                             R17 1 1
      124 SETTABLEKS                       R17 R16 K39 ["size"]
      126 SETTABLEKS                       R16 R15 K26 ["controls"]
      128 RETURN                           R15 1
