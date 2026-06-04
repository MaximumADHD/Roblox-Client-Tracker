PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [table.pack]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R5 R0 K3 ["params"]
        6 FASTCALL1                        TABLE_UNPACK R5 ; [+2]
        7 GETIMPORT                        R4 K5 [table.unpack]
        9 CALL                             R4 1 -1
       10 CALL                             R3 -1 -1
       11 CALL                             R2 -1 1
       12 SETTABLEKS                       R2 R1 K6 ["current"]
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["Cannot get the result of an unmounted hook"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["current"]
       10 FASTCALL1                        TABLE_UNPACK R1 ; [+2]
       11 GETIMPORT                        R0 K6 [table.unpack]
       13 CALL                             R0 1 -1
       14 RETURN                           R0 -1

PROTO_2:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["createElement"]
        4 GETUPVAL                         R1 1
        5 DUPTABLE                         R2 K2 [{"params"}]
        6 GETIMPORT                        R3 K5 [table.pack]
        8 GETVARARGS                       R4 -1
        9 CALL                             R3 -1 1
       10 SETTABLEKS                       R3 R2 K1 ["params"]
       12 CALL                             R0 2 1
       13 GETUPVAL                         R1 2
       14 JUMPIFNOT                        R1 ; [+6]
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K6 ["rerender"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 JUMP                             ; [+14]
       21 GETUPVAL                         R1 3
       22 MOVE                             R2 R0
       23 DUPTABLE                         R3 K8 [{"wrapper"}]
       24 GETUPVAL                         R5 4
       25 JUMPIFNOT                        R5 ; [+4]
       26 GETUPVAL                         R4 4
       27 GETTABLEKS                       R4 R4 K7 ["wrapper"]
       29 JUMP                             ; [+1]
       30 LOADNIL                          R4
       31 SETTABLEKS                       R4 R3 K7 ["wrapper"]
       33 CALL                             R1 2 1
       34 SETUPVAL                         R1 2
       35 GETUPVAL                         R1 5
       36 CALL                             R1 0 -1
       37 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["Cannot unmount an unmounted hook"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K3 ["unmount"]
       10 CALL                             R0 0 0
       11 LOADNIL                          R0
       12 SETUPVAL                         R0 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createRef"]
        3 CALL                             R2 0 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R0
        7 LOADNIL                          R4
        8 NEWCLOSURE                       R5 P1
        9 CAPTURE                          REF R4
       10 CAPTURE                          VAL R2
       11 NEWCLOSURE                       R6 P2
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R3
       14 CAPTURE                          REF R4
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R5
       18 NEWCLOSURE                       R7 P3
       19 CAPTURE                          REF R4
       20 DUPTABLE                         R8 K4 [{"render", "get", "unmount"}]
       21 SETTABLEKS                       R6 R8 K1 ["render"]
       23 SETTABLEKS                       R5 R8 K2 ["get"]
       25 SETTABLEKS                       R7 R8 K3 ["unmount"]
       27 CLOSEUPVALS                      R4
       28 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReactTestingUtils"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactTestingLibrary"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["render"]
       21 DUPCLOSURE                       R5 K10 [PROTO_4]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R4
       24 RETURN                           R5 1
