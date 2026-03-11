PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["table"] ; [+10]
        7 GETIMPORT                        R2 K4 [error]
        9 GETIMPORT                        R3 K7 [string.format]
       11 LOADK                            R4 K8 ["Expected %s to be a table"]
       12 MOVE                             R5 R1
       13 CALL                             R3 2 1
       14 LOADN                            R4 2
       15 CALL                             R2 2 0
       16 GETIMPORT                        R2 K10 [next]
       18 MOVE                             R3 R0
       19 CALL                             R2 1 2
       20 FASTCALL1                        TYPE R2 ; [+3]
       21 MOVE                             R5 R2
       22 GETIMPORT                        R4 K1 [type]
       24 CALL                             R4 1 1
       25 JUMPIFEQKS                       R4 K11 ["nil"] ; [+17]
       27 FASTCALL1                        TYPE R2 ; [+3]
       28 MOVE                             R5 R2
       29 GETIMPORT                        R4 K1 [type]
       31 CALL                             R4 1 1
       32 JUMPIFEQKS                       R4 K5 ["string"] ; [+10]
       34 GETIMPORT                        R4 K4 [error]
       36 GETIMPORT                        R5 K7 [string.format]
       38 LOADK                            R6 K12 ["Expected %s to be map keyed on strings"]
       39 MOVE                             R7 R1
       40 CALL                             R5 2 1
       41 LOADN                            R6 2
       42 CALL                             R4 2 0
       43 RETURN                           R0 0

PROTO_1:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 MOVE                             R2 R0
        3 JUMPIF                           R2 ; [+2]
        4 NEWTABLE                         R2 0 0
        6 MOVE                             R0 R2
        7 JUMPIFEQKNIL                     R1 ; [+3]
        9 MOVE                             R2 R1
       10 JUMPIF                           R2 ; [+2]
       11 NEWTABLE                         R2 0 0
       13 MOVE                             R1 R2
       14 GETUPVAL                         R2 0
       15 MOVE                             R3 R0
       16 LOADK                            R4 K0 ["featuresMap"]
       17 CALL                             R2 2 0
       18 GETUPVAL                         R2 0
       19 MOVE                             R3 R1
       20 LOADK                            R4 K1 ["overrides"]
       21 CALL                             R2 2 0
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R2 R3 K2 ["new"]
       25 MOVE                             R3 R0
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [pairs]
       29 MOVE                             R4 R1
       30 CALL                             R3 1 3
       31 FORGPREP_NEXT                    R3
       32 MOVE                             R10 R6
       33 MOVE                             R11 R7
       34 NAMECALL                         R8 R2 K5 ["setLocalOverride"]
       36 CALL                             R8 3 0
       37 FORGLOOP                         R3 2 ; [-6]
       39 DUPTABLE                         R3 K7 [{"flags"}]
       40 SETTABLEKS                       R2 R3 K6 ["flags"]
       42 GETUPVAL                         R6 2
       43 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       45 MOVE                             R5 R3
       46 GETIMPORT                        R4 K9 [setmetatable]
       48 CALL                             R4 2 0
       49 RETURN                           R3 1

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["boolean"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Expected defaultValue to be a boolean"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 JUMPIFEQKNIL                     R1 ; [+3]
       17 MOVE                             R2 R1
       18 JUMPIF                           R2 ; [+2]
       19 NEWTABLE                         R2 0 0
       21 MOVE                             R1 R2
       22 GETUPVAL                         R2 0
       23 MOVE                             R3 R1
       24 LOADK                            R4 K6 ["overrides"]
       25 CALL                             R2 2 0
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R2 R3 K7 ["mock"]
       29 LOADB                            R3 0
       30 CALL                             R2 1 1
       31 GETIMPORT                        R3 K9 [pairs]
       33 MOVE                             R4 R1
       34 CALL                             R3 1 3
       35 FORGPREP_NEXT                    R3
       36 MOVE                             R10 R6
       37 MOVE                             R11 R7
       38 NAMECALL                         R8 R2 K10 ["setLocalOverride"]
       40 CALL                             R8 3 0
       41 FORGLOOP                         R3 2 ; [-6]
       43 DUPTABLE                         R3 K12 [{"flags"}]
       44 SETTABLEKS                       R2 R3 K11 ["flags"]
       46 GETUPVAL                         R6 2
       47 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       49 MOVE                             R5 R3
       50 GETIMPORT                        R4 K14 [setmetatable]
       52 CALL                             R4 2 0
       53 RETURN                           R3 1

PROTO_3:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["string"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Expected featureName to be a string"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 GETTABLEKS                       R2 R0 K6 ["flags"]
       17 MOVE                             R4 R1
       18 NAMECALL                         R2 R2 K7 ["get"]
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R4 R0 K2 ["UI"]
       13 GETTABLEKS                       R3 R4 K7 ["ContextServices"]
       15 GETTABLEKS                       R2 R3 K8 ["ContextItem"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K9 ["Util"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R2 R3 K10 ["Flags"]
       25 DUPCLOSURE                       R3 K11 [PROTO_0]
       26 LOADK                            R6 K12 ["FastFlags"]
       27 NAMECALL                         R4 R1 K13 ["extend"]
       29 CALL                             R4 2 1
       30 DUPCLOSURE                       R5 K14 [PROTO_1]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R4
       34 SETTABLEKS                       R5 R4 K15 ["new"]
       36 DUPCLOSURE                       R5 K16 [PROTO_2]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R4
       40 SETTABLEKS                       R5 R4 K17 ["mock"]
       42 DUPCLOSURE                       R5 K18 [PROTO_3]
       43 SETTABLEKS                       R5 R4 K19 ["get"]
       45 RETURN                           R4 1
