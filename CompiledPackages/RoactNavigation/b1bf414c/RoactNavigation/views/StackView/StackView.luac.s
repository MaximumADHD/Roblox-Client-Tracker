PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_render"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_configureTransition"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_onTransitionStart"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_onTransitionEnd"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_onTransitionStep"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["_doRender"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["_doConfigureTransition"]
        8 NEWCLOSURE                       R1 P2
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R1 R0 K2 ["_doOnTransitionStart"]
       12 NEWCLOSURE                       R1 P3
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K3 ["_doOnTransitionEnd"]
       16 NEWCLOSURE                       R1 P4
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K4 ["_doOnTransitionStep"]
       20 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["screenProps"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["navigation"]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["descriptors"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K4 ["createElement"]
       15 GETUPVAL                         R5 1
       16 DUPTABLE                         R6 K10 [{"render", "configureTransition", "screenProps", "navigation", "descriptors", "onTransitionStart", "onTransitionEnd", "onTransitionStep"}]
       17 GETTABLEKS                       R7 R0 K11 ["_doRender"]
       19 SETTABLEKS                       R7 R6 K5 ["render"]
       21 GETTABLEKS                       R7 R0 K12 ["_doConfigureTransition"]
       23 SETTABLEKS                       R7 R6 K6 ["configureTransition"]
       25 SETTABLEKS                       R1 R6 K1 ["screenProps"]
       27 SETTABLEKS                       R2 R6 K2 ["navigation"]
       29 SETTABLEKS                       R3 R6 K3 ["descriptors"]
       31 GETTABLEKS                       R7 R0 K13 ["_doOnTransitionStart"]
       33 SETTABLEKS                       R7 R6 K7 ["onTransitionStart"]
       35 GETTABLEKS                       R7 R0 K14 ["_doOnTransitionEnd"]
       37 SETTABLEKS                       R7 R6 K8 ["onTransitionEnd"]
       39 GETTABLEKS                       R7 R0 K15 ["_doOnTransitionStep"]
       41 SETTABLEKS                       R7 R6 K9 ["onTransitionStep"]
       43 CALL                             R4 2 -1
       44 RETURN                           R4 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["navigation"]
        4 GETTABLEKS                       R2 R1 K2 ["state"]
        6 GETTABLEKS                       R2 R2 K3 ["isTransitioning"]
        8 JUMPIFNOT                        R2 ; [+14]
        9 GETTABLEKS                       R2 R1 K4 ["dispatch"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K5 ["completeTransition"]
       14 DUPTABLE                         R4 K7 [{"key"}]
       15 GETTABLEKS                       R5 R1 K2 ["state"]
       17 GETTABLEKS                       R5 R5 K6 ["key"]
       19 SETTABLEKS                       R5 R4 K6 ["key"]
       21 CALL                             R3 1 -1
       22 CALL                             R2 -1 0
       23 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["screenProps"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["Dictionary"]
        7 GETTABLEKS                       R4 R4 K3 ["join"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R6 R0 K0 ["props"]
       12 GETTABLEKS                       R6 R6 K4 ["navigationConfig"]
       14 CALL                             R4 2 1
       15 GETTABLEKS                       R5 R0 K0 ["props"]
       17 GETTABLEKS                       R5 R5 K5 ["descriptors"]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R6 R6 K6 ["createElement"]
       22 GETUPVAL                         R7 3
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R8 R8 K2 ["Dictionary"]
       26 GETTABLEKS                       R8 R8 K3 ["join"]
       28 MOVE                             R9 R4
       29 DUPTABLE                         R10 K9 [{"screenProps", "descriptors", "transitionProps", "lastTransitionProps"}]
       30 SETTABLEKS                       R3 R10 K1 ["screenProps"]
       32 SETTABLEKS                       R5 R10 K5 ["descriptors"]
       34 SETTABLEKS                       R1 R10 K7 ["transitionProps"]
       36 SETTABLEKS                       R2 R10 K8 ["lastTransitionProps"]
       38 CALL                             R8 2 -1
       39 CALL                             R6 -1 -1
       40 RETURN                           R6 -1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getTransitionConfig"]
        3 GETTABLEKS                       R4 R0 K1 ["props"]
        5 GETTABLEKS                       R4 R4 K2 ["navigationConfig"]
        7 GETTABLEKS                       R4 R4 K3 ["transitionConfig"]
        9 MOVE                             R5 R1
       10 MOVE                             R6 R2
       11 GETTABLEKS                       R7 R0 K1 ["props"]
       13 GETTABLEKS                       R7 R7 K2 ["navigationConfig"]
       15 GETTABLEKS                       R7 R7 K4 ["mode"]
       17 CALL                             R3 4 1
       18 GETTABLEKS                       R3 R3 K5 ["transitionSpec"]
       20 RETURN                           R3 1

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["onTransitionStart"]
        4 JUMPIF                           R3 ; [+6]
        5 GETTABLEKS                       R3 R0 K0 ["props"]
        7 GETTABLEKS                       R3 R3 K2 ["navigationConfig"]
        9 GETTABLEKS                       R3 R3 K1 ["onTransitionStart"]
       11 JUMPIFNOT                        R3 ; [+12]
       12 GETTABLEKS                       R4 R1 K3 ["index"]
       14 GETTABLEKS                       R5 R2 K3 ["index"]
       16 JUMPIFEQ                         R4 R5 ; [+7]
       18 MOVE                             R4 R3
       19 GETTABLEKS                       R5 R1 K4 ["navigation"]
       21 GETTABLEKS                       R6 R2 K4 ["navigation"]
       23 CALL                             R4 2 0
       24 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["navigationConfig"]
        4 GETTABLEKS                       R4 R0 K0 ["props"]
        6 GETTABLEKS                       R4 R4 K2 ["navigation"]
        8 GETTABLEKS                       R5 R0 K0 ["props"]
       10 GETTABLEKS                       R5 R5 K3 ["onTransitionEnd"]
       12 JUMPIF                           R5 ; [+2]
       13 GETTABLEKS                       R5 R3 K3 ["onTransitionEnd"]
       15 GETTABLEKS                       R6 R1 K4 ["scene"]
       17 GETTABLEKS                       R6 R6 K5 ["route"]
       19 GETTABLEKS                       R6 R6 K6 ["key"]
       21 GETTABLEKS                       R9 R4 K7 ["state"]
       23 GETTABLEKS                       R9 R9 K8 ["routes"]
       25 GETTABLEKS                       R10 R4 K7 ["state"]
       27 GETTABLEKS                       R10 R10 K9 ["index"]
       29 GETTABLE                         R8 R9 R10
       30 GETTABLEKS                       R8 R8 K6 ["key"]
       32 JUMPIFEQ                         R8 R6 ; [+2]
       34 LOADB                            R7 0 +1
       35 LOADB                            R7 1
       36 GETTABLEKS                       R8 R1 K2 ["navigation"]
       38 GETTABLEKS                       R8 R8 K7 ["state"]
       40 GETTABLEKS                       R8 R8 K10 ["isTransitioning"]
       42 JUMPIFNOT                        R8 ; [+17]
       43 JUMPIFNOT                        R7 ; [+16]
       44 GETTABLEKS                       R8 R4 K11 ["dispatch"]
       46 GETUPVAL                         R9 0
       47 GETTABLEKS                       R9 R9 K12 ["completeTransition"]
       49 DUPTABLE                         R10 K14 [{"key", "toChildKey"}]
       50 GETTABLEKS                       R11 R4 K7 ["state"]
       52 GETTABLEKS                       R11 R11 K6 ["key"]
       54 SETTABLEKS                       R11 R10 K6 ["key"]
       56 SETTABLEKS                       R6 R10 K13 ["toChildKey"]
       58 CALL                             R9 1 -1
       59 CALL                             R8 -1 0
       60 JUMPIFNOT                        R5 ; [+12]
       61 GETTABLEKS                       R8 R1 K9 ["index"]
       63 GETTABLEKS                       R9 R2 K9 ["index"]
       65 JUMPIFEQ                         R8 R9 ; [+7]
       67 MOVE                             R8 R5
       68 GETTABLEKS                       R9 R1 K2 ["navigation"]
       70 GETTABLEKS                       R10 R2 K2 ["navigation"]
       72 CALL                             R8 2 0
       73 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R4 K1 ["onTransitionStep"]
        4 JUMPIF                           R4 ; [+6]
        5 GETTABLEKS                       R4 R0 K0 ["props"]
        7 GETTABLEKS                       R4 R4 K2 ["navigationConfig"]
        9 GETTABLEKS                       R4 R4 K1 ["onTransitionStep"]
       11 JUMPIFNOT                        R4 ; [+13]
       12 GETTABLEKS                       R5 R1 K3 ["index"]
       14 GETTABLEKS                       R6 R2 K3 ["index"]
       16 JUMPIFEQ                         R5 R6 ; [+8]
       18 MOVE                             R5 R4
       19 GETTABLEKS                       R6 R1 K4 ["navigation"]
       21 GETTABLEKS                       R7 R2 K4 ["navigation"]
       23 MOVE                             R8 R3
       24 CALL                             R5 3 0
       25 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K4 ["Parent"]
       11 GETTABLEKS                       R1 R1 K4 ["Parent"]
       13 GETTABLEKS                       R1 R1 K5 ["Cryo"]
       15 CALL                             R0 1 1
       16 GETIMPORT                        R1 K1 [require]
       18 GETIMPORT                        R2 K3 [script]
       20 GETTABLEKS                       R2 R2 K4 ["Parent"]
       22 GETTABLEKS                       R2 R2 K4 ["Parent"]
       24 GETTABLEKS                       R2 R2 K4 ["Parent"]
       26 GETTABLEKS                       R2 R2 K4 ["Parent"]
       28 GETTABLEKS                       R2 R2 K6 ["Roact"]
       30 CALL                             R1 1 1
       31 GETIMPORT                        R2 K1 [require]
       33 GETIMPORT                        R3 K3 [script]
       35 GETTABLEKS                       R3 R3 K4 ["Parent"]
       37 GETTABLEKS                       R3 R3 K4 ["Parent"]
       39 GETTABLEKS                       R3 R3 K4 ["Parent"]
       41 GETTABLEKS                       R3 R3 K7 ["NavigationActions"]
       43 CALL                             R2 1 1
       44 GETIMPORT                        R3 K1 [require]
       46 GETIMPORT                        R4 K3 [script]
       48 GETTABLEKS                       R4 R4 K4 ["Parent"]
       50 GETTABLEKS                       R4 R4 K8 ["StackViewLayout"]
       52 CALL                             R3 1 1
       53 GETIMPORT                        R4 K1 [require]
       55 GETIMPORT                        R5 K3 [script]
       57 GETTABLEKS                       R5 R5 K4 ["Parent"]
       59 GETTABLEKS                       R5 R5 K4 ["Parent"]
       61 GETTABLEKS                       R5 R5 K9 ["Transitioner"]
       63 CALL                             R4 1 1
       64 GETIMPORT                        R5 K1 [require]
       66 GETIMPORT                        R6 K3 [script]
       68 GETTABLEKS                       R6 R6 K4 ["Parent"]
       70 GETTABLEKS                       R6 R6 K10 ["StackViewTransitionConfigs"]
       72 CALL                             R5 1 1
       73 GETIMPORT                        R6 K1 [require]
       75 GETIMPORT                        R7 K3 [script]
       77 GETTABLEKS                       R7 R7 K4 ["Parent"]
       79 GETTABLEKS                       R7 R7 K11 ["StackPresentationStyle"]
       81 CALL                             R6 1 1
       82 DUPTABLE                         R7 K13 [{"mode"}]
       83 GETTABLEKS                       R8 R6 K14 ["Default"]
       85 SETTABLEKS                       R8 R7 K12 ["mode"]
       87 GETTABLEKS                       R8 R1 K15 ["Component"]
       89 LOADK                            R10 K16 ["StackView"]
       90 NAMECALL                         R8 R8 K17 ["extend"]
       92 CALL                             R8 2 1
       93 DUPCLOSURE                       R9 K18 [PROTO_5]
       94 SETTABLEKS                       R9 R8 K19 ["init"]
       96 DUPCLOSURE                       R9 K20 [PROTO_6]
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R4
       99 SETTABLEKS                       R9 R8 K21 ["render"]
      101 DUPCLOSURE                       R9 K22 [PROTO_7]
      102 CAPTURE                          VAL R2
      103 SETTABLEKS                       R9 R8 K23 ["didMount"]
      105 DUPCLOSURE                       R9 K24 [PROTO_8]
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R3
      110 SETTABLEKS                       R9 R8 K25 ["_render"]
      112 DUPCLOSURE                       R9 K26 [PROTO_9]
      113 CAPTURE                          VAL R5
      114 SETTABLEKS                       R9 R8 K27 ["_configureTransition"]
      116 DUPCLOSURE                       R9 K28 [PROTO_10]
      117 SETTABLEKS                       R9 R8 K29 ["_onTransitionStart"]
      119 DUPCLOSURE                       R9 K30 [PROTO_11]
      120 CAPTURE                          VAL R2
      121 SETTABLEKS                       R9 R8 K31 ["_onTransitionEnd"]
      123 DUPCLOSURE                       R9 K32 [PROTO_12]
      124 SETTABLEKS                       R9 R8 K33 ["_onTransitionStep"]
      126 RETURN                           R8 1
