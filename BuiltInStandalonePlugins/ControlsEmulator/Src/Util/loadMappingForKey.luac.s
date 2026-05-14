PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 NAMECALL                         R0 R0 K0 ["GetKeyboardShortcutAsync"]
        6 CALL                             R0 4 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 CALL                             R3 1 2
        8 JUMPIFNOT                        R3 ; [+1]
        9 RETURN                           R4 1
       10 NEWTABLE                         R5 0 0
       12 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["MockableProxyPluginComponents"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R1 R1 K9 ["StudioDeviceEmulator"]
       18 DUPCLOSURE                       R2 K10 [PROTO_1]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
