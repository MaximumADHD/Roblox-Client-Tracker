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
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+13]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K0 ["emptyTableWithMetatable"]
        9 CALL                             R0 0 -1
       10 RETURN                           R0 -1
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R0 R1 K1 ["emptyTable"]
       14 CALL                             R0 0 -1
       15 RETURN                           R0 -1
       16 DUPTABLE                         R0 K3 [{"_"}]
       17 NEWTABLE                         R1 0 0
       19 SETTABLEKS                       R1 R0 K2 ["_"]
       21 RETURN                           R0 1

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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Flags"]
       25 GETTABLEKS                       R4 R5 K10 ["FFlagAssistantJsonEncoder"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K9 ["Flags"]
       32 GETTABLEKS                       R5 R6 K11 ["FFlagAssistantJsonEncoderUseHiddenMetatable"]
       34 CALL                             R4 1 1
       35 NEWTABLE                         R5 16 0
       37 LOADK                            R6 K12 ["2025-11-25"]
       38 SETTABLEKS                       R6 R5 K13 ["LATEST_PROTOCOL_VERSION"]
       40 NEWTABLE                         R6 0 5
       42 GETTABLEKS                       R7 R5 K13 ["LATEST_PROTOCOL_VERSION"]
       44 LOADK                            R8 K14 ["2025-06-18"]
       45 LOADK                            R9 K15 ["2025-03-26"]
       46 LOADK                            R10 K16 ["2024-11-05"]
       47 LOADK                            R11 K17 ["2024-10-07"]
       48 SETLIST                          R6 R7 5 [1]
       50 SETTABLEKS                       R6 R5 K18 ["SUPPORTED_PROTOCOL_VERSIONS"]
       52 LOADK                            R6 K19 ["2.0"]
       53 SETTABLEKS                       R6 R5 K20 ["JSONRPC_VERSION"]
       55 DUPTABLE                         R6 K28 [{"ConnectionClosed", "RequestTimeout", "ParseError", "InvalidRequest", "MethodNotFound", "InvalidParams", "InternalError"}]
       56 LOADN                            R7 0
       57 SETTABLEKS                       R7 R6 K21 ["ConnectionClosed"]
       59 LOADN                            R7 255
       60 SETTABLEKS                       R7 R6 K22 ["RequestTimeout"]
       62 LOADN                            R7 68
       63 SETTABLEKS                       R7 R6 K23 ["ParseError"]
       65 LOADN                            R7 168
       66 SETTABLEKS                       R7 R6 K24 ["InvalidRequest"]
       68 LOADN                            R7 167
       69 SETTABLEKS                       R7 R6 K25 ["MethodNotFound"]
       71 LOADN                            R7 166
       72 SETTABLEKS                       R7 R6 K26 ["InvalidParams"]
       74 LOADN                            R7 165
       75 SETTABLEKS                       R7 R6 K27 ["InternalError"]
       77 SETTABLEKS                       R6 R5 K29 ["ErrorCode"]
       79 DUPCLOSURE                       R6 K30 [PROTO_0]
       80 SETTABLEKS                       R6 R5 K31 ["fieldExists"]
       82 DUPCLOSURE                       R6 K32 [PROTO_1]
       83 SETTABLEKS                       R6 R5 K33 ["newMcpError"]
       85 DUPCLOSURE                       R6 K34 [PROTO_2]
       86 SETTABLEKS                       R6 R5 K35 ["assertNever"]
       88 LOADK                            R6 K36 ["__hidden_json_table"]
       89 SETTABLEKS                       R6 R5 K37 ["tableHiddenKey"]
       91 DUPCLOSURE                       R6 K38 [PROTO_3]
       92 CAPTURE                          VAL R5
       93 SETTABLEKS                       R6 R5 K39 ["emptyTable"]
       95 DUPCLOSURE                       R6 K40 [PROTO_4]
       96 CAPTURE                          VAL R5
       97 SETTABLEKS                       R6 R5 K41 ["emptyTableWithMetatable"]
       99 DUPCLOSURE                       R6 K42 [PROTO_5]
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R5
      103 SETTABLEKS                       R6 R5 K43 ["emptyObject"]
      105 RETURN                           R5 1
