MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{[1] = "npc", ["Modesty"] = "modesty"}]
        2 NEWTABLE                         R1 0 2
        4 GETTABLEKS                       R2 R0 K0 ["Npc"]
        6 GETTABLEKS                       R3 R0 K2 ["Modesty"]
        8 SETLIST                          R1 R2 2 [1]
       10 DUPTABLE                         R2 K7 [{"PipelineName", "PipelineNameValues"}]
       11 SETTABLEKS                       R0 R2 K5 ["PipelineName"]
       13 SETTABLEKS                       R1 R2 K6 ["PipelineNameValues"]
       15 RETURN                           R2 1
