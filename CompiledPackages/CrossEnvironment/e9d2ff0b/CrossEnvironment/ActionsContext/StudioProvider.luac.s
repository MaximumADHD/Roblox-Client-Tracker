PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["plugin"]
        3 LOADK                            R2 K1 ["Actions"]
        4 NAMECALL                         R0 R0 K2 ["GetPluginComponent"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K2 [{"enabled", "text"}]
        2 GETTABLEKS                       R3 R0 K3 ["Enabled"]
        4 SETTABLEKS                       R3 R2 K0 ["enabled"]
        6 GETTABLEKS                       R3 R0 K4 ["Text"]
        8 SETTABLEKS                       R3 R2 K1 ["text"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R3 0 1
        3 GETUPVAL                         R4 1
        4 SETLIST                          R3 R4 1 [1]
        6 NAMECALL                         R1 R1 K0 ["GetAsync"]
        8 CALL                             R1 2 1
        9 GETTABLEN                        R0 R1 1
       10 JUMPIFNOTEQKNIL                  R0 ; [+2]
       12 RETURN                           R0 0
       13 NEWCLOSURE                       R1 P0
       14 CAPTURE                          UPVAL U2
       15 GETUPVAL                         R2 2
       16 DUPTABLE                         R3 K3 [{"enabled", "text"}]
       17 GETTABLEKS                       R4 R0 K4 ["Enabled"]
       19 SETTABLEKS                       R4 R3 K1 ["enabled"]
       21 GETTABLEKS                       R4 R0 K5 ["Text"]
       23 SETTABLEKS                       R4 R3 K2 ["text"]
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 0
       27 GETUPVAL                         R4 1
       28 NAMECALL                         R2 R2 K6 ["BindToChangedAsync"]
       30 CALL                             R2 2 1
       31 MOVE                             R4 R1
       32 NAMECALL                         R2 R2 K7 ["Connect"]
       34 CALL                             R2 2 1
       35 GETUPVAL                         R3 3
       36 JUMPIFNOT                        R3 ; [+4]
       37 NAMECALL                         R3 R2 K8 ["Disconnect"]
       39 CALL                             R3 1 0
       40 RETURN                           R0 0
       41 NEWCLOSURE                       R3 P1
       42 CAPTURE                          VAL R2
       43 SETUPVAL                         R3 4
       44 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R0 0
        1 LOADNIL                          R1
        2 GETIMPORT                        R2 K2 [task.spawn]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          REF R0
        9 CAPTURE                          REF R1
       10 CALL                             R2 1 0
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          REF R0
       13 CAPTURE                          REF R1
       14 CLOSEUPVALS                      R0
       15 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useEffect"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R2
       12 NEWTABLE                         R5 0 2
       14 MOVE                             R6 R0
       15 GETUPVAL                         R7 1
       16 SETLIST                          R5 R6 2 [1]
       18 CALL                             R3 2 0
       19 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R0 K2 [{"useActionState", "trigger"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["useActionState"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["trigger"]
        7 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["plugin"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["useCallback"]
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R1
       18 NEWTABLE                         R4 0 1
       20 MOVE                             R5 R1
       21 SETLIST                          R4 R5 1 [1]
       23 CALL                             R2 2 1
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       27 NEWCLOSURE                       R4 P2
       28 CAPTURE                          VAL R1
       29 NEWTABLE                         R5 0 1
       31 MOVE                             R6 R1
       32 SETLIST                          R5 R6 1 [1]
       34 CALL                             R3 2 1
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R4 R4 K0 ["useMemo"]
       38 NEWCLOSURE                       R5 P3
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R3
       41 NEWTABLE                         R6 0 2
       43 MOVE                             R7 R2
       44 MOVE                             R8 R3
       45 SETLIST                          R6 R7 2 [1]
       47 CALL                             R4 2 1
       48 GETUPVAL                         R5 0
       49 GETTABLEKS                       R5 R5 K3 ["createElement"]
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R6 R6 K4 ["Provider"]
       54 DUPTABLE                         R7 K6 [{"value"}]
       55 SETTABLEKS                       R4 R7 K5 ["value"]
       57 GETTABLEKS                       R8 R0 K7 ["children"]
       59 CALL                             R5 3 -1
       60 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CrossEnvironment"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Context"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Types"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K10 [PROTO_10]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R1
       31 RETURN                           R4 1
