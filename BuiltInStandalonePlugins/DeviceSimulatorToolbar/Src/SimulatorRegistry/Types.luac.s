MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K5 [{[1] = "Dropdown", ["Slider"] = "Slider", ["NumberField"] = "NumberField", ["Toggle"] = "Toggle", ["Section"] = "Section"}]
        2 DUPTABLE                         R1 K8 [{["Immediate"] = "Immediate", ["Deferred"] = "Deferred"}]
        3 DUPTABLE                         R2 K11 [{"ControlType", "ApplyMode"}]
        4 SETTABLEKS                       R0 R2 K9 ["ControlType"]
        6 SETTABLEKS                       R1 R2 K10 ["ApplyMode"]
        8 RETURN                           R2 1
