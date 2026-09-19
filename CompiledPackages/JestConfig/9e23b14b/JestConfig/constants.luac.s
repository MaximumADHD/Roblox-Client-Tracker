MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 LOADK                            R1 K0 ["jest.config"]
        4 SETTABLEKS                       R1 R0 K1 ["JEST_CONFIG_BASE_NAME"]
        6 RETURN                           R0 1
