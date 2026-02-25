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
       14 GETTABLEKS                       R2 R0 K4 ["_light"]
       16 GETTABLEKS                       R1 R2 K5 ["Enabled"]
       18 GETTABLEKS                       R3 R0 K4 ["_light"]
       20 GETTABLEKS                       R2 R3 K6 ["Color"]
       22 GETTABLEKS                       R4 R0 K4 ["_light"]
       24 GETTABLEKS                       R3 R4 K7 ["Range"]
       26 GETTABLEKS                       R5 R0 K8 ["_handles"]
       28 GETTABLEKS                       R4 R5 K9 ["AxisAdornmentX"]
       30 GETTABLEKS                       R6 R0 K8 ["_handles"]
       32 GETTABLEKS                       R5 R6 K10 ["AxisAdornmentY"]
       34 GETTABLEKS                       R7 R0 K8 ["_handles"]
       36 GETTABLEKS                       R6 R7 K11 ["AxisAdornmentZ"]
       38 SETTABLEKS                       R3 R4 K12 ["Radius"]
       40 GETUPVAL                         R8 0
       41 SUB                              R7 R3 R8
       42 SETTABLEKS                       R7 R4 K13 ["InnerRadius"]
       44 GETTABLEKS                       R7 R0 K14 ["_adornee"]
       46 SETTABLEKS                       R7 R4 K15 ["Adornee"]
       48 SETTABLEKS                       R1 R4 K16 ["Visible"]
       50 SETTABLEKS                       R2 R4 K17 ["Color3"]
       52 GETTABLEKS                       R8 R0 K18 ["_offset"]
       54 GETIMPORT                        R9 K21 [CFrame.Angles]
       56 LOADN                            R10 0
       57 LOADK                            R11 K22 [1.5707963267949]
       58 LOADN                            R12 0
       59 CALL                             R9 3 1
       60 MUL                              R7 R8 R9
       61 SETTABLEKS                       R7 R4 K19 ["CFrame"]
       63 SETTABLEKS                       R3 R5 K12 ["Radius"]
       65 GETUPVAL                         R8 0
       66 SUB                              R7 R3 R8
       67 SETTABLEKS                       R7 R5 K13 ["InnerRadius"]
       69 GETTABLEKS                       R7 R0 K14 ["_adornee"]
       71 SETTABLEKS                       R7 R5 K15 ["Adornee"]
       73 SETTABLEKS                       R1 R5 K16 ["Visible"]
       75 SETTABLEKS                       R2 R5 K17 ["Color3"]
       77 GETTABLEKS                       R8 R0 K18 ["_offset"]
       79 GETIMPORT                        R9 K21 [CFrame.Angles]
       81 LOADK                            R10 K22 [1.5707963267949]
       82 LOADN                            R11 0
       83 LOADN                            R12 0
       84 CALL                             R9 3 1
       85 MUL                              R7 R8 R9
       86 SETTABLEKS                       R7 R5 K19 ["CFrame"]
       88 SETTABLEKS                       R3 R6 K12 ["Radius"]
       90 GETUPVAL                         R8 0
       91 SUB                              R7 R3 R8
       92 SETTABLEKS                       R7 R6 K13 ["InnerRadius"]
       94 GETTABLEKS                       R7 R0 K14 ["_adornee"]
       96 SETTABLEKS                       R7 R6 K15 ["Adornee"]
       98 SETTABLEKS                       R1 R6 K16 ["Visible"]
      100 SETTABLEKS                       R2 R6 K17 ["Color3"]
      102 GETTABLEKS                       R7 R0 K18 ["_offset"]
      104 SETTABLEKS                       R7 R6 K19 ["CFrame"]
      106 RETURN                           R0 0

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
        0 GETTABLEKS                       R2 R0 K0 ["_light"]
        2 GETTABLEKS                       R1 R2 K1 ["Parent"]
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
       17 LOADK                            R5 K7 ["Sphere Wireframe should have valid Adornee."]
       18 GETIMPORT                        R3 K9 [assert]
       20 CALL                             R3 2 0
       21 LOADK                            R5 K10 ["Attachment"]
       22 NAMECALL                         R3 R1 K11 ["IsA"]
       24 CALL                             R3 2 1
       25 JUMPIFNOT                        R3 ; [+51]
       26 GETTABLEKS                       R4 R0 K0 ["_light"]
       28 GETTABLEKS                       R3 R4 K1 ["Parent"]
       30 GETTABLEKS                       R1 R3 K1 ["Parent"]
       32 GETTABLEKS                       R4 R0 K0 ["_light"]
       34 GETTABLEKS                       R3 R4 K1 ["Parent"]
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
      115 GETTABLEKS                       R4 R0 K0 ["_light"]
      117 GETTABLEKS                       R3 R4 K1 ["Parent"]
      119 SETTABLEKS                       R3 R0 K20 ["_parent"]
      121 LOADB                            R3 1
      122 RETURN                           R3 1

