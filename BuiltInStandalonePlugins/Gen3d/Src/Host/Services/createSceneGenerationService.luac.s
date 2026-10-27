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

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["httpDetails"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["httpDetails"]
        5 GETTABLEKS                       R1 R1 K1 ["statusCode"]
        7 JUMP                             ; [+1]
        8 LOADNIL                          R1
        9 GETUPVAL                         R2 0
       10 GETIMPORT                        R3 K3 [select]
       12 LOADN                            R4 2
       13 GETIMPORT                        R5 K5 [pcall]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K6 ["throwError"]
       18 MOVE                             R7 R0
       19 CALL                             R5 2 -1
       20 CALL                             R3 -1 1
       21 LOADK                            R4 K7 ["Scene generation"]
       22 CALL                             R2 2 1
       23 RETURN                           R1 2

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["postGenerateSceneAsync"]
        3 DUPTABLE                         R1 K11 [{["robloxctxRcc"] = False, ["robloxctxAuthenticatedUserid"], ["robloxApiKey"], ["textPrompts"], ["images"], ["sceneSize"], ["originWorldCoordinate"], ["useMeshGen"], ["adminOptions"]}]
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
       24 GETTABLEKS                       R2 R2 K5 ["textPrompts"]
       26 SETTABLEKS                       R2 R1 K5 ["textPrompts"]
       28 GETUPVAL                         R2 4
       29 GETUPVAL                         R3 3
       30 GETTABLEKS                       R3 R3 K6 ["images"]
       32 CALL                             R2 1 1
       33 SETTABLEKS                       R2 R1 K6 ["images"]
       35 GETUPVAL                         R2 3
       36 GETTABLEKS                       R2 R2 K7 ["sceneSize"]
       38 SETTABLEKS                       R2 R1 K7 ["sceneSize"]
       40 GETUPVAL                         R2 3
       41 GETTABLEKS                       R2 R2 K8 ["originWorldCoordinate"]
       43 SETTABLEKS                       R2 R1 K8 ["originWorldCoordinate"]
       45 GETUPVAL                         R2 3
       46 GETTABLEKS                       R2 R2 K9 ["useMeshGen"]
       48 SETTABLEKS                       R2 R1 K9 ["useMeshGen"]
       50 GETUPVAL                         R2 3
       51 GETTABLEKS                       R2 R2 K10 ["adminOptions"]
       53 SETTABLEKS                       R2 R1 K10 ["adminOptions"]
       55 CALL                             R0 1 -1
       56 RETURN                           R0 -1

PROTO_4:
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
       22 JUMPIF                           R3 ; [+31]
       23 GETTABLEKS                       R6 R2 K5 ["httpDetails"]
       25 JUMPIFNOT                        R6 ; [+5]
       26 GETTABLEKS                       R5 R2 K5 ["httpDetails"]
       28 GETTABLEKS                       R5 R5 K6 ["statusCode"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R5
       32 GETUPVAL                         R6 5
       33 GETIMPORT                        R7 K8 [select]
       35 LOADN                            R8 2
       36 GETIMPORT                        R9 K10 [pcall]
       38 GETUPVAL                         R10 1
       39 GETTABLEKS                       R10 R10 K11 ["throwError"]
       41 MOVE                             R11 R2
       42 CALL                             R9 2 -1
       43 CALL                             R7 -1 1
       44 LOADK                            R8 K12 ["Scene generation"]
       45 CALL                             R6 2 1
       46 MOVE                             R3 R5
       47 MOVE                             R4 R6
       48 DUPTABLE                         R5 K16 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
       49 SETTABLEKS                       R3 R5 K6 ["statusCode"]
       51 SETTABLEKS                       R4 R5 K15 ["errorMessage"]
       53 RETURN                           R5 1
       54 DUPTABLE                         R3 K19 [{["ok"] = True, ["statusCode"], ["jobId"]}]
       55 GETTABLEKS                       R4 R2 K5 ["httpDetails"]
       57 GETTABLEKS                       R4 R4 K6 ["statusCode"]
       59 SETTABLEKS                       R4 R3 K6 ["statusCode"]
       61 GETTABLEKS                       R4 R2 K20 ["data"]
       63 GETTABLEKS                       R4 R4 K18 ["jobId"]
       65 SETTABLEKS                       R4 R3 K18 ["jobId"]
       67 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSceneGenerationStatusAsync"]
        3 DUPTABLE                         R1 K6 [{["robloxctxRcc"] = False, ["robloxctxAuthenticatedUserid"], ["jobId"], ["robloxApiKey"]}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K3 ["robloxctxAuthenticatedUserid"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K4 ["jobId"]
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

PROTO_6:
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
       21 JUMPIF                           R3 ; [+31]
       22 GETTABLEKS                       R6 R2 K5 ["httpDetails"]
       24 JUMPIFNOT                        R6 ; [+5]
       25 GETTABLEKS                       R5 R2 K5 ["httpDetails"]
       27 GETTABLEKS                       R5 R5 K6 ["statusCode"]
       29 JUMP                             ; [+1]
       30 LOADNIL                          R5
       31 GETUPVAL                         R6 4
       32 GETIMPORT                        R7 K8 [select]
       34 LOADN                            R8 2
       35 GETIMPORT                        R9 K10 [pcall]
       37 GETUPVAL                         R10 1
       38 GETTABLEKS                       R10 R10 K11 ["throwError"]
       40 MOVE                             R11 R2
       41 CALL                             R9 2 -1
       42 CALL                             R7 -1 1
       43 LOADK                            R8 K12 ["Scene generation"]
       44 CALL                             R6 2 1
       45 MOVE                             R3 R5
       46 MOVE                             R4 R6
       47 DUPTABLE                         R5 K16 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
       48 SETTABLEKS                       R3 R5 K6 ["statusCode"]
       50 SETTABLEKS                       R4 R5 K15 ["errorMessage"]
       52 RETURN                           R5 1
       53 GETTABLEKS                       R3 R2 K17 ["data"]
       55 GETTABLEKS                       R6 R3 K18 ["result"]
       57 FASTCALL1                        TYPEOF R6 ; [+2]
       58 GETIMPORT                        R5 K20 [typeof]
       60 CALL                             R5 1 1
       61 JUMPIFNOTEQKS                    R5 K21 ["table"] ; [+4]
       63 GETTABLEKS                       R4 R3 K18 ["result"]
       65 JUMP                             ; [+1]
       66 LOADNIL                          R4
       67 JUMPIFNOT                        R4 ; [+3]
       68 GETTABLEKS                       R5 R4 K22 ["scriptUrl"]
       70 JUMP                             ; [+2]
       71 GETTABLEKS                       R5 R3 K22 ["scriptUrl"]
       73 DUPTABLE                         R6 K26 [{["ok"] = True, ["statusCode"], ["status"], ["currentStage"], ["scriptUrl"], ["errorMessage"]}]
       74 GETTABLEKS                       R7 R2 K5 ["httpDetails"]
       76 GETTABLEKS                       R7 R7 K6 ["statusCode"]
       78 SETTABLEKS                       R7 R6 K6 ["statusCode"]
       80 GETUPVAL                         R7 5
       81 GETTABLEKS                       R7 R7 K27 ["LayoutGenOps"]
       83 GETTABLEKS                       R7 R7 K28 ["normalizeSceneStatus"]
       85 GETTABLEKS                       R8 R3 K24 ["status"]
       87 MOVE                             R9 R5
       88 CALL                             R7 2 1
       89 SETTABLEKS                       R7 R6 K24 ["status"]
       91 GETTABLEKS                       R7 R3 K25 ["currentStage"]
       93 JUMPIF                           R7 ; [+5]
       94 GETTABLEKS                       R7 R3 K29 ["step"]
       96 JUMPIF                           R7 ; [+2]
       97 GETTABLEKS                       R7 R3 K30 ["stage"]
       99 SETTABLEKS                       R7 R6 K25 ["currentStage"]
      101 SETTABLEKS                       R5 R6 K22 ["scriptUrl"]
      103 GETTABLEKS                       R7 R3 K31 ["error"]
      105 SETTABLEKS                       R7 R6 K15 ["errorMessage"]
      107 RETURN                           R6 1

PROTO_7:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+3]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["SceneGeneration"]
        5 DUPCLOSURE                       R2 K1 [PROTO_2]
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 DUPTABLE                         R3 K4 [{"startAsync", "getStatusAsync"}]
        9 NEWCLOSURE                       R4 P1
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U1
       16 SETTABLEKS                       R4 R3 K2 ["startAsync"]
       18 NEWCLOSURE                       R4 P2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R1
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          UPVAL U6
       25 SETTABLEKS                       R4 R3 K3 ["getStatusAsync"]
       27 RETURN                           R3 1

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
       17 GETTABLEKS                       R3 R3 K11 ["Gen3dCore"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["HttpWrapper"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["OpenApiCubeGenerationGateway"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K14 ["Src"]
       38 GETTABLEKS                       R6 R6 K15 ["Util"]
       40 GETTABLEKS                       R6 R6 K16 ["StudioEndpointUtil"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R1 K17 ["Bin"]
       47 GETTABLEKS                       R7 R7 K18 ["Common"]
       49 GETTABLEKS                       R7 R7 K19 ["defineLuaFlags"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R8 R1 K14 ["Src"]
       56 GETTABLEKS                       R8 R8 K15 ["Util"]
       58 GETTABLEKS                       R8 R8 K20 ["formatBackendError"]
       60 CALL                             R7 1 1
       61 DUPCLOSURE                       R8 K21 [PROTO_0]
       62 CAPTURE                          VAL R6
       63 DUPCLOSURE                       R9 K22 [PROTO_1]
       64 CAPTURE                          VAL R3
       65 DUPCLOSURE                       R10 K23 [PROTO_7]
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R2
       73 RETURN                           R10 1
