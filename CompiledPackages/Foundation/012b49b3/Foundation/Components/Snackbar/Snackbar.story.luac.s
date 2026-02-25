PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K2 [{"icon", "title"}]
        2 GETTABLEKS                       R4 R0 K3 ["controls"]
        4 GETTABLEKS                       R3 R4 K0 ["icon"]
        6 SETTABLEKS                       R3 R2 K0 ["icon"]
        8 GETTABLEKS                       R4 R0 K3 ["controls"]
       10 GETTABLEKS                       R3 R4 K1 ["title"]
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
        2 GETTABLEKS                       R5 R0 K5 ["controls"]
        4 GETTABLEKS                       R4 R5 K6 ["actionText"]
        6 JUMPIFEQKS                       R4 K7 [""] ; [+12]
        8 DUPTABLE                         R3 K10 [{"text", "onActivated"}]
        9 GETTABLEKS                       R5 R0 K5 ["controls"]
       11 GETTABLEKS                       R4 R5 K6 ["actionText"]
       13 SETTABLEKS                       R4 R3 K8 ["text"]
       15 DUPCLOSURE                       R4 K11 [PROTO_2]
       16 SETTABLEKS                       R4 R3 K9 ["onActivated"]
       18 JUMP                             ; [+1]
       19 LOADNIL                          R3
       20 SETTABLEKS                       R3 R2 K0 ["action"]
       22 GETTABLEKS                       R4 R0 K5 ["controls"]
       24 GETTABLEKS                       R3 R4 K1 ["icon"]
       26 SETTABLEKS                       R3 R2 K1 ["icon"]
       28 GETTABLEKS                       R5 R0 K5 ["controls"]
       30 GETTABLEKS                       R4 R5 K12 ["hasCloseAffordance"]
       32 JUMPIFNOT                        R4 ; [+2]
       33 DUPCLOSURE                       R3 K13 [PROTO_3]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R3
       36 SETTABLEKS                       R3 R2 K2 ["onClose"]
       38 GETTABLEKS                       R4 R0 K5 ["controls"]
       40 GETTABLEKS                       R3 R4 K3 ["title"]
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
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Snackbar"]
       20 CALL                             R3 1 1
       21 DUPCLOSURE                       R4 K10 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R3
       24 DUPTABLE                         R5 K14 [{"summary", "stories", "controls"}]
       25 LOADK                            R6 K9 ["Snackbar"]
       26 SETTABLEKS                       R6 R5 K11 ["summary"]
       28 NEWTABLE                         R6 0 2
       30 DUPTABLE                         R7 K17 [{"name", "story"}]
       31 LOADK                            R8 K18 ["No Button Snackbar"]
       32 SETTABLEKS                       R8 R7 K15 ["name"]
       34 DUPCLOSURE                       R8 K19 [PROTO_1]
       35 CAPTURE                          VAL R4
       36 SETTABLEKS                       R8 R7 K16 ["story"]
       38 DUPTABLE                         R8 K17 [{"name", "story"}]
       39 LOADK                            R9 K9 ["Snackbar"]
       40 SETTABLEKS                       R9 R8 K15 ["name"]
       42 DUPCLOSURE                       R9 K20 [PROTO_4]
       43 CAPTURE                          VAL R4
       44 SETTABLEKS                       R9 R8 K16 ["story"]
       46 SETLIST                          R6 R7 2 [1]
       48 SETTABLEKS                       R6 R5 K12 ["stories"]
       50 DUPTABLE                         R6 K25 [{"icon", "title", "actionText", "hasCloseAffordance"}]
       51 NEWTABLE                         R7 0 2
       53 LOADK                            R8 K26 ["diamond-simplified"]
       54 LOADK                            R9 K27 [""]
       55 SETLIST                          R7 R8 2 [1]
       57 SETTABLEKS                       R7 R6 K21 ["icon"]
       59 LOADK                            R7 K28 ["This is a snackbar!"]
       60 SETTABLEKS                       R7 R6 K22 ["title"]
       62 LOADK                            R7 K29 ["Primary"]
       63 SETTABLEKS                       R7 R6 K23 ["actionText"]
       65 LOADB                            R7 1
       66 SETTABLEKS                       R7 R6 K24 ["hasCloseAffordance"]
       68 SETTABLEKS                       R6 R5 K13 ["controls"]
       70 RETURN                           R5 1
