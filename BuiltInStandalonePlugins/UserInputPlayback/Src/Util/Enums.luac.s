MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K13 [{["Default"] = "Default", ["Recording"] = "Recording", ["Playing"] = "Playing", ["Disabled"] = "Disabled", ["ShouldStartPlayback"] = "ShouldStartPlayback", ["ShouldStartRecording"] = "ShouldStartRecording"}]
       17 DUPTABLE                         R3 K15 [{"PluginState"}]
       18 SETTABLEKS                       R2 R3 K14 ["PluginState"]
       20 RETURN                           R3 1
