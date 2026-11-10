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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useCallback"]
        3 DUPCLOSURE                       R1 K1 [PROTO_0]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["useEventConnection"]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K3 ["InputBegan"]
       11 NEWCLOSURE                       R3 P1
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R4 0 0
       15 CALL                             R1 3 0
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K4 ["createElement"]
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R2 R2 K5 ["View"]
       22 DUPTABLE                         R3 K12 [{["tag"] = "anchor-bottom-center auto-y", ["Active"] = True, ["Position"], ["Size"]}]
       23 GETIMPORT                        R4 K15 [UDim2.new]
       25 LOADK                            R5 K16 [0.5]
       26 LOADN                            R6 0
       27 LOADN                            R7 1
       28 LOADN                            R8 -48
       29 CALL                             R4 4 1
       30 SETTABLEKS                       R4 R3 K10 ["Position"]
       32 GETIMPORT                        R4 K18 [UDim2.fromOffset]
       34 LOADN                            R5 480
       35 LOADN                            R6 0
       36 CALL                             R4 2 1
       37 SETTABLEKS                       R4 R3 K11 ["Size"]
       39 DUPTABLE                         R4 K20 [{"Panel"}]
       40 GETUPVAL                         R5 4
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K4 ["createElement"]
       44 GETUPVAL                         R7 5
       45 DUPTABLE                         R8 K22 [{"onClose"}]
       46 SETTABLEKS                       R0 R8 K21 ["onClose"]
       48 CALL                             R6 2 -1
       49 CALL                             R5 -1 1
       50 SETTABLEKS                       R5 R4 K19 ["Panel"]
       52 CALL                             R1 3 -1
       53 RETURN                           R1 -1

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
       52 DUPCLOSURE                       R7 K19 [PROTO_2]
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R6
       59 GETTABLEKS                       R8 R4 K20 ["memo"]
       61 MOVE                             R9 R7
       62 CALL                             R8 1 -1
       63 RETURN                           R8 -1
