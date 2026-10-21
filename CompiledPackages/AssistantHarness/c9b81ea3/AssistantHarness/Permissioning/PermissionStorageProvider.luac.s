PROTO_0:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["Ask"]
        4 JUMPIFEQ                         R0 R2 ; [+14]
        6 LOADB                            R1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["AllowAlways"]
       10 JUMPIFEQ                         R0 R2 ; [+8]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["RejectAlways"]
       15 JUMPIFEQ                         R0 R2 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R1 R2 R0
        2 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 DUPTABLE                         R1 K2 [{"get", "set"}]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R2 R1 K0 ["get"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R1 K1 ["set"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [table.freeze]
        3 DUPTABLE                         R1 K9 [{["Ask"] = "ask", ["AllowAlways"] = "allow_always", ["RejectAlways"] = "reject_always"}]
        4 CALL                             R0 1 1
        5 DUPCLOSURE                       R1 K10 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 DUPCLOSURE                       R2 K11 [PROTO_3]
        8 DUPTABLE                         R3 K15 [{"Decisions", "createInMemory", "isPermissionDecision"}]
        9 SETTABLEKS                       R0 R3 K12 ["Decisions"]
       11 SETTABLEKS                       R2 R3 K13 ["createInMemory"]
       13 SETTABLEKS                       R1 R3 K14 ["isPermissionDecision"]
       15 RETURN                           R3 1
