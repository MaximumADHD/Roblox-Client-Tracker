PROTO_0:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%s (%s)"]
        3 NAMECALL                         R3 R0 K4 ["GetFullName"]
        5 CALL                             R3 1 1
        6 GETTABLEKS                       R4 R0 K5 ["ClassName"]
        8 CALL                             R1 3 -1
        9 RETURN                           R1 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["AbsolutePosition"]
        2 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        4 GETIMPORT                        R3 K4 [string.format]
        6 LOADK                            R4 K5 ["(%s) (%s)"]
        7 FASTCALL1                        TOSTRING R1 ; [+3]
        8 MOVE                             R6 R1
        9 GETIMPORT                        R5 K7 [tostring]
       11 CALL                             R5 1 1
       12 ADD                              R7 R2 R1
       13 FASTCALL1                        TOSTRING R7 ; [+2]
       14 GETIMPORT                        R6 K7 [tostring]
       16 CALL                             R6 1 1
       17 CALL                             R3 3 -1
       18 RETURN                           R3 -1

PROTO_2:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%s\n\telement bounds: %s"]
        3 GETIMPORT                        R3 K2 [string.format]
        5 LOADK                            R4 K4 ["%s (%s)"]
        6 NAMECALL                         R5 R0 K5 ["GetFullName"]
        8 CALL                             R5 1 1
        9 GETTABLEKS                       R6 R0 K6 ["ClassName"]
       11 CALL                             R3 3 1
       12 GETUPVAL                         R4 0
       13 MOVE                             R5 R0
       14 CALL                             R4 1 -1
       15 CALL                             R1 -1 -1
       16 RETURN                           R1 -1

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R3 R0 K0 ["Y"]
        4 GETTABLEKS                       R4 R1 K1 ["AbsolutePosition"]
        6 GETTABLEKS                       R4 R4 K0 ["Y"]
        8 JUMPIFNOTLT                      R3 R4 ; [+8]
       10 FASTCALL2K                       TABLE_INSERT R2 K2 ; [+5]
       12 MOVE                             R4 R2
       13 LOADK                            R5 K2 ["top"]
       14 GETIMPORT                        R3 K5 [table.insert]
       16 CALL                             R3 2 0
       17 GETTABLEKS                       R3 R0 K0 ["Y"]
       19 GETTABLEKS                       R5 R1 K1 ["AbsolutePosition"]
       21 GETTABLEKS                       R5 R5 K0 ["Y"]
       23 GETTABLEKS                       R6 R1 K6 ["AbsoluteSize"]
       25 GETTABLEKS                       R6 R6 K0 ["Y"]
       27 ADD                              R4 R5 R6
       28 JUMPIFNOTLT                      R4 R3 ; [+8]
       30 FASTCALL2K                       TABLE_INSERT R2 K7 ; [+5]
       32 MOVE                             R4 R2
       33 LOADK                            R5 K7 ["bottom"]
       34 GETIMPORT                        R3 K5 [table.insert]
       36 CALL                             R3 2 0
       37 GETTABLEKS                       R3 R0 K8 ["X"]
       39 GETTABLEKS                       R4 R1 K1 ["AbsolutePosition"]
       41 GETTABLEKS                       R4 R4 K8 ["X"]
       43 JUMPIFNOTLT                      R3 R4 ; [+8]
       45 FASTCALL2K                       TABLE_INSERT R2 K9 ; [+5]
       47 MOVE                             R4 R2
       48 LOADK                            R5 K9 ["left"]
       49 GETIMPORT                        R3 K5 [table.insert]
       51 CALL                             R3 2 0
       52 GETTABLEKS                       R3 R0 K8 ["X"]
       54 GETTABLEKS                       R5 R1 K1 ["AbsolutePosition"]
       56 GETTABLEKS                       R5 R5 K8 ["X"]
       58 GETTABLEKS                       R6 R1 K6 ["AbsoluteSize"]
       60 GETTABLEKS                       R6 R6 K8 ["X"]
       62 ADD                              R4 R5 R6
       63 JUMPIFNOTLT                      R4 R3 ; [+8]
       65 FASTCALL2K                       TABLE_INSERT R2 K10 ; [+5]
       67 MOVE                             R4 R2
       68 LOADK                            R5 K10 ["right"]
       69 GETIMPORT                        R3 K5 [table.insert]
       71 CALL                             R3 2 0
       72 LENGTH                           R3 R2
       73 LOADN                            R4 0
       74 JUMPIFNOTLT                      R4 R3 ; [+8]
       76 LOADB                            R3 1
       77 GETIMPORT                        R4 K12 [table.concat]
       79 MOVE                             R5 R2
       80 LOADK                            R6 K13 ["-"]
       81 CALL                             R4 2 -1
       82 RETURN                           R3 -1
       83 LOADB                            R3 0
       84 RETURN                           R3 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["Parent"]
        2 JUMPIFEQKNIL                     R2 ; [+28]
        4 LOADK                            R5 K1 ["GuiBase2d"]
        5 NAMECALL                         R3 R2 K2 ["IsA"]
        7 CALL                             R3 2 1
        8 JUMPIFNOT                        R3 ; [+19]
        9 LOADK                            R6 K3 ["GuiObject"]
       10 NAMECALL                         R4 R2 K2 ["IsA"]
       12 CALL                             R4 2 1
       13 JUMPIFNOT                        R4 ; [+3]
       14 GETTABLEKS                       R3 R2 K4 ["ClipsDescendants"]
       16 JUMP                             ; [+1]
       17 LOADB                            R3 1
       18 GETUPVAL                         R4 0
       19 MOVE                             R5 R1
       20 MOVE                             R6 R2
       21 CALL                             R4 2 2
       22 JUMPIFNOT                        R3 ; [+5]
       23 JUMPIFNOT                        R4 ; [+4]
       24 LOADB                            R6 1
       25 MOVE                             R7 R2
       26 MOVE                             R8 R5
       27 RETURN                           R6 3
       28 GETTABLEKS                       R2 R2 K0 ["Parent"]
       30 JUMPBACK                         ; [-29]
       31 LOADB                            R3 0
       32 RETURN                           R3 1

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R3 R0 K0 ["Active"]
        4 JUMPIF                           R3 ; [+89]
        5 LOADK                            R5 K1 ["GuiButton"]
        6 NAMECALL                         R3 R0 K2 ["IsA"]
        8 CALL                             R3 2 1
        9 JUMPIF                           R3 ; [+76]
       10 LOADK                            R5 K3 ["TextBox"]
       11 NAMECALL                         R3 R0 K2 ["IsA"]
       13 CALL                             R3 2 1
       14 JUMPIF                           R3 ; [+71]
       15 NEWTABLE                         R3 0 0
       17 NAMECALL                         R4 R0 K4 ["GetFullName"]
       19 CALL                             R4 1 1
       20 NAMECALL                         R5 R0 K5 ["GetDescendants"]
       22 CALL                             R5 1 3
       23 FORGPREP                         R5
       24 LOADK                            R12 K1 ["GuiButton"]
       25 NAMECALL                         R10 R9 K2 ["IsA"]
       27 CALL                             R10 2 1
       28 JUMPIF                           R10 ; [+5]
       29 LOADK                            R12 K3 ["TextBox"]
       30 NAMECALL                         R10 R9 K2 ["IsA"]
       32 CALL                             R10 2 1
       33 JUMPIFNOT                        R10 ; [+28]
       34 GETIMPORT                        R11 K8 [string.format]
       36 LOADK                            R12 K9 ["%s (%s)"]
       37 NAMECALL                         R13 R9 K4 ["GetFullName"]
       39 CALL                             R13 1 1
       40 GETTABLEKS                       R14 R9 K10 ["ClassName"]
       42 CALL                             R11 3 1
       43 LENGTH                           R13 R4
       44 ADDK                             R12 R13 K11 [1]
       45 FASTCALL2                        STRING_SUB R11 R12 ; [+3]
       47 GETIMPORT                        R10 K13 [string.sub]
       49 CALL                             R10 2 1
       50 MOVE                             R12 R3
       51 GETIMPORT                        R13 K8 [string.format]
       53 LOADK                            R14 K14 ["%s%s"]
       54 GETTABLEKS                       R15 R0 K15 ["Name"]
       56 MOVE                             R16 R10
       57 CALL                             R13 3 -1
       58 FASTCALL                         TABLE_INSERT ; [+2]
       59 GETIMPORT                        R11 K18 [table.insert]
       61 CALL                             R11 -1 0
       62 FORGLOOP                         R5 2 ; [-39]
       64 MOVE                             R6 R2
       65 GETIMPORT                        R7 K8 [string.format]
       67 LOADK                            R8 K19 ["target is not a GuiButton or TextBox, so it will not sink inputs unless `Active` is true.\n\tThe target instance has the following descendants that may be better click targets:%s\n\n\tIf you are intentionally simulating clicks on a GUI element that is not typically interactive\n\t(like a Frame or an ImageLabel), consider using `element:clickWithoutValidation` instead."]
       68 LENGTH                           R10 R3
       69 LOADN                            R11 0
       70 JUMPIFNOTLT                      R11 R10 ; [+9]
       72 LOADK                            R10 K20 ["\n\t\t* "]
       73 GETIMPORT                        R11 K22 [table.concat]
       75 MOVE                             R12 R3
       76 LOADK                            R13 K20 ["\n\t\t* "]
       77 CALL                             R11 2 1
       78 CONCAT                           R9 R10 R11
       79 JUMP                             ; [+1]
       80 LOADK                            R9 K23 [" <none>"]
       81 CALL                             R7 2 -1
       82 FASTCALL                         TABLE_INSERT ; [+2]
       83 GETIMPORT                        R5 K18 [table.insert]
       85 CALL                             R5 -1 0
       86 JUMPIF                           R1 ; [+7]
       87 FASTCALL2K                       TABLE_INSERT R2 K24 ; [+5]
       89 MOVE                             R4 R2
       90 LOADK                            R5 K24 ["target is not Active"]
       91 GETIMPORT                        R3 K18 [table.insert]
       93 CALL                             R3 2 0
       94 GETTABLEKS                       R3 R0 K25 ["Visible"]
       96 JUMPIF                           R3 ; [+7]
       97 FASTCALL2K                       TABLE_INSERT R2 K26 ; [+5]
       99 MOVE                             R4 R2
      100 LOADK                            R5 K26 ["target is not Visible"]
      101 GETIMPORT                        R3 K18 [table.insert]
      103 CALL                             R3 2 0
      104 GETTABLEKS                       R3 R0 K27 ["AbsoluteSize"]
      106 GETTABLEKS                       R3 R3 K28 ["X"]
      108 LOADN                            R4 0
      109 JUMPIFNOTLE                      R3 R4 ; [+13]
      111 MOVE                             R4 R2
      112 GETIMPORT                        R5 K8 [string.format]
      114 LOADK                            R6 K29 ["target has 0 width; element bounds: %s"]
      115 GETUPVAL                         R7 0
      116 MOVE                             R8 R0
      117 CALL                             R7 1 -1
      118 CALL                             R5 -1 -1
      119 FASTCALL                         TABLE_INSERT ; [+2]
      120 GETIMPORT                        R3 K18 [table.insert]
      122 CALL                             R3 -1 0
      123 GETTABLEKS                       R3 R0 K27 ["AbsoluteSize"]
      125 GETTABLEKS                       R3 R3 K30 ["Y"]
      127 LOADN                            R4 0
      128 JUMPIFNOTLE                      R3 R4 ; [+13]
      130 MOVE                             R4 R2
      131 GETIMPORT                        R5 K8 [string.format]
      133 LOADK                            R6 K31 ["target has 0 height; element bounds: %s"]
      134 GETUPVAL                         R7 0
      135 MOVE                             R8 R0
      136 CALL                             R7 1 -1
      137 CALL                             R5 -1 -1
      138 FASTCALL                         TABLE_INSERT ; [+2]
      139 GETIMPORT                        R3 K18 [table.insert]
      141 CALL                             R3 -1 0
      142 LOADK                            R5 K32 ["LayerCollector"]
      143 NAMECALL                         R3 R0 K33 ["FindFirstAncestorWhichIsA"]
      145 CALL                             R3 2 1
      146 JUMPIF                           R3 ; [+7]
      147 FASTCALL2K                       TABLE_INSERT R2 K34 ; [+5]
      149 MOVE                             R5 R2
      150 LOADK                            R6 K34 ["target is not a descendant of a LayerCollector, like a ScreenGui or a SurfaceGui"]
      151 GETIMPORT                        R4 K18 [table.insert]
      153 CALL                             R4 2 0
      154 LENGTH                           R5 R2
      155 JUMPIFEQKN                       R5 K35 [0] ; [+2]
      157 LOADB                            R4 0 +1
      158 LOADB                            R4 1
      159 MOVE                             R5 R2
      160 RETURN                           R4 2

