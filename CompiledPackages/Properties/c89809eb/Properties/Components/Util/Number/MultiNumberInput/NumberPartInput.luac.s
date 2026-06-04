PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setPart"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["partConfig"]
        2 GETTABLEKS                       R1 R1 K1 ["name"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["useCallback"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 NEWTABLE                         R4 0 2
       12 GETTABLEKS                       R5 R0 K3 ["setPart"]
       14 MOVE                             R6 R1
       15 SETLIST                          R4 R5 2 [1]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R3 1
       19 GETUPVAL                         R4 2
       20 DUPTABLE                         R5 K12 [{"LayoutOrder", "Visible", "propertyPart", "readonly", "onEditStart", "onChange", "onEditFinish", "chip"}]
       21 GETTABLEKS                       R6 R0 K4 ["LayoutOrder"]
       23 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       25 GETTABLEKS                       R6 R0 K5 ["Visible"]
       27 SETTABLEKS                       R6 R5 K5 ["Visible"]
       29 GETTABLEKS                       R6 R0 K13 ["part"]
       31 SETTABLEKS                       R6 R5 K6 ["propertyPart"]
       33 GETTABLEKS                       R6 R0 K7 ["readonly"]
       35 SETTABLEKS                       R6 R5 K7 ["readonly"]
       37 GETTABLEKS                       R6 R0 K8 ["onEditStart"]
       39 SETTABLEKS                       R6 R5 K8 ["onEditStart"]
       41 SETTABLEKS                       R2 R5 K9 ["onChange"]
       43 GETTABLEKS                       R6 R0 K10 ["onEditFinish"]
       45 SETTABLEKS                       R6 R5 K10 ["onEditFinish"]
       47 GETTABLEKS                       R6 R0 K0 ["partConfig"]
       49 GETTABLEKS                       R6 R6 K11 ["chip"]
       51 SETTABLEKS                       R6 R5 K11 ["chip"]
       53 CALL                             R3 2 -1
       54 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["PropertyTypes"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Util"]
       25 GETTABLEKS                       R5 R5 K11 ["Number"]
       27 GETTABLEKS                       R5 R5 K12 ["SingleNumberInput"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R3 K13 ["createElement"]
       32 DUPCLOSURE                       R6 K14 [PROTO_1]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R4
       36 RETURN                           R6 1
