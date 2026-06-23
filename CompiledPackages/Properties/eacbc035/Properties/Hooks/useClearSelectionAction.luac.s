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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bindToAction"]
        3 DUPTABLE                         R1 K4 [{"uri", "shouldFocusProperties", "onActionActivated"}]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K5 ["fromAction"]
        7 LOADK                            R3 K6 ["BuilderTools"]
        8 LOADK                            R4 K7 ["ClearSelection"]
        9 CALL                             R2 2 1
       10 SETTABLEKS                       R2 R1 K1 ["uri"]
       12 LOADB                            R2 0
       13 SETTABLEKS                       R2 R1 K2 ["shouldFocusProperties"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U2
       17 SETTABLEKS                       R2 R1 K3 ["onActionActivated"]
       19 CALL                             R0 1 -1
       20 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useEffect"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R0
       14 NEWTABLE                         R4 0 1
       16 MOVE                             R5 R0
       17 SETLIST                          R4 R5 1 [1]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["ActionContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["PropertyEditorTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R4 K11 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K13 ["Util"]
       37 GETTABLEKS                       R5 R5 K14 ["StudioUri"]
       39 DUPCLOSURE                       R6 K15 [PROTO_2]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R5
       43 RETURN                           R6 1
