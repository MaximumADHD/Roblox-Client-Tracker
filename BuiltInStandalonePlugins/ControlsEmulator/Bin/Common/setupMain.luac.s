PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 0
        3 LOADNIL                          R2
        4 NAMECALL                         R0 R0 K0 ["render"]
        6 CALL                             R0 2 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagWaitForDeviceEmulator"]
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+15]
        5 GETIMPORT                        R2 K2 [require]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K3 ["Src"]
       10 GETTABLEKS                       R3 R3 K4 ["Util"]
       12 GETTABLEKS                       R3 R3 K5 ["waitForDeviceEmulator"]
       14 CALL                             R2 1 1
       15 MOVE                             R3 R2
       16 MOVE                             R4 R0
       17 CALL                             R3 1 1
       18 JUMPIF                           R3 ; [+1]
       19 RETURN                           R0 0
       20 GETIMPORT                        R2 K2 [require]
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K6 ["Packages"]
       25 GETTABLEKS                       R3 R3 K7 ["React"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K2 [require]
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K6 ["Packages"]
       33 GETTABLEKS                       R4 R4 K8 ["ReactRoblox"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K2 [require]
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R5 R5 K3 ["Src"]
       41 GETTABLEKS                       R5 R5 K9 ["MainPlugin"]
       43 CALL                             R4 1 1
       44 GETTABLEKS                       R5 R2 K10 ["createElement"]
       46 MOVE                             R6 R4
       47 DUPTABLE                         R7 K13 [{"Plugin", "PluginLoaderContext"}]
       48 SETTABLEKS                       R0 R7 K11 ["Plugin"]
       50 SETTABLEKS                       R1 R7 K12 ["PluginLoaderContext"]
       52 CALL                             R5 2 1
       53 GETIMPORT                        R6 K16 [Instance.new]
       55 LOADK                            R7 K17 ["Frame"]
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R7 R3 K18 ["createRoot"]
       59 MOVE                             R8 R6
       60 CALL                             R7 1 1
       61 FASTCALL1                        ASSERT R7 ; [+3]
       62 MOVE                             R9 R7
       63 GETIMPORT                        R8 K20 [assert]
       65 CALL                             R8 1 0
       66 MOVE                             R10 R5
       67 NAMECALL                         R8 R7 K21 ["render"]
       69 CALL                             R8 2 0
       70 GETTABLEKS                       R8 R0 K22 ["Unloading"]
       72 NEWCLOSURE                       R10 P0
       73 CAPTURE                          REF R7
       74 NAMECALL                         R8 R8 K23 ["Connect"]
       76 CALL                             R8 2 0
       77 CLOSEUPVALS                      R7
       78 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_1]
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R0
       19 RETURN                           R2 1
