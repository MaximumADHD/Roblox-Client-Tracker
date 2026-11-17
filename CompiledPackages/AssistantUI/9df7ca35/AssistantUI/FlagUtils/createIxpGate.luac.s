PROTO_0:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isExperimentEnabled"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+2]
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 1
        7 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isForcedOn"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+2]
        5 LOADB                            R0 1
        6 RETURN                           R0 1
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K1 ["isExperimentEnabled"]
       10 CALL                             R0 0 1
       11 JUMPIF                           R0 ; [+2]
       12 GETUPVAL                         R0 1
       13 CALL                             R0 0 1
       14 JUMPIF                           R0 ; [+2]
       15 LOADB                            R0 0
       16 RETURN                           R0 1
       17 GETUPVAL                         R1 2
       18 JUMPIFEQKB                       R1 TRUE ; [+2]
       20 LOADB                            R0 0 +1
       21 LOADB                            R0 1
       22 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+11]
        2 GETIMPORT                        R0 K1 [require]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K2 ["Guest"]
        7 GETTABLEKS                       R1 R1 K3 ["Environment"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R0 R0 K4 ["get"]
       12 CALL                             R0 0 1
       13 GETUPVAL                         R1 2
       14 CALL                             R1 0 1
       15 JUMPIFNOT                        R1 ; [+6]
       16 GETTABLEKS                       R1 R0 K5 ["hasInternalPermission"]
       18 CALL                             R1 0 1
       19 JUMPIFNOT                        R1 ; [+2]
       20 LOADB                            R1 1
       21 RETURN                           R1 1
       22 GETUPVAL                         R1 3
       23 GETTABLEKS                       R1 R1 K6 ["isExperimentEnabled"]
       25 CALL                             R1 0 1
       26 JUMPIF                           R1 ; [+2]
       27 LOADB                            R1 0
       28 RETURN                           R1 1
       29 GETTABLEKS                       R2 R0 K7 ["getExperimentFeatureEnabled"]
       31 GETUPVAL                         R3 3
       32 GETTABLEKS                       R3 R3 K8 ["featureName"]
       34 CALL                             R2 1 1
       35 JUMPIFEQKB                       R2 TRUE ; [+2]
       37 LOADB                            R1 0 +1
       38 LOADB                            R1 1
       39 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isForcedOn"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADB                            R1 1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["isExperimentEnabled"]
       10 CALL                             R1 0 1
       11 JUMPIF                           R1 ; [+2]
       12 GETUPVAL                         R1 1
       13 CALL                             R1 0 1
       14 JUMPIF                           R1 ; [+2]
       15 LOADB                            R1 0
       16 RETURN                           R1 1
       17 GETUPVAL                         R1 2
       18 JUMPIFEQKNIL                     R1 ; [+3]
       20 GETUPVAL                         R1 2
       21 RETURN                           R1 1
       22 NEWCLOSURE                       R2 P0
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          UPVAL U0
       27 FASTPCALL                        pcall 1 ; [+2]
       28 GETIMPORT                        R1 K3 [pcall]
       30 CALL                             R1 1 2
       31 JUMPIF                           R1 ; [+4]
       32 LOADB                            R3 0
       33 SETUPVAL                         R3 2
       34 LOADB                            R3 0
       35 RETURN                           R3 1
       36 JUMPIFEQKB                       R2 TRUE ; [+2]
       38 LOADB                            R3 0 +1
       39 LOADB                            R3 1
       40 SETUPVAL                         R3 2
       41 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isForcedOn"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADB                            R1 1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["isExperimentEnabled"]
       10 CALL                             R1 0 1
       11 JUMPIF                           R1 ; [+2]
       12 GETUPVAL                         R1 1
       13 CALL                             R1 0 1
       14 JUMPIF                           R1 ; [+2]
       15 LOADB                            R1 0
       16 RETURN                           R1 1
       17 GETUPVAL                         R1 2
       18 JUMPIFNOTEQKNIL                  R1 ; [+2]
       20 SETUPVAL                         R0 2
       21 GETUPVAL                         R1 2
       22 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["ALL"]
        4 NAMECALL                         R0 R0 K1 ["InvokeAsync"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_8:
        0 FASTCALL2K                       ASSERT R1 K0 ; [+5]
        2 MOVE                             R3 R1
        3 LOADK                            R4 K0 ["resolveAcrossDataModels requires environment"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["Remote"]
       10 GETTABLEKS                       R2 R2 K4 ["invoke"]
       12 MOVE                             R3 R0
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K5 ["gateInvokeKey"]
       16 CALL                             R2 2 1
       17 GETTABLEKS                       R3 R1 K6 ["hasUI"]
       19 CALL                             R3 0 1
       20 JUMPIFNOT                        R3 ; [+15]
       21 GETUPVAL                         R3 2
       22 MOVE                             R4 R1
       23 CALL                             R3 1 1
       24 GETUPVAL                         R6 3
       25 NAMECALL                         R4 R2 K7 ["Connect"]
       27 CALL                             R4 2 1
       28 GETTABLEKS                       R5 R1 K8 ["Destroying"]
       30 NEWCLOSURE                       R7 P0
       31 CAPTURE                          VAL R4
       32 NAMECALL                         R5 R5 K9 ["Once"]
       34 CALL                             R5 2 0
       35 RETURN                           R3 1
       36 NEWCLOSURE                       R4 P1
       37 CAPTURE                          VAL R2
       38 CAPTURE                          UPVAL U0
       39 FASTPCALL                        pcall 1 ; [+2]
       40 GETIMPORT                        R3 K11 [pcall]
       42 CALL                             R3 1 2
       43 JUMPIFNOT                        R3 ; [+30]
       44 FASTCALL1                        TYPEOF R4 ; [+3]
       45 MOVE                             R6 R4
       46 GETIMPORT                        R5 K13 [typeof]
       48 CALL                             R5 1 1
       49 JUMPIFNOTEQKS                    R5 K14 ["boolean"] ; [+24]
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R6 R6 K15 ["isForcedOn"]
       54 CALL                             R6 0 1
       55 JUMPIFNOT                        R6 ; [+2]
       56 LOADB                            R5 1
       57 RETURN                           R5 1
       58 GETUPVAL                         R6 1
       59 GETTABLEKS                       R6 R6 K16 ["isExperimentEnabled"]
       61 CALL                             R6 0 1
       62 JUMPIF                           R6 ; [+2]
       63 GETUPVAL                         R6 4
       64 CALL                             R6 0 1
       65 JUMPIF                           R6 ; [+2]
       66 LOADB                            R5 0
       67 RETURN                           R5 1
       68 GETUPVAL                         R6 5
       69 JUMPIFNOTEQKNIL                  R6 ; [+2]
       71 SETUPVAL                         R4 5
       72 GETUPVAL                         R5 5
       73 RETURN                           R5 1
       74 GETIMPORT                        R5 K18 [warn]
       76 LOADK                            R6 K19 ["[Assistant] Could not read the %* gate from the UI DM (%*); resolving locally."]
       77 GETUPVAL                         R8 1
       78 GETTABLEKS                       R8 R8 K20 ["label"]
       80 FASTCALL1                        TOSTRING R4 ; [+3]
       81 MOVE                             R10 R4
       82 GETIMPORT                        R9 K22 [tostring]
       84 CALL                             R9 1 1
       85 NAMECALL                         R6 R6 K23 ["format"]
       87 CALL                             R6 3 1
       88 CALL                             R5 1 0
       89 GETUPVAL                         R5 2
       90 MOVE                             R6 R1
       91 CALL                             R5 1 1
       92 RETURN                           R5 1

PROTO_9:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["isForcedOnForInternal"]
        2 JUMPIF                           R1 ; [+1]
        3 DUPCLOSURE                       R1 K1 [PROTO_0]
        4 LOADNIL                          R2
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 NEWCLOSURE                       R4 P2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          REF R2
       12 NEWCLOSURE                       R5 P3
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          REF R2
       16 CAPTURE                          UPVAL U0
       17 NEWCLOSURE                       R6 P4
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          REF R2
       21 NEWCLOSURE                       R7 P5
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R5
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R1
       27 CAPTURE                          REF R2
       28 NEWCLOSURE                       R8 P6
       29 CAPTURE                          REF R2
       30 DUPTABLE                         R9 K8 [{"FEATURE_NAME", "get", "resolve", "resolveAcrossDataModels", "adopt", "reset"}]
       31 GETTABLEKS                       R10 R0 K9 ["featureName"]
       33 SETTABLEKS                       R10 R9 K2 ["FEATURE_NAME"]
       35 SETTABLEKS                       R4 R9 K3 ["get"]
       37 SETTABLEKS                       R5 R9 K4 ["resolve"]
       39 SETTABLEKS                       R7 R9 K5 ["resolveAcrossDataModels"]
       41 SETTABLEKS                       R6 R9 K6 ["adopt"]
       43 SETTABLEKS                       R8 R9 K7 ["reset"]
       45 CLOSEUPVALS                      R2
       46 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["DMNetworking"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Signal"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_10]
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 RETURN                           R3 1
