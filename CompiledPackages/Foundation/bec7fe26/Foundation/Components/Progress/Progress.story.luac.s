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
        6 GETIMPORT                        R2 K3 [game]
        8 LOADK                            R4 K4 ["RunService"]
        9 NAMECALL                         R2 R2 K5 ["GetService"]
       11 CALL                             R2 2 1
       12 GETTABLEKS                       R2 R2 K6 ["Heartbeat"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADN                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useState"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K1 ["useEffect"]
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
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K2 ["createElement"]
       29 GETUPVAL                         R6 1
       30 DUPTABLE                         R7 K5 [{["tag"] = "col gap-medium auto-y size-full-0"}]
       31 DUPTABLE                         R8 K10 [{"Title", "CircleProgress", "BarProgress", "Button"}]
       32 GETUPVAL                         R9 0
       33 GETTABLEKS                       R9 R9 K2 ["createElement"]
       35 GETUPVAL                         R10 2
       36 DUPTABLE                         R11 K15 [{["Text"], ["tag"] = "size-0-0 auto-xy text-title-small content-emphasis", ["LayoutOrder"] = 1}]
       37 LOADK                            R13 K16 ["Progress: %*%%"]
       38 FASTCALL1                        MATH_FLOOR R0 ; [+3]
       39 MOVE                             R16 R0
       40 GETIMPORT                        R15 K19 [math.floor]
       42 CALL                             R15 1 1
       43 NAMECALL                         R13 R13 K20 ["format"]
       45 CALL                             R13 2 1
       46 MOVE                             R12 R13
       47 SETTABLEKS                       R12 R11 K11 ["Text"]
       49 CALL                             R9 2 1
       50 SETTABLEKS                       R9 R8 K6 ["Title"]
       52 GETUPVAL                         R9 0
       53 GETTABLEKS                       R9 R9 K2 ["createElement"]
       55 GETUPVAL                         R10 3
       56 DUPTABLE                         R11 K25 [{["shape"], ["value"], ["size"], ["LayoutOrder"] = 2}]
       57 GETUPVAL                         R12 4
       58 GETTABLEKS                       R12 R12 K26 ["Circle"]
       60 SETTABLEKS                       R12 R11 K21 ["shape"]
       62 SETTABLEKS                       R0 R11 K22 ["value"]
       64 GETUPVAL                         R12 5
       65 GETTABLEKS                       R12 R12 K27 ["Large"]
       67 SETTABLEKS                       R12 R11 K23 ["size"]
       69 CALL                             R9 2 1
       70 SETTABLEKS                       R9 R8 K7 ["CircleProgress"]
       72 GETUPVAL                         R9 0
       73 GETTABLEKS                       R9 R9 K2 ["createElement"]
       75 GETUPVAL                         R10 3
       76 DUPTABLE                         R11 K29 [{["shape"], ["value"], ["size"], ["LayoutOrder"] = 3}]
       77 GETUPVAL                         R12 4
       78 GETTABLEKS                       R12 R12 K30 ["Bar"]
       80 SETTABLEKS                       R12 R11 K21 ["shape"]
       82 SETTABLEKS                       R0 R11 K22 ["value"]
       84 GETUPVAL                         R12 5
       85 GETTABLEKS                       R12 R12 K31 ["Medium"]
       87 SETTABLEKS                       R12 R11 K23 ["size"]
       89 CALL                             R9 2 1
       90 SETTABLEKS                       R9 R8 K8 ["BarProgress"]
       92 GETUPVAL                         R9 0
       93 GETTABLEKS                       R9 R9 K2 ["createElement"]
       95 GETUPVAL                         R10 6
       96 DUPTABLE                         R11 K36 [{["text"], ["onActivated"], ["isDisabled"], ["LayoutOrder"] = 4}]
       97 JUMPIFNOT                        R2 ; [+2]
       98 LOADK                            R12 K37 ["Animating..."]
       99 JUMP                             ; [+1]
      100 LOADK                            R12 K38 ["Start Animation"]
      101 SETTABLEKS                       R12 R11 K32 ["text"]
      103 SETTABLEKS                       R4 R11 K33 ["onActivated"]
      105 SETTABLEKS                       R2 R11 K34 ["isDisabled"]
      107 CALL                             R9 2 1
      108 SETTABLEKS                       R9 R8 K9 ["Button"]
      110 CALL                             R5 3 -1
      111 RETURN                           R5 -1

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Progress"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["View"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R7 K12 ["Text"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Components"]
       44 GETTABLEKS                       R8 R8 K13 ["Button"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K14 ["Enums"]
       51 GETTABLEKS                       R9 R9 K15 ["ProgressShape"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K14 ["Enums"]
       58 GETTABLEKS                       R10 R10 K16 ["ProgressSize"]
       60 CALL                             R9 1 1
       61 DUPCLOSURE                       R10 K17 [PROTO_0]
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R4
       64 DUPCLOSURE                       R11 K18 [PROTO_5]
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R7
       72 DUPCLOSURE                       R12 K19 [PROTO_7]
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R8
       80 DUPCLOSURE                       R13 K20 [PROTO_8]
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R9
       86 DUPTABLE                         R14 K25 [{["summary"] = "Progress component with Circle and Bar shapes, supporting both determinate and indeterminate states", ["stories"], ["controls"]}]
       87 NEWTABLE                         R15 0 4
       89 DUPTABLE                         R16 K29 [{["name"] = "Configurable", ["story"]}]
       90 SETTABLEKS                       R10 R16 K28 ["story"]
       92 DUPTABLE                         R17 K31 [{["name"] = "Animated Demo", ["story"]}]
       93 SETTABLEKS                       R11 R17 K28 ["story"]
       95 DUPTABLE                         R18 K33 [{["name"] = "Sizes", ["story"]}]
       96 SETTABLEKS                       R12 R18 K28 ["story"]
       98 DUPTABLE                         R19 K35 [{["name"] = "Indeterminate", ["story"]}]
       99 SETTABLEKS                       R13 R19 K28 ["story"]
      101 SETLIST                          R15 R16 4 [1]
      103 SETTABLEKS                       R15 R14 K23 ["stories"]
      105 DUPTABLE                         R15 K42 [{["shape"], ["size"], ["value"] = 65, ["isIndeterminate"] = False}]
      106 GETTABLEKS                       R16 R3 K43 ["values"]
      108 MOVE                             R17 R8
      109 CALL                             R16 1 1
      110 SETTABLEKS                       R16 R15 K36 ["shape"]
      112 GETTABLEKS                       R16 R3 K43 ["values"]
      114 MOVE                             R17 R9
      115 CALL                             R16 1 1
      116 SETTABLEKS                       R16 R15 K37 ["size"]
      118 SETTABLEKS                       R15 R14 K24 ["controls"]
      120 RETURN                           R14 1
