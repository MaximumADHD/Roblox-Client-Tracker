PROTO_0:
        0 LOADK                            R4 K0 ["MaterialVariant"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+3]
        5 GETTABLEKS                       R1 R0 K2 ["Name"]
        7 RETURN                           R1 1
        8 LOADNIL                          R1
        9 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["List"]
        3 GETTABLEKS                       R0 R0 K1 ["join"]
        5 NEWTABLE                         R1 0 1
        7 LOADK                            R2 K2 [""]
        8 SETLIST                          R1 R2 1 [1]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K3 ["Dictionary"]
       13 GETTABLEKS                       R2 R2 K4 ["keys"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K0 ["List"]
       18 GETTABLEKS                       R3 R3 K5 ["toSet"]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K0 ["List"]
       23 GETTABLEKS                       R4 R4 K6 ["filterMap"]
       25 GETUPVAL                         R5 1
       26 NAMECALL                         R5 R5 K7 ["GetChildren"]
       28 CALL                             R5 1 1
       29 DUPCLOSURE                       R6 K8 [PROTO_0]
       30 CALL                             R4 2 -1
       31 CALL                             R3 -1 -1
       32 CALL                             R2 -1 -1
       33 CALL                             R0 -1 -1
       34 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R3 K0 ["MaterialVariant"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 LOADK                            R4 K2 ["Name"]
        8 NAMECALL                         R2 R0 K3 ["GetPropertyChangedSignal"]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R4 1
       12 NAMECALL                         R2 R2 K4 ["Connect"]
       14 CALL                             R2 2 1
       15 SETTABLE                         R2 R1 R0
       16 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R3 K0 ["MaterialVariant"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+1]
        5 JUMP                             ; [+10]
        6 GETUPVAL                         R1 0
        7 LOADK                            R4 K2 ["Name"]
        8 NAMECALL                         R2 R0 K3 ["GetPropertyChangedSignal"]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R4 1
       12 NAMECALL                         R2 R2 K4 ["Connect"]
       14 CALL                             R2 2 1
       15 SETTABLE                         R2 R1 R0
       16 GETUPVAL                         R1 2
       17 GETUPVAL                         R2 3
       18 CALL                             R2 0 -1
       19 CALL                             R1 -1 0
       20 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R3 K0 ["MaterialVariant"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 -1
        9 CALL                             R1 -1 0
       10 GETUPVAL                         R2 2
       11 GETTABLE                         R1 R2 R0
       12 NAMECALL                         R1 R1 K2 ["Disconnect"]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 2
       16 LOADNIL                          R2
       17 SETTABLE                         R2 R1 R0
       18 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 LOADNIL                          R1
       10 LOADNIL                          R2
       11 FORGPREP                         R0
       12 NAMECALL                         R5 R4 K0 ["Disconnect"]
       14 CALL                             R5 1 0
       15 FORGLOOP                         R0 2 ; [-4]
       17 RETURN                           R0 0

PROTO_7:
        0 DUPCLOSURE                       R2 K0 [PROTO_1]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 NEWCLOSURE                       R3 P1
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 NEWTABLE                         R4 0 0
        8 NEWCLOSURE                       R5 P2
        9 CAPTURE                          VAL R4
       10 CAPTURE                          VAL R3
       11 GETUPVAL                         R6 1
       12 NAMECALL                         R6 R6 K1 ["GetChildren"]
       14 CALL                             R6 1 3
       15 FORGPREP                         R6
       16 LOADK                            R13 K2 ["MaterialVariant"]
       17 NAMECALL                         R11 R10 K3 ["IsA"]
       19 CALL                             R11 2 1
       20 JUMPIF                           R11 ; [+1]
       21 JUMP                             ; [+9]
       22 LOADK                            R13 K4 ["Name"]
       23 NAMECALL                         R11 R10 K5 ["GetPropertyChangedSignal"]
       25 CALL                             R11 2 1
       26 MOVE                             R13 R3
       27 NAMECALL                         R11 R11 K6 ["Connect"]
       29 CALL                             R11 2 1
       30 SETTABLE                         R11 R4 R10
       31 FORGLOOP                         R6 2 ; [-16]
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K7 ["ChildAdded"]
       36 NEWCLOSURE                       R8 P3
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R2
       41 NAMECALL                         R6 R6 K6 ["Connect"]
       43 CALL                             R6 2 1
       44 GETUPVAL                         R7 1
       45 GETTABLEKS                       R7 R7 K8 ["ChildRemoved"]
       47 NEWCLOSURE                       R9 P4
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R4
       51 NAMECALL                         R7 R7 K6 ["Connect"]
       53 CALL                             R7 2 1
       54 DUPTABLE                         R8 K11 [{"get", "destroy"}]
       55 SETTABLEKS                       R2 R8 K9 ["get"]
       57 NEWCLOSURE                       R9 P5
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R4
       61 SETTABLEKS                       R9 R8 K10 ["destroy"]
       63 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["MaterialService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Properties"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R1 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["Cryo"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R1 K12 ["RpcTypes"]
       24 CALL                             R4 1 1
       25 DUPCLOSURE                       R5 K13 [PROTO_7]
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R0
       28 RETURN                           R5 1
