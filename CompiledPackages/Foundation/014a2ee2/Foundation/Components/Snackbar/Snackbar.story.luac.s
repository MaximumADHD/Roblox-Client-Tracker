PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K2 [{"icon", "title"}]
        2 GETTABLEKS                       R3 R0 K3 ["controls"]
        4 GETTABLEKS                       R3 R3 K0 ["icon"]
        6 SETTABLEKS                       R3 R2 K0 ["icon"]
        8 GETTABLEKS                       R3 R0 K3 ["controls"]
       10 GETTABLEKS                       R3 R3 K1 ["title"]
       12 SETTABLEKS                       R3 R2 K1 ["title"]
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["action activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["close clicked!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K4 [{"action", "icon", "onClose", "title"}]
        2 GETTABLEKS                       R4 R0 K5 ["controls"]
        4 GETTABLEKS                       R4 R4 K6 ["actionText"]
        6 JUMPIFEQKS                       R4 K7 [""] ; [+12]
        8 DUPTABLE                         R3 K10 [{"text", "onActivated"}]
        9 GETTABLEKS                       R4 R0 K5 ["controls"]
       11 GETTABLEKS                       R4 R4 K6 ["actionText"]
       13 SETTABLEKS                       R4 R3 K8 ["text"]
       15 DUPCLOSURE                       R4 K11 [PROTO_2]
       16 SETTABLEKS                       R4 R3 K9 ["onActivated"]
       18 JUMP                             ; [+1]
       19 LOADNIL                          R3
       20 SETTABLEKS                       R3 R2 K0 ["action"]
       22 GETTABLEKS                       R3 R0 K5 ["controls"]
       24 GETTABLEKS                       R3 R3 K1 ["icon"]
       26 SETTABLEKS                       R3 R2 K1 ["icon"]
       28 GETTABLEKS                       R4 R0 K5 ["controls"]
       30 GETTABLEKS                       R4 R4 K12 ["hasCloseAffordance"]
       32 JUMPIFNOT                        R4 ; [+2]
       33 DUPCLOSURE                       R3 K13 [PROTO_3]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R3
       36 SETTABLEKS                       R3 R2 K2 ["onClose"]
       38 GETTABLEKS                       R3 R0 K5 ["controls"]
       40 GETTABLEKS                       R3 R3 K3 ["title"]
       42 SETTABLEKS                       R3 R2 K3 ["title"]
       44 CALL                             R1 1 -1
       45 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Snackbar"]
       20 CALL                             R3 1 1
       21 DUPCLOSURE                       R4 K10 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R3
       24 DUPTABLE                         R5 K14 [{["summary"] = "Snackbar", ["stories"], ["controls"]}]
       25 NEWTABLE                         R6 0 2
       27 DUPTABLE                         R7 K18 [{["name"] = "No Button Snackbar", ["story"]}]
       28 DUPCLOSURE                       R8 K19 [PROTO_1]
       29 CAPTURE                          VAL R4
       30 SETTABLEKS                       R8 R7 K17 ["story"]
       32 DUPTABLE                         R8 K20 [{["name"] = "Snackbar", ["story"]}]
       33 DUPCLOSURE                       R9 K21 [PROTO_4]
       34 CAPTURE                          VAL R4
       35 SETTABLEKS                       R9 R8 K17 ["story"]
       37 SETLIST                          R6 R7 2 [1]
       39 SETTABLEKS                       R6 R5 K12 ["stories"]
       41 DUPTABLE                         R6 K29 [{["icon"], ["title"] = "This is a snackbar!", ["actionText"] = "Primary", ["hasCloseAffordance"] = True}]
       42 NEWTABLE                         R7 0 2
       44 LOADK                            R8 K30 ["diamond-simplified"]
       45 LOADK                            R9 K31 [""]
       46 SETLIST                          R7 R8 2 [1]
       48 SETTABLEKS                       R7 R6 K22 ["icon"]
       50 SETTABLEKS                       R6 R5 K13 ["controls"]
       52 RETURN                           R5 1
