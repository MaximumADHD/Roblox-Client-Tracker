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
       19 CALL                             R1 0 1
       20 JUMPIFNOT                        R1 ; [+2]
       21 GETUPVAL                         R1 6
       22 CALL                             R1 0 0
       23 GETUPVAL                         R1 8
       24 GETTABLEKS                       R1 R1 K5 ["createRoot"]
       26 GETIMPORT                        R2 K8 [Instance.new]
       28 LOADK                            R3 K9 ["Frame"]
       29 CALL                             R2 1 -1
       30 CALL                             R1 -1 1
       31 SETUPVAL                         R1 7
       32 GETUPVAL                         R1 7
       33 MOVE                             R3 R0
       34 NAMECALL                         R1 R1 K10 ["render"]
       36 CALL                             R1 2 0
       37 RETURN                           R0 0

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
       10 CALL                             R0 0 1
       11 JUMPIFNOT                        R0 ; [+2]
       12 GETUPVAL                         R0 2
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

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
       39 GETIMPORT                        R8 K4 [require]
       41 GETTABLEKS                       R9 R2 K8 ["Src"]
       43 GETTABLEKS                       R9 R9 K12 ["Flags"]
       45 GETTABLEKS                       R9 R9 K13 ["getFFlagAvatarPreviewerEditingTools"]
       47 CALL                             R8 1 1
       48 NEWCLOSURE                       R9 P0
       49 CAPTURE                          VAL R5
       50 CAPTURE                          UPVAL U0
       51 CAPTURE                          UPVAL U1
       52 NEWCLOSURE                       R10 P1
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R9
       60 CAPTURE                          REF R7
       61 CAPTURE                          VAL R4
       62 GETTABLEKS                       R11 R0 K14 ["Unloading"]
       64 NEWCLOSURE                       R13 P2
       65 CAPTURE                          REF R7
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R9
       68 NAMECALL                         R11 R11 K15 ["Connect"]
       70 CALL                             R11 2 0
       71 MOVE                             R11 R10
       72 CALL                             R11 0 0
       73 CLOSEUPVALS                      R7
       74 RETURN                           R0 0

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
