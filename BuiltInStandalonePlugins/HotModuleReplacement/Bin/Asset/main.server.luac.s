PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Source"]
        2 NAMECALL                         R3 R0 K1 ["GetFullName"]
        4 CALL                             R3 1 1
        5 MOVE                             R4 R1
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 FORGPREP                         R4
        9 MOVE                             R11 R2
       10 MOVE                             R12 R3
       11 NAMECALL                         R9 R8 K2 ["Invoke"]
       13 CALL                             R9 3 1
       14 MOVE                             R2 R9
       15 LENGTH                           R9 R2
       16 GETUPVAL                         R10 0
       17 JUMPIFNOTLT                      R10 R9 ; [+9]
       19 GETIMPORT                        R9 K4 [warn]
       21 LOADK                            R11 K5 ["HMR: Transformation result for "]
       22 MOVE                             R12 R3
       23 LOADK                            R13 K6 [" is too large, skipping"]
       24 CONCAT                           R10 R11 R13
       25 CALL                             R9 1 0
       26 RETURN                           R0 0
       27 FORGLOOP                         R4 2 ; [-19]
       29 SETTABLEKS                       R2 R0 K0 ["Source"]
       31 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["Invoke"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFNOT                        R3 ; [+5]
        3 GETUPVAL                         R4 0
        4 GETTABLE                         R3 R4 R0
        5 NAMECALL                         R3 R3 K0 ["Disconnect"]
        7 CALL                             R3 1 0
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R0
       10 MOVE                             R5 R1
       11 CALL                             R3 2 0
       12 GETUPVAL                         R3 0
       13 LOADK                            R6 K1 ["Source"]
       14 NAMECALL                         R4 R0 K2 ["GetPropertyChangedSignal"]
       16 CALL                             R4 2 1
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R0
       20 NAMECALL                         R4 R4 K3 ["Connect"]
       22 CALL                             R4 2 1
       23 SETTABLE                         R4 R3 R0
       24 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+21]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["Stop"]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 NAMECALL                         R6 R5 K1 ["Disconnect"]
       11 CALL                             R6 1 0
       12 FORGLOOP                         R1 2 ; [-4]
       14 NEWTABLE                         R1 0 0
       16 SETUPVAL                         R1 1
       17 GETUPVAL                         R1 0
       18 NAMECALL                         R1 R1 K2 ["Run"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0
       22 GETIMPORT                        R1 K4 [plugin]
       24 LOADK                            R3 K5 ["HardReload"]
       25 NAMECALL                         R1 R1 K6 ["Invoke"]
       27 CALL                             R1 2 0
       28 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["HotModuleReplacement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["getFFlagEnableHotModuleReplacement"]
       18 CALL                             R2 0 1
       19 JUMPIF                           R2 ; [+1]
       20 RETURN                           R0 0
       21 GETIMPORT                        R2 K11 [plugin]
       23 GETTABLEKS                       R2 R2 K12 ["HostDataModelType"]
       25 GETIMPORT                        R3 K16 [Enum.StudioDataModelType.PlayClient]
       27 JUMPIFEQ                         R2 R3 ; [+2]
       29 RETURN                           R0 0
       30 GETIMPORT                        R2 K11 [plugin]
       32 LOADK                            R4 K17 ["PlayStarted"]
       33 NAMECALL                         R2 R2 K18 ["Invoke"]
       35 CALL                             R2 2 0
       36 GETIMPORT                        R2 K20 [game]
       38 LOADK                            R4 K21 ["ScriptStringLimit"]
       39 NAMECALL                         R2 R2 K22 ["GetFastInt"]
       41 CALL                             R2 2 1
       42 DUPCLOSURE                       R3 K23 [PROTO_0]
       43 CAPTURE                          VAL R2
       44 NEWTABLE                         R4 0 0
       46 GETIMPORT                        R5 K26 [Instance.new]
       48 LOADK                            R6 K27 ["BindableFunction"]
       49 CALL                             R5 1 1
       50 LOADK                            R6 K28 ["ApplyTransformations"]
       51 SETTABLEKS                       R6 R5 K29 ["Name"]
       53 NEWCLOSURE                       R6 P1
       54 CAPTURE                          REF R4
       55 CAPTURE                          VAL R3
       56 SETTABLEKS                       R6 R5 K30 ["OnInvoke"]
       58 GETIMPORT                        R6 K32 [workspace]
       60 SETTABLEKS                       R6 R5 K33 ["Parent"]
       62 GETIMPORT                        R6 K20 [game]
       64 LOADK                            R8 K34 ["RunService"]
       65 NAMECALL                         R6 R6 K35 ["GetService"]
       67 CALL                             R6 2 1
       68 GETIMPORT                        R7 K26 [Instance.new]
       70 LOADK                            R8 K27 ["BindableFunction"]
       71 CALL                             R7 1 1
       72 LOADK                            R8 K36 ["Reload"]
       73 SETTABLEKS                       R8 R7 K29 ["Name"]
       75 NEWCLOSURE                       R8 P2
       76 CAPTURE                          VAL R6
       77 CAPTURE                          REF R4
       78 SETTABLEKS                       R8 R7 K30 ["OnInvoke"]
       80 GETIMPORT                        R8 K32 [workspace]
       82 SETTABLEKS                       R8 R7 K33 ["Parent"]
       84 CLOSEUPVALS                      R4
       85 RETURN                           R0 0
