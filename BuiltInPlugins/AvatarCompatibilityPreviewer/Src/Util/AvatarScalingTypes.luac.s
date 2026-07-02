PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["LIMBS"]
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 MOVE                             R9 R6
        9 NAMECALL                         R7 R0 K1 ["FindFirstChild"]
       11 CALL                             R7 2 1
       12 JUMPIFEQKNIL                     R7 ; [+34]
       14 LOADK                            R10 K2 ["AvatarPartScaleType"]
       15 NAMECALL                         R8 R7 K1 ["FindFirstChild"]
       17 CALL                             R8 2 1
       18 JUMPIFEQKNIL                     R8 ; [+28]
       20 LOADK                            R11 K3 ["StringValue"]
       21 NAMECALL                         R9 R8 K4 ["IsA"]
       23 CALL                             R9 2 1
       24 JUMPIFNOT                        R9 ; [+22]
       25 LOADB                            R10 0
       26 JUMPIFEQKNIL                     R8 ; [+5]
       28 LOADK                            R12 K3 ["StringValue"]
       29 NAMECALL                         R10 R8 K4 ["IsA"]
       31 CALL                             R10 2 1
       32 GETUPVAL                         R11 0
       33 GETTABLEKS                       R11 R11 K5 ["LUAU_ANALYZE_ERROR"]
       35 FASTCALL2                        ASSERT R10 R11 ; [+3]
       37 GETIMPORT                        R9 K7 [assert]
       39 CALL                             R9 2 0
       40 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       42 MOVE                             R10 R1
       43 MOVE                             R11 R8
       44 GETIMPORT                        R9 K10 [table.insert]
       46 CALL                             R9 2 0
       47 FORGLOOP                         R2 2 ; [-40]
       49 RETURN                           R1 1

PROTO_2:
        0 LOADNIL                          R1
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 JUMPIFEQKS                       R6 K0 ["ProportionsNormal"] ; [+5]
        7 JUMPIFEQKS                       R6 K1 ["ProportionsSlender"] ; [+3]
        9 JUMPIFNOTEQKS                    R6 K2 ["Classic"] ; [+9]
       11 JUMPIFNOTEQKNIL                  R1 ; [+3]
       13 MOVE                             R1 R6
       14 JUMP                             ; [+5]
       15 JUMPIFEQ                         R1 R6 ; [+4]
       17 LOADK                            R1 K3 ["Mixed"]
       18 JUMP                             ; [+1]
       19 LOADK                            R1 K3 ["Mixed"]
       20 FORGLOOP                         R2 2 ; [-16]
       22 JUMPIFNOTEQKNIL                  R1 ; [+3]
       24 LOADK                            R2 K0 ["ProportionsNormal"]
       25 RETURN                           R2 1
       26 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R3 K0 ["AvatarPartScaleType"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 LOADK                            R4 K2 ["StringValue"]
        8 NAMECALL                         R2 R1 K3 ["IsA"]
       10 CALL                             R2 2 1
       11 JUMPIF                           R2 ; [+2]
       12 LOADNIL                          R2
       13 RETURN                           R2 1
       14 GETTABLEKS                       R2 R1 K4 ["Value"]
       16 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["LIMBS"]
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 MOVE                             R9 R6
        7 NAMECALL                         R7 R0 K1 ["FindFirstChild"]
        9 CALL                             R7 2 1
       10 JUMPIFEQKNIL                     R7 ; [+12]
       12 LOADK                            R10 K2 ["BasePart"]
       13 NAMECALL                         R8 R7 K3 ["IsA"]
       15 CALL                             R8 2 1
       16 JUMPIFNOT                        R8 ; [+6]
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R8 R8 K4 ["setAvatarPartScaleType"]
       20 MOVE                             R9 R7
       21 MOVE                             R10 R1
       22 CALL                             R8 2 0
       23 FORGLOOP                         R2 2 ; [-18]
       25 NAMECALL                         R2 R0 K5 ["GetChildren"]
       27 CALL                             R2 1 3
       28 FORGPREP                         R2
       29 LOADK                            R9 K6 ["Accessory"]
       30 NAMECALL                         R7 R6 K3 ["IsA"]
       32 CALL                             R7 2 1
       33 JUMPIFNOT                        R7 ; [+24]
       34 LOADK                            R9 K7 ["Handle"]
       35 NAMECALL                         R7 R6 K1 ["FindFirstChild"]
       37 CALL                             R7 2 1
       38 JUMPIFEQKNIL                     R7 ; [+19]
       40 LOADK                            R10 K2 ["BasePart"]
       41 NAMECALL                         R8 R7 K3 ["IsA"]
       43 CALL                             R8 2 1
       44 JUMPIFNOT                        R8 ; [+13]
       45 GETUPVAL                         R10 0
       46 GETTABLEKS                       R10 R10 K8 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
       48 NAMECALL                         R8 R7 K9 ["GetAttribute"]
       50 CALL                             R8 2 1
       51 JUMPIFNOT                        R8 ; [+6]
       52 GETUPVAL                         R8 1
       53 GETTABLEKS                       R8 R8 K4 ["setAvatarPartScaleType"]
       55 MOVE                             R9 R7
       56 MOVE                             R10 R1
       57 CALL                             R8 2 0
       58 FORGLOOP                         R2 2 ; [-30]
       60 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["HumanoidValueUtil"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Types"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 8 0
       34 DUPCLOSURE                       R5 K11 [PROTO_0]
       35 DUPTABLE                         R6 K15 [{"Classic", "ProportionsSlender", "ProportionsNormal"}]
       36 DUPTABLE                         R8 K21 [{["BodyTypeScale"] = 0, ["BodyProportionScale"] = 0, ["GuessMaxHeight"] = 5.25}]
       37 MOVE                             R7 R8
       38 SETTABLEKS                       R7 R6 K12 ["Classic"]
       40 DUPTABLE                         R8 K24 [{["BodyTypeScale"] = 1, ["BodyProportionScale"] = 1, ["GuessMaxHeight"] = 5.625}]
       41 MOVE                             R7 R8
       42 SETTABLEKS                       R7 R6 K13 ["ProportionsSlender"]
       44 DUPTABLE                         R8 K26 [{["BodyTypeScale"] = 1, ["BodyProportionScale"] = 0, ["GuessMaxHeight"] = ∞}]
       45 MOVE                             R7 R8
       46 SETTABLEKS                       R7 R6 K14 ["ProportionsNormal"]
       48 SETTABLEKS                       R6 R4 K27 ["types"]
       50 DUPCLOSURE                       R6 K28 [PROTO_1]
       51 CAPTURE                          VAL R1
       52 SETTABLEKS                       R6 R4 K29 ["allAvatarPartScaleTypeValueObjects"]
       54 DUPCLOSURE                       R6 K30 [PROTO_2]
       55 SETTABLEKS                       R6 R4 K31 ["computeAvatarPartScaleType"]
       57 DUPCLOSURE                       R6 K32 [PROTO_3]
       58 SETTABLEKS                       R6 R4 K33 ["getAvatarPartScaleType"]
       60 DUPCLOSURE                       R6 K34 [PROTO_4]
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R2
       63 SETTABLEKS                       R6 R4 K35 ["setAvatarPartScaleTypeValueObjects"]
       65 RETURN                           R4 1
