PROTO_0:
        0 DUPTABLE                         R2 K1 [{"sliceRect"}]
        1 GETTABLEKS                       R3 R1 K0 ["sliceRect"]
        3 SETTABLEKS                       R3 R2 K0 ["sliceRect"]
        5 SETTABLEKS                       R2 R0 K2 ["state"]
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"sliceRect"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K2 ["getSliceRectFromSliceCenter"]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K3 ["SliceCenter"]
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K0 ["sliceRect"]
       11 NAMECALL                         R0 R0 K4 ["setState"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["selectedObject"]
        4 LOADK                            R4 K2 ["SliceCenter"]
        5 NAMECALL                         R2 R1 K3 ["GetPropertyChangedSignal"]
        7 CALL                             R2 2 1
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R1
       12 NAMECALL                         R2 R2 K4 ["Connect"]
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R0 K5 ["sliceCenterChangedSignal"]
       17 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["sliceCenterChangedSignal"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["sliceCenterChangedSignal"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["sliceCenterChangedSignal"]
       11 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K8 [{"selectedObject", "pixelDimensions", "onClose", "sliceRect", "revertSliceRect"}]
        9 GETTABLEKS                       R6 R1 K3 ["selectedObject"]
       11 SETTABLEKS                       R6 R5 K3 ["selectedObject"]
       13 GETTABLEKS                       R6 R1 K4 ["pixelDimensions"]
       15 SETTABLEKS                       R6 R5 K4 ["pixelDimensions"]
       17 DUPCLOSURE                       R6 K9 [PROTO_4]
       18 SETTABLEKS                       R6 R5 K5 ["onClose"]
       20 GETTABLEKS                       R6 R2 K6 ["sliceRect"]
       22 SETTABLEKS                       R6 R5 K6 ["sliceRect"]
       24 GETTABLEKS                       R6 R1 K6 ["sliceRect"]
       26 SETTABLEKS                       R6 R5 K7 ["revertSliceRect"]
       28 CALL                             R3 2 -1
       29 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETTABLEKS                       R5 R3 K10 ["Analytics"]
       29 GETTABLEKS                       R6 R3 K11 ["Localization"]
       31 GETIMPORT                        R7 K4 [require]
       33 GETTABLEKS                       R8 R0 K12 ["Src"]
       35 GETTABLEKS                       R8 R8 K13 ["Util"]
       37 GETTABLEKS                       R8 R8 K14 ["SliceRectUtil"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K4 [require]
       42 GETTABLEKS                       R9 R0 K12 ["Src"]
       44 GETTABLEKS                       R9 R9 K15 ["Components"]
       46 GETTABLEKS                       R9 R9 K16 ["SliceEditorMain"]
       48 CALL                             R8 1 1
       49 GETTABLEKS                       R9 R1 K17 ["PureComponent"]
       51 LOADK                            R11 K18 ["SliceEditorTestWrapper"]
       52 NAMECALL                         R9 R9 K19 ["extend"]
       54 CALL                             R9 2 1
       55 DUPCLOSURE                       R10 K20 [PROTO_0]
       56 SETTABLEKS                       R10 R9 K21 ["init"]
       58 DUPCLOSURE                       R10 K22 [PROTO_2]
       59 CAPTURE                          VAL R7
       60 SETTABLEKS                       R10 R9 K23 ["didMount"]
       62 DUPCLOSURE                       R10 K24 [PROTO_3]
       63 SETTABLEKS                       R10 R9 K25 ["willUnmount"]
       65 DUPCLOSURE                       R10 K26 [PROTO_5]
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R8
       68 SETTABLEKS                       R10 R9 K27 ["render"]
       70 MOVE                             R10 R4
       71 DUPTABLE                         R11 K30 [{"Analytics", "Localization", "Stylizer", "Mouse"}]
       72 SETTABLEKS                       R5 R11 K10 ["Analytics"]
       74 SETTABLEKS                       R6 R11 K11 ["Localization"]
       76 GETTABLEKS                       R12 R3 K28 ["Stylizer"]
       78 SETTABLEKS                       R12 R11 K28 ["Stylizer"]
       80 GETTABLEKS                       R12 R3 K29 ["Mouse"]
       82 SETTABLEKS                       R12 R11 K29 ["Mouse"]
       84 CALL                             R10 1 1
       85 MOVE                             R11 R9
       86 CALL                             R10 1 1
       87 MOVE                             R9 R10
       88 RETURN                           R9 1