PROTO_7:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["CylinderHandleAdornment"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K4 ["Height"]
        7 GETUPVAL                         R2 1
        8 SETTABLEKS                       R2 R1 K5 ["Transparency"]
       10 GETTABLEKS                       R2 R0 K6 ["_handlesFolder"]
       12 SETTABLEKS                       R2 R1 K7 ["Parent"]
       14 GETIMPORT                        R2 K2 [Instance.new]
       16 LOADK                            R3 K3 ["CylinderHandleAdornment"]
       17 CALL                             R2 1 1
       18 GETUPVAL                         R3 0
       19 SETTABLEKS                       R3 R2 K4 ["Height"]
       21 GETUPVAL                         R3 1
       22 SETTABLEKS                       R3 R2 K5 ["Transparency"]
       24 GETTABLEKS                       R3 R0 K6 ["_handlesFolder"]
       26 SETTABLEKS                       R3 R2 K7 ["Parent"]
       28 GETIMPORT                        R3 K2 [Instance.new]
       30 LOADK                            R4 K3 ["CylinderHandleAdornment"]
       31 CALL                             R3 1 1
       32 GETUPVAL                         R4 0
       33 SETTABLEKS                       R4 R3 K4 ["Height"]
       35 GETUPVAL                         R4 1
       36 SETTABLEKS                       R4 R3 K5 ["Transparency"]
       38 GETTABLEKS                       R4 R0 K6 ["_handlesFolder"]
       40 SETTABLEKS                       R4 R3 K7 ["Parent"]
       42 GETTABLEKS                       R4 R0 K8 ["_handles"]
       44 SETTABLEKS                       R1 R4 K9 ["AxisAdornmentX"]
       46 GETTABLEKS                       R4 R0 K8 ["_handles"]
       48 SETTABLEKS                       R2 R4 K10 ["AxisAdornmentY"]
       50 GETTABLEKS                       R4 R0 K8 ["_handles"]
       52 SETTABLEKS                       R3 R4 K11 ["AxisAdornmentZ"]
       54 LOADB                            R4 1
       55 SETTABLEKS                       R4 R0 K12 ["_handlesPresent"]
       57 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_handles"]
        2 JUMPIFNOT                        R1 ; [+27]
        3 GETTABLEKS                       R1 R0 K1 ["_handlesPresent"]
        5 JUMPIFNOT                        R1 ; [+24]
        6 GETTABLEKS                       R2 R0 K0 ["_handles"]
        8 GETTABLEKS                       R1 R2 K2 ["AxisAdornmentX"]
       10 NAMECALL                         R1 R1 K3 ["Destroy"]
       12 CALL                             R1 1 0
       13 GETTABLEKS                       R2 R0 K0 ["_handles"]
       15 GETTABLEKS                       R1 R2 K4 ["AxisAdornmentY"]
       17 NAMECALL                         R1 R1 K3 ["Destroy"]
       19 CALL                             R1 1 0
       20 GETTABLEKS                       R2 R0 K0 ["_handles"]
       22 GETTABLEKS                       R1 R2 K5 ["AxisAdornmentZ"]
       24 NAMECALL                         R1 R1 K3 ["Destroy"]
       26 CALL                             R1 1 0
       27 LOADB                            R1 0
       28 SETTABLEKS                       R1 R0 K1 ["_handlesPresent"]
       30 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["render"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["render"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_listener"]
        2 JUMPIF                           R1 ; [+11]
        3 GETTABLEKS                       R2 R0 K1 ["_light"]
        5 GETTABLEKS                       R1 R2 K2 ["Changed"]
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

PROTO_13:
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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R3 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R0 K5 ["Src"]
       18 GETTABLEKS                       R2 R3 K7 ["Utility"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R2 K8 ["Constants"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K4 [require]
       27 GETTABLEKS                       R5 R2 K9 ["supportDetachedAttachments"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K4 [require]
       32 GETTABLEKS                       R6 R2 K10 ["findPVAncestor"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R6 R3 K11 ["THICKNESS"]
       37 GETTABLEKS                       R7 R3 K12 ["TRANSPARENCY"]
       39 NEWTABLE                         R8 16 0
       41 SETTABLEKS                       R8 R8 K13 ["__index"]
       43 DUPCLOSURE                       R9 K14 [PROTO_0]
       44 CAPTURE                          VAL R8
       45 SETTABLEKS                       R9 R8 K15 ["new"]
       47 DUPCLOSURE                       R9 K16 [PROTO_1]
       48 CAPTURE                          VAL R6
       49 SETTABLEKS                       R9 R8 K17 ["render"]
       51 DUPCLOSURE                       R9 K18 [PROTO_2]
       52 SETTABLEKS                       R9 R8 K19 ["pool"]
       54 DUPCLOSURE                       R9 K20 [PROTO_3]
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R5
       57 SETTABLEKS                       R9 R8 K21 ["adorn"]
       59 DUPCLOSURE                       R9 K22 [PROTO_4]
       60 SETTABLEKS                       R9 R8 K23 ["destroy"]
       62 DUPCLOSURE                       R9 K24 [PROTO_5]
       63 SETTABLEKS                       R9 R8 K25 ["setGuidesFolder"]
       65 DUPCLOSURE                       R9 K26 [PROTO_6]
       66 CAPTURE                          VAL R4
       67 SETTABLEKS                       R9 R8 K27 ["_setAncestry"]
       69 DUPCLOSURE                       R9 K28 [PROTO_7]
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R7
       72 SETTABLEKS                       R9 R8 K29 ["_setHandles"]
       74 DUPCLOSURE                       R9 K30 [PROTO_8]
       75 SETTABLEKS                       R9 R8 K31 ["_removeHandles"]
       77 DUPCLOSURE                       R9 K32 [PROTO_12]
       78 SETTABLEKS                       R9 R8 K33 ["_setListeners"]
       80 DUPCLOSURE                       R9 K34 [PROTO_13]
       81 SETTABLEKS                       R9 R8 K35 ["_removeListeners"]
       83 RETURN                           R8 1
