PROTO_0:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 1
        4 JUMPIFNOT                        R3 ; [+13]
        5 JUMPIFEQKNIL                     R0 ; [+12]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R4 R0 K0 ["Instance"]
       10 GETTABLEKS                       R5 R0 K1 ["PropertyName"]
       12 GETTABLEKS                       R6 R0 K2 ["DefaultValue"]
       14 CALL                             R3 3 2
       15 MOVE                             R1 R3
       16 MOVE                             R2 R4
       17 RETURN                           R1 2
       18 GETIMPORT                        R3 K4 [settings]
       20 CALL                             R3 0 1
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R5 R3 K5 ["Rendering"]
       24 LOADK                            R6 K6 ["ViewMode"]
       25 GETIMPORT                        R7 K9 [Enum.ViewMode.None]
       27 CALL                             R4 3 2
       28 MOVE                             R1 R4
       29 MOVE                             R2 R5
       30 RETURN                           R1 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Hooks"]
       20 GETTABLEKS                       R3 R3 K9 ["useInstanceSetting"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K10 ["Flags"]
       29 GETTABLEKS                       R4 R4 K11 ["getFFlagStudioVisualizationModesTestSupport"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K12 [PROTO_0]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R2
       35 RETURN                           R4 1
