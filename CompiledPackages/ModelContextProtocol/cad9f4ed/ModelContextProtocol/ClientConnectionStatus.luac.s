PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 JUMPIFNOTEQ                      R5 R0 ; [+3]
        6 LOADB                            R6 1
        7 RETURN                           R6 1
        8 FORGLOOP                         R1 2 ; [-5]
       10 LOADB                            R1 0
       11 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["AuthorizationPending"]
        4 JUMPIFEQ                         R0 R2 ; [+8]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["UnsupportedProtocolVersion"]
        9 JUMPIFEQ                         R0 R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K12 [{[1] = "connected", ["Disconnected"] = "disconnected", ["UnexpectedError"] = "unexpected_error", ["AuthorizationPending"] = "authorization_pending", ["UnexpectedServerResponse"] = "unexpected_server_response", ["UnsupportedProtocolVersion"] = "unsupported_protocol_version"}]
        2 DUPCLOSURE                       R1 K13 [PROTO_0]
        3 CAPTURE                          VAL R0
        4 SETTABLEKS                       R1 R0 K14 ["is"]
        6 DUPCLOSURE                       R1 K15 [PROTO_1]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K16 ["isFatal"]
       10 RETURN                           R0 1
