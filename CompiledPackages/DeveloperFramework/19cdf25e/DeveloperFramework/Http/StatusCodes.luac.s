MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K17 [{"PENDING", "UNKNOWN_ERROR", "NO_CONNECTIVITY", "INVALID_JSON", "BAD_TLS", "MODERATED", "OK", "BAD_REQUEST", "UNAUTHORIZED", "FORBIDDEN", "NOT_FOUND", "REQUEST_TIMEOUT", "INTERNAL_SERVER_ERROR", "NOT_IMPLEMENTED", "BAD_GATEWAY", "SERVICE_UNAVAILABLE", "GATEWAY_TIMEOUT"}]
        2 LOADN                            R1 0
        3 SETTABLEKS                       R1 R0 K0 ["PENDING"]
        5 LOADN                            R1 255
        6 SETTABLEKS                       R1 R0 K1 ["UNKNOWN_ERROR"]
        8 LOADN                            R1 254
        9 SETTABLEKS                       R1 R0 K2 ["NO_CONNECTIVITY"]
       11 LOADN                            R1 253
       12 SETTABLEKS                       R1 R0 K3 ["INVALID_JSON"]
       14 LOADN                            R1 252
       15 SETTABLEKS                       R1 R0 K4 ["BAD_TLS"]
       17 LOADN                            R1 251
       18 SETTABLEKS                       R1 R0 K5 ["MODERATED"]
       20 LOADN                            R1 200
       21 SETTABLEKS                       R1 R0 K6 ["OK"]
       23 LOADN                            R1 144
       24 SETTABLEKS                       R1 R0 K7 ["BAD_REQUEST"]
       26 LOADN                            R1 145
       27 SETTABLEKS                       R1 R0 K8 ["UNAUTHORIZED"]
       29 LOADN                            R1 147
       30 SETTABLEKS                       R1 R0 K9 ["FORBIDDEN"]
       32 LOADN                            R1 148
       33 SETTABLEKS                       R1 R0 K10 ["NOT_FOUND"]
       35 LOADN                            R1 152
       36 SETTABLEKS                       R1 R0 K11 ["REQUEST_TIMEOUT"]
       38 LOADN                            R1 244
       39 SETTABLEKS                       R1 R0 K12 ["INTERNAL_SERVER_ERROR"]
       41 LOADN                            R1 245
       42 SETTABLEKS                       R1 R0 K13 ["NOT_IMPLEMENTED"]
       44 LOADN                            R1 246
       45 SETTABLEKS                       R1 R0 K14 ["BAD_GATEWAY"]
       47 LOADN                            R1 247
       48 SETTABLEKS                       R1 R0 K15 ["SERVICE_UNAVAILABLE"]
       50 LOADN                            R1 248
       51 SETTABLEKS                       R1 R0 K16 ["GATEWAY_TIMEOUT"]
       53 RETURN                           R0 1
