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
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["AuthorizationPending"]
        4 JUMPIFEQ                         R0 R2 ; [+8]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K1 ["UnsupportedProtocolVersion"]
        9 JUMPIFEQ                         R0 R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K6 [{"Connected", "Disconnected", "UnexpectedError", "AuthorizationPending", "UnexpectedServerResponse", "UnsupportedProtocolVersion"}]
        2 LOADK                            R1 K7 ["connected"]
        3 SETTABLEKS                       R1 R0 K0 ["Connected"]
        5 LOADK                            R1 K8 ["disconnected"]
        6 SETTABLEKS                       R1 R0 K1 ["Disconnected"]
        8 LOADK                            R1 K9 ["unexpected_error"]
        9 SETTABLEKS                       R1 R0 K2 ["UnexpectedError"]
       11 LOADK                            R1 K10 ["authorization_pending"]
       12 SETTABLEKS                       R1 R0 K3 ["AuthorizationPending"]
       14 LOADK                            R1 K11 ["unexpected_server_response"]
       15 SETTABLEKS                       R1 R0 K4 ["UnexpectedServerResponse"]
       17 LOADK                            R1 K12 ["unsupported_protocol_version"]
       18 SETTABLEKS                       R1 R0 K5 ["UnsupportedProtocolVersion"]
       20 DUPCLOSURE                       R1 K13 [PROTO_0]
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K14 ["is"]
       24 DUPCLOSURE                       R1 K15 [PROTO_1]
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K16 ["isFatal"]
       28 RETURN                           R0 1
