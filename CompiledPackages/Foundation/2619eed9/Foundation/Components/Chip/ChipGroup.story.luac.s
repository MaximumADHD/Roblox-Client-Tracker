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
        9 DUPTABLE                         R4 K4 [{"tag"}]
       10 LOADK                            R5 K5 ["row wrap gap-small size-full-0 auto-y"]
       11 SETTABLEKS                       R5 R4 K3 ["tag"]
       13 DUPTABLE                         R5 K8 [{"Chip1", "Chip2"}]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K2 ["createElement"]
       17 GETUPVAL                         R7 2
       18 DUPTABLE                         R8 K13 [{"icon", "text", "onActivated", "isChecked"}]
       19 LOADK                            R9 K14 ["icons/common/robux"]
       20 SETTABLEKS                       R9 R8 K9 ["icon"]
       22 LOADK                            R9 K1 ["I'm a chip"]
       23 SETTABLEKS                       R9 R8 K10 ["text"]
       25 NEWCLOSURE                       R9 P0
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R9 R8 K11 ["onActivated"]
       29 JUMPIFEQKS                       R0 K1 ["I'm a chip"] ; [+2]
       31 LOADB                            R9 0 +1
       32 LOADB                            R9 1
       33 SETTABLEKS                       R9 R8 K12 ["isChecked"]
       35 CALL                             R6 2 1
       36 SETTABLEKS                       R6 R5 K6 ["Chip1"]
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K2 ["createElement"]
       41 GETUPVAL                         R7 2
       42 DUPTABLE                         R8 K15 [{"text", "onActivated", "isChecked"}]
       43 LOADK                            R9 K16 ["I'm a dale"]
       44 SETTABLEKS                       R9 R8 K10 ["text"]
       46 NEWCLOSURE                       R9 P1
       47 CAPTURE                          VAL R1
       48 SETTABLEKS                       R9 R8 K11 ["onActivated"]
       50 JUMPIFEQKS                       R0 K16 ["I'm a dale"] ; [+2]
       52 LOADB                            R9 0 +1
       53 LOADB                            R9 1
       54 SETTABLEKS                       R9 R8 K12 ["isChecked"]
       56 CALL                             R6 2 1
       57 SETTABLEKS                       R6 R5 K7 ["Chip2"]
       59 CALL                             R2 3 -1
       60 RETURN                           R2 -1

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
       35 DUPTABLE                         R6 K15 [{"summary", "story"}]
       36 LOADK                            R7 K9 ["Chip"]
       37 SETTABLEKS                       R7 R6 K13 ["summary"]
       39 DUPCLOSURE                       R7 K16 [PROTO_2]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R3
       43 SETTABLEKS                       R7 R6 K14 ["story"]
       45 RETURN                           R6 1
