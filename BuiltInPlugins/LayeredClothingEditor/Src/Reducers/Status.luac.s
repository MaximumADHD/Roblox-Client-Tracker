PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"toolMode"}]
        7 GETTABLEKS                       R5 R1 K2 ["toolMode"]
        9 SETTABLEKS                       R5 R4 K2 ["toolMode"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"draggerType"}]
        7 GETTABLEKS                       R5 R1 K2 ["draggerType"]
        9 SETTABLEKS                       R5 R4 K2 ["draggerType"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K10 ["Constants"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R1 K11 ["createReducer"]
       34 DUPTABLE                         R5 K14 [{"toolMode", "draggerType"}]
       35 GETTABLEKS                       R6 R3 K15 ["TOOL_MODE"]
       37 GETTABLEKS                       R6 R6 K16 ["None"]
       39 SETTABLEKS                       R6 R5 K12 ["toolMode"]
       41 GETIMPORT                        R6 K20 [Enum.RibbonTool.Select]
       43 SETTABLEKS                       R6 R5 K13 ["draggerType"]
       45 DUPTABLE                         R6 K23 [{"SetToolMode", "SetDraggerType"}]
       46 DUPCLOSURE                       R7 K24 [PROTO_0]
       47 CAPTURE                          VAL R2
       48 SETTABLEKS                       R7 R6 K21 ["SetToolMode"]
       50 DUPCLOSURE                       R7 K25 [PROTO_1]
       51 CAPTURE                          VAL R2
       52 SETTABLEKS                       R7 R6 K22 ["SetDraggerType"]
       54 CALL                             R4 2 -1
       55 RETURN                           R4 -1
