PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+29]
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
       19 GETTABLEKS                       R1 R2 K5 ["Dictionary"]
       21 GETTABLEKS                       R0 R1 K6 ["join"]
       23 GETUPVAL                         R1 0
       24 NEWTABLE                         R2 1 0
       26 GETUPVAL                         R3 1
       27 LOADB                            R4 1
       28 SETTABLE                         R4 R2 R3
       29 CALL                             R0 2 1
       30 RETURN                           R0 1
       31 GETUPVAL                         R0 1
       32 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useMemo"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U1
        7 NEWTABLE                         R4 0 2
        9 MOVE                             R5 R0
       10 MOVE                             R6 R1
       11 SETLIST                          R4 R5 2 [1]
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

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
       18 GETTABLEKS                       R4 R1 K9 ["React"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R1 K10 ["Cryo"]
       25 CALL                             R4 1 1
       26 DUPCLOSURE                       R5 K11 [PROTO_1]
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R4
       29 RETURN                           R5 1
