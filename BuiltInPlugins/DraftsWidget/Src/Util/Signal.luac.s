PROTO_0:
        0 DUPTABLE                         R0 K1 [{"_listeners"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["_listeners"]
        5 GETUPVAL                         R3 0
        6 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K3 [setmetatable]
       11 CALL                             R1 2 0
       12 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["isConnected"]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["RemoveValueFromList"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["_listeners"]
       11 GETUPVAL                         R3 0
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K2 ["_listeners"]
       15 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETIMPORT                        R1 K4 [string.format]
        4 LOADK                            R2 K5 ["Connection:Disconnect() has been deprecated, use Connection:disconnect()\n%s]"]
        5 GETIMPORT                        R3 K8 [debug.traceback]
        7 CALL                             R3 0 -1
        8 CALL                             R1 -1 -1
        9 CALL                             R0 -1 0
       10 GETUPVAL                         R0 0
       11 LOADB                            R1 0
       12 SETTABLEKS                       R1 R0 K9 ["isConnected"]
       14 GETUPVAL                         R0 1
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K10 ["RemoveValueFromList"]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K11 ["_listeners"]
       21 GETUPVAL                         R3 0
       22 CALL                             R1 2 1
       23 SETTABLEKS                       R1 R0 K11 ["_listeners"]
       25 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R2 K2 [{"callback", "isConnected"}]
        1 SETTABLEKS                       R1 R2 K0 ["callback"]
        3 LOADB                            R3 1
        4 SETTABLEKS                       R3 R2 K1 ["isConnected"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K3 ["Append"]
        9 GETTABLEKS                       R4 R0 K4 ["_listeners"]
       11 MOVE                             R5 R2
       12 CALL                             R3 2 1
       13 SETTABLEKS                       R3 R0 K4 ["_listeners"]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U0
       19 DUPTABLE                         R4 K7 [{"Disconnect", "disconnect"}]
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U0
       24 SETTABLEKS                       R5 R4 K5 ["Disconnect"]
       26 SETTABLEKS                       R3 R4 K6 ["disconnect"]
       28 RETURN                           R4 1

PROTO_4:
        0 PREPVARARGS                      1
        1 GETIMPORT                        R1 K1 [ipairs]
        3 GETTABLEKS                       R2 R0 K2 ["_listeners"]
        5 CALL                             R1 1 3
        6 FORGPREP_INEXT                   R1
        7 GETTABLEKS                       R6 R5 K3 ["isConnected"]
        9 JUMPIFNOT                        R6 ; [+4]
       10 GETTABLEKS                       R6 R5 K4 ["callback"]
       12 GETVARARGS                       R7 -1
       13 CALL                             R6 -1 0
       14 FORGLOOP                         R1 2 [inext] ; [-8]
       16 RETURN                           R0 0

PROTO_5:
        0 PREPVARARGS                      1
        1 GETIMPORT                        R1 K1 [warn]
        3 GETIMPORT                        R2 K4 [string.format]
        5 LOADK                            R3 K5 ["Signal:Connect() has been deprecated, use Signal:connect()\n%s]"]
        6 GETIMPORT                        R4 K8 [debug.traceback]
        8 CALL                             R4 0 -1
        9 CALL                             R2 -1 -1
       10 CALL                             R1 -1 0
       11 GETVARARGS                       R3 -1
       12 NAMECALL                         R1 R0 K9 ["connect"]
       14 CALL                             R1 -1 -1
       15 RETURN                           R1 -1

PROTO_6:
        0 PREPVARARGS                      1
        1 GETIMPORT                        R1 K1 [warn]
        3 GETIMPORT                        R2 K4 [string.format]
        5 LOADK                            R3 K5 ["Signal:Fire() has been deprecated, use Signal:fire()\n%s]"]
        6 GETIMPORT                        R4 K8 [debug.traceback]
        8 CALL                             R4 0 -1
        9 CALL                             R2 -1 -1
       10 CALL                             R1 -1 0
       11 GETVARARGS                       R3 -1
       12 NAMECALL                         R1 R0 K9 ["fire"]
       14 CALL                             R1 -1 0
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Immutable"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 8 0
       12 SETTABLEKS                       R1 R1 K6 ["__index"]
       14 DUPCLOSURE                       R2 K7 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R2 R1 K8 ["new"]
       18 DUPCLOSURE                       R2 K9 [PROTO_3]
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R1 K10 ["connect"]
       22 DUPCLOSURE                       R2 K11 [PROTO_4]
       23 SETTABLEKS                       R2 R1 K12 ["fire"]
       25 DUPCLOSURE                       R2 K13 [PROTO_5]
       26 SETTABLEKS                       R2 R1 K14 ["Connect"]
       28 DUPCLOSURE                       R2 K15 [PROTO_6]
       29 SETTABLEKS                       R2 R1 K16 ["Fire"]
       31 RETURN                           R1 1
