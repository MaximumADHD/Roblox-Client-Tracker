PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 NEWTABLE                         R0 0 0
        4 RETURN                           R0 1
        5 NEWTABLE                         R0 0 0
        7 GETUPVAL                         R1 0
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 GETTABLEKS                       R6 R5 K0 ["name"]
       13 JUMPIFNOT                        R6 ; [+12]
       14 GETTABLE                         R7 R0 R6
       15 JUMPIF                           R7 ; [+10]
       16 GETTABLEKS                       R8 R5 K1 ["nodeType"]
       18 FASTCALL1                        TYPE R8 ; [+2]
       19 GETIMPORT                        R7 K3 [type]
       21 CALL                             R7 1 1
       22 JUMPIFNOTEQKS                    R7 K4 ["string"] ; [+3]
       24 LOADB                            R7 1
       25 SETTABLE                         R7 R0 R6
       26 FORGLOOP                         R1 2 ; [-16]
       28 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+3]
        3 NEWTABLE                         R0 0 0
        5 RETURN                           R0 1
        6 NEWTABLE                         R0 0 0
        8 GETUPVAL                         R1 1
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 GETUPVAL                         R6 2
       13 JUMPIFEQKNIL                     R6 ; [+8]
       15 GETUPVAL                         R7 2
       16 GETTABLE                         R6 R7 R4
       17 JUMPIFEQKNIL                     R6 ; [+4]
       19 GETUPVAL                         R7 2
       20 GETTABLE                         R6 R7 R4
       21 SETTABLE                         R6 R0 R4
       22 FORGLOOP                         R1 1 ; [-11]
       24 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["useContext"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K1 ["Context"]
       13 CALL                             R1 1 1
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K2 ["useSignalState"]
       17 GETTABLEKS                       R3 R1 K3 ["nodePayloadDispatcher"]
       19 GETTABLEKS                       R3 R3 K4 ["observeMap"]
       21 CALL                             R2 1 1
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K5 ["useMemo"]
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          VAL R2
       27 NEWTABLE                         R5 0 1
       29 MOVE                             R6 R2
       30 SETLIST                          R5 R6 1 [1]
       32 CALL                             R3 2 1
       33 GETUPVAL                         R4 3
       34 GETTABLEKS                       R4 R4 K2 ["useSignalState"]
       36 GETTABLEKS                       R5 R0 K6 ["observeParameters"]
       38 CALL                             R4 1 1
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R5 R5 K5 ["useMemo"]
       42 NEWCLOSURE                       R6 P1
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 NEWTABLE                         R7 0 2
       48 MOVE                             R8 R3
       49 MOVE                             R9 R4
       50 SETLIST                          R7 R8 2 [1]
       52 CALL                             R5 2 -1
       53 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["GraphContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R3 K8 ["ParameterContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["SignalsReact"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Flags"]
       39 GETTABLEKS                       R6 R6 K13 ["getFFlagAnimGraphUIAddInsertExistingParameters"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K14 [PROTO_2]
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R5
       48 RETURN                           R6 1
