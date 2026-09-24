PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R3 R0 K2 ["pluginGui"]
       10 DUPTABLE                         R4 K7 [{["studioAction"], ["isEnabled"] = True, ["activate"]}]
       11 GETUPVAL                         R6 3
       12 JUMPIFNOT                        R6 ; [+4]
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R5 R5 K8 ["DeleteSelected"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R5
       18 SETTABLEKS                       R5 R4 K3 ["studioAction"]
       20 GETTABLEKS                       R5 R1 K9 ["deleteSelection"]
       22 SETTABLEKS                       R5 R4 K6 ["activate"]
       24 CALL                             R2 2 0
       25 LOADNIL                          R2
       26 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["StateMachineGraphing"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Hooks"]
       25 GETTABLEKS                       R4 R4 K10 ["useStudioActionOverride"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K11 ["SelectionContext"]
       30 GETIMPORT                        R5 K13 [Enum]
       32 GETTABLEKS                       R5 R5 K14 ["StudioAction"]
       34 DUPCLOSURE                       R6 K15 [PROTO_0]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R5
       39 RETURN                           R6 1
