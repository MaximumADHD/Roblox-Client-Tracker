PROTO_0:
        0 GETIMPORT                        R0 K1 [_G]
        2 GETTABLEKS                       R0 R0 K2 ["__DEV__"]
        4 JUMPIFNOT                        R0 ; [+18]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K3 ["current"]
        8 JUMPIFNOTEQKNIL                  R0 ; [+3]
       10 LOADNIL                          R0
       11 RETURN                           R0 1
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K3 ["current"]
       15 GETTABLEKS                       R0 R0 K4 ["_debugOwner"]
       17 JUMPIFNOT                        R0 ; [+5]
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R2 R0 K5 ["type"]
       21 CALL                             R1 1 -1
       22 RETURN                           R1 -1
       23 LOADNIL                          R0
       24 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [_G]
        2 GETTABLEKS                       R0 R0 K2 ["__DEV__"]
        4 JUMPIFNOT                        R0 ; [+13]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K3 ["current"]
        8 JUMPIFNOTEQKNIL                  R0 ; [+3]
       10 LOADK                            R0 K4 [""]
       11 RETURN                           R0 1
       12 GETUPVAL                         R0 1
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K3 ["current"]
       16 CALL                             R0 1 -1
       17 RETURN                           R0 -1
       18 LOADK                            R0 K4 [""]
       19 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R0 K1 [_G]
        2 GETTABLEKS                       R0 R0 K2 ["__DEV__"]
        4 JUMPIFNOT                        R0 ; [+12]
        5 GETUPVAL                         R0 0
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K3 ["getCurrentStack"]
        9 GETUPVAL                         R0 1
       10 LOADNIL                          R1
       11 SETTABLEKS                       R1 R0 K4 ["current"]
       13 GETUPVAL                         R0 1
       14 LOADB                            R1 0
       15 SETTABLEKS                       R1 R0 K5 ["isRendering"]
       17 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R1 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+11]
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K3 ["getCurrentStack"]
        9 GETUPVAL                         R1 2
       10 SETTABLEKS                       R0 R1 K4 ["current"]
       12 GETUPVAL                         R1 2
       13 LOADB                            R2 0
       14 SETTABLEKS                       R2 R1 K5 ["isRendering"]
       16 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R1 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETUPVAL                         R1 0
        6 SETTABLEKS                       R0 R1 K3 ["isRendering"]
        8 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [_G]
        2 GETTABLEKS                       R0 R0 K2 ["__DEV__"]
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K3 ["isRendering"]
        8 RETURN                           R0 1
        9 LOADB                            R0 0
       10 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K2 ["Parent"]
       13 GETTABLEKS                       R2 R2 K5 ["ReactInternalTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Shared"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R2 R2 K7 ["ReactSharedInternals"]
       23 GETIMPORT                        R3 K4 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K2 ["Parent"]
       29 GETTABLEKS                       R4 R4 K8 ["ReactFiberComponentStack"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K9 ["getStackByFiberInDevAndProd"]
       34 GETIMPORT                        R5 K4 [require]
       36 GETTABLEKS                       R6 R0 K6 ["Shared"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R5 R5 K10 ["getComponentName"]
       41 GETTABLEKS                       R6 R2 K11 ["ReactDebugCurrentFrame"]
       43 DUPTABLE                         R7 K14 [{"current", "isRendering"}]
       44 LOADNIL                          R8
       45 SETTABLEKS                       R8 R7 K12 ["current"]
       47 LOADB                            R8 0
       48 SETTABLEKS                       R8 R7 K13 ["isRendering"]
       50 DUPCLOSURE                       R8 K15 [PROTO_0]
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R5
       53 SETTABLEKS                       R8 R7 K16 ["getCurrentFiberOwnerNameInDevOrNull"]
       55 DUPCLOSURE                       R8 K17 [PROTO_1]
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R4
       58 DUPCLOSURE                       R9 K18 [PROTO_2]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R7
       61 SETTABLEKS                       R9 R7 K19 ["resetCurrentFiber"]
       63 DUPCLOSURE                       R9 K20 [PROTO_3]
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R7
       67 SETTABLEKS                       R9 R7 K21 ["setCurrentFiber"]
       69 DUPCLOSURE                       R9 K22 [PROTO_4]
       70 CAPTURE                          VAL R7
       71 SETTABLEKS                       R9 R7 K23 ["setIsRendering"]
       73 DUPCLOSURE                       R9 K24 [PROTO_5]
       74 CAPTURE                          VAL R7
       75 SETTABLEKS                       R9 R7 K25 ["getIsRendering"]
       77 RETURN                           R7 1
