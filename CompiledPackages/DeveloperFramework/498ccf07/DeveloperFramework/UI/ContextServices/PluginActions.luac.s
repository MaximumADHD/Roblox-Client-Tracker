PROTO_0:
        0 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K0 ["plugin must be provided"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K3 ["values"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K4 ["strictInterface"]
       13 DUPTABLE                         R5 K11 [{"id", "text", "statusTip", "iconName", "allowBinding", "defaultShortcut"}]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K12 ["string"]
       17 SETTABLEKS                       R6 R5 K5 ["id"]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K12 ["string"]
       22 SETTABLEKS                       R6 R5 K6 ["text"]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K13 ["optional"]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K12 ["string"]
       30 CALL                             R6 1 1
       31 SETTABLEKS                       R6 R5 K7 ["statusTip"]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K13 ["optional"]
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K12 ["string"]
       39 CALL                             R6 1 1
       40 SETTABLEKS                       R6 R5 K8 ["iconName"]
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R6 R6 K13 ["optional"]
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R7 R7 K14 ["boolean"]
       48 CALL                             R6 1 1
       49 SETTABLEKS                       R6 R5 K9 ["allowBinding"]
       51 GETUPVAL                         R6 0
       52 GETTABLEKS                       R6 R6 K13 ["optional"]
       54 GETUPVAL                         R7 0
       55 GETTABLEKS                       R7 R7 K12 ["string"]
       57 CALL                             R6 1 1
       58 SETTABLEKS                       R6 R5 K10 ["defaultShortcut"]
       60 CALL                             R4 1 -1
       61 CALL                             R3 -1 1
       62 MOVE                             R4 R1
       63 CALL                             R3 1 -1
       64 FASTCALL                         ASSERT ; [+2]
       65 GETIMPORT                        R2 K2 [assert]
       67 CALL                             R2 -1 0
       68 DUPTABLE                         R2 K16 [{"plugin"}]
       69 SETTABLEKS                       R0 R2 K15 ["plugin"]
       71 GETUPVAL                         R5 1
       72 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       74 MOVE                             R4 R2
       75 GETIMPORT                        R3 K18 [setmetatable]
       77 CALL                             R3 2 0
       78 MOVE                             R5 R1
       79 NAMECALL                         R3 R2 K19 ["__mapActionDefinitions"]
       81 CALL                             R3 2 1
       82 SETTABLEKS                       R3 R2 K20 ["actions"]
       84 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["plugin"]
        2 GETTABLEKS                       R2 R2 K1 ["Name"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["string"]
        7 MOVE                             R5 R2
        8 CALL                             R4 1 1
        9 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       11 LOADK                            R5 K3 ["plugin.Name must be a string"]
       12 GETIMPORT                        R3 K5 [assert]
       14 CALL                             R3 2 0
       15 NEWTABLE                         R3 0 0
       17 GETIMPORT                        R4 K7 [pairs]
       19 MOVE                             R5 R1
       20 CALL                             R4 1 3
       21 FORGPREP_NEXT                    R4
       22 GETTABLEKS                       R9 R8 K8 ["id"]
       24 GETTABLE                         R12 R3 R9
       25 JUMPIFEQKNIL                     R12 ; [+2]
       27 LOADB                            R11 0 +1
       28 LOADB                            R11 1
       29 LOADK                            R13 K9 ["Duplicate action, ID: "]
       30 MOVE                             R14 R9
       31 CONCAT                           R12 R13 R14
       32 FASTCALL2                        ASSERT R11 R12 ; [+3]
       34 GETIMPORT                        R10 K5 [assert]
       36 CALL                             R10 2 0
       37 GETTABLEKS                       R10 R8 K10 ["text"]
       39 GETTABLEKS                       R12 R8 K12 ["statusTip"]
       41 ORK                              R11 R12 K11 [""]
       42 GETTABLEKS                       R13 R8 K13 ["iconName"]
       44 ORK                              R12 R13 K11 [""]
       45 LOADB                            R13 1
       46 GETTABLEKS                       R14 R8 K14 ["allowBinding"]
       48 JUMPIFEQKNIL                     R14 ; [+3]
       50 GETTABLEKS                       R13 R8 K14 ["allowBinding"]
       52 GETTABLEKS                       R14 R0 K0 ["plugin"]
       54 MOVE                             R17 R2
       55 LOADK                            R18 K15 ["_"]
       56 MOVE                             R19 R9
       57 CONCAT                           R16 R17 R19
       58 MOVE                             R17 R10
       59 MOVE                             R18 R11
       60 MOVE                             R19 R12
       61 MOVE                             R20 R13
       62 NAMECALL                         R14 R14 K16 ["CreatePluginAction"]
       64 CALL                             R14 6 1
       65 LOADB                            R15 0
       66 SETTABLEKS                       R15 R14 K17 ["Enabled"]
       68 GETTABLEKS                       R15 R8 K18 ["defaultShortcut"]
       70 JUMPIFNOT                        R15 ; [+4]
       71 GETTABLEKS                       R15 R8 K18 ["defaultShortcut"]
       73 SETTABLEKS                       R15 R14 K19 ["DefaultShortcut"]
       75 SETTABLE                         R14 R3 R9
       76 FORGLOOP                         R4 2 ; [-55]
       78 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["string"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        7 LOADK                            R4 K1 ["id must be a string"]
        8 GETIMPORT                        R2 K3 [assert]
       10 CALL                             R2 2 0
       11 GETTABLEKS                       R3 R0 K4 ["actions"]
       13 GETTABLE                         R2 R3 R1
       14 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K2 ["UI"]
       13 GETTABLEKS                       R2 R2 K7 ["ContextServices"]
       15 GETTABLEKS                       R2 R2 K8 ["ContextItem"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K6 [require]
       20 GETTABLEKS                       R3 R0 K9 ["Util"]
       22 GETTABLEKS                       R3 R3 K10 ["Typecheck"]
       24 GETTABLEKS                       R3 R3 K11 ["t"]
       26 CALL                             R2 1 1
       27 LOADK                            R5 K12 ["PluginActions"]
       28 NAMECALL                         R3 R1 K13 ["extend"]
       30 CALL                             R3 2 1
       31 DUPCLOSURE                       R4 K14 [PROTO_0]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 SETTABLEKS                       R4 R3 K15 ["new"]
       36 DUPCLOSURE                       R4 K16 [PROTO_1]
       37 CAPTURE                          VAL R2
       38 SETTABLEKS                       R4 R3 K17 ["__mapActionDefinitions"]
       40 DUPCLOSURE                       R4 K18 [PROTO_2]
       41 CAPTURE                          VAL R2
       42 SETTABLEKS                       R4 R3 K19 ["get"]
       44 RETURN                           R3 1
