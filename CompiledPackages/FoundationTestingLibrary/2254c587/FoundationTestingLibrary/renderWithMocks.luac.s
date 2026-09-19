PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["ScreenGui"]
        4 LOADNIL                          R3
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["createElement"]
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R6 R6 K2 ["join"]
       12 GETUPVAL                         R7 3
       13 GETUPVAL                         R8 4
       14 CALL                             R6 2 1
       15 GETTABLEKS                       R7 R0 K3 ["children"]
       17 CALL                             R4 3 -1
       18 CALL                             R1 -1 -1
       19 RETURN                           R1 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R0
        6 RETURN                           R1 1

PROTO_2:
        0 JUMPIFEQKNIL                     R1 ; [+7]
        2 GETTABLEKS                       R2 R1 K0 ["wrapperProps"]
        4 JUMPIF                           R2 ; [+5]
        5 NEWTABLE                         R2 0 0
        7 JUMP                             ; [+2]
        8 NEWTABLE                         R2 0 0
       10 JUMPIFEQKNIL                     R1 ; [+7]
       12 GETTABLEKS                       R3 R1 K1 ["renderProps"]
       14 JUMPIF                           R3 ; [+5]
       15 NEWTABLE                         R3 0 0
       17 JUMP                             ; [+2]
       18 NEWTABLE                         R3 0 0
       20 GETUPVAL                         R4 0
       21 MOVE                             R5 R0
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R6 R6 K2 ["join"]
       25 DUPTABLE                         R7 K5 [{"container", "wrapper"}]
       26 GETUPVAL                         R8 2
       27 SETTABLEKS                       R8 R7 K3 ["container"]
       29 GETGLOBAL                        R8 K6 ["WrapperFactory"]
       31 MOVE                             R9 R2
       32 CALL                             R8 1 1
       33 SETTABLEKS                       R8 R7 K4 ["wrapper"]
       35 MOVE                             R8 R3
       36 CALL                             R6 2 -1
       37 CALL                             R4 -1 -1
       38 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FoundationTestingLibrary"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [game]
       11 LOADK                            R4 K7 ["CoreGui"]
       12 NAMECALL                         R2 R2 K8 ["GetService"]
       14 CALL                             R2 2 1
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R1 K11 ["Dash"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R1 K12 ["Foundation"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R1 K13 ["React"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R7 R1 K14 ["ReactTestingLibrary"]
       34 CALL                             R6 1 1
       35 GETTABLEKS                       R7 R6 K15 ["render"]
       37 GETTABLEKS                       R8 R4 K16 ["Enums"]
       39 GETTABLEKS                       R8 R8 K17 ["Theme"]
       41 GETTABLEKS                       R9 R4 K18 ["FoundationProvider"]
       43 DUPTABLE                         R10 K20 [{"theme"}]
       44 GETTABLEKS                       R11 R8 K21 ["Dark"]
       46 SETTABLEKS                       R11 R10 K19 ["theme"]
       48 DUPCLOSURE                       R11 K22 [PROTO_1]
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R9
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R10
       53 SETGLOBAL                        R11 K23 ["WrapperFactory"]
       55 DUPCLOSURE                       R11 K24 [PROTO_2]
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R2
       59 SETGLOBAL                        R11 K25 ["renderWithMocks"]
       61 GETGLOBAL                        R11 K25 ["renderWithMocks"]
       63 RETURN                           R11 1
