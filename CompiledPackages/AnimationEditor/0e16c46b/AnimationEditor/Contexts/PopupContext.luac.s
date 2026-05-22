PROTO_0:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R3 K2 ["Opening popup %* with no popup context"]
        3 GETTABLEKS                       R5 R0 K3 ["title"]
        5 NAMECALL                         R3 R3 K4 ["format"]
        7 CALL                             R3 2 1
        8 MOVE                             R2 R3
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"popupComponent"}]
        1 GETTABLEKS                       R2 R0 K0 ["popupComponent"]
        3 SETTABLEKS                       R2 R1 K0 ["popupComponent"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["createElement"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["Provider"]
       11 DUPTABLE                         R4 K5 [{"value"}]
       12 SETTABLEKS                       R1 R4 K4 ["value"]
       14 GETTABLEKS                       R5 R0 K6 ["children"]
       16 CALL                             R2 3 -1
       17 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["UI"]
        6 GETTABLEKS                       R2 R2 K2 ["DockWidget"]
        8 DUPTABLE                         R3 K9 [{"Id", "Enabled", "Size", "Title", "InitialDockState", "OnClose"}]
        9 GETTABLEKS                       R4 R0 K10 ["id"]
       11 SETTABLEKS                       R4 R3 K3 ["Id"]
       13 LOADB                            R4 1
       14 SETTABLEKS                       R4 R3 K4 ["Enabled"]
       16 GETTABLEKS                       R4 R0 K11 ["size"]
       18 SETTABLEKS                       R4 R3 K5 ["Size"]
       20 GETTABLEKS                       R4 R0 K12 ["title"]
       22 SETTABLEKS                       R4 R3 K6 ["Title"]
       24 GETIMPORT                        R4 K15 [Enum.InitialDockState.Float]
       26 SETTABLEKS                       R4 R3 K7 ["InitialDockState"]
       28 GETTABLEKS                       R4 R0 K16 ["onClose"]
       30 SETTABLEKS                       R4 R3 K8 ["OnClose"]
       32 GETTABLEKS                       R4 R0 K17 ["children"]
       34 CALL                             R1 3 -1
       35 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["IsStudio"]
        3 CALL                             R2 1 1
        4 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        6 LOADK                            R3 K1 ["StudioProvider used outside of Studio"]
        7 GETIMPORT                        R1 K3 [assert]
        9 CALL                             R1 2 0
       10 DUPTABLE                         R1 K5 [{"popupComponent"}]
       11 GETUPVAL                         R2 1
       12 SETTABLEKS                       R2 R1 K4 ["popupComponent"]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K6 ["createElement"]
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K7 ["Provider"]
       20 DUPTABLE                         R4 K9 [{"value"}]
       21 SETTABLEKS                       R1 R4 K8 ["value"]
       23 GETTABLEKS                       R5 R0 K10 ["children"]
       25 CALL                             R2 3 -1
       26 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Parent"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 DUPCLOSURE                       R4 K13 [PROTO_0]
       28 DUPTABLE                         R5 K15 [{"popupComponent"}]
       29 SETTABLEKS                       R4 R5 K14 ["popupComponent"]
       31 GETTABLEKS                       R6 R3 K16 ["createContext"]
       33 MOVE                             R7 R5
       34 CALL                             R6 1 1
       35 DUPCLOSURE                       R7 K17 [PROTO_1]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R6
       38 DUPCLOSURE                       R8 K18 [PROTO_2]
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R2
       41 DUPCLOSURE                       R9 K19 [PROTO_3]
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R8
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R6
       46 DUPTABLE                         R10 K23 [{"Context", "Provider", "StudioProvider"}]
       47 SETTABLEKS                       R6 R10 K20 ["Context"]
       49 SETTABLEKS                       R7 R10 K21 ["Provider"]
       51 SETTABLEKS                       R9 R10 K22 ["StudioProvider"]
       53 RETURN                           R10 1
