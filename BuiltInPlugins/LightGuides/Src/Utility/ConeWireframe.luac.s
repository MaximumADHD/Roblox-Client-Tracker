PROTO_0:
        0 DUPTABLE                         R0 K9 [{"_adornee", "_parent", "_light", "_handlesFolder", "_guidesFolder", "_handles", "_handlesPresent", "_listener", "_attachmentListener"}]
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["_adornee"]
        4 LOADNIL                          R1
        5 SETTABLEKS                       R1 R0 K1 ["_parent"]
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K2 ["_light"]
       10 GETIMPORT                        R1 K12 [Instance.new]
       12 LOADK                            R2 K13 ["Folder"]
       13 CALL                             R1 1 1
       14 SETTABLEKS                       R1 R0 K3 ["_handlesFolder"]
       16 LOADNIL                          R1
       17 SETTABLEKS                       R1 R0 K4 ["_guidesFolder"]
       19 NEWTABLE                         R1 0 0
       21 SETTABLEKS                       R1 R0 K5 ["_handles"]
       23 LOADB                            R1 0
       24 SETTABLEKS                       R1 R0 K6 ["_handlesPresent"]
       26 LOADNIL                          R1
       27 SETTABLEKS                       R1 R0 K7 ["_listener"]
       29 LOADNIL                          R1
       30 SETTABLEKS                       R1 R0 K8 ["_attachmentListener"]
       32 GETUPVAL                         R3 0
       33 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       35 MOVE                             R2 R0
       36 GETIMPORT                        R1 K15 [setmetatable]
       38 CALL                             R1 2 1
       39 RETURN                           R1 1

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["_setListeners"]
        2 CALL                             R1 1 0
        3 NAMECALL                         R1 R0 K1 ["_setAncestry"]
        5 CALL                             R1 1 1
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R1 R0 K2 ["_handlesPresent"]
       10 JUMPIF                           R1 ; [+3]
       11 NAMECALL                         R1 R0 K3 ["_setHandles"]
       13 CALL                             R1 1 0
       14 GETTABLEKS                       R1 R0 K4 ["_light"]
       16 GETTABLEKS                       R1 R1 K5 ["Enabled"]
       18 GETTABLEKS                       R2 R0 K4 ["_light"]
       20 GETTABLEKS                       R2 R2 K6 ["Range"]
       22 GETTABLEKS                       R3 R0 K4 ["_light"]
       24 GETTABLEKS                       R3 R3 K7 ["Angle"]
       26 FASTCALL1                        MATH_RAD R3 ; [+3]
       27 MOVE                             R5 R3
       28 GETIMPORT                        R4 K10 [math.rad]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R5 R0 K4 ["_light"]
       33 GETTABLEKS                       R5 R5 K11 ["Color"]
       35 DIVK                             R8 R4 K12 [2]
       36 FASTCALL1                        MATH_SIN R8 ; [+2]
       37 GETIMPORT                        R7 K14 [math.sin]
       39 CALL                             R7 1 1
       40 MUL                              R6 R2 R7
       41 DIVK                             R9 R4 K12 [2]
       42 FASTCALL1                        MATH_COS R9 ; [+2]
       43 GETIMPORT                        R8 K16 [math.cos]
       45 CALL                             R8 1 1
       46 MUL                              R7 R2 R8
       47 GETTABLEKS                       R8 R0 K17 ["_handles"]
       49 GETTABLEKS                       R8 R8 K18 ["Spot"]
       51 GETTABLEKS                       R9 R0 K17 ["_handles"]
       53 GETTABLEKS                       R9 R9 K19 ["Left"]
       55 GETTABLEKS                       R10 R0 K17 ["_handles"]
       57 GETTABLEKS                       R10 R10 K20 ["Right"]
       59 GETTABLEKS                       R11 R0 K17 ["_handles"]
       61 GETTABLEKS                       R11 R11 K21 ["Top"]
       63 GETTABLEKS                       R12 R0 K17 ["_handles"]
       65 GETTABLEKS                       R12 R12 K22 ["Bottom"]
       67 GETTABLEKS                       R13 R0 K17 ["_handles"]
       69 GETTABLEKS                       R13 R13 K23 ["Center"]
       71 GETTABLEKS                       R14 R0 K24 ["_adornee"]
       73 SETTABLEKS                       R14 R8 K25 ["Adornee"]
       75 SETTABLEKS                       R6 R8 K26 ["Radius"]
       77 GETUPVAL                         R15 0
       78 SUB                              R14 R6 R15
       79 SETTABLEKS                       R14 R8 K27 ["InnerRadius"]
       81 SETTABLEKS                       R1 R8 K28 ["Visible"]
       83 SETTABLEKS                       R5 R8 K29 ["Color3"]
       85 SETTABLEKS                       R2 R9 K30 ["Height"]
       87 GETTABLEKS                       R14 R0 K24 ["_adornee"]
       89 SETTABLEKS                       R14 R9 K25 ["Adornee"]
       91 SETTABLEKS                       R1 R9 K28 ["Visible"]
       93 SETTABLEKS                       R5 R9 K29 ["Color3"]
       95 SETTABLEKS                       R2 R10 K30 ["Height"]
       97 GETTABLEKS                       R14 R0 K24 ["_adornee"]
       99 SETTABLEKS                       R14 R10 K25 ["Adornee"]
      101 SETTABLEKS                       R1 R10 K28 ["Visible"]
      103 SETTABLEKS                       R5 R10 K29 ["Color3"]
      105 SETTABLEKS                       R2 R11 K30 ["Height"]
      107 GETTABLEKS                       R14 R0 K24 ["_adornee"]
      109 SETTABLEKS                       R14 R11 K25 ["Adornee"]
      111 SETTABLEKS                       R1 R11 K28 ["Visible"]
      113 SETTABLEKS                       R5 R11 K29 ["Color3"]
      115 SETTABLEKS                       R2 R12 K30 ["Height"]
      117 GETTABLEKS                       R14 R0 K24 ["_adornee"]
      119 SETTABLEKS                       R14 R12 K25 ["Adornee"]
      121 SETTABLEKS                       R1 R12 K28 ["Visible"]
      123 SETTABLEKS                       R5 R12 K29 ["Color3"]
      125 SETTABLEKS                       R2 R13 K30 ["Height"]
      127 GETTABLEKS                       R14 R0 K24 ["_adornee"]
      129 SETTABLEKS                       R14 R13 K25 ["Adornee"]
      131 SETTABLEKS                       R1 R13 K28 ["Visible"]
      133 SETTABLEKS                       R5 R13 K29 ["Color3"]
      135 GETUPVAL                         R17 1
      136 GETTABLEKS                       R18 R0 K4 ["_light"]
      138 GETTABLEKS                       R18 R18 K31 ["Face"]
      140 GETTABLE                         R16 R17 R18
      141 MOVE                             R17 R6
      142 MOVE                             R18 R2
      143 MOVE                             R19 R7
      144 MOVE                             R20 R4
      145 NAMECALL                         R14 R0 K32 ["_setCFrameValues"]
      147 CALL                             R14 6 0
      148 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_handlesFolder"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["Wireframe already pooled"]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R2 R0 K4 ["_light"]
       10 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       12 LOADK                            R3 K1 ["Wireframe already pooled"]
       13 GETIMPORT                        R1 K3 [assert]
       15 CALL                             R1 2 0
       16 GETTABLEKS                       R1 R0 K0 ["_handlesFolder"]
       18 LOADK                            R2 K5 ["pooled"]
       19 SETTABLEKS                       R2 R1 K6 ["Name"]
       21 GETTABLEKS                       R1 R0 K0 ["_handlesFolder"]
       23 LOADNIL                          R2
       24 SETTABLEKS                       R2 R1 K7 ["Parent"]
       26 LOADNIL                          R1
       27 SETTABLEKS                       R1 R0 K4 ["_light"]
       29 NAMECALL                         R1 R0 K8 ["_removeListeners"]
       31 CALL                             R1 1 0
       32 RETURN                           R0 1

