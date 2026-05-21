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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["__DEV__"]
       14 GETIMPORT                        R3 K4 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K2 ["Parent"]
       20 GETTABLEKS                       R4 R4 K7 ["ReactInternalTypes"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K4 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Shared"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R4 R4 K9 ["ReactSharedInternals"]
       30 GETIMPORT                        R5 K4 [require]
       32 GETIMPORT                        R6 K1 [script]
       34 GETTABLEKS                       R6 R6 K2 ["Parent"]
       36 GETTABLEKS                       R6 R6 K10 ["ReactFiberComponentStack"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R5 K11 ["getStackByFiberInDevAndProd"]
       41 GETIMPORT                        R7 K4 [require]
       43 GETTABLEKS                       R8 R0 K8 ["Shared"]
       45 CALL                             R7 1 1
       46 GETTABLEKS                       R7 R7 K12 ["getComponentName"]
       48 GETTABLEKS                       R8 R4 K13 ["ReactDebugCurrentFrame"]
       50 DUPTABLE                         R9 K16 [{"current", "isRendering"}]
       51 LOADNIL                          R10
       52 SETTABLEKS                       R10 R9 K14 ["current"]
       54 LOADB                            R10 0
       55 SETTABLEKS                       R10 R9 K15 ["isRendering"]
       57 DUPCLOSURE                       R10 K17 [PROTO_0]
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R7
       61 SETTABLEKS                       R10 R9 K18 ["getCurrentFiberOwnerNameInDevOrNull"]
       63 DUPCLOSURE                       R10 K19 [PROTO_1]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R6
       67 DUPCLOSURE                       R11 K20 [PROTO_2]
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R9
       71 SETTABLEKS                       R11 R9 K21 ["resetCurrentFiber"]
       73 DUPCLOSURE                       R11 K22 [PROTO_3]
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R9
       78 SETTABLEKS                       R11 R9 K23 ["setCurrentFiber"]
       80 DUPCLOSURE                       R11 K24 [PROTO_4]
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R9
       83 SETTABLEKS                       R11 R9 K25 ["setIsRendering"]
       85 DUPCLOSURE                       R11 K26 [PROTO_5]
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R9
       88 SETTABLEKS                       R11 R9 K27 ["getIsRendering"]
       90 RETURN                           R9 1
