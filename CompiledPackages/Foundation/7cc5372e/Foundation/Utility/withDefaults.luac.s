PROTO_0:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+7]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K3 ["isBinding"]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 1
       13 NOT                              R1 R2
       14 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 MOVE                             R3 R1
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 LOADB                            R8 0
        9 FASTCALL1                        TYPE R7 ; [+3]
       10 MOVE                             R10 R7
       11 GETIMPORT                        R9 K4 [type]
       13 CALL                             R9 1 1
       14 JUMPIFNOTEQKS                    R9 K0 ["table"] ; [+7]
       16 GETUPVAL                         R10 0
       17 GETTABLEKS                       R9 R10 K5 ["isBinding"]
       19 MOVE                             R10 R7
       20 CALL                             R9 1 1
       21 NOT                              R8 R9
       22 JUMPIFNOT                        R8 ; [+22]
       23 GETTABLE                         R9 R2 R6
       24 LOADB                            R8 0
       25 FASTCALL1                        TYPE R9 ; [+3]
       26 MOVE                             R11 R9
       27 GETIMPORT                        R10 K4 [type]
       29 CALL                             R10 1 1
       30 JUMPIFNOTEQKS                    R10 K0 ["table"] ; [+7]
       32 GETUPVAL                         R11 0
       33 GETTABLEKS                       R10 R11 K5 ["isBinding"]
       35 MOVE                             R11 R9
       36 CALL                             R10 1 1
       37 NOT                              R8 R10
       38 JUMPIFNOT                        R8 ; [+6]
       39 GETUPVAL                         R8 1
       40 GETTABLE                         R9 R2 R6
       41 MOVE                             R10 R7
       42 CALL                             R8 2 1
       43 SETTABLE                         R8 R2 R6
       44 JUMP                             ; [+1]
       45 SETTABLE                         R7 R2 R6
       46 FORGLOOP                         R3 2 ; [-39]
       48 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 FASTCALL1                        TYPE R0 ; [+3]
        3 MOVE                             R4 R0
        4 GETIMPORT                        R3 K1 [type]
        6 CALL                             R3 1 1
        7 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+16]
        9 FASTCALL1                        TYPE R1 ; [+3]
       10 MOVE                             R4 R1
       11 GETIMPORT                        R3 K1 [type]
       13 CALL                             R3 1 1
       14 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+9]
       16 MOVE                             R3 R1
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 FORGPREP                         R3
       20 GETTABLE                         R8 R0 R6
       21 SETTABLE                         R8 R2 R6
       22 FORGLOOP                         R3 2 ; [-3]
       24 GETUPVAL                         R3 0
       25 MOVE                             R4 R1
       26 MOVE                             R5 R2
       27 CALL                             R3 2 1
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R5 R6 K3 ["FoundationMigrateCryoToDash"]
       31 JUMPIFNOT                        R5 ; [+7]
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R4 R5 K4 ["union"]
       35 MOVE                             R5 R0
       36 MOVE                             R6 R3
       37 CALL                             R4 2 1
       38 RETURN                           R4 1
       39 GETUPVAL                         R6 3
       40 GETTABLEKS                       R5 R6 K5 ["Dictionary"]
       42 GETTABLEKS                       R4 R5 K4 ["union"]
       44 MOVE                             R5 R0
       45 MOVE                             R6 R3
       46 CALL                             R4 2 1
       47 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Cryo"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactIs"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R7 R0 K10 ["Utility"]
       28 GETTABLEKS                       R6 R7 K11 ["Flags"]
       30 CALL                             R5 1 1
       31 DUPCLOSURE                       R6 K12 [PROTO_0]
       32 CAPTURE                          VAL R4
       33 DUPCLOSURE                       R7 K13 [PROTO_1]
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R7
       36 DUPCLOSURE                       R8 K14 [PROTO_2]
       37 CAPTURE                          VAL R7
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R2
       41 RETURN                           R8 1
