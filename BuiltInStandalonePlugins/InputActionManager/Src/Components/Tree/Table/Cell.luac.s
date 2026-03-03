PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["inputBindings"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETUPVAL                         R7 0
        8 MOVE                             R8 R6
        9 GETTABLEKS                       R9 R0 K1 ["inputActionType"]
       11 GETTABLEKS                       R10 R0 K2 ["device"]
       13 CALL                             R7 3 1
       14 JUMPIFNOT                        R7 ; [+7]
       15 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       17 MOVE                             R9 R1
       18 MOVE                             R10 R7
       19 GETIMPORT                        R8 K5 [table.insert]
       21 CALL                             R8 2 0
       22 FORGLOOP                         R2 2 ; [-16]
       24 LOADK                            R2 K6 ["UNSET"]
       25 LENGTH                           R3 R1
       26 JUMPIFNOTEQKN                    R3 K7 [1] ; [+3]
       28 GETTABLEN                        R2 R1 1
       29 JUMP                             ; [+10]
       30 LENGTH                           R3 R1
       31 LOADN                            R4 1
       32 JUMPIFNOTLT                      R4 R3 ; [+7]
       34 GETIMPORT                        R3 K9 [table.concat]
       36 MOVE                             R4 R1
       37 LOADK                            R5 K10 [", "]
       38 CALL                             R3 2 1
       39 MOVE                             R2 R3
       40 GETUPVAL                         R4 1
       41 GETTABLEKS                       R3 R4 K11 ["createElement"]
       43 GETUPVAL                         R4 2
       44 DUPTABLE                         R5 K15 [{"LayoutOrder", "tag", "Text"}]
       45 GETTABLEKS                       R6 R0 K12 ["LayoutOrder"]
       47 SETTABLEKS                       R6 R5 K12 ["LayoutOrder"]
       49 LOADK                            R6 K16 ["size-full-full text-align-x-left text-body-medium padding-small columns-input"]
       50 SETTABLEKS                       R6 R5 K13 ["tag"]
       52 SETTABLEKS                       R2 R5 K14 ["Text"]
       54 CALL                             R3 2 -1
       55 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Text"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R6 R0 K10 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Types"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R8 R0 K10 ["Src"]
       34 GETTABLEKS                       R7 R8 K12 ["Util"]
       36 GETTABLEKS                       R6 R7 K13 ["getStringForBinding"]
       38 CALL                             R5 1 1
       39 DUPCLOSURE                       R6 K14 [PROTO_0]
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R3
       43 RETURN                           R6 1