PROTO_6:
        0 JUMPIFNOT                        R0 ; [+15]
        1 GETIMPORT                        R1 K1 [game]
        3 JUMPIFEQ                         R0 R1 ; [+12]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R2 R0 K2 ["Parent"]
        8 CALL                             R1 1 1
        9 LOADK                            R4 K3 ["ScrollingFrame"]
       10 NAMECALL                         R2 R0 K4 ["IsA"]
       12 CALL                             R2 2 1
       13 JUMPIFNOT                        R2 ; [+1]
       14 ADDK                             R1 R1 K5 [1]
       15 RETURN                           R1 1
       16 LOADN                            R1 0
       17 RETURN                           R1 1

PROTO_7:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 FASTCALL1                        TYPE R0 ; [+3]
        3 MOVE                             R4 R0
        4 GETIMPORT                        R3 K1 [type]
        6 CALL                             R3 1 1
        7 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+8]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["new"]
       12 MOVE                             R4 R0
       13 CALL                             R3 1 1
       14 MOVE                             R1 R3
       15 JUMP                             ; [+40]
       16 FASTCALL1                        TYPE R0 ; [+3]
       17 MOVE                             R4 R0
       18 GETIMPORT                        R3 K1 [type]
       20 CALL                             R3 1 1
       21 JUMPIFNOTEQKS                    R3 K4 ["table"] ; [+7]
       23 GETTABLEKS                       R3 R0 K5 ["__type"]
       25 JUMPIFNOTEQKS                    R3 K6 ["XPath"] ; [+3]
       27 MOVE                             R1 R0
       28 JUMP                             ; [+27]
       29 FASTCALL1                        TYPE R0 ; [+3]
       30 MOVE                             R4 R0
       31 GETIMPORT                        R3 K1 [type]
       33 CALL                             R3 1 1
       34 JUMPIFNOTEQKS                    R3 K7 ["userdata"] ; [+9]
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K3 ["new"]
       39 MOVE                             R4 R0
       40 CALL                             R3 1 1
       41 MOVE                             R1 R3
       42 MOVE                             R2 R0
       43 JUMP                             ; [+12]
       44 GETIMPORT                        R3 K9 [error]
       46 GETIMPORT                        R4 K11 [string.format]
       48 LOADK                            R5 K12 ["invalid parameter for element: %s"]
       49 FASTCALL1                        TYPEOF R0 ; [+3]
       50 MOVE                             R7 R0
       51 GETIMPORT                        R6 K14 [typeof]
       53 CALL                             R6 1 1
       54 CALL                             R4 2 -1
       55 CALL                             R3 -1 0
       56 DUPTABLE                         R4 K20 [{["path"], ["rbxInstance"], ["isInScrollingFrame"], ["anchor"] = }]
       57 SETTABLEKS                       R1 R4 K15 ["path"]
       59 SETTABLEKS                       R2 R4 K16 ["rbxInstance"]
       61 MOVE                             R7 R2
       62 JUMPIFNOT                        R7 ; [+16]
       63 GETIMPORT                        R8 K22 [game]
       65 JUMPIFEQ                         R7 R8 ; [+13]
       67 GETUPVAL                         R8 1
       68 GETTABLEKS                       R9 R7 K23 ["Parent"]
       70 CALL                             R8 1 1
       71 LOADK                            R11 K24 ["ScrollingFrame"]
       72 NAMECALL                         R9 R7 K25 ["IsA"]
       74 CALL                             R9 2 1
       75 JUMPIFNOT                        R9 ; [+1]
       76 ADDK                             R8 R8 K26 [1]
       77 MOVE                             R6 R8
       78 JUMP                             ; [+1]
       79 LOADN                            R6 0
       80 JUMPIFNOTEQKN                    R6 K27 [0] ; [+2]
       82 LOADB                            R5 0 +1
       83 LOADB                            R5 1
       84 SETTABLEKS                       R5 R4 K17 ["isInScrollingFrame"]
       86 GETUPVAL                         R5 2
       87 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       89 GETIMPORT                        R3 K29 [setmetatable]
       91 CALL                             R3 2 1
       92 RETURN                           R3 1

