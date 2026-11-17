PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["SessionId"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["current"]
        5 LOADNIL                          R3
        6 SETTABLE                         R3 R2 R1
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 0
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 NAMECALL                         R0 R0 K0 ["Connect"]
        8 CALL                             R0 2 1
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          VAL R0
       11 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 LOADK                            R1 K0 [""]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["current"]
        9 GETUPVAL                         R2 0
       10 GETTABLE                         R0 R1 R2
       11 JUMPIF                           R0 ; [+11]
       12 GETUPVAL                         R1 3
       13 LOADB                            R3 0
       14 NAMECALL                         R1 R1 K2 ["GenerateGUID"]
       16 CALL                             R1 2 1
       17 MOVE                             R0 R1
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K1 ["current"]
       21 GETUPVAL                         R2 0
       22 SETTABLE                         R0 R1 R2
       23 GETUPVAL                         R1 1
       24 MOVE                             R2 R0
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 2
        2 MOVE                             R2 R0
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETTABLEKS                       R3 R0 K0 ["SessionId"]
        6 FASTCALL1                        TOSTRING R3 ; [+2]
        7 GETIMPORT                        R2 K2 [tostring]
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K3 ["useState"]
       13 LOADK                            R4 K4 [""]
       14 CALL                             R3 1 2
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K5 ["useRef"]
       18 NEWTABLE                         R6 0 0
       20 CALL                             R5 1 1
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K6 ["useEffect"]
       24 NEWCLOSURE                       R7 P0
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R5
       27 NEWTABLE                         R8 0 1
       29 MOVE                             R9 R1
       30 SETLIST                          R8 R9 1 [1]
       32 CALL                             R6 2 0
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K6 ["useEffect"]
       36 NEWCLOSURE                       R7 P1
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R5
       40 CAPTURE                          UPVAL U2
       41 NEWTABLE                         R8 0 1
       43 MOVE                             R9 R2
       44 SETLIST                          R8 R9 1 [1]
       46 CALL                             R6 2 0
       47 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Src"]
       24 GETTABLEKS                       R4 R4 K13 ["Hooks"]
       26 GETTABLEKS                       R4 R4 K14 ["useFocusedDataModelSession"]
       28 CALL                             R3 1 1
       29 DUPCLOSURE                       R4 K15 [PROTO_4]
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R1
       33 RETURN                           R4 1
