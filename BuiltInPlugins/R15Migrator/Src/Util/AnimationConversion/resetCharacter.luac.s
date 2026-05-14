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
        2 DUPTABLE                         R2 K6 [{"Name", "Part0", "Part1", "C0", "C1", "MaxVelocity"}]
        3 LOADK                            R3 K7 ["RootJoint"]
        4 SETTABLEKS                       R3 R2 K0 ["Name"]
        6 LOADK                            R3 K8 ["HumanoidRootPart"]
        7 SETTABLEKS                       R3 R2 K1 ["Part0"]
        9 LOADK                            R3 K9 ["Torso"]
       10 SETTABLEKS                       R3 R2 K2 ["Part1"]
       12 GETIMPORT                        R3 K12 [CFrame.new]
       14 LOADN                            R4 0
       15 LOADN                            R5 0
       16 LOADN                            R6 0
       17 LOADN                            R7 255
       18 LOADK                            R8 K13 [0]
       19 LOADK                            R9 K13 [0]
       20 LOADN                            R10 0
       21 LOADN                            R11 0
       22 LOADN                            R12 1
       23 LOADN                            R13 0
       24 LOADN                            R14 1
       25 LOADN                            R15 0
       26 CALL                             R3 12 1
       27 SETTABLEKS                       R3 R2 K3 ["C0"]
       29 GETIMPORT                        R3 K12 [CFrame.new]
       31 LOADN                            R4 0
       32 LOADN                            R5 0
       33 LOADN                            R6 0
       34 LOADN                            R7 255
       35 LOADK                            R8 K13 [0]
       36 LOADK                            R9 K13 [0]
       37 LOADN                            R10 0
       38 LOADN                            R11 0
       39 LOADN                            R12 1
       40 LOADN                            R13 0
       41 LOADN                            R14 1
       42 LOADN                            R15 0
       43 CALL                             R3 12 1
       44 SETTABLEKS                       R3 R2 K4 ["C1"]
       46 LOADK                            R3 K14 [0.1]
       47 SETTABLEKS                       R3 R2 K5 ["MaxVelocity"]
       49 SETTABLEKS                       R2 R1 K7 ["RootJoint"]
       51 DUPTABLE                         R2 K6 [{"Name", "Part0", "Part1", "C0", "C1", "MaxVelocity"}]
       52 LOADK                            R3 K15 ["Left Hip"]
       53 SETTABLEKS                       R3 R2 K0 ["Name"]
       55 LOADK                            R3 K9 ["Torso"]
       56 SETTABLEKS                       R3 R2 K1 ["Part0"]
       58 LOADK                            R3 K16 ["Left Leg"]
       59 SETTABLEKS                       R3 R2 K2 ["Part1"]
       61 GETIMPORT                        R3 K12 [CFrame.new]
       63 LOADN                            R4 255
       64 LOADN                            R5 255
       65 LOADN                            R6 0
       66 LOADK                            R7 K13 [0]
       67 LOADK                            R8 K13 [0]
       68 LOADN                            R9 255
       69 LOADN                            R10 0
       70 LOADN                            R11 1
       71 LOADN                            R12 0
       72 LOADN                            R13 1
       73 LOADN                            R14 0
       74 LOADN                            R15 0
       75 CALL                             R3 12 1
       76 SETTABLEKS                       R3 R2 K3 ["C0"]
       78 GETIMPORT                        R3 K12 [CFrame.new]
       80 LOADK                            R4 K17 [-0.5]
       81 LOADN                            R5 1
       82 LOADN                            R6 0
       83 LOADK                            R7 K13 [0]
       84 LOADK                            R8 K13 [0]
       85 LOADN                            R9 255
       86 LOADN                            R10 0
       87 LOADN                            R11 1
       88 LOADN                            R12 0
       89 LOADN                            R13 1
       90 LOADN                            R14 0
       91 LOADN                            R15 0
       92 CALL                             R3 12 1
       93 SETTABLEKS                       R3 R2 K4 ["C1"]
       95 LOADK                            R3 K14 [0.1]
       96 SETTABLEKS                       R3 R2 K5 ["MaxVelocity"]
       98 SETTABLEKS                       R2 R1 K15 ["Left Hip"]
      100 DUPTABLE                         R2 K6 [{"Name", "Part0", "Part1", "C0", "C1", "MaxVelocity"}]
      101 LOADK                            R3 K18 ["Left Shoulder"]
      102 SETTABLEKS                       R3 R2 K0 ["Name"]
      104 LOADK                            R3 K9 ["Torso"]
      105 SETTABLEKS                       R3 R2 K1 ["Part0"]
      107 LOADK                            R3 K19 ["Left Arm"]
      108 SETTABLEKS                       R3 R2 K2 ["Part1"]
      110 GETIMPORT                        R3 K12 [CFrame.new]
      112 LOADN                            R4 255
      113 LOADK                            R5 K20 [0.5]
      114 LOADN                            R6 0
      115 LOADK                            R7 K13 [0]
      116 LOADK                            R8 K13 [0]
      117 LOADN                            R9 255
      118 LOADN                            R10 0
      119 LOADN                            R11 1
      120 LOADN                            R12 0
      121 LOADN                            R13 1
      122 LOADN                            R14 0
      123 LOADN                            R15 0
      124 CALL                             R3 12 1
      125 SETTABLEKS                       R3 R2 K3 ["C0"]
      127 GETIMPORT                        R3 K12 [CFrame.new]
      129 LOADK                            R4 K20 [0.5]
      130 LOADK                            R5 K20 [0.5]
      131 LOADN                            R6 0
      132 LOADK                            R7 K13 [0]
      133 LOADK                            R8 K13 [0]
      134 LOADN                            R9 255
      135 LOADN                            R10 0
      136 LOADN                            R11 1
      137 LOADN                            R12 0
      138 LOADN                            R13 1
      139 LOADN                            R14 0
      140 LOADN                            R15 0
      141 CALL                             R3 12 1
      142 SETTABLEKS                       R3 R2 K4 ["C1"]
      144 LOADK                            R3 K14 [0.1]
      145 SETTABLEKS                       R3 R2 K5 ["MaxVelocity"]
      147 SETTABLEKS                       R2 R1 K18 ["Left Shoulder"]
      149 DUPTABLE                         R2 K6 [{"Name", "Part0", "Part1", "C0", "C1", "MaxVelocity"}]
      150 LOADK                            R3 K21 ["Neck"]
      151 SETTABLEKS                       R3 R2 K0 ["Name"]
      153 LOADK                            R3 K9 ["Torso"]
      154 SETTABLEKS                       R3 R2 K1 ["Part0"]
      156 LOADK                            R3 K22 ["Head"]
      157 SETTABLEKS                       R3 R2 K2 ["Part1"]
      159 GETIMPORT                        R3 K12 [CFrame.new]
      161 LOADN                            R4 0
      162 LOADN                            R5 1
      163 LOADN                            R6 0
      164 LOADN                            R7 255
      165 LOADK                            R8 K13 [0]
      166 LOADK                            R9 K13 [0]
      167 LOADN                            R10 0
      168 LOADN                            R11 0
      169 LOADN                            R12 1
      170 LOADN                            R13 0
      171 LOADN                            R14 1
      172 LOADN                            R15 0
      173 CALL                             R3 12 1
      174 SETTABLEKS                       R3 R2 K3 ["C0"]
      176 GETIMPORT                        R3 K12 [CFrame.new]
      178 LOADN                            R4 0
      179 LOADK                            R5 K17 [-0.5]
      180 LOADN                            R6 0
      181 LOADN                            R7 255
      182 LOADK                            R8 K13 [0]
      183 LOADK                            R9 K13 [0]
      184 LOADN                            R10 0
      185 LOADN                            R11 0
      186 LOADN                            R12 1
      187 LOADN                            R13 0
      188 LOADN                            R14 1
      189 LOADN                            R15 0
      190 CALL                             R3 12 1
      191 SETTABLEKS                       R3 R2 K4 ["C1"]
      193 LOADK                            R3 K14 [0.1]
      194 SETTABLEKS                       R3 R2 K5 ["MaxVelocity"]
      196 SETTABLEKS                       R2 R1 K21 ["Neck"]
      198 DUPTABLE                         R2 K6 [{"Name", "Part0", "Part1", "C0", "C1", "MaxVelocity"}]
      199 LOADK                            R3 K23 ["Right Shoulder"]
      200 SETTABLEKS                       R3 R2 K0 ["Name"]
      202 LOADK                            R3 K9 ["Torso"]
      203 SETTABLEKS                       R3 R2 K1 ["Part0"]
      205 LOADK                            R3 K24 ["Right Arm"]
      206 SETTABLEKS                       R3 R2 K2 ["Part1"]
      208 GETIMPORT                        R3 K12 [CFrame.new]
      210 LOADN                            R4 1
      211 LOADK                            R5 K20 [0.5]
      212 LOADN                            R6 0
      213 LOADN                            R7 0
      214 LOADN                            R8 0
      215 LOADN                            R9 1
      216 LOADN                            R10 0
      217 LOADN                            R11 1
      218 LOADN                            R12 0
      219 LOADN                            R13 255
      220 LOADK                            R14 K13 [0]
      221 LOADK                            R15 K13 [0]
      222 CALL                             R3 12 1
      223 SETTABLEKS                       R3 R2 K3 ["C0"]
      225 GETIMPORT                        R3 K12 [CFrame.new]
      227 LOADK                            R4 K17 [-0.5]
      228 LOADK                            R5 K20 [0.5]
      229 LOADN                            R6 0
      230 LOADN                            R7 0
      231 LOADN                            R8 0
      232 LOADN                            R9 1
      233 LOADN                            R10 0
      234 LOADN                            R11 1
      235 LOADN                            R12 0
      236 LOADN                            R13 255
      237 LOADK                            R14 K13 [0]
      238 LOADK                            R15 K13 [0]
      239 CALL                             R3 12 1
      240 SETTABLEKS                       R3 R2 K4 ["C1"]
      242 LOADK                            R3 K14 [0.1]
      243 SETTABLEKS                       R3 R2 K5 ["MaxVelocity"]
      245 SETTABLEKS                       R2 R1 K23 ["Right Shoulder"]
      247 DUPTABLE                         R2 K6 [{"Name", "Part0", "Part1", "C0", "C1", "MaxVelocity"}]
      248 LOADK                            R3 K25 ["Right Hip"]
      249 SETTABLEKS                       R3 R2 K0 ["Name"]
      251 LOADK                            R3 K9 ["Torso"]
      252 SETTABLEKS                       R3 R2 K1 ["Part0"]
      254 LOADK                            R3 K26 ["Right Leg"]
      255 SETTABLEKS                       R3 R2 K2 ["Part1"]
      257 GETIMPORT                        R3 K12 [CFrame.new]
      259 LOADN                            R4 1
      260 LOADN                            R5 255
      261 LOADN                            R6 0
      262 LOADN                            R7 0
      263 LOADN                            R8 0
      264 LOADN                            R9 1
      265 LOADN                            R10 0
      266 LOADN                            R11 1
      267 LOADN                            R12 0
      268 LOADN                            R13 255
      269 LOADK                            R14 K13 [0]
      270 LOADK                            R15 K13 [0]
      271 CALL                             R3 12 1
      272 SETTABLEKS                       R3 R2 K3 ["C0"]
      274 GETIMPORT                        R3 K12 [CFrame.new]
      276 LOADK                            R4 K20 [0.5]
      277 LOADN                            R5 1
      278 LOADN                            R6 0
      279 LOADN                            R7 0
      280 LOADN                            R8 0
      281 LOADN                            R9 1
      282 LOADN                            R10 0
      283 LOADN                            R11 1
      284 LOADN                            R12 0
      285 LOADN                            R13 255
      286 LOADK                            R14 K13 [0]
      287 LOADK                            R15 K13 [0]
      288 CALL                             R3 12 1
      289 SETTABLEKS                       R3 R2 K4 ["C1"]
      291 LOADK                            R3 K14 [0.1]
      292 SETTABLEKS                       R3 R2 K5 ["MaxVelocity"]
      294 SETTABLEKS                       R2 R1 K25 ["Right Hip"]
      296 NEWCLOSURE                       R2 P0
      297 CAPTURE                          VAL R0
      298 LOADK                            R5 K27 ["Humanoid"]
      299 NAMECALL                         R3 R0 K28 ["FindFirstChildWhichIsA"]
      301 CALL                             R3 2 1
      302 GETTABLEKS                       R4 R3 K29 ["RigType"]
      304 GETIMPORT                        R5 K33 [Enum.HumanoidRigType.R6]
      306 JUMPIFNOTEQ                      R4 R5 ; [+12]
      308 GETIMPORT                        R4 K35 [pairs]
      310 MOVE                             R5 R1
      311 CALL                             R4 1 3
      312 FORGPREP_NEXT                    R4
      313 MOVE                             R9 R2
      314 MOVE                             R10 R8
      315 CALL                             R9 1 0
      316 FORGLOOP                         R4 2 ; [-4]
      318 RETURN                           R0 0
      319 NAMECALL                         R4 R3 K36 ["BuildRigFromAttachments"]
      321 CALL                             R4 1 0
      322 RETURN                           R0 0

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
