PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["action-%*"]
        3 MOVE                             R6 R1
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 2 1
        7 LOADK                            R5 K2 ["Action '%*' not found"]
        8 MOVE                             R7 R1
        9 NAMECALL                         R5 R5 K1 ["format"]
       11 CALL                             R5 2 1
       12 CALL                             R2 3 -1
       13 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["keycode-binding-%*"]
        3 MOVE                             R6 R1
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 2 1
        7 LOADK                            R5 K2 ["KeycodeBinding at index %* not found"]
        8 MOVE                             R7 R1
        9 NAMECALL                         R5 R5 K1 ["format"]
       11 CALL                             R5 2 1
       12 CALL                             R2 3 -1
       13 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["composite-binding-%*"]
        3 MOVE                             R6 R1
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 2 1
        7 LOADK                            R5 K2 ["CompositeBinding at index %* not found"]
        8 MOVE                             R7 R1
        9 NAMECALL                         R5 R5 K1 ["format"]
       11 CALL                             R5 2 1
       12 CALL                             R2 3 -1
       13 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 LOADK                            R5 K0 ["%*-%*-cell"]
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 NAMECALL                         R5 R5 K1 ["format"]
        7 CALL                             R5 3 1
        8 LOADK                            R6 K2 ["Property cell '%*' (%*) not found"]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R2
       11 NAMECALL                         R6 R6 K1 ["format"]
       13 CALL                             R6 3 1
       14 CALL                             R3 3 -1
       15 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["summary-%*"]
        3 MOVE                             R6 R1
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 2 1
        7 LOADK                            R5 K2 ["Summary '%*' not found"]
        8 MOVE                             R7 R1
        9 NAMECALL                         R5 R5 K1 ["format"]
       11 CALL                             R5 2 1
       12 CALL                             R2 3 1
       13 LOADK                            R5 K3 ["TextLabel"]
       14 NAMECALL                         R3 R2 K4 ["IsA"]
       16 CALL                             R3 2 1
       17 JUMPIFNOT                        R3 ; [+1]
       18 RETURN                           R2 1
       19 LOADK                            R5 K3 ["TextLabel"]
       20 LOADB                            R6 1
       21 NAMECALL                         R3 R2 K5 ["FindFirstChildWhichIsA"]
       23 CALL                             R3 3 1
       24 LOADK                            R6 K6 ["Summary text for '%*' not found"]
       25 MOVE                             R8 R1
       26 NAMECALL                         R6 R6 K1 ["format"]
       28 CALL                             R6 2 1
       29 FASTCALL2                        ASSERT R3 R6 ; [+4]
       31 MOVE                             R5 R3
       32 GETIMPORT                        R4 K8 [assert]
       34 CALL                             R4 2 0
       35 RETURN                           R3 1

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
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K10 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["TestHelper"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["queryByTestId"]
       32 NEWTABLE                         R5 8 0
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
       50 DUPCLOSURE                       R6 K21 [PROTO_4]
       51 CAPTURE                          VAL R4
       52 SETTABLEKS                       R6 R5 K22 ["GetSummary"]
       54 RETURN                           R5 1
