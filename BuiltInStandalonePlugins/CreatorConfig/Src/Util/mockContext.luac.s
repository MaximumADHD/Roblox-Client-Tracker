PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Expected children to be a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K6 ["provideMockContext"]
       18 GETUPVAL                         R2 1
       19 DUPTABLE                         R3 K8 [{"FoundationProvider"}]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K9 ["createElement"]
       23 GETUPVAL                         R5 3
       24 DUPTABLE                         R6 K12 [{"theme", "device"}]
       25 LOADK                            R7 K13 ["Dark"]
       26 SETTABLEKS                       R7 R6 K10 ["theme"]
       28 LOADK                            R7 K14 ["Desktop"]
       29 SETTABLEKS                       R7 R6 K11 ["device"]
       31 MOVE                             R7 R0
       32 CALL                             R4 3 1
       33 SETTABLEKS                       R4 R3 K7 ["FoundationProvider"]
       35 CALL                             R1 2 -1
       36 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CreatorConfig"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["TestHelpers"]
       23 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Packages"]
       29 GETTABLEKS                       R6 R6 K11 ["Foundation"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R5 K12 ["FoundationProvider"]
       34 NEWTABLE                         R7 0 3
       36 GETTABLEKS                       R8 R4 K13 ["Analytics"]
       38 GETTABLEKS                       R8 R8 K14 ["mock"]
       40 CALL                             R8 0 1
       41 GETTABLEKS                       R9 R4 K15 ["Localization"]
       43 GETTABLEKS                       R9 R9 K14 ["mock"]
       45 CALL                             R9 0 1
       46 GETTABLEKS                       R10 R4 K16 ["Design"]
       48 GETTABLEKS                       R10 R10 K14 ["mock"]
       50 GETIMPORT                        R11 K19 [Instance.new]
       52 LOADK                            R12 K20 ["StyleSheet"]
       53 CALL                             R11 1 -1
       54 CALL                             R10 -1 -1
       55 SETLIST                          R7 R8 -1 [1]
       57 DUPCLOSURE                       R8 K21 [PROTO_0]
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R6
       62 RETURN                           R8 1
