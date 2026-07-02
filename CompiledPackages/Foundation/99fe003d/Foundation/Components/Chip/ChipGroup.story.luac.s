PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["I'm a chip"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["I'm a dale"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADK                            R1 K1 ["I'm a chip"]
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["createElement"]
        8 GETUPVAL                         R3 1
        9 DUPTABLE                         R4 K5 [{["tag"] = "row wrap gap-small size-full-0 auto-y"}]
       10 DUPTABLE                         R5 K8 [{"Chip1", "Chip2"}]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K2 ["createElement"]
       14 GETUPVAL                         R7 2
       15 DUPTABLE                         R8 K14 [{["icon"] = "icons/common/robux", ["text"] = "I'm a chip", ["onActivated"], ["isChecked"]}]
       16 NEWCLOSURE                       R9 P0
       17 CAPTURE                          VAL R1
       18 SETTABLEKS                       R9 R8 K12 ["onActivated"]
       20 JUMPIFEQKS                       R0 K1 ["I'm a chip"] ; [+2]
       22 LOADB                            R9 0 +1
       23 LOADB                            R9 1
       24 SETTABLEKS                       R9 R8 K13 ["isChecked"]
       26 CALL                             R6 2 1
       27 SETTABLEKS                       R6 R5 K6 ["Chip1"]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K2 ["createElement"]
       32 GETUPVAL                         R7 2
       33 DUPTABLE                         R8 K16 [{["text"] = "I'm a dale", ["onActivated"], ["isChecked"]}]
       34 NEWCLOSURE                       R9 P1
       35 CAPTURE                          VAL R1
       36 SETTABLEKS                       R9 R8 K12 ["onActivated"]
       38 JUMPIFEQKS                       R0 K15 ["I'm a dale"] ; [+2]
       40 LOADB                            R9 0 +1
       41 LOADB                            R9 1
       42 SETTABLEKS                       R9 R8 K13 ["isChecked"]
       44 CALL                             R6 2 1
       45 SETTABLEKS                       R6 R5 K7 ["Chip2"]
       47 CALL                             R2 3 -1
       48 RETURN                           R2 -1

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
       18 GETTABLEKS                       R4 R4 K9 ["Chip"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Enums"]
       25 GETTABLEKS                       R5 R5 K11 ["FillBehavior"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R6 K12 ["View"]
       34 CALL                             R5 1 1
       35 DUPTABLE                         R6 K15 [{["summary"] = "Chip", ["story"]}]
       36 DUPCLOSURE                       R7 K16 [PROTO_2]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R3
       40 SETTABLEKS                       R7 R6 K14 ["story"]
       42 RETURN                           R6 1
