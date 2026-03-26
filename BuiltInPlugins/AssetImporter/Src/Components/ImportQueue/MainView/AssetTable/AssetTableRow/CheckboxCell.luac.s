PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 DUPTABLE                         R3 K2 [{"enabled", "state"}]
        4 GETUPVAL                         R6 2
        5 GETTABLEKS                       R5 R6 K0 ["enabled"]
        7 NOT                              R4 R5
        8 SETTABLEKS                       R4 R3 K0 ["enabled"]
       10 GETUPVAL                         R6 3
       11 GETTABLEKS                       R5 R6 K3 ["SessionState"]
       13 GETTABLEKS                       R4 R5 K4 ["Parsed"]
       15 SETTABLEKS                       R4 R3 K1 ["state"]
       17 CALL                             R1 2 -1
       18 CALL                             R0 -1 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["TableEntry"]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R4 R5 K1 ["Checkbox"]
        8 DUPTABLE                         R5 K8 [{"label", "isChecked", "isIndeterminate", "onActivated", "size", "testId"}]
        9 LOADK                            R6 K9 [""]
       10 SETTABLEKS                       R6 R5 K2 ["label"]
       12 GETTABLEKS                       R6 R2 K10 ["enabled"]
       14 SETTABLEKS                       R6 R5 K3 ["isChecked"]
       16 LOADB                            R6 1
       17 GETTABLEKS                       R7 R2 K11 ["state"]
       19 GETUPVAL                         R10 3
       20 GETTABLEKS                       R9 R10 K12 ["SessionState"]
       22 GETTABLEKS                       R8 R9 K13 ["Parsing"]
       24 JUMPIFEQ                         R7 R8 ; [+12]
       26 GETTABLEKS                       R7 R2 K11 ["state"]
       28 GETUPVAL                         R10 3
       29 GETTABLEKS                       R9 R10 K12 ["SessionState"]
       31 GETTABLEKS                       R8 R9 K14 ["Importing"]
       33 JUMPIFEQ                         R7 R8 ; [+2]
       35 LOADB                            R6 0 +1
       36 LOADB                            R6 1
       37 SETTABLEKS                       R6 R5 K4 ["isIndeterminate"]
       39 NEWCLOSURE                       R6 P0
       40 CAPTURE                          VAL R1
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          VAL R2
       43 CAPTURE                          UPVAL U3
       44 SETTABLEKS                       R6 R5 K5 ["onActivated"]
       46 GETUPVAL                         R8 5
       47 GETTABLEKS                       R7 R8 K15 ["InputSize"]
       49 GETTABLEKS                       R6 R7 K16 ["XSmall"]
       51 SETTABLEKS                       R6 R5 K6 ["size"]
       53 LOADK                            R6 K17 ["asset-row-checkbox"]
       54 SETTABLEKS                       R6 R5 K7 ["testId"]
       56 CALL                             R3 2 -1
       57 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["Enums"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R8 R0 K11 ["Src"]
       29 GETTABLEKS                       R7 R8 K12 ["Hooks"]
       31 GETTABLEKS                       R6 R7 K13 ["useDispatch"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R9 R0 K11 ["Src"]
       38 GETTABLEKS                       R8 R9 K14 ["Thunks"]
       40 GETTABLEKS                       R7 R8 K15 ["UpdateQueueItem"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R9 R0 K11 ["Src"]
       47 GETTABLEKS                       R8 R9 K16 ["Types"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R11 R0 K11 ["Src"]
       54 GETTABLEKS                       R10 R11 K16 ["Types"]
       56 GETTABLEKS                       R9 R10 K17 ["QueuedSession"]
       58 CALL                             R8 1 1
       59 DUPCLOSURE                       R9 K18 [PROTO_1]
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R4
       66 RETURN                           R9 1
