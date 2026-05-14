PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Text"]
        4 GETTABLEKS                       R3 R1 K2 ["TextKey"]
        6 GETTABLEKS                       R4 R1 K3 ["ShowDelay"]
        8 GETTABLEKS                       R5 R1 K4 ["Priority"]
       10 GETTABLEKS                       R6 R0 K0 ["props"]
       12 GETTABLEKS                       R6 R6 K5 ["Localization"]
       14 OR                               R8 R2 R3
       15 FASTCALL2K                       ASSERT R8 K6 ; [+4]
       17 LOADK                            R9 K6 ["Expected either a Text or TextKey prop."]
       18 GETIMPORT                        R7 K8 [assert]
       20 CALL                             R7 2 0
       21 LOADNIL                          R7
       22 JUMPIFNOT                        R2 ; [+2]
       23 MOVE                             R7 R2
       24 JUMP                             ; [+7]
       25 JUMPIFNOT                        R3 ; [+6]
       26 LOADK                            R10 K9 ["Tooltip"]
       27 MOVE                             R11 R3
       28 NAMECALL                         R8 R6 K10 ["getText"]
       30 CALL                             R8 3 1
       31 MOVE                             R7 R8
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R8 R8 K11 ["createElement"]
       35 GETUPVAL                         R9 1
       36 DUPTABLE                         R10 K13 [{"Text", "ShowDelay", "Enabled", "Priority"}]
       37 SETTABLEKS                       R7 R10 K1 ["Text"]
       39 SETTABLEKS                       R4 R10 K3 ["ShowDelay"]
       41 LOADB                            R11 1
       42 SETTABLEKS                       R11 R10 K12 ["Enabled"]
       44 ORK                              R11 R5 K14 [-100]
       45 SETTABLEKS                       R11 R10 K4 ["Priority"]
       47 CALL                             R8 2 -1
       48 RETURN                           R8 -1

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
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETTABLEKS                       R5 R2 K11 ["UI"]
       27 GETTABLEKS                       R5 R5 K12 ["Tooltip"]
       29 GETTABLEKS                       R6 R1 K13 ["PureComponent"]
       31 LOADK                            R8 K12 ["Tooltip"]
       32 NAMECALL                         R6 R6 K14 ["extend"]
       34 CALL                             R6 2 1
       35 DUPCLOSURE                       R7 K15 [PROTO_0]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R5
       38 SETTABLEKS                       R7 R6 K16 ["render"]
       40 MOVE                             R7 R4
       41 DUPTABLE                         R8 K18 [{"Localization"}]
       42 GETTABLEKS                       R9 R3 K17 ["Localization"]
       44 SETTABLEKS                       R9 R8 K17 ["Localization"]
       46 CALL                             R7 1 1
       47 MOVE                             R8 R6
       48 CALL                             R7 1 1
       49 MOVE                             R6 R7
       50 RETURN                           R6 1
