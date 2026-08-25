PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["premiumFeatureTypeName"]
        2 JUMPIFEQKS                       R2 K1 ["Subscription"] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 GETTABLEKS                       R3 R0 K2 ["isSubscriptionOnly"]
        8 JUMPIFEQKB                       R3 TRUE ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 NOT                              R3 R1
       13 JUMPIFNOT                        R3 ; [+1]
       14 NOT                              R3 R2
       15 RETURN                           R3 1

PROTO_1:
        0 LOADK                            R2 K0 ["%*%*"]
        1 GETTABLEKS                       R4 R0 K1 ["currency"]
        3 GETTABLEKS                       R4 R4 K2 ["currencySymbol"]
        5 GETIMPORT                        R5 K5 [string.format]
        7 LOADK                            R6 K6 ["%.2f"]
        8 GETTABLEKS                       R7 R0 K7 ["amount"]
       10 CALL                             R5 2 1
       11 NAMECALL                         R2 R2 K4 ["format"]
       13 CALL                             R2 3 1
       14 MOVE                             R1 R2
       15 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["robuxAmount"]
        2 GETTABLEKS                       R4 R1 K0 ["robuxAmount"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R9 R6 K0 ["premiumFeatureTypeName"]
        8 JUMPIFEQKS                       R9 K1 ["Subscription"] ; [+2]
       10 LOADB                            R8 0 +1
       11 LOADB                            R8 1
       12 GETTABLEKS                       R10 R6 K2 ["isSubscriptionOnly"]
       14 JUMPIFEQKB                       R10 TRUE ; [+2]
       16 LOADB                            R9 0 +1
       17 LOADB                            R9 1
       18 NOT                              R7 R8
       19 JUMPIFNOT                        R7 ; [+1]
       20 NOT                              R7 R9
       21 JUMPIFNOT                        R7 ; [+7]
       22 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       24 MOVE                             R8 R1
       25 MOVE                             R9 R6
       26 GETIMPORT                        R7 K5 [table.insert]
       28 CALL                             R7 2 0
       29 FORGLOOP                         R2 2 ; [-24]
       31 GETIMPORT                        R2 K7 [table.sort]
       33 MOVE                             R3 R1
       34 DUPCLOSURE                       R4 K8 [PROTO_2]
       35 CALL                             R2 2 0
       36 LENGTH                           R3 R1
       37 LOADN                            R4 5
       38 JUMPIFNOTLE                      R4 R3 ; [+3]
       40 LOADN                            R2 2
       41 JUMP                             ; [+1]
       42 LOADN                            R2 1
       43 LENGTH                           R4 R1
       44 ADDK                             R6 R2 K10 [4]
       45 SUBK                             R5 R6 K9 [1]
       46 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       48 GETIMPORT                        R3 K13 [math.min]
       50 CALL                             R3 2 1
       51 NEWTABLE                         R4 0 0
       53 MOVE                             R7 R2
       54 MOVE                             R5 R3
       55 LOADN                            R6 1
       56 FORNPREP                         R5
       57 GETTABLE                         R8 R1 R7
       58 DUPTABLE                         R11 K17 [{"productId", "robuxAmount", "currencyAmountStr"}]
       59 GETTABLEKS                       R12 R8 K14 ["productId"]
       61 SETTABLEKS                       R12 R11 K14 ["productId"]
       63 GETTABLEKS                       R12 R8 K15 ["robuxAmount"]
       65 SETTABLEKS                       R12 R11 K15 ["robuxAmount"]
       67 GETTABLEKS                       R13 R8 K18 ["price"]
       69 LOADK                            R14 K19 ["%*%*"]
       70 GETTABLEKS                       R16 R13 K20 ["currency"]
       72 GETTABLEKS                       R16 R16 K21 ["currencySymbol"]
       74 GETIMPORT                        R17 K24 [string.format]
       76 LOADK                            R18 K25 ["%.2f"]
       77 GETTABLEKS                       R19 R13 K26 ["amount"]
       79 CALL                             R17 2 1
       80 NAMECALL                         R14 R14 K23 ["format"]
       82 CALL                             R14 3 1
       83 MOVE                             R12 R14
       84 SETTABLEKS                       R12 R11 K16 ["currencyAmountStr"]
       86 FASTCALL2                        TABLE_INSERT R4 R11 ; [+4]
       88 MOVE                             R10 R4
       89 GETIMPORT                        R9 K5 [table.insert]
       91 CALL                             R9 2 0
       92 FORNLOOP                         R5
       93 RETURN                           R4 1

PROTO_4:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+64]
        8 LOADB                            R1 0
        9 GETTABLEKS                       R3 R0 K3 ["productId"]
       11 FASTCALL1                        TYPEOF R3 ; [+2]
       12 GETIMPORT                        R2 K1 [typeof]
       14 CALL                             R2 1 1
       15 JUMPIFNOTEQKS                    R2 K4 ["number"] ; [+55]
       17 LOADB                            R1 0
       18 GETTABLEKS                       R3 R0 K5 ["robuxAmount"]
       20 FASTCALL1                        TYPEOF R3 ; [+2]
       21 GETIMPORT                        R2 K1 [typeof]
       23 CALL                             R2 1 1
       24 JUMPIFNOTEQKS                    R2 K4 ["number"] ; [+46]
       26 LOADB                            R1 0
       27 GETTABLEKS                       R3 R0 K6 ["price"]
       29 FASTCALL1                        TYPEOF R3 ; [+2]
       30 GETIMPORT                        R2 K1 [typeof]
       32 CALL                             R2 1 1
       33 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+37]
       35 LOADB                            R1 0
       36 GETTABLEKS                       R3 R0 K6 ["price"]
       38 GETTABLEKS                       R3 R3 K7 ["amount"]
       40 FASTCALL1                        TYPEOF R3 ; [+2]
       41 GETIMPORT                        R2 K1 [typeof]
       43 CALL                             R2 1 1
       44 JUMPIFNOTEQKS                    R2 K4 ["number"] ; [+26]
       46 LOADB                            R1 0
       47 GETTABLEKS                       R3 R0 K6 ["price"]
       49 GETTABLEKS                       R3 R3 K8 ["currency"]
       51 FASTCALL1                        TYPEOF R3 ; [+2]
       52 GETIMPORT                        R2 K1 [typeof]
       54 CALL                             R2 1 1
       55 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+15]
       57 GETTABLEKS                       R3 R0 K6 ["price"]
       59 GETTABLEKS                       R3 R3 K8 ["currency"]
       61 GETTABLEKS                       R3 R3 K9 ["currencySymbol"]
       63 FASTCALL1                        TYPEOF R3 ; [+2]
       64 GETIMPORT                        R2 K1 [typeof]
       66 CALL                             R2 1 1
       67 JUMPIFEQKS                       R2 K10 ["string"] ; [+2]
       69 LOADB                            R1 0 +1
       70 LOADB                            R1 1
       71 RETURN                           R1 1

