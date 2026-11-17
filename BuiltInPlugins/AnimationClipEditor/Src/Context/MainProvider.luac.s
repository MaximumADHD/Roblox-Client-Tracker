PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["analytics"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K2 ["Children"]
        9 GETTABLE                         R2 R3 R4
       10 GETTABLEKS                       R3 R0 K0 ["props"]
       12 GETTABLEKS                       R3 R3 K3 ["focusGui"]
       14 JUMPIFNOT                        R3 ; [+10]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K4 ["Focus"]
       18 GETTABLEKS                       R3 R3 K5 ["new"]
       20 GETTABLEKS                       R4 R0 K0 ["props"]
       22 GETTABLEKS                       R4 R4 K3 ["focusGui"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R0 K0 ["props"]
       27 GETTABLEKS                       R4 R4 K6 ["localization"]
       29 GETTABLEKS                       R5 R0 K0 ["props"]
       31 GETTABLEKS                       R5 R5 K7 ["mouse"]
       33 JUMPIFNOT                        R5 ; [+10]
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K8 ["Mouse"]
       37 GETTABLEKS                       R5 R5 K5 ["new"]
       39 GETTABLEKS                       R6 R0 K0 ["props"]
       41 GETTABLEKS                       R6 R6 K7 ["mouse"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R0 K0 ["props"]
       46 GETTABLEKS                       R6 R6 K9 ["plugin"]
       48 JUMPIFNOT                        R6 ; [+10]
       49 GETUPVAL                         R6 1
       50 GETTABLEKS                       R6 R6 K10 ["Plugin"]
       52 GETTABLEKS                       R6 R6 K5 ["new"]
       54 GETTABLEKS                       R7 R0 K0 ["props"]
       56 GETTABLEKS                       R7 R7 K9 ["plugin"]
       58 CALL                             R6 1 1
       59 GETTABLEKS                       R7 R0 K0 ["props"]
       61 GETTABLEKS                       R7 R7 K11 ["store"]
       63 JUMPIFNOT                        R7 ; [+10]
       64 GETUPVAL                         R7 1
       65 GETTABLEKS                       R7 R7 K12 ["Store"]
       67 GETTABLEKS                       R7 R7 K5 ["new"]
       69 GETTABLEKS                       R8 R0 K0 ["props"]
       71 GETTABLEKS                       R8 R8 K11 ["store"]
       73 CALL                             R7 1 1
       74 GETTABLEKS                       R8 R0 K0 ["props"]
       76 GETTABLEKS                       R8 R8 K13 ["theme"]
       78 GETTABLEKS                       R9 R0 K0 ["props"]
       80 GETTABLEKS                       R9 R9 K14 ["pluginActions"]
       82 GETTABLEKS                       R10 R0 K0 ["props"]
       84 GETTABLEKS                       R10 R10 K15 ["signals"]
       86 GETTABLEKS                       R11 R0 K0 ["props"]
       88 GETTABLEKS                       R11 R11 K16 ["calloutController"]
       90 GETUPVAL                         R12 1
       91 GETTABLEKS                       R12 R12 K17 ["provide"]
       93 NEWTABLE                         R13 0 10
       95 MOVE                             R14 R1
       96 MOVE                             R15 R3
       97 MOVE                             R16 R6
       98 MOVE                             R17 R4
       99 MOVE                             R18 R8
      100 MOVE                             R19 R7
      101 MOVE                             R20 R5
      102 MOVE                             R21 R9
      103 MOVE                             R22 R10
      104 MOVE                             R23 R11
      105 SETLIST                          R13 R14 10 [1]
      107 MOVE                             R14 R2
      108 CALL                             R12 2 -1
      109 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R1 K10 ["PureComponent"]
       25 LOADK                            R6 K11 ["MainProvider"]
       26 NAMECALL                         R4 R4 K12 ["extend"]
       28 CALL                             R4 2 1
       29 DUPCLOSURE                       R5 K13 [PROTO_0]
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R3
       32 SETTABLEKS                       R5 R4 K14 ["render"]
       34 RETURN                           R4 1
