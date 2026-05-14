PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["plugin"]
        4 GETTABLEKS                       R4 R2 K2 ["Widget"]
        6 JUMPIFNOT                        R4 ; [+3]
        7 GETTABLEKS                       R4 R2 K2 ["Widget"]
        9 RETURN                           R4 1
       10 GETIMPORT                        R4 K5 [DockWidgetPluginGuiInfo.new]
       12 GETTABLEKS                       R5 R2 K6 ["InitialDockState"]
       14 GETTABLEKS                       R6 R2 K7 ["InitialEnabled"]
       16 GETTABLEKS                       R7 R2 K8 ["InitialEnabledShouldOverrideRestore"]
       18 GETTABLEKS                       R8 R2 K9 ["FloatingXSize"]
       20 GETTABLEKS                       R9 R2 K10 ["FloatingYSize"]
       22 GETTABLEKS                       R10 R2 K11 ["MinWidth"]
       24 GETTABLEKS                       R11 R2 K12 ["MinHeight"]
       26 CALL                             R4 7 1
       27 MOVE                             R7 R1
       28 MOVE                             R8 R4
       29 NAMECALL                         R5 R3 K13 ["CreateDockWidgetPluginGui"]
       31 CALL                             R5 3 -1
       32 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Components"]
       17 GETTABLEKS                       R2 R2 K7 ["PluginWidget"]
       19 GETTABLEKS                       R2 R2 K7 ["PluginWidget"]
       21 CALL                             R1 1 1
       22 MOVE                             R2 R1
       23 LOADK                            R3 K8 ["DockWidget"]
       24 DUPCLOSURE                       R4 K9 [PROTO_0]
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1
