PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["presets"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Default"]
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
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K2 ["getDefaultTransition"]
        4 CALL                             R1 0 1
        5 SETTABLEKS                       R1 R0 K0 ["default"]
        7 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R4 R0 K6 ["Enums"]
       16 GETTABLEKS                       R3 R4 K7 ["TransitionPreset"]
       18 CALL                             R2 1 1
       19 NEWTABLE                         R3 4 0
       21 NEWTABLE                         R4 4 0
       23 GETTABLEKS                       R5 R2 K8 ["Default"]
       25 DUPTABLE                         R6 K12 [{"duration", "easingStyle", "delay"}]
       26 LOADK                            R7 K13 [0.3]
       27 SETTABLEKS                       R7 R6 K9 ["duration"]
       29 NEWTABLE                         R7 0 4
       31 LOADK                            R8 K14 [0.2]
       32 LOADN                            R9 0
       33 LOADN                            R10 0
       34 LOADN                            R11 1
       35 SETLIST                          R7 R8 4 [1]
       37 SETTABLEKS                       R7 R6 K10 ["easingStyle"]
       39 LOADN                            R7 0
       40 SETTABLEKS                       R7 R6 K11 ["delay"]
       42 SETTABLE                         R6 R4 R5
       43 GETTABLEKS                       R5 R2 K15 ["Quick"]
       45 DUPTABLE                         R6 K12 [{"duration", "easingStyle", "delay"}]
       46 LOADK                            R7 K16 [0.05]
       47 SETTABLEKS                       R7 R6 K9 ["duration"]
       49 NEWTABLE                         R7 0 4
       51 LOADK                            R8 K14 [0.2]
       52 LOADN                            R9 0
       53 LOADN                            R10 0
       54 LOADN                            R11 1
       55 SETLIST                          R7 R8 4 [1]
       57 SETTABLEKS                       R7 R6 K10 ["easingStyle"]
       59 LOADN                            R7 0
       60 SETTABLEKS                       R7 R6 K11 ["delay"]
       62 SETTABLE                         R6 R4 R5
       63 GETTABLEKS                       R5 R2 K17 ["Slow"]
       65 DUPTABLE                         R6 K12 [{"duration", "easingStyle", "delay"}]
       66 LOADN                            R7 1
       67 SETTABLEKS                       R7 R6 K9 ["duration"]
       69 NEWTABLE                         R7 0 4
       71 LOADK                            R8 K14 [0.2]
       72 LOADN                            R9 0
       73 LOADN                            R10 0
       74 LOADN                            R11 1
       75 SETLIST                          R7 R8 4 [1]
       77 SETTABLEKS                       R7 R6 K10 ["easingStyle"]
       79 LOADN                            R7 0
       80 SETTABLEKS                       R7 R6 K11 ["delay"]
       82 SETTABLE                         R6 R4 R5
       83 SETTABLEKS                       R4 R3 K18 ["presets"]
       85 DUPCLOSURE                       R4 K19 [PROTO_0]
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R2
       88 SETTABLEKS                       R4 R3 K20 ["getDefaultTransition"]
       90 DUPCLOSURE                       R4 K21 [PROTO_1]
       91 CAPTURE                          VAL R3
       92 SETTABLEKS                       R4 R3 K22 ["createDefaultTransitionState"]
       94 RETURN                           R3 1
