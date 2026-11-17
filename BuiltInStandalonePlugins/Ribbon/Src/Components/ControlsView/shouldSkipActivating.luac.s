PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["DataModel"]
        2 JUMPIFNOTEQKS                    R1 K1 ["Standalone"] ; [+15]
        4 GETTABLEKS                       R1 R0 K2 ["PluginId"]
        6 JUMPIFNOTEQKS                    R1 K3 ["MaterialPicker"] ; [+11]
        8 GETTABLEKS                       R1 R0 K4 ["ItemId"]
       10 JUMPIFEQKS                       R1 K5 ["MaterialPickerButton"] ; [+5]
       12 GETTABLEKS                       R1 R0 K4 ["ItemId"]
       14 JUMPIFNOTEQKS                    R1 K6 ["MaterialPickerDropdown"] ; [+3]
       16 LOADB                            R1 1
       17 RETURN                           R1 1
       18 LOADB                            R1 0
       19 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
