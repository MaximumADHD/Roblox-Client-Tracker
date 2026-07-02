PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+18]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIFNOTEQKNIL                  R0 ; [+3]
        7 LOADNIL                          R0
        8 RETURN                           R0 1
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K0 ["current"]
       12 GETTABLEKS                       R0 R0 K1 ["_debugOwner"]
       14 JUMPIFNOT                        R0 ; [+5]
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R2 R0 K2 ["type"]
       18 CALL                             R1 1 -1
       19 RETURN                           R1 -1
       20 LOADNIL                          R0
       21 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+13]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIFNOTEQKNIL                  R0 ; [+3]
        7 LOADK                            R0 K1 [""]
        8 RETURN                           R0 1
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K0 ["current"]
       13 CALL                             R0 1 -1
       14 RETURN                           R0 -1
       15 LOADK                            R0 K1 [""]
       16 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+12]
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K0 ["getCurrentStack"]
        6 GETUPVAL                         R0 2
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K1 ["current"]
       10 GETUPVAL                         R0 2
       11 LOADB                            R1 0
       12 SETTABLEKS                       R1 R0 K2 ["isRendering"]
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+11]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R2 2
        4 SETTABLEKS                       R2 R1 K0 ["getCurrentStack"]
        6 GETUPVAL                         R1 3
        7 SETTABLEKS                       R0 R1 K1 ["current"]
        9 GETUPVAL                         R1 3
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K2 ["isRendering"]
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 1
        3 SETTABLEKS                       R0 R1 K0 ["isRendering"]
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["isRendering"]
        5 RETURN                           R0 1
        6 LOADB                            R0 0
        7 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [_G]
        3 GETTABLEKS                       R0 R0 K2 ["__DEV__"]
        5 GETIMPORT                        R1 K4 [script]
        7 GETTABLEKS                       R1 R1 K5 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["Parent"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETIMPORT                        R3 K4 [script]
       15 GETTABLEKS                       R3 R3 K5 ["Parent"]
       17 GETTABLEKS                       R3 R3 K8 ["ReactInternalTypes"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K7 [require]
       22 GETTABLEKS                       R4 R1 K9 ["Shared"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R3 R3 K10 ["ReactSharedInternals"]
       27 GETIMPORT                        R4 K7 [require]
       29 GETIMPORT                        R5 K4 [script]
       31 GETTABLEKS                       R5 R5 K5 ["Parent"]
       33 GETTABLEKS                       R5 R5 K11 ["ReactFiberComponentStack"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R4 K12 ["getStackByFiberInDevAndProd"]
       38 GETIMPORT                        R6 K7 [require]
       40 GETTABLEKS                       R7 R1 K9 ["Shared"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R6 R6 K13 ["getComponentName"]
       45 GETTABLEKS                       R7 R3 K14 ["ReactDebugCurrentFrame"]
       47 DUPTABLE                         R8 K19 [{["current"] = , ["isRendering"] = False}]
       48 DUPCLOSURE                       R9 K20 [PROTO_0]
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R6
       52 SETTABLEKS                       R9 R8 K21 ["getCurrentFiberOwnerNameInDevOrNull"]
       54 DUPCLOSURE                       R9 K22 [PROTO_1]
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R5
       58 DUPCLOSURE                       R10 K23 [PROTO_2]
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R8
       62 SETTABLEKS                       R10 R8 K24 ["resetCurrentFiber"]
       64 DUPCLOSURE                       R10 K25 [PROTO_3]
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R8
       69 SETTABLEKS                       R10 R8 K26 ["setCurrentFiber"]
       71 DUPCLOSURE                       R10 K27 [PROTO_4]
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R8
       74 SETTABLEKS                       R10 R8 K28 ["setIsRendering"]
       76 DUPCLOSURE                       R10 K29 [PROTO_5]
       77 CAPTURE                          VAL R0
       78 CAPTURE                          VAL R8
       79 SETTABLEKS                       R10 R8 K30 ["getIsRendering"]
       81 RETURN                           R8 1
