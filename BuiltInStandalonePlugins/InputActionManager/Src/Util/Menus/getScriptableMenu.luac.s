PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADNIL                          R3
        4 RETURN                           R3 1
        5 NEWTABLE                         R3 0 0
        7 JUMPIFNOT                        R1 ; [+45]
        8 GETTABLEKS                       R4 R1 K0 ["type"]
       10 GETIMPORT                        R5 K4 [Enum.InputBindingType.Scriptable]
       12 JUMPIFNOTEQ                      R4 R5 ; [+40]
       14 DUPTABLE                         R6 K9 [{["id"], ["isChecked"] = True, ["text"]}]
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R7 R7 K10 ["SCRIPTABLE_ENABLED"]
       18 SETTABLEKS                       R7 R6 K5 ["id"]
       20 LOADK                            R9 K11 ["Menu"]
       21 LOADK                            R10 K12 ["Enabled"]
       22 NAMECALL                         R7 R0 K13 ["getText"]
       24 CALL                             R7 3 1
       25 SETTABLEKS                       R7 R6 K8 ["text"]
       27 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       29 MOVE                             R5 R3
       30 GETIMPORT                        R4 K16 [table.insert]
       32 CALL                             R4 2 0
       33 DUPTABLE                         R6 K19 [{["icon"] = "pencil", ["id"], ["text"]}]
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K20 ["SCRIPTABLE_RENAME"]
       37 SETTABLEKS                       R7 R6 K5 ["id"]
       39 LOADK                            R9 K11 ["Menu"]
       40 LOADK                            R10 K21 ["Rename"]
       41 NAMECALL                         R7 R0 K13 ["getText"]
       43 CALL                             R7 3 1
       44 SETTABLEKS                       R7 R6 K8 ["text"]
       46 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       48 MOVE                             R5 R3
       49 GETIMPORT                        R4 K16 [table.insert]
       51 CALL                             R4 2 0
       52 JUMP                             ; [+19]
       53 DUPTABLE                         R6 K23 [{["id"], ["isChecked"] = False, ["text"]}]
       54 GETUPVAL                         R7 1
       55 GETTABLEKS                       R7 R7 K10 ["SCRIPTABLE_ENABLED"]
       57 SETTABLEKS                       R7 R6 K5 ["id"]
       59 LOADK                            R9 K11 ["Menu"]
       60 LOADK                            R10 K12 ["Enabled"]
       61 NAMECALL                         R7 R0 K13 ["getText"]
       63 CALL                             R7 3 1
       64 SETTABLEKS                       R7 R6 K8 ["text"]
       66 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       68 MOVE                             R5 R3
       69 GETIMPORT                        R4 K16 [table.insert]
       71 CALL                             R4 2 0
       72 DUPTABLE                         R4 K26 [{"id", "isDisabled", "items", "text"}]
       73 GETUPVAL                         R5 1
       74 GETTABLEKS                       R5 R5 K27 ["SCRIPTABLE"]
       76 SETTABLEKS                       R5 R4 K5 ["id"]
       78 NOT                              R5 R2
       79 SETTABLEKS                       R5 R4 K24 ["isDisabled"]
       81 SETTABLEKS                       R3 R4 K25 ["items"]
       83 LOADK                            R7 K11 ["Menu"]
       84 LOADK                            R8 K3 ["Scriptable"]
       85 NAMECALL                         R5 R0 K13 ["getText"]
       87 CALL                             R5 3 1
       88 SETTABLEKS                       R5 R4 K8 ["text"]
       90 RETURN                           R4 1

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
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K13 ["Flags"]
       38 GETTABLEKS                       R5 R5 K14 ["getFFlagIAMNodePropertyMenu"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K15 [PROTO_0]
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R3
       44 RETURN                           R5 1
