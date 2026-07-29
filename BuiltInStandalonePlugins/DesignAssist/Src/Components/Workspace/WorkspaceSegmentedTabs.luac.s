PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["tabs"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["id"]
        9 LOADK                            R9 K2 ["Tab_"]
       10 MOVE                             R10 R7
       11 CONCAT                           R8 R9 R10
       12 GETUPVAL                         R9 0
       13 GETTABLEKS                       R9 R9 K3 ["createElement"]
       15 GETUPVAL                         R10 1
       16 GETTABLEKS                       R10 R10 K4 ["Button"]
       18 DUPTABLE                         R11 K10 [{"LayoutOrder", "text", "size", "variant", "onActivated"}]
       19 SETTABLEKS                       R5 R11 K5 ["LayoutOrder"]
       21 GETTABLEKS                       R12 R6 K6 ["text"]
       23 SETTABLEKS                       R12 R11 K6 ["text"]
       25 GETUPVAL                         R12 1
       26 GETTABLEKS                       R12 R12 K11 ["Enums"]
       28 GETTABLEKS                       R12 R12 K12 ["InputSize"]
       30 GETTABLEKS                       R12 R12 K13 ["XSmall"]
       32 SETTABLEKS                       R12 R11 K7 ["size"]
       34 GETTABLEKS                       R13 R0 K14 ["value"]
       36 JUMPIFNOTEQ                      R7 R13 ; [+9]
       38 GETUPVAL                         R12 1
       39 GETTABLEKS                       R12 R12 K11 ["Enums"]
       41 GETTABLEKS                       R12 R12 K15 ["ButtonVariant"]
       43 GETTABLEKS                       R12 R12 K16 ["Standard"]
       45 JUMP                             ; [+7]
       46 GETUPVAL                         R12 1
       47 GETTABLEKS                       R12 R12 K11 ["Enums"]
       49 GETTABLEKS                       R12 R12 K15 ["ButtonVariant"]
       51 GETTABLEKS                       R12 R12 K17 ["Utility"]
       53 SETTABLEKS                       R12 R11 K8 ["variant"]
       55 NEWCLOSURE                       R12 P0
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R7
       58 SETTABLEKS                       R12 R11 K9 ["onActivated"]
       60 CALL                             R9 2 1
       61 SETTABLE                         R9 R1 R8
       62 FORGLOOP                         R2 2 ; [-56]
       64 GETUPVAL                         R2 0
       65 GETTABLEKS                       R2 R2 K3 ["createElement"]
       67 GETUPVAL                         R3 1
       68 GETTABLEKS                       R3 R3 K18 ["View"]
       70 DUPTABLE                         R4 K21 [{["LayoutOrder"], ["tag"] = "row auto-xy align-y-center gap-xsmall"}]
       71 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       73 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       75 MOVE                             R5 R1
       76 CALL                             R2 3 -1
       77 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_1]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1
