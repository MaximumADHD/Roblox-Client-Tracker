PROTO_0:
        0 MULK                             R3 R0 K0 [100]
        1 FASTCALL1                        MATH_ROUND R3 ; [+2]
        2 GETIMPORT                        R2 K3 [math.round]
        4 CALL                             R2 1 1
        5 LOADB                            R3 0
        6 GETTABLEKS                       R4 R1 K4 ["min"]
        8 JUMPIFNOTLE                      R4 R2 ; [+7]
       10 GETTABLEKS                       R4 R1 K5 ["max"]
       12 JUMPIFLE                         R2 R4 ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["bodyBuildSetting"]
        2 GETTABLEKS                       R1 R1 K1 ["value"]
        4 GETIMPORT                        R2 K5 [Enum.AvatarSettingsBuildMode.CustomBuild]
        6 JUMPIFEQ                         R1 R2 ; [+3]
        8 LOADB                            R1 1
        9 RETURN                           R1 1
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K6 ["CUSTOM_BUILD_PERCENT_LIMITS"]
       13 LOADNIL                          R2
       14 LOADNIL                          R3
       15 FORGPREP                         R1
       16 GETTABLE                         R6 R0 R4
       17 GETTABLEKS                       R6 R6 K1 ["value"]
       19 GETTABLEKS                       R8 R6 K7 ["Min"]
       21 MULK                             R10 R8 K8 [100]
       22 FASTCALL1                        MATH_ROUND R10 ; [+2]
       23 GETIMPORT                        R9 K11 [math.round]
       25 CALL                             R9 1 1
       26 LOADB                            R7 0
       27 GETTABLEKS                       R10 R5 K12 ["min"]
       29 JUMPIFNOTLE                      R10 R9 ; [+7]
       31 GETTABLEKS                       R10 R5 K13 ["max"]
       33 JUMPIFLE                         R9 R10 ; [+2]
       35 LOADB                            R7 0 +1
       36 LOADB                            R7 1
       37 JUMPIFNOT                        R7 ; [+19]
       38 GETTABLEKS                       R8 R6 K14 ["Max"]
       40 MULK                             R10 R8 K8 [100]
       41 FASTCALL1                        MATH_ROUND R10 ; [+2]
       42 GETIMPORT                        R9 K11 [math.round]
       44 CALL                             R9 1 1
       45 LOADB                            R7 0
       46 GETTABLEKS                       R10 R5 K12 ["min"]
       48 JUMPIFNOTLE                      R10 R9 ; [+7]
       50 GETTABLEKS                       R10 R5 K13 ["max"]
       52 JUMPIFLE                         R9 R10 ; [+2]
       54 LOADB                            R7 0 +1
       55 LOADB                            R7 1
       56 JUMPIF                           R7 ; [+2]
       57 LOADB                            R7 0
       58 RETURN                           R7 1
       59 FORGLOOP                         R1 2 ; [-44]
       61 LOADB                            R1 1
       62 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarSettingsProviderTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["Constants"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K10 [PROTO_0]
       26 DUPCLOSURE                       R4 K11 [PROTO_1]
       27 CAPTURE                          VAL R2
       28 RETURN                           R4 1
