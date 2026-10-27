PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Plugin"]
        3 GETTABLEKS                       R3 R0 K1 ["EditSessionId"]
        5 CALL                             R1 2 1
        6 GETTABLEKS                       R2 R1 K2 ["visible"]
        8 JUMPIF                           R2 ; [+2]
        9 LOADNIL                          R2
       10 RETURN                           R2 1
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K3 ["createElement"]
       14 GETUPVAL                         R3 2
       15 DUPTABLE                         R4 K5 [{"viewModel"}]
       16 GETTABLEKS                       R5 R1 K6 ["value"]
       18 SETTABLEKS                       R5 R4 K4 ["viewModel"]
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["CoreGuiComponents"]
       20 GETTABLEKS                       R3 R3 K10 ["SceneGenPopover"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Hooks"]
       29 GETTABLEKS                       R4 R4 K12 ["useSceneGenViewModel"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K13 [PROTO_0]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 RETURN                           R4 1
