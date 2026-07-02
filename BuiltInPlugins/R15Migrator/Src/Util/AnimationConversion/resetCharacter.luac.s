PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["Part0"]
        3 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K0 ["Part0"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R3 R0 K2 ["Part1"]
       11 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K2 ["Part1"]
       16 GETTABLEKS                       R1 R0 K0 ["Part0"]
       18 JUMPIFNOT                        R1 ; [+3]
       19 GETTABLEKS                       R1 R0 K2 ["Part1"]
       21 JUMPIF                           R1 ; [+1]
       22 RETURN                           R0 0
       23 GETTABLEKS                       R1 R0 K0 ["Part0"]
       25 GETTABLEKS                       R3 R0 K3 ["Name"]
       27 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
       29 CALL                             R1 2 1
       30 JUMPIF                           R1 ; [+9]
       31 GETIMPORT                        R2 K6 [Instance.new]
       33 LOADK                            R3 K7 ["Motor6D"]
       34 CALL                             R2 1 1
       35 MOVE                             R1 R2
       36 GETTABLEKS                       R2 R0 K0 ["Part0"]
       38 SETTABLEKS                       R2 R1 K8 ["Parent"]
       40 GETIMPORT                        R2 K10 [pairs]
       42 MOVE                             R3 R0
       43 CALL                             R2 1 3
       44 FORGPREP_NEXT                    R2
       45 SETTABLE                         R6 R1 R5
       46 FORGLOOP                         R2 2 ; [-2]
       48 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 8 0
        2 DUPTABLE                         R2 K10 [{[1] = "RootJoint", ["Part0"] = "HumanoidRootPart", ["Part1"] = "Torso", ["C0"], ["C1"], ["MaxVelocity"] = 0.1}]
        3 GETIMPORT                        R3 K13 [CFrame.new]
        5 LOADN                            R4 0
        6 LOADN                            R5 0
        7 LOADN                            R6 0
        8 LOADN                            R7 -1
        9 LOADK                            R8 K14 [0]
       10 LOADK                            R9 K14 [0]
       11 LOADN                            R10 0
       12 LOADN                            R11 0
       13 LOADN                            R12 1
       14 LOADN                            R13 0
       15 LOADN                            R14 1
       16 LOADN                            R15 0
       17 CALL                             R3 12 1
       18 SETTABLEKS                       R3 R2 K6 ["C0"]
       20 GETIMPORT                        R3 K13 [CFrame.new]
       22 LOADN                            R4 0
       23 LOADN                            R5 0
       24 LOADN                            R6 0
       25 LOADN                            R7 -1
       26 LOADK                            R8 K14 [0]
       27 LOADK                            R9 K14 [0]
       28 LOADN                            R10 0
       29 LOADN                            R11 0
       30 LOADN                            R12 1
       31 LOADN                            R13 0
       32 LOADN                            R14 1
       33 LOADN                            R15 0
       34 CALL                             R3 12 1
       35 SETTABLEKS                       R3 R2 K7 ["C1"]
       37 SETTABLEKS                       R2 R1 K1 ["RootJoint"]
       39 DUPTABLE                         R2 K17 [{[1] = "Left Hip", ["Part0"] = "Torso", ["Part1"] = "Left Leg", ["C0"], ["C1"], ["MaxVelocity"] = 0.1}]
       40 GETIMPORT                        R3 K13 [CFrame.new]
       42 LOADN                            R4 -1
       43 LOADN                            R5 -1
       44 LOADN                            R6 0
       45 LOADK                            R7 K14 [0]
       46 LOADK                            R8 K14 [0]
       47 LOADN                            R9 -1
       48 LOADN                            R10 0
       49 LOADN                            R11 1
       50 LOADN                            R12 0
       51 LOADN                            R13 1
       52 LOADN                            R14 0
       53 LOADN                            R15 0
       54 CALL                             R3 12 1
       55 SETTABLEKS                       R3 R2 K6 ["C0"]
       57 GETIMPORT                        R3 K13 [CFrame.new]
       59 LOADK                            R4 K18 [-0.5]
       60 LOADN                            R5 1
       61 LOADN                            R6 0
       62 LOADK                            R7 K14 [0]
       63 LOADK                            R8 K14 [0]
       64 LOADN                            R9 -1
       65 LOADN                            R10 0
       66 LOADN                            R11 1
       67 LOADN                            R12 0
       68 LOADN                            R13 1
       69 LOADN                            R14 0
       70 LOADN                            R15 0
       71 CALL                             R3 12 1
       72 SETTABLEKS                       R3 R2 K7 ["C1"]
       74 SETTABLEKS                       R2 R1 K15 ["Left Hip"]
       76 DUPTABLE                         R2 K21 [{[1] = "Left Shoulder", ["Part0"] = "Torso", ["Part1"] = "Left Arm", ["C0"], ["C1"], ["MaxVelocity"] = 0.1}]
       77 GETIMPORT                        R3 K13 [CFrame.new]
       79 LOADN                            R4 -1
       80 LOADK                            R5 K22 [0.5]
       81 LOADN                            R6 0
       82 LOADK                            R7 K14 [0]
       83 LOADK                            R8 K14 [0]
       84 LOADN                            R9 -1
       85 LOADN                            R10 0
       86 LOADN                            R11 1
       87 LOADN                            R12 0
       88 LOADN                            R13 1
       89 LOADN                            R14 0
       90 LOADN                            R15 0
       91 CALL                             R3 12 1
       92 SETTABLEKS                       R3 R2 K6 ["C0"]
       94 GETIMPORT                        R3 K13 [CFrame.new]
       96 LOADK                            R4 K22 [0.5]
       97 LOADK                            R5 K22 [0.5]
       98 LOADN                            R6 0
       99 LOADK                            R7 K14 [0]
      100 LOADK                            R8 K14 [0]
      101 LOADN                            R9 -1
      102 LOADN                            R10 0
      103 LOADN                            R11 1
      104 LOADN                            R12 0
      105 LOADN                            R13 1
      106 LOADN                            R14 0
      107 LOADN                            R15 0
      108 CALL                             R3 12 1
      109 SETTABLEKS                       R3 R2 K7 ["C1"]
      111 SETTABLEKS                       R2 R1 K19 ["Left Shoulder"]
      113 DUPTABLE                         R2 K25 [{[1] = "Neck", ["Part0"] = "Torso", ["Part1"] = "Head", ["C0"], ["C1"], ["MaxVelocity"] = 0.1}]
      114 GETIMPORT                        R3 K13 [CFrame.new]
      116 LOADN                            R4 0
      117 LOADN                            R5 1
      118 LOADN                            R6 0
      119 LOADN                            R7 -1
      120 LOADK                            R8 K14 [0]
      121 LOADK                            R9 K14 [0]
      122 LOADN                            R10 0
      123 LOADN                            R11 0
      124 LOADN                            R12 1
      125 LOADN                            R13 0
      126 LOADN                            R14 1
      127 LOADN                            R15 0
      128 CALL                             R3 12 1
      129 SETTABLEKS                       R3 R2 K6 ["C0"]
      131 GETIMPORT                        R3 K13 [CFrame.new]
      133 LOADN                            R4 0
      134 LOADK                            R5 K18 [-0.5]
      135 LOADN                            R6 0
      136 LOADN                            R7 -1
      137 LOADK                            R8 K14 [0]
      138 LOADK                            R9 K14 [0]
      139 LOADN                            R10 0
      140 LOADN                            R11 0
      141 LOADN                            R12 1
      142 LOADN                            R13 0
      143 LOADN                            R14 1
      144 LOADN                            R15 0
      145 CALL                             R3 12 1
      146 SETTABLEKS                       R3 R2 K7 ["C1"]
      148 SETTABLEKS                       R2 R1 K23 ["Neck"]
      150 DUPTABLE                         R2 K28 [{[1] = "Right Shoulder", ["Part0"] = "Torso", ["Part1"] = "Right Arm", ["C0"], ["C1"], ["MaxVelocity"] = 0.1}]
      151 GETIMPORT                        R3 K13 [CFrame.new]
      153 LOADN                            R4 1
      154 LOADK                            R5 K22 [0.5]
      155 LOADN                            R6 0
      156 LOADN                            R7 0
      157 LOADN                            R8 0
      158 LOADN                            R9 1
      159 LOADN                            R10 0
      160 LOADN                            R11 1
      161 LOADN                            R12 0
      162 LOADN                            R13 -1
      163 LOADK                            R14 K14 [0]
      164 LOADK                            R15 K14 [0]
      165 CALL                             R3 12 1
      166 SETTABLEKS                       R3 R2 K6 ["C0"]
      168 GETIMPORT                        R3 K13 [CFrame.new]
      170 LOADK                            R4 K18 [-0.5]
      171 LOADK                            R5 K22 [0.5]
      172 LOADN                            R6 0
      173 LOADN                            R7 0
      174 LOADN                            R8 0
      175 LOADN                            R9 1
      176 LOADN                            R10 0
      177 LOADN                            R11 1
      178 LOADN                            R12 0
      179 LOADN                            R13 -1
      180 LOADK                            R14 K14 [0]
      181 LOADK                            R15 K14 [0]
      182 CALL                             R3 12 1
      183 SETTABLEKS                       R3 R2 K7 ["C1"]
      185 SETTABLEKS                       R2 R1 K26 ["Right Shoulder"]
      187 DUPTABLE                         R2 K31 [{[1] = "Right Hip", ["Part0"] = "Torso", ["Part1"] = "Right Leg", ["C0"], ["C1"], ["MaxVelocity"] = 0.1}]
      188 GETIMPORT                        R3 K13 [CFrame.new]
      190 LOADN                            R4 1
      191 LOADN                            R5 -1
      192 LOADN                            R6 0
      193 LOADN                            R7 0
      194 LOADN                            R8 0
      195 LOADN                            R9 1
      196 LOADN                            R10 0
      197 LOADN                            R11 1
      198 LOADN                            R12 0
      199 LOADN                            R13 -1
      200 LOADK                            R14 K14 [0]
      201 LOADK                            R15 K14 [0]
      202 CALL                             R3 12 1
      203 SETTABLEKS                       R3 R2 K6 ["C0"]
      205 GETIMPORT                        R3 K13 [CFrame.new]
      207 LOADK                            R4 K22 [0.5]
      208 LOADN                            R5 1
      209 LOADN                            R6 0
      210 LOADN                            R7 0
      211 LOADN                            R8 0
      212 LOADN                            R9 1
      213 LOADN                            R10 0
      214 LOADN                            R11 1
      215 LOADN                            R12 0
      216 LOADN                            R13 -1
      217 LOADK                            R14 K14 [0]
      218 LOADK                            R15 K14 [0]
      219 CALL                             R3 12 1
      220 SETTABLEKS                       R3 R2 K7 ["C1"]
      222 SETTABLEKS                       R2 R1 K29 ["Right Hip"]
      224 NEWCLOSURE                       R2 P0
      225 CAPTURE                          VAL R0
      226 LOADK                            R5 K32 ["Humanoid"]
      227 NAMECALL                         R3 R0 K33 ["FindFirstChildWhichIsA"]
      229 CALL                             R3 2 1
      230 GETTABLEKS                       R4 R3 K34 ["RigType"]
      232 GETIMPORT                        R5 K38 [Enum.HumanoidRigType.R6]
      234 JUMPIFNOTEQ                      R4 R5 ; [+12]
      236 GETIMPORT                        R4 K40 [pairs]
      238 MOVE                             R5 R1
      239 CALL                             R4 1 3
      240 FORGPREP_NEXT                    R4
      241 MOVE                             R9 R2
      242 MOVE                             R10 R8
      243 CALL                             R9 1 0
      244 FORGLOOP                         R4 2 ; [-4]
      246 RETURN                           R0 0
      247 NAMECALL                         R4 R3 K41 ["BuildRigFromAttachments"]
      249 CALL                             R4 1 0
      250 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R4 R3
        1 JUMPIF                           R4 ; [+2]
        2 NEWTABLE                         R4 0 0
        4 MOVE                             R3 R4
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLE                         R4 R3 R1
        8 JUMPIFNOT                        R4 ; [+12]
        9 GETIMPORT                        R4 K1 [warn]
       11 FASTCALL1                        TOSTRING R0 ; [+3]
       12 MOVE                             R9 R0
       13 GETIMPORT                        R8 K3 [tostring]
       15 CALL                             R8 1 1
       16 MOVE                             R6 R8
       17 LOADK                            R7 K4 ["'s JointInstance form a circular hierarchy"]
       18 CONCAT                           R5 R6 R7
       19 CALL                             R4 1 0
       20 RETURN                           R0 0
       21 LOADB                            R4 1
       22 SETTABLE                         R4 R3 R1
       23 LOADB                            R4 0
       24 SETTABLEKS                       R4 R1 K5 ["Anchored"]
       26 SETTABLEKS                       R2 R1 K6 ["CFrame"]
       28 NAMECALL                         R4 R0 K7 ["GetDescendants"]
       30 CALL                             R4 1 3
       31 FORGPREP                         R4
       32 LOADK                            R11 K8 ["JointInstance"]
       33 NAMECALL                         R9 R8 K9 ["IsA"]
       35 CALL                             R9 2 1
       36 JUMPIFNOT                        R9 ; [+27]
       37 GETTABLEKS                       R9 R8 K10 ["Enabled"]
       39 JUMPIFNOT                        R9 ; [+24]
       40 GETTABLEKS                       R9 R8 K11 ["Part0"]
       42 JUMPIFNOTEQ                      R9 R1 ; [+21]
       44 GETTABLEKS                       R11 R8 K11 ["Part0"]
       46 GETTABLEKS                       R11 R11 K6 ["CFrame"]
       48 GETTABLEKS                       R12 R8 K12 ["C0"]
       50 MUL                              R10 R11 R12
       51 GETTABLEKS                       R11 R8 K13 ["C1"]
       53 NAMECALL                         R11 R11 K14 ["Inverse"]
       55 CALL                             R11 1 1
       56 MUL                              R9 R10 R11
       57 GETUPVAL                         R10 0
       58 MOVE                             R11 R0
       59 GETTABLEKS                       R12 R8 K15 ["Part1"]
       61 MOVE                             R13 R9
       62 MOVE                             R14 R3
       63 CALL                             R10 4 0
       64 FORGLOOP                         R4 2 ; [-33]
       66 RETURN                           R0 0

PROTO_3:
        0 NAMECALL                         R2 R0 K0 ["GetChildren"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 LOADK                            R9 K1 ["Accessory"]
        5 NAMECALL                         R7 R6 K2 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIF                           R7 ; [+21]
        9 LOADK                            R9 K3 ["Tool"]
       10 NAMECALL                         R7 R6 K2 ["IsA"]
       12 CALL                             R7 2 1
       13 JUMPIF                           R7 ; [+16]
       14 LOADK                            R9 K4 ["Attachment"]
       15 NAMECALL                         R7 R6 K2 ["IsA"]
       17 CALL                             R7 2 1
       18 JUMPIFNOT                        R7 ; [+5]
       19 GETTABLEKS                       R7 R6 K5 ["Name"]
       21 JUMPIFNOTEQ                      R7 R1 ; [+2]
       23 RETURN                           R6 1
       24 GETUPVAL                         R7 0
       25 MOVE                             R8 R6
       26 MOVE                             R9 R1
       27 CALL                             R7 2 1
       28 JUMPIFNOT                        R7 ; [+1]
       29 RETURN                           R7 1
       30 FORGLOOP                         R2 2 ; [-27]
       32 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["Accessory"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+51]
        9 LOADK                            R8 K3 ["Handle"]
       10 NAMECALL                         R6 R5 K4 ["FindFirstChild"]
       12 CALL                             R6 2 1
       13 LOADK                            R9 K5 ["Attachment"]
       14 NAMECALL                         R7 R6 K6 ["FindFirstChildWhichIsA"]
       16 CALL                             R7 2 1
       17 JUMPIFNOT                        R7 ; [+21]
       18 GETUPVAL                         R8 0
       19 MOVE                             R9 R0
       20 MOVE                             R10 R7
       21 CALL                             R8 2 1
       22 JUMPIFNOT                        R8 ; [+16]
       23 GETTABLEKS                       R11 R8 K7 ["Parent"]
       25 GETTABLEKS                       R11 R11 K8 ["CFrame"]
       27 GETTABLEKS                       R12 R8 K8 ["CFrame"]
       29 MUL                              R10 R11 R12
       30 GETTABLEKS                       R11 R7 K8 ["CFrame"]
       32 NAMECALL                         R11 R11 K9 ["Inverse"]
       34 CALL                             R11 1 1
       35 MUL                              R9 R10 R11
       36 SETTABLEKS                       R9 R6 K8 ["CFrame"]
       38 RETURN                           R0 0
       39 LOADK                            R12 K10 ["Head"]
       40 NAMECALL                         R10 R0 K4 ["FindFirstChild"]
       42 CALL                             R10 2 1
       43 GETTABLEKS                       R10 R10 K8 ["CFrame"]
       45 GETIMPORT                        R11 K12 [CFrame.new]
       47 LOADN                            R12 0
       48 LOADK                            R13 K13 [0.5]
       49 LOADN                            R14 0
       50 CALL                             R11 3 1
       51 MUL                              R9 R10 R11
       52 GETTABLEKS                       R10 R5 K14 ["AttachmentPoint"]
       54 NAMECALL                         R10 R10 K9 ["Inverse"]
       56 CALL                             R10 1 1
       57 MUL                              R8 R9 R10
       58 SETTABLEKS                       R8 R6 K8 ["CFrame"]
       60 FORGLOOP                         R1 2 ; [-57]
       62 RETURN                           R0 0

PROTO_5:
        0 NAMECALL                         R1 R0 K0 ["GetDescendants"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["Script"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+3]
        9 NAMECALL                         R6 R5 K3 ["Destroy"]
       11 CALL                             R6 1 0
       12 FORGLOOP                         R1 2 ; [-9]
       14 RETURN                           R0 0

PROTO_6:
        0 JUMPIF                           R1 ; [+4]
        1 GETIMPORT                        R2 K2 [CFrame.new]
        3 CALL                             R2 0 1
        4 MOVE                             R1 R2
        5 LOADK                            R5 K3 ["Humanoid"]
        6 NAMECALL                         R3 R0 K4 ["FindFirstChildWhichIsA"]
        8 CALL                             R3 2 1
        9 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       11 LOADK                            R4 K5 ["model does not contain humanoid"]
       12 GETIMPORT                        R2 K7 [assert]
       14 CALL                             R2 2 0
       15 LOADK                            R4 K8 ["HumanoidRootPart"]
       16 NAMECALL                         R2 R0 K9 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 JUMPIF                           R2 ; [+25]
       20 LOADK                            R5 K3 ["Humanoid"]
       21 NAMECALL                         R3 R0 K4 ["FindFirstChildWhichIsA"]
       23 CALL                             R3 2 1
       24 GETTABLEKS                       R3 R3 K10 ["RigType"]
       26 GETIMPORT                        R4 K14 [Enum.HumanoidRigType.R6]
       28 JUMPIFNOTEQ                      R3 R4 ; [+16]
       30 GETIMPORT                        R3 K16 [Instance.new]
       32 LOADK                            R4 K17 ["Part"]
       33 MOVE                             R5 R0
       34 CALL                             R3 2 1
       35 MOVE                             R2 R3
       36 LOADK                            R3 K8 ["HumanoidRootPart"]
       37 SETTABLEKS                       R3 R2 K18 ["Name"]
       39 LOADK                            R3 K19 [{2, 2, 1}]
       40 SETTABLEKS                       R3 R2 K20 ["Size"]
       42 LOADN                            R3 1
       43 SETTABLEKS                       R3 R2 K21 ["Transparency"]
       45 JUMPIF                           R2 ; [+1]
       46 RETURN                           R0 0
       47 GETUPVAL                         R3 0
       48 MOVE                             R4 R0
       49 CALL                             R3 1 0
       50 GETUPVAL                         R3 1
       51 MOVE                             R4 R0
       52 MOVE                             R5 R2
       53 MOVE                             R6 R1
       54 CALL                             R3 3 0
       55 GETUPVAL                         R3 2
       56 MOVE                             R4 R0
       57 CALL                             R3 1 0
       58 GETUPVAL                         R3 3
       59 MOVE                             R4 R0
       60 CALL                             R3 1 0
       61 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 DUPCLOSURE                       R1 K1 [PROTO_2]
        3 CAPTURE                          VAL R1
        4 DUPCLOSURE                       R2 K2 [PROTO_3]
        5 CAPTURE                          VAL R2
        6 DUPCLOSURE                       R3 K3 [PROTO_4]
        7 CAPTURE                          VAL R2
        8 DUPCLOSURE                       R4 K4 [PROTO_5]
        9 DUPCLOSURE                       R5 K5 [PROTO_6]
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R4
       14 RETURN                           R5 1
