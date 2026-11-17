PROTO_0:
        0 JUMPIFNOT                        R1 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R2 R0 K0 ["KeyCode"]
        4 GETIMPORT                        R3 K3 [Enum.KeyCode.Escape]
        6 JUMPIFNOTEQ                      R2 R3 ; [+3]
        8 GETUPVAL                         R2 0
        9 CALL                             R2 0 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["InputBegan"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 1
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["viewModel"]
        2 GETTABLEKS                       R1 R1 K1 ["close"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["useEffect"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R1
       10 NEWTABLE                         R4 0 1
       12 MOVE                             R5 R1
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 0
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K3 ["createElement"]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K4 ["View"]
       22 DUPTABLE                         R4 K11 [{["tag"] = "anchor-bottom-center auto-y", ["Active"] = True, ["Position"], ["Size"]}]
       23 GETIMPORT                        R5 K14 [UDim2.new]
       25 LOADK                            R6 K15 [0.5]
       26 LOADN                            R7 0
       27 LOADN                            R8 1
       28 LOADN                            R9 -48
       29 CALL                             R5 4 1
       30 SETTABLEKS                       R5 R4 K9 ["Position"]
       32 GETIMPORT                        R5 K17 [UDim2.fromOffset]
       34 LOADN                            R6 360
       35 LOADN                            R7 0
       36 CALL                             R5 2 1
       37 SETTABLEKS                       R5 R4 K10 ["Size"]
       39 DUPTABLE                         R5 K19 [{"Panel"}]
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K3 ["createElement"]
       43 GETUPVAL                         R7 3
       44 DUPTABLE                         R8 K20 [{"viewModel"}]
       45 GETTABLEKS                       R9 R0 K0 ["viewModel"]
       47 SETTABLEKS                       R9 R8 K0 ["viewModel"]
       49 CALL                             R6 2 1
       50 SETTABLEKS                       R6 R5 K18 ["Panel"]
       52 CALL                             R2 3 -1
       53 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UserInputService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Gen3d"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K13 ["Src"]
       31 GETTABLEKS                       R5 R5 K14 ["Components"]
       33 GETTABLEKS                       R5 R5 K15 ["SceneGenPanel"]
       35 CALL                             R4 1 1
       36 DUPCLOSURE                       R5 K16 [PROTO_3]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R4
       41 RETURN                           R5 1
