PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 NEWTABLE                         R3 2 0
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K2 ["Tag"]
        9 LOADK                            R5 K3 ["Component-WidgetHeader data-testid=Component-WidgetHeader"]
       10 SETTABLE                         R5 R3 R4
       11 GETTABLEKS                       R4 R0 K4 ["LayoutOrder"]
       13 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       15 DUPTABLE                         R4 K7 [{"LeftContents", "RightContents"}]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K0 ["createElement"]
       19 LOADK                            R6 K1 ["Frame"]
       20 NEWTABLE                         R7 1 0
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K2 ["Tag"]
       25 LOADK                            R9 K5 ["LeftContents"]
       26 SETTABLE                         R9 R7 R8
       27 GETTABLEKS                       R8 R0 K8 ["leftContents"]
       29 CALL                             R5 3 1
       30 SETTABLEKS                       R5 R4 K5 ["LeftContents"]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K0 ["createElement"]
       35 LOADK                            R6 K1 ["Frame"]
       36 NEWTABLE                         R7 1 0
       38 GETUPVAL                         R8 0
       39 GETTABLEKS                       R8 R8 K2 ["Tag"]
       41 LOADK                            R9 K6 ["RightContents"]
       42 SETTABLE                         R9 R7 R8
       43 GETTABLEKS                       R8 R0 K9 ["rightContents"]
       45 CALL                             R5 3 1
       46 SETTABLEKS                       R5 R4 K6 ["RightContents"]
       48 CALL                             R1 3 -1
       49 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 GETTABLEKS                       R3 R1 K9 ["memo"]
       18 MOVE                             R4 R2
       19 CALL                             R3 1 -1
       20 RETURN                           R3 -1
