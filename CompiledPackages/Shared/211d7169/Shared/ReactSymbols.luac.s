PROTO_0:
        0 GETIMPORT                        R0 K1 [next]
        2 GETUPVAL                         R1 2
        3 GETUPVAL                         R2 0
        4 CALL                             R0 2 2
        5 SETUPVAL                         R0 0
        6 SETUPVAL                         R1 1
        7 DUPTABLE                         R0 K5 [{"done", "key", "value"}]
        8 GETUPVAL                         R2 1
        9 JUMPIFEQKNIL                     R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 SETTABLEKS                       R1 R0 K2 ["done"]
       15 GETUPVAL                         R1 0
       16 SETTABLEKS                       R1 R0 K3 ["key"]
       18 GETUPVAL                         R1 1
       19 SETTABLEKS                       R1 R0 K4 ["value"]
       21 RETURN                           R0 1

PROTO_1:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 DUPTABLE                         R2 K1 [{"next"}]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          REF R1
        6 CAPTURE                          UPVAL U0
        7 SETTABLEKS                       R3 R2 K0 ["next"]
        9 CLOSEUPVALS                      R0
       10 RETURN                           R2 1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+4]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
       10 LOADNIL                          R1
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 LOADK                            R1 K0 [60103]
        4 SETTABLEKS                       R1 R0 K1 ["REACT_ELEMENT_TYPE"]
        6 LOADK                            R1 K2 [60106]
        7 SETTABLEKS                       R1 R0 K3 ["REACT_PORTAL_TYPE"]
        9 LOADK                            R1 K4 [60107]
       10 SETTABLEKS                       R1 R0 K5 ["REACT_FRAGMENT_TYPE"]
       12 LOADK                            R1 K6 [60108]
       13 SETTABLEKS                       R1 R0 K7 ["REACT_STRICT_MODE_TYPE"]
       15 LOADK                            R1 K8 [60114]
       16 SETTABLEKS                       R1 R0 K9 ["REACT_PROFILER_TYPE"]
       18 LOADK                            R1 K10 [60109]
       19 SETTABLEKS                       R1 R0 K11 ["REACT_PROVIDER_TYPE"]
       21 LOADK                            R1 K12 [60110]
       22 SETTABLEKS                       R1 R0 K13 ["REACT_CONTEXT_TYPE"]
       24 LOADK                            R1 K14 [60112]
       25 SETTABLEKS                       R1 R0 K15 ["REACT_FORWARD_REF_TYPE"]
       27 LOADK                            R1 K16 [60113]
       28 SETTABLEKS                       R1 R0 K17 ["REACT_SUSPENSE_TYPE"]
       30 LOADK                            R1 K18 [60120]
       31 SETTABLEKS                       R1 R0 K19 ["REACT_SUSPENSE_LIST_TYPE"]
       33 LOADK                            R1 K20 [60115]
       34 SETTABLEKS                       R1 R0 K21 ["REACT_MEMO_TYPE"]
       36 LOADK                            R1 K22 [60116]
       37 SETTABLEKS                       R1 R0 K23 ["REACT_LAZY_TYPE"]
       39 LOADK                            R1 K24 [60121]
       40 SETTABLEKS                       R1 R0 K25 ["REACT_BLOCK_TYPE"]
       42 LOADK                            R1 K26 [60122]
       43 SETTABLEKS                       R1 R0 K27 ["REACT_SERVER_BLOCK_TYPE"]
       45 LOADK                            R1 K28 [60117]
       46 SETTABLEKS                       R1 R0 K29 ["REACT_FUNDAMENTAL_TYPE"]
       48 LOADK                            R1 K30 [60119]
       49 SETTABLEKS                       R1 R0 K31 ["REACT_SCOPE_TYPE"]
       51 LOADK                            R1 K32 [60128]
       52 SETTABLEKS                       R1 R0 K33 ["REACT_OPAQUE_ID_TYPE"]
       54 LOADK                            R1 K34 [60129]
       55 SETTABLEKS                       R1 R0 K35 ["REACT_DEBUG_TRACING_MODE_TYPE"]
       57 LOADK                            R1 K36 [60130]
       58 SETTABLEKS                       R1 R0 K37 ["REACT_OFFSCREEN_TYPE"]
       60 LOADK                            R1 K38 [60131]
       61 SETTABLEKS                       R1 R0 K39 ["REACT_LEGACY_HIDDEN_TYPE"]
       63 LOADK                            R1 K40 [60132]
       64 SETTABLEKS                       R1 R0 K41 ["REACT_BINDING_TYPE"]
       66 DUPCLOSURE                       R1 K42 [PROTO_2]
       67 SETTABLEKS                       R1 R0 K43 ["getIteratorFn"]
       69 RETURN                           R0 1
