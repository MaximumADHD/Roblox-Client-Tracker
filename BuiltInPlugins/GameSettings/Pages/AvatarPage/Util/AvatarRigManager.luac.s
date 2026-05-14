PROTO_0:
        0 NEWTABLE                         R2 8 0
        2 GETUPVAL                         R5 0
        3 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
        5 MOVE                             R4 R2
        6 GETIMPORT                        R3 K1 [setmetatable]
        8 CALL                             R3 2 0
        9 NAMECALL                         R3 R0 K2 ["clone"]
       11 CALL                             R3 1 1
       12 SETTABLEKS                       R3 R2 K3 ["r6"]
       14 GETTABLEKS                       R3 R2 K3 ["r6"]
       16 LOADB                            R4 0
       17 SETTABLEKS                       R4 R3 K4 ["Archivable"]
       19 NAMECALL                         R3 R1 K2 ["clone"]
       21 CALL                             R3 1 1
       22 SETTABLEKS                       R3 R2 K5 ["r15"]
       24 GETTABLEKS                       R3 R2 K5 ["r15"]
       26 LOADB                            R4 0
       27 SETTABLEKS                       R4 R3 K4 ["Archivable"]
       29 NEWTABLE                         R3 2 0
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K6 ["AvatarType"]
       34 GETTABLEKS                       R4 R4 K7 ["R6"]
       36 GETTABLEKS                       R5 R2 K3 ["r6"]
       38 SETTABLE                         R5 R3 R4
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R4 R4 K6 ["AvatarType"]
       42 GETTABLEKS                       R4 R4 K8 ["R15"]
       44 GETTABLEKS                       R5 R2 K5 ["r15"]
       46 SETTABLE                         R5 R3 R4
       47 SETTABLEKS                       R3 R2 K9 ["rigs"]
       49 GETTABLEKS                       R3 R2 K5 ["r15"]
       51 SETTABLEKS                       R3 R2 K10 ["currentCharacter"]
       53 GETIMPORT                        R3 K13 [Instance.new]
       55 LOADK                            R4 K14 ["Folder"]
       56 CALL                             R3 1 1
       57 SETTABLEKS                       R3 R2 K15 ["characterRoot"]
       59 GETTABLEKS                       R3 R2 K15 ["characterRoot"]
       61 LOADB                            R4 0
       62 SETTABLEKS                       R4 R3 K4 ["Archivable"]
       64 GETTABLEKS                       R3 R2 K15 ["characterRoot"]
       66 GETIMPORT                        R4 K17 [game]
       68 LOADK                            R6 K18 ["StarterPlayer"]
       69 NAMECALL                         R4 R4 K19 ["GetService"]
       71 CALL                             R4 2 1
       72 SETTABLEKS                       R4 R3 K20 ["Parent"]
       74 GETTABLEKS                       R3 R2 K15 ["characterRoot"]
       76 LOADK                            R4 K21 ["CharacterRoot"]
       77 SETTABLEKS                       R4 R3 K22 ["Name"]
       79 GETTABLEKS                       R3 R2 K5 ["r15"]
       81 GETTABLEKS                       R5 R2 K3 ["r6"]
       83 GETTABLEKS                       R5 R5 K23 ["PrimaryPart"]
       85 GETTABLEKS                       R5 R5 K24 ["CFrame"]
       87 NAMECALL                         R3 R3 K25 ["SetPrimaryPartCFrame"]
       89 CALL                             R3 2 0
       90 GETIMPORT                        R3 K17 [game]
       92 LOADK                            R5 K18 ["StarterPlayer"]
       93 NAMECALL                         R3 R3 K19 ["GetService"]
       95 CALL                             R3 2 1
       96 NAMECALL                         R3 R3 K26 ["ClearDefaults"]
       98 CALL                             R3 1 0
       99 GETTABLEKS                       R3 R2 K3 ["r6"]
      101 GETTABLEKS                       R4 R2 K15 ["characterRoot"]
      103 SETTABLEKS                       R4 R3 K20 ["Parent"]
      105 GETTABLEKS                       R3 R2 K3 ["r6"]
      107 GETTABLEKS                       R3 R3 K27 ["Humanoid"]
      109 NAMECALL                         R3 R3 K28 ["CacheDefaults"]
      111 CALL                             R3 1 0
      112 GETTABLEKS                       R3 R2 K3 ["r6"]
      114 LOADNIL                          R4
      115 SETTABLEKS                       R4 R3 K20 ["Parent"]
      117 GETTABLEKS                       R3 R2 K5 ["r15"]
      119 GETTABLEKS                       R4 R2 K15 ["characterRoot"]
      121 SETTABLEKS                       R4 R3 K20 ["Parent"]
      123 GETTABLEKS                       R3 R2 K5 ["r15"]
      125 GETTABLEKS                       R3 R3 K27 ["Humanoid"]
      127 NAMECALL                         R3 R3 K28 ["CacheDefaults"]
      129 CALL                             R3 1 0
      130 GETTABLEKS                       R3 R2 K15 ["characterRoot"]
      132 GETIMPORT                        R4 K17 [game]
      134 GETTABLEKS                       R4 R4 K29 ["Workspace"]
      136 SETTABLEKS                       R4 R3 K20 ["Parent"]
      138 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["currentCharacter"]
        3 GETTABLEKS                       R0 R0 K1 ["Humanoid"]
        5 GETUPVAL                         R2 1
        6 NAMECALL                         R0 R0 K2 ["ApplyDescription"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["rigs"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOTEQKNIL                  R3 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 GETTABLEKS                       R5 R0 K0 ["rigs"]
        9 GETTABLE                         R4 R5 R1
       10 GETTABLEKS                       R5 R0 K1 ["currentCharacter"]
       12 JUMPIFNOTEQ                      R4 R5 ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 JUMPIFNOT                        R3 ; [+38]
       17 JUMPIFNOT                        R2 ; [+37]
       18 LOADNIL                          R4
       19 LOADNIL                          R5
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K2 ["AvatarType"]
       23 GETTABLEKS                       R6 R6 K3 ["R6"]
       25 JUMPIFNOTEQ                      R1 R6 ; [+6]
       27 GETTABLEKS                       R4 R0 K4 ["r6"]
       29 GETTABLEKS                       R5 R0 K5 ["r15"]
       31 JUMP                             ; [+4]
       32 GETTABLEKS                       R4 R0 K5 ["r15"]
       34 GETTABLEKS                       R5 R0 K4 ["r6"]
       36 GETTABLEKS                       R6 R0 K6 ["characterRoot"]
       38 SETTABLEKS                       R6 R4 K7 ["Parent"]
       40 GETUPVAL                         R6 1
       41 SETTABLEKS                       R6 R5 K7 ["Parent"]
       43 SETTABLEKS                       R4 R0 K1 ["currentCharacter"]
       45 GETTABLEKS                       R6 R0 K1 ["currentCharacter"]
       47 GETTABLEKS                       R6 R6 K8 ["HumanoidRootPart"]
       49 GETTABLEKS                       R7 R5 K8 ["HumanoidRootPart"]
       51 GETTABLEKS                       R7 R7 K9 ["CFrame"]
       53 SETTABLEKS                       R7 R6 K9 ["CFrame"]
       55 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["currentCharacter"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETTABLEKS                       R2 R0 K0 ["currentCharacter"]
        5 GETTABLEKS                       R2 R2 K1 ["HumanoidRootPart"]
        7 SETTABLEKS                       R1 R2 K2 ["CFrame"]
        9 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["r6"]
        2 LOADNIL                          R2
        3 SETTABLEKS                       R2 R1 K1 ["Parent"]
        5 GETTABLEKS                       R1 R0 K0 ["r6"]
        7 NAMECALL                         R1 R1 K2 ["Destroy"]
        9 CALL                             R1 1 0
       10 LOADNIL                          R1
       11 SETTABLEKS                       R1 R0 K0 ["r6"]
       13 GETTABLEKS                       R1 R0 K3 ["r15"]
       15 LOADNIL                          R2
       16 SETTABLEKS                       R2 R1 K1 ["Parent"]
       18 GETTABLEKS                       R1 R0 K3 ["r15"]
       20 NAMECALL                         R1 R1 K2 ["Destroy"]
       22 CALL                             R1 1 0
       23 LOADNIL                          R1
       24 SETTABLEKS                       R1 R0 K3 ["r15"]
       26 GETTABLEKS                       R1 R0 K4 ["characterRoot"]
       28 LOADNIL                          R2
       29 SETTABLEKS                       R2 R1 K1 ["Parent"]
       31 GETTABLEKS                       R1 R0 K4 ["characterRoot"]
       33 NAMECALL                         R1 R1 K2 ["Destroy"]
       35 CALL                             R1 1 0
       36 LOADNIL                          R1
       37 SETTABLEKS                       R1 R0 K4 ["characterRoot"]
       39 GETIMPORT                        R1 K6 [game]
       41 LOADK                            R3 K7 ["StarterPlayer"]
       42 NAMECALL                         R1 R1 K8 ["GetService"]
       44 CALL                             R1 2 1
       45 NAMECALL                         R1 R1 K9 ["ClearDefaults"]
       47 CALL                             R1 1 0
       48 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Util"]
       11 GETTABLEKS                       R2 R2 K6 ["ConstantAvatar"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K8 [game]
       16 LOADK                            R4 K9 ["ReplicatedStorage"]
       17 NAMECALL                         R2 R2 K10 ["GetService"]
       19 CALL                             R2 2 1
       20 NEWTABLE                         R3 8 0
       22 SETTABLEKS                       R3 R3 K11 ["__index"]
       24 DUPCLOSURE                       R4 K12 [PROTO_0]
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R4 R3 K13 ["new"]
       29 DUPCLOSURE                       R4 K14 [PROTO_2]
       30 SETTABLEKS                       R4 R3 K15 ["applyDescription"]
       32 DUPCLOSURE                       R4 K16 [PROTO_3]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 SETTABLEKS                       R4 R3 K17 ["updateAvatarType"]
       37 DUPCLOSURE                       R4 K18 [PROTO_4]
       38 SETTABLEKS                       R4 R3 K19 ["setPosition"]
       40 DUPCLOSURE                       R4 K20 [PROTO_5]
       41 SETTABLEKS                       R4 R3 K21 ["stop"]
       43 RETURN                           R3 1
