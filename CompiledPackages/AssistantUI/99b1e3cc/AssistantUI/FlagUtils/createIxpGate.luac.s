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
       22 GETIMPORT                        R1 K3 [pcall]
       24 NEWCLOSURE                       R2 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          UPVAL U0
       29 CALL                             R1 1 2
       30 JUMPIF                           R1 ; [+4]
       31 LOADB                            R3 0
       32 SETUPVAL                         R3 2
       33 LOADB                            R3 0
       34 RETURN                           R3 1
       35 JUMPIFEQKB                       R2 TRUE ; [+2]
       37 LOADB                            R3 0 +1
       38 LOADB                            R3 1
       39 SETUPVAL                         R3 2
       40 RETURN                           R3 1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isForcedOn"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADB                            R0 1
        6 RETURN                           R0 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["isExperimentEnabled"]
       10 CALL                             R1 0 1
       11 JUMPIF                           R1 ; [+2]
       12 GETUPVAL                         R1 1
       13 CALL                             R1 0 1
       14 JUMPIF                           R1 ; [+2]
       15 LOADB                            R0 0
       16 RETURN                           R0 1
       17 GETUPVAL                         R1 2
       18 JUMPIFEQKB                       R1 TRUE ; [+2]
       20 LOADB                            R0 0 +1
       21 LOADB                            R0 1
       22 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R3 ; [+92]
        4 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        6 MOVE                             R4 R2
        7 LOADK                            R5 K1 ["resolveAcrossDataModels requires environment"]
        8 GETIMPORT                        R3 K3 [assert]
       10 CALL                             R3 2 0
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K4 ["Remote"]
       14 GETTABLEKS                       R3 R3 K5 ["invoke"]
       16 MOVE                             R4 R1
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K6 ["gateInvokeKey"]
       20 CALL                             R3 2 1
       21 GETTABLEKS                       R4 R2 K7 ["hasUI"]
       23 CALL                             R4 0 1
       24 JUMPIFNOT                        R4 ; [+15]
       25 GETUPVAL                         R4 3
       26 MOVE                             R5 R2
       27 CALL                             R4 1 1
       28 GETUPVAL                         R7 4
       29 NAMECALL                         R5 R3 K8 ["Connect"]
       31 CALL                             R5 2 1
       32 GETTABLEKS                       R6 R2 K9 ["Destroying"]
       34 NEWCLOSURE                       R8 P0
       35 CAPTURE                          VAL R5
       36 NAMECALL                         R6 R6 K10 ["Once"]
       38 CALL                             R6 2 0
       39 RETURN                           R4 1
       40 GETIMPORT                        R4 K12 [pcall]
       42 NEWCLOSURE                       R5 P1
       43 CAPTURE                          VAL R3
       44 CAPTURE                          UPVAL U1
       45 CALL                             R4 1 2
       46 JUMPIFNOT                        R4 ; [+30]
       47 FASTCALL1                        TYPEOF R5 ; [+3]
       48 MOVE                             R7 R5
       49 GETIMPORT                        R6 K14 [typeof]
       51 CALL                             R6 1 1
       52 JUMPIFNOTEQKS                    R6 K15 ["boolean"] ; [+24]
       54 GETUPVAL                         R7 2
       55 GETTABLEKS                       R7 R7 K16 ["isForcedOn"]
       57 CALL                             R7 0 1
       58 JUMPIFNOT                        R7 ; [+2]
       59 LOADB                            R6 1
       60 RETURN                           R6 1
       61 GETUPVAL                         R7 2
       62 GETTABLEKS                       R7 R7 K17 ["isExperimentEnabled"]
       64 CALL                             R7 0 1
       65 JUMPIF                           R7 ; [+2]
       66 GETUPVAL                         R7 5
       67 CALL                             R7 0 1
       68 JUMPIF                           R7 ; [+2]
       69 LOADB                            R6 0
       70 RETURN                           R6 1
       71 GETUPVAL                         R7 6
       72 JUMPIFNOTEQKNIL                  R7 ; [+2]
       74 SETUPVAL                         R5 6
       75 GETUPVAL                         R6 6
       76 RETURN                           R6 1
       77 GETIMPORT                        R6 K19 [warn]
       79 LOADK                            R7 K20 ["[Assistant] Could not read the %* gate from the UI DM (%*); resolving locally."]
       80 GETUPVAL                         R9 2
       81 GETTABLEKS                       R9 R9 K21 ["label"]
       83 FASTCALL1                        TOSTRING R5 ; [+3]
       84 MOVE                             R11 R5
       85 GETIMPORT                        R10 K23 [tostring]
       87 CALL                             R10 1 1
       88 NAMECALL                         R7 R7 K24 ["format"]
       90 CALL                             R7 3 1
       91 CALL                             R6 1 0
       92 GETUPVAL                         R6 3
       93 MOVE                             R7 R2
       94 CALL                             R6 1 1
       95 RETURN                           R6 1
       96 NEWCLOSURE                       R3 P2
       97 CAPTURE                          UPVAL U2
       98 CAPTURE                          UPVAL U5
       99 CAPTURE                          UPVAL U6
      100 NAMECALL                         R4 R0 K25 ["IsGuest"]
      102 CALL                             R4 1 1
      103 JUMPIFNOT                        R4 ; [+11]
      104 GETUPVAL                         R4 3
      105 MOVE                             R5 R2
      106 CALL                             R4 1 1
      107 GETUPVAL                         R7 2
      108 GETTABLEKS                       R7 R7 K6 ["gateInvokeKey"]
      110 MOVE                             R8 R3
      111 NAMECALL                         R5 R0 K26 ["OnGuestInvokeAsync"]
      113 CALL                             R5 3 0
      114 RETURN                           R4 1
      115 GETUPVAL                         R6 2
      116 GETTABLEKS                       R6 R6 K6 ["gateInvokeKey"]
      118 MOVE                             R7 R3
      119 NAMECALL                         R4 R0 K26 ["OnGuestInvokeAsync"]
      121 CALL                             R4 3 1
      122 GETIMPORT                        R5 K12 [pcall]
      124 MOVE                             R6 R4
      125 GETUPVAL                         R7 7
      126 GETTABLEKS                       R7 R7 K27 ["Types"]
      128 GETTABLEKS                       R7 R7 K28 ["Standalone"]
      130 CALL                             R5 2 2
      131 JUMPIFNOT                        R5 ; [+30]
      132 FASTCALL1                        TYPEOF R6 ; [+3]
      133 MOVE                             R8 R6
      134 GETIMPORT                        R7 K14 [typeof]
      136 CALL                             R7 1 1
      137 JUMPIFNOTEQKS                    R7 K15 ["boolean"] ; [+24]
      139 GETUPVAL                         R8 2
      140 GETTABLEKS                       R8 R8 K16 ["isForcedOn"]
      142 CALL                             R8 0 1
      143 JUMPIFNOT                        R8 ; [+2]
      144 LOADB                            R7 1
      145 RETURN                           R7 1
      146 GETUPVAL                         R8 2
      147 GETTABLEKS                       R8 R8 K17 ["isExperimentEnabled"]
      149 CALL                             R8 0 1
      150 JUMPIF                           R8 ; [+2]
      151 GETUPVAL                         R8 5
      152 CALL                             R8 0 1
      153 JUMPIF                           R8 ; [+2]
      154 LOADB                            R7 0
      155 RETURN                           R7 1
      156 GETUPVAL                         R8 6
      157 JUMPIFNOTEQKNIL                  R8 ; [+2]
      159 SETUPVAL                         R6 6
      160 GETUPVAL                         R7 6
      161 RETURN                           R7 1
      162 GETIMPORT                        R7 K19 [warn]
      164 LOADK                            R8 K29 ["[Assistant] Could not read the %* gate from the Standalone DM (%*); resolving locally."]
      165 GETUPVAL                         R10 2
      166 GETTABLEKS                       R10 R10 K21 ["label"]
      168 FASTCALL1                        TOSTRING R6 ; [+3]
      169 MOVE                             R12 R6
      170 GETIMPORT                        R11 K23 [tostring]
      172 CALL                             R11 1 1
      173 NAMECALL                         R8 R8 K24 ["format"]
      175 CALL                             R8 3 1
      176 CALL                             R7 1 0
      177 GETUPVAL                         R7 3
      178 MOVE                             R8 R2
      179 CALL                             R7 1 1
      180 RETURN                           R7 1

