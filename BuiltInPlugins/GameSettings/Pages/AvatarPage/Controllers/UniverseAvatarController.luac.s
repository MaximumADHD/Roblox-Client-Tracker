PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["round"]
        3 GETTABLEKS                       R3 R0 K1 ["Min"]
        5 LOADN                            R4 2
        6 CALL                             R2 2 -1
        7 FASTCALL                         TOSTRING ; [+2]
        8 GETIMPORT                        R1 K3 [tostring]
       10 CALL                             R1 -1 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K0 ["round"]
       14 GETTABLEKS                       R4 R0 K4 ["Max"]
       16 LOADN                            R5 2
       17 CALL                             R3 2 -1
       18 FASTCALL                         TOSTRING ; [+2]
       19 GETIMPORT                        R2 K3 [tostring]
       21 CALL                             R2 -1 1
       22 RETURN                           R1 2

PROTO_1:
        0 NEWTABLE                         R1 1 0
        2 SETTABLEKS                       R0 R1 K0 ["__networking"]
        4 GETUPVAL                         R4 0
        5 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K2 [setmetatable]
       10 CALL                             R2 2 1
       11 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["__networking"]
        2 LOADK                            R4 K1 ["avatar"]
        3 LOADK                            R5 K2 ["/v1/avatar-rules"]
        4 NAMECALL                         R2 R1 K3 ["get"]
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["develop"]
        3 LOADK                            R7 K2 ["/v2/universes/"]
        4 MOVE                             R8 R1
        5 LOADK                            R9 K3 ["/configuration"]
        6 CONCAT                           R6 R7 R9
        7 NAMECALL                         R3 R2 K4 ["get"]
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["__networking"]
        2 LOADK                            R6 K1 ["develop"]
        3 LOADK                            R8 K2 ["/v2/universes/"]
        4 MOVE                             R9 R1
        5 LOADK                            R10 K3 ["/configuration"]
        6 CONCAT                           R7 R8 R10
        7 DUPTABLE                         R8 K5 [{"Body"}]
        8 SETTABLEKS                       R2 R8 K4 ["Body"]
       10 NAMECALL                         R4 R3 K6 ["patch"]
       12 CALL                             R4 4 -1
       13 RETURN                           R4 -1

