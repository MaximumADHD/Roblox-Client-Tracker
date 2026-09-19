PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createFragment"]
        3 DUPTABLE                         R2 K3 [{"Button", "Dialog"}]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K4 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K9 [{["AutomaticSize"], ["Text"] = "Open RejectedThumbnailDialog", ["OnClick"]}]
        9 GETIMPORT                        R6 K12 [Enum.AutomaticSize.X]
       11 SETTABLEKS                       R6 R5 K5 ["AutomaticSize"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R6 R5 K8 ["OnClick"]
       17 CALL                             R3 2 1
       18 SETTABLEKS                       R3 R2 K1 ["Button"]
       20 GETTABLEKS                       R3 R0 K13 ["state"]
       22 GETTABLEKS                       R3 R3 K14 ["dialogOpen"]
       24 JUMPIFNOT                        R3 ; [+21]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K4 ["createElement"]
       28 GETUPVAL                         R4 2
       29 DUPTABLE                         R5 K18 [{"Theme", "OnClose", "Files"}]
       30 GETUPVAL                         R6 3
       31 SETTABLEKS                       R6 R5 K15 ["Theme"]
       33 NEWCLOSURE                       R6 P1
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R6 R5 K16 ["OnClose"]
       37 NEWTABLE                         R6 0 2
       39 LOADK                            R7 K19 ["doge.png"]
       40 LOADK                            R8 K20 ["cat.gif"]
       41 SETLIST                          R6 R7 2 [1]
       43 SETTABLEKS                       R6 R5 K17 ["Files"]
       45 CALL                             R3 2 1
       46 SETTABLEKS                       R3 R2 K2 ["Dialog"]
       48 CALL                             R1 1 -1
       49 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["IconButton"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["MultiImagePickerWrapper"]
       33 GETTABLEKS                       R4 R4 K11 ["RejectedThumbnailDialog"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K6 [require]
       38 GETIMPORT                        R5 K1 [script]
       40 GETTABLEKS                       R5 R5 K4 ["Parent"]
       42 GETTABLEKS                       R5 R5 K12 ["style"]
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
