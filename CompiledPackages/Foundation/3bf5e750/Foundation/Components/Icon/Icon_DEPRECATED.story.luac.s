PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K4 [{"name", "size"}]
        7 GETTABLEKS                       R5 R1 K2 ["name"]
        9 SETTABLEKS                       R5 R4 K2 ["name"]
       11 GETTABLEKS                       R5 R1 K3 ["size"]
       13 SETTABLEKS                       R5 R4 K3 ["size"]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

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
       18 GETTABLEKS                       R4 R4 K9 ["Icon"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Enums"]
       25 GETTABLEKS                       R5 R5 K11 ["IconSize"]
       27 CALL                             R4 1 1
       28 DUPCLOSURE                       R5 K12 [PROTO_0]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 DUPTABLE                         R6 K17 [{["summary"] = "Icon component for displaying icons", ["story"], ["controls"]}]
       32 SETTABLEKS                       R5 R6 K15 ["story"]
       34 DUPTABLE                         R7 K20 [{"name", "size"}]
       35 NEWTABLE                         R8 0 3
       37 LOADK                            R9 K21 ["icons/common/search"]
       38 LOADK                            R10 K22 ["icons/controls/voice/microphone_off_light"]
       39 LOADK                            R11 K23 ["icons/controls/voice/video_on_light"]
       40 SETLIST                          R8 R9 3 [1]
       42 SETTABLEKS                       R8 R7 K18 ["name"]
       44 NEWTABLE                         R8 0 3
       46 GETTABLEKS                       R9 R4 K24 ["Medium"]
       48 GETTABLEKS                       R10 R4 K25 ["Small"]
       50 GETTABLEKS                       R11 R4 K26 ["Large"]
       52 SETLIST                          R8 R9 3 [1]
       54 SETTABLEKS                       R8 R7 K19 ["size"]
       56 SETTABLEKS                       R7 R6 K16 ["controls"]
       58 RETURN                           R6 1