PROTO_5:
        0 LOADK                            R4 K0 ["StarterPlayer"]
        1 NAMECALL                         R2 R1 K1 ["GetService"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R1 K2 ["GameId"]
        6 JUMPIFNOTEQKN                    R3 K3 [0] ; [+4]
        8 GETTABLEKS                       R4 R2 K4 ["GameSettingsAvatar"]
       10 RETURN                           R4 1
       11 MOVE                             R6 R3
       12 NAMECALL                         R4 R0 K5 ["configurationV2GET"]
       14 CALL                             R4 2 1
       15 NAMECALL                         R4 R4 K6 ["await"]
       17 CALL                             R4 1 1
       18 GETTABLEKS                       R6 R4 K7 ["responseBody"]
       20 GETTABLEKS                       R5 R6 K8 ["universeAvatarType"]
       22 JUMPIFNOTEQKS                    R5 K9 ["MorphToR6"] ; [+4]
       24 GETIMPORT                        R6 K13 [Enum.GameAvatarType.R6]
       26 RETURN                           R6 1
       27 JUMPIFNOTEQKS                    R5 K14 ["MorphToR15"] ; [+4]
       29 GETIMPORT                        R6 K16 [Enum.GameAvatarType.R15]
       31 RETURN                           R6 1
       32 GETIMPORT                        R6 K18 [Enum.GameAvatarType.PlayerChoice]
       34 RETURN                           R6 1

PROTO_6:
        0 LOADK                            R5 K0 ["StarterPlayer"]
        1 NAMECALL                         R3 R1 K1 ["GetService"]
        3 CALL                             R3 2 1
        4 GETTABLEKS                       R4 R1 K2 ["GameId"]
        6 JUMPIFNOTEQKN                    R4 K3 [0] ; [+4]
        8 SETTABLEKS                       R2 R3 K4 ["GameSettingsAvatar"]
       10 RETURN                           R0 0
       11 LOADNIL                          R5
       12 GETIMPORT                        R6 K8 [Enum.GameAvatarType.R6]
       14 JUMPIFNOTEQ                      R2 R6 ; [+3]
       16 LOADK                            R5 K9 ["MorphToR6"]
       17 JUMP                             ; [+7]
       18 GETIMPORT                        R6 K11 [Enum.GameAvatarType.R15]
       20 JUMPIFNOTEQ                      R2 R6 ; [+3]
       22 LOADK                            R5 K12 ["MorphToR15"]
       23 JUMP                             ; [+1]
       24 LOADK                            R5 K13 ["PlayerChoice"]
       25 MOVE                             R8 R4
       26 DUPTABLE                         R9 K15 [{"universeAvatarType"}]
       27 SETTABLEKS                       R5 R9 K14 ["universeAvatarType"]
       29 NAMECALL                         R6 R0 K16 ["configurationV2PATCH"]
       31 CALL                             R6 3 1
       32 NAMECALL                         R6 R6 K17 ["await"]
       34 CALL                             R6 1 0
       35 RETURN                           R0 0

PROTO_7:
        0 LOADK                            R4 K0 ["StarterPlayer"]
        1 NAMECALL                         R2 R1 K1 ["GetService"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R1 K2 ["GameId"]
        6 JUMPIFNOTEQKN                    R3 K3 [0] ; [+8]
        8 GETTABLEKS                       R5 R2 K4 ["AllowCustomAnimations"]
       10 JUMPIFNOT                        R5 ; [+2]
       11 LOADK                            R4 K5 ["PlayerChoice"]
       12 RETURN                           R4 1
       13 LOADK                            R4 K6 ["Standard"]
       14 RETURN                           R4 1
       15 MOVE                             R6 R3
       16 NAMECALL                         R4 R0 K7 ["configurationV2GET"]
       18 CALL                             R4 2 1
       19 NAMECALL                         R4 R4 K8 ["await"]
       21 CALL                             R4 1 1
       22 GETTABLEKS                       R6 R4 K9 ["responseBody"]
       24 GETTABLEKS                       R5 R6 K10 ["universeAnimationType"]
       26 RETURN                           R5 1

PROTO_8:
        0 LOADK                            R5 K0 ["StarterPlayer"]
        1 NAMECALL                         R3 R1 K1 ["GetService"]
        3 CALL                             R3 2 1
        4 GETTABLEKS                       R4 R1 K2 ["GameId"]
        6 JUMPIFNOTEQKN                    R4 K3 [0] ; [+8]
        8 JUMPIFEQKS                       R2 K4 ["Standard"] ; [+2]
       10 LOADB                            R5 0 +1
       11 LOADB                            R5 1
       12 SETTABLEKS                       R5 R3 K5 ["AllowCustomAnimations"]
       14 RETURN                           R0 0
       15 MOVE                             R7 R4
       16 DUPTABLE                         R8 K7 [{"universeAnimationType"}]
       17 SETTABLEKS                       R2 R8 K6 ["universeAnimationType"]
       19 NAMECALL                         R5 R0 K8 ["configurationV2PATCH"]
       21 CALL                             R5 3 1
       22 NAMECALL                         R5 R5 K9 ["await"]
       24 CALL                             R5 1 0
       25 RETURN                           R0 0

PROTO_9:
        0 LOADK                            R4 K0 ["StarterPlayer"]
        1 NAMECALL                         R2 R1 K1 ["GetService"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R1 K2 ["GameId"]
        6 JUMPIFNOTEQKN                    R3 K3 [0] ; [+4]
        8 GETTABLEKS                       R4 R2 K4 ["GameSettingsR15Collision"]
       10 RETURN                           R4 1
       11 MOVE                             R6 R3
       12 NAMECALL                         R4 R0 K5 ["configurationV2GET"]
       14 CALL                             R4 2 1
       15 NAMECALL                         R4 R4 K6 ["await"]
       17 CALL                             R4 1 1
       18 GETIMPORT                        R6 K9 [Enum.R15CollisionType]
       20 GETTABLEKS                       R8 R4 K10 ["responseBody"]
       22 GETTABLEKS                       R7 R8 K11 ["universeCollisionType"]
       24 GETTABLE                         R5 R6 R7
       25 RETURN                           R5 1

PROTO_10:
        0 LOADK                            R5 K0 ["StarterPlayer"]
        1 NAMECALL                         R3 R1 K1 ["GetService"]
        3 CALL                             R3 2 1
        4 GETTABLEKS                       R4 R1 K2 ["GameId"]
        6 JUMPIFNOTEQKN                    R4 K3 [0] ; [+4]
        8 SETTABLEKS                       R2 R3 K4 ["GameSettingsR15Collision"]
       10 RETURN                           R0 0
       11 MOVE                             R7 R4
       12 DUPTABLE                         R8 K6 [{"universeCollisionType"}]
       13 GETTABLEKS                       R9 R2 K7 ["Name"]
       15 SETTABLEKS                       R9 R8 K5 ["universeCollisionType"]
       17 NAMECALL                         R5 R0 K8 ["configurationV2PATCH"]
       19 CALL                             R5 3 1
       20 NAMECALL                         R5 R5 K9 ["await"]
       22 CALL                             R5 1 0
       23 RETURN                           R0 0

PROTO_11:
        0 NAMECALL                         R1 R0 K0 ["avatarRulesV1GET"]
        2 CALL                             R1 1 1
        3 NAMECALL                         R1 R1 K1 ["await"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R4 R1 K2 ["responseBody"]
        8 GETTABLEKS                       R3 R4 K3 ["scales"]
       10 GETTABLEKS                       R2 R3 K4 ["height"]
       12 GETIMPORT                        R3 K7 [NumberRange.new]
       14 GETTABLEKS                       R4 R2 K8 ["min"]
       16 GETTABLEKS                       R5 R2 K9 ["max"]
       18 CALL                             R3 2 1
       19 GETTABLEKS                       R4 R2 K10 ["increment"]
       21 RETURN                           R3 2

PROTO_12:
        0 LOADK                            R4 K0 ["StarterPlayer"]
        1 NAMECALL                         R2 R1 K1 ["GetService"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R1 K2 ["GameId"]
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 JUMPIFNOTEQKN                    R3 K3 [0] ; [+10]
       10 GETTABLEKS                       R6 R2 K4 ["GameSettingsScaleRangeHeight"]
       12 GETTABLEKS                       R4 R6 K5 ["Min"]
       14 GETTABLEKS                       R6 R2 K4 ["GameSettingsScaleRangeHeight"]
       16 GETTABLEKS                       R5 R6 K6 ["Max"]
       18 JUMP                             ; [+19]
       19 MOVE                             R8 R3
       20 NAMECALL                         R6 R0 K7 ["configurationV2GET"]
       22 CALL                             R6 2 1
       23 NAMECALL                         R6 R6 K8 ["await"]
       25 CALL                             R6 1 1
       26 GETTABLEKS                       R8 R6 K9 ["responseBody"]
       28 GETTABLEKS                       R7 R8 K10 ["universeAvatarMinScales"]
       30 GETTABLEKS                       R4 R7 K11 ["height"]
       32 GETTABLEKS                       R8 R6 K9 ["responseBody"]
       34 GETTABLEKS                       R7 R8 K12 ["universeAvatarMaxScales"]
       36 GETTABLEKS                       R5 R7 K11 ["height"]
       38 GETIMPORT                        R6 K15 [NumberRange.new]
       40 MOVE                             R7 R4
       41 MOVE                             R8 R5
       42 CALL                             R6 2 -1
       43 RETURN                           R6 -1

PROTO_13:
        0 LOADK                            R5 K0 ["StarterPlayer"]
        1 NAMECALL                         R3 R1 K1 ["GetService"]
        3 CALL                             R3 2 1
        4 GETTABLEKS                       R4 R1 K2 ["GameId"]
        6 JUMPIFNOTEQKN                    R4 K3 [0] ; [+4]
        8 SETTABLEKS                       R2 R3 K4 ["GameSettingsScaleRangeHeight"]
       10 RETURN                           R0 0
       11 GETUPVAL                         R9 0
       12 GETTABLEKS                       R8 R9 K5 ["round"]
       14 GETTABLEKS                       R9 R2 K6 ["Min"]
       16 LOADN                            R10 2
       17 CALL                             R8 2 -1
       18 FASTCALL                         TOSTRING ; [+2]
       19 GETIMPORT                        R7 K8 [tostring]
       21 CALL                             R7 -1 1
       22 MOVE                             R5 R7
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R7 R8 K5 ["round"]
       26 GETTABLEKS                       R8 R2 K9 ["Max"]
       28 LOADN                            R9 2
       29 CALL                             R7 2 -1
       30 FASTCALL                         TOSTRING ; [+2]
       31 GETIMPORT                        R6 K8 [tostring]
       33 CALL                             R6 -1 1
       34 MOVE                             R9 R4
       35 DUPTABLE                         R10 K12 [{"universeAvatarMinScales", "universeAvatarMaxScales"}]
       36 DUPTABLE                         R11 K14 [{"height"}]
       37 SETTABLEKS                       R5 R11 K13 ["height"]
       39 SETTABLEKS                       R11 R10 K10 ["universeAvatarMinScales"]
       41 DUPTABLE                         R11 K14 [{"height"}]
       42 SETTABLEKS                       R6 R11 K13 ["height"]
       44 SETTABLEKS                       R11 R10 K11 ["universeAvatarMaxScales"]
       46 NAMECALL                         R7 R0 K15 ["configurationV2PATCH"]
       48 CALL                             R7 3 1
       49 NAMECALL                         R7 R7 K16 ["await"]
       51 CALL                             R7 1 0
       52 RETURN                           R0 0

PROTO_14:
        0 NAMECALL                         R1 R0 K0 ["avatarRulesV1GET"]
        2 CALL                             R1 1 1
        3 NAMECALL                         R1 R1 K1 ["await"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R4 R1 K2 ["responseBody"]
        8 GETTABLEKS                       R3 R4 K3 ["scales"]
       10 GETTABLEKS                       R2 R3 K4 ["width"]
       12 GETIMPORT                        R3 K7 [NumberRange.new]
       14 GETTABLEKS                       R4 R2 K8 ["min"]
       16 GETTABLEKS                       R5 R2 K9 ["max"]
       18 CALL                             R3 2 1
       19 GETTABLEKS                       R4 R2 K10 ["increment"]
       21 RETURN                           R3 2

PROTO_15:
        0 LOADK                            R4 K0 ["StarterPlayer"]
        1 NAMECALL                         R2 R1 K1 ["GetService"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R1 K2 ["GameId"]
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 JUMPIFNOTEQKN                    R3 K3 [0] ; [+10]
       10 GETTABLEKS                       R6 R2 K4 ["GameSettingsScaleRangeWidth"]
       12 GETTABLEKS                       R4 R6 K5 ["Min"]
       14 GETTABLEKS                       R6 R2 K4 ["GameSettingsScaleRangeWidth"]
       16 GETTABLEKS                       R5 R6 K6 ["Max"]
       18 JUMP                             ; [+19]
       19 MOVE                             R8 R3
       20 NAMECALL                         R6 R0 K7 ["configurationV2GET"]
       22 CALL                             R6 2 1
       23 NAMECALL                         R6 R6 K8 ["await"]
       25 CALL                             R6 1 1
       26 GETTABLEKS                       R8 R6 K9 ["responseBody"]
       28 GETTABLEKS                       R7 R8 K10 ["universeAvatarMinScales"]
       30 GETTABLEKS                       R4 R7 K11 ["width"]
       32 GETTABLEKS                       R8 R6 K9 ["responseBody"]
       34 GETTABLEKS                       R7 R8 K12 ["universeAvatarMaxScales"]
       36 GETTABLEKS                       R5 R7 K11 ["width"]
       38 GETIMPORT                        R6 K15 [NumberRange.new]
       40 MOVE                             R7 R4
       41 MOVE                             R8 R5
       42 CALL                             R6 2 -1
       43 RETURN                           R6 -1

PROTO_16:
        0 LOADK                            R5 K0 ["StarterPlayer"]
        1 NAMECALL                         R3 R1 K1 ["GetService"]
        3 CALL                             R3 2 1
        4 GETTABLEKS                       R4 R1 K2 ["GameId"]
        6 JUMPIFNOTEQKN                    R4 K3 [0] ; [+4]
        8 SETTABLEKS                       R2 R3 K4 ["GameSettingsScaleRangeWidth"]
       10 RETURN                           R0 0
       11 GETUPVAL                         R9 0
       12 GETTABLEKS                       R8 R9 K5 ["round"]
       14 GETTABLEKS                       R9 R2 K6 ["Min"]
       16 LOADN                            R10 2
       17 CALL                             R8 2 -1
       18 FASTCALL                         TOSTRING ; [+2]
       19 GETIMPORT                        R7 K8 [tostring]
       21 CALL                             R7 -1 1
       22 MOVE                             R5 R7
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R7 R8 K5 ["round"]
       26 GETTABLEKS                       R8 R2 K9 ["Max"]
       28 LOADN                            R9 2
       29 CALL                             R7 2 -1
       30 FASTCALL                         TOSTRING ; [+2]
       31 GETIMPORT                        R6 K8 [tostring]
       33 CALL                             R6 -1 1
       34 MOVE                             R9 R4
       35 DUPTABLE                         R10 K12 [{"universeAvatarMinScales", "universeAvatarMaxScales"}]
       36 DUPTABLE                         R11 K15 [{"width", "depth"}]
       37 SETTABLEKS                       R5 R11 K13 ["width"]
       39 LOADN                            R12 0
       40 SETTABLEKS                       R12 R11 K14 ["depth"]
       42 SETTABLEKS                       R11 R10 K10 ["universeAvatarMinScales"]
       44 DUPTABLE                         R11 K15 [{"width", "depth"}]
       45 SETTABLEKS                       R6 R11 K13 ["width"]
       47 LOADN                            R12 0
       48 SETTABLEKS                       R12 R11 K14 ["depth"]
       50 SETTABLEKS                       R11 R10 K11 ["universeAvatarMaxScales"]
       52 NAMECALL                         R7 R0 K16 ["configurationV2PATCH"]
       54 CALL                             R7 3 1
       55 NAMECALL                         R7 R7 K17 ["await"]
       57 CALL                             R7 1 0
       58 RETURN                           R0 0

PROTO_17:
        0 NAMECALL                         R1 R0 K0 ["avatarRulesV1GET"]
        2 CALL                             R1 1 1
        3 NAMECALL                         R1 R1 K1 ["await"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R4 R1 K2 ["responseBody"]
        8 GETTABLEKS                       R3 R4 K3 ["scales"]
       10 GETTABLEKS                       R2 R3 K4 ["head"]
       12 GETIMPORT                        R3 K7 [NumberRange.new]
       14 GETTABLEKS                       R4 R2 K8 ["min"]
       16 GETTABLEKS                       R5 R2 K9 ["max"]
       18 CALL                             R3 2 1
       19 GETTABLEKS                       R4 R2 K10 ["increment"]
       21 RETURN                           R3 2

PROTO_18:
        0 LOADK                            R4 K0 ["StarterPlayer"]
        1 NAMECALL                         R2 R1 K1 ["GetService"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R1 K2 ["GameId"]
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 JUMPIFNOTEQKN                    R3 K3 [0] ; [+10]
       10 GETTABLEKS                       R6 R2 K4 ["GameSettingsScaleRangeHead"]
       12 GETTABLEKS                       R4 R6 K5 ["Min"]
       14 GETTABLEKS                       R6 R2 K4 ["GameSettingsScaleRangeHead"]
       16 GETTABLEKS                       R5 R6 K6 ["Max"]
       18 JUMP                             ; [+19]
       19 MOVE                             R8 R3
       20 NAMECALL                         R6 R0 K7 ["configurationV2GET"]
       22 CALL                             R6 2 1
       23 NAMECALL                         R6 R6 K8 ["await"]
       25 CALL                             R6 1 1
       26 GETTABLEKS                       R8 R6 K9 ["responseBody"]
       28 GETTABLEKS                       R7 R8 K10 ["universeAvatarMinScales"]
       30 GETTABLEKS                       R4 R7 K11 ["head"]
       32 GETTABLEKS                       R8 R6 K9 ["responseBody"]
       34 GETTABLEKS                       R7 R8 K12 ["universeAvatarMaxScales"]
       36 GETTABLEKS                       R5 R7 K11 ["head"]
       38 GETIMPORT                        R6 K15 [NumberRange.new]
       40 MOVE                             R7 R4
       41 MOVE                             R8 R5
       42 CALL                             R6 2 -1
       43 RETURN                           R6 -1

PROTO_19:
        0 LOADK                            R5 K0 ["StarterPlayer"]
        1 NAMECALL                         R3 R1 K1 ["GetService"]
        3 CALL                             R3 2 1
        4 GETTABLEKS                       R4 R1 K2 ["GameId"]
        6 JUMPIFNOTEQKN                    R4 K3 [0] ; [+4]
        8 SETTABLEKS                       R2 R3 K4 ["GameSettingsScaleRangeHead"]
       10 RETURN                           R0 0
       11 GETUPVAL                         R9 0
       12 GETTABLEKS                       R8 R9 K5 ["round"]
       14 GETTABLEKS                       R9 R2 K6 ["Min"]
       16 LOADN                            R10 2
       17 CALL                             R8 2 -1
       18 FASTCALL                         TOSTRING ; [+2]
       19 GETIMPORT                        R7 K8 [tostring]
       21 CALL                             R7 -1 1
       22 MOVE                             R5 R7
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R7 R8 K5 ["round"]
       26 GETTABLEKS                       R8 R2 K9 ["Max"]
       28 LOADN                            R9 2
       29 CALL                             R7 2 -1
       30 FASTCALL                         TOSTRING ; [+2]
       31 GETIMPORT                        R6 K8 [tostring]
       33 CALL                             R6 -1 1
       34 MOVE                             R9 R4
       35 DUPTABLE                         R10 K12 [{"universeAvatarMinScales", "universeAvatarMaxScales"}]
       36 DUPTABLE                         R11 K14 [{"head"}]
       37 SETTABLEKS                       R5 R11 K13 ["head"]
       39 SETTABLEKS                       R11 R10 K10 ["universeAvatarMinScales"]
       41 DUPTABLE                         R11 K14 [{"head"}]
       42 SETTABLEKS                       R6 R11 K13 ["head"]
       44 SETTABLEKS                       R11 R10 K11 ["universeAvatarMaxScales"]
       46 NAMECALL                         R7 R0 K15 ["configurationV2PATCH"]
       48 CALL                             R7 3 1
       49 NAMECALL                         R7 R7 K16 ["await"]
       51 CALL                             R7 1 0
       52 RETURN                           R0 0

PROTO_20:
        0 NAMECALL                         R1 R0 K0 ["avatarRulesV1GET"]
        2 CALL                             R1 1 1
        3 NAMECALL                         R1 R1 K1 ["await"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R4 R1 K2 ["responseBody"]
        8 GETTABLEKS                       R3 R4 K3 ["scales"]
       10 GETTABLEKS                       R2 R3 K4 ["bodyType"]
       12 GETIMPORT                        R3 K7 [NumberRange.new]
       14 GETTABLEKS                       R4 R2 K8 ["min"]
       16 GETTABLEKS                       R5 R2 K9 ["max"]
       18 CALL                             R3 2 1
       19 GETTABLEKS                       R4 R2 K10 ["increment"]
       21 RETURN                           R3 2

PROTO_21:
        0 LOADK                            R4 K0 ["StarterPlayer"]
        1 NAMECALL                         R2 R1 K1 ["GetService"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R1 K2 ["GameId"]
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 JUMPIFNOTEQKN                    R3 K3 [0] ; [+10]
       10 GETTABLEKS                       R6 R2 K4 ["GameSettingsScaleRangeBodyType"]
       12 GETTABLEKS                       R4 R6 K5 ["Min"]
       14 GETTABLEKS                       R6 R2 K4 ["GameSettingsScaleRangeBodyType"]
       16 GETTABLEKS                       R5 R6 K6 ["Max"]
       18 JUMP                             ; [+19]
       19 MOVE                             R8 R3
       20 NAMECALL                         R6 R0 K7 ["configurationV2GET"]
       22 CALL                             R6 2 1
       23 NAMECALL                         R6 R6 K8 ["await"]
       25 CALL                             R6 1 1
       26 GETTABLEKS                       R8 R6 K9 ["responseBody"]
       28 GETTABLEKS                       R7 R8 K10 ["universeAvatarMinScales"]
       30 GETTABLEKS                       R4 R7 K11 ["bodyType"]
       32 GETTABLEKS                       R8 R6 K9 ["responseBody"]
       34 GETTABLEKS                       R7 R8 K12 ["universeAvatarMaxScales"]
       36 GETTABLEKS                       R5 R7 K11 ["bodyType"]
       38 GETIMPORT                        R6 K15 [NumberRange.new]
       40 MOVE                             R7 R4
       41 MOVE                             R8 R5
       42 CALL                             R6 2 -1
       43 RETURN                           R6 -1

PROTO_22:
        0 LOADK                            R5 K0 ["StarterPlayer"]
        1 NAMECALL                         R3 R1 K1 ["GetService"]
        3 CALL                             R3 2 1
        4 GETTABLEKS                       R4 R1 K2 ["GameId"]
        6 JUMPIFNOTEQKN                    R4 K3 [0] ; [+4]
        8 SETTABLEKS                       R2 R3 K4 ["GameSettingsScaleRangeBodyType"]
       10 RETURN                           R0 0
       11 GETUPVAL                         R9 0
       12 GETTABLEKS                       R8 R9 K5 ["round"]
       14 GETTABLEKS                       R9 R2 K6 ["Min"]
       16 LOADN                            R10 2
       17 CALL                             R8 2 -1
       18 FASTCALL                         TOSTRING ; [+2]
       19 GETIMPORT                        R7 K8 [tostring]
       21 CALL                             R7 -1 1
       22 MOVE                             R5 R7
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R7 R8 K5 ["round"]
       26 GETTABLEKS                       R8 R2 K9 ["Max"]
       28 LOADN                            R9 2
       29 CALL                             R7 2 -1
       30 FASTCALL                         TOSTRING ; [+2]
       31 GETIMPORT                        R6 K8 [tostring]
       33 CALL                             R6 -1 1
       34 MOVE                             R9 R4
       35 DUPTABLE                         R10 K12 [{"universeAvatarMinScales", "universeAvatarMaxScales"}]
       36 DUPTABLE                         R11 K14 [{"bodyType"}]
       37 SETTABLEKS                       R5 R11 K13 ["bodyType"]
       39 SETTABLEKS                       R11 R10 K10 ["universeAvatarMinScales"]
       41 DUPTABLE                         R11 K14 [{"bodyType"}]
       42 SETTABLEKS                       R6 R11 K13 ["bodyType"]
       44 SETTABLEKS                       R11 R10 K11 ["universeAvatarMaxScales"]
       46 NAMECALL                         R7 R0 K15 ["configurationV2PATCH"]
       48 CALL                             R7 3 1
       49 NAMECALL                         R7 R7 K16 ["await"]
       51 CALL                             R7 1 0
       52 RETURN                           R0 0

PROTO_23:
        0 NAMECALL                         R1 R0 K0 ["avatarRulesV1GET"]
        2 CALL                             R1 1 1
        3 NAMECALL                         R1 R1 K1 ["await"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R4 R1 K2 ["responseBody"]
        8 GETTABLEKS                       R3 R4 K3 ["scales"]
       10 GETTABLEKS                       R2 R3 K4 ["proportion"]
       12 GETIMPORT                        R3 K7 [NumberRange.new]
       14 GETTABLEKS                       R4 R2 K8 ["min"]
       16 GETTABLEKS                       R5 R2 K9 ["max"]
       18 CALL                             R3 2 1
       19 GETTABLEKS                       R4 R2 K10 ["increment"]
       21 RETURN                           R3 2

PROTO_24:
        0 LOADK                            R4 K0 ["StarterPlayer"]
        1 NAMECALL                         R2 R1 K1 ["GetService"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R1 K2 ["GameId"]
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 JUMPIFNOTEQKN                    R3 K3 [0] ; [+10]
       10 GETTABLEKS                       R6 R2 K4 ["GameSettingsScaleRangeProportion"]
       12 GETTABLEKS                       R4 R6 K5 ["Min"]
       14 GETTABLEKS                       R6 R2 K4 ["GameSettingsScaleRangeProportion"]
       16 GETTABLEKS                       R5 R6 K6 ["Max"]
       18 JUMP                             ; [+19]
       19 MOVE                             R8 R3
       20 NAMECALL                         R6 R0 K7 ["configurationV2GET"]
       22 CALL                             R6 2 1
       23 NAMECALL                         R6 R6 K8 ["await"]
       25 CALL                             R6 1 1
       26 GETTABLEKS                       R8 R6 K9 ["responseBody"]
       28 GETTABLEKS                       R7 R8 K10 ["universeAvatarMinScales"]
       30 GETTABLEKS                       R4 R7 K11 ["proportion"]
       32 GETTABLEKS                       R8 R6 K9 ["responseBody"]
       34 GETTABLEKS                       R7 R8 K12 ["universeAvatarMaxScales"]
       36 GETTABLEKS                       R5 R7 K11 ["proportion"]
       38 GETIMPORT                        R6 K15 [NumberRange.new]
       40 MOVE                             R7 R4
       41 MOVE                             R8 R5
       42 CALL                             R6 2 -1
       43 RETURN                           R6 -1

PROTO_25:
        0 LOADK                            R5 K0 ["StarterPlayer"]
        1 NAMECALL                         R3 R1 K1 ["GetService"]
        3 CALL                             R3 2 1
        4 GETTABLEKS                       R4 R1 K2 ["GameId"]
        6 JUMPIFNOTEQKN                    R4 K3 [0] ; [+4]
        8 SETTABLEKS                       R2 R3 K4 ["GameSettingsScaleRangeProportion"]
       10 RETURN                           R0 0
       11 GETUPVAL                         R9 0
       12 GETTABLEKS                       R8 R9 K5 ["round"]
       14 GETTABLEKS                       R9 R2 K6 ["Min"]
       16 LOADN                            R10 2
       17 CALL                             R8 2 -1
       18 FASTCALL                         TOSTRING ; [+2]
       19 GETIMPORT                        R7 K8 [tostring]
       21 CALL                             R7 -1 1
       22 MOVE                             R5 R7
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R7 R8 K5 ["round"]
       26 GETTABLEKS                       R8 R2 K9 ["Max"]
       28 LOADN                            R9 2
       29 CALL                             R7 2 -1
       30 FASTCALL                         TOSTRING ; [+2]
       31 GETIMPORT                        R6 K8 [tostring]
       33 CALL                             R6 -1 1
       34 MOVE                             R9 R4
       35 DUPTABLE                         R10 K12 [{"universeAvatarMinScales", "universeAvatarMaxScales"}]
       36 DUPTABLE                         R11 K14 [{"proportion"}]
       37 SETTABLEKS                       R5 R11 K13 ["proportion"]
       39 SETTABLEKS                       R11 R10 K10 ["universeAvatarMinScales"]
       41 DUPTABLE                         R11 K14 [{"proportion"}]
       42 SETTABLEKS                       R6 R11 K13 ["proportion"]
       44 SETTABLEKS                       R11 R10 K11 ["universeAvatarMaxScales"]
       46 NAMECALL                         R7 R0 K15 ["configurationV2PATCH"]
       48 CALL                             R7 3 1
       49 NAMECALL                         R7 R7 K16 ["await"]
       51 CALL                             R7 1 0
       52 RETURN                           R0 0

PROTO_26:
        0 LOADK                            R4 K0 ["StarterPlayer"]
        1 NAMECALL                         R2 R1 K1 ["GetService"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R1 K2 ["GameId"]
        6 LOADNIL                          R4
        7 JUMPIFNOTEQKN                    R3 K3 [0] ; [+26]
        9 NEWTABLE                         R4 0 0
       11 GETIMPORT                        R5 K5 [pairs]
       13 GETUPVAL                         R6 0
       14 CALL                             R5 1 3
       15 FORGPREP_NEXT                    R5
       16 GETTABLE                         R10 R2 R9
       17 DUPTABLE                         R11 K9 [{"assetTypeID", "assetID", "isPlayerChoice"}]
       18 GETTABLEKS                       R12 R8 K10 ["Value"]
       20 SETTABLEKS                       R12 R11 K6 ["assetTypeID"]
       22 SETTABLEKS                       R10 R11 K7 ["assetID"]
       24 JUMPIFEQKN                       R10 K3 [0] ; [+2]
       26 LOADB                            R12 0 +1
       27 LOADB                            R12 1
       28 SETTABLEKS                       R12 R11 K8 ["isPlayerChoice"]
       30 SETTABLE                         R11 R4 R8
       31 FORGLOOP                         R5 2 ; [-16]
       33 RETURN                           R4 1
       34 MOVE                             R7 R3
       35 NAMECALL                         R5 R0 K11 ["configurationV2GET"]
       37 CALL                             R5 2 1
       38 NAMECALL                         R5 R5 K12 ["await"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R5 K13 ["responseBody"]
       43 GETTABLEKS                       R4 R6 K14 ["universeAvatarAssetOverrides"]
       45 RETURN                           R4 1

PROTO_27:
        0 LOADK                            R5 K0 ["StarterPlayer"]
        1 NAMECALL                         R3 R1 K1 ["GetService"]
        3 CALL                             R3 2 1
        4 GETTABLEKS                       R4 R1 K2 ["GameId"]
        6 JUMPIFNOTEQKN                    R4 K3 [0] ; [+24]
        8 GETIMPORT                        R5 K5 [ipairs]
       10 MOVE                             R6 R2
       11 CALL                             R5 1 3
       12 FORGPREP_INEXT                   R5
       13 GETUPVAL                         R11 0
       14 GETTABLEKS                       R12 R9 K6 ["assetTypeID"]
       16 GETTABLE                         R10 R11 R12
       17 GETTABLEKS                       R11 R9 K7 ["assetID"]
       19 GETTABLEKS                       R12 R9 K8 ["isPlayerChoice"]
       21 GETUPVAL                         R14 1
       22 GETTABLE                         R13 R14 R10
       23 JUMPIFNOT                        R12 ; [+2]
       24 LOADN                            R14 0
       25 JUMP                             ; [+1]
       26 MOVE                             R14 R11
       27 SETTABLE                         R14 R3 R13
       28 FORGLOOP                         R5 2 [inext] ; [-16]
       30 RETURN                           R0 0
       31 MOVE                             R7 R4
       32 DUPTABLE                         R8 K10 [{"universeAvatarAssetOverrides"}]
       33 SETTABLEKS                       R2 R8 K9 ["universeAvatarAssetOverrides"]
       35 NAMECALL                         R5 R0 K11 ["configurationV2PATCH"]
       37 CALL                             R5 3 1
       38 NAMECALL                         R5 R5 K12 ["await"]
       40 CALL                             R5 1 0
       41 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Packages"]
       15 GETTABLEKS                       R3 R4 K6 ["Framework"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R1 R2 K7 ["Util"]
       20 GETTABLEKS                       R2 R1 K8 ["Math"]
       22 NEWTABLE                         R3 32 0
       24 SETTABLEKS                       R3 R3 K9 ["__index"]
       26 DUPCLOSURE                       R4 K10 [PROTO_0]
       27 CAPTURE                          VAL R2
       28 DUPCLOSURE                       R5 K11 [PROTO_1]
       29 CAPTURE                          VAL R3
       30 SETTABLEKS                       R5 R3 K12 ["new"]
       32 DUPCLOSURE                       R5 K13 [PROTO_2]
       33 SETTABLEKS                       R5 R3 K14 ["avatarRulesV1GET"]
       35 DUPCLOSURE                       R5 K15 [PROTO_3]
       36 SETTABLEKS                       R5 R3 K16 ["configurationV2GET"]
       38 DUPCLOSURE                       R5 K17 [PROTO_4]
       39 SETTABLEKS                       R5 R3 K18 ["configurationV2PATCH"]
       41 DUPCLOSURE                       R5 K19 [PROTO_5]
       42 SETTABLEKS                       R5 R3 K20 ["getAvatarType"]
       44 DUPCLOSURE                       R5 K21 [PROTO_6]
       45 SETTABLEKS                       R5 R3 K22 ["setAvatarType"]
       47 DUPCLOSURE                       R5 K23 [PROTO_7]
       48 SETTABLEKS                       R5 R3 K24 ["getAnimationType"]
       50 DUPCLOSURE                       R5 K25 [PROTO_8]
       51 SETTABLEKS                       R5 R3 K26 ["setAnimationType"]
       53 DUPCLOSURE                       R5 K27 [PROTO_9]
       54 SETTABLEKS                       R5 R3 K28 ["getCollisionType"]
       56 DUPCLOSURE                       R5 K29 [PROTO_10]
       57 SETTABLEKS                       R5 R3 K30 ["setCollisionType"]
       59 DUPCLOSURE                       R5 K31 [PROTO_11]
       60 SETTABLEKS                       R5 R3 K32 ["getHeightRules"]
       62 DUPCLOSURE                       R5 K33 [PROTO_12]
       63 SETTABLEKS                       R5 R3 K34 ["getHeightRange"]
       65 DUPCLOSURE                       R5 K35 [PROTO_13]
       66 CAPTURE                          VAL R2
       67 SETTABLEKS                       R5 R3 K36 ["setHeightRange"]
       69 DUPCLOSURE                       R5 K37 [PROTO_14]
       70 SETTABLEKS                       R5 R3 K38 ["getWidthRules"]
       72 DUPCLOSURE                       R5 K39 [PROTO_15]
       73 SETTABLEKS                       R5 R3 K40 ["getWidthRange"]
       75 DUPCLOSURE                       R5 K41 [PROTO_16]
       76 CAPTURE                          VAL R2
       77 SETTABLEKS                       R5 R3 K42 ["setWidthRange"]
       79 DUPCLOSURE                       R5 K43 [PROTO_17]
       80 SETTABLEKS                       R5 R3 K44 ["getHeadScaleRules"]
       82 DUPCLOSURE                       R5 K45 [PROTO_18]
       83 SETTABLEKS                       R5 R3 K46 ["getHeadScaleRange"]
       85 DUPCLOSURE                       R5 K47 [PROTO_19]
       86 CAPTURE                          VAL R2
       87 SETTABLEKS                       R5 R3 K48 ["setHeadScaleRange"]
       89 DUPCLOSURE                       R5 K49 [PROTO_20]
       90 SETTABLEKS                       R5 R3 K50 ["getBodyTypeRules"]
       92 DUPCLOSURE                       R5 K51 [PROTO_21]
       93 SETTABLEKS                       R5 R3 K52 ["getBodyTypeRange"]
       95 DUPCLOSURE                       R5 K53 [PROTO_22]
       96 CAPTURE                          VAL R2
       97 SETTABLEKS                       R5 R3 K54 ["setBodyTypeRange"]
       99 DUPCLOSURE                       R5 K55 [PROTO_23]
      100 SETTABLEKS                       R5 R3 K56 ["getProportionsRules"]
      102 DUPCLOSURE                       R5 K57 [PROTO_24]
      103 SETTABLEKS                       R5 R3 K58 ["getProportionsRange"]
      105 DUPCLOSURE                       R5 K59 [PROTO_25]
      106 CAPTURE                          VAL R2
      107 SETTABLEKS                       R5 R3 K60 ["setProportionsRange"]
      109 NEWTABLE                         R5 16 0
      111 GETIMPORT                        R6 K64 [Enum.AssetType.Face]
      113 LOADK                            R7 K65 ["GameSettingsAssetIDFace"]
      114 SETTABLE                         R7 R5 R6
      115 GETIMPORT                        R6 K67 [Enum.AssetType.Head]
      117 LOADK                            R7 K68 ["GameSettingsAssetIDHead"]
      118 SETTABLE                         R7 R5 R6
      119 GETIMPORT                        R6 K70 [Enum.AssetType.Torso]
      121 LOADK                            R7 K71 ["GameSettingsAssetIDTorso"]
      122 SETTABLE                         R7 R5 R6
      123 GETIMPORT                        R6 K73 [Enum.AssetType.LeftArm]
      125 LOADK                            R7 K74 ["GameSettingsAssetIDLeftArm"]
      126 SETTABLE                         R7 R5 R6
      127 GETIMPORT                        R6 K76 [Enum.AssetType.RightArm]
      129 LOADK                            R7 K77 ["GameSettingsAssetIDRightArm"]
      130 SETTABLE                         R7 R5 R6
      131 GETIMPORT                        R6 K79 [Enum.AssetType.LeftLeg]
      133 LOADK                            R7 K80 ["GameSettingsAssetIDLeftLeg"]
      134 SETTABLE                         R7 R5 R6
      135 GETIMPORT                        R6 K82 [Enum.AssetType.RightLeg]
      137 LOADK                            R7 K83 ["GameSettingsAssetIDRightLeg"]
      138 SETTABLE                         R7 R5 R6
      139 GETIMPORT                        R6 K85 [Enum.AssetType.Shirt]
      141 LOADK                            R7 K86 ["GameSettingsAssetIDShirt"]
      142 SETTABLE                         R7 R5 R6
      143 GETIMPORT                        R6 K88 [Enum.AssetType.Pants]
      145 LOADK                            R7 K89 ["GameSettingsAssetIDPants"]
      146 SETTABLE                         R7 R5 R6
      147 GETIMPORT                        R6 K91 [Enum.AssetType.TShirt]
      149 LOADK                            R7 K92 ["GameSettingsAssetIDTeeShirt"]
      150 SETTABLE                         R7 R5 R6
      151 NEWTABLE                         R6 0 0
      153 GETIMPORT                        R7 K94 [pairs]
      155 GETIMPORT                        R8 K95 [Enum.AssetType]
      157 NAMECALL                         R8 R8 K96 ["GetEnumItems"]
      159 CALL                             R8 1 -1
      160 CALL                             R7 -1 3
      161 FORGPREP_NEXT                    R7
      162 GETTABLEKS                       R12 R11 K97 ["Value"]
      164 SETTABLE                         R11 R6 R12
      165 FORGLOOP                         R7 2 ; [-4]
      167 DUPCLOSURE                       R7 K98 [PROTO_26]
      168 CAPTURE                          VAL R5
      169 SETTABLEKS                       R7 R3 K99 ["getAssetOverrides"]
      171 DUPCLOSURE                       R7 K100 [PROTO_27]
      172 CAPTURE                          VAL R6
      173 CAPTURE                          VAL R5
      174 SETTABLEKS                       R7 R3 K101 ["setAssetOverrides"]
      176 RETURN                           R3 1
