PROTO_0:
        0 NEWTABLE                         R2 0 1
        2 DUPTABLE                         R3 K2 [{"id", "text"}]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K3 ["CREATE_BINDING_KEYCODE"]
        6 SETTABLEKS                       R4 R3 K0 ["id"]
        8 LOADK                            R6 K4 ["Binding"]
        9 LOADK                            R7 K5 ["Keycode"]
       10 NAMECALL                         R4 R0 K6 ["getText"]
       12 CALL                             R4 3 1
       13 SETTABLEKS                       R4 R3 K1 ["text"]
       15 SETLIST                          R2 R3 1 [1]
       17 GETIMPORT                        R3 K10 [Enum.InputActionType.Bool]
       19 JUMPIFEQ                         R1 R3 ; [+29]
       21 GETUPVAL                         R3 1
       22 CALL                             R3 0 1
       23 JUMPIFNOT                        R3 ; [+6]
       24 JUMPIFEQKNIL                     R1 ; [+24]
       26 GETUPVAL                         R4 2
       27 GETTABLE                         R3 R4 R1
       28 JUMPIFEQKNIL                     R3 ; [+20]
       30 DUPTABLE                         R5 K2 [{"id", "text"}]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R6 R6 K11 ["CREATE_BINDING_COMPOSITE"]
       34 SETTABLEKS                       R6 R5 K0 ["id"]
       36 LOADK                            R8 K4 ["Binding"]
       37 LOADK                            R9 K12 ["Composite"]
       38 NAMECALL                         R6 R0 K6 ["getText"]
       40 CALL                             R6 3 1
       41 SETTABLEKS                       R6 R5 K1 ["text"]
       43 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       45 MOVE                             R4 R2
       46 GETIMPORT                        R3 K15 [table.insert]
       48 CALL                             R3 2 0
       49 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Constants"]
       29 GETTABLEKS                       R4 R4 K12 ["DirectionPropertyNames"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Util"]
       38 GETTABLEKS                       R5 R5 K11 ["Constants"]
       40 GETTABLEKS                       R5 R5 K13 ["MenuIdentifiers"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K8 ["Src"]
       47 GETTABLEKS                       R6 R6 K14 ["Flags"]
       49 GETTABLEKS                       R6 R6 K15 ["getFFlagIAMViewportPositionType"]
       51 CALL                             R5 1 1
       52 DUPCLOSURE                       R6 K16 [PROTO_0]
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R3
       56 RETURN                           R6 1
