PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["attribute %* right click!"]
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R6 R7 K3 ["attributeRecord"]
        6 GETTABLEKS                       R5 R6 K4 ["id"]
        8 GETTABLEKS                       R4 R5 K5 ["name"]
       10 NAMECALL                         R2 R2 K6 ["format"]
       12 CALL                             R2 2 1
       13 MOVE                             R1 R2
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 0
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 1
        9 GETUPVAL                         R3 2
       10 DUPTABLE                         R4 K6 [{"LayoutOrder", "session", "property", "labelWidthBinding", "onSecondaryActivated"}]
       11 GETTABLEKS                       R5 R0 K1 ["LayoutOrder"]
       13 SETTABLEKS                       R5 R4 K1 ["LayoutOrder"]
       15 GETTABLEKS                       R5 R0 K2 ["session"]
       17 SETTABLEKS                       R5 R4 K2 ["session"]
       19 GETTABLEKS                       R5 R0 K7 ["attributeRecord"]
       21 SETTABLEKS                       R5 R4 K3 ["property"]
       23 GETTABLEKS                       R5 R0 K4 ["labelWidthBinding"]
       25 SETTABLEKS                       R5 R4 K4 ["labelWidthBinding"]
       27 SETTABLEKS                       R1 R4 K5 ["onSecondaryActivated"]
       29 NEWTABLE                         R5 0 0
       31 CALL                             R2 3 -1
       32 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R5 R0 K7 ["Components"]
       13 GETTABLEKS                       R4 R5 K8 ["PropertyEntries"]
       15 GETTABLEKS                       R3 R4 K9 ["PropertyRow"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K10 ["PropertyTypes"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K11 ["React"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K12 ["RpcTypes"]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R6 R4 K13 ["createElement"]
       35 DUPCLOSURE                       R7 K14 [PROTO_1]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R2
       39 RETURN                           R7 1
