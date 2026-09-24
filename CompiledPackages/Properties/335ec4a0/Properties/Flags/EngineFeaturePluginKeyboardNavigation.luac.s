MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["PluginKeyboardNavigation"]
        4 NAMECALL                         R0 R0 K3 ["GetEngineFeature"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+6]
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["PluginLoaderKeyboardNavigation"]
       11 NAMECALL                         R0 R0 K5 ["GetFastFlag"]
       13 CALL                             R0 2 1
       14 RETURN                           R0 1
