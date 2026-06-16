PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 LOADK                            R4 K1 ["toolbar"]
        5 NAMECALL                         R2 R0 K2 ["CreateToolbar"]
        7 CALL                             R2 2 1
        8 LOADK                            R5 K3 ["button"]
        9 NAMECALL                         R3 R2 K4 ["CreateButton"]
       11 CALL                             R3 2 1
       12 NAMECALL                         R4 R0 K5 ["CreateDockWidgetPluginGui"]
       14 CALL                             R4 1 1
       15 LOADB                            R5 1
       16 SETTABLEKS                       R5 R4 K6 ["Enabled"]
       18 MOVE                             R7 R2
       19 NAMECALL                         R5 R1 K7 ["add"]
       21 CALL                             R5 2 0
       22 MOVE                             R7 R3
       23 NAMECALL                         R5 R1 K7 ["add"]
       25 CALL                             R5 2 0
       26 MOVE                             R7 R4
       27 NAMECALL                         R5 R1 K7 ["add"]
       29 CALL                             R5 2 0
       30 DUPTABLE                         R5 K16 [{"_mockPlugin", "_cleanup", "mockToolbar", "mockButton", "mockDockWidget", "mainDockWidget", "mainButton", "mainButtonClickedSignal"}]
       31 SETTABLEKS                       R0 R5 K8 ["_mockPlugin"]
       33 SETTABLEKS                       R1 R5 K9 ["_cleanup"]
       35 SETTABLEKS                       R2 R5 K10 ["mockToolbar"]
       37 SETTABLEKS                       R3 R5 K11 ["mockButton"]
       39 SETTABLEKS                       R4 R5 K12 ["mockDockWidget"]
       41 SETTABLEKS                       R4 R5 K13 ["mainDockWidget"]
       43 SETTABLEKS                       R3 R5 K14 ["mainButton"]
       45 GETTABLEKS                       R6 R3 K17 ["Click"]
       47 SETTABLEKS                       R6 R5 K15 ["mainButtonClickedSignal"]
       49 GETUPVAL                         R8 1
       50 FASTCALL2                        SETMETATABLE R5 R8 ; [+4]
       52 MOVE                             R7 R5
       53 GETIMPORT                        R6 K19 [setmetatable]
       55 CALL                             R6 2 1
       56 RETURN                           R6 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_cleanup"]
        2 NAMECALL                         R1 R1 K1 ["Destroy"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Util"]
       17 GETTABLEKS                       R2 R2 K7 ["CleanupHelper"]
       19 CALL                             R1 1 1
       20 NEWTABLE                         R2 4 0
       22 SETTABLEKS                       R2 R2 K8 ["__index"]
       24 DUPCLOSURE                       R3 K9 [PROTO_0]
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 SETTABLEKS                       R3 R2 K10 ["new"]
       29 DUPCLOSURE                       R3 K11 [PROTO_1]
       30 SETTABLEKS                       R3 R2 K12 ["Destroy"]
       32 RETURN                           R2 1
