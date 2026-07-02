PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["presets"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Default"]
        6 GETTABLE                         R0 R1 R2
        7 DUPTABLE                         R1 K5 [{"duration", "easingStyle", "delay"}]
        8 GETTABLEKS                       R2 R0 K2 ["duration"]
       10 SETTABLEKS                       R2 R1 K2 ["duration"]
       12 GETTABLEKS                       R2 R0 K3 ["easingStyle"]
       14 SETTABLEKS                       R2 R1 K3 ["easingStyle"]
       16 GETTABLEKS                       R2 R0 K4 ["delay"]
       18 SETTABLEKS                       R2 R1 K4 ["delay"]
       20 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"default"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["getDefaultTransition"]
        4 CALL                             R1 0 1
        5 SETTABLEKS                       R1 R0 K0 ["default"]
        7 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Enums"]
       16 GETTABLEKS                       R3 R3 K7 ["TransitionPreset"]
       18 CALL                             R2 1 1
       19 NEWTABLE                         R3 4 0
       21 NEWTABLE                         R4 4 0
       23 GETTABLEKS                       R5 R2 K8 ["Default"]
       25 DUPTABLE                         R6 K14 [{["duration"] = 0.3, ["easingStyle"], ["delay"] = 0}]
       26 NEWTABLE                         R7 0 4
       28 LOADK                            R8 K15 [0.2]
       29 LOADN                            R9 0
       30 LOADN                            R10 0
       31 LOADN                            R11 1
       32 SETLIST                          R7 R8 4 [1]
       34 SETTABLEKS                       R7 R6 K11 ["easingStyle"]
       36 SETTABLE                         R6 R4 R5
       37 GETTABLEKS                       R5 R2 K16 ["Quick"]
       39 DUPTABLE                         R6 K18 [{["duration"] = 0.05, ["easingStyle"], ["delay"] = 0}]
       40 NEWTABLE                         R7 0 4
       42 LOADK                            R8 K15 [0.2]
       43 LOADN                            R9 0
       44 LOADN                            R10 0
       45 LOADN                            R11 1
       46 SETLIST                          R7 R8 4 [1]
       48 SETTABLEKS                       R7 R6 K11 ["easingStyle"]
       50 SETTABLE                         R6 R4 R5
       51 GETTABLEKS                       R5 R2 K19 ["Slow"]
       53 DUPTABLE                         R6 K21 [{["duration"] = 1, ["easingStyle"], ["delay"] = 0}]
       54 NEWTABLE                         R7 0 4
       56 LOADK                            R8 K15 [0.2]
       57 LOADN                            R9 0
       58 LOADN                            R10 0
       59 LOADN                            R11 1
       60 SETLIST                          R7 R8 4 [1]
       62 SETTABLEKS                       R7 R6 K11 ["easingStyle"]
       64 SETTABLE                         R6 R4 R5
       65 SETTABLEKS                       R4 R3 K22 ["presets"]
       67 DUPCLOSURE                       R4 K23 [PROTO_0]
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R2
       70 SETTABLEKS                       R4 R3 K24 ["getDefaultTransition"]
       72 DUPCLOSURE                       R4 K25 [PROTO_1]
       73 CAPTURE                          VAL R3
       74 SETTABLEKS                       R4 R3 K26 ["createDefaultTransitionState"]
       76 RETURN                           R3 1
