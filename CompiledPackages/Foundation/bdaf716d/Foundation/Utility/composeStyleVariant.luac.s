PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+6]
        7 NEWTABLE                         R1 1 0
        9 LOADB                            R2 1
       10 SETTABLE                         R2 R1 R0
       11 RETURN                           R1 1
       12 RETURN                           R0 1

PROTO_1:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R1 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 1
        4 FASTCALL1                        TYPE R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K1 [type]
        8 CALL                             R2 1 1
        9 JUMPIFEQKS                       R2 K2 ["table"] ; [+8]
       11 FASTCALL1                        TYPE R1 ; [+3]
       12 MOVE                             R3 R1
       13 GETIMPORT                        R2 K1 [type]
       15 CALL                             R2 1 1
       16 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+34]
       18 FASTCALL1                        TYPE R0 ; [+3]
       19 MOVE                             R4 R0
       20 GETIMPORT                        R3 K1 [type]
       22 CALL                             R3 1 1
       23 JUMPIFNOTEQKS                    R3 K3 ["string"] ; [+6]
       25 NEWTABLE                         R2 1 0
       27 LOADB                            R3 1
       28 SETTABLE                         R3 R2 R0
       29 JUMP                             ; [+1]
       30 MOVE                             R2 R0
       31 FASTCALL1                        TYPE R1 ; [+3]
       32 MOVE                             R5 R1
       33 GETIMPORT                        R4 K1 [type]
       35 CALL                             R4 1 1
       36 JUMPIFNOTEQKS                    R4 K3 ["string"] ; [+6]
       38 NEWTABLE                         R3 1 0
       40 LOADB                            R4 1
       41 SETTABLE                         R4 R3 R1
       42 JUMP                             ; [+1]
       43 MOVE                             R3 R1
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R4 R4 K4 ["join"]
       47 MOVE                             R5 R2
       48 MOVE                             R6 R3
       49 CALL                             R4 2 -1
       50 RETURN                           R4 -1
       51 LOADK                            R3 K5 ["%* %*"]
       52 MOVE                             R5 R0
       53 MOVE                             R6 R1
       54 NAMECALL                         R3 R3 K6 ["format"]
       56 CALL                             R3 3 1
       57 MOVE                             R2 R3
       58 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["join"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R4 R0 K1 ["tag"]
        9 GETTABLEKS                       R5 R1 K1 ["tag"]
       11 CALL                             R3 2 1
       12 SETTABLEKS                       R3 R2 K1 ["tag"]
       14 RETURN                           R2 1

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 MOVE                             R1 R0
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 FORGPREP                         R1
        7 GETUPVAL                         R6 0
        8 GETUPVAL                         R9 0
        9 GETTABLE                         R8 R9 R4
       10 JUMPIF                           R8 ; [+2]
       11 NEWTABLE                         R8 0 0
       13 GETUPVAL                         R9 1
       14 GETTABLEKS                       R9 R9 K0 ["join"]
       16 MOVE                             R10 R8
       17 MOVE                             R11 R5
       18 CALL                             R9 2 1
       19 GETUPVAL                         R10 2
       20 GETTABLEKS                       R11 R8 K1 ["tag"]
       22 GETTABLEKS                       R12 R5 K1 ["tag"]
       24 CALL                             R10 2 1
       25 SETTABLEKS                       R10 R9 K1 ["tag"]
       27 MOVE                             R7 R9
       28 SETTABLE                         R7 R6 R4
       29 FORGLOOP                         R1 2 ; [-23]
       31 RETURN                           R0 0

PROTO_4:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["copy"]
        4 MOVE                             R2 R0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["forEachArgs"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 GETVARARGS                       R4 -1
       14 CALL                             R2 -1 0
       15 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Types"]
       20 CALL                             R3 1 1
       21 DUPCLOSURE                       R4 K10 [PROTO_0]
       22 DUPCLOSURE                       R5 K11 [PROTO_1]
       23 CAPTURE                          VAL R2
       24 DUPCLOSURE                       R6 K12 [PROTO_2]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R5
       27 DUPCLOSURE                       R7 K13 [PROTO_4]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R5
       30 SETGLOBAL                        R7 K14 ["composeStyleVariant"]
       32 GETGLOBAL                        R7 K14 ["composeStyleVariant"]
       34 RETURN                           R7 1
