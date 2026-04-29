PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["function"] ; [+9]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K3 ["fn"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 2
       12 MOVE                             R3 R2
       13 MOVE                             R4 R1
       14 RETURN                           R3 2
       15 FASTCALL1                        TYPE R0 ; [+3]
       16 MOVE                             R2 R0
       17 GETIMPORT                        R1 K1 [type]
       19 CALL                             R1 1 1
       20 JUMPIFNOTEQKS                    R1 K4 ["table"] ; [+37]
       22 GETTABLEKS                       R1 R0 K5 ["render"]
       24 JUMPIFEQKNIL                     R1 ; [+16]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R1 R2 K3 ["fn"]
       29 GETTABLEKS                       R2 R0 K5 ["render"]
       31 CALL                             R1 1 2
       32 GETIMPORT                        R3 K7 [table.clone]
       34 MOVE                             R4 R0
       35 CALL                             R3 1 1
       36 SETTABLEKS                       R2 R3 K5 ["render"]
       38 MOVE                             R4 R3
       39 MOVE                             R5 R1
       40 RETURN                           R4 2
       41 GETTABLEKS                       R1 R0 K0 ["type"]
       43 JUMPIFEQKNIL                     R1 ; [+14]
       45 GETUPVAL                         R1 1
       46 GETTABLEKS                       R2 R0 K0 ["type"]
       48 CALL                             R1 1 2
       49 GETIMPORT                        R3 K7 [table.clone]
       51 MOVE                             R4 R0
       52 CALL                             R3 1 1
       53 SETTABLEKS                       R1 R3 K0 ["type"]
       55 MOVE                             R4 R3
       56 MOVE                             R5 R2
       57 RETURN                           R4 2
       58 MOVE                             R1 R0
       59 LOADNIL                          R2
       60 RETURN                           R1 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FoundationTestingLibrary"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactIs"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["isBinding"]
       21 CALL                             R4 0 0
       22 GETIMPORT                        R4 K6 [require]
       24 GETTABLEKS                       R5 R1 K10 ["JestGlobals"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R5 R4 K11 ["jest"]
       29 DUPCLOSURE                       R6 K12 [PROTO_0]
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R6
       32 RETURN                           R6 1
