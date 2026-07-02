PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 DUPTABLE                         R3 K2 [{"enabled", "state"}]
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R5 R5 K0 ["enabled"]
        7 NOT                              R4 R5
        8 SETTABLEKS                       R4 R3 K0 ["enabled"]
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K3 ["SessionState"]
       13 GETTABLEKS                       R4 R4 K4 ["Parsed"]
       15 SETTABLEKS                       R4 R3 K1 ["state"]
       17 CALL                             R1 2 -1
       18 CALL                             R0 -1 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["TableEntry"]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K1 ["Checkbox"]
        8 DUPTABLE                         R5 K11 [{["label"] = "", ["isChecked"], ["isDisabled"], ["isIndeterminate"], ["onActivated"], ["size"], ["testId"] = "asset-row-checkbox"}]
        9 GETTABLEKS                       R6 R2 K12 ["enabled"]
       11 SETTABLEKS                       R6 R5 K4 ["isChecked"]
       13 GETTABLEKS                       R7 R2 K13 ["state"]
       15 GETUPVAL                         R8 3
       16 GETTABLEKS                       R8 R8 K14 ["SessionState"]
       18 GETTABLEKS                       R8 R8 K15 ["Invalid"]
       20 JUMPIFEQ                         R7 R8 ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 SETTABLEKS                       R6 R5 K5 ["isDisabled"]
       26 LOADB                            R6 1
       27 GETTABLEKS                       R7 R2 K13 ["state"]
       29 GETUPVAL                         R8 3
       30 GETTABLEKS                       R8 R8 K14 ["SessionState"]
       32 GETTABLEKS                       R8 R8 K16 ["Parsing"]
       34 JUMPIFEQ                         R7 R8 ; [+12]
       36 GETTABLEKS                       R7 R2 K13 ["state"]
       38 GETUPVAL                         R8 3
       39 GETTABLEKS                       R8 R8 K14 ["SessionState"]
       41 GETTABLEKS                       R8 R8 K17 ["Importing"]
       43 JUMPIFEQ                         R7 R8 ; [+2]
       45 LOADB                            R6 0 +1
       46 LOADB                            R6 1
       47 SETTABLEKS                       R6 R5 K6 ["isIndeterminate"]
       49 NEWCLOSURE                       R6 P0
       50 CAPTURE                          VAL R1
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          VAL R2
       53 CAPTURE                          UPVAL U3
       54 SETTABLEKS                       R6 R5 K7 ["onActivated"]
       56 GETUPVAL                         R6 5
       57 GETTABLEKS                       R6 R6 K18 ["InputSize"]
       59 GETTABLEKS                       R6 R6 K19 ["XSmall"]
       61 SETTABLEKS                       R6 R5 K8 ["size"]
       63 CALL                             R3 2 -1
       64 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["Enums"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R6 K12 ["Hooks"]
       31 GETTABLEKS                       R6 R6 K13 ["useDispatch"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K11 ["Src"]
       38 GETTABLEKS                       R7 R7 K14 ["Thunks"]
       40 GETTABLEKS                       R7 R7 K15 ["UpdateQueueItem"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K11 ["Src"]
       47 GETTABLEKS                       R8 R8 K16 ["Types"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K11 ["Src"]
       54 GETTABLEKS                       R9 R9 K16 ["Types"]
       56 GETTABLEKS                       R9 R9 K17 ["QueuedSession"]
       58 CALL                             R8 1 1
       59 DUPCLOSURE                       R9 K18 [PROTO_1]
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R4
       66 RETURN                           R9 1
