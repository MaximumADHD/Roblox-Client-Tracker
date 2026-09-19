PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 GETTABLEKS                       R2 R0 K1 ["rendererInterface"]
        4 GETUPVAL                         R3 0
        5 MOVE                             R5 R1
        6 MOVE                             R6 R2
        7 NAMECALL                         R3 R3 K2 ["setRendererInterface"]
        9 CALL                             R3 3 0
       10 GETTABLEKS                       R3 R2 K3 ["flushInitialOperations"]
       12 CALL                             R3 0 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["onUnsupportedRenderer"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["onHookOperations"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_4:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["onTraceUpdates"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R2 K1 [require]
        2 GETIMPORT                        R3 K3 [script]
        4 GETTABLEKS                       R3 R3 K4 ["renderer"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R2 R2 K5 ["attach"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K6 ["rendererInterfaces"]
       12 MOVE                             R5 R0
       13 NAMECALL                         R3 R3 K7 ["get"]
       15 CALL                             R3 2 1
       16 JUMPIFNOTEQKNIL                  R3 ; [+31]
       18 GETTABLEKS                       R5 R1 K8 ["findFiberByHostInstance"]
       20 FASTCALL1                        TYPE R5 ; [+2]
       21 GETIMPORT                        R4 K10 [type]
       23 CALL                             R4 1 1
       24 JUMPIFNOTEQKS                    R4 K11 ["function"] ; [+9]
       26 MOVE                             R4 R2
       27 GETUPVAL                         R5 0
       28 MOVE                             R6 R0
       29 MOVE                             R7 R1
       30 GETUPVAL                         R8 1
       31 CALL                             R4 4 1
       32 MOVE                             R3 R4
       33 JUMP                             ; [+4]
       34 GETTABLEKS                       R4 R1 K12 ["ComponentTree"]
       36 JUMPIFNOT                        R4 ; [+1]
       37 JUMP                             ; [0]
       38 JUMPIFEQKNIL                     R3 ; [+9]
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K6 ["rendererInterfaces"]
       43 MOVE                             R6 R0
       44 MOVE                             R7 R3
       45 NAMECALL                         R4 R4 K13 ["set"]
       47 CALL                             R4 3 0
       48 JUMPIFEQKNIL                     R3 ; [+14]
       50 GETUPVAL                         R4 0
       51 GETTABLEKS                       R4 R4 K14 ["emit"]
       53 LOADK                            R5 K15 ["renderer-attached"]
       54 DUPTABLE                         R6 K18 [{"id", "renderer", "rendererInterface"}]
       55 SETTABLEKS                       R0 R6 K16 ["id"]
       57 SETTABLEKS                       R1 R6 K4 ["renderer"]
       59 SETTABLEKS                       R3 R6 K17 ["rendererInterface"]
       61 CALL                             R4 2 0
       62 RETURN                           R0 0
       63 GETUPVAL                         R4 0
       64 GETTABLEKS                       R4 R4 K14 ["emit"]
       66 LOADK                            R5 K19 ["unsupported-renderer-version"]
       67 MOVE                             R6 R0
       68 CALL                             R4 2 0
       69 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 MOVE                             R4 R0
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 GETTABLEKS                       R2 R0 K1 ["renderer"]
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R1
        6 MOVE                             R5 R2
        7 CALL                             R3 2 0
        8 RETURN                           R0 0

PROTO_8:
        0 MOVE                             R1 R0
        1 CALL                             R1 0 0
        2 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["cleanup"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["forEach"]
        3 GETUPVAL                         R1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_8]
        5 CALL                             R0 2 0
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K2 ["rendererInterfaces"]
        9 DUPCLOSURE                       R2 K3 [PROTO_9]
       10 NAMECALL                         R0 R0 K0 ["forEach"]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 2
       14 LOADNIL                          R1
       15 SETTABLEKS                       R1 R0 K4 ["reactDevtoolsAgent"]
       17 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["shutdown"]
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R0 R0 K1 ["removeListener"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_13:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 DUPCLOSURE                       R3 K0 [PROTO_0]
        3 RETURN                           R3 1
        4 NEWTABLE                         R3 0 4
        6 GETTABLEKS                       R4 R0 K1 ["sub"]
        8 LOADK                            R5 K2 ["renderer-attached"]
        9 NEWCLOSURE                       R6 P1
       10 CAPTURE                          VAL R1
       11 CALL                             R4 2 1
       12 GETTABLEKS                       R5 R0 K1 ["sub"]
       14 LOADK                            R6 K3 ["unsupported-renderer-version"]
       15 NEWCLOSURE                       R7 P2
       16 CAPTURE                          VAL R1
       17 CALL                             R5 2 1
       18 GETTABLEKS                       R6 R0 K1 ["sub"]
       20 LOADK                            R7 K4 ["operations"]
       21 NEWCLOSURE                       R8 P3
       22 CAPTURE                          VAL R1
       23 CALL                             R6 2 1
       24 GETTABLEKS                       R7 R0 K1 ["sub"]
       26 LOADK                            R8 K5 ["traceUpdates"]
       27 NEWCLOSURE                       R9 P4
       28 CAPTURE                          VAL R1
       29 CALL                             R7 2 -1
       30 SETLIST                          R3 R4 -1 [1]
       32 NEWCLOSURE                       R4 P5
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R2
       35 GETTABLEKS                       R5 R0 K6 ["renderers"]
       37 NEWCLOSURE                       R7 P6
       38 CAPTURE                          VAL R4
       39 NAMECALL                         R5 R5 K7 ["forEach"]
       41 CALL                             R5 2 0
       42 MOVE                             R6 R3
       43 GETTABLEKS                       R7 R0 K1 ["sub"]
       45 LOADK                            R8 K8 ["renderer"]
       46 NEWCLOSURE                       R9 P7
       47 CAPTURE                          VAL R4
       48 CALL                             R7 2 -1
       49 FASTCALL                         TABLE_INSERT ; [+2]
       50 GETIMPORT                        R5 K11 [table.insert]
       52 CALL                             R5 -1 0
       53 GETTABLEKS                       R5 R0 K12 ["emit"]
       55 LOADK                            R6 K13 ["react-devtools"]
       56 MOVE                             R7 R1
       57 CALL                             R5 2 0
       58 SETTABLEKS                       R1 R0 K14 ["reactDevtoolsAgent"]
       60 NEWCLOSURE                       R5 P8
       61 CAPTURE                          UPVAL U0
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R0
       64 LOADK                            R8 K15 ["shutdown"]
       65 MOVE                             R9 R5
       66 NAMECALL                         R6 R1 K16 ["addListener"]
       68 CALL                             R6 3 0
       69 NEWCLOSURE                       R8 P9
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R5
       72 FASTCALL2                        TABLE_INSERT R3 R8 ; [+4]
       74 MOVE                             R7 R3
       75 GETIMPORT                        R6 K11 [table.insert]
       77 CALL                             R6 2 0
       78 NEWCLOSURE                       R6 P10
       79 CAPTURE                          VAL R3
       80 RETURN                           R6 1

PROTO_14:
        0 GETIMPORT                        R0 K1 [require]
        2 GETIMPORT                        R1 K3 [script]
        4 GETTABLEKS                       R1 R1 K4 ["renderer"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETIMPORT                        R3 K4 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K7 ["agent"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K4 [require]
       23 GETIMPORT                        R5 K1 [script]
       25 GETTABLEKS                       R5 R5 K8 ["types"]
       27 CALL                             R4 1 1
       28 DUPCLOSURE                       R5 K9 [PROTO_13]
       29 CAPTURE                          VAL R2
       30 DUPTABLE                         R6 K13 [{"initBackend", "agent", "getRendererLazy", "NativeStyleEditor"}]
       31 SETTABLEKS                       R5 R6 K10 ["initBackend"]
       33 GETIMPORT                        R7 K4 [require]
       35 GETIMPORT                        R8 K1 [script]
       37 GETTABLEKS                       R8 R8 K7 ["agent"]
       39 CALL                             R7 1 1
       40 SETTABLEKS                       R7 R6 K7 ["agent"]
       42 DUPCLOSURE                       R7 K14 [PROTO_14]
       43 SETTABLEKS                       R7 R6 K11 ["getRendererLazy"]
       45 DUPTABLE                         R7 K15 [{"types"}]
       46 GETIMPORT                        R8 K4 [require]
       48 GETIMPORT                        R9 K1 [script]
       50 GETTABLEKS                       R9 R9 K12 ["NativeStyleEditor"]
       52 GETTABLEKS                       R9 R9 K8 ["types"]
       54 CALL                             R8 1 1
       55 SETTABLEKS                       R8 R7 K8 ["types"]
       57 SETTABLEKS                       R7 R6 K12 ["NativeStyleEditor"]
       59 RETURN                           R6 1