PROTO_3:
        0 FASTCALL2K                       ASSERT R1 K0 ; [+5]
        2 MOVE                             R3 R1
        3 LOADK                            R4 K0 ["Can't adorn nil"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETTABLEKS                       R4 R0 K3 ["_light"]
        9 NOT                              R3 R4
       10 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       12 LOADK                            R4 K4 ["Wireframe already adorned"]
       13 GETIMPORT                        R2 K2 [assert]
       15 CALL                             R2 2 0
       16 SETTABLEKS                       R1 R0 K3 ["_light"]
       18 GETTABLEKS                       R2 R0 K5 ["_handlesFolder"]
       20 GETTABLEKS                       R3 R1 K6 ["name"]
       22 SETTABLEKS                       R3 R2 K7 ["Name"]
       24 GETTABLEKS                       R2 R0 K5 ["_handlesFolder"]
       26 GETTABLEKS                       R3 R0 K8 ["_guidesFolder"]
       28 SETTABLEKS                       R3 R2 K9 ["Parent"]
       30 GETTABLEKS                       R2 R1 K9 ["Parent"]
       32 JUMPIFNOT                        R2 ; [+23]
       33 LOADK                            R5 K10 ["Attachment"]
       34 NAMECALL                         R3 R2 K11 ["IsA"]
       36 CALL                             R3 2 1
       37 JUMPIFNOT                        R3 ; [+18]
       38 GETUPVAL                         R4 0
       39 CALL                             R4 0 1
       40 JUMPIFNOT                        R4 ; [+4]
       41 GETUPVAL                         R3 1
       42 MOVE                             R4 R2
       43 CALL                             R3 1 1
       44 JUMP                             ; [+2]
       45 GETTABLEKS                       R3 R2 K9 ["Parent"]
       47 SETTABLEKS                       R3 R0 K12 ["_adornee"]
       49 GETTABLEKS                       R3 R2 K13 ["CFrame"]
       51 SETTABLEKS                       R3 R0 K14 ["_offset"]
       53 SETTABLEKS                       R2 R0 K15 ["_parent"]
       55 JUMP                             ; [+4]
       56 SETTABLEKS                       R2 R0 K12 ["_adornee"]
       58 SETTABLEKS                       R2 R0 K15 ["_parent"]
       60 NAMECALL                         R3 R0 K16 ["_setListeners"]
       62 CALL                             R3 1 0
       63 RETURN                           R0 1

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["_removeHandles"]
        2 CALL                             R1 1 0
        3 NAMECALL                         R1 R0 K1 ["_removeListeners"]
        5 CALL                             R1 1 0
        6 GETTABLEKS                       R1 R0 K2 ["_handlesFolder"]
        8 NAMECALL                         R1 R1 K3 ["Destroy"]
       10 CALL                             R1 1 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K2 ["_handlesFolder"]
       14 RETURN                           R0 0

PROTO_5:
        0 SETTABLEKS                       R1 R0 K0 ["_guidesFolder"]
        2 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_light"]
        2 GETTABLEKS                       R1 R1 K1 ["Parent"]
        4 GETIMPORT                        R2 K4 [CFrame.new]
        6 FASTCALL                         VECTOR ; [+2]
        7 GETIMPORT                        R3 K6 [Vector3.new]
        9 CALL                             R3 0 1
       10 CALL                             R2 1 1
       11 JUMPIF                           R1 ; [+2]
       12 LOADB                            R3 0
       13 RETURN                           R3 1
       14 FASTCALL2K                       ASSERT R1 K7 ; [+5]
       16 MOVE                             R4 R1
       17 LOADK                            R5 K7 ["Cone Wireframe should have valid Adornee."]
       18 GETIMPORT                        R3 K9 [assert]
       20 CALL                             R3 2 0
       21 LOADK                            R5 K10 ["Attachment"]
       22 NAMECALL                         R3 R1 K11 ["IsA"]
       24 CALL                             R3 2 1
       25 JUMPIFNOT                        R3 ; [+51]
       26 GETTABLEKS                       R3 R0 K0 ["_light"]
       28 GETTABLEKS                       R3 R3 K1 ["Parent"]
       30 GETTABLEKS                       R1 R3 K1 ["Parent"]
       32 GETTABLEKS                       R3 R0 K0 ["_light"]
       34 GETTABLEKS                       R3 R3 K1 ["Parent"]
       36 GETTABLEKS                       R2 R3 K2 ["CFrame"]
       38 GETUPVAL                         R3 0
       39 CALL                             R3 0 1
       40 JUMPIFNOT                        R3 ; [+25]
       41 JUMPIFEQKNIL                     R1 ; [+18]
       43 LOADK                            R5 K12 ["PVInstance"]
       44 NAMECALL                         R3 R1 K11 ["IsA"]
       46 CALL                             R3 2 1
       47 JUMPIFNOT                        R3 ; [+1]
       48 JUMP                             ; [+11]
       49 LOADK                            R5 K10 ["Attachment"]
       50 NAMECALL                         R3 R1 K11 ["IsA"]
       52 CALL                             R3 2 1
       53 JUMPIFNOT                        R3 ; [+3]
       54 GETTABLEKS                       R3 R1 K2 ["CFrame"]
       56 MUL                              R2 R3 R2
       57 GETTABLEKS                       R1 R1 K1 ["Parent"]
       59 JUMPBACK                         ; [-19]
       60 JUMPIF                           R1 ; [+16]
       61 GETIMPORT                        R3 K14 [workspace]
       63 GETTABLEKS                       R1 R3 K15 ["Terrain"]
       65 JUMP                             ; [+11]
       66 LOADK                            R5 K10 ["Attachment"]
       67 NAMECALL                         R3 R1 K11 ["IsA"]
       69 CALL                             R3 2 1
       70 JUMPIFNOT                        R3 ; [+6]
       71 GETTABLEKS                       R3 R1 K2 ["CFrame"]
       73 MUL                              R2 R3 R2
       74 GETTABLEKS                       R1 R1 K1 ["Parent"]
       76 JUMPBACK                         ; [-11]
       77 GETUPVAL                         R3 0
       78 CALL                             R3 0 1
       79 JUMPIFNOT                        R3 ; [+16]
       80 LOADK                            R5 K10 ["Attachment"]
       81 NAMECALL                         R3 R1 K11 ["IsA"]
       83 CALL                             R3 2 1
       84 JUMPIF                           R3 ; [+26]
       85 LOADK                            R5 K12 ["PVInstance"]
       86 NAMECALL                         R3 R1 K11 ["IsA"]
       88 CALL                             R3 2 1
       89 JUMPIF                           R3 ; [+21]
       90 NAMECALL                         R3 R0 K16 ["_removeHandles"]
       92 CALL                             R3 1 0
       93 LOADB                            R3 0
       94 RETURN                           R3 1
       95 JUMP                             ; [+15]
       96 LOADK                            R5 K10 ["Attachment"]
       97 NAMECALL                         R3 R1 K11 ["IsA"]
       99 CALL                             R3 2 1
      100 JUMPIF                           R3 ; [+10]
      101 LOADK                            R5 K17 ["BasePart"]
      102 NAMECALL                         R3 R1 K11 ["IsA"]
      104 CALL                             R3 2 1
      105 JUMPIF                           R3 ; [+5]
      106 NAMECALL                         R3 R0 K16 ["_removeHandles"]
      108 CALL                             R3 1 0
      109 LOADB                            R3 0
      110 RETURN                           R3 1
      111 SETTABLEKS                       R1 R0 K18 ["_adornee"]
      113 SETTABLEKS                       R2 R0 K19 ["_offset"]
      115 GETTABLEKS                       R3 R0 K0 ["_light"]
      117 GETTABLEKS                       R3 R3 K1 ["Parent"]
      119 SETTABLEKS                       R3 R0 K20 ["_parent"]
      121 LOADB                            R3 1
      122 RETURN                           R3 1

PROTO_7:
        0 GETTABLEKS                       R6 R0 K0 ["_handles"]
        2 JUMPIFNOT                        R6 ; [+128]
        3 DIVK                             R6 R2 K1 [2]
        4 DIVK                             R7 R4 K1 [2]
        5 DIVK                             R8 R3 K1 [2]
        6 DIVK                             R9 R5 K1 [2]
        7 GETTABLEKS                       R10 R0 K0 ["_handles"]
        9 GETTABLEKS                       R10 R10 K2 ["Spot"]
       11 GETTABLEKS                       R12 R0 K3 ["_offset"]
       13 GETIMPORT                        R14 K6 [CFrame.new]
       15 LOADN                            R15 0
       16 LOADN                            R16 0
       17 MOVE                             R17 R4
       18 CALL                             R14 3 1
       19 MUL                              R13 R1 R14
       20 MUL                              R11 R12 R13
       21 SETTABLEKS                       R11 R10 K4 ["CFrame"]
       23 GETTABLEKS                       R10 R0 K0 ["_handles"]
       25 GETTABLEKS                       R10 R10 K7 ["Left"]
       27 GETTABLEKS                       R12 R0 K3 ["_offset"]
       29 GETIMPORT                        R15 K6 [CFrame.new]
       31 MOVE                             R16 R6
       32 LOADN                            R17 0
       33 MOVE                             R18 R7
       34 CALL                             R15 3 1
       35 MUL                              R14 R1 R15
       36 GETIMPORT                        R15 K9 [CFrame.Angles]
       38 LOADN                            R16 0
       39 MOVE                             R17 R9
       40 LOADN                            R18 0
       41 CALL                             R15 3 1
       42 MUL                              R13 R14 R15
       43 MUL                              R11 R12 R13
       44 SETTABLEKS                       R11 R10 K4 ["CFrame"]
       46 GETTABLEKS                       R10 R0 K0 ["_handles"]
       48 GETTABLEKS                       R10 R10 K10 ["Right"]
       50 GETTABLEKS                       R12 R0 K3 ["_offset"]
       52 GETIMPORT                        R15 K6 [CFrame.new]
       54 MINUS                            R16 R6
       55 LOADN                            R17 0
       56 MOVE                             R18 R7
       57 CALL                             R15 3 1
       58 MUL                              R14 R1 R15
       59 GETIMPORT                        R15 K9 [CFrame.Angles]
       61 LOADN                            R16 0
       62 MINUS                            R17 R9
       63 LOADN                            R18 0
       64 CALL                             R15 3 1
       65 MUL                              R13 R14 R15
       66 MUL                              R11 R12 R13
       67 SETTABLEKS                       R11 R10 K4 ["CFrame"]
       69 GETTABLEKS                       R10 R0 K0 ["_handles"]
       71 GETTABLEKS                       R10 R10 K11 ["Top"]
       73 GETTABLEKS                       R12 R0 K3 ["_offset"]
       75 GETIMPORT                        R15 K6 [CFrame.new]
       77 LOADN                            R16 0
       78 MOVE                             R17 R6
       79 MOVE                             R18 R7
       80 CALL                             R15 3 1
       81 MUL                              R14 R1 R15
       82 GETIMPORT                        R15 K9 [CFrame.Angles]
       84 MINUS                            R16 R9
       85 LOADN                            R17 0
       86 LOADN                            R18 0
       87 CALL                             R15 3 1
       88 MUL                              R13 R14 R15
       89 MUL                              R11 R12 R13
       90 SETTABLEKS                       R11 R10 K4 ["CFrame"]
       92 GETTABLEKS                       R10 R0 K0 ["_handles"]
       94 GETTABLEKS                       R10 R10 K12 ["Bottom"]
       96 GETTABLEKS                       R12 R0 K3 ["_offset"]
       98 GETIMPORT                        R15 K6 [CFrame.new]
      100 LOADN                            R16 0
      101 MINUS                            R17 R6
      102 MOVE                             R18 R7
      103 CALL                             R15 3 1
      104 MUL                              R14 R1 R15
      105 GETIMPORT                        R15 K9 [CFrame.Angles]
      107 MOVE                             R16 R9
      108 LOADN                            R17 0
      109 LOADN                            R18 0
      110 CALL                             R15 3 1
      111 MUL                              R13 R14 R15
      112 MUL                              R11 R12 R13
      113 SETTABLEKS                       R11 R10 K4 ["CFrame"]
      115 GETTABLEKS                       R10 R0 K0 ["_handles"]
      117 GETTABLEKS                       R10 R10 K13 ["Center"]
      119 GETTABLEKS                       R12 R0 K3 ["_offset"]
      121 GETIMPORT                        R14 K6 [CFrame.new]
      123 LOADN                            R15 0
      124 LOADN                            R16 0
      125 MOVE                             R17 R8
      126 CALL                             R14 3 1
      127 MUL                              R13 R1 R14
      128 MUL                              R11 R12 R13
      129 SETTABLEKS                       R11 R10 K4 ["CFrame"]
      131 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["CylinderHandleAdornment"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K4 ["Transparency"]
        7 GETUPVAL                         R2 1
        8 SETTABLEKS                       R2 R1 K5 ["Height"]
       10 GETUPVAL                         R2 0
       11 SETTABLEKS                       R2 R1 K4 ["Transparency"]
       13 GETTABLEKS                       R2 R0 K6 ["_handlesFolder"]
       15 SETTABLEKS                       R2 R1 K7 ["Parent"]
       17 GETIMPORT                        R2 K2 [Instance.new]
       19 LOADK                            R3 K3 ["CylinderHandleAdornment"]
       20 CALL                             R2 1 1
       21 GETUPVAL                         R4 1
       22 DIVK                             R3 R4 K8 [2]
       23 SETTABLEKS                       R3 R2 K9 ["Radius"]
       25 GETUPVAL                         R3 0
       26 SETTABLEKS                       R3 R2 K4 ["Transparency"]
       28 GETTABLEKS                       R3 R0 K6 ["_handlesFolder"]
       30 SETTABLEKS                       R3 R2 K7 ["Parent"]
       32 GETIMPORT                        R3 K2 [Instance.new]
       34 LOADK                            R4 K3 ["CylinderHandleAdornment"]
       35 CALL                             R3 1 1
       36 GETUPVAL                         R5 1
       37 DIVK                             R4 R5 K8 [2]
       38 SETTABLEKS                       R4 R3 K9 ["Radius"]
       40 GETUPVAL                         R4 0
       41 SETTABLEKS                       R4 R3 K4 ["Transparency"]
       43 GETTABLEKS                       R4 R0 K6 ["_handlesFolder"]
       45 SETTABLEKS                       R4 R3 K7 ["Parent"]
       47 GETIMPORT                        R4 K2 [Instance.new]
       49 LOADK                            R5 K3 ["CylinderHandleAdornment"]
       50 CALL                             R4 1 1
       51 GETUPVAL                         R6 1
       52 DIVK                             R5 R6 K8 [2]
       53 SETTABLEKS                       R5 R4 K9 ["Radius"]
       55 GETUPVAL                         R5 0
       56 SETTABLEKS                       R5 R4 K4 ["Transparency"]
       58 GETTABLEKS                       R5 R0 K6 ["_handlesFolder"]
       60 SETTABLEKS                       R5 R4 K7 ["Parent"]
       62 GETIMPORT                        R5 K2 [Instance.new]
       64 LOADK                            R6 K3 ["CylinderHandleAdornment"]
       65 CALL                             R5 1 1
       66 GETUPVAL                         R7 1
       67 DIVK                             R6 R7 K8 [2]
       68 SETTABLEKS                       R6 R5 K9 ["Radius"]
       70 GETUPVAL                         R6 0
       71 SETTABLEKS                       R6 R5 K4 ["Transparency"]
       73 GETTABLEKS                       R6 R0 K6 ["_handlesFolder"]
       75 SETTABLEKS                       R6 R5 K7 ["Parent"]
       77 GETIMPORT                        R6 K2 [Instance.new]
       79 LOADK                            R7 K3 ["CylinderHandleAdornment"]
       80 CALL                             R6 1 1
       81 GETUPVAL                         R8 1
       82 DIVK                             R7 R8 K8 [2]
       83 SETTABLEKS                       R7 R6 K9 ["Radius"]
       85 GETUPVAL                         R7 0
       86 SETTABLEKS                       R7 R6 K4 ["Transparency"]
       88 GETTABLEKS                       R7 R0 K6 ["_handlesFolder"]
       90 SETTABLEKS                       R7 R6 K7 ["Parent"]
       92 GETTABLEKS                       R7 R0 K10 ["_handles"]
       94 SETTABLEKS                       R1 R7 K11 ["Spot"]
       96 GETTABLEKS                       R7 R0 K10 ["_handles"]
       98 SETTABLEKS                       R2 R7 K12 ["Left"]
      100 GETTABLEKS                       R7 R0 K10 ["_handles"]
      102 SETTABLEKS                       R3 R7 K13 ["Right"]
      104 GETTABLEKS                       R7 R0 K10 ["_handles"]
      106 SETTABLEKS                       R4 R7 K14 ["Top"]
      108 GETTABLEKS                       R7 R0 K10 ["_handles"]
      110 SETTABLEKS                       R5 R7 K15 ["Bottom"]
      112 GETTABLEKS                       R7 R0 K10 ["_handles"]
      114 SETTABLEKS                       R6 R7 K16 ["Center"]
      116 LOADB                            R7 1
      117 SETTABLEKS                       R7 R0 K17 ["_handlesPresent"]
      119 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_handles"]
        2 JUMPIFNOT                        R1 ; [+48]
        3 GETTABLEKS                       R1 R0 K1 ["_handlesPresent"]
        5 JUMPIFNOT                        R1 ; [+45]
        6 GETTABLEKS                       R1 R0 K0 ["_handles"]
        8 GETTABLEKS                       R1 R1 K2 ["Spot"]
       10 NAMECALL                         R1 R1 K3 ["Destroy"]
       12 CALL                             R1 1 0
       13 GETTABLEKS                       R1 R0 K0 ["_handles"]
       15 GETTABLEKS                       R1 R1 K4 ["Left"]
       17 NAMECALL                         R1 R1 K3 ["Destroy"]
       19 CALL                             R1 1 0
       20 GETTABLEKS                       R1 R0 K0 ["_handles"]
       22 GETTABLEKS                       R1 R1 K5 ["Right"]
       24 NAMECALL                         R1 R1 K3 ["Destroy"]
       26 CALL                             R1 1 0
       27 GETTABLEKS                       R1 R0 K0 ["_handles"]
       29 GETTABLEKS                       R1 R1 K6 ["Top"]
       31 NAMECALL                         R1 R1 K3 ["Destroy"]
       33 CALL                             R1 1 0
       34 GETTABLEKS                       R1 R0 K0 ["_handles"]
       36 GETTABLEKS                       R1 R1 K7 ["Bottom"]
       38 NAMECALL                         R1 R1 K3 ["Destroy"]
       40 CALL                             R1 1 0
       41 GETTABLEKS                       R1 R0 K0 ["_handles"]
       43 GETTABLEKS                       R1 R1 K8 ["Center"]
       45 NAMECALL                         R1 R1 K3 ["Destroy"]
       47 CALL                             R1 1 0
       48 LOADB                            R1 0
       49 SETTABLEKS                       R1 R0 K1 ["_handlesPresent"]
       51 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["render"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["render"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_removeListeners"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["_setListeners"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 0
        9 NAMECALL                         R0 R0 K2 ["render"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["_listener"]
        2 JUMPIF                           R1 ; [+11]
        3 GETTABLEKS                       R1 R0 K1 ["_light"]
        5 GETTABLEKS                       R1 R1 K2 ["Changed"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 NAMECALL                         R1 R1 K3 ["Connect"]
       11 CALL                             R1 2 1
       12 SETTABLEKS                       R1 R0 K0 ["_listener"]
       14 GETTABLEKS                       R1 R0 K4 ["_attachmentListeners"]
       16 JUMPIF                           R1 ; [+51]
       17 GETTABLEKS                       R1 R0 K5 ["_parent"]
       19 LOADK                            R3 K6 ["Attachment"]
       20 NAMECALL                         R1 R1 K7 ["IsA"]
       22 CALL                             R1 2 1
       23 JUMPIFNOT                        R1 ; [+44]
       24 NEWTABLE                         R1 0 0
       26 SETTABLEKS                       R1 R0 K4 ["_attachmentListeners"]
       28 GETTABLEKS                       R1 R0 K5 ["_parent"]
       30 LOADK                            R4 K6 ["Attachment"]
       31 NAMECALL                         R2 R1 K7 ["IsA"]
       33 CALL                             R2 2 1
       34 JUMPIFNOT                        R2 ; [+33]
       35 GETTABLEKS                       R3 R0 K4 ["_attachmentListeners"]
       37 LOADK                            R6 K8 ["CFrame"]
       38 NAMECALL                         R4 R1 K9 ["GetPropertyChangedSignal"]
       40 CALL                             R4 2 1
       41 NEWCLOSURE                       R6 P1
       42 CAPTURE                          VAL R0
       43 NAMECALL                         R4 R4 K3 ["Connect"]
       45 CALL                             R4 2 -1
       46 FASTCALL                         TABLE_INSERT ; [+2]
       47 GETIMPORT                        R2 K12 [table.insert]
       49 CALL                             R2 -1 0
       50 GETTABLEKS                       R3 R0 K4 ["_attachmentListeners"]
       52 LOADK                            R6 K13 ["Parent"]
       53 NAMECALL                         R4 R1 K9 ["GetPropertyChangedSignal"]
       55 CALL                             R4 2 1
       56 NEWCLOSURE                       R6 P2
       57 CAPTURE                          VAL R0
       58 NAMECALL                         R4 R4 K3 ["Connect"]
       60 CALL                             R4 2 -1
       61 FASTCALL                         TABLE_INSERT ; [+2]
       62 GETIMPORT                        R2 K12 [table.insert]
       64 CALL                             R2 -1 0
       65 GETTABLEKS                       R1 R1 K13 ["Parent"]
       67 JUMPBACK                         ; [-38]
       68 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["_listener"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_listener"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_listener"]
       11 GETTABLEKS                       R1 R0 K2 ["_attachmentListeners"]
       13 JUMPIFNOT                        R1 ; [+13]
       14 GETTABLEKS                       R1 R0 K2 ["_attachmentListeners"]
       16 LOADNIL                          R2
       17 LOADNIL                          R3
       18 FORGPREP                         R1
       19 NAMECALL                         R6 R5 K1 ["Disconnect"]
       21 CALL                             R6 1 0
       22 FORGLOOP                         R1 2 ; [-4]
       24 LOADNIL                          R1
       25 SETTABLEKS                       R1 R0 K2 ["_attachmentListeners"]
       27 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R0 K5 ["Src"]
       18 GETTABLEKS                       R2 R2 K7 ["Utility"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R2 K8 ["Constants"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K4 [require]
       27 GETTABLEKS                       R5 R2 K9 ["supportDetachedAttachments"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K4 [require]
       32 GETTABLEKS                       R6 R2 K10 ["findPVAncestor"]
       34 CALL                             R5 1 1
       35 NEWTABLE                         R6 8 0
       37 GETIMPORT                        R7 K14 [Enum.NormalId.Back]
       39 GETIMPORT                        R8 K17 [CFrame.fromMatrix]
       41 FASTCALL                         VECTOR ; [+2]
       42 GETIMPORT                        R9 K20 [Vector3.new]
       44 CALL                             R9 0 1
       45 LOADK                            R10 K21 [{1, 0, 0}]
       46 LOADK                            R11 K22 [{0, 1, 0}]
       47 LOADK                            R12 K23 [{0, 0, 1}]
       48 CALL                             R8 4 1
       49 SETTABLE                         R8 R6 R7
       50 GETIMPORT                        R7 K25 [Enum.NormalId.Front]
       52 GETIMPORT                        R8 K17 [CFrame.fromMatrix]
       54 FASTCALL                         VECTOR ; [+2]
       55 GETIMPORT                        R9 K20 [Vector3.new]
       57 CALL                             R9 0 1
       58 LOADK                            R10 K26 [{-1, 0, 0}]
       59 LOADK                            R11 K22 [{0, 1, 0}]
       60 LOADK                            R12 K27 [{0, 0, -1}]
       61 CALL                             R8 4 1
       62 SETTABLE                         R8 R6 R7
       63 GETIMPORT                        R7 K29 [Enum.NormalId.Right]
       65 GETIMPORT                        R8 K17 [CFrame.fromMatrix]
       67 FASTCALL                         VECTOR ; [+2]
       68 GETIMPORT                        R9 K20 [Vector3.new]
       70 CALL                             R9 0 1
       71 LOADK                            R10 K27 [{0, 0, -1}]
       72 LOADK                            R11 K22 [{0, 1, 0}]
       73 LOADK                            R12 K21 [{1, 0, 0}]
       74 CALL                             R8 4 1
       75 SETTABLE                         R8 R6 R7
       76 GETIMPORT                        R7 K31 [Enum.NormalId.Left]
       78 GETIMPORT                        R8 K17 [CFrame.fromMatrix]
       80 FASTCALL                         VECTOR ; [+2]
       81 GETIMPORT                        R9 K20 [Vector3.new]
       83 CALL                             R9 0 1
       84 LOADK                            R10 K23 [{0, 0, 1}]
       85 LOADK                            R11 K22 [{0, 1, 0}]
       86 LOADK                            R12 K26 [{-1, 0, 0}]
       87 CALL                             R8 4 1
       88 SETTABLE                         R8 R6 R7
       89 GETIMPORT                        R7 K33 [Enum.NormalId.Bottom]
       91 GETIMPORT                        R8 K17 [CFrame.fromMatrix]
       93 FASTCALL                         VECTOR ; [+2]
       94 GETIMPORT                        R9 K20 [Vector3.new]
       96 CALL                             R9 0 1
       97 LOADK                            R10 K21 [{1, 0, 0}]
       98 LOADK                            R11 K23 [{0, 0, 1}]
       99 LOADK                            R12 K34 [{0, -1, 0}]
      100 CALL                             R8 4 1
      101 SETTABLE                         R8 R6 R7
      102 GETIMPORT                        R7 K36 [Enum.NormalId.Top]
      104 GETIMPORT                        R8 K17 [CFrame.fromMatrix]
      106 FASTCALL                         VECTOR ; [+2]
      107 GETIMPORT                        R9 K20 [Vector3.new]
      109 CALL                             R9 0 1
      110 LOADK                            R10 K21 [{1, 0, 0}]
      111 LOADK                            R11 K27 [{0, 0, -1}]
      112 LOADK                            R12 K22 [{0, 1, 0}]
      113 CALL                             R8 4 1
      114 SETTABLE                         R8 R6 R7
      115 GETTABLEKS                       R7 R3 K37 ["THICKNESS"]
      117 GETTABLEKS                       R8 R3 K38 ["TRANSPARENCY"]
      119 NEWTABLE                         R9 16 0
      121 SETTABLEKS                       R9 R9 K39 ["__index"]
      123 DUPCLOSURE                       R10 K40 [PROTO_0]
      124 CAPTURE                          VAL R9
      125 SETTABLEKS                       R10 R9 K19 ["new"]
      127 DUPCLOSURE                       R10 K41 [PROTO_1]
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R6
      130 SETTABLEKS                       R10 R9 K42 ["render"]
      132 DUPCLOSURE                       R10 K43 [PROTO_2]
      133 SETTABLEKS                       R10 R9 K44 ["pool"]
      135 DUPCLOSURE                       R10 K45 [PROTO_3]
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R5
      138 SETTABLEKS                       R10 R9 K46 ["adorn"]
      140 DUPCLOSURE                       R10 K47 [PROTO_4]
      141 SETTABLEKS                       R10 R9 K48 ["destroy"]
      143 DUPCLOSURE                       R10 K49 [PROTO_5]
      144 SETTABLEKS                       R10 R9 K50 ["setGuidesFolder"]
      146 DUPCLOSURE                       R10 K51 [PROTO_6]
      147 CAPTURE                          VAL R4
      148 SETTABLEKS                       R10 R9 K52 ["_setAncestry"]
      150 DUPCLOSURE                       R10 K53 [PROTO_7]
      151 SETTABLEKS                       R10 R9 K54 ["_setCFrameValues"]
      153 DUPCLOSURE                       R10 K55 [PROTO_8]
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R7
      156 SETTABLEKS                       R10 R9 K56 ["_setHandles"]
      158 DUPCLOSURE                       R10 K57 [PROTO_9]
      159 SETTABLEKS                       R10 R9 K58 ["_removeHandles"]
      161 DUPCLOSURE                       R10 K59 [PROTO_13]
      162 SETTABLEKS                       R10 R9 K60 ["_setListeners"]
      164 DUPCLOSURE                       R10 K61 [PROTO_14]
      165 SETTABLEKS                       R10 R9 K62 ["_removeListeners"]
      167 RETURN                           R9 1
