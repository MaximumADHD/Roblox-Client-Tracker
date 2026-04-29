PROTO_0:
        0 MOVE                             R2 R0
        1 JUMPIFNOT                        R2 ; [+5]
        2 GETTABLE                         R3 R0 R1
        3 JUMPIFNOTEQKNIL                  R3 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R3 K3 [{"code", "message", "data"}]
        1 SETTABLEKS                       R0 R3 K0 ["code"]
        3 SETTABLEKS                       R1 R3 K1 ["message"]
        5 SETTABLEKS                       R2 R3 K2 ["data"]
        7 RETURN                           R3 1

PROTO_2:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R3 K2 ["Unexpected value! Expected never, got %*: %*, trace: %*"]
        3 FASTCALL1                        TYPEOF R0 ; [+3]
        4 MOVE                             R6 R0
        5 GETIMPORT                        R5 K4 [typeof]
        7 CALL                             R5 1 1
        8 MOVE                             R6 R0
        9 GETIMPORT                        R7 K7 [debug.traceback]
       11 CALL                             R7 0 1
       12 NAMECALL                         R3 R3 K8 ["format"]
       14 CALL                             R3 4 1
       15 MOVE                             R2 R3
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 1 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["tableHiddenKey"]
        5 LOADB                            R2 1
        6 SETTABLE                         R2 R0 R1
        7 RETURN                           R0 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["emptyTable"]
        5 CALL                             R2 0 -1
        6 FASTCALL                         SETMETATABLE ; [+2]
        7 GETIMPORT                        R0 K2 [setmetatable]
        9 CALL                             R0 -1 1
       10 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["emptyTableWithMetatable"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModelContextProtocol"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["Signal"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 16 0
       23 LOADK                            R4 K9 ["2025-11-25"]
       24 SETTABLEKS                       R4 R3 K10 ["LATEST_PROTOCOL_VERSION"]
       26 NEWTABLE                         R4 0 5
       28 GETTABLEKS                       R5 R3 K10 ["LATEST_PROTOCOL_VERSION"]
       30 LOADK                            R6 K11 ["2025-06-18"]
       31 LOADK                            R7 K12 ["2025-03-26"]
       32 LOADK                            R8 K13 ["2024-11-05"]
       33 LOADK                            R9 K14 ["2024-10-07"]
       34 SETLIST                          R4 R5 5 [1]
       36 SETTABLEKS                       R4 R3 K15 ["SUPPORTED_PROTOCOL_VERSIONS"]
       38 LOADK                            R4 K16 ["2.0"]
       39 SETTABLEKS                       R4 R3 K17 ["JSONRPC_VERSION"]
       41 DUPTABLE                         R4 K25 [{"ConnectionClosed", "RequestTimeout", "ParseError", "InvalidRequest", "MethodNotFound", "InvalidParams", "InternalError"}]
       42 LOADN                            R5 0
       43 SETTABLEKS                       R5 R4 K18 ["ConnectionClosed"]
       45 LOADN                            R5 255
       46 SETTABLEKS                       R5 R4 K19 ["RequestTimeout"]
       48 LOADN                            R5 68
       49 SETTABLEKS                       R5 R4 K20 ["ParseError"]
       51 LOADN                            R5 168
       52 SETTABLEKS                       R5 R4 K21 ["InvalidRequest"]
       54 LOADN                            R5 167
       55 SETTABLEKS                       R5 R4 K22 ["MethodNotFound"]
       57 LOADN                            R5 166
       58 SETTABLEKS                       R5 R4 K23 ["InvalidParams"]
       60 LOADN                            R5 165
       61 SETTABLEKS                       R5 R4 K24 ["InternalError"]
       63 SETTABLEKS                       R4 R3 K26 ["ErrorCode"]
       65 DUPCLOSURE                       R4 K27 [PROTO_0]
       66 SETTABLEKS                       R4 R3 K28 ["fieldExists"]
       68 DUPCLOSURE                       R4 K29 [PROTO_1]
       69 SETTABLEKS                       R4 R3 K30 ["newMcpError"]
       71 DUPCLOSURE                       R4 K31 [PROTO_2]
       72 SETTABLEKS                       R4 R3 K32 ["assertNever"]
       74 LOADK                            R4 K33 ["__hidden_json_table"]
       75 SETTABLEKS                       R4 R3 K34 ["tableHiddenKey"]
       77 DUPCLOSURE                       R4 K35 [PROTO_3]
       78 CAPTURE                          VAL R3
       79 SETTABLEKS                       R4 R3 K36 ["emptyTable"]
       81 DUPCLOSURE                       R4 K37 [PROTO_4]
       82 CAPTURE                          VAL R3
       83 SETTABLEKS                       R4 R3 K38 ["emptyTableWithMetatable"]
       85 DUPCLOSURE                       R4 K39 [PROTO_5]
       86 CAPTURE                          VAL R3
       87 SETTABLEKS                       R4 R3 K40 ["emptyObject"]
       89 RETURN                           R3 1
