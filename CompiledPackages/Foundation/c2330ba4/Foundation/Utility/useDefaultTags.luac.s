PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+44]
        3 GETUPVAL                         R2 0
        4 FASTCALL1                        TYPE R2 ; [+2]
        5 GETIMPORT                        R1 K1 [type]
        7 CALL                             R1 1 1
        8 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+9]
       10 LOADK                            R1 K3 ["%* %*"]
       11 GETUPVAL                         R3 1
       12 GETUPVAL                         R4 0
       13 NAMECALL                         R1 R1 K4 ["format"]
       15 CALL                             R1 3 1
       16 MOVE                             R0 R1
       17 RETURN                           R0 1
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R1 R2 K5 ["FoundationMigrateCryoToDash"]
       21 JUMPIFNOT                        R1 ; [+11]
       22 GETUPVAL                         R1 3
       23 GETTABLEKS                       R0 R1 K6 ["join"]
       25 GETUPVAL                         R1 0
       26 NEWTABLE                         R2 1 0
       28 GETUPVAL                         R3 1
       29 LOADB                            R4 1
       30 SETTABLE                         R4 R2 R3
       31 CALL                             R0 2 1
       32 RETURN                           R0 1
       33 GETUPVAL                         R2 4
       34 GETTABLEKS                       R1 R2 K7 ["Dictionary"]
       36 GETTABLEKS                       R0 R1 K6 ["join"]
       38 GETUPVAL                         R1 0
       39 NEWTABLE                         R2 1 0
       41 GETUPVAL                         R3 1
       42 LOADB                            R4 1
       43 SETTABLE                         R4 R2 R3
       44 CALL                             R0 2 1
       45 RETURN                           R0 1
       46 GETUPVAL                         R0 1
       47 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useMemo"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 NEWTABLE                         R4 0 2
       11 MOVE                             R5 R0
       12 MOVE                             R6 R1
       13 SETLIST                          R4 R5 2 [1]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R4 K8 ["Types"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R5 R0 K9 ["Utility"]
       20 GETTABLEKS                       R4 R5 K10 ["Flags"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K11 ["React"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R1 K12 ["Cryo"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R1 K13 ["Dash"]
       37 CALL                             R6 1 1
       38 DUPCLOSURE                       R7 K14 [PROTO_1]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R5
       43 RETURN                           R7 1
