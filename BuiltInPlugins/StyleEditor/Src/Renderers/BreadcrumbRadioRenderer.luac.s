PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnClick"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["Value"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Schema"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 NEWTABLE                         R4 1 0
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K2 ["Tag"]
       11 GETUPVAL                         R6 2
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R8 R8 K2 ["Tag"]
       15 GETTABLE                         R7 R0 R8
       16 LOADK                            R8 K3 ["X-Middle X-Row"]
       17 CALL                             R6 2 1
       18 SETTABLE                         R6 R4 R5
       19 DUPTABLE                         R5 K6 [{"Label", "Radio"}]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K1 ["createElement"]
       23 GETUPVAL                         R7 3
       24 NEWTABLE                         R8 8 0
       26 GETTABLEKS                       R9 R0 K7 ["Editing"]
       28 JUMPIF                           R9 ; [+4]
       29 MOVE                             R9 R1
       30 JUMPIFNOT                        R9 ; [+2]
       31 GETTABLEKS                       R9 R1 K7 ["Editing"]
       33 SETTABLEKS                       R9 R8 K7 ["Editing"]
       35 LOADN                            R9 1
       36 SETTABLEKS                       R9 R8 K8 ["LayoutOrder"]
       38 GETTABLEKS                       R9 R0 K9 ["OnPressed"]
       40 SETTABLEKS                       R9 R8 K9 ["OnPressed"]
       42 GETTABLEKS                       R9 R0 K10 ["OnDoubleClick"]
       44 SETTABLEKS                       R9 R8 K10 ["OnDoubleClick"]
       46 GETTABLEKS                       R9 R0 K11 ["OnChanged"]
       48 SETTABLEKS                       R9 R8 K12 ["OnEdited"]
       50 GETTABLEKS                       R9 R0 K13 ["Value"]
       52 GETTABLEKS                       R9 R9 K14 ["Name"]
       54 SETTABLEKS                       R9 R8 K15 ["Text"]
       56 GETUPVAL                         R9 0
       57 GETTABLEKS                       R9 R9 K2 ["Tag"]
       59 LOADK                            R10 K16 ["BreadcrumbRadioSize"]
       60 SETTABLE                         R10 R8 R9
       61 CALL                             R6 2 1
       62 SETTABLEKS                       R6 R5 K4 ["Label"]
       64 GETUPVAL                         R6 0
       65 GETTABLEKS                       R6 R6 K1 ["createElement"]
       67 GETUPVAL                         R7 4
       68 DUPTABLE                         R8 K22 [{["LayoutOrder"] = 2, ["Key"], ["OnClick"], ["Selected"], ["Text"] = "Active"}]
       69 GETTABLEKS                       R9 R0 K13 ["Value"]
       71 NAMECALL                         R9 R9 K23 ["GetDebugId"]
       73 CALL                             R9 1 1
       74 SETTABLEKS                       R9 R8 K18 ["Key"]
       76 NEWCLOSURE                       R9 P0
       77 CAPTURE                          VAL R0
       78 SETTABLEKS                       R9 R8 K19 ["OnClick"]
       80 GETTABLEKS                       R9 R0 K20 ["Selected"]
       82 SETTABLEKS                       R9 R8 K20 ["Selected"]
       84 CALL                             R6 2 1
       85 SETTABLEKS                       R6 R5 K5 ["Radio"]
       87 CALL                             R2 3 -1
       88 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["UI"]
       25 GETTABLEKS                       R4 R3 K9 ["Breadcrumb"]
       27 GETTABLEKS                       R5 R3 K10 ["Pane"]
       29 GETTABLEKS                       R6 R3 K11 ["RadioButton"]
       31 GETTABLEKS                       R7 R2 K12 ["Styling"]
       33 GETTABLEKS                       R7 R7 K13 ["joinTags"]
       35 DUPCLOSURE                       R8 K14 [PROTO_1]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R7
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R6
       41 RETURN                           R8 1
