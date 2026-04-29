PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"dialogOpen"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["dialogOpen"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"dialogOpen"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["dialogOpen"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createFragment"]
        3 DUPTABLE                         R2 K3 [{"Button", "Dialog"}]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K4 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K8 [{"AutomaticSize", "Text", "OnClick"}]
        9 GETIMPORT                        R6 K11 [Enum.AutomaticSize.X]
       11 SETTABLEKS                       R6 R5 K5 ["AutomaticSize"]
       13 LOADK                            R6 K12 ["Open RejectedThumbnailDialog"]
       14 SETTABLEKS                       R6 R5 K6 ["Text"]
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R6 R5 K7 ["OnClick"]
       20 CALL                             R3 2 1
       21 SETTABLEKS                       R3 R2 K1 ["Button"]
       23 GETTABLEKS                       R4 R0 K13 ["state"]
       25 GETTABLEKS                       R3 R4 K14 ["dialogOpen"]
       27 JUMPIFNOT                        R3 ; [+21]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R3 R4 K4 ["createElement"]
       31 GETUPVAL                         R4 2
       32 DUPTABLE                         R5 K18 [{"Theme", "OnClose", "Files"}]
       33 GETUPVAL                         R6 3
       34 SETTABLEKS                       R6 R5 K15 ["Theme"]
       36 NEWCLOSURE                       R6 P1
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R6 R5 K16 ["OnClose"]
       40 NEWTABLE                         R6 0 2
       42 LOADK                            R7 K19 ["doge.png"]
       43 LOADK                            R8 K20 ["cat.gif"]
       44 SETLIST                          R6 R7 2 [1]
       46 SETTABLEKS                       R6 R5 K17 ["Files"]
       48 CALL                             R3 2 1
       49 SETTABLEKS                       R3 R2 K2 ["Dialog"]
       51 CALL                             R1 1 -1
       52 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K8 ["Components"]
       22 GETTABLEKS                       R3 R4 K9 ["IconButton"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R7 R0 K2 ["UI"]
       29 GETTABLEKS                       R6 R7 K8 ["Components"]
       31 GETTABLEKS                       R5 R6 K10 ["MultiImagePickerWrapper"]
       33 GETTABLEKS                       R4 R5 K11 ["RejectedThumbnailDialog"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K6 [require]
       38 GETIMPORT                        R7 K1 [script]
       40 GETTABLEKS                       R6 R7 K4 ["Parent"]
       42 GETTABLEKS                       R5 R6 K12 ["style"]
       44 CALL                             R4 1 1
       45 GETTABLEKS                       R5 R1 K13 ["Component"]
       47 LOADK                            R7 K14 ["RejectedThumbnailDialogStory"]
       48 NAMECALL                         R5 R5 K15 ["extend"]
       50 CALL                             R5 2 1
       51 DUPCLOSURE                       R6 K16 [PROTO_2]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 SETTABLEKS                       R6 R5 K17 ["render"]
       58 RETURN                           R5 1
