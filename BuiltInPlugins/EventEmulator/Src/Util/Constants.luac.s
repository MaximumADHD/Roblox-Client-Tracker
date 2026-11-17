MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K0 ["TESTING"]
        6 LOADK                            R1 K1 ["Unfortunately this feature is not active yet!"]
        7 SETTABLEKS                       R1 R0 K2 ["UNIMPLEMENTED_WARNING"]
        9 LOADK                            R1 K3 ["This operation was successful!"]
       10 SETTABLEKS                       R1 R0 K4 ["OPERATION_SUCCESSFUL"]
       12 DUPTABLE                         R1 K13 [{["Navigation"] = 1, ["NameBox"] = 2, ["View"] = 3, ["ConfirmationButtons"] = 5}]
       13 SETTABLEKS                       R1 R0 K14 ["INPUT_PANE_LAYOUT"]
       15 DUPTABLE                         R1 K20 [{["Warning"] = 1, ["Namespace"] = 2, ["Detail"] = 3, ["DetailType"] = 4}]
       16 SETTABLEKS                       R1 R0 K21 ["RBXEVENT_ORDER"]
       18 DUPTABLE                         R1 K25 [{["Switch"] = 1, ["Key"] = 2, ["Value"] = 3}]
       19 SETTABLEKS                       R1 R0 K26 ["MEM_STORAGE_ORDER"]
       21 DUPTABLE                         R1 K30 [{["RBXEvent"] = 1, ["Theme"] = 2, ["MemStorage"] = 3}]
       22 SETTABLEKS                       R1 R0 K31 ["VIEW_ORDER"]
       24 DUPTABLE                         R1 K34 [{["InputPane"] = 1, ["History"] = 2}]
       25 SETTABLEKS                       R1 R0 K35 ["APP_ORDER"]
       27 DUPTABLE                         R1 K36 [{["RBXEvent"] = "RBXEvent", ["MemStorage"] = "MemStorage"}]
       28 SETTABLEKS                       R1 R0 K37 ["VIEW_ID"]
       30 DUPTABLE                         R1 K38 [{"MemStorage"}]
       31 DUPTABLE                         R2 K45 [{["GetValue"] = "Get Value", ["SetValue"] = "Set Value", ["NewEntry"] = "New Entry"}]
       32 SETTABLEKS                       R2 R1 K29 ["MemStorage"]
       34 SETTABLEKS                       R1 R0 K46 ["ROUTES"]
       36 RETURN                           R0 1
