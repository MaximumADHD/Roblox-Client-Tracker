PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R1 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETIMPORT                        R1 K2 [ipairs]
        9 GETUPVAL                         R2 1
       10 CALL                             R1 1 3
       11 FORGPREP_INEXT                   R1
       12 GETTABLEKS                       R7 R5 K3 ["childNotSibling"]
       14 JUMPIFNOT                        R7 ; [+2]
       15 MOVE                             R6 R0
       16 JUMP                             ; [+2]
       17 GETTABLEKS                       R6 R0 K4 ["Parent"]
       19 JUMPIFNOT                        R6 ; [+31]
       20 GETTABLEKS                       R9 R5 K5 ["name"]
       22 NAMECALL                         R7 R6 K6 ["FindFirstChild"]
       24 CALL                             R7 2 1
       25 JUMPIFNOT                        R7 ; [+25]
       26 GETTABLEKS                       R10 R5 K7 ["type"]
       28 NAMECALL                         R8 R7 K8 ["IsA"]
       30 CALL                             R8 2 1
       31 JUMPIFNOT                        R8 ; [+19]
       32 GETTABLEKS                       R8 R5 K9 ["delete"]
       34 JUMPIFNOT                        R8 ; [+4]
       35 NAMECALL                         R8 R7 K10 ["Destroy"]
       37 CALL                             R8 1 0
       38 JUMP                             ; [+12]
       39 GETTABLEKS                       R8 R5 K11 ["modifyProps"]
       41 JUMPIFNOT                        R8 ; [+9]
       42 GETIMPORT                        R8 K13 [pairs]
       44 GETTABLEKS                       R9 R5 K11 ["modifyProps"]
       46 CALL                             R8 1 3
       47 FORGPREP_NEXT                    R8
       48 SETTABLE                         R12 R7 R11
       49 FORGLOOP                         R8 2 ; [-2]
       51 FORGLOOP                         R1 2 [inext] ; [-40]
       53 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useEffect"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U1
       11 NEWTABLE                         R4 0 0
       13 CALL                             R2 2 0
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K2 ["createElement"]
       17 GETUPVAL                         R3 2
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K3 ["Dictionary"]
       21 GETTABLEKS                       R4 R4 K4 ["join"]
       23 MOVE                             R5 R0
       24 DUPTABLE                         R6 K6 [{"ref"}]
       25 SETTABLEKS                       R1 R6 K5 ["ref"]
       27 CALL                             R4 2 -1
       28 CALL                             R2 -1 -1
       29 RETURN                           R2 -1

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K8 [PROTO_2]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 SETGLOBAL                        R3 K9 ["modifiedType"]
       28 GETGLOBAL                        R3 K9 ["modifiedType"]
       30 RETURN                           R3 1
