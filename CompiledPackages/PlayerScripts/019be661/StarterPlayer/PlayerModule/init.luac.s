PROTO_0:
        0 DUPTABLE                         R1 K1 [{"data"}]
        1 DUPTABLE                         R2 K7 [{["playerData"], ["connectionUtil"], ["eventBus"], ["isServerAuthority"] = False}]
        2 NEWTABLE                         R3 0 0
        4 SETTABLEKS                       R3 R2 K2 ["playerData"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K8 ["new"]
        9 CALL                             R3 0 1
       10 SETTABLEKS                       R3 R2 K3 ["connectionUtil"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K8 ["new"]
       15 CALL                             R3 0 1
       16 SETTABLEKS                       R3 R2 K4 ["eventBus"]
       18 SETTABLEKS                       R2 R1 K0 ["data"]
       20 GETUPVAL                         R2 2
       21 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
       23 GETIMPORT                        R0 K10 [setmetatable]
       25 CALL                             R0 2 1
       26 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["data"]
        5 GETTABLEKS                       R2 R2 K3 ["playerData"]
        7 CALL                             R1 1 3
        8 FORGPREP_NEXT                    R1
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K4 ["getCharacter"]
       12 CALL                             R6 0 1
       13 SETTABLEKS                       R6 R5 K5 ["character"]
       15 GETTABLEKS                       R6 R5 K5 ["character"]
       17 JUMPIF                           R6 ; [+1]
       18 RETURN                           R0 0
       19 GETUPVAL                         R6 2
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R8 R8 K2 ["data"]
       23 MOVE                             R9 R5
       24 MOVE                             R10 R0
       25 NAMECALL                         R6 R6 K6 ["Update"]
       27 CALL                             R6 4 0
       28 FORGLOOP                         R1 2 ; [-20]
       30 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["PLAYERMODULE_RENDERSTEPPED_INPUT"]
        2 NAMECALL                         R0 R0 K1 ["UnbindFromRenderStep"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["data"]
        5 GETTABLEKS                       R2 R2 K3 ["playerData"]
        7 CALL                             R1 1 3
        8 FORGPREP_NEXT                    R1
        9 GETUPVAL                         R6 1
       10 MOVE                             R8 R5
       11 MOVE                             R9 R0
       12 NAMECALL                         R6 R6 K4 ["Update"]
       14 CALL                             R6 3 0
       15 FORGLOOP                         R1 2 ; [-7]
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["PLAYERMODULE_RENDERSTEPPED_CAMERA"]
        2 NAMECALL                         R0 R0 K1 ["UnbindFromRenderStep"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["data"]
        3 GETTABLEKS                       R1 R1 K1 ["playerData"]
        5 DUPTABLE                         R2 K9 [{["isJumping"] = False, ["moveVector"], ["actions"], ["player"], ["character"] = }]
        6 GETIMPORT                        R3 K12 [Vector2.new]
        8 CALL                             R3 0 1
        9 SETTABLEKS                       R3 R2 K4 ["moveVector"]
       11 NEWTABLE                         R3 0 0
       13 SETTABLEKS                       R3 R2 K5 ["actions"]
       15 SETTABLEKS                       R0 R2 K6 ["player"]
       17 SETTABLE                         R2 R1 R0
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K13 ["initialize"]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K0 ["data"]
       24 CALL                             R1 1 0
       25 GETUPVAL                         R1 2
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K0 ["data"]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K0 ["data"]
       32 GETTABLEKS                       R5 R5 K1 ["playerData"]
       34 GETTABLE                         R4 R5 R0
       35 NAMECALL                         R1 R1 K13 ["initialize"]
       37 CALL                             R1 3 0
       38 GETUPVAL                         R1 3
       39 LOADK                            R3 K14 ["PLAYERMODULE_RENDERSTEPPED_INPUT"]
       40 GETIMPORT                        R4 K18 [Enum.RenderPriority.Input]
       42 GETTABLEKS                       R4 R4 K19 ["Value"]
       44 NEWCLOSURE                       R5 P0
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          UPVAL U4
       47 CAPTURE                          UPVAL U2
       48 NAMECALL                         R1 R1 K20 ["BindToRenderStep"]
       50 CALL                             R1 4 0
       51 GETUPVAL                         R1 0
       52 GETTABLEKS                       R1 R1 K0 ["data"]
       54 GETTABLEKS                       R1 R1 K21 ["connectionUtil"]
       56 LOADK                            R3 K14 ["PLAYERMODULE_RENDERSTEPPED_INPUT"]
       57 DUPCLOSURE                       R4 K22 [PROTO_2]
       58 CAPTURE                          UPVAL U3
       59 NAMECALL                         R1 R1 K23 ["trackBoundFunction"]
       61 CALL                             R1 3 0
       62 GETUPVAL                         R1 3
       63 LOADK                            R3 K24 ["PLAYERMODULE_RENDERSTEPPED_CAMERA"]
       64 GETIMPORT                        R4 K26 [Enum.RenderPriority.Camera]
       66 GETTABLEKS                       R4 R4 K19 ["Value"]
       68 NEWCLOSURE                       R5 P2
       69 CAPTURE                          UPVAL U0
       70 CAPTURE                          UPVAL U5
       71 NAMECALL                         R1 R1 K20 ["BindToRenderStep"]
       73 CALL                             R1 4 0
       74 GETUPVAL                         R1 0
       75 GETTABLEKS                       R1 R1 K0 ["data"]
       77 GETTABLEKS                       R1 R1 K21 ["connectionUtil"]
       79 LOADK                            R3 K24 ["PLAYERMODULE_RENDERSTEPPED_CAMERA"]
       80 DUPCLOSURE                       R4 K27 [PROTO_4]
       81 CAPTURE                          UPVAL U3
       82 NAMECALL                         R1 R1 K23 ["trackBoundFunction"]
       84 CALL                             R1 3 0
       85 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["data"]
        2 GETTABLEKS                       R1 R1 K1 ["connectionUtil"]
        4 LOADK                            R3 K2 ["ONLOCALPLAYER"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K3 ["onLocalPlayer"]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U4
       15 CALL                             R4 1 -1
       16 NAMECALL                         R1 R1 K4 ["trackConnection"]
       18 CALL                             R1 -1 0
       19 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["data"]
        2 GETTABLEKS                       R1 R1 K1 ["connectionUtil"]
        4 NAMECALL                         R1 R1 K2 ["disconnectAll"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K7 [script]
       11 LOADK                            R4 K8 ["CommonUtils"]
       12 NAMECALL                         R2 R2 K9 ["WaitForChild"]
       14 CALL                             R2 2 -1
       15 CALL                             R1 -1 1
       16 GETTABLEKS                       R2 R1 K10 ["get"]
       18 LOADK                            R3 K11 ["CharacterUtil"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R1 K10 ["get"]
       22 LOADK                            R4 K12 ["ConnectionUtil"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R4 R1 K10 ["get"]
       26 LOADK                            R5 K13 ["EventBus"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K5 [require]
       30 GETIMPORT                        R6 K7 [script]
       32 LOADK                            R8 K14 ["CameraModule"]
       33 NAMECALL                         R6 R6 K9 ["WaitForChild"]
       35 CALL                             R6 2 -1
       36 CALL                             R5 -1 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETIMPORT                        R7 K7 [script]
       41 LOADK                            R9 K15 ["ControlModule"]
       42 NAMECALL                         R7 R7 K9 ["WaitForChild"]
       44 CALL                             R7 2 -1
       45 CALL                             R6 -1 1
       46 GETIMPORT                        R7 K5 [require]
       48 GETIMPORT                        R8 K7 [script]
       50 LOADK                            R10 K16 ["ServerAuthority"]
       51 NAMECALL                         R8 R8 K9 ["WaitForChild"]
       53 CALL                             R8 2 -1
       54 CALL                             R7 -1 1
       55 DUPTABLE                         R8 K23 [{["BIND_TO_SIMULATION"] = "BIND_TO_SIMULATION", ["RENDERSTEPPED_INPUT"] = "PLAYERMODULE_RENDERSTEPPED_INPUT", ["RENDERSTEPPED_CAMERA"] = "PLAYERMODULE_RENDERSTEPPED_CAMERA", ["ONLOCALPLAYER"] = "ONLOCALPLAYER"}]
       56 NEWTABLE                         R9 0 0
       58 SETTABLEKS                       R9 R9 K24 ["__index"]
       60 DUPCLOSURE                       R10 K25 [PROTO_0]
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R9
       64 SETTABLEKS                       R10 R9 K26 ["new"]
       66 DUPCLOSURE                       R10 K27 [PROTO_6]
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R5
       72 SETTABLEKS                       R10 R9 K28 ["start"]
       74 DUPCLOSURE                       R10 K29 [PROTO_7]
       75 SETTABLEKS                       R10 R9 K30 ["stop"]
       77 GETTABLEKS                       R10 R9 K26 ["new"]
       79 CALL                             R10 0 1
       80 NAMECALL                         R11 R10 K28 ["start"]
       82 CALL                             R11 1 0
       83 NEWTABLE                         R11 0 0
       85 RETURN                           R11 1
