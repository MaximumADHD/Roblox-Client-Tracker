PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["isActive"]
        7 GETTABLEKS                       R0 R0 K1 ["get"]
        9 CALL                             R0 0 1
       10 JUMPIFNOT                        R0 ; [+4]
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K2 ["deactivateInstancePickerAsync"]
       14 CALL                             R0 0 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["ClearSelection"]
        2 DUPTABLE                         R3 K4 [{["shouldFocusProperties"] = False, ["onActivated"]}]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R4 R3 K3 ["onActivated"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyEditorTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Hooks"]
       16 GETTABLEKS                       R3 R3 K8 ["useAction"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K9 [PROTO_1]
       20 CAPTURE                          VAL R2
       21 RETURN                           R3 1
