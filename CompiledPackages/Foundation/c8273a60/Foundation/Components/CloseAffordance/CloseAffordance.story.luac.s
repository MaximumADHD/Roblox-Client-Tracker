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
        4 DUPTABLE                         R3 K4 [{"Text", "tag", "LayoutOrder"}]
        5 GETTABLEKS                       R4 R0 K5 ["text"]
        7 SETTABLEKS                       R4 R3 K1 ["Text"]
        9 LOADK                            R4 K6 ["auto-xy text-label-small content-muted padding-bottom-xsmall"]
       10 SETTABLEKS                       R4 R3 K2 ["tag"]
       12 GETTABLEKS                       R4 R0 K3 ["LayoutOrder"]
       14 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"tag", "LayoutOrder"}]
        5 LOADK                            R4 K4 ["col gap-xsmall auto-xy align-y-center"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
       10 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       12 DUPTABLE                         R4 K7 [{"Label", "Content"}]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K0 ["createElement"]
       16 GETUPVAL                         R6 2
       17 DUPTABLE                         R7 K9 [{"text", "LayoutOrder"}]
       18 GETTABLEKS                       R8 R0 K10 ["label"]
       20 SETTABLEKS                       R8 R7 K8 ["text"]
       22 LOADN                            R8 1
       23 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       25 CALL                             R5 2 1
       26 SETTABLEKS                       R5 R4 K5 ["Label"]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K0 ["createElement"]
       31 GETUPVAL                         R6 1
       32 DUPTABLE                         R7 K3 [{"tag", "LayoutOrder"}]
       33 LOADK                            R8 K11 ["row gap-small auto-xy align-y-center"]
       34 SETTABLEKS                       R8 R7 K1 ["tag"]
       36 LOADN                            R8 2
       37 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       39 GETTABLEKS                       R8 R0 K12 ["children"]
       41 CALL                             R5 3 1
       42 SETTABLEKS                       R5 R4 K6 ["Content"]
       44 CALL                             R1 3 -1
       45 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K3 [{"tag", "backgroundStyle"}]
        7 LOADK                            R5 K4 ["row align-y-center gap-medium size-0 auto-xy padding-large radius-medium"]
        8 SETTABLEKS                       R5 R4 K1 ["tag"]
       10 GETTABLEKS                       R5 R1 K5 ["Color"]
       12 GETTABLEKS                       R5 R5 K6 ["Extended"]
       14 GETTABLEKS                       R5 R5 K7 ["White"]
       16 GETTABLEKS                       R5 R5 K8 ["White_100"]
       18 SETTABLEKS                       R5 R4 K2 ["backgroundStyle"]
       20 GETTABLEKS                       R5 R0 K9 ["children"]
       22 CALL                             R2 3 -1
       23 RETURN                           R2 -1

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
       17 DUPTABLE                         R6 K6 [{"tag", "backgroundStyle"}]
       18 LOADK                            R7 K7 ["row align-x-center align-y-center size-0 auto-xy padding-xlarge radius-medium"]
       19 SETTABLEKS                       R7 R6 K4 ["tag"]
       21 JUMPIFNOT                        R3 ; [+9]
       22 GETTABLEKS                       R7 R2 K8 ["Color"]
       24 GETTABLEKS                       R7 R7 K9 ["Extended"]
       26 GETTABLEKS                       R7 R7 K10 ["White"]
       28 GETTABLEKS                       R7 R7 K11 ["White_100"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R7
       32 SETTABLEKS                       R7 R6 K5 ["backgroundStyle"]
       34 DUPTABLE                         R7 K13 [{"CloseAffordance"}]
       35 GETUPVAL                         R8 2
       36 GETTABLEKS                       R8 R8 K3 ["createElement"]
       38 GETUPVAL                         R9 4
       39 DUPTABLE                         R10 K19 [{"size", "variant", "isCircular", "hasPadding", "isDisabled", "onActivated"}]
       40 GETTABLEKS                       R11 R1 K14 ["size"]
       42 SETTABLEKS                       R11 R10 K14 ["size"]
       44 GETTABLEKS                       R11 R1 K1 ["variant"]
       46 SETTABLEKS                       R11 R10 K1 ["variant"]
       48 GETTABLEKS                       R11 R1 K15 ["isCircular"]
       50 SETTABLEKS                       R11 R10 K15 ["isCircular"]
       52 GETTABLEKS                       R11 R1 K16 ["hasPadding"]
       54 SETTABLEKS                       R11 R10 K16 ["hasPadding"]
       56 GETTABLEKS                       R11 R1 K17 ["isDisabled"]
       58 SETTABLEKS                       R11 R10 K17 ["isDisabled"]
       60 NEWCLOSURE                       R11 P0
       61 CAPTURE                          VAL R1
       62 SETTABLEKS                       R11 R10 K18 ["onActivated"]
       64 CALL                             R8 2 1
       65 SETTABLEKS                       R8 R7 K12 ["CloseAffordance"]
       67 CALL                             R4 3 -1
       68 RETURN                           R4 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{"size", "variant", "hasPadding", "onActivated"}]
        5 SETTABLEKS                       R0 R3 K1 ["size"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K6 ["OverMedia"]
       10 SETTABLEKS                       R4 R3 K2 ["variant"]
       12 LOADB                            R4 1
       13 SETTABLEKS                       R4 R3 K3 ["hasPadding"]
       15 LOADK                            R6 K7 ["OverMedia padded %*"]
       16 MOVE                             R8 R0
       17 NAMECALL                         R6 R6 K8 ["format"]
       19 CALL                             R6 2 1
       20 MOVE                             R5 R6
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          VAL R5
       23 SETTABLEKS                       R4 R3 K4 ["onActivated"]
       25 CALL                             R1 2 -1
       26 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{"size", "variant", "hasPadding", "onActivated"}]
        5 SETTABLEKS                       R0 R3 K1 ["size"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K6 ["OverMedia"]
       10 SETTABLEKS                       R4 R3 K2 ["variant"]
       12 LOADB                            R4 0
       13 SETTABLEKS                       R4 R3 K3 ["hasPadding"]
       15 LOADK                            R6 K7 ["OverMedia tight %*"]
       16 MOVE                             R8 R0
       17 NAMECALL                         R6 R6 K8 ["format"]
       19 CALL                             R6 2 1
       20 MOVE                             R5 R6
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          VAL R5
       23 SETTABLEKS                       R4 R3 K4 ["onActivated"]
       25 CALL                             R1 2 -1
       26 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"tag"}]
        5 LOADK                            R3 K3 ["col gap-large auto-xy"]
        6 SETTABLEKS                       R3 R2 K1 ["tag"]
        8 DUPTABLE                         R3 K6 [{"Padded", "Tight"}]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K0 ["createElement"]
       12 GETUPVAL                         R5 2
       13 DUPTABLE                         R6 K9 [{"label", "LayoutOrder"}]
       14 LOADK                            R7 K10 ["hasPadding = true"]
       15 SETTABLEKS                       R7 R6 K7 ["label"]
       17 LOADN                            R7 1
       18 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K0 ["createElement"]
       23 GETUPVAL                         R8 3
       24 LOADNIL                          R9
       25 GETUPVAL                         R10 4
       26 GETTABLEKS                       R10 R10 K11 ["map"]
       28 GETUPVAL                         R11 5
       29 DUPCLOSURE                       R12 K12 [PROTO_7]
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          UPVAL U7
       33 CALL                             R10 2 -1
       34 CALL                             R7 -1 -1
       35 CALL                             R4 -1 1
       36 SETTABLEKS                       R4 R3 K4 ["Padded"]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K0 ["createElement"]
       41 GETUPVAL                         R5 2
       42 DUPTABLE                         R6 K9 [{"label", "LayoutOrder"}]
       43 LOADK                            R7 K13 ["hasPadding = false"]
       44 SETTABLEKS                       R7 R6 K7 ["label"]
       46 LOADN                            R7 2
       47 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       49 GETUPVAL                         R7 0
       50 GETTABLEKS                       R7 R7 K0 ["createElement"]
       52 GETUPVAL                         R8 3
       53 LOADNIL                          R9
       54 GETUPVAL                         R10 4
       55 GETTABLEKS                       R10 R10 K11 ["map"]
       57 GETUPVAL                         R11 5
       58 DUPCLOSURE                       R12 K14 [PROTO_8]
       59 CAPTURE                          UPVAL U0
       60 CAPTURE                          UPVAL U6
       61 CAPTURE                          UPVAL U7
       62 CALL                             R10 2 -1
       63 CALL                             R7 -1 -1
       64 CALL                             R4 -1 1
       65 SETTABLEKS                       R4 R3 K5 ["Tight"]
       67 CALL                             R0 3 -1
       68 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{"size", "variant", "isCircular", "hasPadding", "onActivated"}]
        5 SETTABLEKS                       R0 R3 K1 ["size"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K7 ["Utility"]
       10 SETTABLEKS                       R4 R3 K2 ["variant"]
       12 LOADB                            R4 0
       13 SETTABLEKS                       R4 R3 K3 ["isCircular"]
       15 LOADB                            R4 1
       16 SETTABLEKS                       R4 R3 K4 ["hasPadding"]
       18 LOADK                            R6 K8 ["Utility rounded %*"]
       19 MOVE                             R8 R0
       20 NAMECALL                         R6 R6 K9 ["format"]
       22 CALL                             R6 2 1
       23 MOVE                             R5 R6
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          VAL R5
       26 SETTABLEKS                       R4 R3 K5 ["onActivated"]
       28 CALL                             R1 2 -1
       29 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{"size", "variant", "isCircular", "hasPadding", "onActivated"}]
        5 SETTABLEKS                       R0 R3 K1 ["size"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K7 ["Utility"]
       10 SETTABLEKS                       R4 R3 K2 ["variant"]
       12 LOADB                            R4 1
       13 SETTABLEKS                       R4 R3 K3 ["isCircular"]
       15 LOADB                            R4 1
       16 SETTABLEKS                       R4 R3 K4 ["hasPadding"]
       18 LOADK                            R6 K8 ["Utility circular %*"]
       19 MOVE                             R8 R0
       20 NAMECALL                         R6 R6 K9 ["format"]
       22 CALL                             R6 2 1
       23 MOVE                             R5 R6
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          VAL R5
       26 SETTABLEKS                       R4 R3 K5 ["onActivated"]
       28 CALL                             R1 2 -1
       29 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{"size", "variant", "isCircular", "hasPadding", "onActivated"}]
        5 SETTABLEKS                       R0 R3 K1 ["size"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K7 ["Utility"]
       10 SETTABLEKS                       R4 R3 K2 ["variant"]
       12 LOADB                            R4 0
       13 SETTABLEKS                       R4 R3 K3 ["isCircular"]
       15 LOADB                            R4 0
       16 SETTABLEKS                       R4 R3 K4 ["hasPadding"]
       18 LOADK                            R6 K8 ["Utility tight rounded %*"]
       19 MOVE                             R8 R0
       20 NAMECALL                         R6 R6 K9 ["format"]
       22 CALL                             R6 2 1
       23 MOVE                             R5 R6
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          VAL R5
       26 SETTABLEKS                       R4 R3 K5 ["onActivated"]
       28 CALL                             R1 2 -1
       29 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{"size", "variant", "isCircular", "hasPadding", "onActivated"}]
        5 SETTABLEKS                       R0 R3 K1 ["size"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K7 ["Utility"]
       10 SETTABLEKS                       R4 R3 K2 ["variant"]
       12 LOADB                            R4 1
       13 SETTABLEKS                       R4 R3 K3 ["isCircular"]
       15 LOADB                            R4 0
       16 SETTABLEKS                       R4 R3 K4 ["hasPadding"]
       18 LOADK                            R6 K8 ["Utility tight circular %*"]
       19 MOVE                             R8 R0
       20 NAMECALL                         R6 R6 K9 ["format"]
       22 CALL                             R6 2 1
       23 MOVE                             R5 R6
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          VAL R5
       26 SETTABLEKS                       R4 R3 K5 ["onActivated"]
       28 CALL                             R1 2 -1
       29 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"tag"}]
        5 LOADK                            R3 K3 ["col gap-large auto-xy"]
        6 SETTABLEKS                       R3 R2 K1 ["tag"]
        8 DUPTABLE                         R3 K8 [{"Rounded", "Circular", "TightRounded", "TightCircular"}]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K0 ["createElement"]
       12 GETUPVAL                         R5 2
       13 DUPTABLE                         R6 K11 [{"label", "LayoutOrder"}]
       14 LOADK                            R7 K12 ["isCircular = false"]
       15 SETTABLEKS                       R7 R6 K9 ["label"]
       17 LOADN                            R7 1
       18 SETTABLEKS                       R7 R6 K10 ["LayoutOrder"]
       20 GETUPVAL                         R7 3
       21 GETTABLEKS                       R7 R7 K13 ["map"]
       23 GETUPVAL                         R8 4
       24 DUPCLOSURE                       R9 K14 [PROTO_10]
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 CALL                             R7 2 -1
       29 CALL                             R4 -1 1
       30 SETTABLEKS                       R4 R3 K4 ["Rounded"]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K0 ["createElement"]
       35 GETUPVAL                         R5 2
       36 DUPTABLE                         R6 K11 [{"label", "LayoutOrder"}]
       37 LOADK                            R7 K15 ["isCircular = true"]
       38 SETTABLEKS                       R7 R6 K9 ["label"]
       40 LOADN                            R7 2
       41 SETTABLEKS                       R7 R6 K10 ["LayoutOrder"]
       43 GETUPVAL                         R7 3
       44 GETTABLEKS                       R7 R7 K13 ["map"]
       46 GETUPVAL                         R8 4
       47 DUPCLOSURE                       R9 K16 [PROTO_11]
       48 CAPTURE                          UPVAL U0
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          UPVAL U6
       51 CALL                             R7 2 -1
       52 CALL                             R4 -1 1
       53 SETTABLEKS                       R4 R3 K5 ["Circular"]
       55 GETUPVAL                         R4 0
       56 GETTABLEKS                       R4 R4 K0 ["createElement"]
       58 GETUPVAL                         R5 2
       59 DUPTABLE                         R6 K11 [{"label", "LayoutOrder"}]
       60 LOADK                            R7 K17 ["hasPadding = false, isCircular = false"]
       61 SETTABLEKS                       R7 R6 K9 ["label"]
       63 LOADN                            R7 3
       64 SETTABLEKS                       R7 R6 K10 ["LayoutOrder"]
       66 GETUPVAL                         R7 3
       67 GETTABLEKS                       R7 R7 K13 ["map"]
       69 GETUPVAL                         R8 4
       70 DUPCLOSURE                       R9 K18 [PROTO_12]
       71 CAPTURE                          UPVAL U0
       72 CAPTURE                          UPVAL U5
       73 CAPTURE                          UPVAL U6
       74 CALL                             R7 2 -1
       75 CALL                             R4 -1 1
       76 SETTABLEKS                       R4 R3 K6 ["TightRounded"]
       78 GETUPVAL                         R4 0
       79 GETTABLEKS                       R4 R4 K0 ["createElement"]
       81 GETUPVAL                         R5 2
       82 DUPTABLE                         R6 K11 [{"label", "LayoutOrder"}]
       83 LOADK                            R7 K19 ["hasPadding = false, isCircular = true"]
       84 SETTABLEKS                       R7 R6 K9 ["label"]
       86 LOADN                            R7 4
       87 SETTABLEKS                       R7 R6 K10 ["LayoutOrder"]
       89 GETUPVAL                         R7 3
       90 GETTABLEKS                       R7 R7 K13 ["map"]
       92 GETUPVAL                         R8 4
       93 DUPCLOSURE                       R9 K20 [PROTO_13]
       94 CAPTURE                          UPVAL U0
       95 CAPTURE                          UPVAL U5
       96 CAPTURE                          UPVAL U6
       97 CALL                             R7 2 -1
       98 CALL                             R4 -1 1
       99 SETTABLEKS                       R4 R3 K7 ["TightCircular"]
      101 CALL                             R0 3 -1
      102 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{"size", "variant", "isDisabled", "onActivated"}]
        5 SETTABLEKS                       R0 R3 K1 ["size"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K6 ["OverMedia"]
       10 SETTABLEKS                       R4 R3 K2 ["variant"]
       12 LOADB                            R4 1
       13 SETTABLEKS                       R4 R3 K3 ["isDisabled"]
       15 LOADK                            R6 K7 ["OverMedia disabled %*"]
       16 MOVE                             R8 R0
       17 NAMECALL                         R6 R6 K8 ["format"]
       19 CALL                             R6 2 1
       20 MOVE                             R5 R6
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          VAL R5
       23 SETTABLEKS                       R4 R3 K4 ["onActivated"]
       25 CALL                             R1 2 -1
       26 RETURN                           R1 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{"size", "variant", "isDisabled", "onActivated"}]
        5 SETTABLEKS                       R0 R3 K1 ["size"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K6 ["Utility"]
       10 SETTABLEKS                       R4 R3 K2 ["variant"]
       12 LOADB                            R4 1
       13 SETTABLEKS                       R4 R3 K3 ["isDisabled"]
       15 LOADK                            R6 K7 ["Utility disabled %*"]
       16 MOVE                             R8 R0
       17 NAMECALL                         R6 R6 K8 ["format"]
       19 CALL                             R6 2 1
       20 MOVE                             R5 R6
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          VAL R5
       23 SETTABLEKS                       R4 R3 K4 ["onActivated"]
       25 CALL                             R1 2 -1
       26 RETURN                           R1 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"tag"}]
        5 LOADK                            R3 K3 ["col gap-large auto-xy"]
        6 SETTABLEKS                       R3 R2 K1 ["tag"]
        8 DUPTABLE                         R3 K6 [{"OverMedia", "Utility"}]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K0 ["createElement"]
       12 GETUPVAL                         R5 2
       13 DUPTABLE                         R6 K9 [{"label", "LayoutOrder"}]
       14 LOADK                            R7 K4 ["OverMedia"]
       15 SETTABLEKS                       R7 R6 K7 ["label"]
       17 LOADN                            R7 1
       18 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K0 ["createElement"]
       23 GETUPVAL                         R8 3
       24 LOADNIL                          R9
       25 GETUPVAL                         R10 4
       26 GETTABLEKS                       R10 R10 K10 ["map"]
       28 GETUPVAL                         R11 5
       29 DUPCLOSURE                       R12 K11 [PROTO_15]
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          UPVAL U7
       33 CALL                             R10 2 -1
       34 CALL                             R7 -1 -1
       35 CALL                             R4 -1 1
       36 SETTABLEKS                       R4 R3 K4 ["OverMedia"]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K0 ["createElement"]
       41 GETUPVAL                         R5 2
       42 DUPTABLE                         R6 K9 [{"label", "LayoutOrder"}]
       43 LOADK                            R7 K5 ["Utility"]
       44 SETTABLEKS                       R7 R6 K7 ["label"]
       46 LOADN                            R7 2
       47 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       49 GETUPVAL                         R7 4
       50 GETTABLEKS                       R7 R7 K10 ["map"]
       52 GETUPVAL                         R8 5
       53 DUPCLOSURE                       R9 K12 [PROTO_16]
       54 CAPTURE                          UPVAL U0
       55 CAPTURE                          UPVAL U6
       56 CAPTURE                          UPVAL U7
       57 CALL                             R7 2 -1
       58 CALL                             R4 -1 1
       59 SETTABLEKS                       R4 R3 K5 ["Utility"]
       61 CALL                             R0 3 -1
       62 RETURN                           R0 -1

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
      117 DUPTABLE                         R19 K33 [{"summary", "stories", "controls"}]
      118 LOADK                            R20 K10 ["CloseAffordance"]
      119 SETTABLEKS                       R20 R19 K30 ["summary"]
      121 NEWTABLE                         R20 0 4
      123 DUPTABLE                         R21 K36 [{"name", "story"}]
      124 LOADK                            R22 K37 ["Playground"]
      125 SETTABLEKS                       R22 R21 K34 ["name"]
      127 SETTABLEKS                       R15 R21 K35 ["story"]
      129 DUPTABLE                         R22 K36 [{"name", "story"}]
      130 LOADK                            R23 K38 ["OverMedia"]
      131 SETTABLEKS                       R23 R22 K34 ["name"]
      133 SETTABLEKS                       R16 R22 K35 ["story"]
      135 DUPTABLE                         R23 K36 [{"name", "story"}]
      136 LOADK                            R24 K39 ["Utility"]
      137 SETTABLEKS                       R24 R23 K34 ["name"]
      139 SETTABLEKS                       R17 R23 K35 ["story"]
      141 DUPTABLE                         R24 K36 [{"name", "story"}]
      142 LOADK                            R25 K40 ["Disabled"]
      143 SETTABLEKS                       R25 R24 K34 ["name"]
      145 SETTABLEKS                       R18 R24 K35 ["story"]
      147 SETLIST                          R20 R21 4 [1]
      149 SETTABLEKS                       R20 R19 K31 ["stories"]
      151 DUPTABLE                         R20 K46 [{"variant", "size", "isCircular", "hasPadding", "isDisabled"}]
      152 GETTABLEKS                       R21 R2 K47 ["values"]
      154 MOVE                             R22 R5
      155 CALL                             R21 1 1
      156 SETTABLEKS                       R21 R20 K41 ["variant"]
      158 SETTABLEKS                       R10 R20 K42 ["size"]
      160 LOADB                            R21 1
      161 SETTABLEKS                       R21 R20 K43 ["isCircular"]
      163 LOADB                            R21 1
      164 SETTABLEKS                       R21 R20 K44 ["hasPadding"]
      166 LOADB                            R21 0
      167 SETTABLEKS                       R21 R20 K45 ["isDisabled"]
      169 SETTABLEKS                       R20 R19 K32 ["controls"]
      171 RETURN                           R19 1
