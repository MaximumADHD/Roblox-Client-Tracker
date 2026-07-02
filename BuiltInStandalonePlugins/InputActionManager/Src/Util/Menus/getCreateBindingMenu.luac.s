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
       19 JUMPIFEQ                         R1 R3 ; [+20]
       21 DUPTABLE                         R5 K2 [{"id", "text"}]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K11 ["CREATE_BINDING_COMPOSITE"]
       25 SETTABLEKS                       R6 R5 K0 ["id"]
       27 LOADK                            R8 K4 ["Binding"]
       28 LOADK                            R9 K12 ["Composite"]
       29 NAMECALL                         R6 R0 K6 ["getText"]
       31 CALL                             R6 3 1
       32 SETTABLEKS                       R6 R5 K1 ["text"]
       34 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       36 MOVE                             R4 R2
       37 GETIMPORT                        R3 K15 [table.insert]
       39 CALL                             R3 2 0
       40 RETURN                           R2 1

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
       29 GETTABLEKS                       R4 R4 K12 ["MenuIdentifiers"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K13 [PROTO_0]
       33 CAPTURE                          VAL R3
       34 RETURN                           R4 1
