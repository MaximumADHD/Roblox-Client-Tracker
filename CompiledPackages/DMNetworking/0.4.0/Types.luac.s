MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DMNetworking"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Utils"]
       11 GETTABLEKS                       R2 R2 K7 ["Logger"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 4 0
       16 DUPTABLE                         R3 K11 [{["Studio"] = "Studio", ["Game"] = "Game", ["Callback"] = "Callback"}]
       17 SETTABLEKS                       R3 R2 K12 ["ImplementationKind"]
       19 DUPTABLE                         R3 K27 [{["ALL"] = "DMN_RSRVD_ALL", ["FOCUSED"] = "DMN_RSRVD_FOCUSED", ["Edit"] = "DMN_ID_EDIT", ["PlayClient"] = "DMN_ID_PLAYCLIENT", ["PlayServer"] = "DMN_ID_PLAYSERVER", ["Standalone"] = "DMN_ID_STANDALONE", ["None"] = "DMN_ID_NONE"}]
       20 SETTABLEKS                       R3 R2 K28 ["Identity"]
       22 LOADK                            R3 K29 ["EVENT"]
       23 SETTABLEKS                       R3 R2 K30 ["TAG_EVENT"]
       25 LOADK                            R3 K31 ["INVOKE"]
       26 SETTABLEKS                       R3 R2 K32 ["TAG_INVOKE"]
       28 RETURN                           R2 1
