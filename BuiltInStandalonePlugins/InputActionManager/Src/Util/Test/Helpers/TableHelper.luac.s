PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R5 K0 ["action-%*"]
        3 MOVE                             R7 R1
        4 NAMECALL                         R5 R5 K1 ["format"]
        6 CALL                             R5 2 1
        7 MOVE                             R4 R5
        8 CALL                             R2 2 1
        9 LOADK                            R6 K2 ["Action '$%*' not found"]
       10 MOVE                             R8 R1
       11 NAMECALL                         R6 R6 K1 ["format"]
       13 CALL                             R6 2 1
       14 MOVE                             R5 R6
       15 FASTCALL2                        ASSERT R2 R5 ; [+4]
       17 MOVE                             R4 R2
       18 GETIMPORT                        R3 K4 [assert]
       20 CALL                             R3 2 0
       21 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R5 K0 ["keycode-binding-%*"]
        3 MOVE                             R7 R1
        4 NAMECALL                         R5 R5 K1 ["format"]
        6 CALL                             R5 2 1
        7 MOVE                             R4 R5
        8 CALL                             R2 2 1
        9 LOADK                            R6 K2 ["KeycodeBinding at index %* not found"]
       10 MOVE                             R8 R1
       11 NAMECALL                         R6 R6 K1 ["format"]
       13 CALL                             R6 2 1
       14 MOVE                             R5 R6
       15 FASTCALL2                        ASSERT R2 R5 ; [+4]
       17 MOVE                             R4 R2
       18 GETIMPORT                        R3 K4 [assert]
       20 CALL                             R3 2 0
       21 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R5 K0 ["composite-binding-%*"]
        3 MOVE                             R7 R1
        4 NAMECALL                         R5 R5 K1 ["format"]
        6 CALL                             R5 2 1
        7 MOVE                             R4 R5
        8 CALL                             R2 2 1
        9 LOADK                            R6 K2 ["CompositeBinding at index %* not found"]
       10 MOVE                             R8 R1
       11 NAMECALL                         R6 R6 K1 ["format"]
       13 CALL                             R6 2 1
       14 MOVE                             R5 R6
       15 FASTCALL2                        ASSERT R2 R5 ; [+4]
       17 MOVE                             R4 R2
       18 GETIMPORT                        R3 K4 [assert]
       20 CALL                             R3 2 0
       21 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 LOADK                            R6 K0 ["%*-%*-cell"]
        3 MOVE                             R8 R1
        4 MOVE                             R9 R2
        5 NAMECALL                         R6 R6 K1 ["format"]
        7 CALL                             R6 3 1
        8 MOVE                             R5 R6
        9 CALL                             R3 2 1
       10 LOADK                            R7 K2 ["Property cell '%*' (%*) not found"]
       11 MOVE                             R9 R1
       12 MOVE                             R10 R2
       13 NAMECALL                         R7 R7 K1 ["format"]
       15 CALL                             R7 3 1
       16 MOVE                             R6 R7
       17 FASTCALL2                        ASSERT R3 R6 ; [+4]
       19 MOVE                             R5 R3
       20 GETIMPORT                        R4 K4 [assert]
       22 CALL                             R4 2 0
       23 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dev"]
       20 GETTABLEKS                       R3 R3 K9 ["ReactTestingLibrary"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Types"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K12 ["queryByTestId"]
       32 NEWTABLE                         R5 4 0
       34 DUPCLOSURE                       R6 K13 [PROTO_0]
       35 CAPTURE                          VAL R4
       36 SETTABLEKS                       R6 R5 K14 ["GetAction"]
       38 DUPCLOSURE                       R6 K15 [PROTO_1]
       39 CAPTURE                          VAL R4
       40 SETTABLEKS                       R6 R5 K16 ["GetKeycode"]
       42 DUPCLOSURE                       R6 K17 [PROTO_2]
       43 CAPTURE                          VAL R4
       44 SETTABLEKS                       R6 R5 K18 ["GetComposite"]
       46 DUPCLOSURE                       R6 K19 [PROTO_3]
       47 CAPTURE                          VAL R4
       48 SETTABLEKS                       R6 R5 K20 ["GetPropertyCell"]
       50 RETURN                           R5 1
