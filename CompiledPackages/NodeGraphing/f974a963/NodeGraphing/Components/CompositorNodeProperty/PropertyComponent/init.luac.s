PROTO_0:
        0 LOADN                            R4 1
        1 LOADN                            R5 5
        2 FASTCALL3                        STRING_SUB R0 R4 R5
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K2 [string.sub]
        7 CALL                             R2 3 1
        8 JUMPIFEQKS                       R2 K3 ["Enum."] ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R3 R0 K2 ["Type"]
        9 LOADN                            R6 1
       10 LOADN                            R7 5
       11 FASTCALL3                        STRING_SUB R3 R6 R7
       13 MOVE                             R5 R3
       14 GETIMPORT                        R4 K5 [string.sub]
       16 CALL                             R4 3 1
       17 JUMPIFEQKS                       R4 K6 ["Enum."] ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 JUMPIFNOT                        R2 ; [+11]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K7 ["createElement"]
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R3 R4 K8 ["Enum"]
       28 MOVE                             R4 R0
       29 GETTABLEKS                       R5 R0 K9 ["children"]
       31 CALL                             R2 3 -1
       32 RETURN                           R2 -1
       33 GETTABLEKS                       R2 R1 K10 ["renderProperty"]
       35 JUMPIFNOT                        R2 ; [+4]
       36 GETTABLEKS                       R2 R1 K10 ["renderProperty"]
       38 MOVE                             R3 R0
       39 CALL                             R2 1 1
       40 JUMPIFEQKNIL                     R2 ; [+2]
       42 RETURN                           R2 1
       43 GETUPVAL                         R4 2
       44 GETTABLEKS                       R5 R0 K2 ["Type"]
       46 GETTABLE                         R3 R4 R5
       47 JUMPIFNOTEQKNIL                  R3 ; [+23]
       49 GETUPVAL                         R5 3
       50 GETTABLEKS                       R6 R0 K2 ["Type"]
       52 GETTABLE                         R4 R5 R6
       53 JUMPIF                           R4 ; [+15]
       54 GETIMPORT                        R4 K12 [warn]
       56 LOADK                            R6 K13 ["No component found for %*"]
       57 GETTABLEKS                       R8 R0 K2 ["Type"]
       59 NAMECALL                         R6 R6 K14 ["format"]
       61 CALL                             R6 2 1
       62 MOVE                             R5 R6
       63 CALL                             R4 1 0
       64 GETUPVAL                         R4 3
       65 GETTABLEKS                       R5 R0 K2 ["Type"]
       67 LOADB                            R6 1
       68 SETTABLE                         R6 R4 R5
       69 LOADNIL                          R4
       70 RETURN                           R4 1
       71 GETUPVAL                         R4 0
       72 GETTABLEKS                       R4 R4 K7 ["createElement"]
       74 MOVE                             R5 R3
       75 MOVE                             R6 R0
       76 GETTABLEKS                       R7 R0 K9 ["children"]
       78 CALL                             R4 3 -1
       79 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeLibraryContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["PropertyComponentTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 DUPTABLE                         R4 K15 [{"Boolean", "Enum", "Number", "String"}]
       29 GETIMPORT                        R5 K5 [require]
       31 GETIMPORT                        R6 K1 [script]
       33 GETTABLEKS                       R6 R6 K16 ["BoolProperty"]
       35 CALL                             R5 1 1
       36 SETTABLEKS                       R5 R4 K11 ["Boolean"]
       38 GETIMPORT                        R5 K5 [require]
       40 GETIMPORT                        R6 K1 [script]
       42 GETTABLEKS                       R6 R6 K17 ["EnumProperty"]
       44 CALL                             R5 1 1
       45 SETTABLEKS                       R5 R4 K12 ["Enum"]
       47 GETIMPORT                        R5 K5 [require]
       49 GETIMPORT                        R6 K1 [script]
       51 GETTABLEKS                       R6 R6 K18 ["NumberProperty"]
       53 CALL                             R5 1 1
       54 SETTABLEKS                       R5 R4 K13 ["Number"]
       56 GETIMPORT                        R5 K5 [require]
       58 GETIMPORT                        R6 K1 [script]
       60 GETTABLEKS                       R6 R6 K19 ["StringProperty"]
       62 CALL                             R5 1 1
       63 SETTABLEKS                       R5 R4 K14 ["String"]
       65 DUPCLOSURE                       R5 K20 [PROTO_0]
       66 NEWTABLE                         R6 0 0
       68 DUPCLOSURE                       R7 K21 [PROTO_1]
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R6
       73 RETURN                           R7 1
