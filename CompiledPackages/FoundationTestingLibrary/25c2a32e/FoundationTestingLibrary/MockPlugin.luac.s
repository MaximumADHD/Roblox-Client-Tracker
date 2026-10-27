PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K1 [setmetatable]
        8 CALL                             R1 2 1
        9 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K6 [{[1] = "Standalone", ["PluginType"] = "Mock", ["PluginId"] = "MockPlugin"}]
        1 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R0 K2 [task.wait]
        2 LOADN                            R1 0
        3 CALL                             R0 1 0
        4 LOADNIL                          R0
        5 RETURN                           R0 1

PROTO_3:
        0 DUPCLOSURE                       R2 K0 [PROTO_2]
        1 JUMPIFNOTEQKS                    R1 K1 ["Widgets"] ; [+7]
        3 DUPTABLE                         R3 K4 [{"RegisterAsync", "DeregisterAsync"}]
        4 SETTABLEKS                       R2 R3 K2 ["RegisterAsync"]
        6 SETTABLEKS                       R2 R3 K3 ["DeregisterAsync"]
        8 RETURN                           R3 1
        9 JUMPIFNOTEQKS                    R1 K5 ["Panels"] ; [+7]
       11 DUPTABLE                         R3 K8 [{"SetAttachmentAsync", "SetSizeAsync"}]
       12 SETTABLEKS                       R2 R3 K6 ["SetAttachmentAsync"]
       14 SETTABLEKS                       R2 R3 K7 ["SetSizeAsync"]
       16 RETURN                           R3 1
       17 LOADNIL                          R3
       18 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["GetUri"]
       12 DUPCLOSURE                       R1 K5 [PROTO_3]
       13 SETTABLEKS                       R1 R0 K6 ["GetPluginComponent"]
       15 RETURN                           R0 1
