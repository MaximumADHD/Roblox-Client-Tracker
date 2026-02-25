MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K11 [{"STORY_NAME_PATTERN", "STORYBOOK_NAME_PATTERN", "SIDEBAR_INITIAL_WIDTH", "SIDEBAR_MIN_WIDTH", "SIDEBAR_MAX_WIDTH", "CONTROLS_INITIAL_HEIGHT", "CONTROLS_MIN_HEIGHT", "CONTROLS_MAX_HEIGHT", "SPRING_CONFIG", "FLIPBOOK_LOGO", "GITHUB_LOGO"}]
        2 LOADK                            R1 K12 ["%.story$"]
        3 SETTABLEKS                       R1 R0 K0 ["STORY_NAME_PATTERN"]
        5 LOADK                            R1 K13 ["%.storybook$"]
        6 SETTABLEKS                       R1 R0 K1 ["STORYBOOK_NAME_PATTERN"]
        8 LOADN                            R1 4
        9 SETTABLEKS                       R1 R0 K2 ["SIDEBAR_INITIAL_WIDTH"]
       11 LOADN                            R1 140
       12 SETTABLEKS                       R1 R0 K3 ["SIDEBAR_MIN_WIDTH"]
       14 LOADN                            R1 244
       15 SETTABLEKS                       R1 R0 K4 ["SIDEBAR_MAX_WIDTH"]
       17 LOADN                            R1 200
       18 SETTABLEKS                       R1 R0 K5 ["CONTROLS_INITIAL_HEIGHT"]
       20 LOADN                            R1 100
       21 SETTABLEKS                       R1 R0 K6 ["CONTROLS_MIN_HEIGHT"]
       23 LOADN                            R1 144
       24 SETTABLEKS                       R1 R0 K7 ["CONTROLS_MAX_HEIGHT"]
       26 DUPTABLE                         R1 K17 [{"clamp", "mass", "tension"}]
       27 LOADB                            R2 1
       28 SETTABLEKS                       R2 R1 K14 ["clamp"]
       30 LOADK                            R2 K18 [0.6]
       31 SETTABLEKS                       R2 R1 K15 ["mass"]
       33 LOADN                            R2 188
       34 SETTABLEKS                       R2 R1 K16 ["tension"]
       36 SETTABLEKS                       R1 R0 K8 ["SPRING_CONFIG"]
       38 LOADK                            R1 K19 ["rbxassetid://76698965087351"]
       39 SETTABLEKS                       R1 R0 K9 ["FLIPBOOK_LOGO"]
       41 LOADK                            R1 K20 ["rbxassetid://129495436983093"]
       42 SETTABLEKS                       R1 R0 K10 ["GITHUB_LOGO"]
       44 RETURN                           R0 1