PROTO_5:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+9]
        7 GETTABLEKS                       R4 R0 K3 ["products"]
        9 FASTCALL1                        TYPEOF R4 ; [+2]
       10 GETIMPORT                        R3 K1 [typeof]
       12 CALL                             R3 1 1
       13 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
       15 LOADK                            R6 K4 ["%*Expected a table with a `products` array"]
       16 MOVE                             R8 R2
       17 NAMECALL                         R6 R6 K5 ["format"]
       19 CALL                             R6 2 1
       20 MOVE                             R5 R6
       21 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       23 MOVE                             R4 R1
       24 GETIMPORT                        R3 K7 [table.insert]
       26 CALL                             R3 2 0
       27 DUPTABLE                         R3 K8 [{"products"}]
       28 NEWTABLE                         R4 0 0
       30 SETTABLEKS                       R4 R3 K3 ["products"]
       32 RETURN                           R3 1
       33 NEWTABLE                         R3 0 0
       35 GETTABLEKS                       R4 R0 K3 ["products"]
       37 LOADNIL                          R5
       38 LOADNIL                          R6
       39 FORGPREP                         R4
       40 GETUPVAL                         R9 0
       41 MOVE                             R10 R8
       42 CALL                             R9 1 1
       43 JUMPIFNOT                        R9 ; [+7]
       44 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       46 MOVE                             R10 R3
       47 MOVE                             R11 R8
       48 GETIMPORT                        R9 K7 [table.insert]
       50 CALL                             R9 2 0
       51 FORGLOOP                         R4 2 ; [-12]
       53 DUPTABLE                         R4 K8 [{"products"}]
       54 SETTABLEKS                       R3 R4 K3 ["products"]
       56 RETURN                           R4 1