PROTO_8:
        0 NAMECALL                         R1 R0 K0 ["getRbxInstance"]
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+14]
        5 GETIMPORT                        R2 K2 [error]
        7 GETIMPORT                        R3 K5 [string.format]
        9 LOADK                            R4 K6 ["%s: element with XPath %s does not describe any existing Instance"]
       10 LOADK                            R5 K7 ["[Rhodium] input validation"]
       11 GETTABLEKS                       R6 R0 K8 ["path"]
       13 NAMECALL                         R6 R6 K9 ["toString"]
       15 CALL                             R6 1 -1
       16 CALL                             R3 -1 -1
       17 CALL                             R2 -1 0
       18 LOADK                            R4 K10 ["GuiObject"]
       19 NAMECALL                         R2 R1 K11 ["IsA"]
       21 CALL                             R2 2 1
       22 JUMPIF                           R2 ; [+11]
       23 GETIMPORT                        R2 K2 [error]
       25 GETIMPORT                        R3 K5 [string.format]
       27 LOADK                            R4 K12 ["%s: %s is not a GuiObject"]
       28 LOADK                            R5 K7 ["[Rhodium] input validation"]
       29 GETUPVAL                         R6 0
       30 MOVE                             R7 R1
       31 CALL                             R6 1 -1
       32 CALL                             R3 -1 -1
       33 CALL                             R2 -1 0
       34 LOADK                            R4 K13 ["DataModel"]
       35 NAMECALL                         R2 R1 K14 ["FindFirstAncestorOfClass"]
       37 CALL                             R2 2 1
       38 JUMPIF                           R2 ; [+11]
       39 GETIMPORT                        R2 K2 [error]
       41 GETIMPORT                        R3 K5 [string.format]
       43 LOADK                            R4 K15 ["%s: %s is not mounted into the DataModel"]
       44 LOADK                            R5 K7 ["[Rhodium] input validation"]
       45 GETUPVAL                         R6 0
       46 MOVE                             R7 R1
       47 CALL                             R6 1 -1
       48 CALL                             R3 -1 -1
       49 CALL                             R2 -1 0
       50 RETURN                           R0 0

PROTO_9:
        0 NAMECALL                         R2 R0 K0 ["_getGuiObject"]
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R2
        5 MOVE                             R5 R1
        6 CALL                             R3 2 2
        7 JUMPIF                           R3 ; [+22]
        8 GETIMPORT                        R5 K2 [error]
       10 GETIMPORT                        R6 K5 [string.format]
       12 LOADK                            R7 K6 ["%s: %s was not clickable for the following reason(s):\n* %s"]
       13 LOADK                            R8 K7 ["[Rhodium] input validation"]
       14 GETIMPORT                        R9 K5 [string.format]
       16 LOADK                            R10 K8 ["%s (%s)"]
       17 NAMECALL                         R11 R2 K9 ["GetFullName"]
       19 CALL                             R11 1 1
       20 GETTABLEKS                       R12 R2 K10 ["ClassName"]
       22 CALL                             R9 3 1
       23 GETIMPORT                        R10 K13 [table.concat]
       25 MOVE                             R11 R4
       26 LOADK                            R12 K14 ["\n* "]
       27 CALL                             R10 2 -1
       28 CALL                             R6 -1 -1
       29 CALL                             R5 -1 0
       30 RETURN                           R0 0

