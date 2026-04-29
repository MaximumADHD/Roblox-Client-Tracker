PROTO_0:
        0 LOADK                            R3 K0 ["GuiObject"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 1
        6 GETIMPORT                        R1 K3 [error]
        8 LOADK                            R2 K4 ["expected instance to be a GuiObject, but got `%s`"]
        9 GETTABLEKS                       R4 R0 K5 ["ClassName"]
       11 NAMECALL                         R2 R2 K6 ["format"]
       13 CALL                             R2 2 -1
       14 CALL                             R1 -1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["AbsolutePosition"]
        2 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        4 GETIMPORT                        R3 K4 [Vector2.new]
        6 GETTABLEKS                       R5 R1 K5 ["X"]
        8 GETTABLEKS                       R7 R2 K5 ["X"]
       10 DIVK                             R6 R7 K6 [2]
       11 ADD                              R4 R5 R6
       12 GETTABLEKS                       R6 R1 K7 ["Y"]
       14 GETTABLEKS                       R8 R2 K7 ["Y"]
       16 DIVK                             R7 R8 K6 [2]
       17 ADD                              R5 R6 R7
       18 CALL                             R3 2 -1
       19 RETURN                           R3 -1

PROTO_2:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%s (%s)"]
        3 NAMECALL                         R3 R0 K4 ["GetFullName"]
        5 CALL                             R3 1 1
        6 GETTABLEKS                       R4 R0 K5 ["ClassName"]
        8 CALL                             R1 3 -1
        9 RETURN                           R1 -1

PROTO_3:
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

PROTO_4:
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

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R3 R0 K0 ["Y"]
        4 GETTABLEKS                       R5 R1 K1 ["AbsolutePosition"]
        6 GETTABLEKS                       R4 R5 K0 ["Y"]
        8 JUMPIFNOTLT                      R3 R4 ; [+8]
       10 FASTCALL2K                       TABLE_INSERT R2 K2 ; [+5]
       12 MOVE                             R4 R2
       13 LOADK                            R5 K2 ["top"]
       14 GETIMPORT                        R3 K5 [table.insert]
       16 CALL                             R3 2 0
       17 GETTABLEKS                       R3 R0 K0 ["Y"]
       19 GETTABLEKS                       R6 R1 K1 ["AbsolutePosition"]
       21 GETTABLEKS                       R5 R6 K0 ["Y"]
       23 GETTABLEKS                       R7 R1 K6 ["AbsoluteSize"]
       25 GETTABLEKS                       R6 R7 K0 ["Y"]
       27 ADD                              R4 R5 R6
       28 JUMPIFNOTLT                      R4 R3 ; [+8]
       30 FASTCALL2K                       TABLE_INSERT R2 K7 ; [+5]
       32 MOVE                             R4 R2
       33 LOADK                            R5 K7 ["bottom"]
       34 GETIMPORT                        R3 K5 [table.insert]
       36 CALL                             R3 2 0
       37 GETTABLEKS                       R3 R0 K8 ["X"]
       39 GETTABLEKS                       R5 R1 K1 ["AbsolutePosition"]
       41 GETTABLEKS                       R4 R5 K8 ["X"]
       43 JUMPIFNOTLT                      R3 R4 ; [+8]
       45 FASTCALL2K                       TABLE_INSERT R2 K9 ; [+5]
       47 MOVE                             R4 R2
       48 LOADK                            R5 K9 ["left"]
       49 GETIMPORT                        R3 K5 [table.insert]
       51 CALL                             R3 2 0
       52 GETTABLEKS                       R3 R0 K8 ["X"]
       54 GETTABLEKS                       R6 R1 K1 ["AbsolutePosition"]
       56 GETTABLEKS                       R5 R6 K8 ["X"]
       58 GETTABLEKS                       R7 R1 K6 ["AbsoluteSize"]
       60 GETTABLEKS                       R6 R7 K8 ["X"]
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

PROTO_6:
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

PROTO_7:
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
      104 GETTABLEKS                       R4 R0 K27 ["AbsoluteSize"]
      106 GETTABLEKS                       R3 R4 K28 ["X"]
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
      123 GETTABLEKS                       R4 R0 K27 ["AbsoluteSize"]
      125 GETTABLEKS                       R3 R4 K30 ["Y"]
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

PROTO_8:
        0 LOADK                            R3 K0 ["GuiObject"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+11]
        5 GETIMPORT                        R1 K3 [error]
        7 GETIMPORT                        R2 K6 [string.format]
        9 LOADK                            R3 K7 ["%s: %s is not a GuiObject"]
       10 LOADK                            R4 K8 ["[Testing Library] input validation"]
       11 GETUPVAL                         R5 0
       12 MOVE                             R6 R0
       13 CALL                             R5 1 -1
       14 CALL                             R2 -1 -1
       15 CALL                             R1 -1 0
       16 LOADK                            R3 K9 ["DataModel"]
       17 NAMECALL                         R1 R0 K10 ["FindFirstAncestorOfClass"]
       19 CALL                             R1 2 1
       20 JUMPIF                           R1 ; [+11]
       21 GETIMPORT                        R1 K3 [error]
       23 GETIMPORT                        R2 K6 [string.format]
       25 LOADK                            R3 K11 ["%s: %s is not mounted into the DataModel"]
       26 LOADK                            R4 K8 ["[Testing Library] input validation"]
       27 GETUPVAL                         R5 0
       28 MOVE                             R6 R0
       29 CALL                             R5 1 -1
       30 CALL                             R2 -1 -1
       31 CALL                             R1 -1 0
       32 RETURN                           R0 0

PROTO_9:
        0 LOADK                            R5 K0 ["GuiObject"]
        1 NAMECALL                         R3 R0 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+2]
        5 MOVE                             R2 R0
        6 JUMP                             ; [+10]
        7 GETIMPORT                        R3 K3 [error]
        9 LOADK                            R4 K4 ["expected instance to be a GuiObject, but got `%s`"]
       10 GETTABLEKS                       R6 R0 K5 ["ClassName"]
       12 NAMECALL                         R4 R4 K6 ["format"]
       14 CALL                             R4 2 -1
       15 CALL                             R3 -1 0
       16 LOADNIL                          R2
       17 GETUPVAL                         R3 0
       18 MOVE                             R4 R2
       19 MOVE                             R5 R1
       20 CALL                             R3 2 2
       21 JUMPIF                           R3 ; [+22]
       22 GETIMPORT                        R5 K3 [error]
       24 GETIMPORT                        R6 K8 [string.format]
       26 LOADK                            R7 K9 ["%s: %s was not clickable for the following reason(s):\n* %s"]
       27 LOADK                            R8 K10 ["[Testing Library] input validation"]
       28 GETIMPORT                        R9 K8 [string.format]
       30 LOADK                            R10 K11 ["%s (%s)"]
       31 NAMECALL                         R11 R2 K12 ["GetFullName"]
       33 CALL                             R11 1 1
       34 GETTABLEKS                       R12 R2 K5 ["ClassName"]
       36 CALL                             R9 3 1
       37 GETIMPORT                        R10 K15 [table.concat]
       39 MOVE                             R11 R4
       40 LOADK                            R12 K16 ["\n* "]
       41 CALL                             R10 2 -1
       42 CALL                             R6 -1 -1
       43 CALL                             R5 -1 0
       44 RETURN                           R0 0

