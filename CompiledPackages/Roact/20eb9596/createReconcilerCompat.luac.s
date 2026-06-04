PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["warnOnce"]
        4 LOADK                            R1 K1 ["Roact.reify has been renamed to Roact.mount and will be removed in a future release.\nCheck the call to Roact.reify at:\n"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K2 ["mountVirtualTree"]
        9 GETVARARGS                       R1 -1
       10 CALL                             R0 -1 -1
       11 RETURN                           R0 -1

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["warnOnce"]
        4 LOADK                            R1 K1 ["Roact.teardown has been renamed to Roact.unmount and will be removed in a future release.\nCheck the call to Roact.teardown at:\n"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K2 ["unmountVirtualTree"]
        9 GETVARARGS                       R1 -1
       10 CALL                             R0 -1 -1
       11 RETURN                           R0 -1

PROTO_2:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["warnOnce"]
        4 LOADK                            R1 K1 ["Roact.reconcile has been renamed to Roact.update and will be removed in a future release.\nCheck the call to Roact.reconcile at:\n"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K2 ["updateVirtualTree"]
        9 GETVARARGS                       R1 -1
       10 CALL                             R0 -1 -1
       11 RETURN                           R0 -1

PROTO_3:
        0 NEWTABLE                         R1 4 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R2 R1 K0 ["reify"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R2 R1 K1 ["teardown"]
       12 NEWCLOSURE                       R2 P2
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R2 R1 K2 ["reconcile"]
       17 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Logging"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_3]
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1
