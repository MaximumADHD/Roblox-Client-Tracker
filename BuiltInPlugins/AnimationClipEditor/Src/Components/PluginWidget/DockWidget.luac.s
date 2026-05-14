PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["Plugin"]
        4 GETTABLEKS                       R4 R2 K2 ["Widget"]
        6 JUMPIFNOT                        R4 ; [+3]
        7 GETTABLEKS                       R4 R2 K2 ["Widget"]
        9 RETURN                           R4 1
       10 GETIMPORT                        R4 K5 [DockWidgetPluginGuiInfo.new]
       12 GETTABLEKS                       R5 R2 K6 ["InitialDockState"]
       14 GETTABLEKS                       R6 R2 K7 ["InitialEnabled"]
       16 GETTABLEKS                       R7 R2 K8 ["InitialEnabledShouldOverrideRestore"]
       18 GETTABLEKS                       R8 R2 K9 ["Size"]
       20 GETTABLEKS                       R8 R8 K10 ["X"]
       22 GETTABLEKS                       R9 R2 K9 ["Size"]
       24 GETTABLEKS                       R9 R9 K11 ["Y"]
       26 GETTABLEKS                       R10 R2 K12 ["MinSize"]
       28 GETTABLEKS                       R10 R10 K10 ["X"]
       30 GETTABLEKS                       R11 R2 K12 ["MinSize"]
       32 GETTABLEKS                       R11 R11 K11 ["Y"]
       34 CALL                             R4 7 1
       35 MOVE                             R7 R1
       36 MOVE                             R8 R4
       37 NAMECALL                         R5 R3 K13 ["CreateDockWidgetPluginGui"]
       39 CALL                             R5 3 -1
       40 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["PluginWidget"]
       15 GETTABLEKS                       R2 R2 K8 ["PluginWidget"]
       17 CALL                             R1 1 1
       18 MOVE                             R2 R1
       19 LOADK                            R3 K9 ["DockWidget"]
       20 DUPCLOSURE                       R4 K10 [PROTO_0]
       21 CALL                             R2 2 -1
       22 RETURN                           R2 -1
