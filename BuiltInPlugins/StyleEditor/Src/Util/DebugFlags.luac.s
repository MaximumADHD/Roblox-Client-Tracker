PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["HasInternalPermission"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["DefaultForInternalUsers"]
        8 JUMPIFEQKNIL                     R1 ; [+5]
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K1 ["DefaultForInternalUsers"]
       13 JUMP                             ; [+3]
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K2 ["Default"]
       17 GETUPVAL                         R1 2
       18 LOADK                            R3 K3 ["StyleEditor"]
       19 NAMECALL                         R1 R1 K4 ["FindFirstChild"]
       21 CALL                             R1 2 1
       22 JUMPIFNOT                        R1 ; [+5]
       23 LOADK                            R4 K5 ["Folder"]
       24 NAMECALL                         R2 R1 K6 ["IsA"]
       26 CALL                             R2 2 1
       27 JUMPIF                           R2 ; [+1]
       28 RETURN                           R0 1
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K7 ["Name"]
       32 NAMECALL                         R2 R1 K4 ["FindFirstChild"]
       34 CALL                             R2 2 1
       35 JUMPIFNOT                        R2 ; [+5]
       36 LOADK                            R5 K8 ["BoolValue"]
       37 NAMECALL                         R3 R2 K6 ["IsA"]
       39 CALL                             R3 2 1
       40 JUMPIF                           R3 ; [+1]
       41 RETURN                           R0 1
       42 GETTABLEKS                       R3 R2 K9 ["Value"]
       44 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["Name"]
        2 FASTCALL1                        TYPEOF R4 ; [+2]
        3 GETIMPORT                        R3 K2 [typeof]
        5 CALL                             R3 1 1
        6 JUMPIFEQKS                       R3 K3 ["string"] ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       12 LOADK                            R3 K4 ["DebugFlag name must be a string"]
       13 GETIMPORT                        R1 K6 [assert]
       15 CALL                             R1 2 0
       16 GETTABLEKS                       R4 R0 K7 ["Default"]
       18 FASTCALL1                        TYPEOF R4 ; [+2]
       19 GETIMPORT                        R3 K2 [typeof]
       21 CALL                             R3 1 1
       22 JUMPIFEQKS                       R3 K8 ["boolean"] ; [+2]
       24 LOADB                            R2 0 +1
       25 LOADB                            R2 1
       26 FASTCALL2K                       ASSERT R2 K9 ; [+4]
       28 LOADK                            R3 K9 ["DebugFlag default value must be a boolean"]
       29 GETIMPORT                        R1 K6 [assert]
       31 CALL                             R1 2 0
       32 LOADB                            R2 1
       33 GETTABLEKS                       R3 R0 K10 ["DefaultForInternalUsers"]
       35 JUMPIFEQKNIL                     R3 ; [+11]
       37 GETTABLEKS                       R4 R0 K10 ["DefaultForInternalUsers"]
       39 FASTCALL1                        TYPEOF R4 ; [+2]
       40 GETIMPORT                        R3 K2 [typeof]
       42 CALL                             R3 1 1
       43 JUMPIFEQKS                       R3 K8 ["boolean"] ; [+2]
       45 LOADB                            R2 0 +1
       46 LOADB                            R2 1
       47 FASTCALL2K                       ASSERT R2 K11 ; [+4]
       49 LOADK                            R3 K11 ["DebugFlag default value for internal users must be either a boolean or nil"]
       50 GETIMPORT                        R1 K6 [assert]
       52 CALL                             R1 2 0
       53 NEWCLOSURE                       R1 P0
       54 CAPTURE                          UPVAL U0
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U1
       57 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StudioService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 DUPCLOSURE                       R2 K5 [PROTO_1]
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R0
       16 DUPTABLE                         R3 K8 [{"LogNetworkErrors", "LogTelemetry"}]
       17 MOVE                             R4 R2
       18 DUPTABLE                         R5 K12 [{"Name", "Default", "DefaultForInternalUsers"}]
       19 LOADK                            R6 K6 ["LogNetworkErrors"]
       20 SETTABLEKS                       R6 R5 K9 ["Name"]
       22 LOADB                            R6 0
       23 SETTABLEKS                       R6 R5 K10 ["Default"]
       25 LOADB                            R6 1
       26 SETTABLEKS                       R6 R5 K11 ["DefaultForInternalUsers"]
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R3 K6 ["LogNetworkErrors"]
       31 MOVE                             R4 R2
       32 DUPTABLE                         R5 K13 [{"Name", "Default"}]
       33 LOADK                            R6 K7 ["LogTelemetry"]
       34 SETTABLEKS                       R6 R5 K9 ["Name"]
       36 LOADB                            R6 0
       37 SETTABLEKS                       R6 R5 K10 ["Default"]
       39 CALL                             R4 1 1
       40 SETTABLEKS                       R4 R3 K7 ["LogTelemetry"]
       42 RETURN                           R3 1
