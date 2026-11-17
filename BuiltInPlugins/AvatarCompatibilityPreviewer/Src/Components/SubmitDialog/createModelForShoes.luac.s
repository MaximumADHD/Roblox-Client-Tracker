PROTO_0:
        0 LOADK                            R3 K0 ["Accessory"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETIMPORT                        R1 K4 [Instance.new]
        9 LOADK                            R2 K5 ["Model"]
       10 CALL                             R1 1 1
       11 NAMECALL                         R2 R0 K6 ["GetChildren"]
       13 CALL                             R2 1 3
       14 FORGPREP                         R2
       15 GETTABLEKS                       R7 R6 K7 ["Archivable"]
       17 JUMPIFNOT                        R7 ; [+91]
       18 LOADK                            R9 K0 ["Accessory"]
       19 NAMECALL                         R7 R6 K1 ["IsA"]
       21 CALL                             R7 2 1
       22 JUMPIFNOT                        R7 ; [+86]
       23 NAMECALL                         R7 R6 K8 ["Clone"]
       25 CALL                             R7 1 1
       26 SETTABLEKS                       R1 R7 K9 ["Parent"]
       28 LOADK                            R10 K10 ["Handle"]
       29 NAMECALL                         R8 R7 K11 ["FindFirstChild"]
       31 CALL                             R8 2 1
       32 JUMPIFEQKNIL                     R8 ; [+76]
       34 LOADK                            R11 K12 ["Attachment"]
       35 NAMECALL                         R9 R8 K13 ["FindFirstChildWhichIsA"]
       37 CALL                             R9 2 1
       38 JUMPIFEQKNIL                     R9 ; [+70]
       40 NAMECALL                         R10 R8 K14 ["GetAttributes"]
       42 CALL                             R10 1 3
       43 FORGPREP                         R10
       44 MOVE                             R17 R13
       45 LOADNIL                          R18
       46 NAMECALL                         R15 R8 K15 ["SetAttribute"]
       48 CALL                             R15 3 0
       49 FORGLOOP                         R10 1 ; [-6]
       51 LOADK                            R12 K16 ["Weld"]
       52 NAMECALL                         R10 R8 K13 ["FindFirstChildWhichIsA"]
       54 CALL                             R10 2 1
       55 JUMPIFEQKNIL                     R10 ; [+8]
       57 GETTABLEKS                       R11 R10 K17 ["Name"]
       59 JUMPIFNOTEQKS                    R11 K18 ["AccessoryWeld"] ; [+4]
       61 NAMECALL                         R11 R10 K19 ["Destroy"]
       63 CALL                             R11 1 0
       64 LOADK                            R13 K20 ["ValueBase"]
       65 LOADB                            R14 1
       66 NAMECALL                         R11 R7 K13 ["FindFirstChildWhichIsA"]
       68 CALL                             R11 3 1
       69 JUMPIFEQKNIL                     R11 ; [+5]
       71 NAMECALL                         R12 R11 K19 ["Destroy"]
       73 CALL                             R12 1 0
       74 JUMPBACK                         ; [-11]
       75 GETTABLEKS                       R11 R9 K17 ["Name"]
       77 JUMPIFNOTEQKS                    R11 K21 ["LeftFootAttachment"] ; [+5]
       79 LOADK                            R11 K22 ["LeftShoeAccessory"]
       80 SETTABLEKS                       R11 R7 K17 ["Name"]
       82 JUMP                             ; [+9]
       83 GETTABLEKS                       R11 R9 K17 ["Name"]
       85 JUMPIFNOTEQKS                    R11 K23 ["RightFootAttachment"] ; [+23]
       87 LOADK                            R11 K24 ["RightShoeAccessory"]
       88 SETTABLEKS                       R11 R7 K17 ["Name"]
       90 JUMP                             ; [+1]
       91 JUMP                             ; [+17]
       92 GETTABLEKS                       R11 R1 K17 ["Name"]
       94 JUMPIFNOTEQKS                    R11 K5 ["Model"] ; [+6]
       96 GETTABLEKS                       R11 R6 K17 ["Name"]
       98 SETTABLEKS                       R11 R1 K17 ["Name"]
      100 JUMP                             ; [+8]
      101 GETTABLEKS                       R12 R1 K17 ["Name"]
      103 LOADK                            R13 K25 [", "]
      104 GETTABLEKS                       R14 R6 K17 ["Name"]
      106 CONCAT                           R11 R12 R14
      107 SETTABLEKS                       R11 R1 K17 ["Name"]
      109 FORGLOOP                         R2 2 ; [-95]
      111 NAMECALL                         R3 R1 K6 ["GetChildren"]
      113 CALL                             R3 1 1
      114 LENGTH                           R2 R3
      115 JUMPIFEQKN                       R2 K26 [2] ; [+3]
      117 LOADNIL                          R2
      118 RETURN                           R2 1
      119 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
