MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K0 ["TESTING"]
        6 LOADK                            R1 K1 ["Unfortunately this feature is not active yet!"]
        7 SETTABLEKS                       R1 R0 K2 ["UNIMPLEMENTED_WARNING"]
        9 LOADK                            R1 K3 ["This operation was successful!"]
       10 SETTABLEKS                       R1 R0 K4 ["OPERATION_SUCCESSFUL"]
       12 DUPTABLE                         R1 K9 [{"Navigation", "NameBox", "View", "ConfirmationButtons"}]
       13 LOADN                            R2 1
       14 SETTABLEKS                       R2 R1 K5 ["Navigation"]
       16 LOADN                            R2 2
       17 SETTABLEKS                       R2 R1 K6 ["NameBox"]
       19 LOADN                            R2 3
       20 SETTABLEKS                       R2 R1 K7 ["View"]
       22 LOADN                            R2 5
       23 SETTABLEKS                       R2 R1 K8 ["ConfirmationButtons"]
       25 SETTABLEKS                       R1 R0 K10 ["INPUT_PANE_LAYOUT"]
       27 DUPTABLE                         R1 K15 [{"Warning", "Namespace", "Detail", "DetailType"}]
       28 LOADN                            R2 1
       29 SETTABLEKS                       R2 R1 K11 ["Warning"]
       31 LOADN                            R2 2
       32 SETTABLEKS                       R2 R1 K12 ["Namespace"]
       34 LOADN                            R2 3
       35 SETTABLEKS                       R2 R1 K13 ["Detail"]
       37 LOADN                            R2 4
       38 SETTABLEKS                       R2 R1 K14 ["DetailType"]
       40 SETTABLEKS                       R1 R0 K16 ["RBXEVENT_ORDER"]
       42 DUPTABLE                         R1 K20 [{"Switch", "Key", "Value"}]
       43 LOADN                            R2 1
       44 SETTABLEKS                       R2 R1 K17 ["Switch"]
       46 LOADN                            R2 2
       47 SETTABLEKS                       R2 R1 K18 ["Key"]
       49 LOADN                            R2 3
       50 SETTABLEKS                       R2 R1 K19 ["Value"]
       52 SETTABLEKS                       R1 R0 K21 ["MEM_STORAGE_ORDER"]
       54 DUPTABLE                         R1 K25 [{"RBXEvent", "Theme", "MemStorage"}]
       55 LOADN                            R2 1
       56 SETTABLEKS                       R2 R1 K22 ["RBXEvent"]
       58 LOADN                            R2 2
       59 SETTABLEKS                       R2 R1 K23 ["Theme"]
       61 LOADN                            R2 3
       62 SETTABLEKS                       R2 R1 K24 ["MemStorage"]
       64 SETTABLEKS                       R1 R0 K26 ["VIEW_ORDER"]
       66 DUPTABLE                         R1 K29 [{"InputPane", "History"}]
       67 LOADN                            R2 1
       68 SETTABLEKS                       R2 R1 K27 ["InputPane"]
       70 LOADN                            R2 2
       71 SETTABLEKS                       R2 R1 K28 ["History"]
       73 SETTABLEKS                       R1 R0 K30 ["APP_ORDER"]
       75 DUPTABLE                         R1 K31 [{"RBXEvent", "MemStorage"}]
       76 LOADK                            R2 K22 ["RBXEvent"]
       77 SETTABLEKS                       R2 R1 K22 ["RBXEvent"]
       79 LOADK                            R2 K24 ["MemStorage"]
       80 SETTABLEKS                       R2 R1 K24 ["MemStorage"]
       82 SETTABLEKS                       R1 R0 K32 ["VIEW_ID"]
       84 DUPTABLE                         R1 K33 [{"MemStorage"}]
       85 DUPTABLE                         R2 K37 [{"GetValue", "SetValue", "NewEntry"}]
       86 LOADK                            R3 K38 ["Get Value"]
       87 SETTABLEKS                       R3 R2 K34 ["GetValue"]
       89 LOADK                            R3 K39 ["Set Value"]
       90 SETTABLEKS                       R3 R2 K35 ["SetValue"]
       92 LOADK                            R3 K40 ["New Entry"]
       93 SETTABLEKS                       R3 R2 K36 ["NewEntry"]
       95 SETTABLEKS                       R2 R1 K24 ["MemStorage"]
       97 SETTABLEKS                       R1 R0 K41 ["ROUTES"]
       99 RETURN                           R0 1
