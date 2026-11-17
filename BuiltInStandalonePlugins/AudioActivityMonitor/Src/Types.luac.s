MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioActivityMonitor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["StudioFoundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Contexts"]
       23 GETTABLEKS                       R3 R3 K10 ["Localization"]
       25 NEWTABLE                         R4 0 5
       27 LOADK                            R5 K11 ["Disabled"]
       28 LOADK                            R6 K12 ["Source"]
       29 LOADK                            R7 K13 ["ContributingGain"]
       30 LOADK                            R8 K14 ["AttenuationFactor"]
       31 LOADK                            R9 K15 ["PotentialAudibility"]
       32 SETLIST                          R4 R5 5 [1]
       34 NEWTABLE                         R5 0 0
       36 MOVE                             R6 R4
       37 LOADNIL                          R7
       38 LOADNIL                          R8
       39 FORGPREP                         R6
       40 SETTABLE                         R10 R5 R10
       41 FORGLOOP                         R6 2 ; [-2]
       43 DUPTABLE                         R6 K18 [{"MeteringModes", "MeteringMode"}]
       44 SETTABLEKS                       R4 R6 K16 ["MeteringModes"]
       46 SETTABLEKS                       R5 R6 K17 ["MeteringMode"]
       48 RETURN                           R6 1
