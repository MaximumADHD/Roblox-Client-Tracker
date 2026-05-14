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
       10 JUMPIFEQKNIL                     R7 ; [+56]
       12 GETUPVAL                         R8 1
       13 CALL                             R8 0 1
       14 JUMPIFNOT                        R8 ; [+12]
       15 LOADK                            R10 K2 ["BasePart"]
       16 NAMECALL                         R8 R7 K3 ["IsA"]
       18 CALL                             R8 2 1
       19 JUMPIFNOT                        R8 ; [+47]
       20 GETUPVAL                         R8 2
       21 GETTABLEKS                       R8 R8 K4 ["setAvatarPartScaleType"]
       23 MOVE                             R9 R7
       24 MOVE                             R10 R1
       25 CALL                             R8 2 0
       26 JUMP                             ; [+40]
       27 LOADK                            R10 K5 ["AvatarPartScaleType"]
       28 NAMECALL                         R8 R7 K1 ["FindFirstChild"]
       30 CALL                             R8 2 1
       31 JUMPIFNOTEQKNIL                  R8 ; [+13]
       33 GETIMPORT                        R9 K8 [Instance.new]
       35 LOADK                            R10 K9 ["StringValue"]
       36 CALL                             R9 1 1
       37 LOADK                            R10 K5 ["AvatarPartScaleType"]
       38 SETTABLEKS                       R10 R9 K10 ["Name"]
       40 SETTABLEKS                       R1 R9 K11 ["Value"]
       42 SETTABLEKS                       R7 R9 K12 ["Parent"]
       44 JUMP                             ; [+22]
       45 LOADK                            R11 K9 ["StringValue"]
       46 NAMECALL                         R9 R8 K3 ["IsA"]
       48 CALL                             R9 2 1
       49 JUMPIFNOT                        R9 ; [+17]
       50 LOADB                            R10 0
       51 JUMPIFEQKNIL                     R8 ; [+5]
       53 LOADK                            R12 K9 ["StringValue"]
       54 NAMECALL                         R10 R8 K3 ["IsA"]
       56 CALL                             R10 2 1
       57 GETUPVAL                         R11 0
       58 GETTABLEKS                       R11 R11 K13 ["LUAU_ANALYZE_ERROR"]
       60 FASTCALL2                        ASSERT R10 R11 ; [+3]
       62 GETIMPORT                        R9 K15 [assert]
       64 CALL                             R9 2 0
       65 SETTABLEKS                       R1 R8 K11 ["Value"]
       67 FORGLOOP                         R2 2 ; [-62]
       69 GETUPVAL                         R2 1
       70 CALL                             R2 0 1
       71 JUMPIFNOT                        R2 ; [+35]
       72 NAMECALL                         R2 R0 K16 ["GetChildren"]
       74 CALL                             R2 1 3
       75 FORGPREP                         R2
       76 LOADK                            R9 K17 ["Accessory"]
       77 NAMECALL                         R7 R6 K3 ["IsA"]
       79 CALL                             R7 2 1
       80 JUMPIFNOT                        R7 ; [+24]
       81 LOADK                            R9 K18 ["Handle"]
       82 NAMECALL                         R7 R6 K1 ["FindFirstChild"]
       84 CALL                             R7 2 1
       85 JUMPIFEQKNIL                     R7 ; [+19]
       87 LOADK                            R10 K2 ["BasePart"]
       88 NAMECALL                         R8 R7 K3 ["IsA"]
       90 CALL                             R8 2 1
       91 JUMPIFNOT                        R8 ; [+13]
       92 GETUPVAL                         R10 0
       93 GETTABLEKS                       R10 R10 K19 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
       95 NAMECALL                         R8 R7 K20 ["GetAttribute"]
       97 CALL                             R8 2 1
       98 JUMPIFNOT                        R8 ; [+6]
       99 GETUPVAL                         R8 2
      100 GETTABLEKS                       R8 R8 K4 ["setAvatarPartScaleType"]
      102 MOVE                             R9 R7
      103 MOVE                             R10 R1
      104 CALL                             R8 2 0
      105 FORGLOOP                         R2 2 ; [-30]
      107 RETURN                           R0 0

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
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Flags"]
       38 GETTABLEKS                       R5 R5 K12 ["getFFlagFixLayeredClothingAssignment"]
       40 CALL                             R4 1 1
       41 NEWTABLE                         R5 8 0
       43 DUPCLOSURE                       R6 K13 [PROTO_0]
       44 DUPTABLE                         R7 K17 [{"Classic", "ProportionsSlender", "ProportionsNormal"}]
       45 DUPTABLE                         R9 K21 [{"BodyTypeScale", "BodyProportionScale", "GuessMaxHeight"}]
       46 LOADN                            R10 0
       47 SETTABLEKS                       R10 R9 K18 ["BodyTypeScale"]
       49 LOADN                            R10 0
       50 SETTABLEKS                       R10 R9 K19 ["BodyProportionScale"]
       52 LOADK                            R10 K22 [5.25]
       53 SETTABLEKS                       R10 R9 K20 ["GuessMaxHeight"]
       55 MOVE                             R8 R9
       56 SETTABLEKS                       R8 R7 K14 ["Classic"]
       58 DUPTABLE                         R9 K21 [{"BodyTypeScale", "BodyProportionScale", "GuessMaxHeight"}]
       59 LOADN                            R10 1
       60 SETTABLEKS                       R10 R9 K18 ["BodyTypeScale"]
       62 LOADN                            R10 1
       63 SETTABLEKS                       R10 R9 K19 ["BodyProportionScale"]
       65 LOADK                            R10 K23 [5.625]
       66 SETTABLEKS                       R10 R9 K20 ["GuessMaxHeight"]
       68 MOVE                             R8 R9
       69 SETTABLEKS                       R8 R7 K15 ["ProportionsSlender"]
       71 DUPTABLE                         R9 K21 [{"BodyTypeScale", "BodyProportionScale", "GuessMaxHeight"}]
       72 LOADN                            R10 1
       73 SETTABLEKS                       R10 R9 K18 ["BodyTypeScale"]
       75 LOADN                            R10 0
       76 SETTABLEKS                       R10 R9 K19 ["BodyProportionScale"]
       78 LOADK                            R10 K24 [∞]
       79 SETTABLEKS                       R10 R9 K20 ["GuessMaxHeight"]
       81 MOVE                             R8 R9
       82 SETTABLEKS                       R8 R7 K16 ["ProportionsNormal"]
       84 SETTABLEKS                       R7 R5 K25 ["types"]
       86 DUPCLOSURE                       R7 K26 [PROTO_1]
       87 CAPTURE                          VAL R1
       88 SETTABLEKS                       R7 R5 K27 ["allAvatarPartScaleTypeValueObjects"]
       90 DUPCLOSURE                       R7 K28 [PROTO_2]
       91 SETTABLEKS                       R7 R5 K29 ["computeAvatarPartScaleType"]
       93 DUPCLOSURE                       R7 K30 [PROTO_3]
       94 SETTABLEKS                       R7 R5 K31 ["getAvatarPartScaleType"]
       96 DUPCLOSURE                       R7 K32 [PROTO_4]
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R2
      100 SETTABLEKS                       R7 R5 K33 ["setAvatarPartScaleTypeValueObjects"]
      102 RETURN                           R5 1
