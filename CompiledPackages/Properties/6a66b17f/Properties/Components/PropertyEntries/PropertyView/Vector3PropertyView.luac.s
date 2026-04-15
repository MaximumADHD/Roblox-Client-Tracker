PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        4 GETTABLEKS                       R2 R3 K1 ["join"]
        6 MOVE                             R3 R0
        7 DUPTABLE                         R4 K3 [{"partConfigs"}]
        8 GETUPVAL                         R5 2
        9 SETTABLEKS                       R5 R4 K2 ["partConfigs"]
       11 CALL                             R2 2 1
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R0 K7 ["Util"]
       13 GETTABLEKS                       R3 R4 K8 ["Constants"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["Cryo"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R8 R0 K10 ["Components"]
       25 GETTABLEKS                       R7 R8 K7 ["Util"]
       27 GETTABLEKS                       R6 R7 K11 ["Number"]
       29 GETTABLEKS                       R5 R6 K12 ["MultiNumberInput"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETIMPORT                        R8 K1 [script]
       36 GETTABLEKS                       R7 R8 K4 ["Parent"]
       38 GETTABLEKS                       R6 R7 K13 ["PropertyViewTypes"]
       40 CALL                             R5 1 1
       41 NEWTABLE                         R6 0 3
       43 DUPTABLE                         R7 K16 [{"name", "chip"}]
       44 LOADK                            R8 K17 ["x"]
       45 SETTABLEKS                       R8 R7 K14 ["name"]
       47 DUPTABLE                         R8 K19 [{"color"}]
       48 GETTABLEKS                       R10 R2 K20 ["VectorColors"]
       50 GETTABLEKS                       R9 R10 K21 ["X"]
       52 SETTABLEKS                       R9 R8 K18 ["color"]
       54 SETTABLEKS                       R8 R7 K15 ["chip"]
       56 DUPTABLE                         R8 K16 [{"name", "chip"}]
       57 LOADK                            R9 K22 ["y"]
       58 SETTABLEKS                       R9 R8 K14 ["name"]
       60 DUPTABLE                         R9 K19 [{"color"}]
       61 GETTABLEKS                       R11 R2 K20 ["VectorColors"]
       63 GETTABLEKS                       R10 R11 K23 ["Y"]
       65 SETTABLEKS                       R10 R9 K18 ["color"]
       67 SETTABLEKS                       R9 R8 K15 ["chip"]
       69 DUPTABLE                         R9 K16 [{"name", "chip"}]
       70 LOADK                            R10 K24 ["z"]
       71 SETTABLEKS                       R10 R9 K14 ["name"]
       73 DUPTABLE                         R10 K19 [{"color"}]
       74 GETTABLEKS                       R12 R2 K20 ["VectorColors"]
       76 GETTABLEKS                       R11 R12 K25 ["Z"]
       78 SETTABLEKS                       R11 R10 K18 ["color"]
       80 SETTABLEKS                       R10 R9 K15 ["chip"]
       82 SETLIST                          R6 R7 3 [1]
       84 DUPCLOSURE                       R7 K26 [PROTO_0]
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R6
       88 RETURN                           R7 1