PROTO_10:
        0 NAMECALL                         R1 R0 K0 ["_getGuiObject"]
        2 CALL                             R1 1 1
        3 NAMECALL                         R2 R0 K1 ["getAnchor"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 0
        7 MOVE                             R4 R1
        8 MOVE                             R5 R2
        9 CALL                             R3 2 3
       10 JUMPIFNOT                        R3 ; [+37]
       11 GETIMPORT                        R6 K3 [error]
       13 GETIMPORT                        R7 K6 [string.format]
       15 LOADK                            R8 K7 ["%s: %s is outside bounds of ancestor %s (%s)\n\nclick at: (%s)\ntarget:   %s\nancestor: %s"]
       16 LOADK                            R9 K8 ["[Rhodium] input validation"]
       17 GETTABLEKS                       R10 R1 K9 ["Name"]
       19 GETTABLEKS                       R11 R4 K9 ["Name"]
       21 MOVE                             R12 R5
       22 FASTCALL1                        TOSTRING R2 ; [+3]
       23 MOVE                             R14 R2
       24 GETIMPORT                        R13 K11 [tostring]
       26 CALL                             R13 1 1
       27 GETIMPORT                        R14 K6 [string.format]
       29 LOADK                            R15 K12 ["%s\n\telement bounds: %s"]
       30 GETIMPORT                        R16 K6 [string.format]
       32 LOADK                            R17 K13 ["%s (%s)"]
       33 NAMECALL                         R18 R1 K14 ["GetFullName"]
       35 CALL                             R18 1 1
       36 GETTABLEKS                       R19 R1 K15 ["ClassName"]
       38 CALL                             R16 3 1
       39 GETUPVAL                         R17 1
       40 MOVE                             R18 R1
       41 CALL                             R17 1 -1
       42 CALL                             R14 -1 1
       43 GETUPVAL                         R15 2
       44 MOVE                             R16 R4
       45 CALL                             R15 1 -1
       46 CALL                             R7 -1 -1
       47 CALL                             R6 -1 0
       48 RETURN                           R0 0

PROTO_11:
        0 NAMECALL                         R1 R0 K0 ["_getGuiObject"]
        2 CALL                             R1 1 1
        3 NAMECALL                         R2 R0 K1 ["getAnchor"]
        5 CALL                             R2 1 1
        6 LOADK                            R5 K2 ["BasePlayerGui"]
        7 NAMECALL                         R3 R1 K3 ["FindFirstAncestorWhichIsA"]
        9 CALL                             R3 2 1
       10 JUMPIF                           R3 ; [+11]
       11 GETIMPORT                        R4 K5 [error]
       13 GETIMPORT                        R5 K8 [string.format]
       15 LOADK                            R6 K9 ["%s: %s is not a descendant of a BasePlayerGui (like CoreGui or LocalPlayer.PlayerGui)"]
       16 LOADK                            R7 K10 ["[Rhodium] input validation"]
       17 GETUPVAL                         R8 0
       18 MOVE                             R9 R1
       19 CALL                             R8 1 -1
       20 CALL                             R5 -1 -1
       21 CALL                             R4 -1 0
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K11 ["Mouse"]
       25 GETTABLEKS                       R4 R4 K12 ["SendMouseMoveEvent"]
       27 GETTABLEKS                       R5 R2 K13 ["X"]
       29 GETTABLEKS                       R6 R2 K14 ["Y"]
       31 CALL                             R4 2 0
       32 GETUPVAL                         R4 2
       33 GETTABLEKS                       R4 R4 K15 ["waitForInputEventsProcessed"]
       35 CALL                             R4 0 0
       36 GETTABLEKS                       R6 R2 K13 ["X"]
       38 GETTABLEKS                       R7 R2 K14 ["Y"]
       40 NAMECALL                         R4 R3 K16 ["GetGuiObjectsAtPosition"]
       42 CALL                             R4 3 1
       43 MOVE                             R5 R4
       44 LOADNIL                          R6
       45 LOADNIL                          R7
       46 FORGPREP                         R5
       47 JUMPIFEQ                         R9 R1 ; [+45]
       49 GETUPVAL                         R10 3
       50 MOVE                             R11 R9
       51 LOADB                            R12 1
       52 CALL                             R10 2 1
       53 JUMPIFNOT                        R10 ; [+37]
       54 GETUPVAL                         R11 4
       55 MOVE                             R12 R9
       56 MOVE                             R13 R2
       57 CALL                             R11 2 1
       58 JUMPIF                           R11 ; [+32]
       59 GETIMPORT                        R12 K5 [error]
       61 GETIMPORT                        R13 K8 [string.format]
       63 LOADK                            R14 K17 ["%s: element is obscured by another clickable GuiObject at the target click location\n\n click at: (%s)\n   target: %s\nobscuring: %s"]
       64 LOADK                            R15 K10 ["[Rhodium] input validation"]
       65 FASTCALL1                        TOSTRING R2 ; [+3]
       66 MOVE                             R17 R2
       67 GETIMPORT                        R16 K19 [tostring]
       69 CALL                             R16 1 1
       70 GETIMPORT                        R17 K8 [string.format]
       72 LOADK                            R18 K20 ["%s\n\telement bounds: %s"]
       73 GETIMPORT                        R19 K8 [string.format]
       75 LOADK                            R20 K21 ["%s (%s)"]
       76 NAMECALL                         R21 R1 K22 ["GetFullName"]
       78 CALL                             R21 1 1
       79 GETTABLEKS                       R22 R1 K23 ["ClassName"]
       81 CALL                             R19 3 1
       82 GETUPVAL                         R20 5
       83 MOVE                             R21 R1
       84 CALL                             R20 1 -1
       85 CALL                             R17 -1 1
       86 GETUPVAL                         R18 0
       87 MOVE                             R19 R9
       88 CALL                             R18 1 -1
       89 CALL                             R13 -1 -1
       90 CALL                             R12 -1 0
       91 FORGLOOP                         R5 2 ; [-45]
       93 RETURN                           R0 0

PROTO_12:
        0 NAMECALL                         R3 R0 K0 ["getRbxInstance"]
        2 CALL                             R3 1 1
        3 GETTABLE                         R2 R3 R1
        4 RETURN                           R2 1

PROTO_13:
        0 NAMECALL                         R1 R0 K0 ["_getGuiBase2d"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["AbsolutePosition"]
        5 RETURN                           R1 1

PROTO_14:
        0 NAMECALL                         R1 R0 K0 ["getSize"]
        2 CALL                             R1 1 1
        3 NAMECALL                         R2 R0 K1 ["getLocation"]
        5 CALL                             R2 1 1
        6 ADD                              R3 R1 R2
        7 GETIMPORT                        R4 K4 [Rect.new]
        9 GETTABLEKS                       R5 R2 K5 ["X"]
       11 GETTABLEKS                       R6 R2 K6 ["Y"]
       13 GETTABLEKS                       R7 R3 K5 ["X"]
       15 GETTABLEKS                       R8 R3 K6 ["Y"]
       17 CALL                             R4 4 -1
       18 RETURN                           R4 -1

PROTO_15:
        0 NAMECALL                         R1 R0 K0 ["_getGuiBase2d"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["AbsoluteSize"]
        5 RETURN                           R1 1

PROTO_16:
        0 NAMECALL                         R1 R0 K0 ["getLocation"]
        2 CALL                             R1 1 1
        3 NAMECALL                         R2 R0 K1 ["getSize"]
        5 CALL                             R2 1 1
        6 DIVK                             R4 R2 K2 [2]
        7 ADD                              R3 R1 R4
        8 RETURN                           R3 1

PROTO_17:
        0 NAMECALL                         R1 R0 K0 ["getRbxInstanceOrThrow"]
        2 CALL                             R1 1 1
        3 LOADK                            R4 K1 ["TextLabel"]
        4 NAMECALL                         R2 R1 K2 ["IsA"]
        6 CALL                             R2 2 1
        7 JUMPIF                           R2 ; [+10]
        8 LOADK                            R4 K3 ["TextButton"]
        9 NAMECALL                         R2 R1 K2 ["IsA"]
       11 CALL                             R2 2 1
       12 JUMPIF                           R2 ; [+5]
       13 LOADK                            R4 K4 ["TextBox"]
       14 NAMECALL                         R2 R1 K2 ["IsA"]
       16 CALL                             R2 2 1
       17 JUMPIFNOT                        R2 ; [+3]
       18 GETTABLEKS                       R2 R1 K5 ["Text"]
       20 RETURN                           R2 1
       21 GETIMPORT                        R2 K7 [error]
       23 LOADK                            R3 K8 ["expected element to have text, but got `%s`"]
       24 GETTABLEKS                       R5 R1 K9 ["ClassName"]
       26 NAMECALL                         R3 R3 K10 ["format"]
       28 CALL                             R3 2 -1
       29 CALL                             R2 -1 0
       30 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["anchor"]
        2 JUMPIFEQKNIL                     R1 ; [+8]
        4 NAMECALL                         R1 R0 K1 ["getLocation"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R3 R0 K0 ["anchor"]
        9 ADD                              R2 R1 R3
       10 RETURN                           R2 1
       11 NAMECALL                         R1 R0 K2 ["getCenter"]
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1

PROTO_19:
        0 NAMECALL                         R3 R0 K0 ["getSize"]
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R4 R3 K1 ["X"]
        5 JUMPIFLT                         R4 R1 ; [+11]
        7 GETTABLEKS                       R4 R3 K2 ["Y"]
        9 JUMPIFLT                         R4 R2 ; [+7]
       11 LOADN                            R4 0
       12 JUMPIFLT                         R1 R4 ; [+4]
       14 LOADN                            R4 0
       15 JUMPIFNOTLT                      R2 R4 ; [+6]
       17 GETIMPORT                        R4 K4 [error]
       19 LOADK                            R5 K5 ["Attempt to set anchor beyond element's bounds"]
       20 CALL                             R4 1 0
       21 RETURN                           R0 0
       22 GETIMPORT                        R4 K8 [Vector2.new]
       24 MOVE                             R5 R1
       25 MOVE                             R6 R2
       26 CALL                             R4 2 1
       27 SETTABLEKS                       R4 R0 K9 ["anchor"]
       29 RETURN                           R0 0

PROTO_20:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["anchor"]
        3 RETURN                           R0 0

PROTO_21:
        0 NAMECALL                         R1 R0 K0 ["_getGuiObject"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["Visible"]
        5 RETURN                           R1 1

PROTO_22:
        0 NAMECALL                         R1 R0 K0 ["_getGuiButton"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["Selected"]
        5 RETURN                           R1 1

PROTO_23:
        0 GETTABLEKS                       R3 R0 K0 ["path"]
        2 GETTABLEKS                       R3 R3 K1 ["waitDelay"]
        4 GETTABLEKS                       R4 R0 K0 ["path"]
        6 GETTABLEKS                       R4 R4 K2 ["waitTimeOut"]
        8 NAMECALL                         R1 R0 K3 ["waitForRbxInstance"]
       10 CALL                             R1 3 -1
       11 RETURN                           R1 -1

PROTO_24:
        0 NAMECALL                         R1 R0 K0 ["getRbxInstance"]
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+13]
        5 GETIMPORT                        R2 K2 [error]
        7 GETIMPORT                        R3 K5 [string.format]
        9 LOADK                            R4 K6 ["Failed to get instance for element with path %s"]
       10 GETTABLEKS                       R5 R0 K7 ["path"]
       12 NAMECALL                         R5 R5 K8 ["toString"]
       14 CALL                             R5 1 -1
       15 CALL                             R3 -1 -1
       16 CALL                             R2 -1 0
       17 RETURN                           R1 1

PROTO_25:
        0 LOADK                            R3 K0 ["GuiObject"]
        1 NAMECALL                         R1 R0 K1 ["_getInstanceOfClass"]
        3 CALL                             R1 2 1
        4 RETURN                           R1 1

PROTO_26:
        0 LOADK                            R3 K0 ["GuiButton"]
        1 NAMECALL                         R1 R0 K1 ["_getInstanceOfClass"]
        3 CALL                             R1 2 1
        4 RETURN                           R1 1

PROTO_27:
        0 LOADK                            R3 K0 ["GuiBase2d"]
        1 NAMECALL                         R1 R0 K1 ["_getInstanceOfClass"]
        3 CALL                             R1 2 1
        4 RETURN                           R1 1

PROTO_28:
        0 NAMECALL                         R2 R0 K0 ["getRbxInstanceOrThrow"]
        2 CALL                             R2 1 1
        3 MOVE                             R5 R1
        4 NAMECALL                         R3 R2 K1 ["IsA"]
        6 CALL                             R3 2 1
        7 JUMPIFNOT                        R3 ; [+1]
        8 RETURN                           R2 1
        9 GETIMPORT                        R3 K3 [error]
       11 LOADK                            R4 K4 ["expected element to be a %s, but got `%s`"]
       12 MOVE                             R6 R1
       13 GETTABLEKS                       R7 R2 K5 ["ClassName"]
       15 NAMECALL                         R4 R4 K6 ["format"]
       17 CALL                             R4 3 -1
       18 CALL                             R3 -1 0
       19 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R3 R0 K0 ["rbxInstance"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+20]
        4 GETTABLEKS                       R4 R0 K1 ["path"]
        6 JUMPIFEQKNIL                     R4 ; [+16]
        8 GETTABLEKS                       R4 R0 K1 ["path"]
       10 MOVE                             R6 R1
       11 MOVE                             R7 R2
       12 NAMECALL                         R4 R4 K2 ["setWait"]
       14 CALL                             R4 3 0
       15 GETTABLEKS                       R4 R0 K1 ["path"]
       17 NAMECALL                         R4 R4 K3 ["waitForFirstInstance"]
       19 CALL                             R4 1 1
       20 MOVE                             R3 R4
       21 SETTABLEKS                       R3 R0 K0 ["rbxInstance"]
       23 RETURN                           R3 1

PROTO_30:
        0 LOADK                            R5 K0 ["GuiObject"]
        1 NAMECALL                         R3 R0 K1 ["_getInstanceOfClass"]
        3 CALL                             R3 2 1
        4 NAMECALL                         R1 R0 K2 ["_centralizeInScrollingFrame"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_31:
        0 NAMECALL                         R1 R0 K0 ["getRbxInstance"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+4]
        4 NAMECALL                         R2 R0 K1 ["centralizeInstance"]
        6 CALL                             R2 1 0
        7 RETURN                           R0 0
        8 NAMECALL                         R2 R0 K2 ["centralizeWithInfiniteScrolling"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_32:
        0 GETIMPORT                        R3 K1 [game]
        2 JUMPIFNOTEQ                      R1 R3 ; [+2]
        4 RETURN                           R0 0
        5 JUMPIFNOT                        R2 ; [+2]
        6 MOVE                             R3 R2
        7 JUMP                             ; [+2]
        8 GETTABLEKS                       R3 R1 K2 ["Parent"]
       10 GETIMPORT                        R4 K1 [game]
       12 JUMPIFNOTEQ                      R3 R4 ; [+2]
       14 RETURN                           R0 0
       15 LOADK                            R6 K3 ["ScrollingFrame"]
       16 NAMECALL                         R4 R3 K4 ["IsA"]
       18 CALL                             R4 2 1
       19 JUMPIFNOT                        R4 ; [+99]
       20 MOVE                             R6 R3
       21 GETTABLEKS                       R7 R3 K2 ["Parent"]
       23 NAMECALL                         R4 R0 K5 ["_centralizeInScrollingFrame"]
       25 CALL                             R4 3 0
       26 LOADB                            R4 0
       27 JUMPIF                           R4 ; [+59]
       28 GETTABLEKS                       R5 R1 K6 ["AbsolutePosition"]
       30 GETTABLEKS                       R6 R3 K7 ["CanvasPosition"]
       32 GETIMPORT                        R7 K10 [Vector2.new]
       34 LOADN                            R9 300
       35 GETTABLEKS                       R10 R3 K11 ["AbsoluteSize"]
       37 GETTABLEKS                       R10 R10 K12 ["X"]
       39 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
       41 GETIMPORT                        R8 K15 [math.min]
       43 CALL                             R8 2 1
       44 LOADN                            R10 300
       45 GETTABLEKS                       R11 R3 K11 ["AbsoluteSize"]
       47 GETTABLEKS                       R11 R11 K16 ["Y"]
       49 FASTCALL2                        MATH_MIN R10 R11 ; [+3]
       51 GETIMPORT                        R9 K15 [math.min]
       53 CALL                             R9 2 1
       54 CALL                             R7 2 1
       55 GETTABLEKS                       R9 R3 K7 ["CanvasPosition"]
       57 ADD                              R8 R9 R7
       58 SETTABLEKS                       R8 R3 K7 ["CanvasPosition"]
       60 GETIMPORT                        R8 K19 [task.wait]
       62 CALL                             R8 0 0
       63 GETTABLEKS                       R9 R3 K7 ["CanvasPosition"]
       65 SUB                              R8 R9 R6
       66 GETTABLEKS                       R10 R8 K20 ["Magnitude"]
       68 LOADN                            R11 2
       69 JUMPIFLE                         R10 R11 ; [+2]
       71 LOADB                            R9 0 +1
       72 LOADB                            R9 1
       73 GETTABLEKS                       R11 R1 K6 ["AbsolutePosition"]
       75 SUB                              R10 R11 R5
       76 MOVE                             R11 R9
       77 JUMPIF                           R11 ; [+7]
       78 GETTABLEKS                       R12 R10 K20 ["Magnitude"]
       80 LOADN                            R13 2
       81 JUMPIFLT                         R13 R12 ; [+2]
       83 LOADB                            R11 0 +1
       84 LOADB                            R11 1
       85 MOVE                             R4 R11
       86 JUMPBACK                         ; [-60]
       87 LOADN                            R7 1
       88 LOADN                            R5 2
       89 LOADN                            R6 1
       90 FORNPREP                         R5
       91 GETTABLEKS                       R9 R3 K6 ["AbsolutePosition"]
       93 GETTABLEKS                       R11 R3 K11 ["AbsoluteSize"]
       95 DIVK                             R10 R11 K21 [2]
       96 ADD                              R8 R9 R10
       97 GETTABLEKS                       R10 R1 K6 ["AbsolutePosition"]
       99 GETTABLEKS                       R12 R1 K11 ["AbsoluteSize"]
      101 DIVK                             R11 R12 K21 [2]
      102 ADD                              R9 R10 R11
      103 SUB                              R10 R9 R8
      104 GETTABLEKS                       R11 R10 K20 ["Magnitude"]
      106 LOADN                            R12 2
      107 JUMPIFLE                         R11 R12 ; [+17]
      109 GETTABLEKS                       R12 R3 K7 ["CanvasPosition"]
      111 ADD                              R11 R12 R10
      112 SETTABLEKS                       R11 R3 K7 ["CanvasPosition"]
      114 GETIMPORT                        R11 K19 [task.wait]
      116 CALL                             R11 0 0
      117 FORNLOOP                         R5
      118 RETURN                           R0 0
      119 MOVE                             R6 R1
      120 GETTABLEKS                       R7 R3 K2 ["Parent"]
      122 NAMECALL                         R4 R0 K5 ["_centralizeInScrollingFrame"]
      124 CALL                             R4 3 0
      125 RETURN                           R0 0

PROTO_33:
        0 GETIMPORT                        R3 K2 [Vector2.new]
        2 LOADN                            R4 0
        3 LOADN                            R5 0
        4 CALL                             R3 2 1
        5 SETTABLEKS                       R3 R1 K3 ["CanvasPosition"]
        7 GETTABLEKS                       R3 R1 K4 ["AbsoluteSize"]
        9 GETTABLEKS                       R3 R3 K5 ["X"]
       11 GETTABLEKS                       R4 R1 K4 ["AbsoluteSize"]
       13 GETTABLEKS                       R4 R4 K6 ["Y"]
       15 LOADB                            R5 0
       16 LOADNIL                          R6
       17 JUMPIF                           R5 ; [+45]
       18 GETIMPORT                        R7 K9 [task.wait]
       20 LOADK                            R8 K10 [0.1]
       21 CALL                             R7 1 0
       22 NAMECALL                         R7 R2 K11 ["getFirstInstance"]
       24 CALL                             R7 1 1
       25 MOVE                             R6 R7
       26 JUMPIFNOT                        R6 ; [+1]
       27 RETURN                           R6 1
       28 GETTABLEKS                       R7 R1 K3 ["CanvasPosition"]
       30 GETTABLEKS                       R9 R1 K3 ["CanvasPosition"]
       32 GETIMPORT                        R10 K2 [Vector2.new]
       34 FASTCALL2K                       MATH_MIN R3 K12 ; [+5]
       36 MOVE                             R12 R3
       37 LOADK                            R13 K12 [300]
       38 GETIMPORT                        R11 K15 [math.min]
       40 CALL                             R11 2 1
       41 FASTCALL2K                       MATH_MIN R4 K12 ; [+5]
       43 MOVE                             R13 R4
       44 LOADK                            R14 K12 [300]
       45 GETIMPORT                        R12 K15 [math.min]
       47 CALL                             R12 2 1
       48 CALL                             R10 2 1
       49 ADD                              R8 R9 R10
       50 SETTABLEKS                       R8 R1 K3 ["CanvasPosition"]
       52 GETTABLEKS                       R9 R1 K3 ["CanvasPosition"]
       54 SUB                              R8 R9 R7
       55 GETTABLEKS                       R9 R8 K16 ["Magnitude"]
       57 LOADN                            R10 2
       58 JUMPIFLT                         R9 R10 ; [+2]
       60 LOADB                            R5 0 +1
       61 LOADB                            R5 1
       62 JUMPBACK                         ; [-46]
       63 LOADNIL                          R7
       64 RETURN                           R7 1

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["path"]
        2 NAMECALL                         R1 R1 K1 ["getInstances"]
        4 CALL                             R1 1 2
        5 LENGTH                           R3 R1
        6 LOADN                            R4 0
        7 JUMPIFNOTLT                      R4 R3 ; [+4]
        9 NAMECALL                         R3 R0 K2 ["centralizeInstance"]
       11 CALL                             R3 1 0
       12 GETTABLEKS                       R3 R0 K0 ["path"]
       14 NAMECALL                         R3 R3 K3 ["copy"]
       16 CALL                             R3 1 1
       17 NAMECALL                         R4 R3 K4 ["size"]
       19 CALL                             R4 1 1
       20 JUMPIFNOTLT                      R2 R4 ; [+6]
       22 NAMECALL                         R4 R3 K5 ["parent"]
       24 CALL                             R4 1 1
       25 MOVE                             R3 R4
       26 JUMPBACK                         ; [-10]
       27 NAMECALL                         R4 R3 K6 ["getFirstInstance"]
       29 CALL                             R4 1 1
       30 LOADNIL                          R5
       31 JUMPIFNOTEQKNIL                  R4 ; [+2]
       33 LOADB                            R7 0 +1
       34 LOADB                            R7 1
       35 FASTCALL2K                       ASSERT R7 K7 ; [+4]
       37 LOADK                            R8 K7 ["Rhodium encountered an internal error"]
       38 GETIMPORT                        R6 K9 [assert]
       40 CALL                             R6 2 0
       41 LOADK                            R8 K10 ["ScrollingFrame"]
       42 NAMECALL                         R6 R4 K11 ["IsA"]
       44 CALL                             R6 2 1
       45 JUMPIFNOT                        R6 ; [+2]
       46 MOVE                             R5 R4
       47 JUMP                             ; [+7]
       48 GETTABLEKS                       R4 R4 K12 ["Parent"]
       50 GETIMPORT                        R6 K14 [game]
       52 JUMPIFEQ                         R4 R6 ; [+2]
       54 JUMPBACK                         ; [-24]
       55 JUMPIFNOTEQKNIL                  R5 ; [+2]
       57 RETURN                           R0 0
       58 MOVE                             R8 R5
       59 GETTABLEKS                       R9 R0 K0 ["path"]
       61 NAMECALL                         R6 R0 K15 ["_scrollToFindInstance"]
       63 CALL                             R6 3 1
       64 JUMPIFNOTEQKNIL                  R6 ; [+2]
       66 RETURN                           R0 0
       67 LOADK                            R10 K16 ["GuiObject"]
       68 NAMECALL                         R8 R0 K17 ["_getInstanceOfClass"]
       70 CALL                             R8 2 1
       71 NAMECALL                         R6 R0 K18 ["_centralizeInScrollingFrame"]
       73 CALL                             R6 2 0
       74 RETURN                           R0 0

PROTO_35:
        0 NAMECALL                         R1 R0 K0 ["getRbxInstanceOrThrow"]
        2 CALL                             R1 1 1
        3 LOADK                            R3 K1 ["PluginGui"]
        4 NAMECALL                         R1 R1 K2 ["FindFirstAncestorWhichIsA"]
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["setCurrentWindow"]
       10 MOVE                             R3 R1
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_36:
        0 NAMECALL                         R2 R0 K0 ["assertInteractable"]
        2 CALL                             R2 1 0
        3 NAMECALL                         R2 R0 K1 ["_getGuiObject"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["waitForInputEventsProcessed"]
        9 CALL                             R3 0 0
       10 GETUPVAL                         R3 1
       11 MOVE                             R4 R2
       12 MOVE                             R5 R1
       13 CALL                             R3 2 1
       14 JUMPIF                           R3 ; [+22]
       15 NAMECALL                         R4 R0 K3 ["assertClickable"]
       17 CALL                             R4 1 0
       18 NAMECALL                         R4 R0 K4 ["assertVisibleWithinAncestors"]
       20 CALL                             R4 1 0
       21 NAMECALL                         R4 R0 K5 ["assertFirstClickTarget"]
       23 CALL                             R4 1 0
       24 GETIMPORT                        R4 K7 [error]
       26 GETIMPORT                        R5 K10 [string.format]
       28 LOADK                            R6 K11 ["%s: failed to click %s - reason unknown\n%s"]
       29 LOADK                            R7 K12 ["[Rhodium] input validation"]
       30 GETTABLEKS                       R8 R2 K13 ["Name"]
       32 GETUPVAL                         R9 2
       33 MOVE                             R10 R2
       34 CALL                             R9 1 -1
       35 CALL                             R5 -1 -1
       36 CALL                             R4 -1 0
       37 RETURN                           R0 0

PROTO_37:
        0 NAMECALL                         R2 R0 K0 ["centralize"]
        2 CALL                             R2 1 0
        3 NAMECALL                         R2 R0 K1 ["setPluginWindow"]
        5 CALL                             R2 1 0
        6 ORK                              R1 R1 K2 [1]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["Mouse"]
       10 GETTABLEKS                       R2 R2 K4 ["multiClick"]
       12 NAMECALL                         R3 R0 K5 ["getAnchor"]
       14 CALL                             R3 1 1
       15 MOVE                             R4 R1
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["clickWithoutValidation"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_39:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 NAMECALL                         R2 R0 K0 ["_validateInput"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_40:
        0 NAMECALL                         R1 R0 K0 ["centralize"]
        2 CALL                             R1 1 0
        3 NAMECALL                         R1 R0 K1 ["setPluginWindow"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["Mouse"]
        9 GETTABLEKS                       R1 R1 K3 ["rightClick"]
       11 NAMECALL                         R2 R0 K4 ["getAnchor"]
       13 CALL                             R2 1 -1
       14 CALL                             R1 -1 0
       15 RETURN                           R0 0

PROTO_41:
        0 NAMECALL                         R2 R0 K0 ["centralize"]
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["Mouse"]
        6 GETTABLEKS                       R2 R2 K2 ["mouseWheel"]
        8 NAMECALL                         R3 R0 K3 ["getAnchor"]
       10 CALL                             R3 1 1
       11 MOVE                             R4 R1
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_42:
        0 NAMECALL                         R4 R0 K0 ["centralize"]
        2 CALL                             R4 1 0
        3 NAMECALL                         R4 R0 K1 ["getAnchor"]
        5 CALL                             R4 1 1
        6 GETIMPORT                        R6 K4 [Vector2.new]
        8 MOVE                             R7 R1
        9 MOVE                             R8 R2
       10 CALL                             R6 2 1
       11 ADD                              R5 R4 R6
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K5 ["Mouse"]
       15 GETTABLEKS                       R6 R6 K6 ["mouseDrag"]
       17 NAMECALL                         R7 R0 K1 ["getAnchor"]
       19 CALL                             R7 1 1
       20 MOVE                             R8 R5
       21 MOVE                             R9 R3
       22 CALL                             R6 3 0
       23 RETURN                           R0 0

PROTO_43:
        0 NAMECALL                         R3 R0 K0 ["centralize"]
        2 CALL                             R3 1 0
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["Mouse"]
        6 GETTABLEKS                       R3 R3 K2 ["mouseDrag"]
        8 NAMECALL                         R4 R0 K3 ["getAnchor"]
       10 CALL                             R4 1 1
       11 MOVE                             R5 R1
       12 MOVE                             R6 R2
       13 CALL                             R3 3 0
       14 RETURN                           R0 0

PROTO_44:
        0 NAMECALL                         R2 R0 K0 ["setPluginWindow"]
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["Keyboard"]
        6 GETTABLEKS                       R2 R2 K2 ["hitKey"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_45:
        0 NAMECALL                         R2 R0 K0 ["clickWithoutValidation"]
        2 CALL                             R2 1 0
        3 GETIMPORT                        R2 K3 [task.wait]
        5 LOADN                            R3 0
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K4 ["Text"]
       10 GETTABLEKS                       R2 R2 K5 ["sendText"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_46:
        0 NAMECALL                         R1 R0 K0 ["centralize"]
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["Touch"]
        6 GETTABLEKS                       R1 R1 K2 ["tap"]
        8 NAMECALL                         R2 R0 K3 ["getAnchor"]
       10 CALL                             R2 1 -1
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["tapWithoutValidation"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_48:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 NAMECALL                         R1 R0 K0 ["_validateInput"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_49:
        0 NAMECALL                         R5 R0 K0 ["centralize"]
        2 CALL                             R5 1 0
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K1 ["Touch"]
        6 GETTABLEKS                       R5 R5 K2 ["touchScroll"]
        8 NAMECALL                         R6 R0 K3 ["getAnchor"]
       10 CALL                             R6 1 1
       11 MOVE                             R7 R1
       12 MOVE                             R8 R2
       13 MOVE                             R9 R3
       14 LOADB                            R10 1
       15 MOVE                             R11 R4
       16 CALL                             R5 6 0
       17 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Rhodium"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["VirtualInput"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["VirtualInputUtils"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K5 [require]
       19 GETTABLEKS                       R4 R0 K8 ["XPath"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R5 R0 K9 ["validateInputReceived"]
       26 CALL                             R4 1 1
       27 DUPCLOSURE                       R5 K10 [PROTO_0]
       28 DUPCLOSURE                       R6 K11 [PROTO_1]
       29 DUPCLOSURE                       R7 K12 [PROTO_2]
       30 CAPTURE                          VAL R6
       31 DUPCLOSURE                       R8 K13 [PROTO_3]
       32 DUPCLOSURE                       R9 K14 [PROTO_4]
       33 CAPTURE                          VAL R8
       34 DUPCLOSURE                       R10 K15 [PROTO_5]
       35 CAPTURE                          VAL R6
       36 DUPCLOSURE                       R11 K16 [PROTO_6]
       37 CAPTURE                          VAL R11
       38 NEWTABLE                         R12 0 0
       40 SETTABLEKS                       R12 R12 K17 ["__index"]
       42 DUPCLOSURE                       R13 K18 [PROTO_7]
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R11
       45 CAPTURE                          VAL R12
       46 SETTABLEKS                       R13 R12 K19 ["new"]
       48 DUPCLOSURE                       R13 K20 [PROTO_8]
       49 CAPTURE                          VAL R5
       50 SETTABLEKS                       R13 R12 K21 ["assertInteractable"]
       52 DUPCLOSURE                       R13 K22 [PROTO_9]
       53 CAPTURE                          VAL R10
       54 SETTABLEKS                       R13 R12 K23 ["assertClickable"]
       56 DUPCLOSURE                       R13 K24 [PROTO_10]
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R7
       60 SETTABLEKS                       R13 R12 K25 ["assertVisibleWithinAncestors"]
       62 DUPCLOSURE                       R13 K26 [PROTO_11]
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R6
       69 SETTABLEKS                       R13 R12 K27 ["assertFirstClickTarget"]
       71 DUPCLOSURE                       R13 K28 [PROTO_12]
       72 SETTABLEKS                       R13 R12 K29 ["getAttribute"]
       74 DUPCLOSURE                       R13 K30 [PROTO_13]
       75 SETTABLEKS                       R13 R12 K31 ["getLocation"]
       77 DUPCLOSURE                       R13 K32 [PROTO_14]
       78 SETTABLEKS                       R13 R12 K33 ["getRect"]
       80 DUPCLOSURE                       R13 K34 [PROTO_15]
       81 SETTABLEKS                       R13 R12 K35 ["getSize"]
       83 DUPCLOSURE                       R13 K36 [PROTO_16]
       84 SETTABLEKS                       R13 R12 K37 ["getCenter"]
       86 DUPCLOSURE                       R13 K38 [PROTO_17]
       87 SETTABLEKS                       R13 R12 K39 ["getText"]
       89 DUPCLOSURE                       R13 K40 [PROTO_18]
       90 SETTABLEKS                       R13 R12 K41 ["getAnchor"]
       92 DUPCLOSURE                       R13 K42 [PROTO_19]
       93 SETTABLEKS                       R13 R12 K43 ["setAnchor"]
       95 DUPCLOSURE                       R13 K44 [PROTO_20]
       96 SETTABLEKS                       R13 R12 K45 ["unsetAnchor"]
       98 DUPCLOSURE                       R13 K46 [PROTO_21]
       99 SETTABLEKS                       R13 R12 K47 ["isDisplayed"]
      101 DUPCLOSURE                       R13 K48 [PROTO_22]
      102 SETTABLEKS                       R13 R12 K49 ["isSelected"]
      104 DUPCLOSURE                       R13 K50 [PROTO_23]
      105 SETTABLEKS                       R13 R12 K51 ["getRbxInstance"]
      107 DUPCLOSURE                       R13 K52 [PROTO_24]
      108 SETTABLEKS                       R13 R12 K53 ["getRbxInstanceOrThrow"]
      110 DUPCLOSURE                       R13 K54 [PROTO_25]
      111 SETTABLEKS                       R13 R12 K55 ["_getGuiObject"]
      113 DUPCLOSURE                       R13 K56 [PROTO_26]
      114 SETTABLEKS                       R13 R12 K57 ["_getGuiButton"]
      116 DUPCLOSURE                       R13 K58 [PROTO_27]
      117 SETTABLEKS                       R13 R12 K59 ["_getGuiBase2d"]
      119 DUPCLOSURE                       R13 K60 [PROTO_28]
      120 SETTABLEKS                       R13 R12 K61 ["_getInstanceOfClass"]
      122 DUPCLOSURE                       R13 K62 [PROTO_29]
      123 SETTABLEKS                       R13 R12 K63 ["waitForRbxInstance"]
      125 DUPCLOSURE                       R13 K64 [PROTO_30]
      126 SETTABLEKS                       R13 R12 K65 ["centralizeInstance"]
      128 DUPCLOSURE                       R13 K66 [PROTO_31]
      129 SETTABLEKS                       R13 R12 K67 ["centralize"]
      131 DUPCLOSURE                       R13 K68 [PROTO_32]
      132 SETTABLEKS                       R13 R12 K69 ["_centralizeInScrollingFrame"]
      134 DUPCLOSURE                       R13 K70 [PROTO_33]
      135 SETTABLEKS                       R13 R12 K71 ["_scrollToFindInstance"]
      137 DUPCLOSURE                       R13 K72 [PROTO_34]
      138 SETTABLEKS                       R13 R12 K73 ["centralizeWithInfiniteScrolling"]
      140 DUPCLOSURE                       R13 K74 [PROTO_35]
      141 CAPTURE                          VAL R1
      142 SETTABLEKS                       R13 R12 K75 ["setPluginWindow"]
      144 DUPCLOSURE                       R13 K76 [PROTO_36]
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R7
      148 SETTABLEKS                       R13 R12 K77 ["_validateInput"]
      150 DUPCLOSURE                       R13 K78 [PROTO_37]
      151 CAPTURE                          VAL R1
      152 SETTABLEKS                       R13 R12 K79 ["clickWithoutValidation"]
      154 DUPCLOSURE                       R13 K80 [PROTO_39]
      155 SETTABLEKS                       R13 R12 K81 ["click"]
      157 DUPCLOSURE                       R13 K82 [PROTO_40]
      158 CAPTURE                          VAL R1
      159 SETTABLEKS                       R13 R12 K83 ["rightClick"]
      161 DUPCLOSURE                       R13 K84 [PROTO_41]
      162 CAPTURE                          VAL R1
      163 SETTABLEKS                       R13 R12 K85 ["mouseWheel"]
      165 DUPCLOSURE                       R13 K86 [PROTO_42]
      166 CAPTURE                          VAL R1
      167 SETTABLEKS                       R13 R12 K87 ["mouseDrag"]
      169 DUPCLOSURE                       R13 K88 [PROTO_43]
      170 CAPTURE                          VAL R1
      171 SETTABLEKS                       R13 R12 K89 ["mouseDragTo"]
      173 DUPCLOSURE                       R13 K90 [PROTO_44]
      174 CAPTURE                          VAL R1
      175 SETTABLEKS                       R13 R12 K91 ["sendKey"]
      177 DUPCLOSURE                       R13 K92 [PROTO_45]
      178 CAPTURE                          VAL R1
      179 SETTABLEKS                       R13 R12 K93 ["sendText"]
      181 DUPCLOSURE                       R13 K94 [PROTO_46]
      182 CAPTURE                          VAL R1
      183 SETTABLEKS                       R13 R12 K95 ["tapWithoutValidation"]
      185 DUPCLOSURE                       R13 K96 [PROTO_48]
      186 SETTABLEKS                       R13 R12 K97 ["tap"]
      188 DUPCLOSURE                       R13 K98 [PROTO_49]
      189 CAPTURE                          VAL R1
      190 SETTABLEKS                       R13 R12 K99 ["touchScroll"]
      192 RETURN                           R12 1