PROTO_10:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_11:
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
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R5
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R1
       28 CAPTURE                          REF R2
       29 CAPTURE                          UPVAL U3
       30 NEWCLOSURE                       R8 P6
       31 CAPTURE                          REF R2
       32 DUPTABLE                         R9 K8 [{"FEATURE_NAME", "get", "resolve", "resolveAcrossDataModels", "adopt", "reset"}]
       33 GETTABLEKS                       R10 R0 K9 ["featureName"]
       35 SETTABLEKS                       R10 R9 K2 ["FEATURE_NAME"]
       37 SETTABLEKS                       R4 R9 K3 ["get"]
       39 SETTABLEKS                       R5 R9 K4 ["resolve"]
       41 SETTABLEKS                       R7 R9 K5 ["resolveAcrossDataModels"]
       43 SETTABLEKS                       R6 R9 K6 ["adopt"]
       45 SETTABLEKS                       R8 R9 K7 ["reset"]
       47 CLOSEUPVALS                      R2
       48 RETURN                           R9 1

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
       18 GETTABLEKS                       R3 R3 K8 ["DMNetworkingOLD"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["DataModelType"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Flags"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K6 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["Signal"]
       39 CALL                             R5 1 1
       40 DUPCLOSURE                       R6 K13 [PROTO_11]
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R3
       45 RETURN                           R6 1
