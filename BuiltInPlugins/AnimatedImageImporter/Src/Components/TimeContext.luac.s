PROTO_0:
        0 GETIMPORT                        R0 K2 [task.wait]
        2 CALL                             R0 0 -1
        3 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETIMPORT                        R3 K2 [coroutine.running]
        4 CALL                             R3 0 -1
        5 FASTCALL                         TABLE_INSERT ; [+2]
        6 GETIMPORT                        R1 K5 [table.insert]
        8 CALL                             R1 -1 0
        9 GETIMPORT                        R1 K7 [coroutine.yield]
       11 CALL                             R1 0 0
       12 GETUPVAL                         R2 0
       13 SUB                              R1 R2 R0
       14 RETURN                           R1 1

PROTO_3:
        0 DUPTABLE                         R0 K2 [{"clock", "wait"}]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["clock"]
        5 NEWCLOSURE                       R1 P1
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 SETTABLEKS                       R1 R0 K1 ["wait"]
       10 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K1 ["createElement"]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K2 ["Provider"]
       15 DUPTABLE                         R4 K4 [{"value"}]
       16 SETTABLEKS                       R1 R4 K3 ["value"]
       18 GETTABLEKS                       R5 R0 K5 ["children"]
       20 CALL                             R2 3 -1
       21 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 ADD                              R1 R1 R0
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 SETUPVAL                         R2 1
        7 MOVE                             R2 R1
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETIMPORT                        R7 K2 [task.spawn]
       13 MOVE                             R8 R6
       14 CALL                             R7 1 0
       15 FORGLOOP                         R2 2 ; [-5]
       17 RETURN                           R0 0

PROTO_6:
        0 LOADN                            R0 10000
        1 NEWTABLE                         R1 0 0
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          REF R0
        6 CAPTURE                          REF R1
        7 CAPTURE                          UPVAL U1
        8 DUPTABLE                         R3 K1 [{"step"}]
        9 NEWCLOSURE                       R4 P1
       10 CAPTURE                          REF R0
       11 CAPTURE                          REF R1
       12 SETTABLEKS                       R4 R3 K0 ["step"]
       14 DUPTABLE                         R4 K4 [{"Provider", "controller"}]
       15 SETTABLEKS                       R2 R4 K2 ["Provider"]
       17 SETTABLEKS                       R3 R4 K3 ["controller"]
       19 CLOSEUPVALS                      R0
       20 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimatedImageImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K10 [{"clock", "wait"}]
       15 GETIMPORT                        R3 K12 [os.clock]
       17 SETTABLEKS                       R3 R2 K8 ["clock"]
       19 DUPCLOSURE                       R3 K13 [PROTO_0]
       20 SETTABLEKS                       R3 R2 K9 ["wait"]
       22 GETTABLEKS                       R3 R1 K14 ["createContext"]
       24 MOVE                             R4 R2
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K15 [PROTO_6]
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R3
       29 DUPTABLE                         R5 K18 [{"Context", "createMock"}]
       30 SETTABLEKS                       R3 R5 K16 ["Context"]
       32 SETTABLEKS                       R4 R5 K17 ["createMock"]
       34 RETURN                           R5 1
