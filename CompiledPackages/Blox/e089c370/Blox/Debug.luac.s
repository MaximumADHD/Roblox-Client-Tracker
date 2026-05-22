PROTO_0:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["VERBOSE_LOGS"]
        4 JUMPIFNOT                        R1 ; [+10]
        5 GETIMPORT                        R1 K2 [print]
        7 LOADK                            R3 K3 ["[Blox::%*]"]
        8 MOVE                             R5 R0
        9 NAMECALL                         R3 R3 K4 ["format"]
       11 CALL                             R3 2 1
       12 MOVE                             R2 R3
       13 GETVARARGS                       R3 -1
       14 CALL                             R1 -1 0
       15 RETURN                           R0 0

PROTO_1:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["WARN_OUTPUT"]
        4 JUMPIFNOT                        R1 ; [+14]
        5 GETIMPORT                        R1 K2 [warn]
        7 MOVE                             R2 R0
        8 GETVARARGS                       R3 -1
        9 CALL                             R1 -1 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["WARN_OUTPUT"]
       13 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       15 MOVE                             R3 R0
       16 GETIMPORT                        R1 K5 [table.insert]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K19 [{"BENCHMARK_WORK_QUEUE", "SIGNALS_VALIDATION_ENABLED", "PROPERTY_VALIDATION_ENABLED", "DISABLE_TEMPLATE_CLASSES", "VERBOSE_LOGS", "VERBOSE_EXPRESSIONS", "VERBOSE_FOR", "VERBOSE_VIRTUAL_LIST", "PROFILE_VIRTUAL_LIST", "PROFILE_WORK_QUEUE", "VLIST_FILL_BEFORE_EVICT", "VLIST_THROTTLE_SCROLL", "VLIST_OVERSCAN_OVERRIDE", "VLIST_DISABLE_RICHTEXT", "PRE_RENDER_FLUSH", "SHOW_CONTEXT_INTERNALS", "SHOW_SIGNAL_INTERNALS", "SHOW_STORE_INTERNALS", "WARN_OUTPUT"}]
        2 LOADB                            R1 0
        3 SETTABLEKS                       R1 R0 K0 ["BENCHMARK_WORK_QUEUE"]
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K1 ["SIGNALS_VALIDATION_ENABLED"]
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K2 ["PROPERTY_VALIDATION_ENABLED"]
       11 LOADB                            R1 1
       12 SETTABLEKS                       R1 R0 K3 ["DISABLE_TEMPLATE_CLASSES"]
       14 LOADB                            R1 0
       15 SETTABLEKS                       R1 R0 K4 ["VERBOSE_LOGS"]
       17 LOADB                            R1 0
       18 SETTABLEKS                       R1 R0 K5 ["VERBOSE_EXPRESSIONS"]
       20 LOADB                            R1 0
       21 SETTABLEKS                       R1 R0 K6 ["VERBOSE_FOR"]
       23 LOADB                            R1 0
       24 SETTABLEKS                       R1 R0 K7 ["VERBOSE_VIRTUAL_LIST"]
       26 LOADB                            R1 0
       27 SETTABLEKS                       R1 R0 K8 ["PROFILE_VIRTUAL_LIST"]
       29 LOADB                            R1 0
       30 SETTABLEKS                       R1 R0 K9 ["PROFILE_WORK_QUEUE"]
       32 LOADB                            R1 0
       33 SETTABLEKS                       R1 R0 K10 ["VLIST_FILL_BEFORE_EVICT"]
       35 LOADB                            R1 0
       36 SETTABLEKS                       R1 R0 K11 ["VLIST_THROTTLE_SCROLL"]
       38 LOADNIL                          R1
       39 SETTABLEKS                       R1 R0 K12 ["VLIST_OVERSCAN_OVERRIDE"]
       41 LOADB                            R1 0
       42 SETTABLEKS                       R1 R0 K13 ["VLIST_DISABLE_RICHTEXT"]
       44 LOADB                            R1 0
       45 SETTABLEKS                       R1 R0 K14 ["PRE_RENDER_FLUSH"]
       47 LOADB                            R1 0
       48 SETTABLEKS                       R1 R0 K15 ["SHOW_CONTEXT_INTERNALS"]
       50 LOADB                            R1 0
       51 SETTABLEKS                       R1 R0 K16 ["SHOW_SIGNAL_INTERNALS"]
       53 LOADB                            R1 0
       54 SETTABLEKS                       R1 R0 K17 ["SHOW_STORE_INTERNALS"]
       56 LOADNIL                          R1
       57 SETTABLEKS                       R1 R0 K18 ["WARN_OUTPUT"]
       59 DUPCLOSURE                       R1 K20 [PROTO_0]
       60 CAPTURE                          VAL R0
       61 SETTABLEKS                       R1 R0 K21 ["log"]
       63 DUPCLOSURE                       R1 K22 [PROTO_1]
       64 CAPTURE                          VAL R0
       65 SETTABLEKS                       R1 R0 K23 ["warn"]
       67 RETURN                           R0 1
