PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["root"]
        3 LOADK                            R2 K1 ["DataModel"]
        4 NAMECALL                         R0 R0 K2 ["IsA"]
        6 CALL                             R0 2 1
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R0 R1 K0 ["root"]
       12 NAMECALL                         R0 R0 K3 ["GetChildren"]
       14 CALL                             R0 1 3
       15 FORGPREP                         R0
       16 GETUPVAL                         R5 1
       17 MOVE                             R6 R4
       18 CALL                             R5 1 1
       19 JUMPIFNOT                        R5 ; [+35]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K4 ["watchingInstanceConnections"]
       23 GETTABLE                         R5 R6 R4
       24 JUMPIFNOTEQKNIL                  R5 ; [+67]
       26 GETUPVAL                         R5 2
       27 GETUPVAL                         R6 0
       28 MOVE                             R7 R4
       29 CALL                             R5 2 0
       30 GETUPVAL                         R6 3
       31 GETTABLE                         R5 R6 R4
       32 JUMPIFNOT                        R5 ; [+11]
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R6 R7 K5 ["hostRpcInterface"]
       36 GETTABLEKS                       R5 R6 K6 ["instanceReplaced"]
       38 GETUPVAL                         R6 4
       39 GETUPVAL                         R7 0
       40 MOVE                             R8 R4
       41 CALL                             R6 2 -1
       42 CALL                             R5 -1 0
       43 JUMP                             ; [+48]
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R6 R7 K5 ["hostRpcInterface"]
       47 GETTABLEKS                       R5 R6 K7 ["instanceAdded"]
       49 GETUPVAL                         R6 4
       50 GETUPVAL                         R7 0
       51 MOVE                             R8 R4
       52 CALL                             R6 2 -1
       53 CALL                             R5 -1 0
       54 JUMP                             ; [+37]
       55 GETUPVAL                         R7 0
       56 GETTABLEKS                       R6 R7 K4 ["watchingInstanceConnections"]
       58 GETTABLE                         R5 R6 R4
       59 JUMPIFEQKNIL                     R5 ; [+32]
       61 GETUPVAL                         R6 4
       62 GETUPVAL                         R7 0
       63 MOVE                             R8 R4
       64 CALL                             R6 2 1
       65 LOADNIL                          R7
       66 SETTABLEKS                       R7 R6 K8 ["parentId"]
       68 GETUPVAL                         R9 0
       69 GETTABLEKS                       R8 R9 K5 ["hostRpcInterface"]
       71 GETTABLEKS                       R7 R8 K6 ["instanceReplaced"]
       73 MOVE                             R8 R6
       74 CALL                             R7 1 0
       75 MOVE                             R7 R5
       76 LOADNIL                          R8
       77 LOADNIL                          R9
       78 FORGPREP                         R7
       79 NAMECALL                         R12 R11 K9 ["Disconnect"]
       81 CALL                             R12 1 0
       82 FORGLOOP                         R7 2 ; [-4]
       84 GETUPVAL                         R8 0
       85 GETTABLEKS                       R7 R8 K4 ["watchingInstanceConnections"]
       87 LOADNIL                          R8
       88 SETTABLE                         R8 R7 R4
       89 GETUPVAL                         R7 3
       90 LOADB                            R8 1
       91 SETTABLE                         R8 R7 R4
       92 FORGLOOP                         R0 2 ; [-77]
       94 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R3 0 0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R3
        7 CAPTURE                          UPVAL U1
        8 MOVE                             R5 R2
        9 JUMPIFNOT                        R5 ; [+3]
       10 MOVE                             R5 R2
       11 MOVE                             R6 R4
       12 CALL                             R5 1 1
       13 NEWCLOSURE                       R6 P1
       14 CAPTURE                          VAL R5
       15 DUPTABLE                         R7 K1 [{"destroy"}]
       16 SETTABLEKS                       R6 R7 K0 ["destroy"]
       18 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Guest"]
       11 GETTABLEKS                       R3 R4 K7 ["InstanceGuestRPCInterface"]
       13 GETTABLEKS                       R2 R3 K8 ["InstanceGuestRPCInterfaceTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R6 R0 K6 ["Guest"]
       20 GETTABLEKS                       R5 R6 K7 ["InstanceGuestRPCInterface"]
       22 GETTABLEKS                       R4 R5 K9 ["Util"]
       24 GETTABLEKS                       R3 R4 K10 ["createDatumFromInstance"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R7 R0 K6 ["Guest"]
       31 GETTABLEKS                       R6 R7 K7 ["InstanceGuestRPCInterface"]
       33 GETTABLEKS                       R5 R6 K9 ["Util"]
       35 GETTABLEKS                       R4 R5 K11 ["startTrackingInstance"]
       37 CALL                             R3 1 1
       38 DUPCLOSURE                       R4 K12 [PROTO_2]
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R2
       41 RETURN                           R4 1
