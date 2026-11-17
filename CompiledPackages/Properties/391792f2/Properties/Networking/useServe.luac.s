PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["identifier"]
        3 GETTABLE                         R3 R0 R4
        4 JUMPIFEQKNIL                     R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       10 LOADK                            R3 K1 ["Identifier already in connections list"]
       11 GETIMPORT                        R1 K3 [assert]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K6 [table.clone]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 1
       18 MOVE                             R0 R1
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K0 ["identifier"]
       22 GETUPVAL                         R2 0
       23 SETTABLE                         R2 R0 R1
       24 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["identifier"]
        3 GETTABLE                         R3 R0 R4
        4 JUMPIFNOTEQKNIL                  R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       10 LOADK                            R3 K1 ["Identifier not found in connections list when disconnecting"]
       11 GETIMPORT                        R1 K3 [assert]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K6 [table.clone]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 1
       18 MOVE                             R0 R1
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K0 ["identifier"]
       22 LOADNIL                          R2
       23 SETTABLE                         R2 R0 R1
       24 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["identifier"]
       10 LOADNIL                          R2
       11 SETTABLE                         R2 R0 R1
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["current"]
        7 GETTABLEKS                       R2 R0 K1 ["identifier"]
        9 GETTABLEKS                       R3 R0 K2 ["disconnectSignal"]
       11 NEWCLOSURE                       R5 P1
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U1
       15 NAMECALL                         R3 R3 K3 ["Connect"]
       17 CALL                             R3 2 1
       18 SETTABLE                         R3 R1 R2
       19 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["registerOnConnect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

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
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 NEWTABLE                         R6 0 1
       49 GETTABLEKS                       R7 R0 K11 ["registerOnConnect"]
       51 SETLIST                          R6 R7 1 [1]
       53 CALL                             R4 2 0
       54 GETUPVAL                         R4 0
       55 GETTABLEKS                       R4 R4 K10 ["useEffect"]
       57 NEWCLOSURE                       R5 P1
       58 CAPTURE                          VAL R3
       59 NEWTABLE                         R6 0 0
       61 CALL                             R4 2 0
       62 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
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
       37 DUPCLOSURE                       R5 K14 [PROTO_7]
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R1
       40 RETURN                           R5 1
