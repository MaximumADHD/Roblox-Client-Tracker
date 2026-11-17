MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 LOADK                            R1 K0 ["Mask"]
        4 SETTABLEKS                       R1 R0 K1 ["maskSettingsName"]
        6 LOADK                            R1 K2 ["Order"]
        7 SETTABLEKS                       R1 R0 K3 ["orderAttribute"]
        9 LOADK                            R1 K4 ["RBX_MaskRigName"]
       10 SETTABLEKS                       R1 R0 K5 ["attributeMaskRigName"]
       12 LOADK                            R1 K6 ["RBX_MaskRigType"]
       13 SETTABLEKS                       R1 R0 K7 ["attributeMaskRigType"]
       15 GETIMPORT                        R1 K10 [table.freeze]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 -1
       19 RETURN                           R1 -1
