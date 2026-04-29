PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 LOADK                            R2 K1 ["ScreenGui"]
        4 LOADNIL                          R3
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K0 ["createElement"]
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R8 2
       10 GETTABLEKS                       R7 R8 K2 ["Dictionary"]
       12 GETTABLEKS                       R6 R7 K3 ["join"]
       14 GETUPVAL                         R7 3
       15 GETUPVAL                         R8 4
       16 CALL                             R6 2 1
       17 GETTABLEKS                       R7 R0 K4 ["children"]
       19 CALL                             R4 3 -1
       20 CALL                             R1 -1 -1
       21 RETURN                           R1 -1

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
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R7 R8 K2 ["Dictionary"]
       25 GETTABLEKS                       R6 R7 K3 ["join"]
       27 DUPTABLE                         R7 K6 [{"container", "wrapper"}]
       28 GETUPVAL                         R8 2
       29 SETTABLEKS                       R8 R7 K4 ["container"]
       31 GETGLOBAL                        R8 K7 ["WrapperFactory"]
       33 MOVE                             R9 R2
       34 CALL                             R8 1 1
       35 SETTABLEKS                       R8 R7 K5 ["wrapper"]
       37 MOVE                             R8 R3
       38 CALL                             R6 2 -1
       39 CALL                             R4 -1 -1
       40 RETURN                           R4 -1

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
       17 GETTABLEKS                       R4 R1 K11 ["React"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R1 K12 ["Cryo"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R1 K13 ["Foundation"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R7 R1 K14 ["ReactTestingLibrary"]
       34 CALL                             R6 1 1
       35 GETTABLEKS                       R7 R6 K15 ["render"]
       37 GETTABLEKS                       R9 R5 K16 ["Enums"]
       39 GETTABLEKS                       R8 R9 K17 ["Theme"]
       41 GETTABLEKS                       R9 R5 K18 ["FoundationProvider"]
       43 DUPTABLE                         R10 K20 [{"theme"}]
       44 GETTABLEKS                       R11 R8 K21 ["Dark"]
       46 SETTABLEKS                       R11 R10 K19 ["theme"]
       48 DUPCLOSURE                       R11 K22 [PROTO_1]
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R9
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R10
       53 SETGLOBAL                        R11 K23 ["WrapperFactory"]
       55 DUPCLOSURE                       R11 K24 [PROTO_2]
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R2
       59 SETGLOBAL                        R11 K25 ["renderWithMocks"]
       61 GETGLOBAL                        R11 K25 ["renderWithMocks"]
       63 RETURN                           R11 1
