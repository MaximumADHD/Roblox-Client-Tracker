PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R3 R1 K1 ["isIndeterminate"]
        4 JUMPIFNOT                        R3 ; [+2]
        5 LOADNIL                          R2
        6 JUMP                             ; [+2]
        7 GETTABLEKS                       R2 R1 K2 ["value"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K3 ["createElement"]
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
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 LOADN                            R2 100
       17 JUMPIFNOTLE                      R2 R1 ; [+8]
       19 GETUPVAL                         R2 2
       20 NAMECALL                         R2 R2 K7 ["Disconnect"]
       22 CALL                             R2 1 0
       23 GETUPVAL                         R2 3
       24 LOADB                            R3 0
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

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
        2 JUMPIFNOT                        R1 ; [+20]
        3 GETIMPORT                        R1 K1 [tick]
        5 CALL                             R1 0 1
        6 GETIMPORT                        R3 K3 [game]
        8 LOADK                            R5 K4 ["RunService"]
        9 NAMECALL                         R3 R3 K5 ["GetService"]
       11 CALL                             R3 2 1
       12 GETTABLEKS                       R2 R3 K6 ["Heartbeat"]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          REF R0
       18 CAPTURE                          UPVAL U2
       19 NAMECALL                         R2 R2 K7 ["Connect"]
       21 CALL                             R2 2 1
       22 MOVE                             R0 R2
       23 NEWCLOSURE                       R1 P1
       24 CAPTURE                          REF R0
       25 CLOSEUPVALS                      R0
       26 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useBinding"]
        3 LOADN                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["useState"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K2 ["useEffect"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R3
       17 NEWTABLE                         R6 0 1
       19 MOVE                             R7 R2
       20 SETLIST                          R6 R7 1 [1]
       22 CALL                             R4 2 0
       23 NEWCLOSURE                       R4 P1
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R3
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K3 ["createElement"]
       29 GETUPVAL                         R6 1
       30 DUPTABLE                         R7 K5 [{"tag"}]
       31 LOADK                            R8 K6 ["col gap-medium size-full-0 auto-y"]
       32 SETTABLEKS                       R8 R7 K4 ["tag"]
       34 DUPTABLE                         R8 K11 [{"Title", "CircleProgress", "BarProgress", "Button"}]
       35 GETUPVAL                         R10 0
       36 GETTABLEKS                       R9 R10 K3 ["createElement"]
       38 GETUPVAL                         R10 2
       39 DUPTABLE                         R11 K14 [{"Text", "tag", "LayoutOrder"}]
       40 DUPCLOSURE                       R14 K15 [PROTO_5]
       41 NAMECALL                         R12 R0 K16 ["map"]
       43 CALL                             R12 2 1
       44 SETTABLEKS                       R12 R11 K12 ["Text"]
       46 LOADK                            R12 K17 ["size-0-0 auto-xy text-title-small content-emphasis"]
       47 SETTABLEKS                       R12 R11 K4 ["tag"]
       49 LOADN                            R12 1
       50 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
       52 CALL                             R9 2 1
       53 SETTABLEKS                       R9 R8 K7 ["Title"]
       55 GETUPVAL                         R10 0
       56 GETTABLEKS                       R9 R10 K3 ["createElement"]
       58 GETUPVAL                         R10 3
       59 DUPTABLE                         R11 K21 [{"shape", "value", "size", "LayoutOrder"}]
       60 GETUPVAL                         R13 4
       61 GETTABLEKS                       R12 R13 K22 ["Circle"]
       63 SETTABLEKS                       R12 R11 K18 ["shape"]
       65 SETTABLEKS                       R0 R11 K19 ["value"]
       67 GETUPVAL                         R13 5
       68 GETTABLEKS                       R12 R13 K23 ["Large"]
       70 SETTABLEKS                       R12 R11 K20 ["size"]
       72 LOADN                            R12 2
       73 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
       75 CALL                             R9 2 1
       76 SETTABLEKS                       R9 R8 K8 ["CircleProgress"]
       78 GETUPVAL                         R10 0
       79 GETTABLEKS                       R9 R10 K3 ["createElement"]
       81 GETUPVAL                         R10 3
       82 DUPTABLE                         R11 K21 [{"shape", "value", "size", "LayoutOrder"}]
       83 GETUPVAL                         R13 4
       84 GETTABLEKS                       R12 R13 K24 ["Bar"]
       86 SETTABLEKS                       R12 R11 K18 ["shape"]
       88 SETTABLEKS                       R0 R11 K19 ["value"]
       90 GETUPVAL                         R13 5
       91 GETTABLEKS                       R12 R13 K25 ["Medium"]
       93 SETTABLEKS                       R12 R11 K20 ["size"]
       95 LOADN                            R12 3
       96 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
       98 CALL                             R9 2 1
       99 SETTABLEKS                       R9 R8 K9 ["BarProgress"]
      101 GETUPVAL                         R10 0
      102 GETTABLEKS                       R9 R10 K3 ["createElement"]
      104 GETUPVAL                         R10 6
      105 DUPTABLE                         R11 K29 [{"text", "onActivated", "isDisabled", "LayoutOrder"}]
      106 JUMPIFNOT                        R2 ; [+2]
      107 LOADK                            R12 K30 ["Animating..."]
      108 JUMP                             ; [+1]
      109 LOADK                            R12 K31 ["Start Animation"]
      110 SETTABLEKS                       R12 R11 K26 ["text"]
      112 SETTABLEKS                       R4 R11 K27 ["onActivated"]
      114 SETTABLEKS                       R2 R11 K28 ["isDisabled"]
      116 LOADN                            R12 4
      117 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
      119 CALL                             R9 2 1
      120 SETTABLEKS                       R9 R8 K10 ["Button"]
      122 CALL                             R5 3 -1
      123 RETURN                           R5 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 LOADK                            R4 K3 ["row align-y-center gap-medium size-full-0 auto-y"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 DUPTABLE                         R4 K7 [{"Label", "CircleProgress", "BarProgress"}]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K0 ["createElement"]
       12 GETUPVAL                         R6 2
       13 DUPTABLE                         R7 K10 [{"Text", "tag", "LayoutOrder"}]
       14 LOADK                            R9 K11 ["%*:"]
       15 MOVE                             R11 R0
       16 NAMECALL                         R9 R9 K12 ["format"]
       18 CALL                             R9 2 1
       19 MOVE                             R8 R9
       20 SETTABLEKS                       R8 R7 K8 ["Text"]
       22 LOADK                            R8 K13 ["size-1500-0 auto-y text-body-small text-align-x-right content-default"]
       23 SETTABLEKS                       R8 R7 K1 ["tag"]
       25 LOADN                            R8 1
       26 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       28 CALL                             R5 2 1
       29 SETTABLEKS                       R5 R4 K4 ["Label"]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R5 R6 K0 ["createElement"]
       34 GETUPVAL                         R6 3
       35 DUPTABLE                         R7 K17 [{"shape", "value", "size", "LayoutOrder"}]
       36 GETUPVAL                         R9 4
       37 GETTABLEKS                       R8 R9 K18 ["Circle"]
       39 SETTABLEKS                       R8 R7 K14 ["shape"]
       41 GETUPVAL                         R9 5
       42 GETTABLEKS                       R8 R9 K15 ["value"]
       44 SETTABLEKS                       R8 R7 K15 ["value"]
       46 SETTABLEKS                       R0 R7 K16 ["size"]
       48 LOADN                            R8 2
       49 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       51 CALL                             R5 2 1
       52 SETTABLEKS                       R5 R4 K5 ["CircleProgress"]
       54 GETUPVAL                         R7 6
       55 GETTABLEKS                       R6 R7 K19 ["Medium"]
       57 JUMPIFNOTEQ                      R0 R6 ; [+30]
       59 GETUPVAL                         R6 0
       60 GETTABLEKS                       R5 R6 K0 ["createElement"]
       62 GETUPVAL                         R6 3
       63 DUPTABLE                         R7 K21 [{"shape", "value", "size", "width", "LayoutOrder"}]
       64 GETUPVAL                         R9 4
       65 GETTABLEKS                       R8 R9 K22 ["Bar"]
       67 SETTABLEKS                       R8 R7 K14 ["shape"]
       69 GETUPVAL                         R9 5
       70 GETTABLEKS                       R8 R9 K15 ["value"]
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
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K3 [{"tag"}]
        7 LOADK                            R5 K4 ["col gap-large size-full-0 auto-y"]
        8 SETTABLEKS                       R5 R4 K2 ["tag"]
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R5 R6 K5 ["map"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"tag"}]
        5 LOADK                            R3 K3 ["col gap-medium size-full-0 auto-y"]
        6 SETTABLEKS                       R3 R2 K1 ["tag"]
        8 DUPTABLE                         R3 K6 [{"CircleIndeterminate", "BarIndeterminate"}]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K0 ["createElement"]
       12 GETUPVAL                         R5 2
       13 DUPTABLE                         R6 K10 [{"shape", "size", "LayoutOrder"}]
       14 GETUPVAL                         R8 3
       15 GETTABLEKS                       R7 R8 K11 ["Circle"]
       17 SETTABLEKS                       R7 R6 K7 ["shape"]
       19 GETUPVAL                         R8 4
       20 GETTABLEKS                       R7 R8 K12 ["Large"]
       22 SETTABLEKS                       R7 R6 K8 ["size"]
       24 LOADN                            R7 1
       25 SETTABLEKS                       R7 R6 K9 ["LayoutOrder"]
       27 CALL                             R4 2 1
       28 SETTABLEKS                       R4 R3 K4 ["CircleIndeterminate"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R4 R5 K0 ["createElement"]
       33 GETUPVAL                         R5 2
       34 DUPTABLE                         R6 K10 [{"shape", "size", "LayoutOrder"}]
       35 GETUPVAL                         R8 3
       36 GETTABLEKS                       R7 R8 K13 ["Bar"]
       38 SETTABLEKS                       R7 R6 K7 ["shape"]
       40 GETUPVAL                         R8 4
       41 GETTABLEKS                       R7 R8 K14 ["Medium"]
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
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Button"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["Progress"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K12 ["Enums"]
       37 GETTABLEKS                       R7 R8 K13 ["ProgressShape"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K12 ["Enums"]
       44 GETTABLEKS                       R8 R9 K14 ["ProgressSize"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K9 ["Components"]
       51 GETTABLEKS                       R9 R10 K15 ["Text"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R11 R0 K9 ["Components"]
       58 GETTABLEKS                       R10 R11 K16 ["View"]
       60 CALL                             R9 1 1
       61 DUPCLOSURE                       R10 K17 [PROTO_0]
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R5
       64 DUPCLOSURE                       R11 K18 [PROTO_6]
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R4
       72 DUPCLOSURE                       R12 K19 [PROTO_8]
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R6
       80 DUPCLOSURE                       R13 K20 [PROTO_9]
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R7
       86 DUPTABLE                         R14 K24 [{"summary", "stories", "controls"}]
       87 LOADK                            R15 K25 ["Progress component with Circle and Bar shapes, supporting both determinate and indeterminate states"]
       88 SETTABLEKS                       R15 R14 K21 ["summary"]
       90 NEWTABLE                         R15 0 4
       92 DUPTABLE                         R16 K28 [{"name", "story"}]
       93 LOADK                            R17 K29 ["Configurable"]
       94 SETTABLEKS                       R17 R16 K26 ["name"]
       96 SETTABLEKS                       R10 R16 K27 ["story"]
       98 DUPTABLE                         R17 K28 [{"name", "story"}]
       99 LOADK                            R18 K30 ["Animated Demo"]
      100 SETTABLEKS                       R18 R17 K26 ["name"]
      102 SETTABLEKS                       R11 R17 K27 ["story"]
      104 DUPTABLE                         R18 K28 [{"name", "story"}]
      105 LOADK                            R19 K31 ["Sizes"]
      106 SETTABLEKS                       R19 R18 K26 ["name"]
      108 SETTABLEKS                       R12 R18 K27 ["story"]
      110 DUPTABLE                         R19 K28 [{"name", "story"}]
      111 LOADK                            R20 K32 ["Indeterminate"]
      112 SETTABLEKS                       R20 R19 K26 ["name"]
      114 SETTABLEKS                       R13 R19 K27 ["story"]
      116 SETLIST                          R15 R16 4 [1]
      118 SETTABLEKS                       R15 R14 K22 ["stories"]
      120 DUPTABLE                         R15 K37 [{"shape", "size", "value", "isIndeterminate"}]
      121 GETTABLEKS                       R16 R2 K38 ["values"]
      123 MOVE                             R17 R6
      124 CALL                             R16 1 1
      125 SETTABLEKS                       R16 R15 K33 ["shape"]
      127 GETTABLEKS                       R16 R2 K38 ["values"]
      129 MOVE                             R17 R7
      130 CALL                             R16 1 1
      131 SETTABLEKS                       R16 R15 K34 ["size"]
      133 LOADN                            R16 65
      134 SETTABLEKS                       R16 R15 K35 ["value"]
      136 LOADB                            R16 0
      137 SETTABLEKS                       R16 R15 K36 ["isIndeterminate"]
      139 SETTABLEKS                       R15 R14 K23 ["controls"]
      141 RETURN                           R14 1
