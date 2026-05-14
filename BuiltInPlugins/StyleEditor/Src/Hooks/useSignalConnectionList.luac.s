PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["current"]
        3 FASTCALL1                        TYPEOF R4 ; [+2]
        4 GETIMPORT                        R3 K2 [typeof]
        6 CALL                             R3 1 1
        7 JUMPIFEQKS                       R3 K3 ["table"] ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       13 LOADK                            R3 K4 ["expected listRef to contain list of connections"]
       14 GETIMPORT                        R1 K6 [assert]
       16 CALL                             R1 2 0
       17 JUMPIFNOT                        R0 ; [+9]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K0 ["current"]
       21 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       23 MOVE                             R3 R0
       24 GETIMPORT                        R1 K8 [table.insert]
       26 CALL                             R1 2 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+13]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 FASTCALL1                        TYPE R1 ; [+2]
       10 GETIMPORT                        R0 K2 [type]
       12 CALL                             R0 1 1
       13 JUMPIFEQKS                       R0 K3 ["table"] ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K0 ["current"]
       19 FASTCALL1                        TYPE R3 ; [+2]
       20 GETIMPORT                        R2 K2 [type]
       22 CALL                             R2 1 1
       23 JUMPIFEQKS                       R2 K3 ["table"] ; [+2]
       25 LOADB                            R1 0 +1
       26 LOADB                            R1 1
       27 FASTCALL2K                       ASSERT R1 K4 ; [+4]
       29 LOADK                            R2 K4 ["expecting table of connections"]
       30 GETIMPORT                        R0 K6 [assert]
       32 CALL                             R0 2 0
       33 GETUPVAL                         R0 0
       34 GETTABLEKS                       R0 R0 K0 ["current"]
       36 LOADNIL                          R1
       37 LOADNIL                          R2
       38 FORGPREP                         R0
       39 JUMPIFNOT                        R4 ; [+3]
       40 NAMECALL                         R5 R4 K7 ["Disconnect"]
       42 CALL                             R5 1 0
       43 FORGLOOP                         R0 2 ; [-5]
       45 GETUPVAL                         R0 0
       46 NEWTABLE                         R1 0 0
       48 SETTABLEKS                       R1 R0 K0 ["current"]
       50 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 1
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          VAL R0
        6 GETUPVAL                         R2 1
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          VAL R0
        9 NEWTABLE                         R4 0 0
       11 CALL                             R2 2 0
       12 DUPTABLE                         R2 K1 [{"add"}]
       13 SETTABLEKS                       R1 R2 K0 ["add"]
       15 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["React"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["useEffect"]
       25 GETTABLEKS                       R4 R2 K9 ["useRef"]
       27 GETIMPORT                        R5 K4 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Src"]
       31 GETTABLEKS                       R6 R6 K11 ["Types"]
       33 CALL                             R5 1 1
       34 DUPCLOSURE                       R6 K12 [PROTO_3]
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R3
       37 RETURN                           R6 1
