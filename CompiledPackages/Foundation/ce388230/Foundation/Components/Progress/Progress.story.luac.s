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
       52 DUPTABLE                         R9 K6 [{"tag"}]
       53 LOADK                            R10 K7 ["col gap-medium auto-y size-full-0"]
       54 SETTABLEKS                       R10 R9 K5 ["tag"]
       56 DUPTABLE                         R10 K12 [{"Title", "CircleProgress", "BarProgress", "Button"}]
       57 GETUPVAL                         R11 1
       58 GETTABLEKS                       R11 R11 K4 ["createElement"]
       60 GETUPVAL                         R12 3
       61 DUPTABLE                         R13 K15 [{"Text", "tag", "LayoutOrder"}]
       62 GETUPVAL                         R15 0
       63 GETTABLEKS                       R15 R15 K0 ["FoundationProgressBindableValue"]
       65 JUMPIFNOT                        R15 ; [+5]
       66 DUPCLOSURE                       R16 K16 [PROTO_5]
       67 NAMECALL                         R14 R2 K17 ["map"]
       69 CALL                             R14 2 1
       70 JUMP                             ; [+10]
       71 LOADK                            R15 K18 ["Progress: %*%%"]
       72 FASTCALL1                        MATH_FLOOR R0 ; [+3]
       73 MOVE                             R18 R0
       74 GETIMPORT                        R17 K21 [math.floor]
       76 CALL                             R17 1 1
       77 NAMECALL                         R15 R15 K22 ["format"]
       79 CALL                             R15 2 1
       80 MOVE                             R14 R15
       81 SETTABLEKS                       R14 R13 K13 ["Text"]
       83 LOADK                            R14 K23 ["size-0-0 auto-xy text-title-small content-emphasis"]
       84 SETTABLEKS                       R14 R13 K5 ["tag"]
       86 LOADN                            R14 1
       87 SETTABLEKS                       R14 R13 K14 ["LayoutOrder"]
       89 CALL                             R11 2 1
       90 SETTABLEKS                       R11 R10 K8 ["Title"]
       92 GETUPVAL                         R11 1
       93 GETTABLEKS                       R11 R11 K4 ["createElement"]
       95 GETUPVAL                         R12 4
       96 DUPTABLE                         R13 K27 [{"shape", "value", "size", "LayoutOrder"}]
       97 GETUPVAL                         R14 5
       98 GETTABLEKS                       R14 R14 K28 ["Circle"]
      100 SETTABLEKS                       R14 R13 K24 ["shape"]
      102 GETUPVAL                         R15 0
      103 GETTABLEKS                       R15 R15 K0 ["FoundationProgressBindableValue"]
      105 JUMPIFNOT                        R15 ; [+2]
      106 MOVE                             R14 R2
      107 JUMP                             ; [+1]
      108 MOVE                             R14 R0
      109 SETTABLEKS                       R14 R13 K25 ["value"]
      111 GETUPVAL                         R14 6
      112 GETTABLEKS                       R14 R14 K29 ["Large"]
      114 SETTABLEKS                       R14 R13 K26 ["size"]
      116 LOADN                            R14 2
      117 SETTABLEKS                       R14 R13 K14 ["LayoutOrder"]
      119 CALL                             R11 2 1
      120 SETTABLEKS                       R11 R10 K9 ["CircleProgress"]
      122 GETUPVAL                         R11 1
      123 GETTABLEKS                       R11 R11 K4 ["createElement"]
      125 GETUPVAL                         R12 4
      126 DUPTABLE                         R13 K27 [{"shape", "value", "size", "LayoutOrder"}]
      127 GETUPVAL                         R14 5
      128 GETTABLEKS                       R14 R14 K30 ["Bar"]
      130 SETTABLEKS                       R14 R13 K24 ["shape"]
      132 GETUPVAL                         R15 0
      133 GETTABLEKS                       R15 R15 K0 ["FoundationProgressBindableValue"]
      135 JUMPIFNOT                        R15 ; [+2]
      136 MOVE                             R14 R2
      137 JUMP                             ; [+1]
      138 MOVE                             R14 R0
      139 SETTABLEKS                       R14 R13 K25 ["value"]
      141 GETUPVAL                         R14 6
      142 GETTABLEKS                       R14 R14 K31 ["Medium"]
      144 SETTABLEKS                       R14 R13 K26 ["size"]
      146 LOADN                            R14 3
      147 SETTABLEKS                       R14 R13 K14 ["LayoutOrder"]
      149 CALL                             R11 2 1
      150 SETTABLEKS                       R11 R10 K10 ["BarProgress"]
      152 GETUPVAL                         R11 1
      153 GETTABLEKS                       R11 R11 K4 ["createElement"]
      155 GETUPVAL                         R12 7
      156 DUPTABLE                         R13 K35 [{"text", "onActivated", "isDisabled", "LayoutOrder"}]
      157 JUMPIFNOT                        R4 ; [+2]
      158 LOADK                            R14 K36 ["Animating..."]
      159 JUMP                             ; [+1]
      160 LOADK                            R14 K37 ["Start Animation"]
      161 SETTABLEKS                       R14 R13 K32 ["text"]
      163 SETTABLEKS                       R6 R13 K33 ["onActivated"]
      165 SETTABLEKS                       R4 R13 K34 ["isDisabled"]
      167 LOADN                            R14 4
      168 SETTABLEKS                       R14 R13 K14 ["LayoutOrder"]
      170 CALL                             R11 2 1
      171 SETTABLEKS                       R11 R10 K11 ["Button"]
      173 CALL                             R7 3 -1
      174 CLOSEUPVALS                      R1
      175 RETURN                           R7 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 LOADK                            R4 K3 ["row gap-medium align-y-center size-full-0 auto-y"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 DUPTABLE                         R4 K7 [{"Label", "CircleProgress", "BarProgress"}]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K0 ["createElement"]
       12 GETUPVAL                         R6 2
       13 DUPTABLE                         R7 K10 [{"Text", "tag", "LayoutOrder"}]
       14 LOADK                            R9 K11 ["%*:"]
       15 MOVE                             R11 R0
       16 NAMECALL                         R9 R9 K12 ["format"]
       18 CALL                             R9 2 1
       19 MOVE                             R8 R9
       20 SETTABLEKS                       R8 R7 K8 ["Text"]
       22 LOADK                            R8 K13 ["size-1500-0 text-align-x-right auto-y text-body-small content-default"]
       23 SETTABLEKS                       R8 R7 K1 ["tag"]
       25 LOADN                            R8 1
       26 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       28 CALL                             R5 2 1
       29 SETTABLEKS                       R5 R4 K4 ["Label"]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K0 ["createElement"]
       34 GETUPVAL                         R6 3
       35 DUPTABLE                         R7 K17 [{"shape", "value", "size", "LayoutOrder"}]
       36 GETUPVAL                         R8 4
       37 GETTABLEKS                       R8 R8 K18 ["Circle"]
       39 SETTABLEKS                       R8 R7 K14 ["shape"]
       41 GETUPVAL                         R8 5
       42 GETTABLEKS                       R8 R8 K15 ["value"]
       44 SETTABLEKS                       R8 R7 K15 ["value"]
       46 SETTABLEKS                       R0 R7 K16 ["size"]
       48 LOADN                            R8 2
       49 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       51 CALL                             R5 2 1
       52 SETTABLEKS                       R5 R4 K5 ["CircleProgress"]
       54 GETUPVAL                         R6 6
       55 GETTABLEKS                       R6 R6 K19 ["Medium"]
       57 JUMPIFNOTEQ                      R0 R6 ; [+30]
       59 GETUPVAL                         R5 0
       60 GETTABLEKS                       R5 R5 K0 ["createElement"]
       62 GETUPVAL                         R6 3
       63 DUPTABLE                         R7 K21 [{"shape", "value", "size", "width", "LayoutOrder"}]
       64 GETUPVAL                         R8 4
       65 GETTABLEKS                       R8 R8 K22 ["Bar"]
       67 SETTABLEKS                       R8 R7 K14 ["shape"]
       69 GETUPVAL                         R8 5
       70 GETTABLEKS                       R8 R8 K15 ["value"]
       72 SETTABLEKS                       R8 R7 K15 ["value"]
       74 SETTABLEKS                       R0 R7 K16 ["size"]
       76 GETIMPORT                        R8 K25 [UDim.new]
       78 LOADN                            R9 0
       79 LOADN                            R10 44
       80 CALL                             R8 2 1
       81 SETTABLEKS                       R8 R7 K20 ["width"]
       83 LOADN                            R8 3
       84 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       86 CALL                             R5 2 1
       87 JUMP                             ; [+1]
       88 LOADNIL                          R5
       89 SETTABLEKS                       R5 R4 K6 ["BarProgress"]
       91 CALL                             R1 3 -1
       92 RETURN                           R1 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K3 [{"tag"}]
        7 LOADK                            R5 K4 ["col gap-large auto-y size-full-0"]
        8 SETTABLEKS                       R5 R4 K2 ["tag"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K5 ["map"]
       13 GETUPVAL                         R6 3
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          UPVAL U6
       20 CAPTURE                          VAL R1
       21 CAPTURE                          UPVAL U3
       22 CALL                             R5 2 -1
       23 CALL                             R2 -1 -1
       24 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"tag"}]
        5 LOADK                            R3 K3 ["col gap-medium auto-y size-full-0"]
        6 SETTABLEKS                       R3 R2 K1 ["tag"]
        8 DUPTABLE                         R3 K6 [{"CircleIndeterminate", "BarIndeterminate"}]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K0 ["createElement"]
       12 GETUPVAL                         R5 2
       13 DUPTABLE                         R6 K10 [{"shape", "size", "LayoutOrder"}]
       14 GETUPVAL                         R7 3
       15 GETTABLEKS                       R7 R7 K11 ["Circle"]
       17 SETTABLEKS                       R7 R6 K7 ["shape"]
       19 GETUPVAL                         R7 4
       20 GETTABLEKS                       R7 R7 K12 ["Large"]
       22 SETTABLEKS                       R7 R6 K8 ["size"]
       24 LOADN                            R7 1
       25 SETTABLEKS                       R7 R6 K9 ["LayoutOrder"]
       27 CALL                             R4 2 1
       28 SETTABLEKS                       R4 R3 K4 ["CircleIndeterminate"]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K0 ["createElement"]
       33 GETUPVAL                         R5 2
       34 DUPTABLE                         R6 K10 [{"shape", "size", "LayoutOrder"}]
       35 GETUPVAL                         R7 3
       36 GETTABLEKS                       R7 R7 K13 ["Bar"]
       38 SETTABLEKS                       R7 R6 K7 ["shape"]
       40 GETUPVAL                         R7 4
       41 GETTABLEKS                       R7 R7 K14 ["Medium"]
       43 SETTABLEKS                       R7 R6 K8 ["size"]
       45 LOADN                            R7 2
       46 SETTABLEKS                       R7 R6 K9 ["LayoutOrder"]
       48 CALL                             R4 2 1
       49 SETTABLEKS                       R4 R3 K5 ["BarIndeterminate"]
       51 CALL                             R0 3 -1
       52 RETURN                           R0 -1

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
       94 DUPTABLE                         R15 K26 [{"summary", "stories", "controls"}]
       95 LOADK                            R16 K27 ["Progress component with Circle and Bar shapes, supporting both determinate and indeterminate states"]
       96 SETTABLEKS                       R16 R15 K23 ["summary"]
       98 NEWTABLE                         R16 0 4
      100 DUPTABLE                         R17 K30 [{"name", "story"}]
      101 LOADK                            R18 K31 ["Configurable"]
      102 SETTABLEKS                       R18 R17 K28 ["name"]
      104 SETTABLEKS                       R11 R17 K29 ["story"]
      106 DUPTABLE                         R18 K30 [{"name", "story"}]
      107 LOADK                            R19 K32 ["Animated Demo"]
      108 SETTABLEKS                       R19 R18 K28 ["name"]
      110 SETTABLEKS                       R12 R18 K29 ["story"]
      112 DUPTABLE                         R19 K30 [{"name", "story"}]
      113 LOADK                            R20 K33 ["Sizes"]
      114 SETTABLEKS                       R20 R19 K28 ["name"]
      116 SETTABLEKS                       R13 R19 K29 ["story"]
      118 DUPTABLE                         R20 K30 [{"name", "story"}]
      119 LOADK                            R21 K34 ["Indeterminate"]
      120 SETTABLEKS                       R21 R20 K28 ["name"]
      122 SETTABLEKS                       R14 R20 K29 ["story"]
      124 SETLIST                          R16 R17 4 [1]
      126 SETTABLEKS                       R16 R15 K24 ["stories"]
      128 DUPTABLE                         R16 K39 [{"shape", "size", "value", "isIndeterminate"}]
      129 GETTABLEKS                       R17 R2 K40 ["values"]
      131 MOVE                             R18 R7
      132 CALL                             R17 1 1
      133 SETTABLEKS                       R17 R16 K35 ["shape"]
      135 GETTABLEKS                       R17 R2 K40 ["values"]
      137 MOVE                             R18 R8
      138 CALL                             R17 1 1
      139 SETTABLEKS                       R17 R16 K36 ["size"]
      141 LOADN                            R17 65
      142 SETTABLEKS                       R17 R16 K37 ["value"]
      144 LOADB                            R17 0
      145 SETTABLEKS                       R17 R16 K38 ["isIndeterminate"]
      147 SETTABLEKS                       R16 R15 K25 ["controls"]
      149 RETURN                           R15 1
