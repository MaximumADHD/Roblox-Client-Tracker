PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["CloseAffordance: \"%*\" activated"]
        3 GETUPVAL                         R4 0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{["Text"], ["tag"] = "auto-xy text-label-small content-muted padding-bottom-xsmall", ["LayoutOrder"]}]
        5 GETTABLEKS                       R4 R0 K6 ["text"]
        7 SETTABLEKS                       R4 R3 K1 ["Text"]
        9 GETTABLEKS                       R4 R0 K4 ["LayoutOrder"]
       11 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{["tag"] = "col gap-xsmall auto-xy align-y-center", ["LayoutOrder"]}]
        5 GETTABLEKS                       R4 R0 K3 ["LayoutOrder"]
        7 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
        9 DUPTABLE                         R4 K7 [{"Label", "Content"}]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["createElement"]
       13 GETUPVAL                         R6 2
       14 DUPTABLE                         R7 K10 [{["text"], ["LayoutOrder"] = 1}]
       15 GETTABLEKS                       R8 R0 K11 ["label"]
       17 SETTABLEKS                       R8 R7 K8 ["text"]
       19 CALL                             R5 2 1
       20 SETTABLEKS                       R5 R4 K5 ["Label"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K0 ["createElement"]
       25 GETUPVAL                         R6 1
       26 DUPTABLE                         R7 K14 [{["tag"] = "row gap-small auto-xy align-y-center", ["LayoutOrder"] = 2}]
       27 GETTABLEKS                       R8 R0 K15 ["children"]
       29 CALL                             R5 3 1
       30 SETTABLEKS                       R5 R4 K6 ["Content"]
       32 CALL                             R1 3 -1
       33 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K4 [{["tag"] = "row align-y-center gap-medium size-0 auto-xy padding-large radius-medium", ["backgroundStyle"]}]
        7 GETTABLEKS                       R5 R1 K5 ["Color"]
        9 GETTABLEKS                       R5 R5 K6 ["Extended"]
       11 GETTABLEKS                       R5 R5 K7 ["White"]
       13 GETTABLEKS                       R5 R5 K8 ["White_100"]
       15 SETTABLEKS                       R5 R4 K3 ["backgroundStyle"]
       17 GETTABLEKS                       R5 R0 K9 ["children"]
       19 CALL                             R2 3 -1
       20 RETURN                           R2 -1

PROTO_5:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["CloseAffordance activated: %* %*"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K3 ["variant"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K4 ["size"]
        9 NAMECALL                         R2 R2 K5 ["format"]
       11 CALL                             R2 3 1
       12 MOVE                             R1 R2
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R4 R1 K1 ["variant"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K2 ["OverMedia"]
        9 JUMPIFEQ                         R4 R5 ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K3 ["createElement"]
       16 GETUPVAL                         R5 3
       17 DUPTABLE                         R6 K7 [{["tag"] = "row align-x-center align-y-center size-0 auto-xy padding-xlarge radius-medium", ["backgroundStyle"]}]
       18 JUMPIFNOT                        R3 ; [+9]
       19 GETTABLEKS                       R7 R2 K8 ["Color"]
       21 GETTABLEKS                       R7 R7 K9 ["Extended"]
       23 GETTABLEKS                       R7 R7 K10 ["White"]
       25 GETTABLEKS                       R7 R7 K11 ["White_100"]
       27 JUMP                             ; [+1]
       28 LOADNIL                          R7
       29 SETTABLEKS                       R7 R6 K6 ["backgroundStyle"]
       31 DUPTABLE                         R7 K13 [{"CloseAffordance"}]
       32 GETUPVAL                         R8 2
       33 GETTABLEKS                       R8 R8 K3 ["createElement"]
       35 GETUPVAL                         R9 4
       36 DUPTABLE                         R10 K19 [{"size", "variant", "isCircular", "hasPadding", "isDisabled", "onActivated"}]
       37 GETTABLEKS                       R11 R1 K14 ["size"]
       39 SETTABLEKS                       R11 R10 K14 ["size"]
       41 GETTABLEKS                       R11 R1 K1 ["variant"]
       43 SETTABLEKS                       R11 R10 K1 ["variant"]
       45 GETTABLEKS                       R11 R1 K15 ["isCircular"]
       47 SETTABLEKS                       R11 R10 K15 ["isCircular"]
       49 GETTABLEKS                       R11 R1 K16 ["hasPadding"]
       51 SETTABLEKS                       R11 R10 K16 ["hasPadding"]
       53 GETTABLEKS                       R11 R1 K17 ["isDisabled"]
       55 SETTABLEKS                       R11 R10 K17 ["isDisabled"]
       57 NEWCLOSURE                       R11 P0
       58 CAPTURE                          VAL R1
       59 SETTABLEKS                       R11 R10 K18 ["onActivated"]
       61 CALL                             R8 2 1
       62 SETTABLEKS                       R8 R7 K12 ["CloseAffordance"]
       64 CALL                             R4 3 -1
       65 RETURN                           R4 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{["size"], ["variant"], ["hasPadding"] = True, ["onActivated"]}]
        5 SETTABLEKS                       R0 R3 K1 ["size"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K7 ["OverMedia"]
       10 SETTABLEKS                       R4 R3 K2 ["variant"]
       12 LOADK                            R6 K8 ["OverMedia padded %*"]
       13 MOVE                             R8 R0
       14 NAMECALL                         R6 R6 K9 ["format"]
       16 CALL                             R6 2 1
       17 MOVE                             R5 R6
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R5
       20 SETTABLEKS                       R4 R3 K5 ["onActivated"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{["size"], ["variant"], ["hasPadding"] = False, ["onActivated"]}]
        5 SETTABLEKS                       R0 R3 K1 ["size"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K7 ["OverMedia"]
       10 SETTABLEKS                       R4 R3 K2 ["variant"]
       12 LOADK                            R6 K8 ["OverMedia tight %*"]
       13 MOVE                             R8 R0
       14 NAMECALL                         R6 R6 K9 ["format"]
       16 CALL                             R6 2 1
       17 MOVE                             R5 R6
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R5
       20 SETTABLEKS                       R4 R3 K5 ["onActivated"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{["tag"] = "col gap-large auto-xy"}]
        5 DUPTABLE                         R3 K6 [{"Padded", "Tight"}]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["createElement"]
        9 GETUPVAL                         R5 2
       10 DUPTABLE                         R6 K11 [{["label"] = "hasPadding = true", ["LayoutOrder"] = 1}]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R7 R7 K0 ["createElement"]
       14 GETUPVAL                         R8 3
       15 LOADNIL                          R9
       16 GETUPVAL                         R10 4
       17 GETTABLEKS                       R10 R10 K12 ["map"]
       19 GETUPVAL                         R11 5
       20 DUPCLOSURE                       R12 K13 [PROTO_7]
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          UPVAL U7
       24 CALL                             R10 2 -1
       25 CALL                             R7 -1 -1
       26 CALL                             R4 -1 1
       27 SETTABLEKS                       R4 R3 K4 ["Padded"]
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K0 ["createElement"]
       32 GETUPVAL                         R5 2
       33 DUPTABLE                         R6 K16 [{["label"] = "hasPadding = false", ["LayoutOrder"] = 2}]
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R7 R7 K0 ["createElement"]
       37 GETUPVAL                         R8 3
       38 LOADNIL                          R9
       39 GETUPVAL                         R10 4
       40 GETTABLEKS                       R10 R10 K12 ["map"]
       42 GETUPVAL                         R11 5
       43 DUPCLOSURE                       R12 K17 [PROTO_8]
       44 CAPTURE                          UPVAL U0
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          UPVAL U7
       47 CALL                             R10 2 -1
       48 CALL                             R7 -1 -1
       49 CALL                             R4 -1 1
       50 SETTABLEKS                       R4 R3 K5 ["Tight"]
       52 CALL                             R0 3 -1
       53 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K8 [{["size"], ["variant"], ["isCircular"] = False, ["hasPadding"] = True, ["onActivated"]}]
        5 SETTABLEKS                       R0 R3 K1 ["size"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K9 ["Utility"]
       10 SETTABLEKS                       R4 R3 K2 ["variant"]
       12 LOADK                            R6 K10 ["Utility rounded %*"]
       13 MOVE                             R8 R0
       14 NAMECALL                         R6 R6 K11 ["format"]
       16 CALL                             R6 2 1
       17 MOVE                             R5 R6
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R5
       20 SETTABLEKS                       R4 R3 K7 ["onActivated"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{["size"], ["variant"], ["isCircular"] = True, ["hasPadding"] = True, ["onActivated"]}]
        5 SETTABLEKS                       R0 R3 K1 ["size"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K8 ["Utility"]
       10 SETTABLEKS                       R4 R3 K2 ["variant"]
       12 LOADK                            R6 K9 ["Utility circular %*"]
       13 MOVE                             R8 R0
       14 NAMECALL                         R6 R6 K10 ["format"]
       16 CALL                             R6 2 1
       17 MOVE                             R5 R6
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R5
       20 SETTABLEKS                       R4 R3 K6 ["onActivated"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{["size"], ["variant"], ["isCircular"] = False, ["hasPadding"] = False, ["onActivated"]}]
        5 SETTABLEKS                       R0 R3 K1 ["size"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K8 ["Utility"]
       10 SETTABLEKS                       R4 R3 K2 ["variant"]
       12 LOADK                            R6 K9 ["Utility tight rounded %*"]
       13 MOVE                             R8 R0
       14 NAMECALL                         R6 R6 K10 ["format"]
       16 CALL                             R6 2 1
       17 MOVE                             R5 R6
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R5
       20 SETTABLEKS                       R4 R3 K6 ["onActivated"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K8 [{["size"], ["variant"], ["isCircular"] = True, ["hasPadding"] = False, ["onActivated"]}]
        5 SETTABLEKS                       R0 R3 K1 ["size"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K9 ["Utility"]
       10 SETTABLEKS                       R4 R3 K2 ["variant"]
       12 LOADK                            R6 K10 ["Utility tight circular %*"]
       13 MOVE                             R8 R0
       14 NAMECALL                         R6 R6 K11 ["format"]
       16 CALL                             R6 2 1
       17 MOVE                             R5 R6
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R5
       20 SETTABLEKS                       R4 R3 K7 ["onActivated"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{["tag"] = "col gap-large auto-xy"}]
        5 DUPTABLE                         R3 K8 [{"Rounded", "Circular", "TightRounded", "TightCircular"}]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["createElement"]
        9 GETUPVAL                         R5 2
       10 DUPTABLE                         R6 K13 [{["label"] = "isCircular = false", ["LayoutOrder"] = 1}]
       11 GETUPVAL                         R7 3
       12 GETTABLEKS                       R7 R7 K14 ["map"]
       14 GETUPVAL                         R8 4
       15 DUPCLOSURE                       R9 K15 [PROTO_10]
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U6
       19 CALL                             R7 2 -1
       20 CALL                             R4 -1 1
       21 SETTABLEKS                       R4 R3 K4 ["Rounded"]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K0 ["createElement"]
       26 GETUPVAL                         R5 2
       27 DUPTABLE                         R6 K18 [{["label"] = "isCircular = true", ["LayoutOrder"] = 2}]
       28 GETUPVAL                         R7 3
       29 GETTABLEKS                       R7 R7 K14 ["map"]
       31 GETUPVAL                         R8 4
       32 DUPCLOSURE                       R9 K19 [PROTO_11]
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          UPVAL U6
       36 CALL                             R7 2 -1
       37 CALL                             R4 -1 1
       38 SETTABLEKS                       R4 R3 K5 ["Circular"]
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K0 ["createElement"]
       43 GETUPVAL                         R5 2
       44 DUPTABLE                         R6 K22 [{["label"] = "hasPadding = false, isCircular = false", ["LayoutOrder"] = 3}]
       45 GETUPVAL                         R7 3
       46 GETTABLEKS                       R7 R7 K14 ["map"]
       48 GETUPVAL                         R8 4
       49 DUPCLOSURE                       R9 K23 [PROTO_12]
       50 CAPTURE                          UPVAL U0
       51 CAPTURE                          UPVAL U5
       52 CAPTURE                          UPVAL U6
       53 CALL                             R7 2 -1
       54 CALL                             R4 -1 1
       55 SETTABLEKS                       R4 R3 K6 ["TightRounded"]
       57 GETUPVAL                         R4 0
       58 GETTABLEKS                       R4 R4 K0 ["createElement"]
       60 GETUPVAL                         R5 2
       61 DUPTABLE                         R6 K26 [{["label"] = "hasPadding = false, isCircular = true", ["LayoutOrder"] = 4}]
       62 GETUPVAL                         R7 3
       63 GETTABLEKS                       R7 R7 K14 ["map"]
       65 GETUPVAL                         R8 4
       66 DUPCLOSURE                       R9 K27 [PROTO_13]
       67 CAPTURE                          UPVAL U0
       68 CAPTURE                          UPVAL U5
       69 CAPTURE                          UPVAL U6
       70 CALL                             R7 2 -1
       71 CALL                             R4 -1 1
       72 SETTABLEKS                       R4 R3 K7 ["TightCircular"]
       74 CALL                             R0 3 -1
       75 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{["size"], ["variant"], ["isDisabled"] = True, ["onActivated"]}]
        5 SETTABLEKS                       R0 R3 K1 ["size"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K7 ["OverMedia"]
       10 SETTABLEKS                       R4 R3 K2 ["variant"]
       12 LOADK                            R6 K8 ["OverMedia disabled %*"]
       13 MOVE                             R8 R0
       14 NAMECALL                         R6 R6 K9 ["format"]
       16 CALL                             R6 2 1
       17 MOVE                             R5 R6
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R5
       20 SETTABLEKS                       R4 R3 K5 ["onActivated"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{["size"], ["variant"], ["isDisabled"] = True, ["onActivated"]}]
        5 SETTABLEKS                       R0 R3 K1 ["size"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K7 ["Utility"]
       10 SETTABLEKS                       R4 R3 K2 ["variant"]
       12 LOADK                            R6 K8 ["Utility disabled %*"]
       13 MOVE                             R8 R0
       14 NAMECALL                         R6 R6 K9 ["format"]
       16 CALL                             R6 2 1
       17 MOVE                             R5 R6
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R5
       20 SETTABLEKS                       R4 R3 K5 ["onActivated"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{["tag"] = "col gap-large auto-xy"}]
        5 DUPTABLE                         R3 K6 [{"OverMedia", "Utility"}]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["createElement"]
        9 GETUPVAL                         R5 2
       10 DUPTABLE                         R6 K10 [{["label"] = "OverMedia", ["LayoutOrder"] = 1}]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R7 R7 K0 ["createElement"]
       14 GETUPVAL                         R8 3
       15 LOADNIL                          R9
       16 GETUPVAL                         R10 4
       17 GETTABLEKS                       R10 R10 K11 ["map"]
       19 GETUPVAL                         R11 5
       20 DUPCLOSURE                       R12 K12 [PROTO_15]
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          UPVAL U7
       24 CALL                             R10 2 -1
       25 CALL                             R7 -1 -1
       26 CALL                             R4 -1 1
       27 SETTABLEKS                       R4 R3 K4 ["OverMedia"]
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K0 ["createElement"]
       32 GETUPVAL                         R5 2
       33 DUPTABLE                         R6 K14 [{["label"] = "Utility", ["LayoutOrder"] = 2}]
       34 GETUPVAL                         R7 4
       35 GETTABLEKS                       R7 R7 K11 ["map"]
       37 GETUPVAL                         R8 5
       38 DUPCLOSURE                       R9 K15 [PROTO_16]
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          UPVAL U6
       41 CAPTURE                          UPVAL U7
       42 CALL                             R7 2 -1
       43 CALL                             R4 -1 1
       44 SETTABLEKS                       R4 R3 K5 ["Utility"]
       46 CALL                             R0 3 -1
       47 RETURN                           R0 -1

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
       23 GETTABLEKS                       R5 R5 K10 ["CloseAffordance"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R6 K12 ["CloseAffordanceVariant"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Enums"]
       37 GETTABLEKS                       R7 R7 K13 ["InputSize"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Components"]
       44 GETTABLEKS                       R8 R8 K14 ["Text"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K9 ["Components"]
       51 GETTABLEKS                       R9 R9 K15 ["View"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K16 ["Providers"]
       58 GETTABLEKS                       R10 R10 K17 ["Style"]
       60 GETTABLEKS                       R10 R10 K18 ["useTokens"]
       62 CALL                             R9 1 1
       63 NEWTABLE                         R10 0 3
       65 GETTABLEKS                       R11 R6 K19 ["Medium"]
       67 GETTABLEKS                       R12 R6 K20 ["Small"]
       69 GETTABLEKS                       R13 R6 K21 ["XSmall"]
       71 SETLIST                          R10 R11 3 [1]
       73 DUPCLOSURE                       R11 K22 [PROTO_1]
       74 DUPCLOSURE                       R12 K23 [PROTO_2]
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R7
       77 DUPCLOSURE                       R13 K24 [PROTO_3]
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R12
       81 DUPCLOSURE                       R14 K25 [PROTO_4]
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R8
       85 DUPCLOSURE                       R15 K26 [PROTO_6]
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R4
       91 DUPCLOSURE                       R16 K27 [PROTO_9]
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R13
       95 CAPTURE                          VAL R14
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R5
      100 DUPCLOSURE                       R17 K28 [PROTO_14]
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R5
      108 DUPCLOSURE                       R18 K29 [PROTO_17]
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R14
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R5
      117 DUPTABLE                         R19 K33 [{["summary"] = "CloseAffordance", ["stories"], ["controls"]}]
      118 NEWTABLE                         R20 0 4
      120 DUPTABLE                         R21 K37 [{["name"] = "Playground", ["story"]}]
      121 SETTABLEKS                       R15 R21 K36 ["story"]
      123 DUPTABLE                         R22 K39 [{["name"] = "OverMedia", ["story"]}]
      124 SETTABLEKS                       R16 R22 K36 ["story"]
      126 DUPTABLE                         R23 K41 [{["name"] = "Utility", ["story"]}]
      127 SETTABLEKS                       R17 R23 K36 ["story"]
      129 DUPTABLE                         R24 K43 [{["name"] = "Disabled", ["story"]}]
      130 SETTABLEKS                       R18 R24 K36 ["story"]
      132 SETLIST                          R20 R21 4 [1]
      134 SETTABLEKS                       R20 R19 K31 ["stories"]
      136 DUPTABLE                         R20 K51 [{["variant"], ["size"], ["isCircular"] = True, ["hasPadding"] = True, ["isDisabled"] = False}]
      137 GETTABLEKS                       R21 R2 K52 ["values"]
      139 MOVE                             R22 R5
      140 CALL                             R21 1 1
      141 SETTABLEKS                       R21 R20 K44 ["variant"]
      143 SETTABLEKS                       R10 R20 K45 ["size"]
      145 SETTABLEKS                       R20 R19 K32 ["controls"]
      147 RETURN                           R19 1
