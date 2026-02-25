PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 JUMPIFNOTEQ                      R4 R5 ; [+7]
        7 GETIMPORT                        R5 K2 [table.remove]
        9 GETUPVAL                         R6 0
       10 MOVE                             R7 R3
       11 CALL                             R5 2 0
       12 RETURN                           R0 0
       13 FORGLOOP                         R0 2 ; [-10]
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 MOVE                             R8 R7
        5 DUPTABLE                         R9 K3 [{"source", "event", "payload"}]
        6 LOADK                            R10 K4 ["react-devtools-bridge"]
        7 SETTABLEKS                       R10 R9 K0 ["source"]
        9 SETTABLEKS                       R0 R9 K1 ["event"]
       11 SETTABLEKS                       R1 R9 K2 ["payload"]
       13 CALL                             R8 1 0
       14 FORGLOOP                         R3 2 ; [-11]
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["emit"]
        3 LOADK                            R1 K1 ["shutdown"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [require]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["ReactDevtoolsShared"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R3 R2 K3 ["backend"]
       10 GETTABLEKS                       R4 R3 K4 ["agent"]
       12 GETTABLEKS                       R5 R2 K5 ["bridge"]
       14 GETTABLEKS                       R6 R3 K6 ["initBackend"]
       16 GETTABLEKS                       R7 R5 K7 ["new"]
       18 DUPTABLE                         R8 K10 [{"listen", "send"}]
       19 NEWCLOSURE                       R9 P0
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R9 R8 K8 ["listen"]
       23 NEWCLOSURE                       R9 P1
       24 CAPTURE                          VAL R1
       25 SETTABLEKS                       R9 R8 K9 ["send"]
       27 CALL                             R7 1 1
       28 GETTABLEKS                       R8 R4 K7 ["new"]
       30 MOVE                             R9 R7
       31 CALL                             R8 1 1
       32 LOADK                            R11 K11 ["shutdown"]
       33 NEWCLOSURE                       R12 P2
       34 CAPTURE                          VAL R0
       35 NAMECALL                         R9 R8 K12 ["addListener"]
       37 CALL                             R9 3 0
       38 MOVE                             R9 R6
       39 MOVE                             R10 R0
       40 MOVE                             R11 R8
       41 GETUPVAL                         R12 1
       42 CALL                             R9 3 0
       43 LOADK                            R11 K13 ["extensionBackendInitialized"]
       44 NAMECALL                         R9 R7 K9 ["send"]
       46 CALL                             R9 2 0
       47 DUPTABLE                         R9 K15 [{"agent", "hook", "bridge"}]
       48 SETTABLEKS                       R8 R9 K4 ["agent"]
       50 SETTABLEKS                       R0 R9 K14 ["hook"]
       52 SETTABLEKS                       R7 R9 K5 ["bridge"]
       54 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["LuauPolyfill"]
       16 CALL                             R2 1 1
       17 DUPCLOSURE                       R3 K7 [PROTO_4]
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 DUPTABLE                         R4 K9 [{"setup"}]
       21 SETTABLEKS                       R3 R4 K8 ["setup"]
       23 RETURN                           R4 1
