PROTO_0:
        0 DUPTABLE                         R2 K3 [{"Image", "ImageRectOffset", "ImageRectSize"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K4 ["avatar"]
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R3 2 1
        7 SETTABLEKS                       R3 R2 K0 ["Image"]
        9 GETIMPORT                        R3 K7 [Vector2.new]
       11 LOADN                            R4 0
       12 LOADN                            R5 0
       13 CALL                             R3 2 1
       14 SETTABLEKS                       R3 R2 K1 ["ImageRectOffset"]
       16 GETIMPORT                        R3 K7 [Vector2.new]
       18 LOADN                            R4 16
       19 LOADN                            R5 16
       20 CALL                             R3 2 1
       21 SETTABLEKS                       R3 R2 K2 ["ImageRectSize"]
       23 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["key"]
        5 CALL                             R2 2 1
        6 JUMPIFEQKNIL                     R2 ; [+34]
        8 LOADB                            R4 0
        9 FASTCALL1                        TYPEOF R2 ; [+3]
       10 MOVE                             R6 R2
       11 GETIMPORT                        R5 K2 [typeof]
       13 CALL                             R5 1 1
       14 JUMPIFNOTEQKS                    R5 K3 ["table"] ; [+11]
       16 GETTABLEKS                       R6 R2 K4 ["AccessoryType"]
       18 FASTCALL1                        TYPEOF R6 ; [+2]
       19 GETIMPORT                        R5 K2 [typeof]
       21 CALL                             R5 1 1
       22 JUMPIFEQKS                       R5 K5 ["EnumItem"] ; [+2]
       24 LOADB                            R4 0 +1
       25 LOADB                            R4 1
       26 FASTCALL2K                       ASSERT R4 K6 ; [+4]
       28 LOADK                            R5 K6 ["Expected accessoryType to be a table with an EnumItem field"]
       29 GETIMPORT                        R3 K8 [assert]
       31 CALL                             R3 2 0
       32 GETUPVAL                         R3 2
       33 GETUPVAL                         R6 3
       34 GETTABLEKS                       R7 R2 K4 ["AccessoryType"]
       36 GETTABLE                         R5 R6 R7
       37 ORK                              R4 R5 K9 ["Accessory"]
       38 MOVE                             R5 R1
       39 CALL                             R3 2 1
       40 RETURN                           R3 1
       41 GETUPVAL                         R3 0
       42 MOVE                             R4 R0
       43 GETUPVAL                         R5 4
       44 GETTABLEKS                       R5 R5 K0 ["key"]
       46 CALL                             R3 2 1
       47 JUMPIFNOT                        R3 ; [+11]
       48 GETTABLEKS                       R3 R0 K10 ["datum"]
       50 GETTABLEKS                       R3 R3 K11 ["className"]
       52 JUMPIFNOTEQKS                    R3 K12 ["Model"] ; [+6]
       54 GETUPVAL                         R3 2
       55 LOADK                            R4 K13 ["Avatar"]
       56 MOVE                             R5 R1
       57 CALL                             R3 2 1
       58 RETURN                           R3 1
       59 GETUPVAL                         R3 0
       60 MOVE                             R4 R0
       61 GETUPVAL                         R5 5
       62 GETTABLEKS                       R5 R5 K0 ["key"]
       64 CALL                             R3 2 1
       65 JUMPIFNOT                        R3 ; [+5]
       66 GETUPVAL                         R3 2
       67 LOADK                            R4 K14 ["Makeup"]
       68 MOVE                             R5 R1
       69 CALL                             R3 2 1
       70 RETURN                           R3 1
       71 GETUPVAL                         R4 6
       72 GETTABLEKS                       R5 R0 K10 ["datum"]
       74 GETTABLEKS                       R5 R5 K11 ["className"]
       76 GETTABLE                         R3 R4 R5
       77 JUMPIFEQKNIL                     R3 ; [+6]
       79 GETUPVAL                         R4 2
       80 MOVE                             R5 R3
       81 MOVE                             R6 R1
       82 CALL                             R4 2 1
       83 RETURN                           R4 1
       84 LOADNIL                          R4
       85 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Fields"]
       11 GETTABLEKS                       R2 R2 K7 ["AllFields"]
       13 GETTABLEKS                       R2 R2 K8 ["AccessoryType"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["Contexts"]
       22 GETTABLEKS                       R3 R3 K11 ["ClassIconContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K12 ["Util"]
       29 GETTABLEKS                       R4 R4 K13 ["ImageUrl"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Components"]
       36 GETTABLEKS                       R5 R5 K10 ["Contexts"]
       38 GETTABLEKS                       R5 R5 K14 ["ThemeContext"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K12 ["Util"]
       45 GETTABLEKS                       R6 R6 K15 ["getField"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K6 ["Fields"]
       52 GETTABLEKS                       R7 R7 K7 ["AllFields"]
       54 GETTABLEKS                       R7 R7 K16 ["isAvatarInstance"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K6 ["Fields"]
       61 GETTABLEKS                       R8 R8 K7 ["AllFields"]
       63 GETTABLEKS                       R8 R8 K17 ["isMakeupInstance"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K18 ["Hooks"]
       70 GETTABLEKS                       R9 R9 K19 ["useVisibleExplorerNodeRange"]
       72 CALL                             R8 1 1
       73 NEWTABLE                         R9 16 0
       75 GETIMPORT                        R10 K22 [Enum.AccessoryType.Shirt]
       77 LOADK                            R11 K21 ["Shirt"]
       78 SETTABLE                         R11 R9 R10
       79 GETIMPORT                        R10 K24 [Enum.AccessoryType.TShirt]
       81 LOADK                            R11 K21 ["Shirt"]
       82 SETTABLE                         R11 R9 R10
       83 GETIMPORT                        R10 K26 [Enum.AccessoryType.Pants]
       85 LOADK                            R11 K25 ["Pants"]
       86 SETTABLE                         R11 R9 R10
       87 GETIMPORT                        R10 K28 [Enum.AccessoryType.Shorts]
       89 LOADK                            R11 K25 ["Pants"]
       90 SETTABLE                         R11 R9 R10
       91 GETIMPORT                        R10 K30 [Enum.AccessoryType.DressSkirt]
       93 LOADK                            R11 K25 ["Pants"]
       94 SETTABLE                         R11 R9 R10
       95 GETIMPORT                        R10 K32 [Enum.AccessoryType.Jacket]
       97 LOADK                            R11 K31 ["Jacket"]
       98 SETTABLE                         R11 R9 R10
       99 GETIMPORT                        R10 K34 [Enum.AccessoryType.Sweater]
      101 LOADK                            R11 K31 ["Jacket"]
      102 SETTABLE                         R11 R9 R10
      103 GETIMPORT                        R10 K36 [Enum.AccessoryType.LeftShoe]
      105 LOADK                            R11 K37 ["Shoe"]
      106 SETTABLE                         R11 R9 R10
      107 GETIMPORT                        R10 K39 [Enum.AccessoryType.RightShoe]
      109 LOADK                            R11 K37 ["Shoe"]
      110 SETTABLE                         R11 R9 R10
      111 GETIMPORT                        R10 K41 [Enum.AccessoryType.Hair]
      113 LOADK                            R11 K40 ["Hair"]
      114 SETTABLE                         R11 R9 R10
      115 NEWTABLE                         R10 16 0
      117 LOADK                            R11 K42 ["HumanoidDescription"]
      118 SETTABLEKS                       R11 R10 K43 ["AccessoryDescription"]
      120 LOADK                            R11 K44 ["BodyColors"]
      121 SETTABLEKS                       R11 R10 K44 ["BodyColors"]
      123 LOADK                            R11 K42 ["HumanoidDescription"]
      124 SETTABLEKS                       R11 R10 K45 ["BodyPartDescription"]
      126 LOADK                            R11 K46 ["Humanoid"]
      127 SETTABLEKS                       R11 R10 K46 ["Humanoid"]
      129 LOADK                            R11 K42 ["HumanoidDescription"]
      130 SETTABLEKS                       R11 R10 K42 ["HumanoidDescription"]
      132 LOADK                            R11 K42 ["HumanoidDescription"]
      133 SETTABLEKS                       R11 R10 K47 ["HumanoidRigDescription"]
      135 LOADK                            R11 K42 ["HumanoidDescription"]
      136 SETTABLEKS                       R11 R10 K48 ["MakeupDescription"]
      138 LOADK                            R11 K49 ["Shirt2D"]
      139 SETTABLEKS                       R11 R10 K21 ["Shirt"]
      141 LOADK                            R11 K50 ["ShirtGraphic"]
      142 SETTABLEKS                       R11 R10 K50 ["ShirtGraphic"]
      144 LOADK                            R11 K51 ["Pants2D"]
      145 SETTABLEKS                       R11 R10 K25 ["Pants"]
      147 DUPCLOSURE                       R11 K52 [PROTO_0]
      148 CAPTURE                          VAL R3
      149 DUPCLOSURE                       R12 K53 [PROTO_1]
      150 CAPTURE                          VAL R5
      151 CAPTURE                          VAL R1
      152 CAPTURE                          VAL R11
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R6
      155 CAPTURE                          VAL R7
      156 CAPTURE                          VAL R10
      157 RETURN                           R12 1
