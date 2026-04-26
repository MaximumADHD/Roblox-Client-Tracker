PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+97]
        2 GETUPVAL                         R2 1
        3 JUMPIFNOTEQKNIL                  R2 ; [+95]
        5 GETIMPORT                        R2 K1 [game]
        7 LOADK                            R4 K2 ["AsyncRenamesUsedInLuaApps"]
        8 NAMECALL                         R2 R2 K3 ["GetEngineFeature"]
       10 CALL                             R2 2 1
       11 JUMPIFNOT                        R2 ; [+12]
       12 GETUPVAL                         R2 2
       13 GETIMPORT                        R4 K6 [Instance.new]
       15 LOADK                            R5 K7 ["HumanoidDescription"]
       16 CALL                             R4 1 1
       17 GETIMPORT                        R5 K11 [Enum.HumanoidRigType.R15]
       19 NAMECALL                         R2 R2 K12 ["CreateHumanoidModelFromDescriptionAsync"]
       21 CALL                             R2 3 1
       22 SETUPVAL                         R2 1
       23 JUMP                             ; [+11]
       24 GETUPVAL                         R2 2
       25 GETIMPORT                        R4 K6 [Instance.new]
       27 LOADK                            R5 K7 ["HumanoidDescription"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K11 [Enum.HumanoidRigType.R15]
       31 NAMECALL                         R2 R2 K13 ["CreateHumanoidModelFromDescription"]
       33 CALL                             R2 3 1
       34 SETUPVAL                         R2 1
       35 GETUPVAL                         R2 1
       36 LOADK                            R4 K14 ["Humanoid"]
       37 NAMECALL                         R2 R2 K15 ["FindFirstChildOfClass"]
       39 CALL                             R2 2 1
       40 SETUPVAL                         R2 3
       41 GETUPVAL                         R3 3
       42 FASTCALL2K                       ASSERT R3 K16 ; [+4]
       44 LOADK                            R4 K16 ["Humanoid must exist in character model"]
       45 GETIMPORT                        R2 K18 [assert]
       47 CALL                             R2 2 0
       48 GETUPVAL                         R2 3
       49 LOADK                            R4 K19 ["BodyTypeScale"]
       50 NAMECALL                         R2 R2 K20 ["FindFirstChild"]
       52 CALL                             R2 2 1
       53 GETUPVAL                         R3 3
       54 LOADK                            R5 K21 ["BodyProportionScale"]
       55 NAMECALL                         R3 R3 K20 ["FindFirstChild"]
       57 CALL                             R3 2 1
       58 LOADN                            R4 0
       59 SETTABLEKS                       R4 R2 K22 ["Value"]
       61 LOADN                            R4 0
       62 SETTABLEKS                       R4 R3 K22 ["Value"]
       64 GETIMPORT                        R4 K24 [pairs]
       66 GETUPVAL                         R5 1
       67 NAMECALL                         R5 R5 K25 ["GetDescendants"]
       69 CALL                             R5 1 -1
       70 CALL                             R4 -1 3
       71 FORGPREP_NEXT                    R4
       72 LOADK                            R11 K26 ["BasePart"]
       73 NAMECALL                         R9 R8 K27 ["IsA"]
       75 CALL                             R9 2 1
       76 JUMPIFNOT                        R9 ; [+20]
       77 NAMECALL                         R9 R8 K28 ["GetChildren"]
       79 CALL                             R9 1 3
       80 FORGPREP                         R9
       81 LOADK                            R16 K29 ["Attachment"]
       82 NAMECALL                         R14 R13 K27 ["IsA"]
       84 CALL                             R14 2 1
       85 JUMPIFNOT                        R14 ; [+9]
       86 GETUPVAL                         R14 4
       87 GETTABLEKS                       R15 R13 K30 ["Name"]
       89 GETUPVAL                         R16 3
       90 MOVE                             R18 R8
       91 NAMECALL                         R16 R16 K31 ["GetBodyPartR15"]
       93 CALL                             R16 2 1
       94 SETTABLE                         R16 R14 R15
       95 FORGLOOP                         R9 2 ; [-15]
       97 FORGLOOP                         R4 2 ; [-26]
       99 GETUPVAL                         R2 3
      100 JUMPIFNOTEQKNIL                  R2 ; [+3]
      102 LOADK                            R2 K32 [{1, 1, 1}]
      103 RETURN                           R2 1
      104 GETUPVAL                         R2 3
      105 MOVE                             R4 R0
      106 GETUPVAL                         R6 4
      107 GETTABLEKS                       R7 R1 K30 ["Name"]
      109 GETTABLE                         R5 R6 R7
      110 NAMECALL                         R2 R2 K33 ["GetAccessoryHandleScale"]
      112 CALL                             R2 3 -1
      113 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Players"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["HumanoidParentNil"]
       10 LOADB                            R4 0
       11 NAMECALL                         R1 R1 K5 ["DefineFastFlag"]
       13 CALL                             R1 3 1
       14 NEWTABLE                         R2 0 0
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 JUMPIF                           R1 ; [+86]
       19 GETIMPORT                        R5 K1 [game]
       21 LOADK                            R7 K6 ["AsyncRenamesUsedInLuaApps"]
       22 NAMECALL                         R5 R5 K7 ["GetEngineFeature"]
       24 CALL                             R5 2 1
       25 JUMPIFNOT                        R5 ; [+11]
       26 GETIMPORT                        R7 K10 [Instance.new]
       28 LOADK                            R8 K11 ["HumanoidDescription"]
       29 CALL                             R7 1 1
       30 GETIMPORT                        R8 K15 [Enum.HumanoidRigType.R15]
       32 NAMECALL                         R5 R0 K16 ["CreateHumanoidModelFromDescriptionAsync"]
       34 CALL                             R5 3 1
       35 MOVE                             R3 R5
       36 JUMP                             ; [+10]
       37 GETIMPORT                        R7 K10 [Instance.new]
       39 LOADK                            R8 K11 ["HumanoidDescription"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K15 [Enum.HumanoidRigType.R15]
       43 NAMECALL                         R5 R0 K17 ["CreateHumanoidModelFromDescription"]
       45 CALL                             R5 3 1
       46 MOVE                             R3 R5
       47 LOADK                            R7 K18 ["Humanoid"]
       48 NAMECALL                         R5 R3 K19 ["FindFirstChildOfClass"]
       50 CALL                             R5 2 1
       51 MOVE                             R4 R5
       52 FASTCALL2K                       ASSERT R4 K20 ; [+5]
       54 MOVE                             R6 R4
       55 LOADK                            R7 K20 ["Humanoid must exist in character model"]
       56 GETIMPORT                        R5 K22 [assert]
       58 CALL                             R5 2 0
       59 LOADK                            R7 K23 ["BodyTypeScale"]
       60 NAMECALL                         R5 R4 K24 ["FindFirstChild"]
       62 CALL                             R5 2 1
       63 LOADK                            R8 K25 ["BodyProportionScale"]
       64 NAMECALL                         R6 R4 K24 ["FindFirstChild"]
       66 CALL                             R6 2 1
       67 LOADN                            R7 0
       68 SETTABLEKS                       R7 R5 K26 ["Value"]
       70 LOADN                            R7 0
       71 SETTABLEKS                       R7 R6 K26 ["Value"]
       73 GETIMPORT                        R7 K28 [pairs]
       75 NAMECALL                         R8 R3 K29 ["GetDescendants"]
       77 CALL                             R8 1 -1
       78 CALL                             R7 -1 3
       79 FORGPREP_NEXT                    R7
       80 LOADK                            R14 K30 ["BasePart"]
       81 NAMECALL                         R12 R11 K31 ["IsA"]
       83 CALL                             R12 2 1
       84 JUMPIFNOT                        R12 ; [+18]
       85 NAMECALL                         R12 R11 K32 ["GetChildren"]
       87 CALL                             R12 1 3
       88 FORGPREP                         R12
       89 LOADK                            R19 K33 ["Attachment"]
       90 NAMECALL                         R17 R16 K31 ["IsA"]
       92 CALL                             R17 2 1
       93 JUMPIFNOT                        R17 ; [+7]
       94 GETTABLEKS                       R17 R16 K34 ["Name"]
       96 MOVE                             R20 R11
       97 NAMECALL                         R18 R4 K35 ["GetBodyPartR15"]
       99 CALL                             R18 2 1
      100 SETTABLE                         R18 R2 R17
      101 FORGLOOP                         R12 2 ; [-13]
      103 FORGLOOP                         R7 2 ; [-24]
      105 NEWCLOSURE                       R5 P0
      106 CAPTURE                          VAL R1
      107 CAPTURE                          REF R3
      108 CAPTURE                          VAL R0
      109 CAPTURE                          REF R4
      110 CAPTURE                          VAL R2
      111 CLOSEUPVALS                      R3
      112 RETURN                           R5 1
