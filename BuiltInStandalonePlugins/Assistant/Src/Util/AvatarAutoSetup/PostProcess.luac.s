PROTO_0:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 NAMECALL                         R3 R3 K0 ["FindFirstChild"]
        4 CALL                             R3 2 1
        5 JUMPIFEQKNIL                     R3 ; [+6]
        7 MOVE                             R6 R1
        8 NAMECALL                         R4 R3 K0 ["FindFirstChild"]
       10 CALL                             R4 2 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R4
       13 JUMPIFEQKNIL                     R4 ; [+6]
       15 LOADK                            R7 K1 ["Animation"]
       16 NAMECALL                         R5 R4 K2 ["IsA"]
       18 CALL                             R5 2 1
       19 JUMPIF                           R5 ; [+11]
       20 GETIMPORT                        R5 K4 [warn]
       22 LOADK                            R7 K5 ["AvatarAutoSetup: generated R15 rig has no %*.%* Animation"]
       23 MOVE                             R9 R0
       24 MOVE                             R10 R1
       25 NAMECALL                         R7 R7 K6 ["format"]
       27 CALL                             R7 3 1
       28 MOVE                             R6 R7
       29 CALL                             R5 1 0
       30 RETURN                           R0 0
       31 SETTABLEKS                       R2 R4 K7 ["AnimationId"]
       33 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["HumanoidDescription"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 MOVE                             R4 R1
        6 GETIMPORT                        R5 K7 [Enum.HumanoidRigType.R15]
        8 GETIMPORT                        R6 K10 [Enum.AssetTypeVerification.ClientOnly]
       10 NAMECALL                         R2 R2 K11 ["CreateHumanoidModelFromDescriptionAsync"]
       12 CALL                             R2 4 1
       13 LOADK                            R5 K12 ["Animate"]
       14 NAMECALL                         R3 R2 K13 ["FindFirstChild"]
       16 CALL                             R3 2 1
       17 JUMPIFNOTEQKNIL                  R3 ; [+2]
       19 LOADB                            R5 0 +1
       20 LOADB                            R5 1
       21 FASTCALL2K                       ASSERT R5 K14 ; [+4]
       23 LOADK                            R6 K14 ["expected an Animate script on the generated R15 rig"]
       24 GETIMPORT                        R4 K16 [assert]
       26 CALL                             R4 2 0
       27 NAMECALL                         R4 R3 K17 ["Clone"]
       29 CALL                             R4 1 1
       30 NEWCLOSURE                       R5 P0
       31 CAPTURE                          VAL R4
       32 LOADK                            R8 K18 ["walk"]
       33 NAMECALL                         R6 R4 K13 ["FindFirstChild"]
       35 CALL                             R6 2 1
       36 JUMPIFEQKNIL                     R6 ; [+6]
       38 LOADK                            R9 K19 ["WalkAnim"]
       39 NAMECALL                         R7 R6 K13 ["FindFirstChild"]
       41 CALL                             R7 2 1
       42 JUMP                             ; [+1]
       43 LOADNIL                          R7
       44 JUMPIFEQKNIL                     R7 ; [+6]
       46 LOADK                            R10 K20 ["Animation"]
       47 NAMECALL                         R8 R7 K21 ["IsA"]
       49 CALL                             R8 2 1
       50 JUMPIF                           R8 ; [+5]
       51 GETIMPORT                        R8 K23 [warn]
       53 LOADK                            R9 K24 ["AvatarAutoSetup: generated R15 rig has no walk.WalkAnim Animation"]
       54 CALL                             R8 1 0
       55 JUMP                             ; [+3]
       56 LOADK                            R8 K25 ["rbxassetid://16562332340"]
       57 SETTABLEKS                       R8 R7 K26 ["AnimationId"]
       59 LOADK                            R8 K27 ["run"]
       60 NAMECALL                         R6 R4 K13 ["FindFirstChild"]
       62 CALL                             R6 2 1
       63 JUMPIFEQKNIL                     R6 ; [+6]
       65 LOADK                            R9 K28 ["RunAnim"]
       66 NAMECALL                         R7 R6 K13 ["FindFirstChild"]
       68 CALL                             R7 2 1
       69 JUMP                             ; [+1]
       70 LOADNIL                          R7
       71 JUMPIFEQKNIL                     R7 ; [+6]
       73 LOADK                            R10 K20 ["Animation"]
       74 NAMECALL                         R8 R7 K21 ["IsA"]
       76 CALL                             R8 2 1
       77 JUMPIF                           R8 ; [+5]
       78 GETIMPORT                        R8 K23 [warn]
       80 LOADK                            R9 K29 ["AvatarAutoSetup: generated R15 rig has no run.RunAnim Animation"]
       81 CALL                             R8 1 0
       82 JUMP                             ; [+3]
       83 LOADK                            R8 K30 ["rbxassetid://16562326358"]
       84 SETTABLEKS                       R8 R7 K26 ["AnimationId"]
       86 LOADK                            R8 K31 ["idle"]
       87 NAMECALL                         R6 R4 K13 ["FindFirstChild"]
       89 CALL                             R6 2 1
       90 JUMPIFEQKNIL                     R6 ; [+6]
       92 LOADK                            R9 K32 ["Animation1"]
       93 NAMECALL                         R7 R6 K13 ["FindFirstChild"]
       95 CALL                             R7 2 1
       96 JUMP                             ; [+1]
       97 LOADNIL                          R7
       98 JUMPIFEQKNIL                     R7 ; [+6]
      100 LOADK                            R10 K20 ["Animation"]
      101 NAMECALL                         R8 R7 K21 ["IsA"]
      103 CALL                             R8 2 1
      104 JUMPIF                           R8 ; [+5]
      105 GETIMPORT                        R8 K23 [warn]
      107 LOADK                            R9 K33 ["AvatarAutoSetup: generated R15 rig has no idle.Animation1 Animation"]
      108 CALL                             R8 1 0
      109 JUMP                             ; [+3]
      110 LOADK                            R8 K34 ["rbxassetid://16562317918"]
      111 SETTABLEKS                       R8 R7 K26 ["AnimationId"]
      113 LOADK                            R8 K35 ["jump"]
      114 NAMECALL                         R6 R4 K13 ["FindFirstChild"]
      116 CALL                             R6 2 1
      117 JUMPIFEQKNIL                     R6 ; [+6]
      119 LOADK                            R9 K36 ["JumpAnim"]
      120 NAMECALL                         R7 R6 K13 ["FindFirstChild"]
      122 CALL                             R7 2 1
      123 JUMP                             ; [+1]
      124 LOADNIL                          R7
      125 JUMPIFEQKNIL                     R7 ; [+6]
      127 LOADK                            R10 K20 ["Animation"]
      128 NAMECALL                         R8 R7 K21 ["IsA"]
      130 CALL                             R8 2 1
      131 JUMPIF                           R8 ; [+5]
      132 GETIMPORT                        R8 K23 [warn]
      134 LOADK                            R9 K37 ["AvatarAutoSetup: generated R15 rig has no jump.JumpAnim Animation"]
      135 CALL                             R8 1 0
      136 JUMP                             ; [+3]
      137 LOADK                            R8 K38 ["rbxassetid://16562321958"]
      138 SETTABLEKS                       R8 R7 K26 ["AnimationId"]
      140 LOADK                            R8 K39 ["climb"]
      141 NAMECALL                         R6 R4 K13 ["FindFirstChild"]
      143 CALL                             R6 2 1
      144 JUMPIFEQKNIL                     R6 ; [+6]
      146 LOADK                            R9 K40 ["ClimbAnim"]
      147 NAMECALL                         R7 R6 K13 ["FindFirstChild"]
      149 CALL                             R7 2 1
      150 JUMP                             ; [+1]
      151 LOADNIL                          R7
      152 JUMPIFEQKNIL                     R7 ; [+6]
      154 LOADK                            R10 K20 ["Animation"]
      155 NAMECALL                         R8 R7 K21 ["IsA"]
      157 CALL                             R8 2 1
      158 JUMPIF                           R8 ; [+5]
      159 GETIMPORT                        R8 K23 [warn]
      161 LOADK                            R9 K41 ["AvatarAutoSetup: generated R15 rig has no climb.ClimbAnim Animation"]
      162 CALL                             R8 1 0
      163 JUMP                             ; [+3]
      164 LOADK                            R8 K42 ["rbxassetid://16562307212"]
      165 SETTABLEKS                       R8 R7 K26 ["AnimationId"]
      167 LOADK                            R8 K43 ["fall"]
      168 NAMECALL                         R6 R4 K13 ["FindFirstChild"]
      170 CALL                             R6 2 1
      171 JUMPIFEQKNIL                     R6 ; [+6]
      173 LOADK                            R9 K44 ["FallAnim"]
      174 NAMECALL                         R7 R6 K13 ["FindFirstChild"]
      176 CALL                             R7 2 1
      177 JUMP                             ; [+1]
      178 LOADNIL                          R7
      179 JUMPIFEQKNIL                     R7 ; [+6]
      181 LOADK                            R10 K20 ["Animation"]
      182 NAMECALL                         R8 R7 K21 ["IsA"]
      184 CALL                             R8 2 1
      185 JUMPIF                           R8 ; [+5]
      186 GETIMPORT                        R8 K23 [warn]
      188 LOADK                            R9 K45 ["AvatarAutoSetup: generated R15 rig has no fall.FallAnim Animation"]
      189 CALL                             R8 1 0
      190 JUMP                             ; [+3]
      191 LOADK                            R8 K46 ["rbxassetid://16562311455"]
      192 SETTABLEKS                       R8 R7 K26 ["AnimationId"]
      194 LOADK                            R8 K47 ["swim"]
      195 NAMECALL                         R6 R4 K13 ["FindFirstChild"]
      197 CALL                             R6 2 1
      198 JUMPIFEQKNIL                     R6 ; [+6]
      200 LOADK                            R9 K48 ["Swim"]
      201 NAMECALL                         R7 R6 K13 ["FindFirstChild"]
      203 CALL                             R7 2 1
      204 JUMP                             ; [+1]
      205 LOADNIL                          R7
      206 JUMPIFEQKNIL                     R7 ; [+6]
      208 LOADK                            R10 K20 ["Animation"]
      209 NAMECALL                         R8 R7 K21 ["IsA"]
      211 CALL                             R8 2 1
      212 JUMPIF                           R8 ; [+5]
      213 GETIMPORT                        R8 K23 [warn]
      215 LOADK                            R9 K49 ["AvatarAutoSetup: generated R15 rig has no swim.Swim Animation"]
      216 CALL                             R8 1 0
      217 JUMP                             ; [+3]
      218 LOADK                            R8 K46 ["rbxassetid://16562311455"]
      219 SETTABLEKS                       R8 R7 K26 ["AnimationId"]
      221 LOADK                            R6 K50 ["AnimateScript"]
      222 SETTABLEKS                       R6 R4 K51 ["Name"]
      224 SETTABLEKS                       R0 R4 K52 ["Parent"]
      226 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["GetBoundingBox"]
        2 CALL                             R1 1 2
        3 GETIMPORT                        R5 K3 [CFrame.new]
        5 LOADN                            R6 0
        6 GETTABLEKS                       R9 R2 K5 ["Y"]
        8 MINUS                            R8 R9
        9 DIVK                             R7 R8 K4 [2]
       10 LOADN                            R8 0
       11 CALL                             R5 3 -1
       12 NAMECALL                         R3 R1 K6 ["ToWorldSpace"]
       14 CALL                             R3 -1 1
       15 GETTABLEKS                       R4 R0 K7 ["PrimaryPart"]
       17 GETTABLEKS                       R5 R0 K7 ["PrimaryPart"]
       19 GETTABLEKS                       R5 R5 K1 ["CFrame"]
       21 MOVE                             R7 R3
       22 NAMECALL                         R5 R5 K8 ["ToObjectSpace"]
       24 CALL                             R5 2 1
       25 SETTABLEKS                       R5 R4 K9 ["PivotOffset"]
       27 RETURN                           R0 0

PROTO_3:
        0 NAMECALL                         R2 R1 K0 ["GetBoundingBox"]
        2 CALL                             R2 1 2
        3 NAMECALL                         R4 R0 K0 ["GetBoundingBox"]
        5 CALL                             R4 1 2
        6 GETTABLEKS                       R9 R3 K2 ["X"]
        8 DIVK                             R8 R9 K1 [2]
        9 GETTABLEKS                       R10 R5 K2 ["X"]
       11 DIVK                             R9 R10 K1 [2]
       12 ADD                              R7 R8 R9
       13 ADDK                             R6 R7 K1 [2]
       14 GETIMPORT                        R8 K5 [CFrame.new]
       16 MOVE                             R9 R6
       17 LOADN                            R10 0
       18 LOADN                            R11 0
       19 CALL                             R8 3 1
       20 MUL                              R7 R2 R8
       21 GETTABLEKS                       R9 R2 K6 ["Position"]
       23 GETTABLEKS                       R9 R9 K7 ["Y"]
       25 GETTABLEKS                       R11 R3 K7 ["Y"]
       27 DIVK                             R10 R11 K1 [2]
       28 SUB                              R8 R9 R10
       29 GETIMPORT                        R11 K5 [CFrame.new]
       31 GETTABLEKS                       R12 R7 K2 ["X"]
       33 MOVE                             R13 R8
       34 GETTABLEKS                       R14 R7 K8 ["Z"]
       36 CALL                             R11 3 -1
       37 NAMECALL                         R9 R0 K9 ["PivotTo"]
       39 CALL                             R9 -1 0
       40 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["Players"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Util"]
       19 GETTABLEKS                       R3 R3 K12 ["AvatarAutoSetup"]
       21 GETTABLEKS                       R3 R3 K13 ["Types"]
       23 CALL                             R2 1 1
       24 NEWTABLE                         R3 4 0
       26 DUPCLOSURE                       R4 K14 [PROTO_1]
       27 CAPTURE                          VAL R1
       28 SETTABLEKS                       R4 R3 K15 ["addAnimateScript"]
       30 DUPCLOSURE                       R4 K16 [PROTO_2]
       31 SETTABLEKS                       R4 R3 K17 ["setPivotOffset"]
       33 DUPCLOSURE                       R4 K18 [PROTO_3]
       34 SETTABLEKS                       R4 R3 K19 ["positionInWorkspace"]
       36 RETURN                           R3 1
