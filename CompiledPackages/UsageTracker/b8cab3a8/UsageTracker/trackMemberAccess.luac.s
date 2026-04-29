PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIF                           R2 ; [+8]
        3 GETUPVAL                         R4 1
        4 FASTCALL2                        RAWGET R4 R1 ; [+4]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R3 K1 [rawget]
        9 CALL                             R3 2 1
       10 RETURN                           R3 1
       11 GETUPVAL                         R4 2
       12 LOADK                            R5 K2 ["."]
       13 MOVE                             R6 R1
       14 CONCAT                           R3 R4 R6
       15 GETIMPORT                        R4 K5 [debug.info]
       17 LOADN                            R5 2
       18 LOADK                            R6 K6 ["sl"]
       19 CALL                             R4 2 2
       20 GETUPVAL                         R6 3
       21 GETUPVAL                         R9 4
       22 GETTABLEKS                       R8 R9 K7 ["List"]
       24 GETTABLEKS                       R7 R8 K8 ["join"]
       26 GETUPVAL                         R9 3
       27 GETTABLE                         R8 R9 R3
       28 NEWTABLE                         R9 0 1
       30 DUPTABLE                         R10 K11 [{"dmPath", "lineNumber"}]
       31 SETTABLEKS                       R4 R10 K9 ["dmPath"]
       33 SETTABLEKS                       R5 R10 K10 ["lineNumber"]
       35 SETLIST                          R9 R10 1 [1]
       37 CALL                             R7 2 1
       38 SETTABLE                         R7 R6 R3
       39 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R4 R1
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 JUMPIFEQKS                       R7 K0 ["__index"] ; [+42]
       10 FASTCALL1                        TYPEOF R7 ; [+3]
       11 MOVE                             R10 R7
       12 GETIMPORT                        R9 K2 [typeof]
       14 CALL                             R9 1 1
       15 JUMPIFNOTEQKS                    R9 K3 ["string"] ; [+35]
       17 MOVE                             R10 R0
       18 LOADK                            R11 K4 ["."]
       19 MOVE                             R12 R7
       20 CONCAT                           R9 R10 R12
       21 GETUPVAL                         R10 0
       22 MOVE                             R11 R8
       23 CALL                             R10 1 1
       24 JUMPIFNOT                        R10 ; [+6]
       25 GETUPVAL                         R10 1
       26 NEWTABLE                         R11 0 0
       28 SETTABLE                         R11 R10 R9
       29 SETTABLE                         R8 R2 R7
       30 JUMP                             ; [+17]
       31 FASTCALL1                        TYPEOF R8 ; [+3]
       32 MOVE                             R11 R8
       33 GETIMPORT                        R10 K2 [typeof]
       35 CALL                             R10 1 1
       36 JUMPIFNOTEQKS                    R10 K5 ["table"] ; [+10]
       38 GETUPVAL                         R11 2
       39 GETTABLE                         R10 R11 R8
       40 JUMPIF                           R10 ; [+6]
       41 GETUPVAL                         R10 3
       42 MOVE                             R11 R9
       43 MOVE                             R12 R8
       44 CALL                             R10 2 1
       45 SETTABLE                         R10 R3 R7
       46 JUMP                             ; [+1]
       47 SETTABLE                         R8 R3 R7
       48 GETUPVAL                         R10 2
       49 LOADB                            R11 1
       50 SETTABLE                         R11 R10 R8
       51 FORGLOOP                         R4 2 ; [-44]
       53 DUPTABLE                         R6 K6 [{"__index"}]
       54 NEWCLOSURE                       R7 P0
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R0
       58 CAPTURE                          UPVAL U1
       59 CAPTURE                          UPVAL U4
       60 SETTABLEKS                       R7 R6 K0 ["__index"]
       62 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       64 MOVE                             R5 R3
       65 GETIMPORT                        R4 K8 [setmetatable]
       67 CALL                             R4 2 1
       68 RETURN                           R4 1

PROTO_2:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 MOVE                             R5 R2
        5 JUMPIF                           R5 ; [+1]
        6 GETUPVAL                         R5 0
        7 NEWCLOSURE                       R6 P0
        8 CAPTURE                          VAL R5
        9 CAPTURE                          VAL R3
       10 CAPTURE                          VAL R4
       11 CAPTURE                          VAL R6
       12 CAPTURE                          UPVAL U1
       13 MOVE                             R7 R6
       14 MOVE                             R8 R0
       15 MOVE                             R9 R1
       16 CALL                             R7 2 1
       17 GETUPVAL                         R9 2
       18 GETTABLEKS                       R8 R9 K0 ["UsageGraphKey"]
       20 SETTABLE                         R3 R7 R8
       21 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UsageTracker"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K6 [require]
       16 GETIMPORT                        R5 K1 [script]
       18 GETTABLEKS                       R4 R5 K4 ["Parent"]
       20 GETTABLEKS                       R3 R4 K8 ["isReactComponent"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETIMPORT                        R6 K1 [script]
       27 GETTABLEKS                       R5 R6 K4 ["Parent"]
       29 GETTABLEKS                       R4 R5 K9 ["UsageGraph"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K10 [PROTO_2]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R3
       36 RETURN                           R4 1
