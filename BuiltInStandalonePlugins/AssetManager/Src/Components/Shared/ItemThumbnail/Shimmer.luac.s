PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 1
        2 JUMPIFNOTLT                      R0 R1 ; [+2]
        4 RETURN                           R0 0
        5 GETIMPORT                        R1 K2 [os.clock]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 1
        9 SUB                              R0 R1 R2
       10 MODK                             R2 R0 K3 [2]
       11 DIVK                             R1 R2 K3 [2]
       12 MULK                             R3 R1 K3 [2]
       13 SUBK                             R2 R3 K4 [1]
       14 GETUPVAL                         R3 2
       15 GETIMPORT                        R4 K7 [Vector2.new]
       17 MOVE                             R5 R2
       18 MOVE                             R6 R2
       19 CALL                             R4 2 -1
       20 CALL                             R3 -1 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 SUBK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 NEWCLOSURE                       R0 P0
        4 CAPTURE                          UPVAL U0
        5 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 NEWTABLE                         R3 0 0
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K0 ["createElement"]
        9 LOADK                            R2 K1 ["Frame"]
       10 NEWTABLE                         R3 1 0
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K2 ["Tag"]
       15 LOADK                            R5 K3 ["X-Fill"]
       16 SETTABLE                         R5 R3 R4
       17 DUPTABLE                         R4 K5 [{"Shimmer"}]
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K0 ["createElement"]
       21 LOADK                            R6 K6 ["UIGradient"]
       22 DUPTABLE                         R7 K10 [{"Offset", "Rotation", "Transparency"}]
       23 GETUPVAL                         R8 3
       24 SETTABLEKS                       R8 R7 K7 ["Offset"]
       26 GETTABLEKS                       R8 R0 K8 ["Rotation"]
       28 SETTABLEKS                       R8 R7 K8 ["Rotation"]
       30 GETTABLEKS                       R8 R0 K9 ["Transparency"]
       32 SETTABLEKS                       R8 R7 K9 ["Transparency"]
       34 CALL                             R5 2 1
       35 SETTABLEKS                       R5 R4 K4 ["Shimmer"]
       37 CALL                             R1 3 -1
       38 RETURN                           R1 -1

PROTO_4:
        0 GETIMPORT                        R1 K3 [os.clock]
        2 CALL                             R1 0 1
        3 SUBK                             R0 R1 K0 [2]
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useEffect"]
       16 GETIMPORT                        R3 K10 [game]
       18 LOADK                            R5 K11 ["RunService"]
       19 NAMECALL                         R3 R3 K12 ["GetService"]
       21 CALL                             R3 2 1
       22 GETIMPORT                        R4 K15 [os.clock]
       24 CALL                             R4 0 1
       25 LOADN                            R5 0
       26 GETTABLEKS                       R6 R1 K16 ["createBinding"]
       28 GETIMPORT                        R7 K19 [Vector2.new]
       30 LOADN                            R8 255
       31 LOADN                            R9 255
       32 CALL                             R7 2 -1
       33 CALL                             R6 -1 2
       34 GETTABLEKS                       R8 R3 K20 ["RenderStepped"]
       36 NEWCLOSURE                       R10 P0
       37 CAPTURE                          REF R5
       38 CAPTURE                          REF R4
       39 CAPTURE                          VAL R7
       40 NAMECALL                         R8 R8 K21 ["Connect"]
       42 CALL                             R8 2 0
       43 NEWTABLE                         R8 2 0
       45 NEWCLOSURE                       R9 P1
       46 CAPTURE                          VAL R2
       47 CAPTURE                          REF R5
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R6
       50 SETTABLEKS                       R9 R8 K22 ["Component"]
       52 NEWCLOSURE                       R9 P2
       53 CAPTURE                          REF R4
       54 SETTABLEKS                       R9 R8 K23 ["restartAnimation"]
       56 CLOSEUPVALS                      R4
       57 RETURN                           R8 1
