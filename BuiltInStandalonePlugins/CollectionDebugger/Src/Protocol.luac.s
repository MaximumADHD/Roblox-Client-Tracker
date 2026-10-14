PROTO_0:
        0 LOADK                            R2 K0 ["CollectionDebugger.data."]
        1 MOVE                             R3 R0
        2 CONCAT                           R1 R2 R3
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPTABLE                         R1 K4 [{[1] = "CollectionDebugger.guest.selectionCleared", ["hostCommand"] = "CollectionDebugger.host.command"}]
        4 SETTABLEKS                       R1 R0 K5 ["Keys"]
        6 DUPCLOSURE                       R1 K6 [PROTO_0]
        7 SETTABLEKS                       R1 R0 K7 ["dataItemKey"]
        9 NEWTABLE                         R1 0 3
       11 LOADK                            R2 K8 ["PlayClient"]
       12 LOADK                            R3 K9 ["PlayServer"]
       13 LOADK                            R4 K10 ["Edit"]
       14 SETLIST                          R1 R2 3 [1]
       16 SETTABLEKS                       R1 R0 K11 ["SOURCE_IDENTIFIERS"]
       18 RETURN                           R0 1