PROTO_6:
        0 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["PremiumFeaturesProducts"]
        3 GETTABLEKS                       R0 R0 K1 ["getV1ProductsAsync"]
        5 NEWTABLE                         R1 0 0
        7 CALL                             R0 1 1
        8 JUMPIF                           R0 ; [+5]
        9 DUPTABLE                         R1 K5 [{["success"] = False, ["errorDetails"]}]
       10 DUPTABLE                         R2 K10 [{["kind"] = "Network", ["networkError"] = "No response from PremiumFeatures products endpoint"}]
       11 SETTABLEKS                       R2 R1 K4 ["errorDetails"]
       13 RETURN                           R1 1
       14 GETTABLEKS                       R1 R0 K2 ["success"]
       16 JUMPIF                           R1 ; [+1]
       17 RETURN                           R0 1
       18 GETTABLEKS                       R2 R0 K12 ["data"]
       20 ORK                              R1 R2 K11 [""]
       21 GETIMPORT                        R2 K14 [pcall]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R3 R3 K15 ["JSONDecode"]
       26 GETUPVAL                         R4 1
       27 MOVE                             R5 R1
       28 CALL                             R2 3 2
       29 NEWTABLE                         R4 0 0
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R5 R5 K16 ["fromResponse"]
       34 JUMPIFNOT                        R2 ; [+2]
       35 MOVE                             R6 R3
       36 JUMP                             ; [+1]
       37 LOADNIL                          R6
       38 MOVE                             R7 R4
       39 LOADK                            R8 K11 [""]
       40 CALL                             R5 3 1
       41 LENGTH                           R6 R4
       42 LOADN                            R7 0
       43 JUMPIFNOTLT                      R7 R6 ; [+14]
       45 DUPTABLE                         R6 K18 [{["success"] = False, ["errorDetails"], ["httpDetails"]}]
       46 DUPTABLE                         R7 K22 [{["kind"] = "Validation", ["validationErrors"], ["body"]}]
       47 SETTABLEKS                       R4 R7 K20 ["validationErrors"]
       49 SETTABLEKS                       R1 R7 K21 ["body"]
       51 SETTABLEKS                       R7 R6 K4 ["errorDetails"]
       53 GETTABLEKS                       R7 R0 K17 ["httpDetails"]
       55 SETTABLEKS                       R7 R6 K17 ["httpDetails"]
       57 RETURN                           R6 1
       58 DUPTABLE                         R6 K24 [{["success"] = True, ["data"], ["httpDetails"]}]
       59 SETTABLEKS                       R5 R6 K12 ["data"]
       61 GETTABLEKS                       R7 R0 K17 ["httpDetails"]
       63 SETTABLEKS                       R7 R6 K17 ["httpDetails"]
       65 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["HttpWrapper"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["OpenApiPremiumFeaturesApiv1"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K10 [game]
       23 LOADK                            R5 K11 ["HttpService"]
       24 NAMECALL                         R3 R3 K12 ["GetService"]
       26 CALL                             R3 2 1
       27 DUPCLOSURE                       R4 K13 [PROTO_0]
       28 DUPCLOSURE                       R5 K14 [PROTO_1]
       29 DUPCLOSURE                       R6 K15 [PROTO_3]
       30 DUPCLOSURE                       R7 K16 [PROTO_4]
       31 DUPCLOSURE                       R8 K17 [PROTO_5]
       32 CAPTURE                          VAL R7
       33 DUPCLOSURE                       R9 K18 [PROTO_6]
       34 GETIMPORT                        R10 K21 [table.freeze]
       36 DUPTABLE                         R11 K24 [{"fromResponse", "toRequest"}]
       37 SETTABLEKS                       R8 R11 K22 ["fromResponse"]
       39 SETTABLEKS                       R9 R11 K23 ["toRequest"]
       41 CALL                             R10 1 1
       42 DUPCLOSURE                       R11 K25 [PROTO_7]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R10
       46 DUPTABLE                         R12 K28 [{"fetchRobuxPackagesAsync", "selectDisplayPackages"}]
       47 SETTABLEKS                       R11 R12 K26 ["fetchRobuxPackagesAsync"]
       49 SETTABLEKS                       R6 R12 K27 ["selectDisplayPackages"]
       51 RETURN                           R12 1
