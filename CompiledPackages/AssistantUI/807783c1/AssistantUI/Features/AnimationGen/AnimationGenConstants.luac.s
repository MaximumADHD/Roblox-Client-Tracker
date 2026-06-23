MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K5 [{"DEFAULT_GENERATION_FPS", "MIN_GENERATION_FRAMES", "MAX_GENERATION_FRAMES", "RBX_ANIMSAVES_FOLDER_NAME", "ANIM_SAVES_INSTANCE_NAME"}]
        2 LOADN                            R1 30
        3 SETTABLEKS                       R1 R0 K0 ["DEFAULT_GENERATION_FPS"]
        5 LOADN                            R1 30
        6 SETTABLEKS                       R1 R0 K1 ["MIN_GENERATION_FRAMES"]
        8 LOADN                            R1 44
        9 SETTABLEKS                       R1 R0 K2 ["MAX_GENERATION_FRAMES"]
       11 LOADK                            R1 K6 ["RBX_ANIMSAVES"]
       12 SETTABLEKS                       R1 R0 K3 ["RBX_ANIMSAVES_FOLDER_NAME"]
       14 LOADK                            R1 K7 ["AnimSaves"]
       15 SETTABLEKS                       R1 R0 K4 ["ANIM_SAVES_INSTANCE_NAME"]
       17 RETURN                           R0 1
