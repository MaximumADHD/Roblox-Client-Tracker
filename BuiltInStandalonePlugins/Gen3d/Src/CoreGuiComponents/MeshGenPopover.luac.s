PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Closing"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOT                        R1 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R2 R0 K0 ["KeyCode"]
        4 GETIMPORT                        R3 K3 [Enum.KeyCode.Escape]
        6 JUMPIFNOTEQ                      R2 R3 ; [+3]
        8 GETUPVAL                         R2 0
        9 CALL                             R2 0 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["useEventConnection"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K3 ["InputBegan"]
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R5 0 0
       15 CALL                             R2 3 0
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K4 ["createElement"]
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K5 ["View"]
       22 DUPTABLE                         R4 K12 [{["tag"] = "anchor-bottom-center auto-y", ["Active"] = True, ["Position"], ["Size"]}]
       23 GETIMPORT                        R5 K15 [UDim2.new]
       25 LOADK                            R6 K16 [0.5]
       26 LOADN                            R7 0
       27 LOADN                            R8 1
       28 LOADN                            R9 -48
       29 CALL                             R5 4 1
       30 SETTABLEKS                       R5 R4 K10 ["Position"]
       32 GETIMPORT                        R5 K18 [UDim2.fromOffset]
       34 LOADN                            R6 480
       35 LOADN                            R7 0
       36 CALL                             R5 2 1
       37 SETTABLEKS                       R5 R4 K11 ["Size"]
       39 DUPTABLE                         R5 K20 [{"Panel"}]
       40 GETUPVAL                         R6 4
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K4 ["createElement"]
       44 GETUPVAL                         R8 5
       45 DUPTABLE                         R9 K23 [{"viewModel", "onClose"}]
       46 GETTABLEKS                       R10 R0 K21 ["viewModel"]
       48 SETTABLEKS                       R10 R9 K21 ["viewModel"]
       50 SETTABLEKS                       R1 R9 K22 ["onClose"]
       52 CALL                             R7 2 -1
       53 CALL                             R6 -1 1
       54 SETTABLEKS                       R6 R5 K19 ["Panel"]
       56 CALL                             R2 3 -1
       57 RETURN                           R2 -1

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
       15 GETTABLEKS                       R3 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Util"]
       19 GETTABLEKS                       R3 R3 K12 ["as"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R1 K13 ["Packages"]
       26 GETTABLEKS                       R4 R4 K14 ["Foundation"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K13 ["Packages"]
       33 GETTABLEKS                       R5 R5 K15 ["React"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K13 ["Packages"]
       40 GETTABLEKS                       R6 R6 K16 ["ReactUtils"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R1 K10 ["Src"]
       47 GETTABLEKS                       R7 R7 K17 ["Components"]
       49 GETTABLEKS                       R7 R7 K18 ["MeshGenPanel"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R8 R1 K10 ["Src"]
       56 GETTABLEKS                       R8 R8 K11 ["Util"]
       58 GETTABLEKS                       R8 R8 K19 ["MeshGenViewModel"]
       60 CALL                             R7 1 1
       61 DUPCLOSURE                       R8 K20 [PROTO_2]
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R6
       68 GETTABLEKS                       R9 R4 K21 ["memo"]
       70 MOVE                             R10 R8
       71 CALL                             R9 1 -1
       72 RETURN                           R9 -1
