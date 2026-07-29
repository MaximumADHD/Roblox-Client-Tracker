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
        1 DUPTABLE                         R0 K22 [{[1] = False, ["SIGNALS_VALIDATION_ENABLED"] = False, ["PROPERTY_VALIDATION_ENABLED"] = False, ["DISABLE_TEMPLATE_CLASSES"] = True, ["VERBOSE_LOGS"] = False, ["VERBOSE_EXPRESSIONS"] = False, ["VERBOSE_FOR"] = False, ["VERBOSE_VIRTUAL_LIST"] = False, ["PROFILE_VIRTUAL_LIST"] = False, ["PROFILE_WORK_QUEUE"] = False, ["VLIST_FILL_BEFORE_EVICT"] = False, ["VLIST_THROTTLE_SCROLL"] = False, ["VLIST_OVERSCAN_OVERRIDE"] = , ["VLIST_DISABLE_RICHTEXT"] = False, ["PRE_RENDER_FLUSH"] = False, ["SHOW_CONTEXT_INTERNALS"] = False, ["SHOW_SIGNAL_INTERNALS"] = False, ["SHOW_STORE_INTERNALS"] = False, ["WARN_OUTPUT"] = }]
        2 DUPCLOSURE                       R1 K23 [PROTO_0]
        3 CAPTURE                          VAL R0
        4 SETTABLEKS                       R1 R0 K24 ["log"]
        6 DUPCLOSURE                       R1 K25 [PROTO_1]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K26 ["warn"]
       10 RETURN                           R0 1
