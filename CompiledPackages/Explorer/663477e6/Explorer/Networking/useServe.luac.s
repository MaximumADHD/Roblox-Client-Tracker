PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K3 ["identifier"]
        8 GETUPVAL                         R2 0
        9 SETTABLE                         R2 R0 R1
       10 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["identifier"]
        3 GETTABLE                         R1 R0 R2
        4 GETUPVAL                         R2 0
        5 JUMPIFEQ                         R1 R2 ; [+2]
        7 RETURN                           R0 1
        8 GETIMPORT                        R1 K3 [table.clone]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 MOVE                             R0 R1
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["identifier"]
       16 LOADNIL                          R2
       17 SETTABLE                         R2 R0 R1
       18 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K0 ["current"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["identifier"]
       10 GETTABLE                         R0 R1 R2
       11 GETUPVAL                         R1 3
       12 JUMPIFNOTEQ                      R0 R1 ; [+9]
       14 GETUPVAL                         R0 2
       15 GETTABLEKS                       R0 R0 K0 ["current"]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K1 ["identifier"]
       20 LOADNIL                          R2
       21 SETTABLE                         R2 R0 R1
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Learned about %s connecting"]
        2 GETTABLEKS                       R3 R0 K1 ["identifier"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 CALL                             R1 1 0
        9 LOADNIL                          R1
       10 GETTABLEKS                       R2 R0 K2 ["disconnectSignal"]
       12 NEWCLOSURE                       R4 P1
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          REF R1
       17 NAMECALL                         R2 R2 K3 ["Connect"]
       19 CALL                             R2 2 1
       20 MOVE                             R1 R2
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R2 R2 K4 ["current"]
       24 GETTABLEKS                       R3 R0 K1 ["identifier"]
       26 SETTABLE                         R1 R2 R3
       27 CLOSEUPVALS                      R1
       28 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["registerOnConnect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 NAMECALL                         R5 R4 K1 ["Disconnect"]
        8 CALL                             R5 1 0
        9 FORGLOOP                         R0 2 ; [-4]
       11 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R3 R0 K2 ["default"]
        9 NOT                              R2 R3
       10 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       12 LOADK                            R3 K3 ["NetworkContext not provided"]
       13 GETIMPORT                        R1 K5 [assert]
       15 CALL                             R1 2 0
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K6 ["useState"]
       19 NEWTABLE                         R2 0 0
       21 CALL                             R1 1 2
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K7 ["useRef"]
       25 NEWTABLE                         R4 0 0
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R6 R3 K8 ["current"]
       30 JUMPIFNOTEQKNIL                  R6 ; [+2]
       32 LOADB                            R5 0 +1
       33 LOADB                            R5 1
       34 FASTCALL2K                       ASSERT R5 K9 ; [+4]
       36 LOADK                            R6 K9 ["Luau"]
       37 GETIMPORT                        R4 K5 [assert]
       39 CALL                             R4 2 0
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K10 ["useEffect"]
       43 NEWCLOSURE                       R5 P0
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R3
       48 NEWTABLE                         R6 0 1
       50 GETTABLEKS                       R7 R0 K11 ["registerOnConnect"]
       52 SETLIST                          R6 R7 1 [1]
       54 CALL                             R4 2 0
       55 GETUPVAL                         R4 0
       56 GETTABLEKS                       R4 R4 K10 ["useEffect"]
       58 NEWCLOSURE                       R5 P1
       59 CAPTURE                          VAL R3
       60 NEWTABLE                         R6 0 0
       62 CALL                             R4 2 0
       63 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["NetworkContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Networking"]
       20 GETTABLEKS                       R3 R3 K10 ["NetworkingTypes"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Parent"]
       27 GETTABLEKS                       R4 R4 K12 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Parent"]
       34 GETTABLEKS                       R5 R5 K13 ["Signal"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K14 ["Util"]
       41 GETTABLEKS                       R6 R6 K15 ["createDebugLogger"]
       43 CALL                             R5 1 1
       44 MOVE                             R6 R5
       45 LOADK                            R7 K16 ["useServe"]
       46 CALL                             R6 1 1
       47 DUPCLOSURE                       R7 K17 [PROTO_7]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R6
       51 RETURN                           R7 1
