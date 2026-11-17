PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["EDITING_TOOLS_GUI_NAMES"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETUPVAL                         R5 1
        7 MOVE                             R7 R4
        8 NAMECALL                         R5 R5 K1 ["FindFirstChild"]
       10 CALL                             R5 2 1
       11 JUMPIFEQKNIL                     R5 ; [+4]
       13 NAMECALL                         R6 R5 K2 ["Destroy"]
       15 CALL                             R6 1 0
       16 FORGLOOP                         R0 2 ; [-11]
       18 GETUPVAL                         R0 2
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K3 ["CLONED_DUMMY_NAME"]
       22 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
       24 CALL                             R0 2 1
       25 JUMPIFEQKNIL                     R0 ; [+4]
       27 NAMECALL                         R1 R0 K2 ["Destroy"]
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Name"]
        4 SETTABLEKS                       R1 R0 K0 ["Name"]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["createElement"]
        9 GETUPVAL                         R1 3
       10 DUPTABLE                         R2 K4 [{"Plugin", "PluginLoaderContext"}]
       11 GETUPVAL                         R3 0
       12 SETTABLEKS                       R3 R2 K2 ["Plugin"]
       14 GETUPVAL                         R3 4
       15 SETTABLEKS                       R3 R2 K3 ["PluginLoaderContext"]
       17 CALL                             R0 2 1
       18 GETUPVAL                         R1 5
       19 CALL                             R1 0 0
       20 GETUPVAL                         R1 7
       21 GETTABLEKS                       R1 R1 K5 ["createRoot"]
       23 GETIMPORT                        R2 K8 [Instance.new]
       25 LOADK                            R3 K9 ["Frame"]
       26 CALL                             R2 1 -1
       27 CALL                             R1 -1 1
       28 SETUPVAL                         R1 6
       29 GETUPVAL                         R1 6
       30 MOVE                             R3 R0
       31 NAMECALL                         R1 R1 K10 ["render"]
       33 CALL                             R1 2 0
       34 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 0
        3 LOADNIL                          R2
        4 NAMECALL                         R0 R0 K0 ["render"]
        6 CALL                             R0 2 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 GETUPVAL                         R0 1
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_3:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R2 K1 [script]
        4 GETTABLEKS                       R2 R2 K2 ["Parent"]
        6 GETTABLEKS                       R2 R2 K2 ["Parent"]
        8 GETIMPORT                        R3 K4 [require]
       10 GETTABLEKS                       R4 R2 K5 ["Packages"]
       12 GETTABLEKS                       R4 R4 K6 ["React"]
       14 CALL                             R3 1 1
       15 GETIMPORT                        R4 K4 [require]
       17 GETTABLEKS                       R5 R2 K5 ["Packages"]
       19 GETTABLEKS                       R5 R5 K7 ["ReactRoblox"]
       21 CALL                             R4 1 1
       22 GETIMPORT                        R5 K4 [require]
       24 GETTABLEKS                       R6 R2 K8 ["Src"]
       26 GETTABLEKS                       R6 R6 K9 ["Util"]
       28 GETTABLEKS                       R6 R6 K10 ["Constants"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K4 [require]
       33 GETTABLEKS                       R7 R2 K8 ["Src"]
       35 GETTABLEKS                       R7 R7 K11 ["MainPlugin"]
       37 CALL                             R6 1 1
       38 LOADNIL                          R7
       39 NEWCLOSURE                       R8 P0
       40 CAPTURE                          VAL R5
       41 CAPTURE                          UPVAL U0
       42 CAPTURE                          UPVAL U1
       43 NEWCLOSURE                       R9 P1
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R8
       50 CAPTURE                          REF R7
       51 CAPTURE                          VAL R4
       52 GETTABLEKS                       R10 R0 K12 ["Unloading"]
       54 NEWCLOSURE                       R12 P2
       55 CAPTURE                          REF R7
       56 CAPTURE                          VAL R8
       57 NAMECALL                         R10 R10 K13 ["Connect"]
       59 CALL                             R10 2 0
       60 MOVE                             R10 R9
       61 CALL                             R10 0 0
       62 CLOSEUPVALS                      R7
       63 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Workspace"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 DUPCLOSURE                       R2 K5 [PROTO_3]
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
