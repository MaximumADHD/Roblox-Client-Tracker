PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["guestRpcInterface"]
        3 GETTABLEKS                       R0 R0 K1 ["openInsertObjectMenuAsync"]
        5 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["guestRpcInterface"]
        3 GETTABLEKS                       R0 R0 K1 ["getCapabilitiesAsync"]
        5 CALL                             R0 0 1
        6 GETTABLEKS                       R1 R0 K2 ["insertObjectButton"]
        8 JUMPIFNOT                        R1 ; [+4]
        9 GETUPVAL                         R1 1
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U0
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R2 R0 K3 ["scriptOpening"]
       16 SETTABLEKS                       R2 R1 K4 ["canOpenScripts"]
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R2 R0 K5 ["respondsToScriptClicks"]
       21 SETTABLEKS                       R2 R1 K5 ["respondsToScriptClicks"]
       23 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["create"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 DUPTABLE                         R3 K5 [{["openInsertObjectMenuAsyncObservable"], ["canOpenScripts"] = False, ["respondsToScriptClicks"] = False}]
        6 SETTABLEKS                       R1 R3 K1 ["openInsertObjectMenuAsyncObservable"]
        8 GETIMPORT                        R4 K8 [task.spawn]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R3
       14 CALL                             R4 1 0
       15 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Observable"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["RpcTypes"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Networking"]
       23 GETTABLEKS                       R4 R4 K10 ["createSession"]
       25 GETTABLEKS                       R4 R4 K11 ["createSessionTypes"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K12 [PROTO_2]
       29 CAPTURE                          VAL R1
       30 RETURN                           R4 1
