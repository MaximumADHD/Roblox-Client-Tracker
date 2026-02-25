MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 GETIMPORT                        R1 K1 [game]
        5 LOADK                            R3 K2 ["R6ScriptErrorUrl"]
        6 LOADK                            R4 K3 ["https://create.roblox.com/docs/art/avatar"]
        7 NAMECALL                         R1 R1 K4 ["DefineFastString"]
        9 CALL                             R1 3 1
       10 SETTABLEKS                       R1 R0 K5 ["R6Error"]
       12 GETIMPORT                        R1 K1 [game]
       14 LOADK                            R3 K6 ["R6ScriptWarningUrl"]
       15 LOADK                            R4 K3 ["https://create.roblox.com/docs/art/avatar"]
       16 NAMECALL                         R1 R1 K4 ["DefineFastString"]
       18 CALL                             R1 3 1
       19 SETTABLEKS                       R1 R0 K7 ["R6Warning"]
       21 GETIMPORT                        R1 K1 [game]
       23 LOADK                            R3 K8 ["R6ToR15LearnMoreUrl"]
       24 LOADK                            R4 K3 ["https://create.roblox.com/docs/art/avatar"]
       25 NAMECALL                         R1 R1 K4 ["DefineFastString"]
       27 CALL                             R1 3 1
       28 SETTABLEKS                       R1 R0 K9 ["LearnMore"]
       30 RETURN                           R0 1
