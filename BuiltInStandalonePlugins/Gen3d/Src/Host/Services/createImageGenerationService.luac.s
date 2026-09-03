PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getFStringCubeGenerationGatewayApiKey"]
        3 CALL                             R0 0 1
        4 LOADK                            R3 K2 ["^%s*(.-)%s*$"]
        5 NAMECALL                         R1 R0 K3 ["match"]
        7 CALL                             R1 2 1
        8 ORK                              R0 R1 K1 [""]
        9 JUMPIFEQKS                       R0 K1 [""] ; [+3]
       11 MOVE                             R1 R0
       12 RETURN                           R1 1
       13 LOADNIL                          R1
       14 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 4 0
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+39]
        9 GETTABLEKS                       R3 R0 K3 ["result"]
       11 FASTCALL1                        TYPEOF R3 ; [+2]
       12 GETIMPORT                        R2 K1 [typeof]
       14 CALL                             R2 1 1
       15 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+31]
       17 GETTABLEKS                       R3 R0 K3 ["result"]
       19 GETTABLEKS                       R3 R3 K4 ["image"]
       21 FASTCALL1                        TYPEOF R3 ; [+2]
       22 GETIMPORT                        R2 K1 [typeof]
       24 CALL                             R2 1 1
       25 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+21]
       27 GETTABLEKS                       R2 R0 K3 ["result"]
       29 GETTABLEKS                       R2 R2 K4 ["image"]
       31 GETTABLEKS                       R3 R2 K5 ["presignedUrl"]
       33 SETTABLEKS                       R3 R1 K5 ["presignedUrl"]
       35 GETTABLEKS                       R3 R2 K6 ["widthPx"]
       37 SETTABLEKS                       R3 R1 K6 ["widthPx"]
       39 GETTABLEKS                       R3 R2 K7 ["heightPx"]
       41 SETTABLEKS                       R3 R1 K7 ["heightPx"]
       43 GETTABLEKS                       R3 R2 K8 ["format"]
       45 SETTABLEKS                       R3 R1 K8 ["format"]
       47 RETURN                           R1 1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+6]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R3 R0 K3 ["status"]
       10 GETTABLE                         R1 R2 R3
       11 JUMPIF                           R1 ; [+2]
       12 LOADNIL                          R1
       13 RETURN                           R1 1
       14 GETTABLEKS                       R2 R0 K4 ["progressUpdates"]
       16 FASTCALL1                        TYPEOF R2 ; [+2]
       17 GETIMPORT                        R1 K1 [typeof]
       19 CALL                             R1 1 1
       20 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
       22 LOADNIL                          R1
       23 RETURN                           R1 1
       24 GETTABLEKS                       R2 R0 K4 ["progressUpdates"]
       26 GETTABLEKS                       R4 R0 K4 ["progressUpdates"]
       28 LENGTH                           R3 R4
       29 GETTABLE                         R1 R2 R3
       30 FASTCALL1                        TYPEOF R1 ; [+3]
       31 MOVE                             R3 R1
       32 GETIMPORT                        R2 K1 [typeof]
       34 CALL                             R2 1 1
       35 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+13]
       37 GETTABLEKS                       R3 R1 K5 ["message"]
       39 FASTCALL1                        TYPEOF R3 ; [+2]
       40 GETIMPORT                        R2 K1 [typeof]
       42 CALL                             R2 1 1
       43 JUMPIFNOTEQKS                    R2 K6 ["string"] ; [+5]
       45 GETTABLEKS                       R2 R1 K5 ["message"]
       47 JUMPIFNOTEQKS                    R2 K7 [""] ; [+3]
       49 LOADNIL                          R2
       50 RETURN                           R2 1
       51 GETUPVAL                         R2 1
       52 GETTABLEKS                       R3 R1 K5 ["message"]
       54 LOADK                            R4 K8 ["Image generation"]
       55 CALL                             R2 2 -1
       56 RETURN                           R2 -1

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 NEWTABLE                         R1 0 0
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 MOVE                             R8 R1
       11 GETUPVAL                         R9 0
       12 GETTABLEKS                       R9 R9 K0 ["formFile"]
       14 GETTABLEKS                       R10 R6 K1 ["name"]
       16 GETTABLEKS                       R11 R6 K2 ["content"]
       18 GETTABLEKS                       R13 R6 K4 ["contentType"]
       20 ORK                              R12 R13 K3 ["image/png"]
       21 CALL                             R9 3 -1
       22 FASTCALL                         TABLE_INSERT ; [+2]
       23 GETIMPORT                        R7 K7 [table.insert]
       25 CALL                             R7 -1 0
       26 FORGLOOP                         R2 2 ; [-17]
       28 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["postGenerateImageAsync"]
        3 DUPTABLE                         R1 K11 [{["robloxctxRcc"] = False, ["robloxctxAuthenticatedUserid"], ["robloxApiKey"], ["textPrompt"], ["model"], ["aspectRatio"], ["images"], ["removeBackground"], ["seed"]}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K3 ["robloxctxAuthenticatedUserid"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K12 ["getFStringCubeGenerationGatewayApiKey"]
       10 CALL                             R3 0 1
       11 LOADK                            R6 K14 ["^%s*(.-)%s*$"]
       12 NAMECALL                         R4 R3 K15 ["match"]
       14 CALL                             R4 2 1
       15 ORK                              R3 R4 K13 [""]
       16 JUMPIFEQKS                       R3 K13 [""] ; [+3]
       18 MOVE                             R2 R3
       19 JUMP                             ; [+1]
       20 LOADNIL                          R2
       21 SETTABLEKS                       R2 R1 K4 ["robloxApiKey"]
       23 GETUPVAL                         R2 3
       24 GETTABLEKS                       R2 R2 K5 ["textPrompt"]
       26 SETTABLEKS                       R2 R1 K5 ["textPrompt"]
       28 GETUPVAL                         R2 3
       29 GETTABLEKS                       R2 R2 K6 ["model"]
       31 SETTABLEKS                       R2 R1 K6 ["model"]
       33 GETUPVAL                         R2 3
       34 GETTABLEKS                       R2 R2 K7 ["aspectRatio"]
       36 SETTABLEKS                       R2 R1 K7 ["aspectRatio"]
       38 GETUPVAL                         R2 4
       39 GETUPVAL                         R3 3
       40 GETTABLEKS                       R3 R3 K8 ["images"]
       42 CALL                             R2 1 1
       43 SETTABLEKS                       R2 R1 K8 ["images"]
       45 GETUPVAL                         R2 3
       46 GETTABLEKS                       R2 R2 K9 ["removeBackground"]
       48 SETTABLEKS                       R2 R1 K9 ["removeBackground"]
       50 GETUPVAL                         R2 3
       51 GETTABLEKS                       R2 R2 K10 ["seed"]
       53 SETTABLEKS                       R2 R1 K10 ["seed"]
       55 CALL                             R0 1 -1
       56 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["GetUserId"]
        3 CALL                             R2 1 -1
        4 FASTCALL                         TOSTRING ; [+2]
        5 GETIMPORT                        R1 K2 [tostring]
        7 CALL                             R1 -1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["callWithOptions"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U4
       17 NEWTABLE                         R4 0 0
       19 CALL                             R2 2 1
       20 GETTABLEKS                       R3 R2 K4 ["success"]
       22 JUMPIF                           R3 ; [+29]
       23 GETTABLEKS                       R4 R2 K5 ["httpDetails"]
       25 JUMPIFNOT                        R4 ; [+5]
       26 GETTABLEKS                       R3 R2 K5 ["httpDetails"]
       28 GETTABLEKS                       R3 R3 K6 ["statusCode"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R3
       32 DUPTABLE                         R4 K10 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
       33 SETTABLEKS                       R3 R4 K6 ["statusCode"]
       35 GETUPVAL                         R5 5
       36 GETIMPORT                        R6 K12 [select]
       38 LOADN                            R7 2
       39 GETIMPORT                        R8 K14 [pcall]
       41 GETUPVAL                         R9 1
       42 GETTABLEKS                       R9 R9 K15 ["throwError"]
       44 MOVE                             R10 R2
       45 CALL                             R8 2 -1
       46 CALL                             R6 -1 1
       47 LOADK                            R7 K16 ["Image generation"]
       48 CALL                             R5 2 1
       49 SETTABLEKS                       R5 R4 K9 ["errorMessage"]
       51 RETURN                           R4 1
       52 DUPTABLE                         R3 K19 [{["ok"] = True, ["statusCode"], ["imageGenerationId"]}]
       53 GETTABLEKS                       R4 R2 K5 ["httpDetails"]
       55 GETTABLEKS                       R4 R4 K6 ["statusCode"]
       57 SETTABLEKS                       R4 R3 K6 ["statusCode"]
       59 GETTABLEKS                       R4 R2 K20 ["data"]
       61 GETTABLEKS                       R4 R4 K18 ["imageGenerationId"]
       63 SETTABLEKS                       R4 R3 K18 ["imageGenerationId"]
       65 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getImageGenerationStatusAsync"]
        3 DUPTABLE                         R1 K6 [{["robloxctxRcc"] = False, ["robloxctxAuthenticatedUserid"], ["imageGenerationId"], ["robloxApiKey"]}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K3 ["robloxctxAuthenticatedUserid"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K4 ["imageGenerationId"]
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R3 R3 K7 ["getFStringCubeGenerationGatewayApiKey"]
       13 CALL                             R3 0 1
       14 LOADK                            R6 K9 ["^%s*(.-)%s*$"]
       15 NAMECALL                         R4 R3 K10 ["match"]
       17 CALL                             R4 2 1
       18 ORK                              R3 R4 K8 [""]
       19 JUMPIFEQKS                       R3 K8 [""] ; [+3]
       21 MOVE                             R2 R3
       22 JUMP                             ; [+1]
       23 LOADNIL                          R2
       24 SETTABLEKS                       R2 R1 K5 ["robloxApiKey"]
       26 CALL                             R0 1 -1
       27 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["GetUserId"]
        3 CALL                             R2 1 -1
        4 FASTCALL                         TOSTRING ; [+2]
        5 GETIMPORT                        R1 K2 [tostring]
        7 CALL                             R1 -1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["callWithOptions"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U3
       16 NEWTABLE                         R4 0 0
       18 CALL                             R2 2 1
       19 GETTABLEKS                       R3 R2 K4 ["success"]
       21 JUMPIF                           R3 ; [+29]
       22 GETTABLEKS                       R4 R2 K5 ["httpDetails"]
       24 JUMPIFNOT                        R4 ; [+5]
       25 GETTABLEKS                       R3 R2 K5 ["httpDetails"]
       27 GETTABLEKS                       R3 R3 K6 ["statusCode"]
       29 JUMP                             ; [+1]
       30 LOADNIL                          R3
       31 DUPTABLE                         R4 K10 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
       32 SETTABLEKS                       R3 R4 K6 ["statusCode"]
       34 GETUPVAL                         R5 4
       35 GETIMPORT                        R6 K12 [select]
       37 LOADN                            R7 2
       38 GETIMPORT                        R8 K14 [pcall]
       40 GETUPVAL                         R9 1
       41 GETTABLEKS                       R9 R9 K15 ["throwError"]
       43 MOVE                             R10 R2
       44 CALL                             R8 2 -1
       45 CALL                             R6 -1 1
       46 LOADK                            R7 K16 ["Image generation"]
       47 CALL                             R5 2 1
       48 SETTABLEKS                       R5 R4 K9 ["errorMessage"]
       50 RETURN                           R4 1
       51 GETUPVAL                         R3 5
       52 GETTABLEKS                       R4 R2 K17 ["data"]
       54 CALL                             R3 1 1
       55 DUPTABLE                         R4 K25 [{["ok"] = True, ["statusCode"], ["status"], ["currentStage"], ["presignedUrl"], ["widthPx"], ["heightPx"], ["format"], ["errorMessage"]}]
       56 GETTABLEKS                       R5 R2 K5 ["httpDetails"]
       58 GETTABLEKS                       R5 R5 K6 ["statusCode"]
       60 SETTABLEKS                       R5 R4 K6 ["statusCode"]
       62 GETTABLEKS                       R5 R2 K17 ["data"]
       64 GETTABLEKS                       R5 R5 K19 ["status"]
       66 SETTABLEKS                       R5 R4 K19 ["status"]
       68 GETTABLEKS                       R5 R2 K17 ["data"]
       70 GETTABLEKS                       R5 R5 K20 ["currentStage"]
       72 SETTABLEKS                       R5 R4 K20 ["currentStage"]
       74 GETTABLEKS                       R5 R3 K21 ["presignedUrl"]
       76 SETTABLEKS                       R5 R4 K21 ["presignedUrl"]
       78 GETTABLEKS                       R5 R3 K22 ["widthPx"]
       80 SETTABLEKS                       R5 R4 K22 ["widthPx"]
       82 GETTABLEKS                       R5 R3 K23 ["heightPx"]
       84 SETTABLEKS                       R5 R4 K23 ["heightPx"]
       86 GETTABLEKS                       R5 R3 K24 ["format"]
       88 SETTABLEKS                       R5 R4 K24 ["format"]
       90 GETUPVAL                         R5 6
       91 GETTABLEKS                       R6 R2 K17 ["data"]
       93 CALL                             R5 1 1
       94 SETTABLEKS                       R5 R4 K9 ["errorMessage"]
       96 RETURN                           R4 1

PROTO_8:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+3]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["ImageGeneration"]
        5 DUPTABLE                         R2 K3 [{"startAsync", "getStatusAsync"}]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 SETTABLEKS                       R3 R2 K1 ["startAsync"]
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          UPVAL U6
       22 CAPTURE                          UPVAL U7
       23 SETTABLEKS                       R3 R2 K2 ["getStatusAsync"]
       25 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Gen3d"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["HttpWrapper"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["OpenApiCubeGenerationGateway"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K13 ["Src"]
       31 GETTABLEKS                       R5 R5 K14 ["Util"]
       33 GETTABLEKS                       R5 R5 K15 ["StudioEndpointUtil"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K16 ["Bin"]
       40 GETTABLEKS                       R6 R6 K17 ["Common"]
       42 GETTABLEKS                       R6 R6 K18 ["defineLuaFlags"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R1 K13 ["Src"]
       49 GETTABLEKS                       R7 R7 K14 ["Util"]
       51 GETTABLEKS                       R7 R7 K19 ["formatBackendError"]
       53 CALL                             R6 1 1
       54 DUPCLOSURE                       R7 K20 [PROTO_0]
       55 CAPTURE                          VAL R5
       56 DUPCLOSURE                       R8 K21 [PROTO_1]
       57 DUPTABLE                         R9 K25 [{["Failed"] = True, ["Terminated"] = True}]
       58 DUPCLOSURE                       R10 K26 [PROTO_2]
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R6
       61 DUPCLOSURE                       R11 K27 [PROTO_3]
       62 CAPTURE                          VAL R2
       63 DUPCLOSURE                       R12 K28 [PROTO_8]
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R11
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R10
       72 RETURN                           R12 1
