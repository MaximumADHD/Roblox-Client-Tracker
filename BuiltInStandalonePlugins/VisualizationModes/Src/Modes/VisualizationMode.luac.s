PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+14]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["SortOrder"]
        7 JUMPIFNOT                        R0 ; [+10]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K0 ["current"]
       11 LOADK                            R2 K1 ["SortOrder"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K1 ["SortOrder"]
       15 NAMECALL                         R0 R0 K2 ["SetAttribute"]
       17 CALL                             R0 3 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Enabled"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["UseState"]
        2 CALL                             R1 0 2
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["useRef"]
        6 LOADNIL                          R4
        7 CALL                             R3 1 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["useEffect"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R0
       14 NEWTABLE                         R6 0 1
       16 GETTABLEKS                       R7 R0 K3 ["SortOrder"]
       18 SETLIST                          R6 R7 1 [1]
       20 CALL                             R4 2 0
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          VAL R2
       26 CALL                             R4 1 1
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K5 ["createElement"]
       30 LOADK                            R6 K6 ["VisualizationMode"]
       31 NEWTABLE                         R7 8 0
       33 SETTABLEKS                       R3 R7 K7 ["ref"]
       35 GETTABLEKS                       R8 R0 K8 ["Title"]
       37 SETTABLEKS                       R8 R7 K8 ["Title"]
       39 SETTABLEKS                       R1 R7 K9 ["Enabled"]
       41 GETTABLEKS                       R8 R0 K10 ["ToolTip"]
       43 SETTABLEKS                       R8 R7 K10 ["ToolTip"]
       45 GETUPVAL                         R8 0
       46 GETTABLEKS                       R8 R8 K11 ["Change"]
       48 GETTABLEKS                       R8 R8 K9 ["Enabled"]
       50 SETTABLE                         R4 R7 R8
       51 CALL                             R5 2 -1
       52 RETURN                           R5 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_2]
       22 CAPTURE                          VAL R2
       23 RETURN                           R3 1
