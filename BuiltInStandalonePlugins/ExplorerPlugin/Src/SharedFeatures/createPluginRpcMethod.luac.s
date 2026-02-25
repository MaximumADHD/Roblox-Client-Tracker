PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R2 1
        3 GETVARARGS                       R3 -1
        4 NAMECALL                         R0 R0 K0 ["Invoke"]
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["OnInvokeSuspendOverride"]
        5 CALL                             R1 3 1
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R1
        8 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R4 2
        3 MOVE                             R5 R1
        4 NAMECALL                         R2 R2 K0 ["OnInvokeSuspendOverride"]
        6 CALL                             R2 3 1
        7 NEWCLOSURE                       R0 P0
        8 CAPTURE                          VAL R2
        9 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useMemo"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 MOVE                             R4 R1
        6 CALL                             R2 2 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K1 ["useEffect"]
       10 NEWCLOSURE                       R4 P1
       11 CAPTURE                          VAL R2
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 NEWTABLE                         R5 0 2
       16 GETUPVAL                         R6 1
       17 MOVE                             R7 R2
       18 SETLIST                          R5 R6 2 [1]
       20 CALL                             R3 2 0
       21 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["useListenToGuest called from guest DM"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Plugin"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstAncestorWhichIsA"]
        4 CALL                             R1 2 1
        5 LOADB                            R3 0
        6 JUMPIFEQKNIL                     R1 ; [+5]
        8 LOADK                            R5 K0 ["Plugin"]
        9 NAMECALL                         R3 R1 K2 ["IsA"]
       11 CALL                             R3 2 1
       12 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       14 LOADK                            R4 K3 ["Couldn't find plugin"]
       15 GETIMPORT                        R2 K5 [assert]
       17 CALL                             R2 2 0
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R0
       21 NEWCLOSURE                       R3 P1
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R0
       24 DUPTABLE                         R4 K9 [{"fire", "listen", "useListenToGuest"}]
       25 SETTABLEKS                       R2 R4 K6 ["fire"]
       27 SETTABLEKS                       R3 R4 K7 ["listen"]
       29 GETTABLEKS                       R6 R1 K10 ["HostDataModelType"]
       31 GETIMPORT                        R7 K14 [Enum.StudioDataModelType.Standalone]
       33 JUMPIFNOTEQ                      R6 R7 ; [+6]
       35 NEWCLOSURE                       R5 P2
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R0
       39 JUMP                             ; [+1]
       40 DUPCLOSURE                       R5 K15 [PROTO_6]
       41 SETTABLEKS                       R5 R4 K8 ["useListenToGuest"]
       43 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ExplorerPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_7]
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 RETURN                           R2 1