PROTO_10:
        0 LOADK                            R4 K0 ["GuiObject"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 MOVE                             R1 R0
        6 JUMP                             ; [+10]
        7 GETIMPORT                        R2 K3 [error]
        9 LOADK                            R3 K4 ["expected instance to be a GuiObject, but got `%s`"]
       10 GETTABLEKS                       R5 R0 K5 ["ClassName"]
       12 NAMECALL                         R3 R3 K6 ["format"]
       14 CALL                             R3 2 -1
       15 CALL                             R2 -1 0
       16 LOADNIL                          R1
       17 GETTABLEKS                       R3 R1 K7 ["AbsolutePosition"]
       19 GETTABLEKS                       R4 R1 K8 ["AbsoluteSize"]
       21 GETIMPORT                        R5 K11 [Vector2.new]
       23 GETTABLEKS                       R7 R3 K12 ["X"]
       25 GETTABLEKS                       R9 R4 K12 ["X"]
       27 DIVK                             R8 R9 K13 [2]
       28 ADD                              R6 R7 R8
       29 GETTABLEKS                       R8 R3 K14 ["Y"]
       31 GETTABLEKS                       R10 R4 K14 ["Y"]
       33 DIVK                             R9 R10 K13 [2]
       34 ADD                              R7 R8 R9
       35 CALL                             R5 2 1
       36 MOVE                             R2 R5
       37 GETUPVAL                         R3 0
       38 MOVE                             R4 R1
       39 MOVE                             R5 R2
       40 CALL                             R3 2 3
       41 JUMPIFNOT                        R3 ; [+37]
       42 GETIMPORT                        R6 K3 [error]
       44 GETIMPORT                        R7 K16 [string.format]
       46 LOADK                            R8 K17 ["%s: %s is outside bounds of ancestor %s (%s)\n\nclick at: (%s)\ntarget:   %s\nancestor: %s"]
       47 LOADK                            R9 K18 ["[Testing Library] input validation"]
       48 GETTABLEKS                       R10 R0 K19 ["Name"]
       50 GETTABLEKS                       R11 R4 K19 ["Name"]
       52 MOVE                             R12 R5
       53 FASTCALL1                        TOSTRING R2 ; [+3]
       54 MOVE                             R14 R2
       55 GETIMPORT                        R13 K21 [tostring]
       57 CALL                             R13 1 1
       58 GETIMPORT                        R14 K16 [string.format]
       60 LOADK                            R15 K22 ["%s\n\telement bounds: %s"]
       61 GETIMPORT                        R16 K16 [string.format]
       63 LOADK                            R17 K23 ["%s (%s)"]
       64 NAMECALL                         R18 R1 K24 ["GetFullName"]
       66 CALL                             R18 1 1
       67 GETTABLEKS                       R19 R1 K5 ["ClassName"]
       69 CALL                             R16 3 1
       70 GETUPVAL                         R17 1
       71 MOVE                             R18 R1
       72 CALL                             R17 1 -1
       73 CALL                             R14 -1 1
       74 GETUPVAL                         R15 2
       75 MOVE                             R16 R4
       76 CALL                             R15 1 -1
       77 CALL                             R7 -1 -1
       78 CALL                             R6 -1 0
       79 RETURN                           R0 0

PROTO_11:
        0 LOADK                            R4 K0 ["GuiObject"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 MOVE                             R1 R0
        6 JUMP                             ; [+10]
        7 GETIMPORT                        R2 K3 [error]
        9 LOADK                            R3 K4 ["expected instance to be a GuiObject, but got `%s`"]
       10 GETTABLEKS                       R5 R0 K5 ["ClassName"]
       12 NAMECALL                         R3 R3 K6 ["format"]
       14 CALL                             R3 2 -1
       15 CALL                             R2 -1 0
       16 LOADNIL                          R1
       17 GETTABLEKS                       R3 R1 K7 ["AbsolutePosition"]
       19 GETTABLEKS                       R4 R1 K8 ["AbsoluteSize"]
       21 GETIMPORT                        R5 K11 [Vector2.new]
       23 GETTABLEKS                       R7 R3 K12 ["X"]
       25 GETTABLEKS                       R9 R4 K12 ["X"]
       27 DIVK                             R8 R9 K13 [2]
       28 ADD                              R6 R7 R8
       29 GETTABLEKS                       R8 R3 K14 ["Y"]
       31 GETTABLEKS                       R10 R4 K14 ["Y"]
       33 DIVK                             R9 R10 K13 [2]
       34 ADD                              R7 R8 R9
       35 CALL                             R5 2 1
       36 MOVE                             R2 R5
       37 LOADK                            R5 K15 ["BasePlayerGui"]
       38 NAMECALL                         R3 R0 K16 ["FindFirstAncestorWhichIsA"]
       40 CALL                             R3 2 1
       41 JUMPIF                           R3 ; [+11]
       42 GETIMPORT                        R4 K3 [error]
       44 GETIMPORT                        R5 K18 [string.format]
       46 LOADK                            R6 K19 ["%s: %s is not a descendant of a BasePlayerGui (like CoreGui or LocalPlayer.PlayerGui)"]
       47 LOADK                            R7 K20 ["[Testing Library] input validation"]
       48 GETUPVAL                         R8 0
       49 MOVE                             R9 R1
       50 CALL                             R8 1 -1
       51 CALL                             R5 -1 -1
       52 CALL                             R4 -1 0
       53 GETUPVAL                         R4 1
       54 GETTABLEKS                       R6 R2 K12 ["X"]
       56 GETTABLEKS                       R7 R2 K14 ["Y"]
       58 LOADNIL                          R8
       59 NAMECALL                         R4 R4 K21 ["SendMouseMoveEvent"]
       61 CALL                             R4 4 0
       62 GETUPVAL                         R4 1
       63 NAMECALL                         R4 R4 K22 ["WaitForInputEventsProcessed"]
       65 CALL                             R4 1 0
       66 GETTABLEKS                       R6 R2 K12 ["X"]
       68 GETTABLEKS                       R7 R2 K14 ["Y"]
       70 NAMECALL                         R4 R3 K23 ["GetGuiObjectsAtPosition"]
       72 CALL                             R4 3 1
       73 MOVE                             R5 R4
       74 LOADNIL                          R6
       75 LOADNIL                          R7
       76 FORGPREP                         R5
       77 JUMPIFEQ                         R9 R0 ; [+45]
       79 GETUPVAL                         R10 2
       80 MOVE                             R11 R9
       81 LOADB                            R12 1
       82 CALL                             R10 2 1
       83 JUMPIFNOT                        R10 ; [+37]
       84 GETUPVAL                         R11 3
       85 MOVE                             R12 R9
       86 MOVE                             R13 R2
       87 CALL                             R11 2 1
       88 JUMPIF                           R11 ; [+32]
       89 GETIMPORT                        R12 K3 [error]
       91 GETIMPORT                        R13 K18 [string.format]
       93 LOADK                            R14 K24 ["%s: element is obscured by another clickable GuiObject at the target click location\n\n click at: (%s)\n   target: %s\nobscuring: %s"]
       94 LOADK                            R15 K20 ["[Testing Library] input validation"]
       95 FASTCALL1                        TOSTRING R2 ; [+3]
       96 MOVE                             R17 R2
       97 GETIMPORT                        R16 K26 [tostring]
       99 CALL                             R16 1 1
      100 GETIMPORT                        R17 K18 [string.format]
      102 LOADK                            R18 K27 ["%s\n\telement bounds: %s"]
      103 GETIMPORT                        R19 K18 [string.format]
      105 LOADK                            R20 K28 ["%s (%s)"]
      106 NAMECALL                         R21 R0 K29 ["GetFullName"]
      108 CALL                             R21 1 1
      109 GETTABLEKS                       R22 R0 K5 ["ClassName"]
      111 CALL                             R19 3 1
      112 GETUPVAL                         R20 4
      113 MOVE                             R21 R0
      114 CALL                             R20 1 -1
      115 CALL                             R17 -1 1
      116 GETUPVAL                         R18 0
      117 MOVE                             R19 R9
      118 CALL                             R18 1 -1
      119 CALL                             R13 -1 -1
      120 CALL                             R12 -1 0
      121 FORGLOOP                         R5 2 ; [-45]
      123 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputState"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputState.Cancel]
        4 JUMPIFEQ                         R1 R2 ; [+3]
        6 LOADB                            R1 1
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0

PROTO_13:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_14:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputState"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputState.Cancel]
        4 JUMPIFEQ                         R1 R2 ; [+3]
        6 LOADB                            R1 1
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputState"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputState.Cancel]
        4 JUMPIFEQ                         R1 R2 ; [+5]
        6 GETUPVAL                         R1 0
        7 JUMPIFNOT                        R1 ; [+2]
        8 LOADB                            R1 1
        9 SETUPVAL                         R1 1
       10 RETURN                           R0 0

PROTO_17:
        0 NEWTABLE                         R2 0 0
        2 LOADB                            R3 0
        3 LOADK                            R6 K0 ["GuiButton"]
        4 NAMECALL                         R4 R0 K1 ["IsA"]
        6 CALL                             R4 2 1
        7 JUMPIFNOT                        R4 ; [+25]
        8 MOVE                             R5 R2
        9 GETTABLEKS                       R6 R0 K2 ["Activated"]
       11 NEWCLOSURE                       R8 P0
       12 CAPTURE                          REF R3
       13 NAMECALL                         R6 R6 K3 ["Connect"]
       15 CALL                             R6 2 -1
       16 FASTCALL                         TABLE_INSERT ; [+2]
       17 GETIMPORT                        R4 K6 [table.insert]
       19 CALL                             R4 -1 0
       20 MOVE                             R5 R2
       21 GETTABLEKS                       R6 R0 K7 ["MouseButton2Click"]
       23 NEWCLOSURE                       R8 P1
       24 CAPTURE                          REF R3
       25 NAMECALL                         R6 R6 K3 ["Connect"]
       27 CALL                             R6 2 -1
       28 FASTCALL                         TABLE_INSERT ; [+2]
       29 GETIMPORT                        R4 K6 [table.insert]
       31 CALL                             R4 -1 0
       32 JUMP                             ; [+49]
       33 LOADK                            R6 K8 ["TextBox"]
       34 NAMECALL                         R4 R0 K1 ["IsA"]
       36 CALL                             R4 2 1
       37 JUMPIFNOT                        R4 ; [+17]
       38 NAMECALL                         R4 R0 K9 ["IsFocused"]
       40 CALL                             R4 1 1
       41 JUMPIF                           R4 ; [+13]
       42 MOVE                             R5 R2
       43 GETTABLEKS                       R6 R0 K10 ["Focused"]
       45 NEWCLOSURE                       R8 P2
       46 CAPTURE                          REF R3
       47 NAMECALL                         R6 R6 K3 ["Connect"]
       49 CALL                             R6 2 -1
       50 FASTCALL                         TABLE_INSERT ; [+2]
       51 GETIMPORT                        R4 K6 [table.insert]
       53 CALL                             R4 -1 0
       54 JUMP                             ; [+27]
       55 LOADB                            R4 0
       56 MOVE                             R6 R2
       57 GETTABLEKS                       R7 R0 K11 ["InputBegan"]
       59 NEWCLOSURE                       R9 P3
       60 CAPTURE                          REF R4
       61 NAMECALL                         R7 R7 K3 ["Connect"]
       63 CALL                             R7 2 -1
       64 FASTCALL                         TABLE_INSERT ; [+2]
       65 GETIMPORT                        R5 K6 [table.insert]
       67 CALL                             R5 -1 0
       68 MOVE                             R6 R2
       69 GETTABLEKS                       R7 R0 K12 ["InputEnded"]
       71 NEWCLOSURE                       R9 P4
       72 CAPTURE                          REF R4
       73 CAPTURE                          REF R3
       74 NAMECALL                         R7 R7 K3 ["Connect"]
       76 CALL                             R7 2 -1
       77 FASTCALL                         TABLE_INSERT ; [+2]
       78 GETIMPORT                        R5 K6 [table.insert]
       80 CALL                             R5 -1 0
       81 CLOSEUPVALS                      R4
       82 MOVE                             R4 R1
       83 CALL                             R4 0 0
       84 MOVE                             R4 R2
       85 LOADNIL                          R5
       86 LOADNIL                          R6
       87 FORGPREP                         R4
       88 NAMECALL                         R9 R8 K13 ["Disconnect"]
       90 CALL                             R9 1 0
       91 FORGLOOP                         R4 2 ; [-4]
       93 CLOSEUPVALS                      R3
       94 RETURN                           R3 1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R2 R2 K0 ["WaitForInputEventsProcessed"]
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 2
        8 MOVE                             R3 R0
        9 MOVE                             R4 R1
       10 CALL                             R2 2 1
       11 JUMPIF                           R2 ; [+22]
       12 GETUPVAL                         R3 3
       13 MOVE                             R4 R0
       14 CALL                             R3 1 0
       15 GETUPVAL                         R3 4
       16 MOVE                             R4 R0
       17 CALL                             R3 1 0
       18 GETUPVAL                         R3 5
       19 MOVE                             R4 R0
       20 CALL                             R3 1 0
       21 GETIMPORT                        R3 K2 [error]
       23 GETIMPORT                        R4 K5 [string.format]
       25 LOADK                            R5 K6 ["%s: failed to click %s - reason unknown\n%s"]
       26 LOADK                            R6 K7 ["[Testing Library] input validation"]
       27 GETTABLEKS                       R7 R0 K8 ["Name"]
       29 GETUPVAL                         R8 6
       30 MOVE                             R9 R0
       31 CALL                             R8 1 -1
       32 CALL                             R4 -1 -1
       33 CALL                             R3 -1 0
       34 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["VirtualInputManager"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 DUPCLOSURE                       R2 K5 [PROTO_1]
        9 DUPCLOSURE                       R3 K6 [PROTO_2]
       10 DUPCLOSURE                       R4 K7 [PROTO_3]
       11 DUPCLOSURE                       R5 K8 [PROTO_4]
       12 CAPTURE                          VAL R4
       13 DUPCLOSURE                       R6 K9 [PROTO_5]
       14 DUPCLOSURE                       R7 K10 [PROTO_6]
       15 CAPTURE                          VAL R6
       16 DUPCLOSURE                       R8 K11 [PROTO_7]
       17 CAPTURE                          VAL R4
       18 DUPCLOSURE                       R9 K12 [PROTO_8]
       19 CAPTURE                          VAL R3
       20 DUPCLOSURE                       R10 K13 [PROTO_9]
       21 CAPTURE                          VAL R8
       22 DUPCLOSURE                       R11 K14 [PROTO_10]
       23 CAPTURE                          VAL R7
       24 CAPTURE                          VAL R4
       25 CAPTURE                          VAL R5
       26 DUPCLOSURE                       R12 K15 [PROTO_11]
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R8
       30 CAPTURE                          VAL R7
       31 CAPTURE                          VAL R4
       32 DUPCLOSURE                       R13 K16 [PROTO_17]
       33 DUPCLOSURE                       R14 K17 [PROTO_18]
       34 CAPTURE                          VAL R9
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R13
       37 CAPTURE                          VAL R10
       38 CAPTURE                          VAL R11
       39 CAPTURE                          VAL R12
       40 CAPTURE                          VAL R5
       41 DUPTABLE                         R15 K25 [{"getGuiObject", "getCenter", "assertMounted", "assertCanActivate", "assertVisibleWithinAncestors", "assertFirstInputTarget", "validateInput"}]
       42 SETTABLEKS                       R1 R15 K18 ["getGuiObject"]
       44 SETTABLEKS                       R2 R15 K19 ["getCenter"]
       46 SETTABLEKS                       R9 R15 K20 ["assertMounted"]
       48 SETTABLEKS                       R10 R15 K21 ["assertCanActivate"]
       50 SETTABLEKS                       R11 R15 K22 ["assertVisibleWithinAncestors"]
       52 SETTABLEKS                       R12 R15 K23 ["assertFirstInputTarget"]
       54 SETTABLEKS                       R14 R15 K24 ["validateInput"]
       56 RETURN                           R15 1
